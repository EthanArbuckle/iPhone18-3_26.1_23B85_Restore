uint64_t Tree.resolvedSelf(within:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 104);
  v10 = *(v8 + 136);
  v11 = *(v8 + 200);
  if (v11 && *(v11 + 32) != 1)
  {
    return *(v11 + 24);
  }

  if (*(v8 + 144))
  {
LABEL_9:
    if (v11)
    {
      *(v11 + 24) = v9;
      *(v11 + 32) = 0;
    }

    return v9;
  }

  if (HIDWORD(v10) >= *(*result + 124))
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(*result + 112);
  if (v12)
  {
    if ((v10 & 0x80000000) == 0)
    {
      v13 = *(v12 + 168 * HIDWORD(v10));
      if (v10 < *(v13 + 16))
      {
        v14 = v13 + 208 * v10;
        v16 = *(v14 + 192);
        v17 = *(v14 + 208);
        v18 = *(v14 + 224);
        v15 = *(v14 + 176);
        v9 = Tree.resolvedSelf(within:)(result, a2, a3, a4, a5, a6, a7, a8, *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80), *(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112), *(v14 + 120), *(v14 + 128), *(v14 + 136), *(v14 + 144), *(v14 + 152), *(v14 + 160), *(v14 + 168));
        goto LABEL_9;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void Tree.semanticValues.getter()
{
  v1 = 0;
  v2 = *(v0 + 120);
  v3 = *(v0 + 132);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 - 40 + 40 * v1;
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (!v2)
    {
      goto LABEL_16;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v5 + 76);
    ++v1;
    v5 += 40;
    if ((v7 & 0x3E) != 0)
    {
      v8 = *v5;
      v9 = *(v5 + 16);
      v16 = *(v5 + 8);
      v14 = *(v5 + 28);
      v15 = *(v5 + 24);
      v13 = *(v5 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v16;
      *(v12 + 48) = v9;
      *(v12 + 56) = v15;
      *(v12 + 60) = v14;
      *(v12 + 64) = v13;
      *(v12 + 68) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }
}

void Tree.otherAttributes.getter()
{
  v1 = 0;
  v2 = *(v0 + 120);
  v3 = *(v0 + 132);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 - 40 + 40 * v1;
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (!v2)
    {
      goto LABEL_16;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v5 + 76);
    ++v1;
    v5 += 40;
    if ((v7 & 0x3F) == 1)
    {
      v8 = *v5;
      v9 = *(v5 + 16);
      v16 = *(v5 + 8);
      v14 = *(v5 + 28);
      v15 = *(v5 + 24);
      v13 = *(v5 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 40 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v16;
      *(v12 + 48) = v9;
      *(v12 + 56) = v15;
      *(v12 + 60) = v14;
      *(v12 + 64) = v13;
      *(v12 + 68) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }
}

uint64_t Tree.isLeafView(within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 12);
  v6 = *v5;
  if (v6 != 2)
  {
    return v6 & 1;
  }

  v8 = *(v4 + 117);
  v10 = *(v4 + 22);
  v9 = *(v4 + 23);
  *&v59[0] = a1;
  v11 = v4[3];
  v65 = v4[2];
  v66 = v11;
  v67 = v4[4];
  *&v68 = *(v4 + 10);
  v12 = v4[1];
  v63 = *v4;
  v64 = v12;
  *(&v68 + 1) = __PAIR64__(v9, v10);
  v13 = *(v4 + 13);
  *v69 = v5;
  *&v69[8] = v13;
  *&v69[13] = *(v4 + 109);
  v69[21] = v8;
  *&v69[38] = *(v4 + 134);
  *&v69[22] = *(v4 + 118);
  *&v69[96] = v4[12];
  *&v69[86] = *(v4 + 182);
  *&v69[70] = *(v4 + 166);
  *&v69[54] = *(v4 + 150);
  v14 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, v59, a3, a4, MEMORY[0x277D84FA0]);
  v15 = *(v14 + 16);
  if (!v15)
  {

    if (v8 != 5)
    {
      goto LABEL_18;
    }

LABEL_15:
    LOBYTE(v6) = 0;
    goto LABEL_24;
  }

  v16 = 0;
  v17 = v15 - 1;
  result = 1;
  while (1)
  {
    if ((result & 1) == 0)
    {
      if (v17 == v16)
      {

        LOBYTE(v6) = 0;
        goto LABEL_24;
      }

      result = 0;
      goto LABEL_4;
    }

    v19 = *(v14 + 8 * v16 + 32);
    if (HIDWORD(v19) >= *(a1 + 124))
    {
      goto LABEL_27;
    }

    v20 = *(a1 + 112);
    if (!v20)
    {
      goto LABEL_32;
    }

    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    v21 = *(v20 + 168 * HIDWORD(v19));
    if (v19 >= *(v21 + 16))
    {
      goto LABEL_29;
    }

    v22 = (v21 + 208 * v19);
    *&v69[48] = v22[11];
    *&v69[64] = v22[12];
    *&v69[80] = v22[13];
    *&v69[96] = v22[14];
    v68 = v22[7];
    *v69 = v22[8];
    *&v69[16] = v22[9];
    *&v69[32] = v22[10];
    v64 = v22[3];
    v65 = v22[4];
    v66 = v22[5];
    v67 = v22[6];
    v63 = v22[2];
    result = Tree.isLeafView(within:)(a1);
    if (v17 == v16)
    {
      break;
    }

    v15 = *(v14 + 16);
LABEL_4:
    if (++v16 >= v15)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v23 = result;

  if ((v23 & (v8 != 5)) != 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v10 == -1)
  {
    LOBYTE(v6) = 1;
LABEL_24:
    *v5 = v6 & 1;
    return v6 & 1;
  }

  v24 = *(*a1 + 136);
  v25 = *(v24 + 4);
  if (*(v25 + 16) <= v10)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = *(v25 + 4 * v10 + 32);
  if (v26 >= *(v24 + 3))
  {
    goto LABEL_31;
  }

  if (*v24)
  {
    v27 = *v24 + 120 * v26;
    v28 = *v27;
    v29 = *(v27 + 16);
    v30 = *(v27 + 48);
    v59[2] = *(v27 + 32);
    v59[3] = v30;
    v59[0] = v28;
    v59[1] = v29;
    v31 = *(v27 + 64);
    v32 = *(v27 + 80);
    v33 = *(v27 + 96);
    *(v60 + 14) = *(v27 + 110);
    v59[5] = v32;
    v60[0] = v33;
    v59[4] = v31;
    v34 = *(v27 + 80);
    v56 = *(v27 + 64);
    v57 = v34;
    v58[0] = *(v27 + 96);
    *(v58 + 14) = *(v27 + 110);
    v35 = *(v27 + 16);
    v52 = *v27;
    v53 = v35;
    v36 = *(v27 + 48);
    v54 = *(v27 + 32);
    v55 = v36;
    v37 = v24[2];
    v38 = *v24;
    v61[1] = v24[1];
    v61[2] = v37;
    v39 = v24[6];
    v41 = v24[3];
    v40 = v24[4];
    v61[5] = v24[5];
    v61[6] = v39;
    v61[3] = v41;
    v61[4] = v40;
    v61[0] = v38;
    v42 = v24[5];
    v49 = v24[4];
    v50 = v42;
    v51 = v24[6];
    v43 = v24[1];
    v45 = *v24;
    v46 = v43;
    v44 = v24[3];
    v47 = v24[2];
    v48 = v44;
    outlined init with copy of PType(v59, &v63);
    outlined init with copy of Interpreter.Storage.Types(v61, &v63);
    LOBYTE(v6) = PType.isFirstParty(within:)(&v45);
    v62[4] = v49;
    v62[5] = v50;
    v62[6] = v51;
    v62[0] = v45;
    v62[1] = v46;
    v62[2] = v47;
    v62[3] = v48;
    outlined destroy of Interpreter.Storage.Types(v62);
    v67 = v56;
    v68 = v57;
    *v69 = v58[0];
    *&v69[14] = *(v58 + 14);
    v63 = v52;
    v64 = v53;
    v65 = v54;
    v66 = v55;
    outlined destroy of PType(&v63);
    goto LABEL_24;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t Tree.owner(within:)(uint64_t a1)
{
  if (*(v1 + 144))
  {
    return 0;
  }

  result = *(v1 + 136);
  if (HIDWORD(result) >= *(a1 + 124))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(a1 + 112);
  if (!v4)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 168 * HIDWORD(result));
  if (result >= *(v5 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5 + 208 * result;
  if ((*(v6 + 208) & 1) != 0 || *(v6 + 200) != *(v1 + 104))
  {
    return 0;
  }

  return result;
}

uint64_t Tree.hide(within:_:)(uint64_t result, unint64_t a2)
{
  v7 = v2;
  v9 = result;
  v10 = *(v2 + 196);
  if (v10 == *(v2 + 192))
  {
    v2 += 184;
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v10);
  }

  v11 = *(v7 + 184);
  if (!v11)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v12 = *(v7 + 196);
  *(v11 + 8 * v12) = a2;
  if (v12 == -1)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v7 + 196) = v12 + 1;
  if (v9[48])
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v4 = *(v9 + 22);
  v13 = *v9;
  if (v13 >= *(v4 + 116))
  {
    goto LABEL_66;
  }

  v14 = *(v4 + 104);
  if (!v14)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v15 = *(*(v14 + 8 * v13) + 8);
  v3 = HIDWORD(a2);
  if (HIDWORD(a2) >= *(v15 + 124))
  {
    goto LABEL_67;
  }

  v16 = *(v15 + 112);
  if (!v16)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v5 = *(v7 + 104);
  v6 = (v16 + 168 * HIDWORD(a2));
  v2 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v2;
  if (result)
  {
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_68:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  v2 = result;
  *v6 = result;
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_12:
  if (a2 >= *(v2 + 16))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v19 = v2 + 208 * a2;
  *(v19 + 168) = v5;
  *(v19 + 176) = 0;
  if (v9[48])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v20 = *v9;
  if (v20 >= *(v4 + 116))
  {
    goto LABEL_71;
  }

  v21 = *(v4 + 104);
  if (!v21)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v22 = *(*(v21 + 8 * v20) + 8);
  if (v3 >= *(v22 + 124))
  {
    goto LABEL_72;
  }

  v23 = *(v22 + 112);
  if (v23)
  {
    v24 = *(v23 + 168 * v3);
    if (a2 < *(v24 + 16))
    {
      v25 = (v24 + 208 * a2);
      v55 = v25[12];
      v56 = v25[13];
      v57 = v25[14];
      v51 = v25[8];
      v52 = v25[9];
      v53 = v25[10];
      v54 = v25[11];
      v47 = v25[4];
      v48 = v25[5];
      v49 = v25[6];
      v50 = v25[7];
      v45 = v25[2];
      v46 = v25[3];
      v58 = v22;
      result = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v58, v17, v18, MEMORY[0x277D84FA0]);
      v2 = *(result + 16);
      v26 = *(v7 + 76);
      v27 = __OFADD__(v26, v2);
      v28 = v26 + v2;
      if (!v27)
      {
        v9 = result;
        v29 = *(v7 + 72);
        if (v28 >= v29)
        {
          v30 = v29 + v2;
          if (__OFADD__(v29, v2))
          {
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          if (v30 + 0x4000000000000000 < 0)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          specialized UnsafeArray.growToCapacity(_:)(2 * v30);
          v2 = *(v9 + 2);
        }

        if (v2)
        {
          v4 = 0;
          v5 = *(v7 + 76);
          v3 = (v5 + v2);
          v6 = ~v5;
          v31 = 2 * v5;
          do
          {
            if (v4 >= *(v9 + 2))
            {
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v32 = *&v9[8 * v4 + 32];
            v33 = *(v7 + 72);
            if (v5 == v33)
            {
              if (v33)
              {
                v34 = v31;
              }

              else
              {
                v34 = 1;
              }

              if (HIDWORD(v34))
              {
                goto LABEL_64;
              }

              v35 = *(v7 + 64);
              *(v7 + 72) = v34;
              if (v35)
              {
                result = realloc(v35, 8 * v34);
                if (!result)
                {
                  goto LABEL_81;
                }

                *(v7 + 64) = result;
              }

              else
              {
                result = swift_slowAlloc();
                *(v7 + 64) = result;
                if (!result)
                {
                  goto LABEL_80;
                }
              }
            }

            else
            {
              result = *(v7 + 64);
              if (!result)
              {
                goto LABEL_80;
              }
            }

            *(result + 8 * v5) = v32;
            if (v6 == v4)
            {
              goto LABEL_62;
            }

            ++v4;
            ++v5;
            v31 += 2;
          }

          while (v2 != v4);

          *(v7 + 76) = v3;
          v36 = v3;
          if (!v3)
          {
            goto LABEL_53;
          }

          goto LABEL_41;
        }

LABEL_52:

        v3 = *(v7 + 76);
        v36 = v3;
        if (v3)
        {
LABEL_41:
          v37 = 0;
          v38 = 0;
          v39 = 8;
          while (1)
          {
            v40 = *(v7 + 64);
            if (!v40)
            {
              break;
            }

            v41 = v40 + v39;
            v42 = *(v40 + v39 - 8);
            if (v42 != a2)
            {
              v43 = (v40 + 8 * v38);
              if (v38 < v37 || v43 >= v41)
              {
                *v43 = v42;
              }

              v27 = __OFADD__(v38++, 1);
              if (v27)
              {
                goto LABEL_63;
              }
            }

            ++v37;
            v39 += 8;
            if (v36 == v37)
            {
              if (v38 <= v36)
              {
                goto LABEL_54;
              }

              __break(1u);
              goto LABEL_52;
            }
          }

LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

LABEL_53:
        v38 = 0;
LABEL_54:
        v44 = v36 - v38 + 1;
        while (--v44)
        {
          if (!*(v7 + 64))
          {
            __break(1u);
            break;
          }
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v38))
          {
            *(v7 + 76) = v38;
            return result;
          }

          goto LABEL_76;
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t Subgraph.displayName(within:_:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(v2 + 113))
  {
    if (*(v2 + 20))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v4 = *(v2 + 16);
    if (v4 < *(result + 148))
    {
      v5 = *(result + 136);
      if (v5)
      {
        v6 = (v5 + 80 * v4);
        v48 = *v6;
        v7 = v6[1];
        v8 = v6[2];
        v9 = v6[4];
        v51 = v6[3];
        v52 = v9;
        v49 = v7;
        v50 = v8;
        v42 = v6[2];
        v44 = v6[3];
        v46 = v6[4];
        v38 = *v6;
        v40 = v6[1];
        outlined init with copy of GraphContext(&v48, &v55);
        v10 = GraphContext.displayName(within:)(v3);
        v57 = v42;
        v58 = v44;
        v59 = v46;
        v55 = v38;
        v56 = v40;
        outlined destroy of GraphContext(&v55);
        return v10;
      }

      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (*(v2 + 114))
  {
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v53 = 0xD000000000000015;
    v54 = 0x800000026C33BA40;
    if (*(v2 + 20))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v11 = *(v2 + 16);
    if (v11 < *(v3 + 148))
    {
      v12 = *(v3 + 136);
      if (v12)
      {
        v13 = (v12 + 80 * v11);
        v48 = *v13;
        v14 = v13[1];
        v15 = v13[2];
        v16 = v13[4];
        v51 = v13[3];
        v52 = v16;
        v49 = v14;
        v50 = v15;
        v43 = v13[2];
        v45 = v13[3];
        v47 = v13[4];
        v39 = *v13;
        v41 = v13[1];
        outlined init with copy of GraphContext(&v48, &v55);
        v17 = GraphContext.displayName(within:)(v3);
        v19 = v18;
        v57 = v43;
        v58 = v45;
        v59 = v47;
        v55 = v39;
        v56 = v41;
        outlined destroy of GraphContext(&v55);
        MEMORY[0x26D69CDB0](v17, v19);

        return v53;
      }

      goto LABEL_54;
    }

    goto LABEL_40;
  }

  v20 = *(v2 + 64);
  v21 = *(result + 124);
  if (v20 >= v21)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v22 = *(result + 112);
  if (!v22)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v23 = *(v22 + 168 * v20);
  if (!*(v23 + 16))
  {
    goto LABEL_41;
  }

  if ((*(v23 + 88) & 1) == 0 && a2 >= 1)
  {
    v24 = *(v23 + 80);
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    *&v48 = 0xD000000000000010;
    *(&v48 + 1) = 0x800000026C33BA20;
    if (HIDWORD(v24) >= *(v3 + 124))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v25 = *(v3 + 112);
    if (!v25)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_43;
    }

    v26 = *(v25 + 168 * HIDWORD(v24));
    if (v24 >= *(v26 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v27 = (v26 + 208 * v24);
LABEL_21:
    v64 = v27[11];
    v65 = v27[12];
    v66 = v27[13];
    v67 = v27[14];
    v60 = v27[7];
    v61 = v27[8];
    v62 = v27[9];
    v63 = v27[10];
    v56 = v27[3];
    v57 = v27[4];
    v58 = v27[5];
    v59 = v27[6];
    v55 = v27[2];
    v28 = specialized Tree.displayName(within:_:)(v3);
    MEMORY[0x26D69CDB0](v28);

    return v48;
  }

  if (*(v23 + 108) == 1)
  {
    v29 = *(v23 + 96);
    if (!v29)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v30 = *v29;
    v31 = HIDWORD(v30);
    if (HIDWORD(v30) >= v21)
    {
      goto LABEL_45;
    }

    v32 = v30;
    if ((v30 & 0x8000000000000000) != 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v33 = *(v22 + 168 * HIDWORD(v30));
    if (v30 >= *(v33 + 16))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v34 = v33 + 208 * v30;
    if (*(v34 + 148) == 1 && *(v34 + 136) != 0)
    {
      *&v55 = 0;
      *(&v55 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(23);

      *&v48 = 0xD000000000000015;
      *(&v48 + 1) = 0x800000026C33BA00;
      if (v31 >= *(v3 + 124))
      {
        goto LABEL_48;
      }

      v36 = *(v3 + 112);
      if (!v36)
      {
LABEL_57:
        __break(1u);
        return result;
      }

      v37 = *(v36 + 168 * v31);
      if (v32 >= *(v37 + 16))
      {
        goto LABEL_49;
      }

      v27 = (v37 + 208 * v32);
      goto LABEL_21;
    }
  }

  return 0xD000000000000022;
}

uint64_t Tree.treeLocationDescription(within:ctxt:)(unint64_t a1, uint64_t *a2)
{
  v141 = *MEMORY[0x277D85DE8];
  v109 = *a2;
  v107 = *(a2 + 9);
  v108 = *(a2 + 8);
  v4 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C328DC0;
  v12 = (v11 + 16);
  *(v11 + 32) = v4;
  v13 = MEMORY[0x277D84FA0];
  v120 = MEMORY[0x277D84FA0];
  v14 = 1;
  while (1)
  {
    v15 = (v11 + 24);
    v16 = *(v11 + 24 + 8 * v14);
    if (HIDWORD(v16) >= *(a1 + 124))
    {
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
LABEL_73:
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
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
    }

    v17 = *(a1 + 112);
    if (!v17)
    {
      goto LABEL_87;
    }

    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v18 = *(v17 + 168 * HIDWORD(v16));
    if (v16 >= *(v18 + 16))
    {
      goto LABEL_69;
    }

    v19 = (v18 + 208 * v16);
    v135 = v19[11];
    v136 = v19[12];
    v137 = v19[13];
    v138 = v19[14];
    v131 = v19[7];
    v132 = v19[8];
    v133 = v19[9];
    v134 = v19[10];
    v127 = v19[3];
    v128 = v19[4];
    v129 = v19[5];
    v130 = v19[6];
    v126 = v19[2];
    *&v139[0] = a1;
    v20 = specialized Tree.parent(_:within:unabstracting:)(16, v139, v5, v6, v7, v8, v9, v10);
    if (v21)
    {
      break;
    }

    v22 = v20;
    v23 = *v12;
    v24 = *v12 + 1;
    if (*v12 >= *v15 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((*v15 > 1uLL), *v12 + 1, 1, v11);
    }

    *(v11 + 16) = v24;
    v12 = (v11 + 16);
    *(v11 + 8 * v23 + 32) = v22;
    if (specialized Set.contains(_:)(v22, v120))
    {
      break;
    }

    specialized Set._Variant.insert(_:)(&v126, v22);
    v14 = *v12;
    if (!*v12)
    {
      goto LABEL_70;
    }
  }

  v118 = 0;
  v119 = 0xE000000000000000;
  v120 = v13;
  v25 = *(v11 + 16);
  if (v25)
  {
    v26 = 0;
    v112 = v11 + 32;
    v110 = v11 + 24;
    v111 = v11;
    do
    {
      v27 = v25 - 1;
      v28 = *(v112 + 8 * v27);
      *(v11 + 16) = v27;
      v31 = specialized Set.contains(_:)(v28, v120);
      v117 = a1;
      v32 = *(v11 + 16);
      if (v32)
      {
        v33 = HIDWORD(v28);
        if (HIDWORD(v28) >= *(a1 + 124))
        {
          goto LABEL_81;
        }

        v34 = *(a1 + 112);
        if (!v34)
        {
          goto LABEL_92;
        }

        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_82;
        }

        v35 = *(v34 + 168 * HIDWORD(v28));
        if (v28 >= *(v35 + 16))
        {
          goto LABEL_83;
        }

        v36 = *(v110 + 8 * v32);
        v37 = (v35 + 208 * v28);
        v135 = v37[11];
        v136 = v37[12];
        v137 = v37[13];
        v138 = v37[14];
        v131 = v37[7];
        v132 = v37[8];
        v133 = v37[9];
        v134 = v37[10];
        v127 = v37[3];
        v128 = v37[4];
        v129 = v37[5];
        v130 = v37[6];
        v126 = v37[2];
        *&v121 = a1;
        v38 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v121, v29, v30, MEMORY[0x277D84FA0]);
        v39 = *(v38 + 16);
        v40 = 32;
        while (v39)
        {
          v41 = *(v38 + v40);
          v40 += 8;
          --v39;
          if (v41 == v36)
          {

            v42 = 1;
            goto LABEL_25;
          }
        }

        v42 = 0;
      }

      else
      {
        v42 = 0;
        v33 = HIDWORD(v28);
      }

LABEL_25:
      *&v126 = 0;
      *(&v126 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(21);
      v116 = v126;
      v43._countAndFlagsBits = 32;
      v43._object = 0xE100000000000000;
      countAndFlagsBits = String.init(repeating:count:)(v43, v26)._countAndFlagsBits;
      MEMORY[0x26D69CDB0](countAndFlagsBits);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v33 >= *(a1 + 124))
      {
        goto LABEL_71;
      }

      v45 = *(a1 + 112);
      if (!v45)
      {
        goto LABEL_88;
      }

      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_72;
      }

      v46 = *(v45 + 168 * v33);
      if (v28 >= *(v46 + 16))
      {
        goto LABEL_73;
      }

      v47 = *(v46 + 208 * v28 + 136);
      v48 = TreeRef.debugDescription.getter();
      MEMORY[0x26D69CDB0](v48);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v33 >= *(a1 + 124))
      {
        goto LABEL_74;
      }

      v49 = *(a1 + 112);
      if (!v49)
      {
        goto LABEL_89;
      }

      v50 = *(v49 + 168 * v33);
      if (v28 >= *(v50 + 16))
      {
        goto LABEL_75;
      }

      v51 = (v50 + 208 * v28);
      v135 = v51[11];
      v136 = v51[12];
      v137 = v51[13];
      v138 = v51[14];
      v131 = v51[7];
      v132 = v51[8];
      v133 = v51[9];
      v134 = v51[10];
      v127 = v51[3];
      v128 = v51[4];
      v129 = v51[5];
      v130 = v51[6];
      v126 = v51[2];
      v52 = specialized Tree.displayName(within:_:)(a1);
      MEMORY[0x26D69CDB0](v52);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v33 >= *(a1 + 124))
      {
        goto LABEL_76;
      }

      v53 = *(a1 + 112);
      if (!v53)
      {
        goto LABEL_90;
      }

      v54 = *(v53 + 168 * v33);
      if (v28 >= *(v54 + 16))
      {
        goto LABEL_77;
      }

      v113 = v31;
      v114 = v28;
      v115 = v28;
      if (*(v54 + 208 * v28 + 124))
      {
        v55 = 1702195828;
      }

      else
      {
        v55 = 0x65736C6166;
      }

      if (*(v54 + 208 * v28 + 124))
      {
        v56 = 0xE400000000000000;
      }

      else
      {
        v56 = 0xE500000000000000;
      }

      MEMORY[0x26D69CDB0](v55, v56);

      MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
      if (v42)
      {
        v57 = 1702195828;
      }

      else
      {
        v57 = 0x65736C6166;
      }

      if (v42)
      {
        v58 = 0xE400000000000000;
      }

      else
      {
        v58 = 0xE500000000000000;
      }

      MEMORY[0x26D69CDB0](v57, v58);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v33 >= *(a1 + 124))
      {
        goto LABEL_78;
      }

      v65 = *(a1 + 112);
      if (!v65)
      {
        goto LABEL_91;
      }

      v66 = *(v65 + 168 * v33);
      v67 = v28;
      v68 = v31;
      if (v115 >= *(v66 + 16))
      {
        goto LABEL_79;
      }

      v69 = (v66 + 208 * v115);
      v135 = v69[11];
      v136 = v69[12];
      v137 = v69[13];
      v138 = v69[14];
      v131 = v69[7];
      v132 = v69[8];
      v133 = v69[9];
      v134 = v69[10];
      v127 = v69[3];
      v128 = v69[4];
      v129 = v69[5];
      v130 = v69[6];
      v126 = v69[2];
      *&v126 = specialized Tree.parent(_:within:unabstracting:)(16, &v117, v59, v60, v61, v62, v63, v64);
      BYTE8(v126) = v70 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (v31)
      {
        v71 = 0x21454C4359435B20;
      }

      else
      {
        v71 = 0;
      }

      if (v31)
      {
        v72 = 0xE90000000000005DLL;
      }

      else
      {
        v72 = 0xE000000000000000;
      }

      MEMORY[0x26D69CDB0](v71, v72);

      MEMORY[0x26D69CDB0](v116, *(&v116 + 1));

      if (!v114)
      {
        v73 = v117;
        if (v33 >= *(v117 + 124))
        {
          goto LABEL_84;
        }

        v74 = *(v117 + 112);
        if (!v74)
        {
          goto LABEL_93;
        }

        v75 = (v74 + 168 * v33);
        v76 = *v75;
        v77 = v75[2];
        v139[1] = v75[1];
        v139[2] = v77;
        v139[0] = v76;
        v78 = v75[3];
        v79 = v75[4];
        v80 = v75[6];
        v139[5] = v75[5];
        v139[6] = v80;
        v139[3] = v78;
        v139[4] = v79;
        v81 = v75[7];
        v82 = v75[8];
        v83 = v75[9];
        v140 = *(v75 + 20);
        v139[8] = v82;
        v139[9] = v83;
        v139[7] = v81;
        v121 = xmmword_26C32DAD0;
        v122 = 1;
        v123 = 0;
        v124 = v109;
        LOBYTE(v125) = v108;
        HIBYTE(v125) = v107;
        outlined init with copy of Subgraph(v139, &v126);
        v84 = Subgraph.describe(state:)(&v121);
        v86 = v85;
        outlined destroy of Subgraph(v139);
        *&v126 = v84;
        *(&v126 + 1) = v86;
        *&v121 = 10;
        *(&v121 + 1) = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v87 = StringProtocol.components<A>(separatedBy:)();

        *&v121 = v87;
        *&v126 = 10;
        *(&v126 + 1) = 0xE100000000000000;
        v88._countAndFlagsBits = 32;
        v88._object = 0xE100000000000000;
        v89 = String.init(repeating:count:)(v88, v26)._countAndFlagsBits;
        MEMORY[0x26D69CDB0](v89);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v90 = BidirectionalCollection<>.joined(separator:)();
        v92 = v91;

        MEMORY[0x26D69CDB0](v90, v92);

        if (v33 >= *(v73 + 124))
        {
          goto LABEL_85;
        }

        v93 = *(v73 + 112);
        if (!v93)
        {
          goto LABEL_94;
        }

        v94 = *(v93 + 168 * v33);
        if (v115 >= *(v94 + 16))
        {
          goto LABEL_86;
        }

        v95 = (v94 + 208 * v115);
        v135 = v95[11];
        v136 = v95[12];
        v137 = v95[13];
        v138 = v95[14];
        v131 = v95[7];
        v132 = v95[8];
        v133 = v95[9];
        v134 = v95[10];
        v127 = v95[3];
        v128 = v95[4];
        v129 = v95[5];
        v130 = v95[6];
        v126 = v95[2];
        v96 = *v73;
        v121 = xmmword_26C32DAD0;
        v122 = 1;
        v123 = 0;
        v124 = v96;
        v125 = 256;
        *&v126 = Tree.describe(state:)(&v121);
        *(&v126 + 1) = v97;
        *&v121 = 10;
        *(&v121 + 1) = 0xE100000000000000;
        v98 = StringProtocol.components<A>(separatedBy:)();

        *&v121 = v98;
        *&v126 = 10;
        *(&v126 + 1) = 0xE100000000000000;
        v99._countAndFlagsBits = 32;
        v99._object = 0xE100000000000000;
        v100 = String.init(repeating:count:)(v99, v26)._countAndFlagsBits;
        MEMORY[0x26D69CDB0](v100);

        v101 = BidirectionalCollection<>.joined(separator:)();
        v103 = v102;

        MEMORY[0x26D69CDB0](v101, v103);

        v67 = v114;
        v68 = v113;
      }

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      if (v68)
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v126, v67);
      v104 = __OFADD__(v26++, 1);
      v11 = v111;
      if (v104)
      {
        goto LABEL_80;
      }

      v25 = *(v111 + 16);
    }

    while (v25);
  }

  result = v118;
  v106 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Tree.treeLocationRoot(within:ith:)(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  v13 = (inited + 16);
  *(inited + 32) = v5;
  v14 = HIDWORD(v5);
  if (HIDWORD(v5) >= *(a1 + 124))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = inited;
  while (1)
  {
    v16 = *(a1 + 112);
    if (!v16)
    {
      goto LABEL_20;
    }

    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v17 = *(v16 + 168 * v14);
    if (v5 >= *(v17 + 16))
    {
      goto LABEL_17;
    }

    v18 = (v17 + 208 * v5);
    v19 = v18[13];
    v46 = v18[12];
    v47 = v19;
    v48 = v18[14];
    v20 = v18[9];
    v42 = v18[8];
    v43 = v20;
    v21 = v18[11];
    v44 = v18[10];
    v45 = v21;
    v22 = v18[5];
    v38 = v18[4];
    v39 = v22;
    v23 = v18[7];
    v40 = v18[6];
    v41 = v23;
    v24 = v18[3];
    v36 = v18[2];
    v37 = v24;
    v35 = a1;
    v25 = specialized Tree.parent(_:within:unabstracting:)(16, &v35, v7, v8, v9, v10, v11, v12);
    v26 = *v13;
    if (v27)
    {
      break;
    }

    v28 = *(v15 + 3);
    v29 = v26 + 1;
    if (v26 >= v28 >> 1)
    {
      v30 = v25;
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v26 + 1, 1, v15);
      v25 = v30;
    }

    *(v15 + 2) = v29;
    v13 = (v15 + 16);
    *&v15[8 * v26 + 32] = v25;
    v5 = *&v15[8 * v29 + 24];
    v14 = HIDWORD(v5);
    if (HIDWORD(v5) >= *(a1 + 124))
    {
      goto LABEL_15;
    }
  }

  if (v26)
  {
    v31 = v26 - 1 - a2;
    if (!__OFSUB__(v26 - 1, a2))
    {
      if (v31 < v26)
      {
        v32 = *&v15[8 * v31 + 32];

        v33 = *MEMORY[0x277D85DE8];
        return v32;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Tree.init(abstraction:_:id:within:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, _OWORD *a6@<X8>)
{
  *(&v45 + 1) = 0;
  v12 = MEMORY[0x277D84F90];
  *&v47 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(&v47 + 1) = v13;
  LODWORD(v48) = 0;
  BYTE4(v48) = 1;
  WORD6(v48) = 0;
  v14 = swift_slowAlloc();
  *v14 = 2;
  *&v49 = v14;
  BYTE5(v50) = 5;
  *(&v50 + 1) = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9TreeValueV_SayAHGTt0g5Tf4g_n(v12);
  v51 = v15;
  LOBYTE(v52) = 1;
  *(&v54 + 1) = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v12);
  v55 = v16;
  getter of source #1 in Tree.init(abstraction:_:id:within:)(a5, a1, v39);
  DWORD2(v48) = v40;
  *(&v52 + 1) = a2;
  *&v53 = a3;
  result = getter of source #1 in Tree.init(abstraction:_:id:within:)(a5, a1, v39);
  if (a5[48])
  {
    goto LABEL_17;
  }

  v24 = *(a5 + 22);
  v25 = *a5;
  if (v25 >= *(v24 + 116))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = *(v24 + 104);
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *&v46 = specialized Tree.parent(_:within:unabstracting:)(4, *(v26 + 8 * v25) + 8, v18, v19, v20, v21, v22, v23);
  BYTE8(v46) = v27 & 1;
  result = getter of source #1 in Tree.init(abstraction:_:id:within:)(a5, a1, v39);
  LODWORD(v50) = v41;
  BYTE4(v50) = v42;
  *(&v53 + 1) = a1;
  LOBYTE(v54) = 0;
  *(&v49 + 1) = a4;
  *&v45 = 0;
  *&v44 = 0;
  v43 = 0uLL;
  if (a5[48])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = *a5;
  if (v28 >= *(v24 + 116))
  {
    goto LABEL_13;
  }

  v29 = *(v24 + 104);
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = *(*(v29 + 8 * v28) + 8);
  if (HIDWORD(a1) >= *(v30 + 124))
  {
    goto LABEL_14;
  }

  v31 = *(v30 + 112);
  if (v31)
  {
    if ((a1 & 0x80000000) == 0)
    {
      v32 = *(v31 + 168 * HIDWORD(a1));
      if (a1 < *(v32 + 16))
      {
        *(&v44 + 1) = *(v32 + 208 * a1 + 56);
        Tree.Position.init(matching:within:)(&v43, *(v24 + 136), v39);
        BYTE5(v50) = v39[0];
        result = Tree.hide(within:_:)(a5, a1);
        v33 = v54;
        a6[10] = v53;
        a6[11] = v33;
        a6[12] = v55;
        v34 = v50;
        a6[6] = v49;
        a6[7] = v34;
        v35 = v52;
        a6[8] = v51;
        a6[9] = v35;
        v36 = v46;
        a6[2] = v45;
        a6[3] = v36;
        v37 = v48;
        a6[4] = v47;
        a6[5] = v37;
        v38 = v44;
        *a6 = v43;
        a6[1] = v38;
        return result;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

unsigned __int8 *getter of source #1 in Tree.init(abstraction:_:id:within:)@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (result[48])
  {
    goto LABEL_13;
  }

  v3 = *(result + 22);
  v4 = *result;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  if (HIDWORD(a2) >= *(v6 + 124))
  {
    goto LABEL_10;
  }

  v7 = *(v6 + 112);
  if (v7)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v8 = *(v7 + 168 * HIDWORD(a2));
      if (a2 < *(v8 + 16))
      {
        v9 = (v8 + 208 * a2);
        v10 = v9[13];
        a3[10] = v9[12];
        a3[11] = v10;
        a3[12] = v9[14];
        v11 = v9[9];
        a3[6] = v9[8];
        a3[7] = v11;
        v12 = v9[11];
        a3[8] = v9[10];
        a3[9] = v12;
        v13 = v9[5];
        a3[2] = v9[4];
        a3[3] = v13;
        v14 = v9[7];
        a3[4] = v9[6];
        a3[5] = v14;
        v15 = v9[3];
        *a3 = v9[2];
        a3[1] = v15;
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void Tree.init(_:id:within:)(unsigned int a1@<W1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v66 = 1;
  v10 = MEMORY[0x277D84F90];
  v33 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = v11;
  v65 = 1;
  v13 = swift_slowAlloc();
  *v13 = 2;
  v64 = 1;
  v35 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9TreeValueV_SayAHGTt0g5Tf4g_n(v10);
  v36 = v14;
  v63 = 1;
  v62 = 1;
  v15 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v10);
  v17 = v16;
  if (a1 + 1 >= 2)
  {
    v20 = *(*(a4 + 176) + 136);
    v21 = v20[4];
    if (a1 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = *(v21 + 4 * a1 + 32);
      if (v22 < *(v20 + 3))
      {
        v23 = *v20;
        if (v23)
        {
          v19 = a4;
          v18 = *(v23 + 120 * v22 + 40);
          goto LABEL_7;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = 0;
  a1 = -1;
  v19 = a4;
LABEL_7:
  v32 = v15;
  v24 = v33;
  if (a2)
  {
    v25 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a2, v19);
    v19 = a4;
    v26 = v25;
    v64 = 0;
  }

  else
  {
    v26 = 0;
  }

  v34 = v66;
  v30 = v64;
  v31 = v65;
  v28 = v63;
  v29 = v62;
  memset(v37, 0, 24);
  v37[3] = v18;
  memset(&v37[4], 0, 24);
  v38 = v66;
  v39 = v24;
  v40 = v12;
  v41 = 0;
  v42 = v65;
  v43 = a1;
  v44 = 0;
  v45 = v13;
  v46 = a3;
  v47 = v26;
  v48 = v64;
  v49 = 5;
  v50 = v35;
  v51 = v36;
  v52 = 0;
  v53 = v63;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = v62;
  v58 = v32;
  v59 = v17;
  v60 = 0;
  Tree.Position.init(matching:within:)(v37, *(*(v19 + 176) + 136), &v61);
  v27 = v61;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = v18;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  *(a5 + 56) = v34;
  *(a5 + 64) = v24;
  *(a5 + 72) = v12;
  *(a5 + 76) = HIDWORD(v12);
  *(a5 + 84) = v31;
  *(a5 + 88) = a1;
  *(a5 + 92) = 0;
  *(a5 + 96) = v13;
  *(a5 + 104) = a3;
  *(a5 + 112) = v26;
  *(a5 + 116) = v30;
  *(a5 + 117) = v27;
  *(a5 + 120) = v35;
  *(a5 + 128) = v36;
  *(a5 + 136) = 0;
  *(a5 + 144) = v28;
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  *(a5 + 176) = v29;
  *(a5 + 184) = v32;
  *(a5 + 192) = v17;
  *(a5 + 200) = 0;
}

Swift::Void __swiftcall Tree.copy()()
{
  v1 = **(v0 + 96);
  if (*(v0 + 120))
  {
    v2 = *(v0 + 132);
    v3 = 5 * *(v0 + 128);
    *(v0 + 120) = swift_slowAlloc();
    swift_arrayInitWithCopy();
  }

  v4 = *(v0 + 184);
  if (v4)
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 196);
    v7 = swift_slowAlloc();
    *(v0 + 184) = v7;
    memcpy(v7, v4, 8 * v6);
  }

  v8 = *(v0 + 64);
  if (v8)
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 76);
    v11 = swift_slowAlloc();
    *(v0 + 64) = v11;
    memcpy(v11, v8, 8 * v10);
  }

  v14 = 0;
  v15 = 1;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = 0;
  v20 = 513;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA4TreeV5CacheV_Tt0B5(&v14);
  *(v0 + 200) = v12;
  v13 = swift_slowAlloc();
  *v13 = v1;
  *(v0 + 96) = v13;
}

Swift::Void __swiftcall Tree.deallocate()()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 132);
    v3 = *(v0 + 120);
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 120) = 0;
  }

  v4 = *(v0 + 184);
  if (v4)
  {
    MEMORY[0x26D69EAB0](v4, -1, -1);
    *(v0 + 184) = 0;
  }

  v5 = *(v0 + 64);
  if (v5)
  {
    MEMORY[0x26D69EAB0](v5, -1, -1);
    *(v0 + 64) = 0;
  }

  v6 = *(v0 + 200);
  if (v6)
  {
    MEMORY[0x26D69EAB0](v6, -1, -1);
  }

  v7 = *(v0 + 96);

  JUMPOUT(0x26D69EAB0);
}

uint64_t TreeValue.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TreeValue.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TreeValue.type.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t TreeValue.init(node:within:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(v6, a3);
  if (v8)
  {
    v72 = v12;
    v69 = a2;
    v70 = a4;
    v16 = *(a3 + 116);
    v17 = *(a3 + 176);
    v18 = (v17 + 40);
    v19 = *(v17 + 56);
    v91[0] = *(v17 + 40);
    v91[1] = v19;
    v92[0] = *(v17 + 72);
    v20 = (v17 + 72);
    v21 = (v17 + 84);
    v22 = (v17 + 88);
    v23 = 8 * v16;
    v71 = v17;
    *(v92 + 9) = *(v17 + 81);
    v24 = (v17 + 40);
    v25 = (v17 + 72);
    v26 = v21;
    v27 = v22;
    v68 = result;
    while (1)
    {
      v28 = *v27;
      if (v16 < *v26)
      {
        v29 = (*v25 + v23);
        if ((v29[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v28)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v16, 0, v91);
      }

      v25 = (v28 + 32);
      v26 = (v28 + 44);
      v27 = (v28 + 48);
      v24 = v28;
    }

    v30 = *v24;
    if (!v30)
    {
      goto LABEL_67;
    }

    result = v30 + 24 * *v29;
    v31 = *result;
    v32 = *(*result + 196);
    v33 = 0uLL;
    if (v32)
    {
      v67 = v6;
      v34 = *(v31 + 184);
      if (!v34)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v35 = v32 - 1;
      if (v8 <= *(v34 + 32 * (v32 - 1)))
      {
        v41 = v32 >> 1;
        v42 = *(v34 + 32 * (v32 >> 1));
        if (v32 != 1 && v42 != v8)
        {
          v44 = *(v31 + 192) | (v32 << 32);
          v66 = *(v31 + 184);
          if (v8 >= v42)
          {
            v46 = v41 + 1;
            v45 = v8;
            v41 = v32;
          }

          else
          {
            v45 = v8;
            v46 = 0;
          }

          result = specialized Collection<>.binarySearch(for:)(v45, v46, v41, v34, v44);
          if (v49)
          {
            v41 = v32 - 1;
          }

          else
          {
            v41 = result;
          }

          v33 = 0uLL;
          v34 = v66;
        }

        v50 = (v34 + 32 * v41);
        v35 = v41;
        while (v41 < v32)
        {
          if (*v50 <= v8)
          {
            goto LABEL_13;
          }

          if (!v35)
          {
            goto LABEL_41;
          }

          --v35;
          v50 -= 8;
          if (v35 > v32)
          {
            __break(1u);
LABEL_41:
            v39 = 0;
            v40 = 0;
            goto LABEL_42;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_13:
        v36 = v18[1];
        v89[0] = *v18;
        v89[1] = v36;
        v90[0] = v18[2];
        *(v90 + 9) = *(v18 + 41);
        while (1)
        {
          v37 = *v22;
          if (v16 < *v21)
          {
            v38 = (*v20 + v23);
            if ((v38[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v37)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(v16, 0, v89);
          }

          v20 = (v37 + 32);
          v21 = (v37 + 44);
          v22 = (v37 + 48);
          v18 = v37;
        }

        if (!*v18)
        {
          goto LABEL_69;
        }

        result = *v18 + 24 * *v38;
        if (v35 < *(*result + 196))
        {
          v47 = *(*result + 184);
          if (!v47)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            return result;
          }

          v48 = (v47 + 32 * v35);
          v39 = *v48;
          v40 = *(v48 + 1);
          v33 = *(v48 + 1);
LABEL_42:
          v6 = v67;
LABEL_43:
          v80 = 0;
          *&v86 = v16 | 0x200000000;
          *(&v86 + 1) = v6 & 0xFFFFFFFF00000000;
          *&v87 = v39;
          *(&v87 + 1) = v40;
          v88[0] = v33;
          LOBYTE(v88[1]) = 1;
          Interpreter.Iterator.init(_:kind:onEvent:)(v71, &v86, 0, 0, v75);
          Interpreter.Iterator.read()();
          v86 = v76;
          v87 = v77;
          v88[0] = *v78;
          *(v88 + 9) = *&v78[9];
          v51 = v76;
          v52 = *v78;
          result = v79;
          v53 = *&v78[16];
          if (v79 >= *&v78[12])
          {
            goto LABEL_45;
          }

          while (1)
          {
            v54 = (v52 + 8 * v79);
            if ((v54[1] & 1) == 0)
            {
              break;
            }

            do
            {
LABEL_45:
              if (!v53)
              {
                specialized error #1 <A>() in EvolutionTable.address(of:in:)(v79, 0, &v86);
              }

              v51 = *v53;
              v52 = v53[4];
              v55 = *(v53 + 11);
              v53 = v53[6];
            }

            while (v79 >= v55);
          }

          if (!v51)
          {
            goto LABEL_68;
          }

          result = v51 + 24 * *v54;
          v56 = *result;
          v57 = *(*result + 96);
          if (v57 != 2)
          {
            v58 = *(v56 + 104);
            v59 = *(v56 + 88);
            v81 = *(v56 + 72);
            v82 = v59;
            v83 = v57 & 0x101;
            v84 = HIDWORD(v57);
            v85 = v58 & 1;
            result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
            if ((v61 & 1) == 0)
            {
              v62 = v60 - result;
              if (!result)
              {
                v62 = 0;
              }

              v73 = result;
              v74 = v62;
              static String.Encoding.utf8.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
              lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
              result = String.init<A>(bytes:encoding:)();
              if (v63)
              {
                v14 = result;
                v15 = v63;
                specialized EvolutionTable.deallocate()();
                a2 = v69;
                a4 = v70;
                result = v68;
                goto LABEL_56;
              }

              goto LABEL_64;
            }

LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v39 = 0;
    v40 = 0;
    goto LABEL_43;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
LABEL_56:
  *a4 = result;
  if (a2 == -1)
  {
    v64 = 0;
  }

  else
  {
    v64 = a2;
  }

  *(a4 + 8) = v14;
  *(a4 + 16) = v15;
  *(a4 + 24) = v64;
  *(a4 + 28) = a2 == -1;
  *(a4 + 32) = HIDWORD(a2);
  return result;
}

char *TreeValue.Position.names()(int a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SwiftUITracingSupport9TreeValueV8PositionVTt0g5Tf4g_n(&outlined read-only object #0 of TreeValue.Position.names());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SwiftUITracingSupport9TreeValueV8PositionVtMd, &_sSS_21SwiftUITracingSupport9TreeValueV8PositionVtMR);
  swift_arrayDestroy();
  result = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = v11 | (v4 << 6);
      if ((*(*(result + 7) + 4 * v12) & ~a1) == 0)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v14 = result;
    v15 = (*(result + 6) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v18 = *(v10 + 2);
    v19 = *(v10 + 3);
    v20 = v18 + 1;
    if (v18 >= v19 >> 1)
    {
      v25 = v18 + 1;
      v22 = v10;
      v23 = *(v10 + 2);
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1, v22);
      v18 = v23;
      v20 = v25;
      v10 = v24;
    }

    result = v14;
    *(v10 + 2) = v20;
    v21 = &v10[16 * v18];
    *(v21 + 4) = v17;
    *(v21 + 5) = v16;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return v10;
    }

    v8 = *(v5 + 8 * v13);
    ++v4;
    if (v8)
    {
      v4 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t TreeValue.Position.describe(state:)(uint64_t a1, int a2)
{
  TreeValue.Position.names()(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;

  MEMORY[0x26D69CDB0](v2, v4);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return 91;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance TreeValue.Position()
{
  TreeValue.Position.names()(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v1 = BidirectionalCollection<>.joined(separator:)();
  v3 = v2;

  MEMORY[0x26D69CDB0](v1, v3);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return 91;
}

uint64_t TreeValue.describe(state:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[3];
  v4 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *v1;
  v9 = v1[6];
  v10 = *(v1 + 28);
  v20 = *(a1 + 16);
  v21 = v1[9];
  _StringGuts.grow(_:)(21);

  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = specialized InspectionState.wrapDescription<A>(_:)(v8);
    MEMORY[0x26D69CDB0](v11);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if (v9)
    {
      v12 = v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
LABEL_12:
      MEMORY[0x26D69CDB0](v13, v14);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v18 = specialized InspectionState.wrapDescription<A>(_:)(v21);
      MEMORY[0x26D69CDB0](v18);

      MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
      return 0x6C61566565725428;
    }

    if (!v7)
    {
      v15 = *(v4 + 176);
LABEL_11:
      v16 = *(v15 + 136);
      v26 = v16[4];
      v27 = v16[5];
      v28 = v16[6];
      v22 = *v16;
      v23 = v16[1];
      v24 = v16[2];
      v25 = v16[3];
      v13 = Interpreter.Storage.Types.subscript.getter(v9);
      v14 = v17;
      goto LABEL_12;
    }

    if (v7 == 1)
    {
      v15 = v4;
      goto LABEL_11;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Defaulted.describe(state:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v9, v13, v4);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  if (EnumCaseMultiPayload == 1)
  {
    v16 = 29992;
  }

  else
  {
    v16 = 25640;
  }

  MEMORY[0x26D69CDB0](v16 | 0x200000u, 0xE300000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  v17 = v19[0];
  (*(v5 + 8))(v9, v4);
  return v17;
}

uint64_t Subforest2.Item.init(open:discreet:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 2) = result;
  *(a3 + 3) = 0;
  *(a3 + 4) = a2;
  *(a3 + 5) = 0;
  return result;
}

_BYTE *Subforest2.Item.init(prior:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  *a2 = 0;
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  *(a2 + 4) = v4;
  *(a2 + 5) = v5;
  return result;
}

uint64_t Subforest2.Item.merge(other:asSelf:)(_BYTE *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[4];
    v5 = a1[3];
    v6 = a1[2];
    v7 = a1[1];
    *v2 = *a1;
    v2[1] = v7;
    v8 = v2[2];
    v9 = v2[3];
    if (!v9)
    {
      v8 = v6;
    }

    if (!v5)
    {
      v6 = v8;
    }

    v2[2] = v6;
    v2[3] = (v5 | v9) & 1;
    v10 = v2[4];
    v11 = v2[5];
    if (!v11)
    {
      v10 = v4;
    }

    if (!v3)
    {
      v4 = v10;
    }

    v2[4] = v4;
    v2[5] = (v3 | v11) & 1;
  }

  return 1;
}

uint64_t Subforest2.Item.describe(state:)(__int128 *a1)
{
  v10 = *a1;
  *v11 = a1[1];
  *&v11[10] = *(a1 + 26);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[4];
  v5 = v1[5];
  v6 = specialized InspectionState.describe<A>(_:_:)(1852141679, 0xE400000000000000, v1[2] | (v1[3] << 8));
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(0x7365686374616DLL, 0xE700000000000000, v2 | (v3 << 8));
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = specialized InspectionState.describe<A>(_:_:)(0x7465657263736964, 0xE800000000000000, v4 | (v5 << 8));
  MEMORY[0x26D69CDB0](v8);

  return 40;
}

_BYTE *protocol witness for UnsafeTree_Stateful.init(prior:) in conformance Subforest2.Item@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  *a2 = 0;
  *(a2 + 2) = v2;
  *(a2 + 3) = v3;
  *(a2 + 4) = v4;
  *(a2 + 5) = v5;
  return result;
}

uint64_t protocol witness for Mergable.merge(other:asSelf:) in conformance Subforest2.Item(_BYTE *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[4];
    v5 = a1[3];
    v6 = a1[2];
    v7 = a1[1];
    *v2 = *a1;
    v2[1] = v7;
    v8 = v2[2];
    v9 = v2[3];
    if (!v9)
    {
      v8 = v6;
    }

    if (!v5)
    {
      v6 = v8;
    }

    v2[2] = v6;
    v2[3] = (v5 | v9) & 1;
    v10 = v2[4];
    v11 = v2[5];
    if (!v11)
    {
      v10 = v4;
    }

    if (!v3)
    {
      v4 = v10;
    }

    v2[4] = v4;
    v2[5] = (v3 | v11) & 1;
  }

  return 1;
}

uint64_t Subforest2.init(within:old:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v139[0] = a3;
  v162 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v162 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v162);
  v161 = v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for DispatchQoS();
  v8 = *(v160 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v160);
  v159 = v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  BYTE8(v186[1]) = 0;
  v142 = v13;
  v143 = v11;
  v140 = v15;
  v141 = v14;
  if (!v12)
  {
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v146 = v12;
  v203[0] = v12;
  v203[1] = v11;
  v203[2] = v13;
  v203[3] = v14;
  v203[4] = v15;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzAA0dE9_StatefulR_rlE3oldACyxq_GAGSg_tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0g5(v203, v187);
  v150 = *&v187[0];
  *&v186[1] = v188;
  v16 = *(a1 + 96);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v153 = v19 & *(v16 + 64);
  v185 = v187[0];
  v186[0] = v187[1];
  v147 = v16;

  result = swift_beginAccess();
  v21 = 0;
  v22 = (v18 + 63) >> 6;
  v158 = (v5 + 8);
  v156 = &v171;
  v157 = (v8 + 8);
  v139[1] = &v167;
  v164 = a1;
  v144 = v22;
  v145 = v17;
  while (2)
  {
    v23 = v153;
    if (!v153)
    {
      while (1)
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v24 >= v22)
        {

          v166 = v185;
          v167 = v186[0];
          v168 = *&v186[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v134 = swift_allocObject();
          *(v134 + 16) = xmmword_26C328DC0;
          v170 = xmmword_26C32DAD0;
          LOBYTE(v171) = 1;
          *(&v171 + 1) = 0;
          *&v172 = 0;
          WORD4(v172) = 512;
          v135 = specialized UnsafeTree.describe(state:)(&v170);
          *(v134 + 56) = MEMORY[0x277D837D0];
          *(v134 + 32) = v135;
          *(v134 + 40) = v136;
          print(_:separator:terminator:)();

          v137 = v186[0];
          v138 = v139[0];
          *v139[0] = v185;
          *(v138 + 16) = v137;
          *(v138 + 25) = *(v186 + 9);
          return result;
        }

        v23 = *(v17 + 8 * v24);
        ++v21;
        if (v23)
        {
          v21 = v24;
          goto LABEL_12;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_12:
    v153 = v23;
    v25 = *(*(v147 + 48) + ((v21 << 8) | (4 * __clz(__rbit64(v23)))));
    v183 = 1;
    v184 = 1;
    v26 = *(a1 + 24);
    if (!*(v26 + 116))
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v149 = v21;
    v27 = *(v26 + 104);
    if (!v27)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v28 = *v27;
    if ((*(*v27 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v28 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v29 = static OS_dispatch_queue.main.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      *&v172 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v172 + 1) = v30;
      *&v170 = MEMORY[0x277D85DD0];
      *(&v170 + 1) = 1107296256;
      *&v171 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v171 + 1) = &block_descriptor_965;
      v31 = _Block_copy(&v170);

      v32 = v159;
      static DispatchQoS.unspecified.getter();
      *&v170 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v34 = v161;
      v33 = v162;
      a1 = v164;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v32, v34, v31);
      _Block_release(v31);

      (*v158)(v34, v33);
      result = (*v157)(v32, v160);
    }

    v35 = *(v28 + 8);
    if (v25 >= *(v35 + 44))
    {
      goto LABEL_101;
    }

    v36 = *(v35 + 32);
    if (!v36)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v37 = (v36 + (v25 << 7));
    v38 = v37[5];
    v199 = v37[4];
    v200 = v38;
    v39 = v37[7];
    v201 = v37[6];
    v202 = v39;
    v40 = v37[1];
    v195 = *v37;
    v196 = v40;
    v41 = v37[3];
    v197 = v37[2];
    v198 = v41;
    v42 = *(a1 + 24);
    if (!*(v42 + 116))
    {
      goto LABEL_102;
    }

    v43 = *(v42 + 104);
    if (!v43)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v44 = *v43;
    if ((*(*v43 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v44 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v45 = static OS_dispatch_queue.main.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      *&v172 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v172 + 1) = v46;
      *&v170 = MEMORY[0x277D85DD0];
      *(&v170 + 1) = 1107296256;
      *&v171 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v171 + 1) = &block_descriptor_972;
      v47 = _Block_copy(&v170);

      v48 = v159;
      static DispatchQoS.unspecified.getter();
      *&v170 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v50 = v161;
      v49 = v162;
      a1 = v164;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v48, v50, v47);
      _Block_release(v47);

      (*v158)(v50, v49);
      (*v157)(v48, v160);
    }

    result = Event.hasTree(within:)(*(v44 + 8));
    v54 = v51;
    v151 = v51;
    if (v51)
    {
      v55 = 1;
      v148 = 1;
LABEL_37:
      v152 = v55;
      v153 &= v153 - 1;
      Changelist.subscript.getter(v55, v54 & 1, v189);
      v81 = v190;
      v193 = v190;
      v82 = 1 << *(v190 + 32);
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v84 = v83 & *(v190 + 64);
      v85 = (v82 + 63) >> 6;

      v86 = 0;
      v163 = MEMORY[0x277D84F90];
LABEL_41:
      v87 = v189[2];
      while (v84)
      {
LABEL_48:
        v89 = __clz(__rbit64(v84)) | (v86 << 6);
        v90 = *(*(v81 + 48) + 4 * v89);
        v91 = *(*(v81 + 56) + 8 * v89);

        result = swift_beginAccess();
        v92 = *(v87 + 48);
        v93 = __OFSUB__(0, v92);
        v94 = -v92;
        if (v93)
        {
          goto LABEL_99;
        }

        v84 &= v84 - 1;
        if (v91 < v94)
        {
        }

        else
        {
          swift_beginAccess();
          v95 = *(v87 + 56);

          v96 = v95 < v91;
          a1 = v164;
          if (!v96)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v163 + 2) + 1, 1, v163);
              v163 = result;
            }

            v98 = *(v163 + 2);
            v97 = *(v163 + 3);
            if (v98 >= v97 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v163);
              v163 = result;
            }

            v99 = v163;
            *(v163 + 2) = v98 + 1;
            *&v99[4 * v98 + 32] = v90;
            goto LABEL_41;
          }
        }
      }

      while (1)
      {
        v88 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          __break(1u);
          goto LABEL_94;
        }

        if (v88 >= v85)
        {
          break;
        }

        v84 = *(v81 + 64 + 8 * v88);
        ++v86;
        if (v84)
        {
          v86 = v88;
          goto LABEL_48;
        }
      }

      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v193, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
      v192 = v191;
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v192, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);

      v100 = v163;
      v101 = *(v163 + 2);
      if (v101)
      {
        v102 = 0;
        v103 = 0;
        v104 = v163 + 32;
        v154 = v163 + 32;
        v155 = v101;
        while (v102 < *(v100 + 2))
        {
          if (v103)
          {
            v103 = 1;
          }

          else
          {
            v105 = *(a1 + 24);
            if (!*(v105 + 116))
            {
              goto LABEL_96;
            }

            v106 = *(v105 + 104);
            if (!v106)
            {
              goto LABEL_110;
            }

            v107 = *&v104[4 * v102];
            v108 = *v106;
            if ((*(*v106 + 4) & 1) == 0)
            {
              os_unfair_lock_lock_with_options();
              *(v108 + 4) = 1;
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
              v165 = static OS_dispatch_queue.main.getter();
              v109 = swift_allocObject();
              *(v109 + 16) = v108;
              *&v172 = closure #1 in Atomic.subscript.readspecialized partial apply;
              *(&v172 + 1) = v109;
              *&v170 = MEMORY[0x277D85DD0];
              *(&v170 + 1) = 1107296256;
              *&v171 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              *(&v171 + 1) = &block_descriptor_979;
              v110 = _Block_copy(&v170);

              v111 = v159;
              static DispatchQoS.unspecified.getter();
              *&v170 = MEMORY[0x277D84F90];
              _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              v112 = v161;
              v113 = v162;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v114 = v165;
              MEMORY[0x26D69D2D0](0, v111, v112, v110);
              v100 = v163;
              _Block_release(v110);

              v115 = v113;
              a1 = v164;
              (*v158)(v112, v115);
              result = (*v157)(v111, v160);
              v104 = v154;
              v101 = v155;
            }

            v116 = *(v108 + 8);
            if (v107 >= *(v116 + 44))
            {
              goto LABEL_97;
            }

            v117 = *(v116 + 32);
            if (!v117)
            {
              goto LABEL_111;
            }

            v103 = *(v117 + (v107 << 7) + 64);
          }

          if (v101 == ++v102)
          {
            goto LABEL_70;
          }
        }

LABEL_94:
        __break(1u);
      }

      else
      {
        v103 = 0;
LABEL_70:

        specialized UnsafeTree.symbol(hashed:)(v152, v151 & 1, &v170);
        if (v146)
        {
          v119 = v142;
          v118 = v143;
          v121 = v140;
          v120 = v141;
        }

        else
        {
          v118 = 0;
          v119 = 0;
          v120 = 0;
          v121 = 0;
        }

        v122 = v170;
        v194[0] = v146;
        v194[1] = v118;
        v194[2] = v119;
        v194[3] = v120;
        v194[4] = v121;
        LODWORD(v166) = v170;
        result = closure #3 in Subforest2.init(within:old:)(&v166, &v185, &v183, a1);
        if (!*(v150 + 12))
        {
          goto LABEL_103;
        }

        v123 = DWORD1(v186[0]);
        if (!DWORD1(v186[0]))
        {
          v124 = 0;
LABEL_81:
          result = specialized UnsafeTree.add(child:to:default:)(v122, v124, &v185, v194, &v166);
          v127 = v166;
          if (!v123 || *(&v185 + 1))
          {
            v128 = v148 & 1;
            DWORD1(v186[0]) = 0;
            v129 = v166;
            v21 = v149;
            v130 = v150;
            v22 = v144;
            v17 = v145;
            if (v166 != 0xFFFFFFFFLL)
            {
              do
              {
                v131 = *v130 + 48 * v129;
                if (v129 == v127)
                {
                  *(v131 + 16) = 1;
                  v132 = *(v131 + 18);
                  if (!*(v131 + 19))
                  {
                    v132 = v128;
                  }

                  *(v131 + 18) = v132;
                  v133 = *(v131 + 20);
                  if (!*(v131 + 21))
                  {
                    v133 = v103;
                  }

                  *(v131 + 20) = v133;
                }

                v129 = *(v131 + 40);
              }

              while (v129 != -1);
            }

            continue;
          }

          goto LABEL_115;
        }

        v124 = 0;
        v125 = *(&v185 + 1);
        v126 = 4 * DWORD1(v186[0]);
        while (v126)
        {
          if (!v125)
          {
            goto LABEL_109;
          }

          result = specialized UnsafeTree.add(child:to:default:)(*(v125 - 4 + v126), v124, &v185, v194, &v166);
          v124 = v166;
          v126 -= 4;
          if (!v126)
          {
            goto LABEL_81;
          }
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    break;
  }

  v55 = result;
  v183 = result;
  v184 = 0;
  v56 = *(a1 + 24);
  if (!*(v56 + 116))
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v57 = *(v56 + 104);
  if (!v57)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v58 = *v57;
  v59 = *(*v57 + 4);
  v152 = result;
  if ((v59 & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v58 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v60 = static OS_dispatch_queue.main.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = v58;
    *&v172 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v172 + 1) = v61;
    *&v170 = MEMORY[0x277D85DD0];
    *(&v170 + 1) = 1107296256;
    *&v171 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v171 + 1) = &block_descriptor_986;
    v62 = _Block_copy(&v170);

    v63 = v159;
    static DispatchQoS.unspecified.getter();
    *&v170 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v65 = v161;
    v64 = v162;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v63, v65, v62);
    _Block_release(v62);

    v55 = v152;
    v66 = v65;
    v54 = v151;
    (*v158)(v66, v64);
    result = (*v157)(v63, v160);
  }

  v67 = *(v58 + 8);
  if (HIDWORD(v55) >= *(v67 + 124))
  {
    goto LABEL_105;
  }

  v68 = *(v67 + 112);
  if (!v68)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_106;
  }

  v69 = *(v68 + 168 * HIDWORD(v55));
  if (v55 >= *(v69 + 16))
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v70 = (v69 + 208 * v55);
  v179 = v70[11];
  v180 = v70[12];
  v181 = v70[13];
  v182 = v70[14];
  v175 = v70[7];
  v176 = v70[8];
  v177 = v70[9];
  v178 = v70[10];
  v171 = v70[3];
  v172 = v70[4];
  v173 = v70[5];
  v174 = v70[6];
  v170 = v70[2];
  v71 = *(v164 + 24);
  if (!*(v71 + 116))
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v72 = *(v71 + 104);
  if (v72)
  {
    v73 = *v72;
    if ((*(*v72 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v73 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v74 = static OS_dispatch_queue.main.getter();
      v75 = swift_allocObject();
      *(v75 + 16) = v73;
      v168 = closure #1 in Atomic.subscript.readspecialized partial apply;
      v169 = v75;
      *&v166 = MEMORY[0x277D85DD0];
      *(&v166 + 1) = 1107296256;
      *&v167 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v167 + 1) = &block_descriptor_993;
      v76 = _Block_copy(&v166);

      v77 = v159;
      static DispatchQoS.unspecified.getter();
      *&v166 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v79 = v161;
      v78 = v162;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v77, v79, v76);
      _Block_release(v76);

      v55 = v152;
      v80 = v79;
      v54 = v151;
      (*v158)(v80, v78);
      (*v157)(v77, v160);
    }

    v148 = Tree.isLeafView(within:)(*(v73 + 8), v51, v52, v53) ^ 1;
    a1 = v164;
    goto LABEL_37;
  }

LABEL_118:
  __break(1u);
  return result;
}

void (*Changelist.timeline.read(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = v8;
  v5[10] = v8;
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(v10 - 8) + 64));
  }

  v13 = v12;
  v5[11] = v12;
  result = swift_beginAccess();
  v15 = *(v1 + 24);
  if (!*(v15 + 116))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(v15 + 104);
  if (!v16)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *v16;
  if ((*(*v16 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v17 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v5[4] = partial apply for specialized closure #1 in Atomic.subscript.read;
    v5[5] = v18;
    *v5 = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v5[3] = &block_descriptor_2;
    v21 = _Block_copy(v5);
    v19 = v5[5];

    static DispatchQoS.unspecified.getter();
    v5[9] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v13, v9, v21);
    _Block_release(v21);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  v20 = *(v17 + 8);
  return Changelist.timeline.read;
}

void Changelist.timeline.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  free(*(*a1 + 88));
  free(v2);

  free(v1);
}

uint64_t Changelist.subscript.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1), (v10 & 1) == 0))
  {
    result = swift_endAccess();
    v15 = MEMORY[0x277D84F98];
    v16 = MEMORY[0x277D84F98];
    goto LABEL_7;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 64);
    if (v11 < *(v13 + 16))
    {
      v14 = v13 + 40 * v11;
      a1 = *(v14 + 32);
      a2 = *(v14 + 40);
      v4 = *(v14 + 48);
      v15 = *(v14 + 56);
      v16 = *(v14 + 64);

LABEL_7:
      *a3 = a1;
      *(a3 + 8) = a2 & 1;
      *(a3 + 16) = v4;
      *(a3 + 24) = v15;
      *(a3 + 32) = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in Subforest2.init(within:old:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v64);
  v63 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a3 + 8) & 1) == 0)
  {
    v14 = *a3;
    result = swift_beginAccess();
    v21 = *(a4 + 24);
    if (*(v21 + 116))
    {
      v61 = (v10 + 8);
      v62 = (v7 + 8);
      v58[0] = &v68;
      v58[1] = &v82;
      while (1)
      {
        v22 = *(v21 + 104);
        if (!v22)
        {
          break;
        }

        v23 = *v22;
        if ((*(*v22 + 4) & 1) == 0)
        {
          os_unfair_lock_lock_with_options();
          *(v23 + 4) = 1;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v60 = static OS_dispatch_queue.main.getter();
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          *&v83 = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v83 + 1) = v24;
          *&v81 = MEMORY[0x277D85DD0];
          *(&v81 + 1) = 1107296256;
          *&v82 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v82 + 1) = &block_descriptor_1000;
          v59 = _Block_copy(&v81);

          v25 = v63;
          static DispatchQoS.unspecified.getter();
          *&v81 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v26 = v65;
          v27 = a2;
          v28 = v66;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v30 = v59;
          v29 = v60;
          MEMORY[0x26D69D2D0](0, v25, v26, v59);
          _Block_release(v30);

          v31 = v28;
          a2 = v27;
          (*v62)(v26, v31);
          result = (*v61)(v25, v64);
        }

        v32 = *(v23 + 8);
        if (HIDWORD(v14) >= *(v32 + 124))
        {
          goto LABEL_27;
        }

        v33 = *(v32 + 112);
        if (!v33)
        {
          goto LABEL_33;
        }

        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_28;
        }

        v34 = *(v33 + 168 * HIDWORD(v14));
        if (v14 >= *(v34 + 16))
        {
          goto LABEL_29;
        }

        v35 = (v34 + 208 * v14);
        v90 = v35[11];
        v91 = v35[12];
        v92 = v35[13];
        v93 = v35[14];
        v86 = v35[7];
        v87 = v35[8];
        v88 = v35[9];
        v89 = v35[10];
        v82 = v35[3];
        v83 = v35[4];
        v84 = v35[5];
        v85 = v35[6];
        v81 = v35[2];
        v36 = *(a4 + 24);
        if (!*(v36 + 116))
        {
          goto LABEL_30;
        }

        v37 = *(v36 + 104);
        if (!v37)
        {
          goto LABEL_34;
        }

        v38 = *v37;
        if ((*(*v37 + 4) & 1) == 0)
        {
          os_unfair_lock_lock_with_options();
          *(v38 + 4) = 1;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v60 = static OS_dispatch_queue.main.getter();
          v39 = swift_allocObject();
          *(v39 + 16) = v38;
          *&v69 = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v69 + 1) = v39;
          *&v67 = MEMORY[0x277D85DD0];
          *(&v67 + 1) = 1107296256;
          *&v68 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v68 + 1) = &block_descriptor_1007;
          v40 = _Block_copy(&v67);

          v41 = v63;
          static DispatchQoS.unspecified.getter();
          *&v67 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          v42 = a4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v43 = v65;
          v44 = v66;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v45 = v60;
          MEMORY[0x26D69D2D0](0, v41, v43, v40);
          _Block_release(v40);

          v46 = v44;
          a4 = v42;
          (*v62)(v43, v46);
          (*v61)(v41, v64);
        }

        v80 = *(v38 + 8);
        v77 = v91;
        v78 = v92;
        v79 = v93;
        v73 = v87;
        v74 = v88;
        v75 = v89;
        v76 = v90;
        v69 = v83;
        v70 = v84;
        v71 = v85;
        v72 = v86;
        v67 = v81;
        v68 = v82;
        result = specialized Tree.parent(_:within:unabstracting:)(16, &v80, v15, v16, v17, v18, v19, v20);
        if (v47)
        {
          return result;
        }

        v14 = result;
        v48 = a2[1];
        v94 = *a2;
        v95 = v48;
        v96 = *(a2 + 4);
        v50 = specialized UnsafeTree.subjectsMap.read(&v67);
        if (*(v49 + 16) && (v51 = v49, v52 = specialized __RawDictionaryStorage.find<A>(_:)(v14, 0), (v53 & 1) != 0))
        {
          v54 = *(*(v51 + 56) + 4 * v52);
          result = (v50)(&v67, 0);
        }

        else
        {
          (v50)(&v67, 0);
          Hasher.init(_seed:)();
          MEMORY[0x26D69DBC0](0);
          MEMORY[0x26D69DC00](v14);
          v55 = Hasher._finalize()();
          result = specialized UnsafeTree.new(element:identity:)(v14, 0, v55, &v67);
          v54 = v67;
        }

        if (DWORD1(v95) == v95)
        {
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v95);
        }

        v56 = *(a2 + 1);
        if (!v56)
        {
          goto LABEL_35;
        }

        v57 = *(a2 + 5);
        *(v56 + 4 * v57) = v54;
        if (v57 == -1)
        {
          goto LABEL_31;
        }

        *(a2 + 5) = v57 + 1;
        v21 = *(a4 + 24);
        if (!*(v21 + 116))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_26:
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
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

unint64_t specialized Subforest2.descendants(of:where:)(unint64_t result, __int16 a2, uint64_t *a3)
{
  v3 = *a3;
  if ((a2 & 0x100) != 0)
  {
    v8 = 0;
LABEL_8:
    v9 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    specialized Array.append<A>(contentsOf:)(*(*v3 + v8 + 24), *(*v3 + v8 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
    v10 = v22;
    v11 = *(v22 + 16);
    if (!v11)
    {

      v11 = *(v9 + 16);
      if (!v11)
      {
        v12 = MEMORY[0x277D84F90];
LABEL_15:

        return v12;
      }

      v10 = v9;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v9;
    v13 = *(v9 + 16);
    v14 = 16 * v13;
    v15 = 32;
    do
    {
      v16 = *(v3 + 16) + 40 * *(*v3 + 48 * *(v10 + v15));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v12 + 24);
      v20 = v13 + 1;
      if (v13 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v13 + 1, 1);
      }

      *(v12 + 16) = v20;
      v21 = v12 + v14;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v14 += 16;
      v15 += 4;
      v13 = v20;
      --v11;
    }

    while (v11);
    goto LABEL_15;
  }

  v4 = **(v3 + 32);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2 & 1);
  if ((v5 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v3 + 16) + 40 * *(*(v4 + 56) + 4 * result);
  if (!*(v6 + 36))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = 48 * *v7;
    goto LABEL_8;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t Subforest2.descendants(of:where:)(uint64_t result, __int16 a2, uint64_t (*a3)(void, void))
{
  v5 = *v3;
  if ((a2 & 0x100) != 0)
  {
    v10 = 0;
LABEL_8:
    v11 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    specialized Array.append<A>(contentsOf:)(*(*v5 + v10 + 24), *(*v5 + v10 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
    v12 = v42;
    v13 = v42[2];
    if (v13)
    {
      v39 = MEMORY[0x277D84F90];
      while (1)
      {
        result = swift_bridgeObjectRetain_n();
        v14 = 0;
        v15 = 0;
LABEL_12:
        v41 = v14;
        v16 = v15;
        do
        {
          if (v16 >= *(v12 + 2))
          {
            __break(1u);
            goto LABEL_47;
          }

          v15 = v16 + 1;
          v17 = *(v5 + 16) + 40 * *(*v5 + 48 * *&v12[4 * v16 + 32]);
          result = a3(*v17, *(v17 + 8));
          if (result)
          {
            v14 = 1;
            if (v13 - 1 != v16)
            {
              goto LABEL_12;
            }

            v39 = v12;
            goto LABEL_36;
          }

          ++v16;
        }

        while (v13 != v15);
        swift_bridgeObjectRelease_n();
        if (v41)
        {
          break;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v12 + 2);
          v19 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 1, v12);
          }

          if (v18)
          {
            v20 = v19[2] - v18;
            memmove(v19 + 4, v19 + 4 * v18 + 32, 4 * v20);
            v19[2] = v20;
          }
        }

        else if (*(v12 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
          v19 = swift_allocObject();
          v21 = _swift_stdlib_malloc_size(v19);
          v22 = v21 - 32;
          if (v21 < 32)
          {
            v22 = v21 - 29;
          }

          v19[2] = 0;
          v19[3] = 2 * (v22 >> 2);
        }

        else
        {

          v19 = MEMORY[0x277D84F90];
        }

        v23 = *(v12 + 2);
        if (!v23)
        {

          v12 = v19;
          v13 = v19[2];
          if (v13)
          {
            continue;
          }

          goto LABEL_36;
        }

        v24 = 32;
        do
        {
          v25 = *v5 + 48 * *&v12[v24];
          specialized Array.append<A>(contentsOf:)(*(v25 + 24), *(v25 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
          v24 += 4;
          --v23;
        }

        while (v23);

        v12 = v19;
        v13 = v19[2];
        if (!v13)
        {
LABEL_36:
          v11 = MEMORY[0x277D84F90];
          goto LABEL_37;
        }
      }

      v26 = v12;
      v11 = MEMORY[0x277D84F90];
      v27 = *(v12 + 2);
      if (v27)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = v11;
LABEL_37:

      v26 = v39;
      v27 = *(v39 + 2);
      if (v27)
      {
LABEL_38:
        v40 = v26;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v28 = v40;
        v29 = v11;
        v30 = *(v11 + 2);
        v31 = 2 * v30;
        v32 = 32;
        do
        {
          v33 = *(v5 + 16) + 40 * *(*v5 + 48 * *&v28[v32]);
          v34 = *v33;
          v35 = *(v33 + 8);
          v36 = v29[3];
          v37 = v30 + 1;
          if (v30 >= v36 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v30 + 1, 1);
            v28 = v40;
          }

          v29[2] = v37;
          v38 = &v29[v31];
          v38[4] = v34;
          *(v38 + 40) = v35;
          v31 += 2;
          v32 += 4;
          v30 = v37;
          --v27;
        }

        while (v27);

        return v29;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v6 = **(v5 + 32);
  if (!*(v6 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2 & 1);
  if ((v7 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = *(v5 + 16) + 40 * *(*(v6 + 56) + 4 * result);
  if (!*(v8 + 36))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = 48 * *v9;
    goto LABEL_8;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t Subforest2.describe(state:)(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 10) = *(a1 + 26);
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  strcpy(v5, "(subforest \n");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v5, &v6, &v8);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v5[0];
}

uint64_t desc #1 (for:offset:into:) in Subforest2.describe(state:)(unint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  if ((a2 & 0x100) != 0)
  {
    goto LABEL_9;
  }

  *&v42 = 40;
  *(&v42 + 1) = 0xE100000000000000;
  v11 = (a5 + 8);
  if (__OFSUB__(*a5, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = *a5 - 1;
  v48 = v40;
  v12 = *(a5 + 24);
  v49 = *v11;
  v50 = v12;
  v51 = *(a5 + 40);
  v44 = a1;
  v39 = a2;
  v41 = a2 & 1;
  LOBYTE(v45) = a2 & 1;
  v13 = String.init<A>(describing:)();
  v14 = specialized InspectionState.wrapDescription<A>(_:)(v13);
  v16 = v15;

  MEMORY[0x26D69CDB0](v14, v16);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v17 = *a6;
  v18 = **(*a6 + 32);
  if (!*(v18 + 16))
  {
    goto LABEL_17;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v41);
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  v21 = v17[2] + 40 * *(*(v18 + 56) + 4 * v19);
  if (!*(v21 + 36))
  {
    goto LABEL_14;
  }

  v22 = *(v21 + 24);
  if (!v22)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v23 = (*v17 + 48 * *v22);
  v24 = v23[16];
  v25 = v23[17];
  v26 = v23[18];
  v27 = v23[19];
  v28 = v23[20];
  LOBYTE(v23) = v23[21];
  v29 = *(a5 + 24);
  v45 = *v11;
  v46 = v29;
  v47 = *(a5 + 40);
  v44 = v40;
  v30 = specialized InspectionState.wrapDescription<A>(_:)(v24 | (v26 << 16) | (v28 << 32) | (v25 << 8) | (v27 << 24) | (v23 << 40));
  MEMORY[0x26D69CDB0](v30);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  MEMORY[0x26D69CDB0](v42, *(&v42 + 1));

  if (__OFADD__(a3++, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a2 = v39;
LABEL_9:
  v32 = a6[1];
  v42 = *a6;
  v43[0] = v32;
  *(v43 + 9) = *(a6 + 25);
  v33 = specialized Subforest2.descendants(of:where:)(a1, a2 & 0x1FF, &v42);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = (v33 + 40);
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      v35 += 16;
      desc #1 (for:offset:into:) in Subforest2.describe(state:)(v36, v37, a3, a4, a5, a6);
      --v34;
    }

    while (v34);
  }
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Subforest2(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 10) = *(a1 + 26);
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  strcpy(v5, "(subforest \n");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v5, &v6, &v8);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v5[0];
}

uint64_t (*Changelist.eventTimes.read())()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return AggregateContainer.config.modify;
}

uint64_t Changelist.eventTimes.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t Changelist._interpreter.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

__n128 Changelist.interpreter.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 144);
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 144) = v4;
  v5 = *(v3 + 176);
  *(a1 + 160) = *(v3 + 160);
  *(a1 + 176) = v5;
  v6 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v6;
  v7 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v7;
  v8 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v8;
  result = *(v3 + 32);
  v10 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v10;
  return result;
}

uint64_t (*Changelist.interpreter.read())(void)
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  return EventTreeStats.count.modify;
}

uint64_t (*Changelist.interpreter.modify())(void)
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  return EventTreeStats.count.modify;
}

__n128 Changelist.interpreter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v4;
  v5 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v5;
  v6 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v6;
  v7 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v7;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v10;
  return result;
}

uint64_t Changelist.unabstractedUpdates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t key path setter for Changelist.unabstractedUpdates : Changelist(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(v3 + 194) = 1;
  return result;
}

uint64_t Changelist.unabstractedUpdates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;

  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.unabstractedUpdates.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.unabstractedUpdates.modify;
}

uint64_t Changelist.unabstractedTrees.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t key path setter for Changelist.unabstractedTrees : Changelist(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(v3 + 194) = 1;
  return result;
}

uint64_t Changelist.unabstractedTrees.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;

  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.unabstractedTrees.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.unabstractedUpdates.modify;
}

uint64_t Changelist.upstreamCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.upstreamCount.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.upstreamCount.modify;
}

uint64_t Changelist.upstreamCount.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 194) = 1;
  }

  return result;
}

uint64_t Changelist.downstreamCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  *(v1 + 194) = 1;
  return result;
}

uint64_t (*Changelist.downstreamCount.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Changelist.unabstractedUpdates.modify;
}

uint64_t Changelist.timeline.getter()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v12 = *(v0 + 24);
  if (!*(v12 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = *(v12 + 104);
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = *v13;
  if ((*(*v13 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v14 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_73;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v18 = v6;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v19;
    v16 = v20;
    MEMORY[0x26D69D2D0](0, v10, v5, v19);
    _Block_release(v17);

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v18);
  }

  return *(v14 + 8);
}

uint64_t key path getter for Changelist.timeline : Changelist@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  result = swift_beginAccess();
  v16 = *(v14 + 24);
  if (!*(v16 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = *(v16 + 104);
  if (!v17)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v18 = *v17;
  if ((*(*v17 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v18 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v25 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_879;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    v22[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v23 = v9;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v24;
    v21 = v25;
    MEMORY[0x26D69D2D0](0, v13, v8, v24);
    _Block_release(v20);

    (*(v5 + 8))(v8, v4);
    result = (*(v10 + 8))(v13, v23);
  }

  *a2 = *(v18 + 8);
  return result;
}

uint64_t key path setter for Changelist.timeline : Changelist(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *a2;
  result = swift_beginAccess();
  v17 = *(v15 + 24);
  if (!*(v17 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = *(v17 + 104);
  if (!v18)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v19 = *v18;
  if ((*(*v18 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v19 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v27 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    aBlock[4] = closure #1 in Atomic.subscript.modifyspecialized partial apply;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_872;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v25 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v24 = v9;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v14 = v25;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v26;
    v21 = v27;
    MEMORY[0x26D69D2D0](0, v13, v8, v26);
    _Block_release(v22);

    (*(v5 + 8))(v8, v4);
    result = (*(v10 + 8))(v13, v24);
  }

  *(v19 + 8) = v14;
  return result;
}

void (*Changelist.timeline.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  *(v4 + 32) = v5[2];
  *(v4 + 48) = v8;
  *v4 = v6;
  *(v4 + 16) = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  *(v4 + 96) = v5[6];
  *(v4 + 112) = v11;
  *(v4 + 64) = v9;
  *(v4 + 80) = v10;
  v12 = v5[8];
  v13 = v5[9];
  v14 = v5[11];
  *(v4 + 160) = v5[10];
  *(v4 + 176) = v14;
  *(v4 + 128) = v12;
  *(v4 + 144) = v13;
  *(v4 + 248) = Interpreter.Storage.subscript.modify((v4 + 192), 0);
  return Changelist.timeline.modify;
}

void Changelist.timeline.modify(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 248))();

  free(v1);
}

uint64_t Changelist.timeline.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v14 = *(v1 + 24);
  if (!*(v14 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = *v15;
  if ((*(*v15 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v16 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v23 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    aBlock[4] = _s21SwiftUITracingSupport6AtomicV6onMainxSb_tciMyyScMYccfU_AA8SnapshotV_Tgq5TA_0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_79;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    v20[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v21 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v22;
    v18 = v23;
    MEMORY[0x26D69D2D0](0, v12, v7, v22);
    _Block_release(v19);

    (*(v4 + 8))(v7, v3);
    result = (*(v9 + 8))(v12, v21);
  }

  *(v16 + 8) = a1;
  return result;
}

uint64_t Changelist.updates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t Changelist.updates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t Changelist.raw.setter(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t Changelist.rawEvents.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t Changelist.rawEvents.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Changelist.resolved.setter(uint64_t a1)
{
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t Changelist.eventMap.setter(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t static Changelist.Id.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 == 0);
  if (a1)
  {
    v4 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

uint64_t Changelist.Id.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    return MEMORY[0x26D69DBC0](v4);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    return MEMORY[0x26D69DC00](a2);
  }
}

Swift::Int Changelist.Id.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    MEMORY[0x26D69DBC0](v4);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](a1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Changelist.Id()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x26D69DBC0](v3);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Changelist.Id()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    return MEMORY[0x26D69DBC0](v2);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    return MEMORY[0x26D69DC00](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Changelist.Id()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    MEMORY[0x26D69DBC0](v3);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Changelist.Id(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t Changelist.map.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t Changelist.map.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t Changelist.viewTreeDisplayOrder.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t Changelist.viewTreeDisplayOrder.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t Changelist.kind.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

__n128 Changelist.subforest.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 16) = v3;
  result = *(v1 + 161);
  *(a1 + 25) = result;
  return result;
}

__n128 Changelist.subforest.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 136) = *a1;
  *(v1 + 152) = v3;
  result = *(a1 + 25);
  *(v1 + 161) = result;
  return result;
}

uint64_t Changelist.rawCurrent.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 180) = a1;
  return result;
}

uint64_t Changelist.currentRawView.getter()
{
  swift_beginAccess();
  result = *(v0 + 184);
  v2 = *(v0 + 192) | (*(v0 + 193) << 8);
  return result;
}

uint64_t Changelist.currentRawView.setter(uint64_t a1, __int16 a2)
{
  result = swift_beginAccess();
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  *(v2 + 193) = HIBYTE(a2) & 1;
  return result;
}

void *Changelist.current.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26C328DC0;
  swift_beginAccess();
  *(v1 + 32) = *(v0 + 180);
  v3._rawValue = v1;
  Changelist.resolve(_:)(&v3);
  return v3._rawValue;
}

Swift::Void __swiftcall Changelist.resolve(_:)(Swift::OpaquePointer *a1)
{
  v26 = MEMORY[0x277D84F98];
  rawValue = a1->_rawValue;
  v3 = *(a1->_rawValue + 2);
  if (!v3)
  {
LABEL_20:

    Changelist.resolve(_:)(&v26);
    v21 = v26;
    v22 = *(v26 + 2);
    if (v22)
    {
      v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport8EventRefV_Tt1g5(*(v26 + 2), 0);
      v24 = specialized Sequence._copySequenceContents(initializing:)(&v25, v23 + 8, v22, v21);
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant();
      if (v24 == v22)
      {
LABEL_24:
        v25 = v23;

        specialized MutableCollection<>.sort(by:)(&v25);

        a1->_rawValue = v25;
        return;
      }

      __break(1u);
    }

    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (v4 < rawValue[2])
  {
    v6 = *(rawValue + v4 + 8);
    if (*(v5 + 2))
    {
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(rawValue + v4 + 8));
      if ((v8 & 1) != 0 && *(*(v5 + 7) + 8 * v7) < 1)
      {
        goto LABEL_4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v5;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v12 = *(v5 + 2);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_26;
    }

    v16 = v11;
    if (*(v5 + 3) < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_28;
      }

LABEL_14:
      v5 = v25;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v20 = v10;
    specialized _NativeDictionary.copy()();
    v10 = v20;
    v5 = v25;
    if (v16)
    {
LABEL_3:
      *(*(v5 + 7) + 8 * v10) = 0;
      goto LABEL_4;
    }

LABEL_15:
    *&v5[8 * (v10 >> 6) + 64] |= 1 << v10;
    *(*(v5 + 6) + 4 * v10) = v6;
    *(*(v5 + 7) + 8 * v10) = 0;
    v18 = *(v5 + 2);
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v14)
    {
      goto LABEL_27;
    }

    *(v5 + 2) = v19;
LABEL_4:
    if (v3 == ++v4)
    {
      v26 = v5;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

uint64_t Changelist.currentIsRaw.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  swift_beginAccess();
  v2 = *(v0 + 180);
  *(inited + 32) = v2;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_26C328DC0;
  *(v3 + 32) = v2;
  v6._rawValue = v3;
  Changelist.resolve(_:)(&v6);
  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(inited, v6._rawValue);
  swift_setDeallocating();

  return v4 & 1;
}

uint64_t Event.related(_:within:limit:collectedInto:clear:includeSelf:)(uint64_t result, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  while (1)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = result;
    if (a5)
    {
      result = *a4;
      if (*(*a4 + 16))
      {
        v11 = a6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *v7;
        *v7 = 0x8000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy21SwiftUITracingSupport8EventRefVSiGMd, &_ss17_NativeDictionaryVy21SwiftUITracingSupport8EventRefVSiGMR);
        _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
        v13 = *v7;
        *v7 = v26;

        a6 = v11;
      }
    }

    if (!v10)
    {
      break;
    }

    if (a6)
    {
      result = specialized DepthMap.insert(_:at:)(*v6, 0);
    }

    if ((v10 & 0xC000) != 0xC000)
    {
      if ((v10 & 0xC000) != 0 && ((v10 & 0x4000) != 0 || (v10 & 0x8000) != 0))
      {
        v14 = MEMORY[0x28223BE20](result);
        v20[6] = v9;
        v21 = v10;
        v22 = v8;
        v23 = v7;
        v24 = v15;
        v16 = *v6;
        MEMORY[0x28223BE20](v14);
        v20[2] = partial apply for closure #1 in Event.related(_:within:limit:collectedInto:clear:includeSelf:);
        v20[3] = v17;
        v18 = swift_allocObject();
        *(v18 + 16) = partial apply for specialized closure #1 in static IterativeTreeTraversal<>.run(visitor:revisitor:start:revisitLeaf:);
        *(v18 + 24) = v20;
        specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(EventTreeStats.count.modify, 0, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v18, 0, 0, 0, v16);
        if (swift_isEscapingClosureAtFileLocation())
        {
          __break(1u);
        }

        else
        {
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return result;
          }
        }

        __break(1u);
      }

      v25 = 0;
      v24 = 5882;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    Event.related(_:within:limit:collectedInto:clear:includeSelf:)(v10 & 0x7FFF, v9, v8, v7, 0, 0);
    result = v10 & 0xFFFFBFFF;
    a2 = v9;
    a3 = v8;
    a4 = v7;
    a5 = 0;
    a6 = 0;
    v6 = v27;
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF21SwiftUITracingSupport8DepthMapVyAF8EventRefVG_AJs5NeverOTg504_s21de121Support10ChangelistC6within7current12relationship19unabstractedUpdates0H5Trees__5localACSpyAA11InterpreterC7StorageVG_AA8iJ76VAA0N0V12RelationshipVShyAPGShyAA04TreeO0VGS2iSbtcfcA2P3key_Si5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v24 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = a1;
  v4 = a1 + 64;
  v5 = -1;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a1 + 64);
  v8 = (63 - v6) >> 6;
  if (v2)
  {
    v9 = v2;
    v10 = 0;
    v11 = 0;
    while (v7)
    {
LABEL_10:
      v13 = *(*(v3 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v7)))));
      v15 = *(v24 + 16);
      v14 = *(v24 + 24);
      if (v15 >= v14 >> 1)
      {
        v22 = v9;
        v23 = v3;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v9 = v22;
        v3 = v23;
      }

      ++v10;
      v7 &= v7 - 1;
      *(v24 + 16) = v15 + 1;
      *(v24 + 4 * v15 + 32) = v13;
      if (v10 == v9)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_27;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
LABEL_15:
    if (v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v8)
      {

        return v24;
      }

      v7 = *(v4 + 8 * v16);
      ++v11;
      if (v7)
      {
        v11 = v16;
        do
        {
LABEL_20:
          v17 = *(*(v3 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v7)))));
          v19 = *(v24 + 16);
          v18 = *(v24 + 24);
          if (v19 >= v18 >> 1)
          {
            v20 = v3;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
            v3 = v20;
          }

          v7 &= v7 - 1;
          *(v24 + 16) = v19 + 1;
          *(v24 + 4 * v19 + 32) = v17;
        }

        while (v7);
      }
    }
  }

  __break(1u);
LABEL_27:

  __break(1u);
  return result;
}

uint64_t Changelist.resolve(_:)(void *a1)
{
  v2 = v1;
  v143 = a1;
  v137 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v137 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for DispatchQoS();
  v6 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = &v150;
  v132 = (v3 + 8);
  v131 = (v8 + 8);
  v140 = v2;
  while (1)
  {
    v10 = *v143;
    *v143 = MEMORY[0x277D84F98];
    v11 = *(v10 + 64);
    v146 = v10 + 64;
    v128 = v10;
    v12 = 1 << *(v10 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v130 = v13 & v11;
    swift_beginAccess();
    v138 = 0;
    v14 = v12 + 63;
    v15 = 0;
    v147 = v14 >> 6;
LABEL_8:
    v16 = v15;
    v17 = v130;
    if (v130)
    {
      break;
    }

    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_104;
      }

      if (v15 >= v147)
      {
        break;
      }

      v17 = *(v146 + 8 * v15);
      ++v16;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    if ((v138 & 1) == 0)
    {
      return result;
    }
  }

LABEL_12:
  v18 = v2[3];
  if (!*(v18 + 116))
  {
    goto LABEL_110;
  }

  v19 = *(v18 + 104);
  if (!v19)
  {
    goto LABEL_123;
  }

  v20 = __clz(__rbit64(v17)) | (v15 << 6);
  v21 = *(*(v128 + 48) + 4 * v20);
  v22 = *(*(v128 + 56) + 8 * v20);
  v23 = *v19;
  v24 = *(*v19 + 4);
  v139 = v15;
  v141 = v22;
  if ((v24 & 1) == 0)
  {
    v25 = v17;
    os_unfair_lock_lock_with_options();
    *(v23 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v26 = static OS_dispatch_queue.main.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    v152 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v153 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v149 = 1107296256;
    v150 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v151 = &block_descriptor_90;
    v28 = _Block_copy(&aBlock);

    v29 = v134;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v30 = v136;
    v31 = v137;
    v22 = v141;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v29, v30, v28);
    _Block_release(v28);

    v2 = v140;
    v32 = v31;
    v15 = v139;
    (*v132)(v30, v32);
    (*v131)(v29, v135);
    v17 = v25;
  }

  v33 = *(v23 + 8);
  if (v21 >= *(v33 + 44))
  {
    goto LABEL_111;
  }

  v34 = *(v33 + 32);
  if (!v34)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v35 = v34 + (v21 << 7);
  v36 = *(v35 + 112);
  v37 = *(v35 + 124) + 1;
  v38 = v36;
  v130 = (v17 - 1) & v17;
  do
  {
    if (!--v37)
    {
      specialized DepthMap.insert(_:at:)(v21, v22);
      goto LABEL_8;
    }

    if (!v36)
    {
      goto LABEL_117;
    }

    v39 = *v38;
    v38 += 4;
  }

  while ((v39 & 0x8020) != 0x20);
  v40 = v2[3];
  if (!*(v40 + 116))
  {
    goto LABEL_113;
  }

  v41 = *(v40 + 104);
  if (!v41)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v42 = *v41;
  if ((*(*v41 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v42 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v43 = static OS_dispatch_queue.main.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    v152 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v153 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v149 = 1107296256;
    v150 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v151 = &block_descriptor_97;
    v45 = _Block_copy(&aBlock);

    v46 = v134;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v47 = v136;
    v48 = v137;
    v22 = v141;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v46, v47, v45);
    _Block_release(v45);

    v2 = v140;
    v49 = v48;
    v15 = v139;
    (*v132)(v47, v49);
    (*v131)(v46, v135);
  }

  v50 = *(v42 + 8);
  if (v21 >= *(v50 + 44))
  {
    goto LABEL_114;
  }

  v51 = *(v50 + 32);
  if (!v51)
  {
    goto LABEL_126;
  }

  v52 = v51 + (v21 << 7);
  v53 = *(v52 + 112);
  v144 = *(v52 + 124);
  swift_beginAccess();
  v54 = 0;
  v145 = v53;
  v142 = v53 + 4;
  v55 = v138;
  while (2)
  {
    v138 = v55;
    while (1)
    {
      v56 = v54;
      do
      {
LABEL_33:
        if (v56 == v144)
        {
          goto LABEL_8;
        }

        if (v56 >= v144)
        {
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

        if (!v145)
        {
          goto LABEL_118;
        }

        v54 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_103;
        }

        v57 = 8 * v56;
        v58 = *(v145 + 8 * v56++) & 0x8020;
      }

      while (v58 != 32);
      v59 = *(v142 + v57);
      v60 = v2[4];
      if (!*(v60 + 16))
      {
        break;
      }

      v61 = *(v60 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v59);
      v62 = Hasher._finalize()();
      v63 = -1 << *(v60 + 32);
      v64 = v62 & ~v63;
      if (((*(v60 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
      {
        break;
      }

      v65 = ~v63;
      while (*(*(v60 + 48) + 4 * v64) != v59)
      {
        v64 = (v64 + 1) & v65;
        if (((*(v60 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_43:
    v66 = v2[3];
    if (!*(v66 + 116))
    {
      goto LABEL_105;
    }

    v67 = *(v66 + 104);
    if (!v67)
    {
      goto LABEL_120;
    }

    v68 = *v67;
    if ((*(*v67 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v68 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v69 = static OS_dispatch_queue.main.getter();
      v70 = swift_allocObject();
      *(v70 + 16) = v68;
      v152 = closure #1 in Atomic.subscript.readspecialized partial apply;
      v153 = v70;
      aBlock = MEMORY[0x277D85DD0];
      v149 = 1107296256;
      v150 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v151 = &block_descriptor_104;
      v71 = _Block_copy(&aBlock);

      v72 = v134;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v73 = v136;
      v74 = v137;
      v22 = v141;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26D69D2D0](0, v72, v73, v71);
      _Block_release(v71);

      v2 = v140;
      (*v132)(v73, v74);
      v75 = v72;
      v15 = v139;
      (*v131)(v75, v135);
    }

    v76 = *(v68 + 8);
    if (v59 >= *(v76 + 44))
    {
      goto LABEL_106;
    }

    v77 = *(v76 + 32);
    if (!v77)
    {
      goto LABEL_119;
    }

    v78 = v77 + (v59 << 7);
    v79 = *(v78 + 112);
    v80 = *(v78 + 124) + 1;
    v81 = v79;
LABEL_50:
    if (!--v80)
    {
LABEL_70:
      v103 = *v143;
      if (*(*v143 + 16) && (v104 = specialized __RawDictionaryStorage.find<A>(_:)(v59), (v105 & 1) != 0))
      {
        v106 = 0;
        v107 = *(*(v103 + 56) + 8 * v104);
        v108 = 1;
        if (v22 < 0)
        {
LABEL_73:
          v109 = 0x8000000000000000;
          if (v108)
          {
            v109 = v107;
          }

          if (v22 <= v109)
          {
            v110 = v109;
          }

          else
          {
            v110 = v22;
          }

          goto LABEL_86;
        }
      }

      else
      {
        v107 = 0;
        v106 = 1;
        v108 = 0;
        if (v22 < 0)
        {
          goto LABEL_73;
        }
      }

      v111 = 0x7FFFFFFFFFFFFFFFLL;
      if (v108)
      {
        v111 = v107;
      }

      if (v22 >= v111)
      {
        v110 = v111;
      }

      else
      {
        v110 = v22;
      }

LABEL_86:
      if (v107 != v110)
      {
        v106 = 1;
      }

      v55 = 1;
      if (v106 != 1)
      {
        continue;
      }

      v112 = v143;
      v113 = *v143;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = *v112;
      aBlock = v115;
      v116 = specialized __RawDictionaryStorage.find<A>(_:)(v59);
      v118 = v115[2];
      v119 = (v117 & 1) == 0;
      v120 = __OFADD__(v118, v119);
      v121 = v118 + v119;
      if (v120)
      {
        goto LABEL_109;
      }

      v122 = v117;
      if (v115[3] >= v121)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v127 = v116;
          specialized _NativeDictionary.copy()();
          v116 = v127;
          v124 = aBlock;
          if ((v122 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_29;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v121, isUniquelyReferenced_nonNull_native);
        v116 = specialized __RawDictionaryStorage.find<A>(_:)(v59);
        if ((v122 & 1) != (v123 & 1))
        {
          goto LABEL_127;
        }
      }

      v124 = aBlock;
      if ((v122 & 1) == 0)
      {
LABEL_95:
        v124[(v116 >> 6) + 8] |= 1 << v116;
        *(v124[6] + 4 * v116) = v59;
        *(v124[7] + 8 * v116) = v110;
        v125 = v124[2];
        v120 = __OFADD__(v125, 1);
        v126 = v125 + 1;
        if (v120)
        {
          goto LABEL_112;
        }

        v124[2] = v126;
LABEL_30:
        *v143 = v124;
        v55 = 1;
        continue;
      }

LABEL_29:
      *(v124[7] + 8 * v116) = v110;
      goto LABEL_30;
    }

    break;
  }

  if (!v79)
  {
    goto LABEL_115;
  }

  v82 = *v81;
  v81 += 4;
  if ((v82 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v83 = v2[3];
  if (!*(v83 + 116))
  {
    goto LABEL_107;
  }

  v84 = *(v83 + 104);
  if (!v84)
  {
    goto LABEL_122;
  }

  v85 = v2[9];
  v86 = *v84;
  v87 = *(*v84 + 4);

  if ((v87 & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v86 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v129 = static OS_dispatch_queue.main.getter();
    v88 = swift_allocObject();
    *(v88 + 16) = v86;
    v152 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v153 = v88;
    aBlock = MEMORY[0x277D85DD0];
    v149 = 1107296256;
    v150 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v151 = &block_descriptor_111;
    v89 = _Block_copy(&aBlock);

    v90 = v134;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v91 = v136;
    v92 = v137;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v93 = v129;
    MEMORY[0x26D69D2D0](0, v90, v91, v89);
    _Block_release(v89);

    (*v132)(v91, v92);
    v94 = v90;
    v15 = v139;
    result = (*v131)(v94, v135);
  }

  v95 = *(v86 + 8);
  if (v59 >= *(v95 + 44))
  {
    goto LABEL_108;
  }

  v96 = *(v95 + 32);
  if (!v96)
  {
    goto LABEL_121;
  }

  v97 = 0;
  v98 = v96 + (v59 << 7);
  v99 = *(v98 + 112);
  v100 = *(v98 + 124);
  for (i = (v99 + 4); ; i += 2)
  {
    if (v100 == v97)
    {

      v56 = v54;
      v2 = v140;
      v22 = v141;
      goto LABEL_33;
    }

    if (v97 >= v100)
    {
      break;
    }

    if (!v99)
    {
      goto LABEL_116;
    }

    if (__OFADD__(v97, 1))
    {
      goto LABEL_100;
    }

    if ((*(i - 1) & 0x40) != 0)
    {
      if (*(v85 + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(*i);
        if (v102)
        {

          v2 = v140;
          v22 = v141;
          goto LABEL_70;
        }
      }
    }

    ++v97;
  }

  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Changelist.rebuildDisplayOrder()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 120);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v4 + 16));
  }

  else
  {
    *(v1 + 120) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_21SwiftUITracingSupport10ChangelistC2IdOt_Tt1g5(0, *(v4 + 24) >> 1);
  }

  buildViewTreeDisplayOrder #1 (for:offset:into:) in Changelist.rebuildDisplayOrder()(0, 256, 0, (v1 + 120), v1);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(v1 + 152);
  v29 = *(v1 + 136);
  v30 = v5;
  v31 = *(v1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C328DC0;
  v24 = xmmword_26C32DAD0;
  v25 = 1;
  v26 = 0;
  v27 = 0;
  v28 = 512;
  v7 = specialized UnsafeTree.describe(state:)(&v24);
  v8 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  print(_:separator:terminator:)();

  v10 = *(v1 + 152);
  v22 = *(v1 + 136);
  v23[0] = v10;
  *(v23 + 9) = *(v1 + 161);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C328DC0;
  v17 = xmmword_26C32DAD0;
  v18 = 1;
  v19 = 0;
  v20 = 0;
  v21 = 512;
  strcpy(v16, "(subforest \n");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v16, &v17, &v22);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  v12 = v16[0];
  v13 = v16[1];
  *(v11 + 56) = v8;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  print(_:separator:terminator:)();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26C328DC0;
  v15 = *(v1 + 120);
  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_sSaySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR);
  *(v14 + 32) = v15;

  print(_:separator:terminator:)();
}

void *Changelist.deinit()
{
  v1 = v0[10];
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[10] = 0;
  }

  v2 = v0[2];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  return v0;
}

uint64_t Changelist.__deallocating_deinit()
{
  Changelist.deinit();

  return swift_deallocClassInstance();
}

uint64_t Changelist.filter(id:)(unint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      Changelist.subscript.getter(1, 1, aBlock);
      v16 = v70;
      v67 = v70;
      v17 = 1 << v70[32];
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v70 + 8);
      v20 = (v17 + 63) >> 6;

      v22 = 0;
      v23 = MEMORY[0x277D84F90];
LABEL_6:
      v24 = v69;
      while (v19)
      {
LABEL_13:
        v26 = __clz(__rbit64(v19)) | (v22 << 6);
        v27 = *(*(v16 + 6) + 4 * v26);
        v28 = *(*(v16 + 7) + 8 * v26);

        result = swift_beginAccess();
        v29 = *(v24 + 6);
        v30 = __OFSUB__(0, v29);
        v31 = -v29;
        if (v30)
        {
          goto LABEL_54;
        }

        v19 &= v19 - 1;
        if (v28 < v31)
        {
        }

        else
        {
          swift_beginAccess();
          v32 = *(v24 + 7);

          if (v32 >= v28)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
              v23 = result;
            }

            v34 = *(v23 + 16);
            v33 = *(v23 + 24);
            if (v34 >= v33 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v23);
              v23 = result;
            }

            *(v23 + 16) = v34 + 1;
            *(v23 + 4 * v34 + 32) = v27;
            goto LABEL_6;
          }
        }
      }

      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v25 >= v20)
        {
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v67, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
          v74[0] = v71;
          v44 = v74;
          goto LABEL_51;
        }

        v19 = *&v16[8 * v25 + 64];
        ++v22;
        if (v19)
        {
          v22 = v25;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    return 1;
  }

  v66 = v13;
  result = swift_beginAccess();
  v35 = *(v2 + 24);
  if (!*(v35 + 116))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v36 = *(v35 + 104);
  if (!v36)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v37 = *v36;
  if ((*(*v36 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v37 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v65 = v2;
    v64 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v71 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v72 = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v69 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v70 = &block_descriptor_958;
    v63 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    v62[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v40 = v63;
    v39 = v64;
    MEMORY[0x26D69D2D0](0, v15, v9, v63);
    _Block_release(v40);

    (*(v6 + 8))(v9, v5);
    result = (*(v11 + 8))(v15, v66);
  }

  v41 = *(v37 + 8);
  if (HIDWORD(a1) >= *(v41 + 124))
  {
    goto LABEL_57;
  }

  v42 = *(v41 + 112);
  if (v42)
  {
    if ((a1 & 0x80000000) != 0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v43 = *(v42 + 168 * HIDWORD(a1));
    if (a1 >= *(v43 + 16))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (*(v43 + 208 * a1 + 149) != 5)
    {
      Changelist.subscript.getter(a1, 0, aBlock);
      v45 = v70;
      v74[0] = v70;
      v46 = 1 << v70[32];
      v47 = -1;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      v48 = v47 & *(v70 + 8);
      v49 = (v46 + 63) >> 6;

      v50 = 0;
      v23 = MEMORY[0x277D84F90];
LABEL_35:
      v51 = v69;
      while (v48)
      {
LABEL_42:
        v53 = __clz(__rbit64(v48)) | (v50 << 6);
        v54 = *(*(v45 + 6) + 4 * v53);
        v55 = *(*(v45 + 7) + 8 * v53);

        result = swift_beginAccess();
        v56 = *(v51 + 6);
        v30 = __OFSUB__(0, v56);
        v57 = -v56;
        if (v30)
        {
          goto LABEL_55;
        }

        v48 &= v48 - 1;
        if (v55 < v57)
        {
        }

        else
        {
          swift_beginAccess();
          v58 = *(v51 + 7);

          if (v58 >= v55)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
              v23 = result;
            }

            v60 = *(v23 + 16);
            v59 = *(v23 + 24);
            if (v60 >= v59 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v23);
              v23 = result;
            }

            *(v23 + 16) = v60 + 1;
            *(v23 + 4 * v60 + 32) = v54;
            goto LABEL_35;
          }
        }
      }

      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_53;
        }

        if (v52 >= v49)
        {
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v74, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
          v73 = v71;
          v44 = &v73;
LABEL_51:
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v44, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);

          v61 = *(v23 + 16);

          return v61 != 0;
        }

        v48 = *&v45[8 * v52 + 64];
        ++v50;
        if (v48)
        {
          v50 = v52;
          goto LABEL_42;
        }
      }
    }

    return 1;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t ChangelistGroup.clean.getter()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 24);

  v8 = 0;
  v21 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_10:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(*(v1 + 48) + 4 * v10);
    v12 = *(*(v1 + 56) + 8 * v10);
    v13 = *(v0 + 16);

    result = swift_beginAccess();
    v14 = *(v13 + 48);
    v15 = __OFSUB__(0, v14);
    v16 = -v14;
    if (v15)
    {
      goto LABEL_20;
    }

    v4 &= v4 - 1;
    if (v12 < v16)
    {
    }

    else
    {
      swift_beginAccess();
      v17 = *(v13 + 56);

      if (v17 >= v12)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
          v21 = result;
        }

        v19 = *(v21 + 16);
        v18 = *(v21 + 24);
        if (v19 >= v18 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 16) = v19 + 1;
        *(v21 + 4 * v19 + 32) = v11;
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      v20 = *(v21 + 16);

      return v20 == 0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Changelist.rebuildDisplayOrderIfNeeded()()
{
  if (*(v0 + 194) == 1)
  {
    *(v0 + 194) = 0;
    swift_beginAccess();
    *&v8[9] = *(v0 + 161);
    v1 = *(v0 + 152);
    v7 = *(v0 + 136);
    *v8 = v1;
    v4[0] = v7;
    v4[1] = v1;
    v5 = *&v8[16];
    v6 = v8[24];

    Subforest2.init(within:old:)(v2, v4, &v9);
    v3 = v10[0];
    *(v0 + 136) = v9;
    *(v0 + 152) = v3;
    *(v0 + 161) = *(v10 + 9);
    specialized UnsafeTree.deallocate()(&_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMd, &_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMR, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMd, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMR);
    Changelist.rebuildDisplayOrder()();
  }
}

uint64_t isLeafView #1 (_:) in Changelist.rebuildDisplayOrder()(unint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a1 != 0;
    return v14 & 1;
  }

  result = swift_beginAccess();
  v19 = a3[3];
  if (!*(v19 + 116))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = *(v19 + 104);
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = *v20;
  if ((*(*v20 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v21 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v49 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *&v57 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v57 + 1) = v22;
    *&v55 = MEMORY[0x277D85DD0];
    *(&v55 + 1) = 1107296256;
    *&v56 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v56 + 1) = &block_descriptor_944;
    v47 = _Block_copy(&v55);

    static DispatchQoS.unspecified.getter();
    *&v55 = MEMORY[0x277D84F90];
    v23 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v51 = v10;
    v46 = v23;
    v24 = v6;
    v25 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v48 = a1;
    v50 = a3;
    v26 = v13;
    v28 = v52;
    v27 = v53;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v29 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v47;
    v31 = v49;
    MEMORY[0x26D69D2D0](0, v26, v25, v47);
    _Block_release(v30);

    v32 = v28;
    v13 = v26;
    v9 = v25;
    v6 = v24;
    (*(v32 + 8))(v25, v24);
    v10 = v29;
    v33 = v29;
    a1 = v48;
    v34 = v27;
    a3 = v50;
    result = (*(v33 + 8))(v13, v34);
  }

  v35 = *(v21 + 8);
  if (HIDWORD(a1) >= *(v35 + 124))
  {
    goto LABEL_18;
  }

  v36 = *(v35 + 112);
  if (!v36)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v37 = *(v36 + 168 * HIDWORD(a1));
  if (a1 >= *(v37 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = (v37 + 208 * a1);
  v64 = v38[11];
  v65 = v38[12];
  v66 = v38[13];
  v67 = v38[14];
  v60 = v38[7];
  v61 = v38[8];
  v62 = v38[9];
  v63 = v38[10];
  v56 = v38[3];
  v57 = v38[4];
  v58 = v38[5];
  v59 = v38[6];
  v55 = v38[2];
  v39 = a3[3];
  if (!*(v39 + 116))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = *(v39 + 104);
  if (v40)
  {
    v41 = *v40;
    if ((*(*v40 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v41 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v51 = static OS_dispatch_queue.main.getter();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      v54[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
      v54[5] = v42;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 1107296256;
      v54[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v54[3] = &block_descriptor_951;
      v50 = _Block_copy(v54);

      static DispatchQoS.unspecified.getter();
      v54[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      v43 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v45 = v50;
      v44 = v51;
      MEMORY[0x26D69D2D0](0, v13, v9, v50);
      _Block_release(v45);

      (*(v52 + 8))(v9, v6);
      (*(v43 + 8))(v13, v53);
    }

    v14 = Tree.isLeafView(within:)(*(v41 + 8), v16, v17, v18);
    return v14 & 1;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t buildViewTreeDisplayOrder #1 (for:offset:into:) in Changelist.rebuildDisplayOrder()(unint64_t a1, __int16 a2, Swift::Int a3, uint64_t *a4, void *a5)
{
  v5 = a5;
  if ((a2 & 0x100) != 0)
  {
LABEL_2:
    v10 = a4;
    swift_beginAccess();
    v11 = *(v5 + 19);
    v31 = *(v5 + 17);
    v32[0] = v11;
    *(v32 + 9) = *(v5 + 161);

    v12 = specialized Subforest2.descendants(of:where:)(a1, a2 & 0x1FF, &v31);

    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 40);
      v15 = MEMORY[0x277D837D0];
      do
      {
        v16 = *(v14 - 1);
        v17 = *v14;
        v14 += 16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v18 = v5;
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_26C32F2A0;
        v20._countAndFlagsBits = 32;
        v20._object = 0xE100000000000000;
        *(v19 + 32) = String.init(repeating:count:)(v20, a3);
        *(v19 + 88) = &type metadata for Changelist.Id;
        *(v19 + 56) = v15;
        *(v19 + 64) = v16;
        *(v19 + 72) = v17;
        print(_:separator:terminator:)();
        v5 = v18;

        buildViewTreeDisplayOrder #1 (for:offset:into:) in Changelist.rebuildDisplayOrder()(v16, v17, a3, v10, v18);
        --v13;
      }

      while (v13);
    }
  }

  if ((isLeafView #1 (_:) in Changelist.rebuildDisplayOrder()(a1, a2 & 1, a5) & 1) == 0)
  {
    v24 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = 0;
    v25 = 0;
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  Changelist.subscript.getter(a1, a2 & 1, &v33);
  v22 = specialized ChangelistGroup.open.getter(v33, v34, v35);
  v46[0] = v36;
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v46, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
  v45 = v37;
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v45, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  v23 = v22 ^ 1;
  v24 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  v25 = v23;
  if ((result & 1) == 0)
  {
LABEL_8:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
    v24 = result;
    v25 = v23;
  }

LABEL_10:
  v27 = *(v24 + 16);
  v26 = *(v24 + 24);
  if (v27 >= v26 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
    v24 = result;
  }

  *(v24 + 16) = v27 + 1;
  v28 = v24 + 24 * v27;
  *(v28 + 32) = a3;
  *(v28 + 40) = a1;
  *(v28 + 48) = a2 & 1;
  *a4 = v24;
  if ((v25 & 1) == 0)
  {
    Changelist.subscript.getter(a1, a2 & 1, &v38);
    v29 = specialized ChangelistGroup.open.getter(v38, v39, v40);
    v44 = v41;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v44, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    v43 = v42;
    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v43, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }

    if (v29)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t key path setter for Changelist.subscript(_:) : Changelist(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a1 + 32);
  v10 = *(a1 + 24);
  v11 = v6;
  v7 = *a2;
  outlined init with copy of ResourceSet<Interpreter, ()>(&v10, v9, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v11, v9, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  return Changelist.subscript.setter(a1, v4, v5);
}

uint64_t Changelist.subscript.setter(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1), (v10 & 1) == 0))
  {
    swift_endAccess();
    v19 = *(a1 + 3);
    v32 = *(a1 + 4);
    v33 = v19;
    swift_beginAccess();
    v20 = *(v4 + 64);
    outlined init with copy of ResourceSet<Interpreter, ()>(&v33, &v31, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    outlined init with copy of ResourceSet<Interpreter, ()>(&v32, &v31, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 64) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      *(v4 + 64) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[40 * v23];
    v25 = *a1;
    v26 = a1[1];
    *(v24 + 8) = *(a1 + 4);
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    *(v4 + 64) = v20;
    swift_endAccess();
    v27 = *a1;
    v28 = *(a1 + 8);
    swift_beginAccess();
    v29 = *(v4 + 112);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v27, v28, v30);
    *(v4 + 112) = v31;
    swift_endAccess();
    goto LABEL_12;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(a1 + 3);
  v32 = *(a1 + 4);
  v33 = v12;
  swift_beginAccess();
  v13 = *(v4 + 64);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v33, &v31, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
  outlined init with copy of ResourceSet<Interpreter, ()>(&v32, &v31, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 64) = v13;
  if (result)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  v13 = result;
  *(v4 + 64) = result;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v11 < *(v13 + 16))
  {
    v15 = v13 + 40 * v11;
    v16 = *(v15 + 56);
    v17 = *(v15 + 64);
    v18 = a1[1];
    *(v15 + 32) = *a1;
    *(v15 + 48) = v18;
    *(v15 + 64) = *(a1 + 4);
    *(v4 + 64) = v13;
    swift_endAccess();

LABEL_12:
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v33, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    return outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v32, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
  }

LABEL_15:
  __break(1u);
  return result;
}

void (*Changelist.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xA8uLL);
  }

  *a1 = v7;
  *(v7 + 160) = a3;
  *(v7 + 144) = a2;
  *(v7 + 152) = v3;
  Changelist.subscript.getter(a2, a3 & 1, v7 + 80);
  return Changelist.subscript.modify;
}

void Changelist.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 160);
    v5 = *(v2 + 144);
    v4 = *(v2 + 152);
    *(v2 + 32) = *(v2 + 112);
    v6 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v6;
    *(v2 + 120) = vextq_s8(*(v2 + 24), *(v2 + 24), 8uLL);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + 128, v2 + 136, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
    outlined init with copy of ResourceSet<Interpreter, ()>(v2 + 120, v2 + 136, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
    Changelist.subscript.setter(v2, v5, v3 & 1);
    v7 = *(v2 + 104);
    v8 = *(v2 + 112);
  }

  else
  {
    v9 = *(v2 + 160);
    v10 = *(v2 + 144);
    v11 = *(v2 + 152);
    v12 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v12;
    *(v2 + 72) = *(v2 + 112);
    Changelist.subscript.setter((v2 + 40), v10, v9 & 1);
  }

  free(v2);
}

uint64_t Changelist.setUnabstractedUpdates(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;

  *(v1 + 194) = 1;
  return result;
}

uint64_t Changelist.related(_:update:collectedInto:)(unsigned int a1, unsigned int a2, void *a3)
{
  v4 = v3;
  v86 = a3;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v92 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v92);
  v88 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v90 = *(v91 - 8);
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  v87 = v3;
  if ((a1 & 0x8000) == 0)
  {
    goto LABEL_2;
  }

  result = swift_beginAccess();
  v40 = *(v3 + 24);
  if (!*(v40 + 116))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = *(v40 + 104);
  if (!v41)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = *v41;
  if ((*(*v41 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v42 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v43 = static OS_dispatch_queue.main.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *&v96 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v96 + 1) = v44;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v95 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v95 + 1) = &block_descriptor_132;
    v45 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v46 = v88;
    v47 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v11, v46, v45);
    v48 = v45;
    v4 = v87;
    _Block_release(v48);

    (*(v89 + 8))(v46, v47);
    result = (*(v90 + 8))(v11, v91);
  }

  v49 = *(v42 + 8);
  if (*(v49 + 44) <= a2)
  {
    goto LABEL_36;
  }

  v50 = *(v49 + 32);
  if (!v50)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v51 = v50 + (a2 << 7);
  v52 = *(v51 + 8);
  v53 = *(v51 + 16);
  v54 = *(v51 + 24);
  v55 = *(v51 + 25);
  v58 = v51 + 28;
  v57 = *(v51 + 28);
  v56 = *(v58 + 4);
  LOBYTE(aBlock) = v54;
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v52, v53, v54, v56);
  if (!result)
  {
    goto LABEL_2;
  }

  v59 = *(v4 + 24);
  if (!*(v59 + 116))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v60 = *(v59 + 104);
  if (!v60)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v61 = *v60;
  if ((*(*v60 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v61 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v84 = static OS_dispatch_queue.main.getter();
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *&v96 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v96 + 1) = v62;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v95 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v95 + 1) = &block_descriptor_139;
    v63 = v4;
    v64 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v65 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v66 = v88;
    v67 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = v84;
    MEMORY[0x26D69D2D0](0, v65, v66, v64);
    v69 = v64;
    v4 = v63;
    _Block_release(v69);

    v70 = v66;
    v11 = v65;
    (*(v89 + 8))(v70, v67);
    result = (*(v90 + 8))(v65, v91);
  }

  v71 = *(v61 + 8);
  if (*(v71 + 44) <= a2)
  {
    goto LABEL_38;
  }

  v72 = *(v71 + 32);
  if (!v72)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v73 = v72 + (a2 << 7);
  v74 = *(v73 + 8);
  v75 = *(v73 + 16);
  v76 = *(v73 + 24);
  v77 = *(v73 + 25);
  v80 = v73 + 28;
  v79 = *(v73 + 28);
  v78 = *(v80 + 4);
  LOBYTE(aBlock) = v76;
  v81 = v77 == 0;
  v82 = 256;
  if (v81)
  {
    v82 = 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v74, v75, v82 | (v79 << 32) | v76, v78, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm))
  {
    v12 = 2;
  }

  else
  {
LABEL_2:
    v12 = 1;
  }

  result = swift_beginAccess();
  v14 = *(v4 + 24);
  if (!*(v14 + 116))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = *(v14 + 104);
  if (!v15)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16 = *v15;
  if ((*(*v15 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v16 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *&v96 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v96 + 1) = v18;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v95 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v95 + 1) = &block_descriptor_118;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v20 = v12;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v21 = v88;
    v22 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v11, v21, v19);
    _Block_release(v19);

    v4 = v87;
    v23 = v22;
    v12 = v20;
    (*(v89 + 8))(v21, v23);
    result = (*(v90 + 8))(v11, v91);
  }

  v24 = *(v16 + 8);
  if (*(v24 + 44) <= a2)
  {
    goto LABEL_33;
  }

  v25 = *(v24 + 32);
  if (!v25)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = (v25 + (a2 << 7));
  v98 = v26[4];
  v99 = v26[5];
  v100 = v26[6];
  v101 = v26[7];
  aBlock = *v26;
  v95 = v26[1];
  v96 = v26[2];
  v97 = v26[3];
  v27 = *(v4 + 24);
  if (!*(v27 + 116))
  {
    goto LABEL_34;
  }

  v28 = *(v27 + 104);
  if (!v28)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v29 = *v28;
  if ((*(*v28 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v29 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v30 = static OS_dispatch_queue.main.getter();
    v31 = v89;
    v84 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    v93[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    v93[5] = v32;
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 1107296256;
    v93[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v93[3] = &block_descriptor_125;
    v33 = _Block_copy(v93);

    static DispatchQoS.unspecified.getter();
    v93[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v34 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v35 = v88;
    v36 = v92;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v84;
    MEMORY[0x26D69D2D0](0, v34, v35, v33);
    _Block_release(v33);

    (*(v31 + 8))(v35, v36);
    (*(v90 + 8))(v34, v91);
  }

  v38 = v12;
  v39 = v86;
  Event.related(_:within:limit:collectedInto:clear:includeSelf:)(v85, *(v29 + 8), v38, v86, 1, 0);
  return Changelist.resolve(_:)(v39);
}

unint64_t Event.hasUpdate.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v2, v1, v3, v5);
  v8 = 0;
  if (v6 == result && v5 == HIDWORD(result))
  {
    return v8;
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    v10 = v2 + result;
    v8 = *(v10 + 8);
    v11 = *(v10 + 16);
    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ChangelistGroup.id.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ChangelistGroup.resolved.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ChangelistGroup.updatesByID.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ChangelistGroup.subforest.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);

  swift_beginAccess();
  v4 = *(v3 + 152);
  *a1 = *(v3 + 136);
  a1[1] = v4;
  *(a1 + 25) = *(v3 + 161);
}

unint64_t ChangelistGroup.open.setter(char a1)
{
  v3 = *(v1 + 16);

  swift_beginAccess();
  v4 = *(v3 + 136);

  v6 = **(v4 + 32);
  if (*(v6 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v1, *(v1 + 8));
    if (v7)
    {
      v8 = *(*(v6 + 56) + 4 * result);

      swift_beginAccess();
      v9 = *(v3 + 136);

      v10 = *(v9 + 16) + 40 * v8;
      if (*(v10 + 36))
      {
        v11 = *(v10 + 24);
        if (v11)
        {
          v12 = *v11;

          swift_beginAccess();
          v13 = *(v3 + 136);

          v14 = *v13 + 48 * v12;
          *(v14 + 18) = a1 & 1;
          *(v14 + 19) = 1;
          *(v3 + 194) = 1;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

unint64_t (*ChangelistGroup.open.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = specialized ChangelistGroup.open.getter(*v1, *(v1 + 8), *(v1 + 16)) & 1;
  return ChangelistGroup.open.modify;
}

uint64_t ChangelistGroup.discreet.setter(int a1)
{
  v66 = a1;
  v74 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v74 - 8);
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v65[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = type metadata accessor for DispatchQoS();
  v4 = *(v72 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v67 = v1;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v75 = MEMORY[0x277D84F90];
LABEL_5:
  if (v11)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
LABEL_10:
      v15 = __clz(__rbit64(v11)) | (v13 << 6);
      v16 = *(*(v7 + 48) + 4 * v15);
      v17 = *(*(v7 + 56) + 8 * v15);

      swift_beginAccess();
      v18 = *(v8 + 48);
      v19 = __OFSUB__(0, v18);
      v20 = -v18;
      if (v19)
      {
        goto LABEL_47;
      }

      v11 &= v11 - 1;
      if (v17 < v20)
      {
      }

      else
      {
        swift_beginAccess();
        v21 = *(v8 + 56);

        if (v21 >= v17)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
          }

          v23 = *(v75 + 2);
          v22 = *(v75 + 3);
          if (v23 >= v22 >> 1)
          {
            v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v75);
          }

          v24 = v75;
          *(v75 + 2) = v23 + 1;
          *&v24[4 * v23 + 32] = v16;
        }
      }

      goto LABEL_5;
    }
  }

  v25 = v75;
  v26 = *(v75 + 2);
  if (!v26)
  {
  }

  v27 = 0;
  v70 = v79;
  v69 = (v77 + 8);
  v68 = (v4 + 8);
  v28 = v26 - 1;
  v29 = 32;
  while (2)
  {
    if (v27)
    {
      if (!v28)
      {

        goto LABEL_35;
      }

      v27 = 1;
      goto LABEL_22;
    }

    v30 = *&v25[v29];

    swift_beginAccess();
    v31 = *(v8 + 24);
    if (!*(v31 + 116))
    {
      goto LABEL_45;
    }

    v32 = *(v31 + 104);
    if (!v32)
    {
      goto LABEL_50;
    }

    v33 = *v32;
    if ((*(*v32 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v33 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v77 = static OS_dispatch_queue.main.getter();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      v79[2] = closure #1 in Atomic.subscript.readspecialized partial apply;
      v79[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v79[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v79[1] = &block_descriptor_146;
      v76 = _Block_copy(aBlock);

      v35 = v71;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v36 = v8;
      v37 = v73;
      v38 = v74;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v76;
      v39 = v77;
      MEMORY[0x26D69D2D0](0, v35, v37, v76);
      _Block_release(v40);

      v41 = v37;
      v8 = v36;
      v25 = v75;
      (*v69)(v41, v38);
      (*v68)(v35, v72);
    }

    v42 = *(v33 + 8);

    if (v30 >= *(v42 + 44))
    {
      goto LABEL_46;
    }

    v43 = *(v42 + 32);
    if (!v43)
    {
      goto LABEL_51;
    }

    v27 = *(v43 + (v30 << 7) + 64);
    if (v28)
    {
LABEL_22:
      --v28;
      v29 += 4;
      continue;
    }

    break;
  }

  if ((v27 & 1) == 0)
  {
    return result;
  }

LABEL_35:
  v45 = *v67;
  v46 = *(v67 + 8);

  swift_beginAccess();
  v47 = *(v8 + 136);
  v48 = **(v47 + 32);
  if (!*(v48 + 16))
  {
    goto LABEL_54;
  }

  v49 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
  if ((v50 & 1) == 0)
  {
    goto LABEL_54;
  }

  v51 = *(v47 + 16) + 40 * *(*(v48 + 56) + 4 * v49);
  if (!*(v51 + 36))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v52 = *(v51 + 24);
  if (!v52)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v53 = **(v47 + 32);
  if (!*(v53 + 16))
  {
    goto LABEL_54;
  }

  v54 = (*v47 + 48 * *v52);
  v55 = v54[16];
  v56 = v54[17];
  v57 = v54[18];
  v58 = v54[19];
  v59 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
  if ((v60 & 1) == 0)
  {
    goto LABEL_54;
  }

  v61 = *(v47 + 16) + 40 * *(*(v53 + 56) + 4 * v59);
  if (!*(v61 + 36))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v62 = *(v61 + 24);
  if (v62)
  {
    v63 = v66 & 1;
    v64 = (*v47 + 48 * *v62);
    v64[16] = v55;
    v64[17] = v56;
    v64[18] = v57;
    v64[19] = v58;
    v64[20] = v63;
    v64[21] = 1;
    swift_endAccess();

    *(v8 + 194) = 1;
    return result;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*ChangelistGroup.discreet.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = specialized ChangelistGroup.discreet.getter(*v1, *(v1 + 8), *(v1 + 16)) & 1;
  return ChangelistGroup.discreet.modify;
}

uint64_t ChangelistGroup.updates(mode:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + 16);

  swift_beginAccess();
  v5 = *(v4 + 136);

  v6 = **(v5 + 32);
  if (!*(v6 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(*v2, *(v2 + 8));
  if ((v10 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v5 + 16) + 40 * *(*(v6 + 56) + 4 * v9);
  result = MEMORY[0x277D84F90];
  if (*(v11 + 36))
  {
    v13 = *(v11 + 24);
    if (v13)
    {
      v14 = *v5 + 48 * *v13;
      v15 = *(v14 + 18);
      v16 = *(v14 + 20);
      v19 = MEMORY[0x277D84F90];
      if (v15)
      {
        if (v16)
        {
          v18 = v3;
LABEL_15:
          updates #1 (id:mode:into:) in ChangelistGroup.updates(mode:)(v7, v8, &v18, &v19, v2);
          return v19;
        }

        if ((v3 & 2) == 0)
        {
          v17 = v3 | 8;
          goto LABEL_14;
        }
      }

      else if ((v3 & 2) != 0)
      {
        v17 = 24;
LABEL_14:
        v18 = v17;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t updates #1 (id:mode:into:) in ChangelistGroup.updates(mode:)(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v64 = a2;
  v65 = a1;
  v73 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v73 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = type metadata accessor for DispatchQoS();
  v9 = *(v71 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = *a3;
  v78 = a5;
  v12 = *(a5 + 24);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = *(a5 + 24);

  v19 = 0;
  v74 = MEMORY[0x277D84F90];
  while (v15)
  {
LABEL_10:
    v21 = __clz(__rbit64(v15)) | (v19 << 6);
    v22 = *(*(v12 + 48) + 4 * v21);
    v23 = *(*(v12 + 56) + 8 * v21);
    v24 = *(v78 + 16);

    result = swift_beginAccess();
    v25 = *(v24 + 48);
    v26 = __OFSUB__(0, v25);
    v27 = -v25;
    if (v26)
    {
      goto LABEL_46;
    }

    v15 &= v15 - 1;
    if (v23 < v27)
    {
    }

    else
    {
      swift_beginAccess();
      v28 = *(v24 + 56);

      if (v28 >= v23)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v74 + 2) + 1, 1, v74);
          v74 = result;
        }

        v30 = *(v74 + 2);
        v29 = *(v74 + 3);
        if (v30 >= v29 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v74);
          v74 = result;
        }

        v31 = v74;
        *(v74 + 2) = v30 + 1;
        *&v31[4 * v30 + 32] = v22;
      }
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v20 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  v32 = v74;
  v33 = MEMORY[0x277D84F90];
  v81 = *(v74 + 2);
  if (!v81)
  {
    v36 = MEMORY[0x277D84F90];
    v37 = v78;
    v35 = v77;
LABEL_36:

    v56 = v66;
    result = specialized Array.append<A>(contentsOf:)(v36);
    if ((v35 & 0x10) != 0)
    {
      v57 = *(v37 + 16);

      Changelist.subscript.getter(v65, v64 & 1, &aBlock);

      v58 = specialized ChangelistGroup.children.getter(aBlock, v84, v85);
      v90 = v86;
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v90, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
      v89 = v87;
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v89, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
      v59 = *(v58 + 16);
      if (v59)
      {
        v60 = (v58 + 40);
        do
        {
          v61 = *(v60 - 1);
          v62 = *v60;
          v60 += 16;
          v82 = v35;
          updates #1 (id:mode:into:) in ChangelistGroup.updates(mode:)(v61, v62, &v82, v56, v37);
          --v59;
        }

        while (v59);
      }
    }

    return result;
  }

  v34 = 0;
  v80 = v74 + 32;
  v35 = v77;
  v79 = v77 & 0x18;
  v69 = &v85;
  v68 = (v76 + 8);
  v67 = (v9 + 8);
  v36 = MEMORY[0x277D84F90];
  v37 = v78;
  while (v34 < *(v32 + 2))
  {
    v40 = *&v80[4 * v34];
    if (v79)
    {
      goto LABEL_33;
    }

    v41 = *(v37 + 16);

    result = swift_beginAccess();
    v42 = *(v41 + 24);
    if (!*(v42 + 116))
    {
      goto LABEL_44;
    }

    v43 = *(v42 + 104);
    if (!v43)
    {
      goto LABEL_47;
    }

    v44 = *v43;
    if (*(*v43 + 4) != 1)
    {
      os_unfair_lock_lock_with_options();
      *(v44 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v76 = static OS_dispatch_queue.main.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      v87 = closure #1 in Atomic.subscript.readspecialized partial apply;
      v88 = v45;
      aBlock = MEMORY[0x277D85DD0];
      v84 = 1107296256;
      v85 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v86 = &block_descriptor_918;
      v46 = _Block_copy(&aBlock);

      v47 = v70;
      static DispatchQoS.unspecified.getter();
      aBlock = v33;
      v75 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v48 = v72;
      v49 = v73;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v50 = v76;
      MEMORY[0x26D69D2D0](0, v47, v48, v46);
      v51 = v46;
      v37 = v78;
      _Block_release(v51);

      v52 = v49;
      v33 = MEMORY[0x277D84F90];
      (*v68)(v48, v52);
      v53 = v47;
      v32 = v74;
      (*v67)(v53, v71);
    }

    v54 = *(v44 + 8);

    if (v40 >= *(v54 + 44))
    {
      goto LABEL_45;
    }

    v55 = *(v54 + 32);
    if (!v55)
    {
      goto LABEL_48;
    }

    v35 = v77;
    if ((((v77 & 2) == 0) ^ *(v55 + (v40 << 7) + 64)))
    {
LABEL_33:
      result = swift_isUniquelyReferenced_nonNull_native();
      v90 = v36;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1);
        v36 = v90;
      }

      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      if (v39 >= v38 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v36 = v90;
      }

      *(v36 + 16) = v39 + 1;
      *(v36 + 4 * v39 + 32) = v40;
    }

    if (v81 == ++v34)
    {
      goto LABEL_36;
    }
  }

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
  return result;
}

void protocol witness for Identifiable.id.getter in conformance ChangelistGroup(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t GraphContext.id.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t GraphContext.id.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t GraphContext.interval.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t GraphContext.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

SwiftUITracingSupport::GraphContext::Kind_optional __swiftcall GraphContext.Kind.init(rawValue:)(SwiftUITracingSupport::GraphContext::Kind_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUITracingSupport_GraphContext_Kind_unknownDefault)
  {
    value = SwiftUITracingSupport_GraphContext_Kind_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Parser.Flags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Parser.Flags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t GraphContext.rootSubgraphs.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t GraphContext.globalSubgraph.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t *(*GraphContext.viewType.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = *(v1 + 68);
  *(a1 + 8) = *(v1 + 64);
  *(a1 + 13) = v2;
  *(a1 + 12) = v2;
  return GraphContext.viewType.modify;
}

uint64_t *GraphContext.viewType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 12);
  v4 = *(a1 + 13);
  v6 = *(a1 + 2);
  result = a1 + 1;
  *(v2 + 64) = v6;
  *(v2 + 68) = v3;
  if (a2)
  {
    if (v4)
    {
      return result;
    }

    __break(1u);
  }

  if ((v4 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t GraphContext.describe(state:)(__int128 *a1)
{
  v11 = *a1;
  *v12 = a1[1];
  *&v12[10] = *(a1 + 26);
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 6);
  v6 = *(v1 + 61);
  _StringGuts.grow(_:)(26);
  MEMORY[0x26D69CDB0](0x6F43687061724728, 0xEE0020747865746ELL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(6710642, 0xE300000000000000, v2);
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = specialized InspectionState.describe<A>(_:_:)();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v9 = specialized InspectionState.describe<A>(_:_:)(0x73746F6F72, 0xE500000000000000, v5);
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

uint64_t GraphContext.displayName(within:)(uint64_t a1)
{
  v2 = *(v1 + 61);
  v3 = *(v1 + 68);
  if (v2 <= 1)
  {
    if (*(v1 + 61))
    {
      return 0x6870617247707041;
    }

    v5 = 0x736F486870617247;
    if (*(v1 + 68))
    {
      return 0x736F486870617247;
    }

    goto LABEL_13;
  }

  if (v2 == 2)
  {
    if (*(v1 + 68))
    {
      return 0xD00000000000001ALL;
    }

    v5 = 0x56676E6974736F48;
LABEL_13:
    v15 = v5;
    v6 = *(*a1 + 136);
    v12 = v6[4];
    v13 = v6[5];
    v14 = v6[6];
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[2];
    v11 = v6[3];
    v7 = Interpreter.Storage.Types.subscript.getter(*(v1 + 64));
    MEMORY[0x26D69CDB0](v7);

    return v15;
  }

  if (v2 == 3)
  {
    return 0x2065727574736547;
  }

  else
  {
    return 0x746567646957;
  }
}

uint64_t protocol witness for Mortal.interval.getter in conformance GraphContext()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t protocol witness for Mortal.interval.setter in conformance GraphContext(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

unint64_t T_GraphCreated.model(within:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 56);
  v5 = *(result + 72);
  v111[0] = *(result + 56);
  v111[1] = v5;
  v112[0] = *(result + 88);
  v6 = (result + 72);
  v7 = (result + 84);
  v8 = (result + 88);
  v9 = (result + 104);
  *(v112 + 9) = *(result + 97);
  v10 = (result + 56);
  v11 = (result + 72);
  v12 = (result + 84);
  v13 = (result + 104);
  while (1)
  {
    v14 = *v13;
    if (*v12 >= 2u)
    {
      v15 = *v11;
      if ((*(v15 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v111);
    }

    v11 = (v14 + 16);
    v12 = (v14 + 28);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_74;
  }

  result = v16 + 24 * *(v15 + 8);
  v17 = *(*result + 112);
  if (!v17)
  {
    goto LABEL_66;
  }

  v18 = v17[1];
  v85 = *v17;
  v19 = *(v17 + 6);
  v99 = *(v17 + 5);
  v100[0] = v19;
  *(v100 + 13) = *(v17 + 109);
  v20 = *(v17 + 2);
  v95 = *(v17 + 1);
  v96 = v20;
  v21 = *(v17 + 4);
  v97 = *(v17 + 3);
  v98 = v21;
  v22 = *v18;
  if (!*(*v18 + 16))
  {
    v27 = 0;
    v23 = a2;
LABEL_14:
    v28 = -1;
    v25 = v23;
    v86 = v23;
    goto LABEL_15;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v23 = a2;
  if ((v24 & 1) == 0)
  {
    v27 = 0;
    goto LABEL_14;
  }

  v25 = a2;
  v26 = *(v22 + 56) + 24 * result;
  v27 = *(v26 + 8);
  v86 = *v26;
  v28 = *(v26 + 16);
LABEL_15:
  v29 = v4[1];
  v109[0] = *v4;
  v109[1] = v29;
  v110[0] = v4[2];
  *(v110 + 9) = *(v4 + 41);
  v30 = v4;
  v31 = v6;
  v32 = v7;
  v33 = v9;
  while (1)
  {
    v34 = *v33;
    if (*v32 >= 2u)
    {
      v35 = *v31;
      if ((*(v35 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v34)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v109);
    }

    v31 = (v34 + 16);
    v32 = (v34 + 28);
    v33 = (v34 + 48);
    v30 = v34;
  }

  v36 = *v30;
  if (!v36)
  {
    goto LABEL_75;
  }

  result = v36 + 24 * *(v35 + 8);
  v37 = *(*result + 112);
  if (!v37)
  {
    goto LABEL_67;
  }

  *v37 = v85;
  *(v37 + 8) = v18;
  v38 = v100[0];
  *(v37 + 80) = v99;
  *(v37 + 96) = v38;
  *(v37 + 109) = *(v100 + 13);
  v39 = v96;
  *(v37 + 16) = v95;
  *(v37 + 32) = v39;
  v40 = v98;
  *(v37 + 48) = v97;
  *(v37 + 64) = v40;
  v101[0] = v86;
  v102 = v28;
  v41 = v27 + 1;
  if (v27 == -1)
  {
    __break(1u);
    goto LABEL_62;
  }

  v101[1] = v27 + 1;
  v42 = v4[1];
  v107[0] = *v4;
  v107[1] = v42;
  v108[0] = v4[2];
  *(v108 + 9) = *(v4 + 41);
  v43 = v4;
  v44 = v6;
  v45 = v7;
  v46 = v9;
  while (1)
  {
    v47 = *v46;
    if (*v45 >= 2u)
    {
      v48 = *v44;
      if ((*(v48 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v107);
    }

    v44 = (v47 + 16);
    v45 = (v47 + 28);
    v46 = (v47 + 48);
    v43 = v47;
  }

  v49 = *v43;
  if (!v49)
  {
    goto LABEL_76;
  }

  result = v49 + 24 * *(v48 + 8);
  v50 = *(*result + 112);
  if (!v50)
  {
    goto LABEL_68;
  }

  v51 = v50[5];
  v92 = v50[4];
  v93 = v51;
  v94[0] = v50[6];
  *(v94 + 13) = *(v50 + 109);
  v52 = v50[1];
  v88 = *v50;
  v89 = v52;
  v53 = v50[3];
  v90 = v50[2];
  v91 = v53;
  result = specialized closure #2 in static TraceAddress.rename(address:initialize:within:)(&v88 + 1, v25, v101, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMd, &_ss18_DictionaryStorageCys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AE0G3RefV9referencetGMR);
  v54 = v4[1];
  v105[0] = *v4;
  v105[1] = v54;
  v106[0] = v4[2];
  *(v106 + 9) = *(v4 + 41);
  v55 = v4;
  v56 = v9;
  while (1)
  {
    v57 = *v56;
    if (*v7 >= 2u && (*(*v6 + 12) & 1) == 0)
    {
      break;
    }

    if (!v57)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v105);
    }

    v6 = (v57 + 16);
    v7 = (v57 + 28);
    v56 = (v57 + 48);
    v55 = v57;
  }

  v58 = *v55;
  if (!v58)
  {
    goto LABEL_77;
  }

  result = v58 + 24 * *(*v6 + 8);
  v59 = *(*result + 112);
  if (!v59)
  {
    goto LABEL_69;
  }

  v60 = v89;
  *v59 = v88;
  v59[1] = v60;
  v61 = v91;
  v59[2] = v90;
  v59[3] = v61;
  *(v59 + 109) = *(v94 + 13);
  v62 = v94[0];
  v59[5] = v93;
  v59[6] = v62;
  v59[4] = v92;
  if (!v3[48] && (*v3 & 0xFF00) == 0x200)
  {
    v63 = *(v3 + 22);
    v64 = *(v63 + 116);
    v65 = *v3;
    if (v65 < v64)
    {
      v66 = *(v63 + 104);
      if (!v66)
      {
LABEL_70:
        __break(1u);
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v67 = *(*(*(v66 + 8 * v65) + 8) + 148);
      v68 = v4[1];
      v103[0] = *v4;
      v103[1] = v68;
      v104[0] = v4[2];
      *(v104 + 9) = *(v4 + 41);
      v69 = v3 + 100;
      result = *(v3 + 29);
      while (1)
      {
        v70 = *v9;
        if (result < *v69)
        {
          v71 = (*v8 + 8 * result);
          if ((v71[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v70)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v103);
        }

        v8 = (v70 + 32);
        v69 = (v70 + 44);
        v9 = (v70 + 48);
        v4 = v70;
      }

      if (!*v4)
      {
        goto LABEL_78;
      }

      result = *v4 + 24 * *v71;
      v72 = *(*result + 32);
      if (v65 < v64)
      {
        v73 = *(*(v66 + 8 * v65) + 8);
        v74 = *(v73 + 148);
        if (v74 == *(v73 + 144))
        {
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v74);
        }

        v75 = *(v73 + 136);
        if (!v75)
        {
          goto LABEL_71;
        }

        v76 = *(v73 + 148);
        v77 = v75 + 80 * v76;
        *v77 = v67;
        *(v77 + 8) = v86;
        *(v77 + 16) = v41;
        *(v77 + 24) = 0;
        *(v77 + 32) = v72;
        v78 = MEMORY[0x277D84F90];
        *(v77 + 40) = -1;
        *(v77 + 48) = v78;
        *(v77 + 56) = 0;
        *(v77 + 60) = 1;
        *(v77 + 64) = 0;
        *(v77 + 68) = 1;
        *(v77 + 72) = 0;
        if (v76 != -1)
        {
          *(v73 + 148) = v76 + 1;
          if (v3[48])
          {
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
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
            return result;
          }

          v79 = *v3;
          if (v79 < *(v63 + 116))
          {
            v80 = *(v63 + 104);
            if (v80)
            {
              v81 = *(*(*(v80 + 8 * v79) + 8) + 152);
              v82 = *v81;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v87 = *v81;
              *v81 = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v86, v41, isUniquelyReferenced_nonNull_native, specialized __RawDictionaryStorage.find<A>(_:), &_ss18_DictionaryStorageCy21SwiftUITracingSupport11GraphCtxtIDVAC0F3RefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport11GraphCtxtIDVAC0F3RefVGMR);
              v84 = *v81;
              *v81 = v87;
            }

            goto LABEL_73;
          }

          goto LABEL_65;
        }

LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  return result;
}

uint64_t T_GraphNeedsUpdateV0.model(within:)(uint64_t a1, unint64_t a2, int a3)
{
  v5 = *(a1 + 116);
  if (!a3)
  {
    v5 = 0;
  }

  *(a1 + 160) = v5;
  *(a1 + 164) = a3 != 0;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 168) = a3 == 0;
  *(a1 + 172) = v6;
  v7 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  specialized Interpreter.Iterator.observe<A>(invalidation:)(v7);
  if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_31;
  }

  v9 = v8;
  v10 = (a1 + 56);
  v11 = *(a1 + 72);
  v40[0] = *(a1 + 56);
  v40[1] = v11;
  v41[0] = *(a1 + 88);
  *(v41 + 9) = *(a1 + 97);
  v12 = (a1 + 72);
  v13 = (a1 + 84);
  v14 = (a1 + 104);
  while (1)
  {
    v15 = *v14;
    if (*v13 >= 2u)
    {
      v16 = *v12;
      if ((*(v16 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v40);
    }

    v12 = (v15 + 16);
    v13 = (v15 + 28);
    v14 = (v15 + 48);
    v10 = v15;
  }

  v17 = *v10;
  if (!v17)
  {
    goto LABEL_33;
  }

  v18 = *(*(v17 + 24 * *(v16 + 8)) + 112);
  if (!v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = *(v18 + 32);
  v20 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v19;
  v39 = *v19;
  *v19 = 0x8000000000000000;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v25 = *(v22 + 16);
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_29;
  }

  v28 = v23;
  if (*(v22 + 24) >= v27)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
      v22 = v39;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
    v22 = v39;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_34:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v24 = v29;
  }

  v31 = *v19;
  *v19 = v22;

  v32 = *v19;
  if (v28)
  {
    goto LABEL_24;
  }

  v32[(v24 >> 6) + 8] |= 1 << v24;
  *(v32[6] + 4 * v24) = v7;
  *(v32[7] + 8 * v24) = MEMORY[0x277D84F90];
  v33 = v32[2];
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32[2] = v35;
LABEL_24:
  v3 = v32[7];
  v22 = *(v3 + 8 * v24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8 * v24) = v22;
  if ((result & 1) == 0)
  {
LABEL_29:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
    v22 = result;
    *(v3 + 8 * v24) = result;
  }

  v38 = *(v22 + 16);
  v37 = *(v22 + 24);
  if (v38 >= v37 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v22);
    v22 = result;
    *(v3 + 8 * v24) = result;
  }

  *(v22 + 16) = v38 + 1;
  *(v22 + 4 * v38 + 32) = v9;
  return result;
}

uint64_t T_GraphNeedsUpdate.model(within:)(uint64_t a1, unint64_t a2)
{
  v4 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11GraphCtxtIDV_Tt2g5(a2, a1);
  specialized Interpreter.Iterator.observe<A>(invalidation:)(v4);
  if ((v5 & 0x100000000) != 0)
  {
    goto LABEL_26;
  }

  v6 = v5;
  v7 = (a1 + 56);
  v8 = *(a1 + 72);
  v37[0] = *(a1 + 56);
  v37[1] = v8;
  v38[0] = *(a1 + 88);
  *(v38 + 9) = *(a1 + 97);
  v9 = (a1 + 72);
  v10 = (a1 + 84);
  v11 = (a1 + 104);
  while (1)
  {
    v12 = *v11;
    if (*v10 > 1u)
    {
      v13 = *v9;
      if ((*(v13 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v37);
    }

    v9 = (v12 + 16);
    v10 = (v12 + 28);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = *(*(v14 + 24 * *(v13 + 8)) + 112);
  if (!v15)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = *(v15 + 32);
  v17 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v16;
  v36 = *v16;
  *v16 = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_24;
  }

  v25 = v20;
  if (*(v19 + 24) >= v24)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
      v19 = v36;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport8GraphRefVSayAC05EventG0VGGMR);
    v19 = v36;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v25 & 1) != (v27 & 1))
    {
LABEL_29:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v21 = v26;
  }

  v28 = *v16;
  *v16 = v19;

  v29 = *v16;
  if (v25)
  {
    goto LABEL_19;
  }

  v29[(v21 >> 6) + 8] |= 1 << v21;
  *(v29[6] + 4 * v21) = v4;
  *(v29[7] + 8 * v21) = MEMORY[0x277D84F90];
  v30 = v29[2];
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29[2] = v32;
LABEL_19:
  v2 = v29[7];
  v19 = *(v2 + 8 * v21);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 8 * v21) = v19;
  if ((result & 1) == 0)
  {
LABEL_24:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
    *(v2 + 8 * v21) = result;
  }

  v35 = *(v19 + 16);
  v34 = *(v19 + 24);
  if (v35 >= v34 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v19);
    v19 = result;
    *(v2 + 8 * v21) = result;
  }

  *(v19 + 16) = v35 + 1;
  *(v19 + 4 * v35 + 32) = v6;
  return result;
}

void specialized Interpreter.Iterator.observe<A>(invalidation:)(__int16 a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v225[0] = *(v2 + 56);
  v225[1] = v3;
  v226[0] = *(v2 + 88);
  *(v226 + 9) = *(v2 + 97);
  v4 = v2 + 88;
  v5 = v2 + 100;
  v6 = *(v2 + 29);
  v7 = v2 + 56;
  v8 = (v2 + 104);
  while (1)
  {
    v9 = *v8;
    if (v6 < *v5)
    {
      v10 = (*v4 + 8 * v6);
      if ((v10[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v9)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(*(v2 + 29), 0, v225);
    }

    v4 = (v9 + 32);
    v5 = (v9 + 44);
    v8 = (v9 + 48);
    v7 = v9;
  }

  if (!*v7)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(a1, a2, *(*(*v7 + 24 * *v10) + 32), 0);
  v12 = *v2;
  v13 = v2[48];
  v14 = *(v2 + 72);
  v223[0] = *(v2 + 56);
  v223[1] = v14;
  v224[0] = *(v2 + 88);
  *(v224 + 9) = *(v2 + 97);
  v15 = (v2 + 72);
  v16 = v2 + 84;
  v17 = (v2 + 56);
  v202 = v2 + 72;
  v205 = v2 + 84;
  v18 = (v2 + 104);
  v19 = *(v2 + 22);
  while (1)
  {
    v20 = *v18;
    if (*v16)
    {
      v21 = *v15;
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v223);
    }

    v15 = (v20 + 16);
    v16 = (v20 + 28);
    v18 = (v20 + 48);
    v17 = v20;
  }

  v22 = *v17;
  if (!v22)
  {
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v200 = v11;
  v203 = v2 + 104;
  v204 = v2 + 56;
  v201 = v2;
  v23 = *(*(v22 + 24 * *v21) + 112);
  if (!v23)
  {
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
    __break(1u);
LABEL_242:
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

  v24 = *(*(v23 + 32) + 8);
  v25 = *(v24 + 16);
  v26 = (v24 + 48 * v25 - 16);
  do
  {
    if (v25-- < 1)
    {
LABEL_92:
      v104 = *v201;
      v207 = v201[48];
      v105 = v204;
      v106 = v205;
      v107 = v204[1];
      v215[0] = *v204;
      v215[1] = v107;
      v216[0] = v204[2];
      *(v216 + 9) = *(v204 + 41);
      v108 = v202;
      v109 = v203;
      while (1)
      {
        v110 = *v109;
        if (*v106)
        {
          v111 = *v108;
          if ((v111[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v110)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v215);
        }

        v108 = (v110 + 16);
        v106 = (v110 + 28);
        v109 = (v110 + 48);
        v105 = v110;
      }

      v112 = *v105;
      if (!v112)
      {
        goto LABEL_249;
      }

      v113 = *(*(v112 + 24 * *v111) + 112);
      if (!v113)
      {
        goto LABEL_234;
      }

      v114 = *(*(v113 + 32) + 8);
      v115 = *(v114 + 16);

      if (!v115)
      {
LABEL_116:

        v129 = v201;
        v131 = v203;
        v130 = v204;
LABEL_132:
        v149 = *v129;
        v208 = v129[48];
        v150 = v130[1];
        v212 = *v130;
        v213 = v150;
        v214[0] = v130[2];
        *(v214 + 9) = *(v130 + 41);
        v151 = v131;
        v152 = v205;
        v153 = v202;
        for (i = v130; ; i = v155)
        {
          v155 = *v151;
          if (*v152)
          {
            v156 = *v153;
            if ((v156[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v155)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v212);
          }

          v153 = (v155 + 16);
          v152 = (v155 + 28);
          v151 = (v155 + 48);
        }

        if (!*i)
        {
          goto LABEL_250;
        }

        v157 = *(*(*i + 24 * *v156) + 112);
        if (!v157)
        {
          goto LABEL_235;
        }

        v158 = *(*(v157 + 32) + 8);
        v159 = *(v158 + 16);

        if (!v159)
        {
LABEL_156:

          v172 = v202;
          v174 = v203;
          v173 = v204;
LABEL_172:
          v192 = v173[1];
          v209 = *v173;
          v210 = v192;
          v211[0] = v173[2];
          *(v211 + 9) = *(v173 + 41);
          v193 = v205;
          while (1)
          {
            v194 = *v174;
            if (*v193)
            {
              if ((*(*v172 + 4) & 1) == 0)
              {
                break;
              }
            }

            if (!v194)
            {
              specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, &v209);
            }

            v172 = (v194 + 16);
            v193 = (v194 + 28);
            v174 = (v194 + 48);
            v173 = v194;
          }

          if (!*v173)
          {
            goto LABEL_251;
          }

          v195 = *(*(*v173 + 24 * **v172) + 112);
          if (!v195)
          {
            goto LABEL_236;
          }

          v196 = *(v195 + 32);
          v197 = *(v196 + 24);
          v198 = *(v196 + 32);
          outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v197);
          Interpreter.Iterator.finalize(update:observer:)(v200, v197, v198);
          outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v197);
          LOBYTE(v225[0]) = 0;
          return;
        }

        v160 = 48 * v159 - 16;
        while (v159 <= *(v158 + 16))
        {
          if (v208)
          {
            goto LABEL_226;
          }

          if (*(v19 + 116) <= v149)
          {
            goto LABEL_193;
          }

          v161 = *(v19 + 104);
          if (!v161)
          {
            goto LABEL_227;
          }

          v162 = *(v158 + v160);
          v163 = *(*(v161 + 8 * v149) + 8);
          if (v162 >= *(v163 + 44))
          {
            goto LABEL_194;
          }

          v164 = *(v163 + 32);
          if (!v164)
          {
            goto LABEL_228;
          }

          v165 = v164 + (v162 << 7);
          v166 = *(v165 + 8);
          v169 = *(v165 + 28);
          v168 = *(v165 + 32);
          v167 = *(v165 + 24);
          *(v165 + 25);
          v170 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm(v166, *(v165 + 16), v167, v168);
          if (v169 == v170 && v168 == HIDWORD(v170))
          {
            v209 = 0u;
            v210 = 0u;
            v211[0] = xmmword_26C32F2B0;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v209, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);

            if (v201[48])
            {
              goto LABEL_258;
            }

            v175 = *v201;
            v174 = v203;
            v173 = v204;
            v172 = v202;
            if (v175 >= *(v19 + 116))
            {
              goto LABEL_210;
            }

            v176 = *(v19 + 104);
            if (!v176)
            {
              goto LABEL_259;
            }

            v177 = *(*(v176 + 8 * v175) + 8);
            v178 = *(v177 + 44);
            if (v162 >= v178)
            {
              goto LABEL_211;
            }

            v179 = *(v177 + 32);
            if (!v179)
            {
              goto LABEL_260;
            }

            if (v200 >= v178)
            {
              goto LABEL_212;
            }

            v180 = (v179 + (v162 << 7));
            v181 = (v179 + (v200 << 7));
            v182 = *v181;
            v183 = v180[31];
            if (v183 == v180[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v183);
            }

            v184 = *(v180 + 14);
            if (!v184)
            {
              goto LABEL_261;
            }

            v185 = v180[31];
            v186 = v184 + 8 * v185;
            *v186 = -20480;
            *(v186 + 4) = v182;
            if (v185 == -1)
            {
              goto LABEL_213;
            }

            v180[31] = v185 + 1;
            v187 = *v180;
            v188 = v181[31];
            if (v188 == v181[30])
            {
              specialized UnsafeArray.growToCapacity(_:)(2 * v188);
            }

            v189 = *(v181 + 14);
            if (v189)
            {
              v190 = v181[31];
              v191 = v189 + 8 * v190;
              *v191 = 28672;
              *(v191 + 4) = v187;
              if (v190 == -1)
              {
                goto LABEL_214;
              }

              v181[31] = v190 + 1;
              goto LABEL_172;
            }

            goto LABEL_262;
          }

          if (HIDWORD(v170) >= v168)
          {
            goto LABEL_196;
          }

          if (v167)
          {
            goto LABEL_231;
          }

          if (!v166)
          {
            goto LABEL_232;
          }

          --v159;
          outlined init with copy of Event.Action(v166 + v170 + 8, &v209);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v209, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
          v160 -= 48;
          if (v159 + 1 < 2)
          {
            goto LABEL_156;
          }
        }

        goto LABEL_192;
      }

      v116 = 48 * v115 - 16;
      while (v115 <= *(v114 + 16))
      {
        if (v207)
        {
          goto LABEL_223;
        }

        if (*(v19 + 116) <= v104)
        {
          goto LABEL_190;
        }

        v117 = *(v19 + 104);
        if (!v117)
        {
          goto LABEL_224;
        }

        v118 = *(v114 + v116);
        v119 = *(*(v117 + 8 * v104) + 8);
        if (v118 >= *(v119 + 44))
        {
          goto LABEL_191;
        }

        v120 = *(v119 + 32);
        if (!v120)
        {
          goto LABEL_225;
        }

        v121 = v120 + (v118 << 7);
        v123 = *(v121 + 8);
        v122 = *(v121 + 16);
        v124 = *(v121 + 25);
        v126 = *(v121 + 28);
        v125 = *(v121 + 32);
        LOBYTE(v209) = *(v121 + 24);
        v127 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm(v123, v122, v209, v125);
        if (v126 == v127 && v125 == HIDWORD(v127))
        {
          v212 = 0u;
          v213 = 0u;
          v214[0] = xmmword_26C32F2B0;
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v212, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);

          v129 = v201;
          if (v201[48])
          {
            goto LABEL_253;
          }

          v132 = *v201;
          v131 = v203;
          v130 = v204;
          if (v132 >= *(v19 + 116))
          {
            goto LABEL_205;
          }

          v133 = *(v19 + 104);
          if (!v133)
          {
            goto LABEL_254;
          }

          v134 = *(*(v133 + 8 * v132) + 8);
          v135 = *(v134 + 44);
          if (v118 >= v135)
          {
            goto LABEL_206;
          }

          v136 = *(v134 + 32);
          if (!v136)
          {
            goto LABEL_255;
          }

          if (v200 >= v135)
          {
            goto LABEL_207;
          }

          v137 = (v136 + (v118 << 7));
          v138 = (v136 + (v200 << 7));
          v139 = *v138;
          v140 = v137[31];
          if (v140 == v137[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v140);
          }

          v141 = *(v137 + 14);
          if (!v141)
          {
            goto LABEL_256;
          }

          v142 = v137[31];
          v143 = v141 + 8 * v142;
          *v143 = -23552;
          *(v143 + 4) = v139;
          if (v142 == -1)
          {
            goto LABEL_208;
          }

          v137[31] = v142 + 1;
          v144 = *v137;
          v145 = v138[31];
          if (v145 == v138[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v145);
          }

          v146 = *(v138 + 14);
          if (v146)
          {
            v147 = v138[31];
            v148 = v146 + 8 * v147;
            *v148 = 25600;
            *(v148 + 4) = v144;
            if (v147 == -1)
            {
              goto LABEL_209;
            }

            v138[31] = v147 + 1;
            goto LABEL_132;
          }

          goto LABEL_257;
        }

        if (HIDWORD(v127) >= v125)
        {
          goto LABEL_195;
        }

        if (v209)
        {
          goto LABEL_229;
        }

        if (!v123)
        {
          goto LABEL_230;
        }

        --v115;
        outlined init with copy of Event.Transaction(v123 + v127 + 8, &v212);
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v212, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
        v116 -= 48;
        if (v115 + 1 < 2)
        {
          goto LABEL_116;
        }
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
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
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if ((v25 + 1) > *(v24 + 16))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v13)
    {
      goto LABEL_215;
    }

    if (*(v19 + 116) <= v12)
    {
      goto LABEL_182;
    }

    v28 = *(v19 + 104);
    if (!v28)
    {
      goto LABEL_216;
    }

    v29 = *v26;
    v30 = *(*(v28 + 8 * v12) + 8);
    if (v29 >= *(v30 + 44))
    {
      goto LABEL_183;
    }

    v31 = *(v30 + 32);
    if (!v31)
    {
      goto LABEL_217;
    }

    v32 = v31 + (v29 << 7);
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
    v35 = *(v32 + 25);
    v37 = *(v32 + 28);
    v36 = *(v32 + 32);
    LOBYTE(v221[0]) = *(v32 + 24);
    v38 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v34, v33, v221[0], v36);
    if (v37 == v38 && v36 == HIDWORD(v38))
    {
      goto LABEL_32;
    }

    if (HIDWORD(v38) >= v36)
    {
      goto LABEL_184;
    }

    if (v221[0])
    {
      goto LABEL_218;
    }

    v26 -= 12;
  }

  while (v34);
  __break(1u);
LABEL_32:
  if (v201[48])
  {
    goto LABEL_237;
  }

  v40 = *v201;
  if (v40 >= *(v19 + 116))
  {
    goto LABEL_197;
  }

  v41 = *(v19 + 104);
  if (!v41)
  {
    goto LABEL_238;
  }

  v42 = *(*(v41 + 8 * v40) + 8);
  v43 = v204[1];
  v221[0] = *v204;
  v221[1] = v43;
  v222[0] = v204[2];
  *(v222 + 9) = *(v204 + 41);
  v44 = v204;
  v45 = v202;
  v46 = v205;
  v47 = v203;
  while (1)
  {
    v48 = *v47;
    if (*v46)
    {
      v49 = *v45;
      if ((v49[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v48)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v221);
    }

    v45 = (v48 + 16);
    v46 = (v48 + 28);
    v47 = (v48 + 48);
    v44 = v48;
  }

  v50 = *v44;
  if (!v50)
  {
    goto LABEL_263;
  }

  v51 = *(*(v50 + 24 * *v49) + 112);
  if (!v51)
  {
    goto LABEL_239;
  }

  if (!*(*(*(v51 + 32) + 8) + 16))
  {
    goto LABEL_198;
  }

  if (v201[48])
  {
    goto LABEL_240;
  }

  v52 = *v201;
  if (v52 >= *(v19 + 116))
  {
    goto LABEL_199;
  }

  v53 = *(v19 + 104);
  if (!v53)
  {
    goto LABEL_241;
  }

  v54 = *(*(v53 + 8 * v52) + 8);
  v55 = v204[1];
  v219[0] = *v204;
  v219[1] = v55;
  v220[0] = v204[2];
  *(v220 + 9) = *(v204 + 41);
  v56 = v204;
  v57 = v202;
  v58 = v205;
  v59 = v203;
  while (1)
  {
    v60 = *v59;
    if (*v58)
    {
      v61 = *v57;
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v219);
    }

    v57 = (v60 + 16);
    v58 = (v60 + 28);
    v59 = (v60 + 48);
    v56 = v60;
  }

  v62 = *v56;
  if (v62)
  {
    v206 = v54;
    v199 = v42;
    v63 = *(*(v62 + 24 * *v61) + 112);
    if (!v63)
    {
      goto LABEL_242;
    }

    v64 = *(*(v63 + 32) + 8);
    v65 = *(v64 + 16);
    v66 = 48 * v65 - 16;
    while (v65 > 0)
    {
      if (v65 > *(v64 + 16))
      {
        goto LABEL_185;
      }

      if (*(v19 + 116) <= v52)
      {
        goto LABEL_186;
      }

      v67 = *(v19 + 104);
      if (!v67)
      {
        goto LABEL_220;
      }

      v68 = *(v64 + v66);
      v69 = *(*(v67 + 8 * v52) + 8);
      if (v68 >= *(v69 + 44))
      {
        goto LABEL_187;
      }

      v70 = *(v69 + 32);
      if (!v70)
      {
        goto LABEL_221;
      }

      v71 = v70 + (v68 << 7);
      v73 = *(v71 + 8);
      v72 = *(v71 + 16);
      v74 = *(v71 + 25);
      v76 = *(v71 + 28);
      v75 = *(v71 + 32);
      LOBYTE(v217[0]) = *(v71 + 24);
      v77 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v73, v72, v217[0], v75);
      if (v76 == v77 && v75 == HIDWORD(v77))
      {
        goto LABEL_70;
      }

      if (HIDWORD(v77) >= v75)
      {
        goto LABEL_188;
      }

      if (v217[0])
      {
        goto LABEL_222;
      }

      v66 -= 48;
      --v65;
      if (!v73)
      {
        __break(1u);
LABEL_70:
        v79 = v204;
        v80 = v205;
        v81 = v204[1];
        v217[0] = *v204;
        v217[1] = v81;
        v218[0] = v204[2];
        *(v218 + 9) = *(v204 + 41);
        v82 = v202;
        v83 = v203;
        while (1)
        {
          v84 = *v83;
          if (*v80)
          {
            v85 = *v82;
            if ((v85[1] & 1) == 0)
            {
              break;
            }
          }

          if (!v84)
          {
            specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v217);
          }

          v82 = (v84 + 16);
          v80 = (v84 + 28);
          v83 = (v84 + 48);
          v79 = v84;
        }

        v86 = *v79;
        if (!v86)
        {
          goto LABEL_265;
        }

        v87 = *(*(v86 + 24 * *v85) + 112);
        if (!v87)
        {
          goto LABEL_243;
        }

        v88 = *(*(v87 + 32) + 8);
        if (v65 > *(v88 + 16))
        {
          goto LABEL_200;
        }

        v89 = *(v88 + v66);
        if (v89 >= *(v206 + 44))
        {
          goto LABEL_201;
        }

        v90 = *(v206 + 32);
        if (!v90)
        {
          goto LABEL_244;
        }

        if (v200 >= *(v199 + 44))
        {
          goto LABEL_202;
        }

        v91 = *(v199 + 32);
        if (v91)
        {
          v92 = (v90 + (v89 << 7));
          v93 = (v91 + (v200 << 7));
          v94 = *v93;
          v95 = v92[31];
          if (v95 == v92[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v95);
          }

          v96 = *(v92 + 14);
          if (!v96)
          {
            goto LABEL_246;
          }

          v97 = v92[31];
          v98 = v96 + 8 * v97;
          *v98 = -24575;
          *(v98 + 4) = v94;
          if (v97 == -1)
          {
            goto LABEL_203;
          }

          v92[31] = v97 + 1;
          v99 = *v92;
          v100 = v93[31];
          if (v100 == v93[30])
          {
            specialized UnsafeArray.growToCapacity(_:)(2 * v100);
          }

          v101 = *(v93 + 14);
          if (v101)
          {
            v102 = v93[31];
            v103 = v101 + 8 * v102;
            *v103 = 24577;
            *(v103 + 4) = v99;
            if (v102 == -1)
            {
              goto LABEL_204;
            }

            v93[31] = v102 + 1;
            goto LABEL_92;
          }

          goto LABEL_247;
        }

        goto LABEL_245;
      }
    }

    goto LABEL_219;
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
}