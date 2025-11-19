uint64_t sub_1BEE2A6F4(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v4 = a2;
  v6 = HIWORD(a2);
  v7 = [v3 gridSize];
  v8 = v7;
  v9 = HIWORD(v7);
  v27 = &_s12CellSequenceVN;
  v28 = sub_1BEB38740();
  v22 = a1;
  v23 = v4;
  v24 = v6;
  v25 = v8;
  v26 = v9;
  v10 = __swift_project_boxed_opaque_existential_0(&v22, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v12 = *v10;
  v13 = *(v10 + 4);
  v14 = *(v10 + 5);
  LOWORD(v6) = *(v10 + 8);
  LOWORD(v10) = *(v10 + 9);
  v15 = SBHIconGridRangeMaxCellIndexOnRow(v12, v13, v6, 0);
  *boxed_opaque_existential_1 = v12;
  *(boxed_opaque_existential_1 + 4) = v13;
  *(boxed_opaque_existential_1 + 5) = v14;
  *(boxed_opaque_existential_1 + 8) = v6;
  *(boxed_opaque_existential_1 + 9) = v10;
  boxed_opaque_existential_1[3] = v12;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v15;
  __swift_destroy_boxed_opaque_existential_0(&v22);
  v16 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
  sub_1BEE4740C();
  if ((v23 & 1) == 0)
  {
    v19 = v22;
    do
    {
      swift_beginAccess();
      if (*(*&v3[v16] + 16))
      {
        sub_1BEE30138(v19);
        v21 = v20;
        swift_endAccess();
        if (v21)
        {
          v17 = 1;
          goto LABEL_3;
        }
      }

      else
      {
        swift_endAccess();
      }

      __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
      sub_1BEE4740C();
      v19 = v22;
    }

    while (v23 != 1);
  }

  v17 = 0;
LABEL_3:
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v17;
}

uint64_t sub_1BEE2A94C(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 gridCellIndexForIconIndex_];
  result = sub_1BEE467EC();
  if (v3 == result)
  {

    return sub_1BEE467EC();
  }

  else
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
LABEL_11:
      __break(1u);
    }

    else
    {
      v6 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
      v7 = v3;
      while (1)
      {
        v9 = v3;
        swift_beginAccess();
        if (*(*&v2[v6] + 16))
        {
          sub_1BEE30138(v3);
          if (v10)
          {
            break;
          }
        }

        v3 = v5;
        result = swift_endAccess();
        v7 = v9;
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_11;
        }
      }

      swift_endAccess();
      return v7;
    }
  }

  return result;
}

uint64_t sub_1BEE2AAA0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (*(v5 + 16))
  {
    v6 = sub_1BEE30138(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
      v9 = [v2 gridSize];
      v10 = [v2 numberOfUsedRows];
      v11 = [v2 numberOfUsedColumns];
      result = [v2 coordinateForGridCellIndex_];
      v14 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        __break(1u);
      }

      else
      {
        v15 = result;
        v16 = v13;
        LOWORD(v17) = 1;
        if (v14 >= 1 && result >= 1 && v10 >= v14 && v11 >= result)
        {
          while (1)
          {
            result = [v2 iconIndexForGridCellIndex_];
            if (result != v8)
            {
              break;
            }

            if (v9)
            {
              if (a1 < v9)
              {
                break;
              }

              a1 -= v9;
            }

            v17 = v17 + 1;
            if ((v17 & 0x10000) != 0)
            {
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            if (v14 >= 2 && v15 >= 1 && v10 >= --v14)
            {
              continue;
            }

            break;
          }
        }

        v18 = v16 + 1;
        if (!__OFADD__(v16, 1))
        {
          while (v18 >= 1)
          {
            if (v15 < 1)
            {
              break;
            }

            if (v10 < v18)
            {
              break;
            }

            if (v11 < v15)
            {
              break;
            }

            result = [v2 iconIndexForGridCellIndex_];
            if (result != v8)
            {
              break;
            }

            v17 = v17 + 1;
            if ((v17 & 0x10000) != 0)
            {
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            v19 = __OFADD__(v18++, 1);
            if (v19)
            {
              __break(1u);
              goto LABEL_26;
            }
          }

          v20 = v15 - 1;
          if (__OFSUB__(v15, 1))
          {
            goto LABEL_59;
          }

          LOWORD(v21) = 1;
          if (v16 >= 1 && v20 >= 1 && v10 >= v16 && v11 >= v20)
          {
            v24 = v15 - 2;
            do
            {
              result = [v2 iconIndexForGridCellIndex_];
              if (result != v8 || a1 < 1)
              {
                break;
              }

              v21 = v21 + 1;
              if ((v21 & 0x10000) != 0)
              {
                goto LABEL_54;
              }

              --a1;
              if (v20 < 2)
              {
                break;
              }

              --v20;
            }

            while (v24 <= v11);
          }

          v19 = __OFADD__(v15, 1);
          v23 = v15 + 1;
          if (!v19)
          {
            while (v16 >= 1 && v23 >= 1 && v10 >= v16 && v11 >= v23 && [v2 iconIndexForGridCellIndex_] == v8)
            {
              v21 = v21 + 1;
              if ((v21 & 0x10000) != 0)
              {
                goto LABEL_53;
              }

              v19 = __OFADD__(v23++, 1);
              if (v19)
              {
                __break(1u);
                goto LABEL_52;
              }
            }

            return a1;
          }

          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    }
  }

LABEL_26:
  swift_endAccess();
  if (qword_1EBDBFDC8 != -1)
  {
LABEL_56:
    swift_once();
  }

  return qword_1EBDBFDD0;
}

BOOL sub_1BEE2AEA8()
{
  v1 = [v0 gridSize];
  v2 = v1;
  v3 = HIWORD(v1);
  v4 = [v0 numberOfUsedRows];
  v5 = [v0 numberOfUsedColumns];
  if (v4 > v3 || v5 > v2)
  {
    return 1;
  }

  v8 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
  swift_beginAccess();
  return *(*&v0[v8] + 16) != 0;
}

id sub_1BEE2AF54(uint64_t a1, uint64_t a2)
{
  result = sub_1BEE467EC();
  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = result;
    v7 = 0;
    while (1)
    {
      if (a2 == v7)
      {
        return v6;
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      v8 = a1 + v7;
      if (__OFADD__(a1, v7))
      {
        goto LABEL_10;
      }

      result = [v2 isOutOfBoundsAtIconIndex_];
      if (result)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEE2B28C()
{
  sub_1BEE4694C();
  v1 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        result = sub_1BEE4691C();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEE2B38C(uint64_t a1)
{
  v3 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!*(v4 + 16) || (v5 = sub_1BEE4776C(), v6 = -1 << *(v4 + 32), v7 = v5 & ~v6, ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0))
  {
LABEL_6:
    v9 = [v1 gridSize];
    v10 = [v1 gridCellIndexForIconIndex_];
    [v1 gridRangeForGridCellIndex_];
    v12 = v11;
    result = [v1 coordinateForGridCellIndex_];
    v15 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v16 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        v17 = __OFADD__(v15, HIWORD(v12));
        v18 = v15 + HIWORD(v12);
        if (!v17)
        {
          v17 = __OFSUB__(v18, 1);
          v19 = v18 - 1;
          if (!v17)
          {
            v17 = __OFADD__(v16, v12);
            v20 = v16 + v12;
            if (!v17)
            {
              v17 = __OFSUB__(v20, 1);
              v21 = v20 - 1;
              if (!v17)
              {
                if (v19 < HIWORD(v9))
                {
                  return v21 >= v9;
                }

                return 1;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v8 = ~v6;
  while (*(*(v4 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t sub_1BEE2B6DC(unsigned int a1, uint64_t a2, unsigned int a3, char a4)
{
  if (a3 >= a1 && HIWORD(a3) >= HIWORD(a1))
  {
    v16 = 0;
    v17 = 1;
    v10 = swift_allocObject();
    *(v10 + 16) = &v16;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1BEE3340C;
    *(v11 + 24) = v10;
    v15[4] = sub_1BEE334B4;
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1BEE2B8D0;
    v15[3] = &block_descriptor_51_0;
    v12 = _Block_copy(v15);

    [v4 enumerateEmptyGridCellRangesOfSize:a1 inGridRange:a2 flipped:a3 usingBlock:{a4 & 1, v12}];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (v17)
      {
        v14 = sub_1BEE467EC();
      }

      else
      {
        v14 = v16;
      }

      return v14;
    }
  }

  else
  {

    return sub_1BEE467EC();
  }

  return result;
}

uint64_t sub_1BEE2B9F4(unsigned int a1, unint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = [v7 gridSize];
  if (a4)
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a5;
  v16[4] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1BEE33400;
  *(v17 + 24) = v16;
  v22[4] = sub_1BEE334B4;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1BEE2B8D0;
  v22[3] = &block_descriptor_41_0;
  v18 = _Block_copy(v22);
  v19 = v7;

  SBHIconGridRangeEnumerateSubranges(a2, a3, a1, v14, v15, v18);
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE2BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1BEE28B80(a1, a2);
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = v8 + 40;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*v10 != 1)
      {
        v15 = *(v10 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BEE3091C(0, *(v11 + 16) + 1, 1);
        }

        v13 = *(v11 + 16);
        v12 = *(v11 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1BEE3091C((v12 > 1), v13 + 1, 1);
        }

        *(v11 + 16) = v13 + 1;
        v14 = v11 + 16 * v13;
        *(v14 + 32) = v15;
        *(v14 + 40) = 0;
      }

      v10 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v11 + 16);

  if (!v16)
  {
    return a5(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1BEE2BDA8()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEE333C4;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEE33498;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE289DC;
  aBlock[3] = &block_descriptor_31;
  v3 = _Block_copy(aBlock);

  [v0 enumerateEmptyGridCellIndexesUsingBlock_];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1BEE2BF04(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = SBHIconGridSizeGetArea([v5 gridSize]);
  v11 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;
    v16[4] = sub_1BEE33398;
    v16[5] = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1BEE2C070;
    v16[3] = &block_descriptor_21;
    v13 = _Block_copy(v16);

    v14 = [v5 indexOfFirstGridCellRangeOfSize:a1 inGridCellIndexRange:a2 passingTest:{v11, v13}];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEE2C134(unsigned int a1, unint64_t a2, unint64_t a3, id a4, unint64_t a5, unint64_t a6)
{
  result = [a4 gridSize];
  v30 = a1;
  if (((WORD1(result) - HIWORD(a1)) & 0xFFFF0000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = (WORD1(result) - HIWORD(a1)) + 1;
  if ((v10 & 0x10000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = result;
  if (((result - v30) & 0xFFFF0000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v12 = (result - v30) + 1;
  if ((v12 & 0x10000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = [a4 coordinateForGridCellIndex_];
  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = sub_1BEE467EC();
  v16 = v10;
  if (v14 > v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v14 != v10)
  {
    v18 = v12;
    if (v15 > v12)
    {
LABEL_43:
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = v16;
    v19 = v11;
    v20 = v11 & 0xFFFF0000;
    v25 = v15;
    while (v14 < v16)
    {
      v26 = v14;
      if (v15 != v18)
      {
        v21 = v14 * v19;
        if ((v14 * v19) >> 64 != (v14 * v19) >> 63)
        {
          goto LABEL_35;
        }

        while (v15 < v18)
        {
          v17 = v21 + v15;
          if (__OFADD__(v21, v15))
          {
            goto LABEL_32;
          }

          v6 = v6 & 0xFFFFFFFF00000000 | v19 | v20;
          v11 = v11 & 0xFFFFFFFF00000000 | v30;
          result = SBHIconGridRangeContainsIconGridRange(0, v6, v21 + v15, v11, v20 | v19);
          if (result)
          {
            if (v17 < a2 || v17 - a2 >= a3)
            {
              goto LABEL_12;
            }

            result = sub_1BEE28B80(v21 + v15, v30);
            if (v17 < a5 || v17 - a5 >= a6)
            {
            }

            else
            {
              if (!*(result + 16))
              {
                goto LABEL_33;
              }

              v22 = *(result + 40);

              if (v22)
              {
                return v17;
              }
            }
          }

          if (v18 == ++v15)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

LABEL_12:
      v15 = v25;
      v14 = v26 + 1;
      v16 = v24;
      if (v26 + 1 == v24)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1BEE2C36C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(a3 + 16);
  if (v4 >> 60)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_slowAlloc();
    v10 = v9;
    if (v4)
    {
      v11 = (a3 + 40);
      v12 = v9;
      do
      {
        if (*v11)
        {
          v13 = sub_1BEE467EC();
        }

        else
        {
          v13 = *(v11 - 1);
        }

        *v12++ = v13;
        v11 += 16;
        --v4;
      }

      while (v4);
    }

    v14 = a4(v8, a2, v10);
    MEMORY[0x1BFB50850](v10, -1, -1);
    return v14 & 1;
  }

  return result;
}

uint64_t sub_1BEE2C4BC(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v5 = a1;
  if (sub_1BEE467EC() != a1)
  {
    if (HIWORD(a2) == 1 && a2 == 1)
    {
      if (sub_1BEE2840C(v5))
      {
        goto LABEL_2;
      }
    }

    else
    {
      v7 = sub_1BEE467EC();
      v8 = [v3 gridSize];
      v9 = v8;
      v10 = HIWORD(v8);
      v25 = &_s12CellSequenceVN;
      v26 = sub_1BEB38740();
      v21 = v5;
      v22 = a2;
      v23 = v9;
      v24 = v10;
      v11 = __swift_project_boxed_opaque_existential_0(&v21, &_s12CellSequenceVN);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      v13 = *v11;
      v14 = *(v11 + 4);
      v15 = *(v11 + 5);
      v16 = *(v11 + 8);
      LOWORD(v11) = *(v11 + 9);
      v17 = SBHIconGridRangeMaxCellIndexOnRow(v13, v14, v16, 0);
      *boxed_opaque_existential_1 = v13;
      *(boxed_opaque_existential_1 + 4) = v14;
      *(boxed_opaque_existential_1 + 5) = v15;
      *(boxed_opaque_existential_1 + 8) = v16;
      *(boxed_opaque_existential_1 + 9) = v11;
      boxed_opaque_existential_1[3] = v13;
      boxed_opaque_existential_1[4] = 0;
      boxed_opaque_existential_1[5] = v17;
      __swift_destroy_boxed_opaque_existential_0(&v21);
      v18 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
      __swift_mutable_project_boxed_opaque_existential_1(v27, AssociatedTypeWitness);
      sub_1BEE4740C();
      if ((v22 & 1) == 0)
      {
        v5 = v21;
        do
        {
          swift_beginAccess();
          if (*(*&v3[v18] + 16))
          {
            sub_1BEE30138(v5);
            v20 = v19;
            swift_endAccess();
            if (v20)
            {
              goto LABEL_11;
            }
          }

          else
          {
            swift_endAccess();
          }

          __swift_mutable_project_boxed_opaque_existential_1(v27, AssociatedTypeWitness);
          sub_1BEE4740C();
          v5 = v21;
        }

        while (v22 != 1);
      }

      v5 = v7;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    return v5;
  }

LABEL_2:

  return sub_1BEE467EC();
}

uint64_t sub_1BEE2C784(unint64_t a1, int a2)
{
  v3 = v2;
  v16 = sub_1BEE467EC();
  if (qword_1EBDC6DB8 != -1)
  {
    swift_once();
  }

  v6 = dword_1EBDC7CD0;
  v7 = [v3 gridSize];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = &v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BEE33334;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1BEE3333C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE2B8D0;
  aBlock[3] = &block_descriptor_14;
  v10 = _Block_copy(aBlock);
  v11 = v3;

  SBHIconGridRangeEnumerateSubranges(a1, a2, v6, v7, 4, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v16;

    return v14;
  }

  return result;
}

uint64_t sub_1BEE2C95C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v9 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  if (!*(*(a4 + v9) + 16))
  {
    return swift_endAccess();
  }

  sub_1BEE30138(a1);
  v11 = v10;
  result = swift_endAccess();
  if (v11)
  {
    *a5 = a1;
    *a3 = 1;
  }

  return result;
}

id sub_1BEE2CA7C()
{
  if ((v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8] & 1) == 0)
  {
    v1 = v0;
    v2 = *&v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
    v3 = [v0 numberOfUsedRows];
    if (v3)
    {
      v4 = v3;
      result = [v0 gridSize];
      v6 = v4 - 1;
      if (__OFSUB__(v4, 1))
      {
        __break(1u);
      }

      else
      {
        v7 = result;
        v8 = v6 * result;
        if ((v6 * result) >> 64 == v8 >> 63)
        {
          v9 = result >> 16;
          v10 = sub_1BEE467EC();
          v25 = &_s12CellSequenceVN;
          v26 = sub_1BEB38740();
          v20 = v8;
          v21 = v7;
          v22 = 1;
          v23 = v7;
          v24 = v9;
          v11 = __swift_project_boxed_opaque_existential_0(&v20, &_s12CellSequenceVN);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
          v13 = *v11;
          v14 = *(v11 + 4);
          LOWORD(v9) = *(v11 + 5);
          v15 = *(v11 + 8);
          LOWORD(v11) = *(v11 + 9);
          v16 = SBHIconGridRangeMaxCellIndexOnRow(v13, v14, v15, 0);
          *boxed_opaque_existential_1 = v13;
          *(boxed_opaque_existential_1 + 4) = v14;
          *(boxed_opaque_existential_1 + 5) = v9;
          *(boxed_opaque_existential_1 + 8) = v15;
          *(boxed_opaque_existential_1 + 9) = v11;
          boxed_opaque_existential_1[3] = v13;
          boxed_opaque_existential_1[4] = 0;
          boxed_opaque_existential_1[5] = v16;
          __swift_destroy_boxed_opaque_existential_0(&v20);
          v17 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
          do
          {
            __swift_mutable_project_boxed_opaque_existential_1(v27, AssociatedTypeWitness);
            sub_1BEE4740C();
            if (v21)
            {
              break;
            }

            v18 = v20;
            swift_beginAccess();
            if (*(*&v1[v17] + 16))
            {
              sub_1BEE30138(v18);
              if (v19)
              {
                v10 = v18;
              }
            }

            swift_endAccess();
          }

          while (v18 < v2);
          __swift_destroy_boxed_opaque_existential_0(v27);
          return v10;
        }
      }

      __break(1u);
      return result;
    }
  }

  return sub_1BEE467EC();
}

id sub_1BEE2CD08()
{
  v1 = [v0 lastUsedGridCellIndex];
  if (v1 == sub_1BEE467EC())
  {

    return sub_1BEE467EC();
  }

  else
  {
    result = [v0 gridSize];
    if (result)
    {
      return (v1 / result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BEE2CE5C(uint64_t result)
{
  if (v1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8])
  {
    return 0;
  }

  v3 = *&v1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
  v22 = MEMORY[0x1E69E7CD0];
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v3)
    {
      v4 = v1;
      v5 = 0;
      v6 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
      v7 = result;
      do
      {
        swift_beginAccess();
        v8 = *&v4[v6];
        if (*(v8 + 16) && (v9 = sub_1BEE30138(v5), (v10 & 1) != 0))
        {
          v11 = *(*(v8 + 56) + 8 * v9);
          swift_endAccess();
          v12 = v22;
          if (*(v22 + 16) && (v13 = sub_1BEE4776C(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
          {
            v16 = ~v14;
            while (*(*(v12 + 48) + 8 * v15) != v11)
            {
              v15 = (v15 + 1) & v16;
              if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
LABEL_15:
            v17 = [v4 gridRangeForGridCellIndex_];
            v19 = v18;
            if (v17 != sub_1BEE467EC() && SBHIconGridSizeEqualToIconGridSize(v19, v7))
            {
              sub_1BEDF66CC(v21, v11);
            }
          }
        }

        else
        {
          swift_endAccess();
        }

        ++v5;
      }

      while (v5 != v3);
      v20 = v22;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CD0];
    }

    v2 = *(v20 + 16);

    return v2;
  }

  __break(1u);
  return result;
}

char *sub_1BEE2D054(uint64_t a1)
{
  v2 = v1;
  v29 = v2;
  swift_getObjectType();
  if (!a1)
  {

    return v29;
  }

  result = [v29 gridSize];
  v28 = result;
  v5 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 >> 16)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = result & 0xFFFF0000;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  v8 = [v29 usedGridRange];
  v10 = v9;
  v11 = v9 >> 16;
  v12 = [v29 gridSize];
  v13 = v12;
  v14 = HIWORD(v12);
  v35 = &_s12CellSequenceVN;
  v36 = sub_1BEB38740();
  v30 = v8;
  v31 = v10;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v15 = __swift_project_boxed_opaque_existential_0(&v30, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v17 = *v15;
  v18 = *(v15 + 4);
  v19 = *(v15 + 5);
  LOWORD(v14) = *(v15 + 8);
  LOWORD(v15) = *(v15 + 9);
  v20 = SBHIconGridRangeMaxCellIndexOnRow(v17, v18, v14, 0);
  *boxed_opaque_existential_1 = v17;
  *(boxed_opaque_existential_1 + 4) = v18;
  *(boxed_opaque_existential_1 + 5) = v19;
  *(boxed_opaque_existential_1 + 8) = v14;
  *(boxed_opaque_existential_1 + 9) = v15;
  boxed_opaque_existential_1[3] = v17;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v20;
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v21 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  v22 = AssociatedTypeWitness;
  __swift_mutable_project_boxed_opaque_existential_1(v37, AssociatedTypeWitness);
  sub_1BEE4740C();
  if ((v31 & 1) == 0)
  {
    v23 = v30;
    do
    {
      while (1)
      {
        swift_beginAccess();
        v24 = *&v29[v21];
        if (*(v24 + 16))
        {
          v25 = sub_1BEE30138(v23);
          if (v26)
          {
            break;
          }
        }

        swift_endAccess();
        __swift_mutable_project_boxed_opaque_existential_1(v37, AssociatedTypeWitness);
        sub_1BEE4740C();
        v23 = v30;
        if (v31 == 1)
        {
          goto LABEL_6;
        }
      }

      v27 = *(*(v24 + 56) + 8 * v25);
      swift_endAccess();
      v22 = v22 & 0xFFFFFFFF00000000 | v6 | v5;
      [v7 setIconIndex:v27 forGridCellIndex:{SBHIconGridRangeRelativeCellIndexForCellIndex(0, v22, v23, v6 | v28)}];
      __swift_mutable_project_boxed_opaque_existential_1(v37, AssociatedTypeWitness);
      sub_1BEE4740C();
      v23 = v30;
    }

    while ((v31 & 1) == 0);
  }

LABEL_6:
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v7;
}

uint64_t sub_1BEE2D524(char *a1)
{
  result = SBHIconGridSizeEqualToIconGridSize([v1 gridSize], objc_msgSend(a1, sel_gridSize));
  if (result)
  {
    v4 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
    swift_beginAccess();
    v5 = *&a1[v4];
    v6 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
    swift_beginAccess();
    *&v1[v6] = v5;

    v7 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
    swift_beginAccess();
    v8 = *&a1[v7];
    v9 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
    swift_beginAccess();
    *&v1[v9] = v8;

    v10 = a1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8];
    v11 = &v1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
    *v11 = *&a1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
    v11[8] = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BEE2D734(uint64_t a1)
{
  v3 = v1;
  v64 = *MEMORY[0x1E69E9840];
  v5 = sub_1BEE4695C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BEE467EC() == a1)
  {
    __break(1u);
  }

  else
  {
    if (v3[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8])
    {
      return 0;
    }

    v50 = v6;
    v51 = v5;
    v2 = [v3 gridSize];
    sub_1BEE4694C();
    if (qword_1EBDBFDC8 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v54 = qword_1EBDBFDD0;
  v52 = dword_1EBDBFDD8;
  v10 = HIWORD(dword_1EBDBFDD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC8590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AE40;
  v12 = (inited + 16);
  *(inited + 32) = a1;
  v55 = MEMORY[0x1E69E7CD0];
  v13 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  v53 = v2;
  v14 = 1;
  do
  {
    while (1)
    {
      v15 = v14 - 1;
      v16 = *(inited + 32 + 8 * (v14 - 1));
      *v12 = v15;
      v17 = v55;
      if (*(v55 + 16))
      {
        v18 = sub_1BEE4776C();
        v19 = -1 << *(v17 + 32);
        v20 = v18 & ~v19;
        if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (*(*(v17 + 48) + 8 * v20) != v16)
          {
            v20 = (v20 + 1) & v21;
            if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_8;
        }
      }

LABEL_14:
      sub_1BEDF66CC(&v62, v16);
      swift_beginAccess();
      if (*(*&v3[v13] + 16))
      {
        sub_1BEE30138(v16);
        if (v22)
        {
          break;
        }
      }

      swift_endAccess();
LABEL_8:
      v14 = *v12;
      if (!*v12)
      {
        goto LABEL_35;
      }
    }

    swift_endAccess();
    sub_1BEE4691C();
    v49 = v49 & 0xFFFFFFFF00000000 | v52 | (v10 << 16);
    v23 = v53;
    v54 = SBHIconGridRangeAddCellIndex(v54, v49, v16, v53);
    v25 = v24;
    v62 = v16;
    v63 = 65537;
    if (SBHIconGridRangeOffset(&v62, 0, 1, v23) < 1)
    {
      v30 = v53;
    }

    else
    {
      v26 = v62;
      v27 = *v12;
      v28 = *(inited + 24);
      v29 = *v12 + 1;
      if (*v12 >= v28 >> 1)
      {
        v52 = *v12 + 1;
        v42 = sub_1BEE307F8((v28 > 1), v29, 1, inited);
        v29 = v52;
        inited = v42;
      }

      v30 = v53;
      *(inited + 16) = v29;
      *(inited + 8 * v27 + 32) = v26;
    }

    v60 = v16;
    v61 = 65537;
    if (SBHIconGridRangeOffset(&v60, 1, 1, v30) >= 1)
    {
      v31 = v60;
      v33 = *(inited + 16);
      v32 = *(inited + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v52 = v33 + 1;
        v43 = sub_1BEE307F8((v32 > 1), v33 + 1, 1, inited);
        v34 = v52;
        inited = v43;
      }

      *(inited + 16) = v34;
      *(inited + 8 * v33 + 32) = v31;
    }

    v58 = v16;
    v59 = 65537;
    if (SBHIconGridRangeOffset(&v58, 2, 1, v30) >= 1)
    {
      v35 = v58;
      v37 = *(inited + 16);
      v36 = *(inited + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v52 = v37 + 1;
        v44 = sub_1BEE307F8((v36 > 1), v37 + 1, 1, inited);
        v38 = v52;
        inited = v44;
      }

      *(inited + 16) = v38;
      *(inited + 8 * v37 + 32) = v35;
    }

    v56 = v16;
    v57 = 65537;
    if (SBHIconGridRangeOffset(&v56, 3, 1, v30) <= 0)
    {
      v14 = *(inited + 16);
    }

    else
    {
      v39 = v56;
      v41 = *(inited + 16);
      v40 = *(inited + 24);
      v14 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        inited = sub_1BEE307F8((v40 > 1), v41 + 1, 1, inited);
      }

      *(inited + 16) = v14;
      *(inited + 8 * v41 + 32) = v39;
    }

    v52 = v25;
    v10 = HIWORD(v25);
    v12 = (inited + 16);
  }

  while (v14);
LABEL_35:

  if (sub_1BEE4693C())
  {
    v9 = 0;
  }

  else
  {
    v45 = objc_allocWithZone(SBHIconGridContiguousRegion);
    v46 = sub_1BEE468FC();
    v9 = [v45 initWithGridCellIndexes:v46 inGridRange:v54 gridSize:{v52 | (v10 << 16), v53}];
  }

  (*(v50 + 8))(v8, v51);
  return v9;
}

uint64_t sub_1BEE2DCEC(int64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v2) = a2;
  v5 = &selRef_fetchURL_;
  v29 = v3;
  v6 = [v3 gridSize];
  if (SBHIconGridRangeContainsIconGridRange(0, v6, a1, v2, v6))
  {
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }

  if (sub_1BEE474CC())
  {
    sub_1BEDFB1F4(MEMORY[0x1E69E7CC0]);
    v7 = v28;
    goto LABEL_4;
  }

LABEL_3:
  v7 = MEMORY[0x1E69E7CD0];
LABEL_4:
  v35 = v7;
  v8 = [v29 *(v5 + 3472)];
  v9 = v8;
  v10 = HIWORD(v8);
  v39 = &_s12CellSequenceVN;
  v40 = sub_1BEB38740();
  v36 = a1;
  LODWORD(v37) = v2;
  LOWORD(v38) = v9;
  WORD1(v38) = v10;
  v2 = __swift_project_boxed_opaque_existential_0(&v36, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  v12 = *v2;
  LOWORD(v10) = v2[4];
  v13 = v2[5];
  v14 = v2[8];
  LOWORD(v2) = v2[9];
  v15 = SBHIconGridRangeMaxCellIndexOnRow(v12, v10, v14, 0);
  *boxed_opaque_existential_1 = v12;
  *(boxed_opaque_existential_1 + 4) = v10;
  *(boxed_opaque_existential_1 + 5) = v13;
  *(boxed_opaque_existential_1 + 8) = v14;
  *(boxed_opaque_existential_1 + 9) = v2;
  boxed_opaque_existential_1[3] = v12;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v15;
  __swift_destroy_boxed_opaque_existential_0(&v36);
  LODWORD(v2) = __swift_mutable_project_boxed_opaque_existential_1(v32, AssociatedTypeWitness);
  sub_1BEE4740C();
  if (v31)
  {
    goto LABEL_28;
  }

  v16 = v30;
  while (2)
  {
    v17 = v35;
    if ((v35 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      LODWORD(v2) = sub_1BEE4748C();
      sub_1BEB20D28(0, &unk_1EBDC79D0);
      sub_1BEE332CC();
      sub_1BEE472AC();
      v17 = v36;
      v18 = v37;
      v5 = v38;
      v19 = v39;
      v20 = v40;
    }

    else
    {
      v21 = -1 << *(v35 + 32);
      v18 = v35 + 56;
      v5 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v20 = v23 & *(v35 + 56);

      v19 = 0;
    }

    a1 = (v5 + 64) >> 6;
    while (v17 < 0)
    {
      if (!sub_1BEE474FC())
      {
        goto LABEL_25;
      }

      sub_1BEB20D28(0, &unk_1EBDC79D0);
      swift_dynamicCast();
      v2 = v30;
      if (!v30)
      {
        goto LABEL_25;
      }

LABEL_16:
      v5 = [v2 containsGridCellIndex_];

      if (v5)
      {
        sub_1BEB2AAE8();
        goto LABEL_7;
      }
    }

    v24 = v19;
    v25 = v20;
    if (!v20)
    {
      while (1)
      {
        v19 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v19 >= a1)
        {
          goto LABEL_25;
        }

        v25 = *(v18 + 8 * v19);
        ++v24;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_15:
    v20 = (v25 - 1) & v25;
    v2 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v25)))));
    if (v2)
    {
      goto LABEL_16;
    }

LABEL_25:
    sub_1BEB2AAE8();
    v26 = [v29 contiguousRegionForGridCellIndex_];
    if (v26)
    {
      sub_1BEDF67AC(&v30, v26);
    }

LABEL_7:
    LODWORD(v2) = __swift_mutable_project_boxed_opaque_existential_1(v32, AssociatedTypeWitness);
    sub_1BEE4740C();
    v16 = v30;
    if (v31 != 1)
    {
      continue;
    }

    break;
  }

  v7 = v35;
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v7;
}

uint64_t sub_1BEE2E294(unint64_t a1, int a2)
{
  v3 = v2;
  v6 = [v3 gridSize];
  result = SBHIconGridRangeContainsIconGridRange(0, v6, a1, a2, v6);
  if (result)
  {
    v8 = [v3 gridSize];
    v9 = v8;
    v10 = HIWORD(v8);
    v27 = &_s12CellSequenceVN;
    v28 = sub_1BEB38740();
    v23 = a1;
    v24 = a2;
    v25 = v9;
    v26 = v10;
    v11 = __swift_project_boxed_opaque_existential_0(&v23, &_s12CellSequenceVN);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    v13 = *v11;
    v14 = *(v11 + 4);
    v15 = *(v11 + 5);
    v16 = *(v11 + 8);
    LOWORD(v11) = *(v11 + 9);
    v17 = SBHIconGridRangeMaxCellIndexOnRow(v13, v14, v16, 0);
    *boxed_opaque_existential_1 = v13;
    *(boxed_opaque_existential_1 + 4) = v14;
    *(boxed_opaque_existential_1 + 5) = v15;
    *(boxed_opaque_existential_1 + 8) = v16;
    *(boxed_opaque_existential_1 + 9) = v11;
    boxed_opaque_existential_1[3] = v13;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = v17;
    __swift_destroy_boxed_opaque_existential_0(&v23);
    v18 = 0;
LABEL_3:
    v19 = v18;
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v29, AssociatedTypeWitness);
      sub_1BEE4740C();
      v20 = v24;
      if (v24)
      {
        break;
      }

      v21 = v23;
      if (!v19 || ([v19 containsGridCellIndex_] & 1) == 0)
      {
        v22 = [v3 contiguousRegionForGridCellIndex_];
        if (v22)
        {
          v18 = v22;
        }

        else
        {
          v18 = v19;
        }

        if (v19 && v22)
        {

          break;
        }

        goto LABEL_3;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v29);
    return v20 ^ 1u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE2E538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1BEE4695C();
  sub_1BEE33438(&unk_1EBDBFFB0, MEMORY[0x1E6969B50]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A00);
  sub_1BEE33238();
  sub_1BEE4743C();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BEE3329C;
  *(v7 + 24) = v6;
  v11[4] = sub_1BEE332A4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BEE289DC;
  v11[3] = &block_descriptor_10;
  v8 = _Block_copy(v11);
  v9 = v3;

  [a1 enumerateGridCellIndexesUsingBlock_];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE2E724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  if (!*(*(a3 + v5) + 16))
  {
    return swift_endAccess();
  }

  sub_1BEE30138(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_1BEE4691C();
}

id sub_1BEE2E8C4(unint64_t a1, int a2)
{
  v3 = v2;
  swift_getObjectType();
  v25 = a2;
  v26 = a2 & 0xFFFF0000;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  v7 = [v3 gridSize];
  v8 = [v3 gridSize];
  v9 = v8;
  v10 = HIWORD(v8);
  v31 = &_s12CellSequenceVN;
  v32 = sub_1BEB38740();
  v27 = a1;
  v28 = a2;
  v29 = v9;
  v30 = v10;
  v11 = __swift_project_boxed_opaque_existential_0(&v27, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v13 = *v11;
  v14 = *(v11 + 4);
  v15 = *(v11 + 5);
  LOWORD(v10) = *(v11 + 8);
  LOWORD(v11) = *(v11 + 9);
  v16 = SBHIconGridRangeMaxCellIndexOnRow(v13, v14, v10, 0);
  *boxed_opaque_existential_1 = v13;
  *(boxed_opaque_existential_1 + 4) = v14;
  *(boxed_opaque_existential_1 + 5) = v15;
  *(boxed_opaque_existential_1 + 8) = v10;
  *(boxed_opaque_existential_1 + 9) = v11;
  boxed_opaque_existential_1[3] = v13;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v16;
  __swift_destroy_boxed_opaque_existential_0(&v27);
  v17 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  v18 = AssociatedTypeWitness;
  __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
  sub_1BEE4740C();
  if ((v28 & 1) == 0)
  {
    v20 = v27;
    do
    {
      while (1)
      {
        swift_beginAccess();
        v21 = *&v3[v17];
        if (*(v21 + 16))
        {
          v22 = sub_1BEE30138(v20);
          if (v23)
          {
            break;
          }
        }

        swift_endAccess();
        __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
        sub_1BEE4740C();
        v20 = v27;
        if (v28 == 1)
        {
          goto LABEL_2;
        }
      }

      v24 = *(*(v21 + 56) + 8 * v22);
      swift_endAccess();
      v18 = v18 & 0xFFFFFFFF00000000 | v25 | v26;
      [v6 setIconIndex:v24 forGridCellIndex:{SBHIconGridRangeRelativeCellIndexForCellIndex(a1, v18, v20, v7)}];
      __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
      sub_1BEE4740C();
      v20 = v27;
    }

    while ((v28 & 1) == 0);
  }

LABEL_2:
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v6;
}

uint64_t sub_1BEE2EBE0(void *a1)
{
  v2 = v1;
  v47 = MEMORY[0x1E69E7CD0];
  v4 = [v1 usedGridRange];
  v6 = v5;
  v7 = v5 >> 16;
  v8 = [v1 gridSize];
  v42 = &_s12CellSequenceVN;
  v43 = sub_1BEB38740();
  v38 = v4;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v9 = __swift_project_boxed_opaque_existential_0(&v38, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v11 = *v9;
  v12 = *(v9 + 4);
  LOWORD(v7) = *(v9 + 5);
  v13 = *(v9 + 8);
  LOWORD(v9) = *(v9 + 9);
  v14 = SBHIconGridRangeMaxCellIndexOnRow(v11, v12, v13, 0);
  *boxed_opaque_existential_1 = v11;
  *(boxed_opaque_existential_1 + 4) = v12;
  *(boxed_opaque_existential_1 + 5) = v7;
  *(boxed_opaque_existential_1 + 8) = v13;
  *(boxed_opaque_existential_1 + 9) = v9;
  boxed_opaque_existential_1[3] = v11;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v14;
  __swift_destroy_boxed_opaque_existential_0(&v38);
  v37 = 0;
  v15 = 0;
  v16 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  v17 = v8;
  while (2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v44, AssociatedTypeWitness);
    sub_1BEE4740C();
    if (v39)
    {
LABEL_20:

      __swift_destroy_boxed_opaque_existential_0(v44);
      return v15;
    }

    v18 = v38;
    while (1)
    {
      swift_beginAccess();
      v19 = *&v2[v16];
      if (!*(v19 + 16) || (v20 = sub_1BEE30138(v18), (v21 & 1) == 0))
      {
        swift_endAccess();
        goto LABEL_5;
      }

      v22 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();
      v23 = v47;
      if (*(v47 + 16))
      {
        v24 = sub_1BEE4776C();
        v25 = -1 << *(v23 + 32);
        v26 = v24 & ~v25;
        if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (*(*(v23 + 48) + 8 * v26) != v22)
          {
            v26 = (v26 + 1) & v27;
            if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_5;
        }
      }

LABEL_13:
      sub_1BEDF66CC(&v38, v22);
      v28 = [a1 gridCellIndexForIconIndex_];
      if (v28 != sub_1BEE467EC())
      {
        v29 = SBHIconGridDistanceBetweenGridCellIndexes(v18, v28, v17);
        NumberOfSteps = SBHIconGridDistanceGetNumberOfSteps(v29, v30);
        if (NumberOfSteps >= 1)
        {
          break;
        }
      }

LABEL_5:
      __swift_mutable_project_boxed_opaque_existential_1(v44, AssociatedTypeWitness);
      sub_1BEE4740C();
      v18 = v38;
      if (v39 == 1)
      {
        goto LABEL_20;
      }
    }

    v32 = NumberOfSteps;
    [v2 gridRangeForGridCellIndex_];
    result = SBHIconGridSizeGetArea(v33);
    v35 = v32 * result;
    if ((v32 * result) >> 64 == v35 >> 63)
    {
      if (!__OFADD__(v37, v35))
      {
        v37 += v35;
        if (!__OFADD__(v15++, 1))
        {
          continue;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

id sub_1BEE2EF90(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [v1 usedGridRange];
  v6 = v5;
  v7 = v5 >> 16;
  v8 = [v1 gridSize];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  v22 = &_s12CellSequenceVN;
  v23 = sub_1BEB38740();
  v18 = v4;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v10 = __swift_project_boxed_opaque_existential_0(&v18, &_s12CellSequenceVN);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v12 = *v10;
  LOWORD(v8) = *(v10 + 4);
  v13 = *(v10 + 5);
  LOWORD(v7) = *(v10 + 8);
  LOWORD(v10) = *(v10 + 9);
  v14 = SBHIconGridRangeMaxCellIndexOnRow(v12, v8, v7, 0);
  *boxed_opaque_existential_1 = v12;
  *(boxed_opaque_existential_1 + 4) = v8;
  *(boxed_opaque_existential_1 + 5) = v13;
  *(boxed_opaque_existential_1 + 8) = v7;
  *(boxed_opaque_existential_1 + 9) = v10;
  boxed_opaque_existential_1[3] = v12;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = v14;
  __swift_destroy_boxed_opaque_existential_0(&v18);
  __swift_mutable_project_boxed_opaque_existential_1(v24, AssociatedTypeWitness);
  sub_1BEE4740C();
  if ((v19 & 1) == 0)
  {
    v16 = v18;
    do
    {
      v17 = [v2 iconIndexForGridCellIndex_];
      if (v17 != [a1 iconIndexForGridCellIndex_])
      {
        [v9 setIconIndex:v17 forGridCellIndex:v16];
      }

      __swift_mutable_project_boxed_opaque_existential_1(v24, AssociatedTypeWitness);
      sub_1BEE4740C();
      v16 = v18;
    }

    while (v19 != 1);
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  return v9;
}

_OWORD *sub_1BEE2F2E0()
{
  v1 = v0;
  v2 = [v0 gridSize];
  v3 = HIWORD(v2);
  v4 = [v0 numberOfUsedRows];
  result = [v1 numberOfUsedColumns];
  if (v4 <= v3)
  {
    v6 = HIWORD(v2);
  }

  else
  {
    v6 = v4;
  }

  v47 = v2;
  v48 = v6;
  if (result <= v47)
  {
    v7 = v2;
  }

  else
  {
    v7 = result;
  }

  if ((v2 & 0x8000) != 0)
  {
    goto LABEL_72;
  }

  v8 = 2 * v2;
  if ((2 * v2) >= HIWORD(v2))
  {
    if ((v2 & 0x80000000) != 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v9 = ((v2 >> 15) & 0xFFFE) < v2;
  }

  else
  {
    v9 = 1;
  }

  v50 = v9;
  v10 = v4 * v7;
  if ((v4 * v7) >> 64 != (v4 * v7) >> 63)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v10)
  {
    if (v10 >= 1)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v50)
  {
    v12 = 1;
    if (v48)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

  if (v3 == 0xFFFF)
  {
    v12 = 0;
    if (v48)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

  v10 = v48 * v7;
  if ((v48 * v7) >> 64 == (v48 * v7) >> 63)
  {
    if (v10 > 0)
    {
LABEL_15:
      v11 = 0;
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        ++v11;
        v13 = v10 > 9;
        v10 /= 0xAuLL;
        if (!v13)
        {
          if (v48)
          {
            goto LABEL_29;
          }

          goto LABEL_51;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_28:
    v12 = 0;
    if (v48)
    {
LABEL_29:
      v14 = 0;
      v15 = 0;
      v16 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
      v17 = v8;
      v45 = v7 - 1;
      v18 = MEMORY[0x1E69E6530];
      v19 = MEMORY[0x1E69E65A8];
      v46 = v7;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC8480);
        result = swift_allocObject();
        result[1] = xmmword_1BEE8AD80;
        *(result + 7) = v18;
        *(result + 8) = v19;
        *(result + 4) = v12;
        v21 = v15 * v47;
        if ((v15 * v47) >> 64 != (v15 * v47) >> 63)
        {
          goto LABEL_71;
        }

        v49 = v15;
        *(result + 12) = v18;
        *(result + 13) = v19;
        *(result + 9) = v21;
        v22 = sub_1BEE4709C();
        MEMORY[0x1BFB4E5A0](v22);

        if (v7)
        {
          v23 = 0;
          v24 = v45;
          while (!__OFADD__(v21, v23))
          {
            swift_beginAccess();
            v27 = *&v1[v16];
            if (*(v27 + 16) && (v28 = sub_1BEE30138(v21 + v23), (v29 & 1) != 0))
            {
              v30 = *(*(v27 + 56) + 8 * v28);
              swift_endAccess();
              if (v30 == -1)
              {
                v25 = 2392;
                v26 = 0xE200000000000000;
              }

              else
              {
                v31 = sub_1BEE476EC();
                MEMORY[0x1BFB4E5A0](v31);

                v25 = 9;
                v26 = 0xE100000000000000;
              }

              result = MEMORY[0x1BFB4E5A0](v25, v26);
              v14 = 0;
              v20 = 0;
              if (!v24)
              {
                goto LABEL_31;
              }
            }

            else
            {
              swift_endAccess();
              result = MEMORY[0x1BFB4E5A0](2349, 0xE200000000000000);
              if (__OFADD__(v14++, 1))
              {
                goto LABEL_69;
              }

              if (v14 == v17 && v50)
              {
                MEMORY[0x1BFB4E5A0](10, 0xE100000000000000);
                goto LABEL_51;
              }

              v20 = v14;
              if (!v24)
              {
                goto LABEL_31;
              }
            }

            --v24;
            ++v23;
            if (v24 == -1)
            {
              goto LABEL_67;
            }
          }

          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v20 = v14;
LABEL_31:
        v15 = v49 + 1;
        MEMORY[0x1BFB4E5A0](10, 0xE100000000000000);
        v14 = v20;
        v7 = v46;
        v18 = MEMORY[0x1E69E6530];
        v19 = MEMORY[0x1E69E65A8];
      }

      while (v49 + 1 != v48);
    }

LABEL_51:
    v34 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
    swift_beginAccess();
    if (!*(*&v1[v34] + 16))
    {
      return 0;
    }

    MEMORY[0x1BFB4E5A0](0x203A424F4FLL, 0xE500000000000000);
    v35 = *&v1[v34];
    v36 = 1;
    v37 = 1 << *(v35 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v35 + 56);
    v40 = (v37 + 63) >> 6;

    v41 = 0;
    while (v39)
    {
LABEL_62:
      v42 = sub_1BEE476EC();
      if ((v36 & 1) == 0)
      {
        MEMORY[0x1BFB4E5A0](v42);

        v42 = 8236;
        v43 = 0xE200000000000000;
      }

      MEMORY[0x1BFB4E5A0](v42, v43);
      v39 &= v39 - 1;

      v36 = 0;
    }

    while (1)
    {
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v44 >= v40)
      {

        MEMORY[0x1BFB4E5A0](10, 0xE100000000000000);
        return 0;
      }

      v39 = *(v35 + 56 + 8 * v44);
      ++v41;
      if (v39)
      {
        v41 = v44;
        goto LABEL_62;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t SBIconListGridCellInfo.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1BEE2F9AC(a1, v12);
  if (!v13)
  {
    sub_1BEE2FA1C(v12);
    goto LABEL_15;
  }

  type metadata accessor for SBIconListGridCellInfo(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v3 = 0;
    return v3 & 1;
  }

  if (v11 == v1)
  {

    v3 = 1;
  }

  else
  {
    if (!SBHIconGridSizeEqualToIconGridSize([v1 gridSize], objc_msgSend(v11, sel_gridSize)))
    {
      goto LABEL_14;
    }

    if (v1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8])
    {
      if ((v11[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v11[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8] & 1) != 0 || *&v1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex] != *&v11[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex])
    {
      goto LABEL_14;
    }

    v4 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
    swift_beginAccess();
    v5 = *&v1[v4];
    v6 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
    swift_beginAccess();
    if ((sub_1BEE2FF98(v5, *&v11[v6]) & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v7 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
    swift_beginAccess();
    v8 = *&v1[v7];
    v9 = OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes;
    swift_beginAccess();
    v3 = sub_1BEDCE7A0(v8, *&v11[v9]);
  }

  return v3 & 1;
}

uint64_t sub_1BEE2F9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BEE2FA1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SBIconListGridCellInfo.hash.getter()
{
  v1 = v0;
  sub_1BEE477DC();
  [v0 gridSize];
  sub_1BEE477AC();
  [v0 gridSize];
  sub_1BEE477AC();
  if (v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8] == 1)
  {
    sub_1BEE4779C();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
    sub_1BEE4779C();
    MEMORY[0x1BFB4EC50](v2);
  }

  v3 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  swift_beginAccess();
  v4 = *&v1[v3];

  sub_1BEE3296C(v6, v4);

  return sub_1BEE477BC();
}

id SBIconListGridCellInfo.description.getter()
{
  result = [v0 descriptionWithMultilinePrefix_];
  if (result)
  {
    v2 = result;
    v3 = sub_1BEE4708C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SBIconListGridCellInfo.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  result = sub_1BEB3ACC8(v1);
  a1[3] = ObjectType;
  *a1 = v4;
  return result;
}

unint64_t sub_1BEE2FF98(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1BEE30138(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BEE300A0(uint64_t a1)
{
  sub_1BEE469DC();
  sub_1BEE33438(&qword_1EBDC7A38, MEMORY[0x1E6969C28]);
  v2 = sub_1BEE4703C();

  return sub_1BEE3017C(a1, v2);
}

unint64_t sub_1BEE30138(uint64_t a1)
{
  v2 = sub_1BEE4776C();

  return sub_1BEE3033C(a1, v2);
}

unint64_t sub_1BEE3017C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1BEE469DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1BEE33438(&unk_1EBDC84F0, MEMORY[0x1E6969C28]);
      v15 = sub_1BEE4704C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1BEE3033C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_1BEE303A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC84C8);
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

char *sub_1BEE304B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BEE305C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC84D8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC84E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BEE306F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC84A8);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1BEE307F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC8590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1BEE308FC(char *a1, int64_t a2, char a3)
{
  result = sub_1BEE3093C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BEE3091C(char *a1, int64_t a2, char a3)
{
  result = sub_1BEE30A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BEE3093C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC84C8);
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

char *sub_1BEE30A48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC84A8);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_1BEE30B48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC8500);
  v37 = a2;
  result = sub_1BEE4769C();
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

      sub_1BEE4777C();
      sub_1BEE470CC();
      result = sub_1BEE477CC();
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

uint64_t sub_1BEE30E08(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BEE469DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7570);
  v39 = a2;
  result = sub_1BEE4769C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1BEE33438(&qword_1EBDC7A38, MEMORY[0x1E6969C28]);
      result = sub_1BEE4703C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1BEE311E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7550);
  v34 = a2;
  result = sub_1BEE4769C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1BEE4777C();
      sub_1BEE470CC();
      result = sub_1BEE477CC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BEE3148C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC84A0);
  result = sub_1BEE4769C();
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
      result = sub_1BEE4776C();
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

uint64_t sub_1BEE316F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BEE4745C() + 1) & ~v5;
    do
    {
      sub_1BEE4777C();

      sub_1BEE470CC();
      v9 = sub_1BEE477CC();

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

uint64_t sub_1BEE318A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BEE4745C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BEE4776C();
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

uint64_t sub_1BEE31A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BEB1DAFC(a3, a4);
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
      sub_1BEE30B48(v18, a5 & 1);
      v13 = sub_1BEB1DAFC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1BEE4775C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1BEE32168();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_1BEE31B98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BEE469DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BEE300A0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1BEE322E0();
      goto LABEL_7;
    }

    sub_1BEE30E08(v17, a3 & 1);
    v23 = sub_1BEE300A0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1BEE32068(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1BEE4775C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1BEE31D8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BEB1DAFC(a2, a3);
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
      sub_1BEE311E4(v16, a4 & 1);
      v11 = sub_1BEB1DAFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1BEE4775C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1BEE32554();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_1BEE31F44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1BEE30138(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1BEE32820();
    result = v17;
    goto LABEL_8;
  }

  sub_1BEE3148C(v14, a3 & 1);
  result = sub_1BEE30138(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1BEE4775C();
  __break(1u);
  return result;
}

uint64_t sub_1BEE32068(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BEE469DC();
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

unint64_t sub_1BEE32120(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *sub_1BEE32168()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC8500);
  v2 = *v0;
  v3 = sub_1BEE4768C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

char *sub_1BEE322E0()
{
  v1 = v0;
  v31 = sub_1BEE469DC();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7570);
  v3 = *v0;
  v4 = sub_1BEE4768C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BEE32554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7550);
  v2 = *v0;
  v3 = sub_1BEE4768C();
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

id sub_1BEE326C4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BEE4768C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BEE32820()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC84A0);
  v2 = *v0;
  v3 = sub_1BEE4768C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1BEE3296C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v12 = *(*(a2 + 56) + v11);
    v8 &= v8 - 1;
    MEMORY[0x1BFB4EC50](*(*(a2 + 48) + v11));
    MEMORY[0x1BFB4EC50](v12);
    result = sub_1BEE477CC();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1BFB4EC50](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEE32A90(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = sub_1BEE295D8(a1, a2);
  v6 = *(v5 + 2);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (i >= *(v5 + 2))
      {
        __break(1u);
      }

      v8 = *&v5[8 * i + 32];
      v10 = 0;
      (*(a4 + 16))(a4, v8, &v10);
      if (v10)
      {
        break;
      }
    }
  }
}

char *sub_1BEE32B58(char *result, uint64_t a2, char a3, id a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    return result;
  }

  v8 = result;
  v9 = 0;
  v10 = &result[a2];
  v11 = a2 - 1;
  if ((a3 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = &v8[v9];
  if (__OFADD__(v8, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  while (1)
  {
    result = [a4 isOutOfBoundsAtIconIndex_];
    if (result)
    {
      v14 = 0;
      result = (*(a5 + 16))(a5, v12, &v14);
      if (v14)
      {
        return result;
      }
    }

    if (v11 == v9)
    {
      return result;
    }

    ++v9;
    if ((a3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = &v10[-v9];
    if (__OFSUB__(v10, v9))
    {
      goto LABEL_15;
    }

    v12 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1BEE32C6C(unsigned int a1, unint64_t a2, unint64_t a3, id a4)
{
  result = [a4 gridSize];
  v31 = a1;
  if (((WORD1(result) - HIWORD(a1)) & 0xFFFF0000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = (WORD1(result) - HIWORD(a1)) + 1;
  if ((v7 & 0x10000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = result;
  if (((result - v31) & 0xFFFF0000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = (result - v31) + 1;
  if ((v9 & 0x10000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = [a4 coordinateForGridCellIndex_];
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1BEE467EC();
  v13 = v7;
  if (v11 > v7)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 != v7)
  {
    v15 = v9;
    if (v12 > v9)
    {
LABEL_37:
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = v13;
    v25 = v12;
    v16 = v8;
    v17 = v8 & 0xFFFF0000;
    while (v11 < v13)
    {
      v26 = v11;
      if (v25 != v15)
      {
        v18 = v11 * v16;
        v19 = (v11 * v16) >> 64 == (v11 * v16) >> 63;
        v20 = v25;
        v28 = v18;
        if (!v19)
        {
          goto LABEL_29;
        }

        while (v20 < v15)
        {
          v14 = v18 + v20;
          if (__OFADD__(v18, v20))
          {
            goto LABEL_27;
          }

          v4 = v4 & 0xFFFFFFFF00000000 | v16 | v17;
          v8 = v8 & 0xFFFFFFFF00000000 | v31;
          result = SBHIconGridRangeContainsIconGridRange(0, v4, v18 + v20, v8, v17 | v16);
          if (result)
          {
            if (v14 < a2 || v14 - a2 >= a3)
            {
              goto LABEL_12;
            }

            v21 = sub_1BEE28B80(v18 + v20, v31);
            v22 = sub_1BEE2C36C(v14, v31, v21, sub_1BEE33364);
            v18 = v28;

            if (v22)
            {
              return v14;
            }
          }

          if (v15 == ++v20)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        break;
      }

LABEL_12:
      v11 = v26 + 1;
      v13 = v24;
      if (v26 + 1 == v24)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

id sub_1BEE32EE4(char *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [a1 gridSize];
  if (result < 0xFFFF0000)
  {
    result = SBHIconGridSizeGetArea(result);
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (a1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex + 8])
    {
      return result;
    }

    v5 = *&a1[OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex];
    if (v5 < 0)
    {
      __break(1u);
    }

    if (!v5)
    {
      return result;
    }
  }

  v6 = 0;
  v7 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  v8 = v5 - 1;
  while (1)
  {
    swift_beginAccess();
    if (*(*&a1[v7] + 16) && (sub_1BEE30138(v6), (v9 & 1) != 0))
    {
      result = swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v10[0] = 0;
      result = (*(a2 + 16))(a2, v6, v10);
      if (v10[0])
      {
        return result;
      }
    }

    if (v8 == v6)
    {
      break;
    }

    ++v6;
  }

  return result;
}

id sub_1BEE33024()
{
  result = [v0 succinctDescriptionBuilder];
  if (result)
  {
    v2 = result;
    v3 = result;
    v4 = SBHStringForIconGridSize([v0 gridSize]);
    if (!v4)
    {
      sub_1BEE4708C();
      v4 = sub_1BEE4705C();
    }

    v5 = sub_1BEE4705C();
    [v3 appendString:v4 withName:v5];

    v6 = v3;
    v7 = [v0 numberOfUsedRows];
    v8 = sub_1BEE4705C();

    v9 = v6;
    v10 = [v0 numberOfUsedColumns];
    v11 = sub_1BEE4705C();

    v12 = v9;
    v13 = [v0 isLayoutOutOfBounds];
    v14 = sub_1BEE4705C();

    return v2;
  }

  return result;
}

unint64_t sub_1BEE33238()
{
  result = qword_1EBDBFF80;
  if (!qword_1EBDBFF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDC7A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDBFF80);
  }

  return result;
}

unint64_t sub_1BEE332CC()
{
  result = qword_1EBDC8490;
  if (!qword_1EBDC8490)
  {
    sub_1BEB20D28(255, &unk_1EBDC79D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC8490);
  }

  return result;
}

void sub_1BEE333C4()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
  }
}

uint64_t sub_1BEE3340C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = *(v3 + 16);
  *v4 = result;
  *(v4 + 8) = 0;
  *a3 = 1;
  return result;
}

uint64_t sub_1BEE33438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SBHLightSourceActivityLevel.description.getter(uint64_t a1)
{
  v1 = SBHStringForLightSourceActivityLevel(a1);
  v2 = sub_1BEE4708C();

  return v2;
}

uint64_t sub_1BEE33508()
{
  v1 = SBHStringForLightSourceActivityLevel(*v0);
  v2 = sub_1BEE4708C();

  return v2;
}

uint64_t sub_1BEE3358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1BEE33620();
  result = sub_1BEE473EC();
  *a4 = result;
  return result;
}

unint64_t sub_1BEE33620()
{
  result = qword_1EBDBFE58;
  if (!qword_1EBDBFE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDBFE58);
  }

  return result;
}

uint64_t sub_1BEE33698(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1BEE46A0C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_1BEE46A1C();
}

uint64_t ImageOnlyApplication.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SBHImageOnlyApplication_bundleIdentifier);

  return v1;
}

id ImageOnlyApplication.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SBHImageOnlyApplication_bundleIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ImageOnlyApplication.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SBHImageOnlyApplication_bundleIdentifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ImageOnlyApplication();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1BEE33998()
{

  v0 = sub_1BEE4705C();

  return v0;
}

uint64_t sub_1BEE339F8()
{
  v1 = *(v0 + OBJC_IVAR___SBHImageOnlyApplication_bundleIdentifier);

  return v1;
}

id ImageOnlyApplication.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageOnlyApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageOnlyApplication();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IconListView.init(listModel:listLayoutProvider:iconLocation:orientation:isEditing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a3;
  *(a8 + 16) = a2;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

id sub_1BEE33D6C(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  if ([a1 respondsToSelector_])
  {
    return [a1 iconSpacingForOrientation_];
  }

  v6 = [v3 gridSize];
  [a1 layoutInsetsForOrientation_];
  result = [a1 iconImageInfo];
  if (((v6 - 1) & 0xFFFF0000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((HIWORD(v6) - 1) & 0xFFFF0000) != 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

id IconListView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  *v14 = v3;
  v15 = v1[2];
  v16 = *(v1 + 48);
  v4 = v3;
  result = [v3 layoutForIconLocation_];
  if (result)
  {
    v6 = result;
    v7 = [v13 gridCellInfoWithOptions_];
    v8 = [v13 icons];
    sub_1BEE3473C();
    v9 = sub_1BEE471AC();

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v7;
    v11 = v1[1];
    *(v10 + 32) = *v1;
    *(v10 + 48) = v11;
    *(v10 + 64) = v1[2];
    *(v10 + 80) = *(v1 + 48);
    *(v10 + 88) = v6;
    *(v10 + 96) = v4;
    *a1 = sub_1BEE34788;
    a1[1] = v10;
    sub_1BEE3478C(&v13, v12);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE33FD4@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v30 = a3;
  v28 = a1;
  v10 = sub_1BEE46C3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1BEE4720C();
  v33 = sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a7 = sub_1BEE46FFC();
  a7[1] = v13;
  v29 = sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8528) + 44);
  v35 = sub_1BEE34B7C(a2);
  v27[1] = swift_getKeyPath();
  (*(v11 + 16))(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v10);
  v15 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v28 = a7;
  v17 = v30;
  v18 = v31;
  *(v16 + 16) = v30;
  v19 = *(a4 + 16);
  *(v16 + 24) = *a4;
  *(v16 + 40) = v19;
  *(v16 + 56) = *(a4 + 32);
  *(v16 + 72) = *(a4 + 48);
  *(v16 + 80) = v18;
  (*(v11 + 32))(v16 + v15, v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BEE34D6C;
  *(v20 + 24) = v16;
  v21 = v17;
  sub_1BEE3478C(a4, v34);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8538);
  sub_1BEB53980(&unk_1EBDC8540, &qword_1EBDC8530);
  sub_1BEE34E5C();
  sub_1BEE34EB4();
  sub_1BEE46F3C();
  v22 = sub_1BEE46C5C();
  LOBYTE(v18) = sub_1BEE46E1C();

  v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8570) + 36)];
  *v23 = v22;
  v23[8] = v18;
  v24 = sub_1BEE46C5C();
  LOBYTE(v22) = sub_1BEE46E1C();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8578);
  v26 = v28 + *(result + 36);
  *v26 = v24;
  v26[8] = v22;
  return result;
}

id sub_1BEE343AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = [a3 gridCellIndexForIconIndex_];
  sub_1BEE46C2C();
  v37 = *(a4 + 16);
  v38 = *(a4 + 32);
  sub_1BEE33D6C(a5);
  v15 = v14;
  v17 = v16;
  v18 = SBIconCoordinateMakeWithGridCellIndex(v13, [*a4 gridSize]);
  v20 = v19;
  [a5 layoutInsetsForOrientation_];
  v22 = v21;
  v24 = v23;
  result = [a5 iconImageInfo];
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(v20, 1))
  {
    v28 = v24 + (v15 + v26) * (v18 - 1);
    v29 = v22 + (v17 + v27) * (v20 - 1);
    v36 = *(a4 + 32);
    LOBYTE(v37) = *(a4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8580);
    sub_1BEE46F1C();
    swift_unknownObjectRetain();
    v30 = a2;
    sub_1BEE46FDC();
    sub_1BEE46C1C();

    *&v35[7] = v36;
    *&v35[23] = v37;
    *&v35[39] = v38;
    *(a7 + 41) = *v35;
    *a7 = a2;
    *(a7 + 8) = 0;
    *(a7 + 16) = a6;
    *(a7 + 24) = v32;
    *(a7 + 32) = v33;
    *(a7 + 40) = v34;
    *(a7 + 57) = *&v35[16];
    *(a7 + 73) = *&v35[32];
    *(a7 + 88) = *(&v38 + 1);
    *(a7 + 96) = v28;
    *(a7 + 104) = v29;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1BEE3460C@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  *v14 = v3;
  v15 = v1[2];
  v16 = *(v1 + 48);
  v4 = v3;
  result = [v3 layoutForIconLocation_];
  if (result)
  {
    v6 = result;
    v7 = [v13 gridCellInfoWithOptions_];
    v8 = [v13 icons];
    sub_1BEE3473C();
    v9 = sub_1BEE471AC();

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v7;
    v11 = *v14;
    *(v10 + 32) = v13;
    *(v10 + 48) = v11;
    *(v10 + 64) = v15;
    *(v10 + 80) = v16;
    *(v10 + 88) = v6;
    *(v10 + 96) = v4;
    *a1 = sub_1BEE34FCC;
    a1[1] = v10;
    sub_1BEE3478C(&v13, v12);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BEE3473C()
{
  result = qword_1EBDBFEA0;
  if (!qword_1EBDBFEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDBFEA0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BEE347FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BEE34844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1BEE3492C(uint64_t a1, unsigned int a2, unsigned __int16 a3)
{
  v3 = a1;
  v30 = a2;
  v33 = HIWORD(a2);
  v4 = SBHIconGridRangeMaxCellIndexOnRow(a1, a2, a3, 0);
  result = sub_1BEE467EC();
  v6 = MEMORY[0x1E69E7CC0];
  if (result != v3)
  {
    v28 = v3;
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
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

    v13 = 0;
    v7 = 0;
    v27 = v33 << 16;
    v14 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (v12 >= v4)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        if (v16 >= v33)
        {
          result = sub_1BEE467EC();
          v15 = result;
          if (v7)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v31 = v31 & 0xFFFFFFFF00000000 | v30 | v27;
          v15 = SBHIconGridRangeMinCellIndexOnRow(v28, v31, a3, v16);
          v32 = v32 & 0xFFFFFFFF00000000 | v30 | v27;
          result = SBHIconGridRangeMaxCellIndexOnRow(v28, v30, a3, v16);
          v4 = result;
          ++v13;
          if (v7)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v15 = v12;
        if (v7)
        {
          goto LABEL_29;
        }
      }

      v17 = v6[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_36;
      }

      v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC8590);
      v20 = swift_allocObject();
      v21 = _swift_stdlib_malloc_size(v20);
      v22 = v21 - 32;
      if (v21 < 32)
      {
        v22 = v21 - 25;
      }

      v23 = v22 >> 3;
      v20[2] = v19;
      v20[3] = 2 * (v22 >> 3);
      v24 = (v20 + 4);
      v25 = v6[3] >> 1;
      if (v6[2])
      {
        v26 = v6 + 4;
        if (v20 != v6 || v24 >= v26 + 8 * v25)
        {
          memmove(v20 + 4, v26, 8 * v25);
        }

        v6[2] = 0;
      }

      v14 = (v24 + 8 * v25);
      v7 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

      v6 = v20;
LABEL_29:
      v10 = __OFSUB__(v7--, 1);
      if (v10)
      {
        goto LABEL_34;
      }

      *v14 = v3;
      result = sub_1BEE467EC();
      if (v15 == result)
      {
        goto LABEL_3;
      }

      ++v14;
      v3 = v15;
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_33;
      }
    }
  }

  v7 = 0;
LABEL_3:
  v8 = v6[3];
  if (v8 < 2)
  {
    return v6;
  }

  v9 = v8 >> 1;
  v10 = __OFSUB__(v9, v7);
  v11 = v9 - v7;
  if (!v10)
  {
    v6[2] = v11;
    return v6;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1BEE34B7C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1BFB4EA90](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1BEE474CC();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8588);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1BEE34D6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_1BEE46C3C() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 80);
  v10 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 88) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BEE343AC(a1, a2, v8, v3 + 24, v9, v10, a3);
}

unint64_t sub_1BEE34E5C()
{
  result = qword_1EBDBFDC0;
  if (!qword_1EBDBFDC0)
  {
    sub_1BEE3473C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDBFDC0);
  }

  return result;
}

unint64_t sub_1BEE34EB4()
{
  result = qword_1EBDC8550;
  if (!qword_1EBDC8550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDC8538);
    sub_1BEE34F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC8550);
  }

  return result;
}

unint64_t sub_1BEE34F40()
{
  result = qword_1EBDC8558;
  if (!qword_1EBDC8558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDC8560);
    sub_1BEDFD67C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC8558);
  }

  return result;
}

uint64_t sub_1BEE35018(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1BEE474CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1BEE474CC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1BEB4F8C0(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BEE35110()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    objc_opt_self();
    return swift_dynamicCastObjCClass() == 0;
  }

  return result;
}

uint64_t sub_1BEE3516C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1BEE351F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id SBRootFolder.init(uniqueIdentifier:displayName:maxListCount:listGridSize:iconGridSizeClassSizes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  if (a2)
  {
    v10 = sub_1BEE4705C();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_1BEE4705C();

  v13 = [v11 initWithUniqueIdentifier:v10 displayName:v12 maxListCount:a5 listGridSize:a6 iconGridSizeClassSizes:a7];

  return v13;
}

{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___SBRootFolder__dock] = 0;
  *&v7[OBJC_IVAR___SBRootFolder__todayList] = 0;
  *&v7[OBJC_IVAR___SBRootFolder__ignoredList] = 0;
  *&v7[OBJC_IVAR___SBRootFolder_ignoredListRunLoopObserver] = 0;
  v7[OBJC_IVAR___SBRootFolder_isCheckingIgnoredListConsistency] = 0;
  *&v7[OBJC_IVAR___SBRootFolder__dockUtilities] = 0;
  if (a2)
  {
    v12 = sub_1BEE4705C();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1BEE4705C();

  v16.receiver = v7;
  v16.super_class = SBRootFolder;
  v14 = objc_msgSendSuper2(&v16, sel_initWithUniqueIdentifier_displayName_maxListCount_listGridSize_iconGridSizeClassSizes_, v12, v13, a5, a6, a7);

  return v14;
}

id sub_1BEE35508(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___SBRootFolder__dock] = 0;
  *&v2[OBJC_IVAR___SBRootFolder__todayList] = 0;
  *&v2[OBJC_IVAR___SBRootFolder__ignoredList] = 0;
  *&v2[OBJC_IVAR___SBRootFolder_ignoredListRunLoopObserver] = 0;
  v2[OBJC_IVAR___SBRootFolder_isCheckingIgnoredListConsistency] = 0;
  *&v2[OBJC_IVAR___SBRootFolder__dockUtilities] = 0;
  v24.receiver = v2;
  v24.super_class = SBRootFolder;
  v5 = objc_msgSendSuper2(&v24, sel_initWithFolder_options_, a1, a2);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR___SBRootFolder__dock);
    if (!v8 || (a2 & 2) != 0 || (a2 & 8) != 0)
    {
      v13 = v5;
    }

    else
    {
      v9 = objc_allocWithZone(SBIconListModel);
      v10 = v5;
      v11 = v8;
      v12 = [v9 initWithIconListModel:v11 copyLeafIcons:a2 & 1];
      [v12 _changeFolderDuringCopy_];
      [v10 _setDock_];
    }

    v14 = *(v7 + OBJC_IVAR___SBRootFolder__todayList);
    if (v14)
    {
      v15 = (a2 & 0xA) == 0;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = objc_allocWithZone(SBIconListModel);
      v17 = v14;
      v18 = [v16 initWithIconListModel:v17 copyLeafIcons:a2 & 1];
      [v18 _changeFolderDuringCopy_];
      [v5 _setTodayList_];
    }

    v19 = *(v7 + OBJC_IVAR___SBRootFolder__ignoredList);
    if (v19 && (a2 & 0xE) == 0)
    {
      v20 = objc_allocWithZone(SBIconListModel);
      v21 = v19;
      v22 = [v20 initWithIconListModel:v21 copyLeafIcons:a2 & 1];
      [v22 _changeFolderDuringCopy_];
      [v5 _setIgnoredList_];
    }

    a1 = v5;
  }

  return v5;
}

void sub_1BEE35864()
{
  v1 = *(v0 + OBJC_IVAR___SBRootFolder__dock);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BEE35970(&OBJC_IVAR___SBRootFolder__dock);
    [v2 setAllowedGridSizeClasses_];
  }

  v4 = *(v0 + OBJC_IVAR___SBRootFolder__dockUtilities);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BEE35970(&OBJC_IVAR___SBRootFolder__dockUtilities);
    [v5 setAllowedGridSizeClasses_];
  }

  v7 = *(v0 + OBJC_IVAR___SBRootFolder__todayList);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BEE35A68();
    [v8 setAllowedGridSizeClasses_];
  }
}

id sub_1BEE35970(void *a1)
{
  v3 = [v1 delegate];
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      v5 = [v4 allowedGridSizeClassesForDockForRootFolder_];
      swift_unknownObjectRelease();
      if (v5)
      {
        return v5;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = *&v1[*a1];
  if (!v7 || (result = [v7 allowedGridSizeClasses]) == 0)
  {
    v8 = [objc_opt_self() gridSizeClassSetForDefaultGridSizeClass];

    return v8;
  }

  return result;
}

id sub_1BEE35A68()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 allowedGridSizeClassesForTodayListForRootFolder_];
      swift_unknownObjectRelease();
      if (v3)
      {
        return v3;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v5 = *&v0[OBJC_IVAR___SBRootFolder__todayList];
  if (!v5 || (result = [v5 allowedGridSizeClasses]) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC8280);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8B700;
    *(inited + 32) = @"SBHIconGridSizeClassSmall";
    *(inited + 40) = @"SBHIconGridSizeClassMedium";
    *(inited + 48) = @"SBHIconGridSizeClassLarge";
    v7 = @"SBHIconGridSizeClassSmall";
    v8 = @"SBHIconGridSizeClassMedium";
    v9 = @"SBHIconGridSizeClassLarge";
    sub_1BEDFB000(inited);
    swift_setDeallocating();
    type metadata accessor for SBHIconGridSizeClass(0);
    swift_arrayDestroy();
    v10 = objc_allocWithZone(SBHIconGridSizeClassSet);
    sub_1BEE39A30(&qword_1EBDBFF00, type metadata accessor for SBHIconGridSizeClass);
    v11 = sub_1BEE4724C();

    v12 = [v10 initWithGridSizeClasses_];

    return v12;
  }

  return result;
}

uint64_t sub_1BEE35C94()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEE39BCC;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEE39C90;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_83;
  v3 = _Block_copy(aBlock);
  v4 = v0;

  [v4 enumerateAllIconsWithOptions:1 usingBlock:v3];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1BEE35E30()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEE39C94;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEE39C90;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_73_0;
  v3 = _Block_copy(aBlock);
  v4 = v0;

  [v4 enumerateAllIconsWithOptions:3 usingBlock:v3];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void sub_1BEE35F98(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, _BYTE *a5)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v8 = sub_1BEE4696C();
    v9 = [a4 isIconAtIndexPathInTodayList_];

    if ((v9 & 1) == 0)
    {
      *a5 = 1;
      *a3 = 1;
    }
  }
}

uint64_t sub_1BEE3605C()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEE39BB0;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEE39C90;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_63;
  v3 = _Block_copy(aBlock);
  v4 = v0;

  [v4 enumerateAllIconsWithOptions:1 usingBlock:v3];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1BEE361F8()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEE39C8C;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEB31F14;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_53;
  v3 = _Block_copy(aBlock);
  v4 = v0;

  [v4 enumerateAllIconsWithOptions:3 usingBlock:v3];
  _Block_release(v3);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void sub_1BEE36360(void *a1, uint64_t a2, _BYTE *a3, void *a4, _BYTE *a5)
{
  v8 = [a1 gridSizeClass];
  v9 = sub_1BEE4708C();
  v11 = v10;
  if (v9 == sub_1BEE4708C() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1BEE4770C();

    if ((v14 & 1) == 0)
    {
      v15 = sub_1BEE4696C();
      v16 = [a4 isIconAtIndexPathInTodayList_];

      if ((v16 & 1) == 0)
      {
        *a5 = 1;
        *a3 = 1;
      }
    }
  }
}

Swift::Bool __swiftcall SBRootFolder.canBounceIcon(_:)(SBIcon *a1)
{
  v3 = sub_1BEE469DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    return 1;
  }

  v17 = v16;
  v18 = a1;
  v19 = [v1 model];
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19;
  v40 = v4;
  v21 = [v17 leafIdentifier];
  if (!v21)
  {
    sub_1BEE4708C();
    v21 = sub_1BEE4705C();
  }

  v22 = [v20 desiredIndexPathForIconWithIdentifier_];

  if (!v22)
  {

LABEL_11:
    return 1;
  }

  v39 = v10;
  sub_1BEE4697C();

  v23 = v40;
  v24 = *(v40 + 32);
  v24(v15, v13, v3);
  v38 = v1;
  v25 = [v1 indexPathForIcon_];
  if (!v25)
  {

    (*(v23 + 8))(v15, v3);
    return 1;
  }

  v26 = v25;
  sub_1BEE4697C();

  v27 = v39;
  v24(v39, v7, v3);
  sub_1BEE39A30(&unk_1EBDC84F0, MEMORY[0x1E6969C28]);
  if ((sub_1BEE4704C() & 1) == 0)
  {

    v34 = v27;
    v35 = *(v40 + 8);
    v35(v34, v3);
    v35(v15, v3);
    return 1;
  }

  v28 = v38;
  v29 = [v38 delegate];
  v30 = v40;
  if (v29)
  {
    v31 = [v29 rootFolder:v28 canBounceIcon:v18];
    swift_unknownObjectRelease();

    v32 = *(v30 + 8);
    v32(v39, v3);
    v32(v15, v3);
    return v31;
  }

  else
  {

    v36 = *(v30 + 8);
    v36(v39, v3);
    v36(v15, v3);
    return 0;
  }
}

uint64_t SBRootFolder.icons.getter()
{
  v7.super_class = SBRootFolder;
  v1 = objc_msgSendSuper2(&v7, sel_icons);
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v2 = sub_1BEE471AC();

  v8 = v2;
  v3 = [v0 dock];
  v4 = [v3 icons];

  v5 = sub_1BEE471AC();
  sub_1BEE35018(v5, sub_1BEE394E0);
  return v8;
}

Swift::Void __swiftcall SBRootFolder._didExplicitlyRemoveHiddenLists(_:)(Swift::OpaquePointer a1)
{
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v3 = sub_1BEE4719C();
  v33 = v1;
  v43.receiver = v1;
  v43.super_class = SBRootFolder;
  objc_msgSendSuper2(&v43, sel__didExplicitlyRemoveHiddenLists_, v3);

  if (a1._rawValue >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v5 = 0;
    v38 = a1._rawValue & 0xC000000000000001;
    v35 = a1._rawValue + 32;
    v36 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x1E69E7CC0];
    v37 = i;
    rawValue = a1._rawValue;
    while (1)
    {
      if (v38)
      {
        v7 = MEMORY[0x1BFB4EA90](v5, a1._rawValue);
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_47;
        }

        v7 = *&v35[8 * v5];
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      aBlock[4] = sub_1BEE35110;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BEE3516C;
      aBlock[3] = &block_descriptor_11;
      v11 = _Block_copy(aBlock);

      v12 = [v8 iconsPassingTest_];
      _Block_release(v11);
      if (swift_isEscapingClosureAtFileLocation())
      {
        goto LABEL_42;
      }

      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v13 = sub_1BEE471AC();

      v14 = v13 >> 62;
      v39 = v10;
      if (v13 >> 62)
      {
        v15 = sub_1BEE474CC();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v6 >> 62;
      if (v6 >> 62)
      {
        v17 = sub_1BEE474CC();
      }

      else
      {
        v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v15;
      v9 = __OFADD__(v17, v15);
      v19 = v17 + v15;
      if (v9)
      {
        goto LABEL_43;
      }

      v40 = v8;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v16)
        {
          goto LABEL_24;
        }

LABEL_23:
        sub_1BEE474CC();
        goto LABEL_24;
      }

      if (v16)
      {
        goto LABEL_23;
      }

      v20 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v6;
        goto LABEL_25;
      }

LABEL_24:
      v41 = sub_1BEE475DC();
      v20 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v14)
      {
        v23 = sub_1BEE474CC();
        if (v23)
        {
LABEL_29:
          if (((v22 >> 1) - v21) < v18)
          {
            goto LABEL_45;
          }

          v24 = v20 + 8 * v21 + 32;
          if (v14)
          {
            if (v23 < 1)
            {
              goto LABEL_48;
            }

            sub_1BEE39BE8(&unk_1EBDBFE20, &unk_1EBDC7A08);
            for (j = 0; j != v23; ++j)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A08);
              v26 = sub_1BEDCF4E0(aBlock, j, v13);
              v28 = *v27;
              (v26)(aBlock, 0);
              *(v24 + 8 * j) = v28;
            }

            a1._rawValue = rawValue;
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v6 = v41;
          if (v18 > 0)
          {
            v29 = *(v20 + 16);
            v9 = __OFADD__(v29, v18);
            v30 = v29 + v18;
            if (v9)
            {
              goto LABEL_46;
            }

            *(v20 + 16) = v30;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_29;
        }
      }

      v6 = v41;
      if (v18 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      v5 = v39;
      if (v39 == v37)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
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
    ;
  }

LABEL_50:
  v31 = [v33 ignoredList];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v32 = sub_1BEE4719C();
}

id SBRootFolder.bumpedIconsFallbackList.getter()
{
  v1 = [v0 ignoredList];

  return v1;
}

Swift::Bool __swiftcall SBRootFolder.canAddIconCount(_:startingAtList:)(Swift::Int _, SBIconListModel_optional *startingAtList)
{
  v3 = v2;
  v6 = [v2 dock];
  v7 = v6;
  if (startingAtList)
  {
    if (v6)
    {
      sub_1BEB20D28(0, &qword_1EBDBFF10);
      v8 = startingAtList;
      v9 = sub_1BEE473CC();

      if (v9)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v13.receiver = v3;
    v13.super_class = SBRootFolder;
    return objc_msgSendSuper2(&v13, sel_canAddIconCount_startingAtList_, _, startingAtList);
  }

  if (v6)
  {

    goto LABEL_7;
  }

LABEL_8:
  v11 = [v3 dock];
  v12 = [v11 allowsAddingIconCount_];

  return v12;
}

void __swiftcall SBRootFolder.list(at:)(SBIconListModel *__return_ptr retstr, Swift::Int at)
{
  switch(at)
  {
    case 10000:
      v3 = [v2 dock];
      break;
    case 20000:
      v3 = [v2 todayList];
      break;
    case 30000:
      v3 = [v2 ignoredList];
      break;
    case 40000:
      v3 = [v2 dockUtilities];
      break;
    default:
      v5.receiver = v2;
      v5.super_class = SBRootFolder;
      v3 = [(SBIconListModel *)&v5 listAtIndex:at];
      break;
  }

  v4 = v3;
}

uint64_t sub_1BEE373C8(id a1)
{
  v3 = [v1 dock];

  if (v3 == a1)
  {
    v8 = &SBDockIndex;
    return *v8;
  }

  v4 = [v1 todayList];

  if (v4 == a1)
  {
    v8 = &SBTodayListIndex;
    return *v8;
  }

  v5 = [v1 ignoredList];

  if (v5 == a1)
  {
    v8 = &SBIgnoredListIndex;
    return *v8;
  }

  v6 = [v1 dockUtilities];

  if (v6 == a1)
  {
    return 40000;
  }

  else
  {
    return 0;
  }
}

Swift::Int __swiftcall SBRootFolder.index(ofList:)(SBIconListModel *ofList)
{
  result = sub_1BEE373C8(ofList);
  if (v4)
  {
    v5.receiver = v1;
    v5.super_class = SBRootFolder;
    return [(SBIconListModel *)&v5 indexOfList:ofList];
  }

  return result;
}

Swift::Int __swiftcall SBRootFolder.visibleIndex(ofList:)(SBIconListModel *ofList)
{
  if ([(SBIconListModel *)ofList isHidden])
  {

    return sub_1BEE467EC();
  }

  else
  {
    result = sub_1BEE373C8(ofList);
    if (v4)
    {
      v5.receiver = v1;
      v5.super_class = SBRootFolder;
      return [(SBIconListModel *)&v5 visibleIndexOfList:ofList];
    }
  }

  return result;
}

Swift::Int __swiftcall SBRootFolder.hiddenIndex(ofList:)(SBIconListModel *ofList)
{
  if ([(SBIconListModel *)ofList isHidden])
  {
    result = sub_1BEE373C8(ofList);
    if (v4)
    {
      v5.receiver = v1;
      v5.super_class = SBRootFolder;
      return [(SBIconListModel *)&v5 hiddenIndexOfList:ofList];
    }
  }

  else
  {

    return sub_1BEE467EC();
  }

  return result;
}

Swift::Void __swiftcall SBRootFolder.removeList(_:)(SBIconListModel *a1)
{
  sub_1BEE373C8(a1);
  if (v3)
  {
    v4.receiver = v1;
    v4.super_class = SBRootFolder;
    [(SBIconListModel *)&v4 removeList:a1];
  }
}

void SBRootFolder.enumerateExtraLists(_:)(void (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___SBRootFolder__dock);
  if (v3)
  {
    v4 = v3;
    a1();
  }

  v5 = *(v1 + OBJC_IVAR___SBRootFolder__todayList);
  if (v5)
  {
    v6 = v5;
    a1();
  }

  v7 = *(v1 + OBJC_IVAR___SBRootFolder__ignoredList);
  if (v7)
  {
    v8 = v7;
    a1();
  }

  v9 = *(v1 + OBJC_IVAR___SBRootFolder__dockUtilities);
  if (v9)
  {
    v10 = v9;
    a1();
  }
}

id sub_1BEE37DF8(void *a1)
{
  v3 = OBJC_IVAR___SBRootFolder__todayList;
  v4 = *&v1[OBJC_IVAR___SBRootFolder__todayList];
  if (v4)
  {
    v5 = v4;
    [v1 _willRemoveList_atIndex_informObservers_];
    [v1 _didRemoveList_atIndex_informObservers_];
    [v5 removeListObserver_];

    v4 = *&v1[v3];
  }

  *&v1[v3] = a1;

  v6 = a1;
  v7 = sub_1BEE35A68();
  [v6 setAllowedGridSizeClasses_];

  [v6 setFixedIconLocationBehavior_];
  [v6 setIconLayoutBehavior_];
  [v1 _didAddList_informObservers_];

  return [v6 addListObserver_];
}

uint64_t sub_1BEE38064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BEE396E4;
  *(v11 + 24) = v10;
  v14[4] = sub_1BEDFBF70;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BEE39C64;
  v14[3] = &block_descriptor_44;
  v12 = _Block_copy(v14);

  [a1 enumerateDirectlyContainedIconsUsingBlock_];
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEE381C8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(uint64_t, char *, char *), uint64_t a6, _BYTE *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = sub_1BEE469DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() indexPathWithIconIndex:a2 listIndex:a4];
  sub_1BEE4697C();

  HIBYTE(v19) = 0;
  a5(a1, v16, &v19 + 7);
  if (HIBYTE(v19) == 1)
  {
    *a3 = 1;
    *a7 = 1;
  }

  return (*(v14 + 8))(v16, v13);
}

id sub_1BEE384D0(void *a1)
{
  v2 = v1;
  v4 = sub_1BEE4689C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___SBRootFolder__ignoredList;
  v9 = *&v2[OBJC_IVAR___SBRootFolder__ignoredList];
  if (v9)
  {
    v10 = v9;
    [v2 _willRemoveList_atIndex_informObservers_];
    [v2 _didRemoveList_atIndex_informObservers_];
    [v10 removeListObserver_];

    v9 = *&v2[v8];
  }

  *&v2[v8] = a1;

  v11 = objc_opt_self();
  v12 = a1;
  v13 = [v11 gridSizeClassSetForDefaultGridSizeClass];
  [v12 setAllowedGridSizeClasses_];

  [v12 setFixedIconLocationBehavior_];
  sub_1BEE4686C();
  v14 = sub_1BEE4687C();
  (*(v5 + 8))(v7, v4);
  [v12 setHidden:1 byUser:1 hiddenDate:v14];

  [v2 _didAddList_informObservers_];
  return [v12 addListObserver_];
}

BOOL sub_1BEE38750(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = sub_1BEE469DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v9 = sub_1BEE4696C();
  v10 = [v9 sbListIndex];

  v11 = *a4;
  (*(v6 + 8))(v8, v5);
  return v10 == v11;
}

void sub_1BEE38938()
{
  v1 = OBJC_IVAR___SBRootFolder_ignoredListRunLoopObserver;
  v2 = *&v0[OBJC_IVAR___SBRootFolder_ignoredListRunLoopObserver];
  if (v2)
  {
    CFRunLoopObserverInvalidate(v2);
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v4 = *&v0[OBJC_IVAR___SBRootFolder__ignoredList];
  if (v4)
  {
    v5 = OBJC_IVAR___SBRootFolder_isCheckingIgnoredListConsistency;
    v0[OBJC_IVAR___SBRootFolder_isCheckingIgnoredListConsistency] = 1;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    *(v6 + 24) = &v13;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1BEE39694;
    *(v7 + 24) = v6;
    aBlock[4] = sub_1BEDFBF70;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BEE39C64;
    aBlock[3] = &block_descriptor_6_1;
    v8 = _Block_copy(aBlock);
    v9 = v4;
    v10 = v0;

    [v9 enumerateIconsUsingBlock_];
    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else if (!(v13 >> 62))
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:

        v0[v5] = 0;

        return;
      }

LABEL_7:
      sub_1BEB20D28(0, &qword_1EBDBFEA0);

      v11 = sub_1BEE4719C();

      [v10 removeIcons:v11 options:0];

      v9 = v11;
      goto LABEL_8;
    }

    if (!sub_1BEE474CC())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void sub_1BEE38B88(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 applicationBundleID];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1BEE4708C();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = [v9 leafIdentifierAndApplicationBundleIDMatches];

    if (v16)
    {
      v17 = swift_allocObject();
      v17[2] = a5;
      v17[3] = v13;
      v17[4] = v15;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1BEE396D0;
      *(v18 + 24) = v17;
      v29 = sub_1BEE39C98;
      v30 = v18;
      v25 = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1BEE351F4;
      v28 = &block_descriptor_25;
      v19 = _Block_copy(&v25);

      v20 = [a4 firstIconPassingTest_];
      _Block_release(v19);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if ((v19 & 1) == 0)
      {
        if (v20)
        {
          if ([a4 isIconInIgnoredList_])
          {
            goto LABEL_14;
          }

          [a4 replaceIcon:v20 withIcon:v9];

LABEL_17:
          v20 = v10;
          goto LABEL_18;
        }

LABEL_15:

        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      v21 = swift_allocObject();
      *(v21 + 16) = v13;
      *(v21 + 24) = v15;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1BEE3969C;
      *(v22 + 24) = v21;
      v29 = sub_1BEE396A4;
      v30 = v22;
      v25 = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1BEE351F4;
      v28 = &block_descriptor_15_1;
      v23 = _Block_copy(&v25);

      v20 = [a4 firstIconPassingTest_];
      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (!v20)
        {
          goto LABEL_15;
        }

        v10 = v10;
        MEMORY[0x1BFB4E650]();
        if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_13:
          sub_1BEE471DC();
LABEL_14:

LABEL_18:
          return;
        }

LABEL_22:
        sub_1BEE471BC();
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_1BEE38F60(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1BFB4EA90](v9, v7);
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
          return result;
        }

        v12 = result;
        swift_unknownObjectRelease();
        if (v12 == a1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v8 = sub_1BEE474CC();
          goto LABEL_3;
        }

        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        if (*(v7 + 32 + 8 * v9) == a1)
        {
LABEL_14:

          return 0;
        }

        ++v9;
      }
    }

    while (v9 != v8);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v13 = result;
    v14 = a1;
    if ([v13 leafIdentifierAndApplicationBundleIDMatches])
    {
LABEL_17:

      return 0;
    }

    v15 = [v13 applicationBundleID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BEE4708C();
      v19 = v18;

      if (!a4)
      {

        goto LABEL_17;
      }

      if (v17 == a3 && v19 == a4)
      {

        return 1;
      }

      v20 = sub_1BEE4770C();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      if (a4)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1BEE3914C(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = a1;
  if (![v7 leafIdentifierAndApplicationBundleIDMatches])
  {
    goto LABEL_14;
  }

  v9 = [v7 applicationBundleID];
  if (!v9)
  {

    return !a3;
  }

  v10 = v9;
  v11 = sub_1BEE4708C();
  v13 = v12;

  if (!a3)
  {

LABEL_14:

    return 0;
  }

  if (v11 != a2 || v13 != a3)
  {
    v15 = sub_1BEE4770C();

    return (v15 & 1) != 0;
  }

  return 1;
}

id sub_1BEE392AC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *&v3[*a2];
  if (v7)
  {
    v8 = *a3;
    v9 = v7;
    [v3 _willRemoveList_atIndex_informObservers_];
    [v3 _didRemoveList_atIndex_informObservers_];
    [v9 removeListObserver_];

    v7 = *&v3[v6];
  }

  *&v3[v6] = a1;

  v10 = a1;
  v11 = sub_1BEE35970(a2);
  [v10 setAllowedGridSizeClasses_];

  [v10 setFixedIconLocationBehavior_];
  [v3 _didAddList_informObservers_];

  return [v10 addListObserver_];
}

uint64_t sub_1BEE394E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BEE474CC();
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
      result = sub_1BEE474CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BEE39BE8(&unk_1EBDBFE20, &unk_1EBDC7A08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A08);
            v9 = sub_1BEDCF4E0(v13, i, a3);
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
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
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

uint64_t sub_1BEE396F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BEE474CC();
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
      result = sub_1BEE474CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BEE39BE8(&qword_1EBDC85E8, &qword_1EBDC85E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC85E0);
            v9 = sub_1BEDCF4E0(v13, i, a3);
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
        sub_1BEB20D28(0, &unk_1EBDBFFD0);
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

uint64_t sub_1BEE39890(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BEE474CC();
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
      result = sub_1BEE474CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BEE39BE8(&unk_1EBDC85F0, &qword_1EBDC7480);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7480);
            v9 = sub_1BEDCF458(v13, i, a3);
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
        sub_1BEB20D28(0, &qword_1EBDBFFE0);
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

uint64_t sub_1BEE39A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BEE39A78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = *(result + OBJC_IVAR___SBRootFolder__dock);
  if (!v4 || (result = (*(a2 + 16))(a2, v4, 10000, &v8), v8 != 1))
  {
    v5 = *(v3 + OBJC_IVAR___SBRootFolder__todayList);
    if (!v5 || (result = (*(a2 + 16))(a2, v5, 20000, &v8), (v8 & 1) == 0))
    {
      v6 = *(v3 + OBJC_IVAR___SBRootFolder__ignoredList);
      if (!v6 || (result = (*(a2 + 16))(a2, v6, 30000, &v8), (v8 & 1) == 0))
      {
        v7 = *(v3 + OBJC_IVAR___SBRootFolder__dockUtilities);
        if (v7)
        {
          return (*(a2 + 16))(a2, v7, 40000, &v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BEE39BE8(unint64_t *a1, uint64_t *a2)
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

void __generateCacheKeyForMetricsAndLegibilityDescriptor_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"metrics"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *__generateCacheKeyForMetricsAndLegibilityDescriptor(SBIconLabelImageMetrics *__strong, PLKLegibilityDescriptor *__strong, NSLocale *__strong, SBIconLabelComponent)"}];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"SBIconLabelImageCache.m";
    v6 = 1024;
    v7 = 46;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t SBHIconLocationIsAppPrediction_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [SBIconView setContentVisibility:v0];
}

void SBHIconDragItemWithIconAndIconView_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Skipping setTeamData on the provider. Drag info data is too large for dragInfo:%@.", &v2, 0xCu);
}

void SBHIconDragItemWithIconAndIconView_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "Skipping setTeamData on the provider. Drag info data is nil with error:%@ for dragInfo:%@.", &v3, 0x16u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}