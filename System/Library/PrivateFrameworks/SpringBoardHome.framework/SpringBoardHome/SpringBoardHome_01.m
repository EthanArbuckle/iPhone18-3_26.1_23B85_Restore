uint64_t sub_1BEB528F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1BEE474CC();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_1BEE474CC();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_1BEB527E4(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BEB52A10(unint64_t *a1, unint64_t a2)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = *a1;
  swift_bridgeObjectRetain_n();
  v8 = sub_1BEB502DC(v7, a2, &unk_1F3D44240, sub_1BEDFBF34, sub_1BEB52D94);
  if (v2)
  {

    return v3;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      goto LABEL_51;
    }

    v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_41:

    return v3;
  }

  v3 = v8;
  v27[4] = v6;
  v28 = a1;
  v10 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == sub_1BEE474CC())
      {
        goto LABEL_40;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB4EA90](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v13 = v12;
    v29 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v27[2] = &v29;
    v14 = sub_1BEB52D94(sub_1BEB52250, v27, a2);

    if ((v14 & 1) == 0)
    {
      if (v3 != v10)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB4EA90](v3, v7);
          v16 = MEMORY[0x1BFB4EA90](v10, v7);
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3 >= v17)
          {
            goto LABEL_49;
          }

          if (v10 >= v17)
          {
            goto LABEL_50;
          }

          v18 = *(v7 + 32 + 8 * v10);
          v15 = *(v7 + 32 + 8 * v3);
          v16 = v18;
        }

        v19 = v16;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1BEE2451C(v7);
          v20 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v7 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v19;

        if ((v7 & 0x8000000000000000) != 0 || v20)
        {
          v7 = sub_1BEE2451C(v7);
          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
LABEL_40:

            goto LABEL_41;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v10 >= *(v21 + 16))
        {
          goto LABEL_47;
        }

        v23 = v21 + 8 * v10;
        v24 = *(v23 + 32);
        *(v23 + 32) = v15;

        *v28 = v7;
      }

LABEL_9:
      v11 = __OFADD__(v3++, 1);
      if (v11)
      {
        goto LABEL_46;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
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
LABEL_51:
  v26 = sub_1BEE474CC();

  return v26;
}

uint64_t sub_1BEB52D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void SBTreeNodeInformOfAncestryChange(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 ancestryDidChange];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [v1 treeChildren];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        SBTreeNodeInformOfAncestryChange(*(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void SBTreeNodeSetParent(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 setTreeParent:a2];
  SBTreeNodeInformOfAncestryChange(v3);
}

uint64_t sub_1BEB53078(char a1)
{
  v2 = v1;
  v3 = &selRef_libraryIconViewControllerForPresenter_;
  v4 = [v1 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v5 = sub_1BEE471AC();

  if (v5 >> 62)
  {
    goto LABEL_88;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v35 = [v2 requiredTrailingEmptyListCount];
  v7 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v8 = [v2 v3[88]];
  v9 = sub_1BEE471AC();

  v40 = (v9 >> 62);
  v36 = v6;
  v37 = v2;
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    v34 = sub_1BEE474CC();
    if (v34)
    {
      v11 = v34;
      v12 = sub_1BEE474CC();
      v2 = sub_1BEE474CC();
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v2;
LABEL_6:
      v39 = 0;
      v42 = 0;
      v13 = 0;
      v14 = v9 & 0xC000000000000001;
      v44 = v9 + 32;
      v43 = MEMORY[0x1E69E7CC0];
      v3 = (v9 >> 62);
      v38 = v9;
      while (1)
      {
        v15 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
          goto LABEL_64;
        }

        if (v11 == v12)
        {
          if (v3)
          {
            v13 = sub_1BEE474CC();
          }

          else
          {
            v13 = *(v10 + 16);
          }
        }

        v16 = __OFSUB__(v13--, 1);
        if (v16)
        {
          goto LABEL_65;
        }

        if (v15 < 0 || v15 >= v2)
        {
          goto LABEL_66;
        }

        if (v14)
        {
          v17 = MEMORY[0x1BFB4EA90](v11 - 1, v9);
        }

        else
        {
          if (v15 >= *(v10 + 16))
          {
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            v6 = sub_1BEE474CC();
            goto LABEL_3;
          }

          v17 = *(v44 + 8 * v15);
        }

        v18 = v17;
        if (([v17 isEmpty] & 1) == 0)
        {

          if (v11 == 1)
          {
            goto LABEL_67;
          }

          while (2)
          {
            v11 = v15 - 1;
            if (__OFSUB__(v15, 1))
            {
              goto LABEL_64;
            }

            if (v12 == v15)
            {
              if (!v3)
              {
                v13 = *(v10 + 16);
                goto LABEL_28;
              }

              v20 = sub_1BEE474CC();
              v13 = v20 - 1;
              if (__OFSUB__(v20, 1))
              {
                goto LABEL_65;
              }
            }

            else
            {
LABEL_28:
              v16 = __OFSUB__(v13--, 1);
              if (v16)
              {
                goto LABEL_65;
              }
            }

            if (v11 < 0 || v11 >= v2)
            {
              goto LABEL_66;
            }

            if (v14)
            {
              v19 = MEMORY[0x1BFB4EA90](v15 - 1, v9);
            }

            else
            {
              if (v11 >= *(v10 + 16))
              {
                goto LABEL_86;
              }

              v19 = *(v44 + 8 * v11);
            }

            v18 = v19;
            if ([v19 isEmpty])
            {
              v42 = 1;
              if ((a1 & 1) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_47;
            }

            --v15;
            if (!v11)
            {
              goto LABEL_67;
            }

            continue;
          }
        }

        if (v42)
        {
          v42 = 1;
        }

        else
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_87;
          }

          ++v39;
          v42 = 0;
        }

        --v11;
        if (a1)
        {
LABEL_47:
          v21 = v43 >> 62;
          if (v43 >> 62)
          {
            result = sub_1BEE474CC();
            if (result < 0)
            {
              goto LABEL_98;
            }

            result = sub_1BEE474CC();
            if (result < 0)
            {
              goto LABEL_99;
            }

            v26 = sub_1BEE474CC();
            v23 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:

              v7 = v43;
              if ((v43 & 0x8000000000000000) != 0)
              {
                v6 = v36;
                v2 = v37;
                v3 = &selRef_libraryIconViewControllerForPresenter_;
                v27 = v39;
              }

              else
              {
                v6 = v36;
                v2 = v37;
                v3 = &selRef_libraryIconViewControllerForPresenter_;
                v27 = v39;
                if ((v43 & 0x4000000000000000) == 0)
                {
                  goto LABEL_69;
                }
              }

LABEL_95:
              v28 = sub_1BEE474CC();
              goto LABEL_70;
            }
          }

          else
          {
            v22 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v23 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_63;
            }
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v21)
            {
LABEL_55:
              sub_1BEE474CC();
              v9 = v38;
            }

            else
            {
LABEL_54:
              v9 = v38;
            }

            v24 = sub_1BEE475DC();
            goto LABEL_57;
          }

          if (v21)
          {
            goto LABEL_55;
          }

          if (v23 > *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_54;
          }

          v24 = v43;
          v9 = v38;
LABEL_57:
          sub_1BEB5364C(0, 0, 1, v18);

          v43 = v24;
          v45 = v24;
          v3 = v40;
          if (!v11)
          {
            goto LABEL_67;
          }
        }

        else
        {
LABEL_46:
          if (v13)
          {
            goto LABEL_47;
          }

          if (!v11)
          {
            goto LABEL_67;
          }
        }
      }
    }
  }

  v27 = 0;
  if (v7 >> 62)
  {
    goto LABEL_95;
  }

LABEL_69:
  v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_70:
  if (v28 >= 1 && v28 == [v2 visibleListCount])
  {

LABEL_81:
    sub_1BEB50DA8(v45);

    if (![v2 visibleListCount])
    {
    }

    sub_1BEB54724();
    v31 = [v2 v3[88]];
    v32 = sub_1BEE471AC();

    if (v32 >> 62)
    {
      v33 = sub_1BEE474CC();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6 != v33;
  }

  v29 = v35;
  if (v35 < 1)
  {
    goto LABEL_81;
  }

  if (v27 < 1)
  {
    goto LABEL_81;
  }

  result = v28 - v27;
  if (v28 < v27)
  {
    goto LABEL_81;
  }

  if (v35 >= v27)
  {
    v29 = v27;
  }

  v30 = result + v29;
  if (__OFADD__(result, v29))
  {
    __break(1u);
  }

  else if (v30 >= result)
  {
    sub_1BEB529E8(result, v30);
    goto LABEL_81;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

char *sub_1BEB5364C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1BEE474CC();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1BEE474CC();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1BEB53980(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1BEB539C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC8500);
    v3 = sub_1BEE476AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BEB1DAFC(v5, v6);
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

uint64_t sub_1BEB53B2C()
{
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB4EA90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_1BEE475FC();
        sub_1BEE4761C();
        sub_1BEE4762C();
        sub_1BEE4760C();
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v10;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v8;
}

id sub_1BEB53CB8(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  a3();

  sub_1BEB20D28(0, a4);
  v7 = sub_1BEE4719C();

  return v7;
}

void sub_1BEB53D74(char a1)
{
  if (v1[OBJC_IVAR___SBFolder__isIconStateDirty] == (a1 & 1))
  {
    return;
  }

  if (!v1[OBJC_IVAR___SBFolder__isIconStateDirty])
  {
    v8[4] = sub_1BEDD5CF0;
    v8[5] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1BEE39C64;
    v8[3] = &block_descriptor_162;
    v7 = _Block_copy(v8);

    [v1 enumerateListsUsingBlock_];
    _Block_release(v7);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v2 = [*&v1[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v3 = sub_1BEE471AC();

  if (v3 >> 62)
  {
    v4 = sub_1BEE474CC();
    if (v4)
    {
LABEL_5:
      if (v4 >= 1)
      {
        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1BFB4EA90](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v6 respondsToSelector_])
          {
            [v6 folderIconStateDidDirty_];
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_16;
      }

LABEL_20:
      __break(1u);
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }
  }

LABEL_16:
}

id sub_1BEB54250(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1BEE4708C();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

void sub_1BEB54398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BEB54448()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1BEB544A0()
{
  if ((*(v0 + OBJC_IVAR___SBHIconModel_isIconStateReallyDirty) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___SBHIconModel_isIconStateReallyDirty) = 1;
    v1 = OBJC_IVAR___SBHIconModel_autosaveTimer;
    if (!*(v0 + OBJC_IVAR___SBHIconModel_autosaveTimer) && [*(v0 + OBJC_IVAR___SBHIconModel_autosaveDisableAssertions) count] <= 0)
    {
      *(v0 + v1) = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_autosaveTimerDidFire_ selector:0 userInfo:0 repeats:0.5];

      MEMORY[0x1EEE66BB8]();
    }
  }
}

uint64_t sub_1BEB54560(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEB541FC;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_796;
  v7 = _Block_copy(aBlock);

  [v2 enumerateListsWithOptions:1 usingBlock:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1BEB546E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BEB54724()
{
  v1 = [v0 trailingEmptyListCount];
  v2 = [v0 requiredTrailingEmptyListCount];
  if (v1 < v2)
  {
    v3 = v2;
    v4 = &v2[v1];
    if (__OFADD__(v1, v2))
    {
      __break(1u);
    }

    else if (v4 >= v1)
    {
      if (v1 == v4)
      {
        return;
      }

      if (v1 < v4)
      {
        do
        {

          --v3;
        }

        while (v3);
        return;
      }

LABEL_10:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t __SBLogLightAngle_block_invoke()
{
  SBLogLightAngle___logObj = os_log_create(*MEMORY[0x1E69D4388], "LightAngle");

  return MEMORY[0x1EEE66BB8]();
}

double SBHRectGrow(int a1, double result, double a3, double a4, double a5, double a6)
{
  if (a1)
  {
    v6 = result;
  }

  else
  {
    v6 = result - a6;
  }

  if (a1 <= 1)
  {
    return v6;
  }

  return result;
}

BOOL SBRootFolderPageStateVerticalGroupContainsRootFolderPageState(uint64_t a1, uint64_t a2)
{
  if ((a2 + 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_1BEE85A80[a2 + 1];
  }

  return v2 == a1;
}

void sub_1BEB58FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB5973C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___SBHIconModel_widgetIconsByIdentifier;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v34 = v4;

  v10 = 0;
  v11 = &selRef_supportsCachedIconLookup;
  v12 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
  v32 = v9;
  v33 = v5;
  while (1)
  {
    if (!v8)
    {
      do
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_36;
        }

        if (v13 >= v9)
        {

          return;
        }

        v8 = *(v5 + 8 * v13);
        ++v10;
      }

      while (!v8);
      v10 = v13;
    }

    v14 = *(*(v34 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    v15 = [v14 iconDataSources];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC82D0);
    v16 = sub_1BEE471AC();

    v17 = v16;
    v37 = v14;
    v35 = v10;
    v18 = v16 >> 62 ? sub_1BEE474CC() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = (v8 - 1) & v8;
    if (v18)
    {
      break;
    }

LABEL_4:

LABEL_5:
    v9 = v32;
    v5 = v33;
    v10 = v35;
    v8 = v36;
  }

  v19 = 0;
  v20 = v17 & 0xC000000000000001;
  v21 = v17 & 0xFFFFFFFFFFFFFF8;
  v40 = v17 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    v22 = MEMORY[0x1BFB4EA90](v19, v17);
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_34;
    }

LABEL_20:
    if ([v22 v12[129]])
    {
      v24 = v17;
      v25 = v11;
      v26 = [v22 v11[291]];
      v27 = sub_1BEE4708C();
      v29 = v28;

      if (v27 == a1 && v29 == a2)
      {

        swift_unknownObjectRelease();
        v11 = v25;
        v12 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
        goto LABEL_31;
      }

      v31 = sub_1BEE4770C();

      swift_unknownObjectRelease();
      v11 = v25;
      v12 = &_OBJC_LABEL_PROTOCOL___SBHFileStackIconImageProviderDataSourceDelegate;
      v17 = v24;
      v21 = v40;
      if (v31)
      {

LABEL_31:
        sub_1BEE475FC();
        sub_1BEE4761C();
        sub_1BEE4762C();
        sub_1BEE4760C();
        goto LABEL_5;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v19;
    if (v23 == v18)
    {
      goto LABEL_4;
    }
  }

  if (v19 >= *(v21 + 16))
  {
    goto LABEL_35;
  }

  v22 = *(v17 + 8 * v19 + 32);
  swift_unknownObjectRetain();
  v23 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_20;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

id SBLogWidgetCleanup()
{
  if (SBLogWidgetCleanup_onceToken != -1)
  {
    SBLogWidgetCleanup_cold_1();
  }

  v1 = SBLogWidgetCleanup___logObj;

  return v1;
}

uint64_t __SBLogWidgetCleanup_block_invoke()
{
  SBLogWidgetCleanup___logObj = os_log_create(*MEMORY[0x1E69D4388], "WidgetCleanup");

  return MEMORY[0x1EEE66BB8]();
}

id SBHGetApplicationIconImageWithImageAppearance(void *a1, void *a2, char a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69A8A00];
  v12 = a2;
  v13 = a1;
  v14 = [[v11 alloc] initWithBundleIdentifier:v13];

  v15 = SBHGetIconImageWithImageAppearance(v14, v12, a3, a4, a5, a6);

  return v15;
}

id SBLogIconImageCache()
{
  if (SBLogIconImageCache_onceToken != -1)
  {
    SBLogIconImageCache_cold_1();
  }

  v1 = SBLogIconImageCache___logObj;

  return v1;
}

id SBHGetApplicationIconImageWithTraitCollection(void *a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a1;
  v13 = [v11 sbh_iconImageAppearanceFromTraitCollection:a2];
  v14 = SBHGetApplicationIconImageWithImageAppearance(v12, v13, a3, a4, a5, a6);

  return v14;
}

uint64_t sub_1BEB5D07C(uint64_t a1, int a2)
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

uint64_t sub_1BEB5D09C(uint64_t result, int a2, int a3)
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

void *sub_1BEB5D0E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1BEB5D114(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1BEB5D1C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BEB5D1F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BEB5D2A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BEDC6538(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1BEB5D2E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BEE4708C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BEB5D324(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BEB5D344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1BEB5D36C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5D3E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5D41C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5D45C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BEB5D558()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5D590()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEB5D5C8()
{
  v1 = sub_1BEE469DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v4 | 7);
}

uint64_t sub_1BEB5D6B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BEB5D700()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BEB5D738()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5D770()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5D7A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEB5D9B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5D9EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5DA6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5DAA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BEB5DB28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5DB90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BEB5DBC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1BEB5DC38()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5DC80()
{
  MEMORY[0x1BFB50950](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5DCB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5DD10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5DD70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5DDB8()
{
  MEMORY[0x1BFB50950](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5DDF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEB5DE30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5DE68()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5DEA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BEB5DEDC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEB5DF28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5DF80()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEB5E028()
{
  v1 = sub_1BEE46C3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BEB5E130()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5E194()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5E1CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEB5E214()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BEB5E290(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1BEB62174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB62288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB62350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB64554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

id SBHStringForRootFolderPageStateTransitionSnapshot(uint64_t *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = SBStringForRootFolderPageState(*a1);
  v4 = a1[2];
  v5 = SBStringForRootFolderPageState(a1[1]);
  v6 = [v2 stringWithFormat:@"%@(%lu) -> %@(%lu): %f", v3, v4, v5, a1[3], a1[4]];

  return v6;
}

double SBHUnionFloatRange(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double SBHIntersectionFloatRange(double result, double a2, double a3, double a4)
{
  v4 = a3 + a4;
  if (result <= a3 && a3 < result + a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0.0;
  }

  if (a3 > result || result >= v4)
  {
    return v5;
  }

  return result;
}

double SBHPositionInFloatRange(uint64_t a1, long double a2, double a3)
{
  if (a1 == 2)
  {
    v5 = a2 + a3;

    return nexttoward(v5, a2);
  }

  else if (a1 == 1)
  {
    return a2 + nexttoward(a3 * 0.5, a2);
  }

  else
  {
    result = 0.0;
    if (!a1)
    {
      return a2;
    }
  }

  return result;
}

double SBHRTLAwarePositionInFloatRange(uint64_t a1, int a2, long double a3, double a4)
{
  v4 = 2;
  if (a2)
  {
    v4 = 0;
  }

  v5 = 1;
  v6 = 2;
  if (!a2)
  {
    v6 = 0;
  }

  if (a1)
  {
    v6 = 0;
  }

  if (a1 != 1)
  {
    v5 = v6;
  }

  if (a1 == 2)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return SBHPositionInFloatRange(v7, a3, a4);
}

void SBIconResizeHandleMetricsForIconResizingSettings(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v3 = 0.0;
  if (([v25 resizeHandleFollowsIconCornerRadius] & 1) == 0)
  {
    [v25 resizeHandleCornerRadius];
    v3 = v4;
  }

  v5 = [v25 resizeHandleUsesTruncatedSectorHitArea];
  if (v5)
  {
    [v25 resizeHandleTruncatedSectorHitAreaTopInset];
    v7 = v6;
    [v25 resizeHandleTruncatedSectorHitAreaLeadingInset];
    v9 = v8;
    [v25 resizeHandleTruncatedSectorHitAreaBottomInset];
    v11 = v10;
    [v25 resizeHandleTruncatedSectorHitAreaTrailingInset];
  }

  else
  {
    [v25 resizeHandleHitAreaTopInset];
    v7 = v13;
    [v25 resizeHandleHitAreaLeadingInset];
    v9 = v14;
    [v25 resizeHandleHitAreaBottomInset];
    v11 = v15;
    [v25 resizeHandleHitAreaTrailingInset];
  }

  v16 = v12;
  [v25 resizeHandleLineWidth];
  v18 = v17;
  [v25 resizeHandleLineLength];
  v20 = v19;
  [v25 resizeHandleHorizontalOffset];
  v22 = v21;
  [v25 resizeHandleVerticalOffset];
  *&v24 = v7;
  *(&v24 + 1) = v9;
  SBIconResizeHandleMetricsMake(v5, a2, v18, v20, v3, v22, v23, v24, v11, v16);
}

double SBHIconListLayoutFolderIconGridCellIconImageInfo(void *a1)
{
  v1 = a1;
  [v1 iconImageInfo];
  v2 = SBHIconListLayoutFolderIconGridCellSize(v1);

  return v2;
}

SBHIconGridSizeClassSizeMap *SBHIconListLayoutIconGridSizeClassSizes(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconGridSizeClassSizesForOrientation:a2];
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [v3 iconGridSizeClassSizes];
  }

  else
  {
    v4 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  }

  v5 = v4;

  return v5;
}

id SBHIconListLayoutSupportedIconGridSizeClasses(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 supportedIconGridSizeClasses];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
  }
  v2 = ;

  return v2;
}

uint64_t SBHIconListLayoutSupportsIconGridSizeClass(void *a1, void *a2)
{
  v3 = a2;
  v4 = SBHIconListLayoutSupportedIconGridSizeClasses(a1);
  v5 = [v4 containsGridSizeClass:v3];

  return v5;
}

BOOL SBHIconListLayoutListGridSizeMatchesListLayout(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = SBHIconListLayoutListGridSize(a1, a3);
  v7 = SBHIconListLayoutListGridSize(v5, a3);

  return SBHIconGridSizeEqualToIconGridSize(v6, v7);
}

BOOL SBHIconListLayoutProviderListGridSizeMatchesListLayoutProvider(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = [a1 layoutForIconLocation:v7];
  v10 = [v8 layoutForIconLocation:v7];

  v11 = SBHIconListLayoutListGridSizeMatchesListLayout(v9, v10, a4);
  return v11;
}

uint64_t SBHCalculateHorizontalInsetWithDynamicMargins(CGFloat a1, CGFloat a2)
{
  v4.size.height = a2;
  v4.size.width = a1;
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  CGRectGetWidth(v4);

  return UIRoundToScale();
}

uint64_t SBHIconListLayoutMaximumIconCount(void *a1)
{
  v1 = a1;
  v2 = [v1 numberOfRowsForOrientation:1];
  v3 = [v1 numberOfColumnsForOrientation:1];

  return v3 * v2;
}

double SBHIconListLayoutExtraIconImageSizeForGridSizeClass(void *a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x1E695F060];
  v6 = a3;
  v7 = a1;
  v8 = SBHIconListLayoutListIconSpacingWithDefault(v7, a2, v5);
  v10 = SBHIconListLayoutExtraIconImageSizeForGridSizeClassAndSpacingAndOrientation(v7, 1, v6, v8, v9, 0.0);

  return v10;
}

double SBHIconListLayoutExtraIconImageSizeForGridSizeClassAndSpacingAndOrientation(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v10 = a1;
  v11 = a3;
  v12 = v11;
  v13 = *MEMORY[0x1E695F060];
  if (@"SBHIconGridSizeClassDefault" != v11 && ([(__CFString *)v11 isEqualToString:@"SBHIconGridSizeClassDefault"]& 1) == 0)
  {
    v14 = SBHIconListLayoutIconGridSizeClassSizes(v10, a2);
    v15 = [v14 gridSizeForGridSizeClass:v12];
    v16 = SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v10, a2, @"SBHIconGridSizeClassDefault");
    v18 = v17;
    v19 = SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(v10, a2, v12);
    if (a6 <= 0.0)
    {
      v22 = v15;
      v23 = v15 - 1;
      v24 = 0.0;
    }

    else
    {
      [v10 layoutInsetsForOrientation:1];
      v22 = v15;
      v23 = v15 - 1;
      v24 = SBHIconListLayoutCalculateHorizontalColumnBump(v23, [v10 numberOfColumnsForOrientation:1], v16, a4, a6 - v20 - v21, v18);
    }

    v13 = v19 - (a4 * v23 + v16 * v22 + v24);
  }

  return v13;
}

double SBHIconListLayoutLargestExtraIconImageSize(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[SBHIconGridSizeClassDomain globalDomain];
  v5 = SBHIconListLayoutLargestExtraIconImageSizeInDomain(v3, a2, v4);

  return v5;
}

double SBHIconListLayoutLargestExtraIconImageSizeInDomain(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = SBHIconListLayoutSupportedIconGridSizeClasses(v5);
  v8 = MEMORY[0x1E695F060];
  v9 = SBHIconListLayoutListIconSpacingWithDefault(v5, a2, *MEMORY[0x1E695F060]);
  v11 = v10;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v24 = &unk_1BEECC529;
  v25 = *v8;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SBHIconListLayoutLargestExtraIconImageSizeInDomain_block_invoke;
  v15[3] = &unk_1E8089698;
  v12 = v5;
  v17 = &v21;
  v18 = a2;
  v19 = v9;
  v20 = v11;
  v16 = v12;
  [v7 enumerateGridSizeClassesInDomain:v6 usingBlock:v15];
  v13 = v22[4];

  _Block_object_dispose(&v21, 8);
  return v13;
}

void sub_1BEB8172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SBHIconListLayoutLargestExtraIconImageSizeInDomain_block_invoke(uint64_t a1, void *a2)
{
  v3 = SBHIconListLayoutExtraIconImageSizeForGridSizeClassAndSpacingAndOrientation(*(a1 + 32), *(a1 + 48), a2, *(a1 + 56), *(a1 + 64), 0.0);
  v5 = *(*(a1 + 40) + 8);
  if (v3 > *(v5 + 32))
  {
    *(v5 + 32) = v3;
    v5 = *(*(a1 + 40) + 8);
  }

  if (v4 > *(v5 + 40))
  {
    *(v5 + 40) = v4;
  }
}

id SBHIconListLayoutLookUpGridSizeClassWithLargestIconImageSize(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = SBHIconListLayoutLookUpGridSizeClassWithLargestIconImageSizeInDomain(v1, v2);

  return v3;
}

id SBHIconListLayoutLookUpGridSizeClassWithLargestIconImageSizeInDomain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = @"SBHIconGridSizeClassDefault";
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SBHIconListLayoutLookUpGridSizeClassWithLargestIconImageSizeInDomain_block_invoke;
  v8[3] = &unk_1E80896C0;
  v5 = v3;
  v9 = v5;
  v10 = v12;
  v11 = &v13;
  [v4 enumerateGridSizeClassesUsingBlock:v8];
  v6 = v14[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void sub_1BEB8197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SBHIconListLayoutLookUpGridSizeClassWithLargestIconImageSizeInDomain_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(*(a1 + 32), 1, v8);
  v6 = v4 * v5;
  v7 = *(*(a1 + 40) + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

id SBHIconListLayoutLookUpGridSizeClassWithWidestIconImageSize(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = SBHIconListLayoutLookUpGridSizeClassWithWidestIconImageSizeInDomain(v1, v2);

  return v3;
}

id SBHIconListLayoutLookUpGridSizeClassWithWidestIconImageSizeInDomain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = @"SBHIconGridSizeClassDefault";
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SBHIconListLayoutLookUpGridSizeClassWithWidestIconImageSizeInDomain_block_invoke;
  v8[3] = &unk_1E80896C0;
  v5 = v3;
  v9 = v5;
  v10 = v12;
  v11 = &v13;
  [v4 enumerateGridSizeClassesUsingBlock:v8];
  v6 = v14[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void sub_1BEB81C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __SBHIconListLayoutLookUpGridSizeClassWithWidestIconImageSizeInDomain_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(*(a1 + 32), 1, v6);
  v5 = *(*(a1 + 40) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

id SBHIconListLayoutLookUpGridSizeClassWithTallestIconImageSize(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = SBHIconListLayoutLookUpGridSizeClassWithTallestIconImageSizeInDomain(v1, v2);

  return v3;
}

id SBHIconListLayoutLookUpGridSizeClassWithTallestIconImageSizeInDomain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = @"SBHIconGridSizeClassDefault";
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SBHIconListLayoutLookUpGridSizeClassWithTallestIconImageSizeInDomain_block_invoke;
  v8[3] = &unk_1E80896C0;
  v5 = v3;
  v9 = v5;
  v10 = v12;
  v11 = &v13;
  [v4 enumerateGridSizeClassesUsingBlock:v8];
  v6 = v14[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void sub_1BEB81E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __SBHIconListLayoutLookUpGridSizeClassWithTallestIconImageSizeInDomain_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(*(a1 + 32), 1, v6);
  v5 = *(*(a1 + 40) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

double SBHIconListLayoutNonDefaultIconGridSizeClassLayoutInsets(void *a1, uint64_t a2)
{
  v3 = a1;
  SBHIconListLayoutExtraIconImageSizeForGridSizeClass(v3, a2, @"SBHIconGridSizeClassLarge");
  v5 = v4 * 0.5;
  [v3 layoutInsetsForOrientation:a2];
  v7 = v6;

  return v7 - v5;
}

double SBHIconListLayoutNonDefaultIconGridSizeClassLayoutInsetsWithIconSpacing(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = SBHIconListLayoutIconGridSizeClassSizes(v9, a2);
  v11 = @"SBHIconGridSizeClassLarge";
  if ([v10 hasGridSizeForGridSizeClass:@"SBHIconGridSizeClassLarge"] & 1) != 0 || (v11 = @"SBHIconGridSizeClassMedium", (objc_msgSend(v10, "hasGridSizeForGridSizeClass:", @"SBHIconGridSizeClassMedium")))
  {
    v12 = v11;
    SBHIconListLayoutExtraIconImageSizeForGridSizeClassAndSpacingAndOrientation(v9, 1, v12, a3, a4, a5);
    v14 = v13 * 0.5;
    [v9 layoutInsetsForOrientation:a2];
    v16 = v15 - v14;
  }

  else
  {
    v16 = *MEMORY[0x1E69DDCE0];
  }

  return v16;
}

id SBHIconListLayoutLabelVisualConfiguration(void *a1)
{
  v1 = *MEMORY[0x1E69DDA98];
  v2 = a1;
  v3 = [v1 preferredContentSizeCategory];
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = SBHIconListLayoutLabelVisualConfigurationForContentSizeCategory(v2, v3, IsBoldTextEnabled);

  return v5;
}

SBHIconLabelVisualConfiguration *SBHIconListLayoutLabelVisualConfigurationForContentSizeCategory(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 labelVisualConfigurationForContentSizeCategory:v6 options:a3];
  }

  else
  {
    v7 = objc_alloc_init(SBHIconLabelVisualConfiguration);
  }

  v8 = v7;

  return v8;
}

__CFString *SBHIconListLayoutRotatedLayoutGridCellClusterSizeClass(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 rotatedLayoutClusterGridSizeClass];
  }

  else
  {
    v2 = @"SBHIconGridSizeClassDefault";
  }

  v3 = v2;

  return v3;
}

double SBHIconListLayoutEditingAnimationStrengthForGridSizeClass(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v4 editingAnimationStrengthForGridSizeClass:v3];
    v6 = v5;
  }

  else
  {
    v7 = SBHIconListLayoutIconGridSizeClassSizes(v4, 1);

    v8 = [v7 gridSizeForGridSizeClass:v3];
    v9 = HIWORD(v8);
    if (HIWORD(v8) <= v8)
    {
      v9 = v8;
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    v6 = 1.0 / v9;
    v4 = v7;
  }

  return v6;
}

__CFString *SBHStringForDragRejectionReason(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E8089708[a1];
  }
}

__CFString *SBHStringForLightSourceActivityLevel(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"active";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %lu>", a1];
    }
  }

  else
  {
    v2 = @"idle";
  }

  return v2;
}

void sub_1BEB85EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL SBVisibleColumnRangeIsEmpty(unint64_t *a1)
{
  v1 = *a1;
  result = 1;
  if (*a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a1[2];
    if (v2 >= v1 && (v1 != v2 || a1[3] >= a1[1]))
    {
      return 0;
    }
  }

  return result;
}

uint64_t SBVisibleColumnRangeMaxIconListIndex(uint64_t *a1)
{
  v2 = *a1;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1[2] + 1;
  }

  return result;
}

uint64_t SBVisibleColumnRangeGetNextColumn(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = *a1;
    v8 = a1[2];
    v9 = *a1 != 0x7FFFFFFFFFFFFFFFLL && v8 >= v7;
    if (v9 && ((v10 = a1[3], v11 = a1[1], v7 == v8) ? (v12 = v10 >= v11) : (v12 = 1), v12 && (v10 + 1 < a2 ? (v13 = v10 + 1) : (++v8, v13 = 0), v8 < a3)))
    {
      if (a4)
      {
        *a4 = v8;
      }

      if (a5)
      {
        *a5 = v13;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SBVisibleColumnRangeGetPreviousColumn(unint64_t *a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v5 = 0;
  if (!a2 || !a3)
  {
    return v5;
  }

  v6 = *a1;
  if (*a1)
  {
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = a1[1];
      goto LABEL_7;
    }

    return 0;
  }

  v7 = a1[1];
  if (!v7)
  {
    return 0;
  }

LABEL_7:
  v8 = a1[2];
  if (v8 < v6 || v6 == v8 && a1[3] < v7)
  {
    return 0;
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = a2;
  }

  if (a4)
  {
    *a4 = (__PAIR128__(v6, v7) - 1) >> 64;
  }

  if (a5)
  {
    *a5 = v10 - 1;
  }

  return 1;
}

BOOL SBVisibleColumnRangeContainsIconListIndex(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL || v3 < v2)
  {
    return 0;
  }

  return (v2 != v3 || a1[3] >= a1[1]) && v2 <= a2 && v3 >= a2;
}

void SBVisibleColumnRangeEnumerateContainedIconListIndexes(unint64_t *a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = *a1;
  v6 = a1[2];
  if (*a1 != 0x7FFFFFFFFFFFFFFFLL && v6 >= v5)
  {
    v8 = a1[3] < a1[1] && v5 == v6;
    v9 = v6 + 1;
    if (!v8 && v5 < v9)
    {
      do
      {
        if (v5 == *a1)
        {
          v11 = a1[1];
          v12 = a2 - v11;
        }

        else
        {
          v11 = 0;
          if (v5 == a1[2])
          {
            v12 = a1[3];
          }

          else
          {
            v12 = -1;
          }
        }

        v13[2](v13, v5++, v11, v12);
      }

      while (v9 != v5);
    }
  }
}

BOOL SBVisibleColumnRangeContainsVisibleColumnRange(void *a1, void *a2)
{
  result = 0;
  if (*a1 <= *a2 && (*a1 != *a2 || a1[1] <= a2[1]))
  {
    v2 = a1[2];
    v3 = a2[2];
    if (v2 >= v3 && (v2 != v3 || a1[3] >= a2[3]))
    {
      return 1;
    }
  }

  return result;
}

uint64_t *SBVisibleColumnRangeUnion@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = *result;
  if (*result >= *a2)
  {
    if (*result <= *a2)
    {
      *a3 = v3;
      v4 = result[1];
      if (v4 >= a2[1])
      {
        v4 = a2[1];
      }
    }

    else
    {
      *a3 = *a2;
      v4 = a2[1];
    }
  }

  else
  {
    *a3 = v3;
    v4 = result[1];
  }

  *(a3 + 8) = v4;
  v5 = result[2];
  v6 = a2[2];
  if (v5 <= v6)
  {
    if (v5 >= v6)
    {
      *(a3 + 16) = v5;
      v7 = result[3];
      if (v7 <= a2[3])
      {
        v7 = a2[3];
      }
    }

    else
    {
      *(a3 + 16) = v6;
      v7 = a2[3];
    }
  }

  else
  {
    *(a3 + 16) = v5;
    v7 = result[3];
  }

  *(a3 + 24) = v7;
  return result;
}

__CFString *SBStringFromVisibleColumnRange(void *a1)
{
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = @"none";
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%lu, %lu}..{%lu, %lu}", *a1, a1[1], a1[2], a1[3], v1];
  }

  return v3;
}

Class __getCCUICustomContentModuleBackgroundViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ControlCenterUIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ControlCenterUIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8089868;
    v6 = 0;
    ControlCenterUIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ControlCenterUIKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CCUICustomContentModuleBackgroundViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCUICustomContentModuleBackgroundViewControllerClass_block_invoke_cold_1();
  }

  getCCUICustomContentModuleBackgroundViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ControlCenterUIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ControlCenterUIKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SBHPerformanceFlagEnabled(uint64_t a1)
{
  if (_SBHPerformanceFlagsHomeScreenDefaults_onceToken != -1)
  {
    SBHPerformanceFlagEnabled_cold_1();
  }

  v2 = _SBHPerformanceFlagsHomeScreenDefaults_homeScreenDefaults;
  v3 = 0;
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldExcludeDockShadow];
          goto LABEL_39;
        }
      }

      else if (a1 == 7)
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldExcludeSearchShadow];
          goto LABEL_39;
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        v4 = [v2 shouldExcludeAllClearGlassShadows];
        goto LABEL_39;
      }

LABEL_40:
      v3 = 0;
      goto LABEL_41;
    }

    switch(a1)
    {
      case 9:
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldDisableParallax];
          goto LABEL_39;
        }

        goto LABEL_40;
      case 10:
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldDisableParallaxOnPageControl];
          goto LABEL_39;
        }

        goto LABEL_40;
      case 11:
        v5 = [MEMORY[0x1E695E000] standardUserDefaults];
        v3 = [v5 BOOLForKey:@"SBDisableClockIconSecondsHand"];

        break;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldDisableDockSpecular];
          goto LABEL_39;
        }
      }

      else if (a1 == 4)
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldDisableFolderSpecular];
          goto LABEL_39;
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        v4 = [v2 shouldDisableGlassDock];
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    switch(a1)
    {
      case 0:
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldUseFlatIconsEverywhere];
          goto LABEL_39;
        }

        goto LABEL_40;
      case 1:
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldDisableSpecularEverywhere];
          goto LABEL_39;
        }

        goto LABEL_40;
      case 2:
        if (objc_opt_respondsToSelector())
        {
          v4 = [v2 shouldDisableWidgetSpecular];
LABEL_39:
          v3 = v4;
          break;
        }

        goto LABEL_40;
    }
  }

LABEL_41:

  return v3;
}

void sub_1BEB8B340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEB8C2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8C474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8C5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8C754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8C878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8CEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8CFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8D174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8D2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8DA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEB8F5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8F83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB8FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB918C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB93940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEB959E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB98610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB9DAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB9F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEB9F6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBHScreenTypeForCurrentDevice_block_invoke_3()
{
  v0 = MGIsDeviceOfType();
  v1 = MGIsDeviceOfType();
  v2 = MGIsDeviceOfType();
  v3 = MGIsDeviceOfType();
  v4 = MGIsDeviceOfType();
  v5 = MGIsDeviceOfType();
  return (v2 | v3 | v0 | v1 | v4 | v5 | MGIsDeviceOfType()) & 1;
}

uint64_t __SBHScreenTypeForCurrentDevice_block_invoke_4()
{
  SBFEffectiveDisplayCornerRadius();

  return BSFloatEqualToFloat();
}

uint64_t SBHScreenTypeForDeviceAndDisplayContexts(void *a1, void *a2)
{
  v3 = a1;
  v4 = *MEMORY[0x1E69DECC8];
  v5 = a2;
  v6 = [v3 deviceInfoIntegerValueForKey:v4];
  LODWORD(v4) = [v3 deviceInfoIntegerValueForKey:*MEMORY[0x1E69DECB0]];
  v7 = [v5 artworkSubtype];
  v8 = [v5 displayConfiguration];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v5 displayConfiguration];

  [v17 pointScale];
  v19 = v18;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __SBHScreenTypeForDeviceAndDisplayContexts_block_invoke_3;
  v23[3] = &unk_1E808A148;
  v24 = v3;
  v20 = v3;
  v21 = _SBHScreenTypeLookup(v4, v6, v7, &__block_literal_global_16, &__block_literal_global_18, v23, v10, v12, v14, v16, v19);

  return v21;
}

uint64_t __SBHScreenTypeForDeviceAndDisplayContexts_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) deviceInfoFloatValueForKey:*MEMORY[0x1E69DECB8]];

  return BSFloatEqualToFloat();
}

uint64_t SBHScreenTypeLookup(unsigned int a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9)
{
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __SBHScreenTypeLookup_block_invoke;
  v16[3] = &__block_descriptor_35_e5_B8__0l;
  v17 = a4;
  v18 = BYTE2(a4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SBHScreenTypeLookup_block_invoke_2;
  v13[3] = &__block_descriptor_35_e5_B8__0l;
  v14 = a4;
  v15 = BYTE2(a4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SBHScreenTypeLookup_block_invoke_3;
  v10[3] = &__block_descriptor_35_e5_B8__0l;
  v11 = a4;
  v12 = BYTE2(a4);
  return _SBHScreenTypeLookup(a1, a2, a3, v16, v13, v10, a5, a6, a7, a8, a9);
}

id _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(void *a1)
{
  v1 = MEMORY[0x1E69D41B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = objc_alloc(MEMORY[0x1E69D41C8]);
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = @"apps.ipad.landscape";
  }

  else
  {
    v7 = @"apps.iphone";
  }

  v8 = [v4 initWithSystemImageName:v7];
  [v3 setIcon:v8];

  [v3 setLocalizedTitle:v2];
  [v3 setType:@"com.apple.springboardhome.application-shortcut-item.rearrange-icons"];

  return v3;
}

id _SBCreateShareApplicationShortcutItemWithLocalizedTitle(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69D41B8];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  v7 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"square.and.arrow.up"];
  [v6 setIcon:v7];

  [v6 setLocalizedTitle:v5];
  [v6 setType:@"com.apple.springboardhome.application-shortcut-item.share"];
  if (v3)
  {
    v10 = *MEMORY[0x1E697BB38];
    v11[0] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v6 setUserInfo:v8];
  }

  return v6;
}

id _SBCreateHideAppSuggestionApplicationShortcutItemWithLocalizedTitle(void *a1)
{
  v1 = MEMORY[0x1E69D41B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"minus.circle"];
  [v3 setIcon:v4];

  [v3 setLocalizedTitle:v2];
  [v3 setType:@"com.apple.springboardhome.application-shortcut-item.hide-app-suggestion"];

  return v3;
}

id _SBCreateRemoveAppApplicationShortcutItemWithLocalizedTitle(void *a1)
{
  v1 = MEMORY[0x1E69D41B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"minus.circle"];
  [v3 setIcon:v4];

  [v3 setLocalizedTitle:v2];
  [v3 setType:@"com.apple.springboardhome.application-shortcut-item.remove-app"];

  return v3;
}

id _SBCreateConfigureStackApplicationShortcutItemWithLocalizedTitle(void *a1)
{
  v1 = MEMORY[0x1E69D41B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"rectangle.stack"];
  [v3 setIcon:v4];

  [v3 setLocalizedTitle:v2];
  [v3 setType:@"com.apple.springboardhome.application-shortcut-item.configure-stack"];

  return v3;
}

id _SBCreateConfigureWidgetApplicationShortcutItemWithLocalizedTitle(void *a1)
{
  v1 = MEMORY[0x1E69D41B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"info.circle"];
  [v3 setIcon:v4];

  [v3 setLocalizedTitle:v2];
  [v3 setType:@"com.apple.springboardhome.application-shortcut-item.configure-widget"];

  return v3;
}

id _SBCreateRemoveWidgetApplicationShortcutItemWithLocalizedTitle(void *a1)
{
  v1 = MEMORY[0x1E69D41B8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"minus.circle"];
  [v3 setIcon:v4];

  [v3 setLocalizedTitle:v2];
  [v3 setType:@"com.apple.springboardhome.application-shortcut-item.remove-widget"];

  return v3;
}

id SBHContainingBundleRecordForWidgetWithBundleIdentifier(void *a1)
{
  v1 = MEMORY[0x1E69635D0];
  v2 = a1;
  v3 = [[v1 alloc] initWithBundleIdentifier:v2 error:0];

  v4 = [v3 containingBundleRecord];

  return v4;
}

id SBHContainingBundleIdentifierForWidgetWithBundleIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(v1);
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1BEBABCB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 112));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, char *newValue)
{

  objc_setProperty_nonatomic_copy(a1, newValue, newValue, 40);
}

__n128 OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  *(v16 - 256) = a13.n128_u32[0];
  *(v13 + 4) = v14;
  *(v16 - 244) = 2112;
  *(v13 + 14) = v15;
  return result;
}

void OUTLINED_FUNCTION_7_0(void *a1)
{
  [(SBHIconStateArchiverListProperties *)v1 setGridSizeClassDomain:a1];
}

void sub_1BEBB9170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEBBA41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEBBB6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEBBBCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBBD270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double SBHAddWidgetSheetPreferredSheetCornerRadiusForStyle(uint64_t a1)
{
  result = 35.0;
  if (a1 != 1)
  {
    return 30.0;
  }

  return result;
}

void SBHStyleTintButtonSharedInit(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v3 = v1[93];
  v1[93] = v2;

  [v1 addSubview:v1[93]];
  [v1[93] setContentMode:1];
  [v1 _updateFilters];
  v4 = objc_opt_self();
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [v1 registerForTraitChanges:v5 withTarget:v1 action:sel__updateFilters];
}

BOOL SBHHardwareSupportsHomeScreenSearchAffordance()
{
  result = SBHHardwareSupportsSearchAffordancePresentationAnimation();
  if (result)
  {
    return SBFEffectiveHomeButtonType() == 2;
  }

  return result;
}

BOOL SBHHomeScreenSearchAffordanceEnabled()
{
  result = SBHHardwareSupportsSearchAffordancePresentationAnimation();
  if (result)
  {
    result = SBHHardwareSupportsSearchAffordancePresentationAnimation();
    if (result)
    {
      return SBFEffectiveHomeButtonType() == 2;
    }
  }

  return result;
}

uint64_t __DeviceManagementLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DeviceManagementLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEBC809C(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1BEBCB740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CHSWidgetFamilyForATXStackLayoutSize(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1BEE858D8[a1];
  }
}

uint64_t SBHItemAtIndexIsOfSize(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 count] <= a2)
  {
    v7 = 1;
  }

  else
  {
    v4 = [v3 objectAtIndex:a2];
    v5 = [v4 integerValue];

    if (v4)
    {
      v6 = v5 == 1;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
  }

  return v7;
}

uint64_t SBHSizeClassForItemAtIndex(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 count] <= a2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndex:a2];
    v5 = [v4 integerValue];
  }

  return v5;
}

void sub_1BEBD69E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD7F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEBD8128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD8308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD84E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD86AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD8858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD89D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD8B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD8D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBD92E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEBDB3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEBDD3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location, char a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v39 + 48));
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v40 - 144));
  _Unwind_Resume(a1);
}

id __mappedImageCacheForIdentifier(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  v5 = @"(unknown)";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(__CFString *)v6 stringByAppendingFormat:@"-%@", v1];
  if (__mappedImageCacheForIdentifier_onceToken != -1)
  {
    __mappedImageCacheForIdentifier_cold_1();
  }

  v8 = __mappedImageCacheForIdentifier_mappedImageCacheToIdentifier;
  objc_sync_enter(v8);
  v9 = [__mappedImageCacheForIdentifier_mappedImageCacheToIdentifier objectForKey:v7];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x1E698E7F0]) initWithUniqueIdentifier:v7];
    [__mappedImageCacheForIdentifier_mappedImageCacheToIdentifier setObject:v9 forKey:v7];
  }

  objc_sync_exit(v8);

  return v9;
}

id SBIconLabelImageCachePredicateForAppTitles(void *a1)
{
  v1 = a1;
  v2 = __versionSuffix();
  v3 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SBIconLabelImageCachePredicateForAppTitles_block_invoke;
  v8[3] = &unk_1E808B160;
  v9 = v2;
  v10 = v1;
  v4 = v1;
  v5 = v2;
  v6 = [v3 predicateWithBlock:v8];

  return v6;
}

uint64_t ____mappedImageCacheForIdentifier_block_invoke()
{
  v0 = objc_opt_new();
  v1 = __mappedImageCacheForIdentifier_mappedImageCacheToIdentifier;
  __mappedImageCacheForIdentifier_mappedImageCacheToIdentifier = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void ____versionSuffix_block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v3 = objc_alloc_init(MEMORY[0x1E698E638]);
  v1 = [v0 stringWithFormat:@"B%luCV%d", objc_msgSend(v3, "majorBuildNumber"), 6];
  v2 = __versionSuffix_versionSuffix;
  __versionSuffix_versionSuffix = v1;
}

uint64_t __SBIconLabelImageCachePredicateForAppTitles_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasSuffix:*(a1 + 32)])
  {
    v4 = v3;
    v5 = [v4 rangeOfString:@"@@"];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v4 substringToIndex:v6 + v5 - 2];
    }

    v8 = [*(a1 + 40) containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1BEBDEFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEBE18A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v70 + 48));
  objc_destroyWeak((v69 + 40));
  objc_destroyWeak((v69 + 32));
  objc_destroyWeak(&a58);
  objc_destroyWeak((v71 + 40));
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a66);
  objc_destroyWeak(&a69);
  _Unwind_Resume(a1);
}

__CFString *SBHStringForIconImageStyleConfigurationVariant(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E808B268[a1];
  }
}

__CFString *SBHStringForIconImageStyleConfigurationType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E808B288[a1];
  }
}

void sub_1BEBEB694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEBED424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 152));
  _Unwind_Resume(a1);
}

void sub_1BEBEF9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEBF1A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBFolderRelativeIconIndex(void *a1)
{
  if (a1)
  {
    return [a1 sbIconIndex];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

BOOL SBFolderIndexPathsAreOnSamePage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = v5 - 2;
  if (v5 >= 2 && v5 == [v4 length])
  {
    v7 = 0;
    do
    {
      v8 = [v3 indexAtPosition:v7];
      v9 = v8 == [v4 indexAtPosition:v7];
      v10 = v9;
      if (!v9)
      {
        break;
      }

      v9 = v6 == v7++;
    }

    while (!v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL SBRootFolderPageStateVerticalGroupMatches(uint64_t a1, uint64_t a2)
{
  if ((a1 + 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_1BEE85A80[a1 + 1];
  }

  if ((a2 + 1) > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1BEE85A80[a2 + 1];
  }

  return v2 == v3;
}

void sub_1BEC047CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEC053A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SBHomeAccessibilityTintColor(unint64_t a1, void *a2)
{
  v4 = 0;
  SBHomeAccessibilityTintColorAndStyle(a1, a2, &v4, 0);
  v2 = v4;

  return v2;
}

void SBHomeAccessibilityTintColorAndStyle(unint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a2;
  v8 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
    v9 = 2;
LABEL_8:
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = 0;
  v17 = 0;
  v15 = 0.0;
  v9 = 0;
  v10 = v7;
  if (![v7 getHue:&v17 saturation:&v16 brightness:&v15 alpha:0])
  {
    goto LABEL_8;
  }

  v11 = 0.0;
  if (a1 <= 3)
  {
    v11 = dbl_1BEE85B60[a1];
  }

  if (v15 >= 0.9)
  {
    v12 = 0.392156863;
    if (a1 == 1)
    {
      v12 = 1.0;
      v11 = 0.9;
    }

    v9 = 2;
  }

  else
  {
    v12 = dbl_1BEE85B40[v15 < 0.4];
    v9 = 1;
  }

  v14 = [MEMORY[0x1E69DC888] colorWithWhite:v12 alpha:v11];
  v10 = SBFComposedColor();

  if (a3)
  {
LABEL_9:
    v13 = v10;
    *a3 = v10;
  }

LABEL_10:
  if (a4)
  {
    *a4 = v9;
  }
}

uint64_t SBHomeAccessibilityTintLegibilityStyle(unint64_t a1, void *a2)
{
  v3 = 0;
  SBHomeAccessibilityTintColorAndStyle(a1, a2, 0, &v3);
  return v3;
}

SBHLegibilitySettings *SBHomeAccessibilityTintLegibiliitySettings(unint64_t a1, void *a2)
{
  v6 = 0;
  v7 = 0;
  SBHomeAccessibilityTintColorAndStyle(a1, a2, &v6, &v7);
  v2 = v6;
  v3 = [SBHLegibilitySettings alloc];
  v4 = [(SBHLegibilitySettings *)v3 initWithStyle:v7 contentColor:v2];

  return v4;
}

BOOL SBHIsHomeButtonDevice()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 homeButtonType] != 2;

  return v1;
}

id SBHWeatherWidgetTestIntent()
{
  v0 = objc_alloc(MEMORY[0x1E695DEF0]);
  v1 = [@"/Td6WFoAAAD/EtlBAgAhARYAAAB0L+Wj4B9IEJ5dADEcCbwef02oFXxbODFLJ6lFXbr0DHqsTF+vT2q/BDIO2FiDjAilU8tTgPSYbYL/W/B+tKbY3nJzTUcH6BiMVSyTpgss1A43qH34miQjtY882XmTB5YsDJCDZKn3deWhWBlsU+ghAa7WiEaYuXEUwKu0DpWTO6Hp2+PNqAV8fm0dpVJSfPL6p4fxICk3P5mr+dO4KCIpxFMhPp32uUW0wrIR7QzXEocL5erNDyDo1s+4uOj44VWkbBieWt7QhZJgjHYWKXPj7OGx7eB6y2FuoY/Mv/glFZEq0RpF1CFr88QR3zPm/FuvhGxVombp5p8pvf9Xd28ymUT6b9YJq0g+cmYDw6Xlw2JDpAQw26AVNS/oPgvV0E1JOpFvWhsBJIgNQWFWdtlfps2kUMbobXg9RphWrh+AryoGWjeO1PKAMYuaydjkmJlA0E/wktQh3J51ojZ45SOhz3CqLqsJWUVTNuHv1lDQvUmb/OCTWB4JA/JxWQ9hKGWei+VKs0R8gIijsnsie/nAZIFI0yW94AkcVHw5d4+hygxntBgA+A1M6KjpSP6HJTQHqOAhCfyKrqg9Pax7BL0JwmI9JUfbMmXDDkEdPTBs/fd8EQDc6Aq6rJ8pCkJaXPEgPYz/1abq6f+TskilLkqEgjJLwbo78+07z2BrW2tQK0kJs42aqwa4mEbK7OdbMLgc9P2JuY9nvM5C0bUkrOEucLqBJ/mbn4+NdW0tSu5L0imDBfMlZ9sAWrrHgBHYB2QNFwqMZ5jOKdNBN1cihTCCVIWN+ni+nTNbgwbhfftqBn9elUerixeWg1+zGDesSl/HiPTIAk4qNgCFc0JH4+VrktML1Ojhab0aKhVdkmEQhb8jVcIDUWe0QGD3aWcP4Cnsf9EkSVhgdvGbiKIJ7yIVljyJXmcCdD+NFhIPNpzf4Xfqf81IROLpoQojUU7KcMvy9KUEtckfnNG+64JQVhXcmcyb42aMBXkl9yuliTmVANiZmxEPEnNSgR+GtCHmV2NPgCY7RCaNQUuYtduBu1U9AZ8a782pLYYjeTlYdaTyxXXc2c/DVuc3NnEw2SDcWv6pUUz+2g3W7GxRngI0eaK4YcZ/8bQQIcgtPfejYybGeYXzILpEIZ7mDJl1/c+22iipEMAUIIBLDKuNneaC7pcAUBM3SqAolEMV6zaL0QhwKJ3M9TzDrUTa9D5Z0w+KUCfCeCnOoOBaPf+XFueEKfhaSlU8OSrGAYiBxFlkQsflpswJmlWv5j+GsOMjEhy5SRVlTMMm6srHZq0fGpdZiFfAD2fgVhXTIOWqwb1Dp7OW3nHv2FGrmhGviP5+mjx8PFgmA0h7gJF4LxQXYjFy9kEyMB756QM6pezthoLNk5y8o0cLcNoTP1KoTRPFh+BOnt9Pu3yQkC74EKaSWf4FDPTLsLxROz8N1qaKBtNW/4i7y/yJ1x2zHndy7EubdURmsXV0Oa2HnD5cA6XqSATr7rooeKL7vBOcQuweSV3vLiRT+2PZYpodhU6BdjmShivpKw9VeEelJ9Yb9qrNVNffJKfY2nQm4OZgAMj4X9Xdcw84uqEYFABKutHnD1PMwjX6D49pEA8a/NciM/jY/lPyWHnpYBaatVD0opE0GhVKgA/dZ7tVbafzY7gYw2XAe7jCnjh8oL9otkmPMqR+gCBqUmmw1hR5+8mZEBpdIP00CTBKL+fZMcIOeHPmjg58jD5TNcCaerWMkOFeqdNIG8l/swSucvLdXjNaan71fVA5fTzG228sXIEmvUB551XqUw3h64R4iB/1c+p8zPWTboe5ALndoKDbSVx6QfE80qYvelZ/+W/MGCNAbhP7+B/YSDC0vxMkHTtmqGnjgcr/z3Bvhcq4UHp9Ffwy29HgrAIS+RTr913SkvpcDh+YOe0D813wn/z8XSMULPYsYGDrNOkRLMKHjRPdVxm0YfCPdobZdFbz1vbjK8T2NZ++G4j8lIW+R1nlAQyxC/8qn8ehhjHT0sG9g2YJnfj4PHwGRy6y3RlM8zNLU5A2SGeOcJsHUEpZkz4woU/KX0YzFDegzfpkEEXNgH7Iw4uvRjtQZA9SZ2iZNZ8ILlg578gvbmCpOnHgxw7ND4EepEDvnG3N2i7NfPBM5mccWRKQ1sR8hmHtEgfKuHuzaEEpdSK+SI2KetQhUrC4dMxqy9sEGiZKeZZqJWN7IsbRMd92txDb8U9TvgugSkgPSc67337xSJLMR9dkPbPJNO5H1PiVdqQK90sAS8cVZCJG/Dt1333tZa2I8S+zOXvFdb2kSSE/ZI7kpuM4GTtam1f8F4FpZppLimoUy1PdJrH789aD2pBtU/584JDMzrdVDEJy8GeqegcCmb11Na7AuFoUsdQArBH50c4v7Qm4725/IAa+BfGoARI2WymTcpiSMa1j1SyWjr+WQjJvEJa7kHfTozhm8hZYWY1R3ec8l9S5DCZTic9tR701+GPVZ51e4bYDFIr+xzfEwh0YjmAJpk5uquwMvunz8n5M1ttWlgoXi5Scca" stringByAppendingString:@"lbVtjvJQkShqq/aVRu02btidukA5bqPbMPavQZ7BmnshthaSkkXiVrb2UqwatMRZHUS20r0A1JWt4H0niatxwGi7sE87eWgFoHhXbcNICaPpOm4HdtLfr5UI0lrpzb+0X5wojvWF8uqLHeKSaZZPNUY0N+wkvvIkmwieEmAstAHoNRRBHo75/HblGKLPmrzpnGUM99GaVsBru5ZWngawSUJxh0AtTGuMiXTbmZ8Wv6mgxAtsY6ThV4pOnaz+MHgK5xgslyh/BsljBi2tfJG4BBMCYcadVcUrSDNg9L0kXZuD8mNWmidQUWcwlV+RjvzK6Wr48BKPDG9nW/xnIam4/PFadfYY9MS7AkX1INN2tSprt6mD9aO+6hc86cc0tRwWZWHi01yH7t3U+KGjJPG1lOnb1Yroda2/7b+RP0jE37TG8ZlhJ1gmdyBQdzoR68mCAOpXO7XmM/VsPP1tFUMcXCipgPAbewqyxvrpKSWqN/BCba8YSrVhteqdFvWWsPfVYqf10GqnDWG99zAsdZz8h2htgDxSQAvvB9eJAj/pL4ZKgtAYZ9uCEWwWV1OJPsulI5aa+J5XMbORotvp2d9Gdr4gzkH5LpcAKU4Lm3qlXl3Tq0yL5gt0qvHUJ/0u0xPT2IEzhWP8ZMY1YHripF1yIOqEG2P6iuGrw/PcUc1Rr6z7WV2kSWMjEi85n9jHQ2pq93Qkqh5rx2k+7/W0s+55pz7A4z5ZruxyEtyAygXRh55iROgrmbDG1+4EdPYKQF4FdGY04wwC78yN2mb5x364VKO40zCbSgF1dGOJ9Z36eLIMHiYYNE6igscIssCtoR29X1H13DTUz+ZBLIRVBhrt35ogXJbIfLTWvSuBgauT5lyAH5n6h+mDU2qo5iIwFSJUwo+fuOzQ7xSrJfE2CSD1WZqdWJqUvLuuOicCbkaDk6pe3VaTM3dj+T8c63cpex9xpUWpCS3PFNgqeB+J6YbDQKT5VzJrUpP3yCXP5DkGh26PUdf58q8xk8Krfnb3o1bc2/37rZT6BLjUrNem/imKMWZSWF4tEI1nOY/f94vzpHXE0Jv0fdVav/JszNZxK+NHxHWgbUvY7nGcnuwZxl1nKVs0NPB4yRGunidFv6aHf9namJK306PxFB0bsi1oKSy7lk1kKFzNtWttM8+v2ui0CmIMLqy9RX6DgUGjnTpW6c9pnWpT+T4+iS0lEJ7DrfQE7QhFCsYKaJKZ8H12vIRGgmBgvPctewkQjhdgVtGKb77o+zXScldBznf8qj8LCQyDmxO4UXfVlmC+kjKdgtyBiGAyMOBY3EYfqF7QaX/5Lgg2T00ABKqnh5MZada3dwkvftr9RP20RDiPvBqF8VSovluEi9iFSGezeR2Sy/WH3ps0XZtfYtRxJxsgnd3w0+SwhEHGrJN20xVoi9H9Kv2QX/E9iEiNxuh/oXsd9qNG+R2IaBIGSqRLIgnRQQX6tMJ1sNoDhI9rshr69qibkJ7YJerHfBRPS9/Tlha06QysbjxWZKiZZprOKgEi/1uwcLM+qkb7boPVEMsn9Xm5Uuxdwh9bMkb2wM8y2lI/HQzU13fO6c0rirgL3tNBHl7WpyZdMsB9LadrYPJr0aVyMCRrVYr1WtDcNTJDaS+3wNhx7rx64eeSyY0ZsgRsIFpvOfD+bw8vfQaD7+rPehKE7kgCWw+04YXkLNiUaCiI7UKUfYvXW2DJ9tIvHslN4Rfmm186nB2MTrBrg2DjZu1GRT0OH7NWA0QfVq8Uh+JXyw0hb69QrCHt6V3mgw09z4VBgp4m9DJWoliqsGWP1wvsFFO8XDFWIDc9gh8ninLtWM/Q3OnbG3vnwJ5vMLBxUx2zopY28IVfQ1mWOB6KrMD5tam2N7asj1KwDQELAO4J4TQBNEn/cDN+Ck/SLVCYcCQrB+7G6N5Q3rzu69pgwni7uDV/Xyz+umZe4rYUiLBXhvdf69z5Z2vmAqroR7Tp+qvZP3TcTWyAKwLv6t2nuGLSha9mUnTaGHu8Sxwnoc2dFhsUOjAY8GgDRJ6pK0J4y+caxJ5+XuPPJKM3wGFr4JV+W3aMei+6ba81jFVmGZHQWurKW82PnNMoe66Dw/YH3YJz8t8K1ie0E5uCJMa/d6F2o16/hgEY1o/7LkPSq2JCN41GH4dEiuZKTcxLwZRktdhZ2SR1mSQ/plj7AMUXq5oAZe2o4FC/FSNfoU4vzD5DwG4uSzOO72HAKYERFit8DqFT2C4mPET7/vdSFIHhJnfdrXZ6vjK5eSv0BfEXkR90gIOWA0VK42FoFZ+huxaAZHqQf4wiVq9CWXbR5oO57AthJK0ThopXuuLG52xhkFNrjoKMRHDsHmVvurSZPFCr8YuEm6Vr2p+YoHB+HoZMPiDR0CpNjYD8jQ6JkOuO9761xGysBeMgWiQ7ACYqjcsk9sRctzV179n0WA6t8FhrPKMawKtkfvKzCg09nisQ6oa7Jrladh8VWUXnTxR4WkCZp+VzK5btbC9tOFLTjN1wj7+CYeHKwpRvDBjzvVhGeIxnFZuk+L7tl9SgaPqzIEBFR+2lWw/GLRKMPqG3VjY2M/I/1QxaMsv/5LId6DNLSrbChI79wWt77+FwrfHB0Uf6CuwgnaCbhLM+mIC9vxX1XH1Mhf0kTojyXRx/s7U45S/PKuD72PMhLZIfkEvo9A8IMKSR7R0xB80NwLQve+80qjUcXYoseXaHbQqiqjHwgm4iLXuIflvkALJ3Bw9r8KhE+DvuLQxm9BsJv2ZJSXVAx+kvNd3k/NV+Rk6naePSlYWeHF2l4pOBmO9Glrss5eNvd9a3K3+K7B40WfEHVbuaVImlQKSco9sJDN1YWr8wlVDilQItsqtEwSLtMIvRPnoXB8IlFMOGHSe2BQYGu0ryFxJoAj6yirHh42xXD75oi/cqv/WF8b1xoY8z2IVQW/WeXcwJiAUwnK631QC+jaopxjL4Iu/eHjgxX3Fv2esrZXM6ZTsicc/ir7IaAxfovgVsTFuoOEzE0KrKN8WcB+0d577i2xQSMO8c79D3qxCzKtn6FviWQ6YsvOk1AkWt41+HOLXPiMCIIoxFsgLEQ2h2DlLf8a8diW9nxeLUe3RZMSdF0GO8W9wRb8kVaHUsFTA0fV9odBSEXtxMtAlfviJkic3WGl3lqUEgAAAAABsiHJPgAAAQlGTagACvwCAAAAAABZWg=="];
  v2 = [v0 initWithBase64EncodedString:v1 options:1];
  v3 = [v2 decompressedDataUsingAlgorithm:2 error:0];

  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

void SBHUIViewAnimateHighlight(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceStyle] == 2;

  if (a2)
  {
    v6 = dbl_1BEE85B50[v5];
  }

  else
  {
    v6 = 1.0;
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __SBHUIViewAnimateHighlight_block_invoke;
  v12 = &unk_1E8088CB8;
  v7 = v3;
  v13 = v7;
  v14 = v6;
  v8 = _Block_copy(&v9);
  if (a2)
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:{v8, v9, v10, v11, v12}];
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:{0.47, v9, v10, v11, v12}];
  }
}

uint64_t __SBHUIViewAnimateHighlight_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) alpha];
  if (v3 != *(a1 + 40))
  {
    v4 = *(a1 + 32);

    return [v4 setAlpha:?];
  }

  return result;
}

Class __getSPUIDefaultsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpotlightUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpotlightUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E808B8F0;
    v6 = 0;
    SpotlightUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SpotlightUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SPUIDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSPUIDefaultsClass_block_invoke_cold_1();
  }

  getSPUIDefaultsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpotlightUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpotlightUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BEC0BE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEC0C064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1BEC0C238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1BEC0C404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1BEC0C604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BEC0C858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BEC0CC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC0CFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBLogIconImageCache_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "IconImageCache");
  v1 = SBLogIconImageCache___logObj;
  SBLogIconImageCache___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogFolderIconImageCache()
{
  if (SBLogFolderIconImageCache_onceToken != -1)
  {
    SBLogFolderIconImageCache_cold_1();
  }

  v1 = SBLogFolderIconImageCache___logObj;

  return v1;
}

uint64_t __SBLogFolderIconImageCache_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "FolderIconImageCache");
  v1 = SBLogFolderIconImageCache___logObj;
  SBLogFolderIconImageCache___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogIconLabelImageCache()
{
  if (SBLogIconLabelImageCache_onceToken != -1)
  {
    SBLogIconLabelImageCache_cold_1();
  }

  v1 = SBLogIconLabelImageCache___logObj;

  return v1;
}

uint64_t __SBLogIconLabelImageCache_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "IconLabelImageCache");
  v1 = SBLogIconLabelImageCache___logObj;
  SBLogIconLabelImageCache___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogCommon_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Common");
  v1 = SBLogCommon___logObj;
  SBLogCommon___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogRecentsDocumentExtension()
{
  if (SBLogRecentsDocumentExtension_onceToken != -1)
  {
    SBLogRecentsDocumentExtension_cold_1();
  }

  v1 = SBLogRecentsDocumentExtension___logObj;

  return v1;
}

uint64_t __SBLogRecentsDocumentExtension_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "RecentsDocumentExtension");
  v1 = SBLogRecentsDocumentExtension___logObj;
  SBLogRecentsDocumentExtension___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogProactiveAppLibrary_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "ProactiveAppLibrary");
  v1 = SBLogProactiveAppLibrary___logObj;
  SBLogProactiveAppLibrary___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogHomeScreenUsageMonitor_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "HomeScreenUsageMonitor");
  v1 = SBLogHomeScreenUsageMonitor___logObj;
  SBLogHomeScreenUsageMonitor___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogLibrarySearchController()
{
  if (SBLogLibrarySearchController_onceToken != -1)
  {
    SBLogLibrarySearchController_cold_1();
  }

  v1 = SBLogLibrarySearchController___logObj;

  return v1;
}

uint64_t __SBLogLibrarySearchController_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "LibrarySearchController");
  v1 = SBLogLibrarySearchController___logObj;
  SBLogLibrarySearchController___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogContinuity()
{
  if (SBLogContinuity_onceToken != -1)
  {
    SBLogContinuity_cold_1();
  }

  v1 = SBLogContinuity___logObj;

  return v1;
}

uint64_t __SBLogContinuity_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Continuity");
  v1 = SBLogContinuity___logObj;
  SBLogContinuity___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogLibrary()
{
  if (SBLogLibrary_onceToken != -1)
  {
    SBLogLibrary_cold_1();
  }

  v1 = SBLogLibrary___logObj;

  return v1;
}

uint64_t __SBLogLibrary_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Library");
  v1 = SBLogLibrary___logObj;
  SBLogLibrary___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogIconContextMenu()
{
  if (SBLogIconContextMenu_onceToken != -1)
  {
    SBLogIconContextMenu_cold_1();
  }

  v1 = SBLogIconContextMenu___logObj;

  return v1;
}

uint64_t __SBLogIconContextMenu_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "IconContextMenu");
  v1 = SBLogIconContextMenu___logObj;
  SBLogIconContextMenu___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogAppPlaceholder()
{
  if (SBLogAppPlaceholder_onceToken != -1)
  {
    SBLogAppPlaceholder_cold_1();
  }

  v1 = SBLogAppPlaceholder___logObj;

  return v1;
}

uint64_t __SBLogAppPlaceholder_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "AppPlaceholder");
  v1 = SBLogAppPlaceholder___logObj;
  SBLogAppPlaceholder___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogTelemetrySignposts()
{
  if (SBLogTelemetrySignposts_onceToken != -1)
  {
    SBLogTelemetrySignposts_cold_1();
  }

  v1 = SBLogTelemetrySignposts___logObj;

  return v1;
}

uint64_t __SBLogTelemetrySignposts_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "TelemetrySignposts");
  v1 = SBLogTelemetrySignposts___logObj;
  SBLogTelemetrySignposts___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogWidgets_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Widgets");
  v1 = SBLogWidgets___logObj;
  SBLogWidgets___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogWidgetIntent_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "WidgetIntent");
  v1 = SBLogWidgetIntent___logObj;
  SBLogWidgetIntent___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogWidgetDiscoverabilityMigration()
{
  if (SBLogWidgetDiscoverabilityMigration_onceToken != -1)
  {
    SBLogWidgetDiscoverabilityMigration_cold_1();
  }

  v1 = SBLogWidgetDiscoverabilityMigration___logObj;

  return v1;
}

uint64_t __SBLogWidgetDiscoverabilityMigration_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "WidgetDiscoverabilityMigration");
  v1 = SBLogWidgetDiscoverabilityMigration___logObj;
  SBLogWidgetDiscoverabilityMigration___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogWidgetResizing()
{
  if (SBLogWidgetResizing_onceToken != -1)
  {
    SBLogWidgetResizing_cold_1();
  }

  v1 = SBLogWidgetResizing___logObj;

  return v1;
}

uint64_t __SBLogWidgetResizing_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "WidgetResizing");
  v1 = SBLogWidgetResizing___logObj;
  SBLogWidgetResizing___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogAssessmentMode()
{
  if (SBLogAssessmentMode_onceToken != -1)
  {
    SBLogAssessmentMode_cold_1();
  }

  v1 = SBLogAssessmentMode___logObj;

  return v1;
}

uint64_t __SBLogAssessmentMode_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "AssessmentMode");
  v1 = SBLogAssessmentMode___logObj;
  SBLogAssessmentMode___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogLegibility()
{
  if (SBLogLegibility_onceToken != -1)
  {
    SBLogLegibility_cold_1();
  }

  v1 = SBLogLegibility___logObj;

  return v1;
}

uint64_t __SBLogLegibility_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Legibility");
  v1 = SBLogLegibility___logObj;
  SBLogLegibility___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogLabels()
{
  if (SBLogLabels_onceToken != -1)
  {
    SBLogLabels_cold_1();
  }

  v1 = SBLogLabels___logObj;

  return v1;
}

uint64_t __SBLogLabels_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Labels");
  v1 = SBLogLabels___logObj;
  SBLogLabels___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogProtectedApps()
{
  if (SBLogProtectedApps_onceToken != -1)
  {
    SBLogProtectedApps_cold_1();
  }

  v1 = SBLogProtectedApps___logObj;

  return v1;
}

uint64_t __SBLogProtectedApps_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "ProtectedApps");
  v1 = SBLogProtectedApps___logObj;
  SBLogProtectedApps___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogAddWidgetSheet()
{
  if (SBLogAddWidgetSheet_onceToken != -1)
  {
    SBLogAddWidgetSheet_cold_1();
  }

  v1 = SBLogAddWidgetSheet___logObj;

  return v1;
}

uint64_t __SBLogAddWidgetSheet_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "AddWidgetSheet");
  v1 = SBLogAddWidgetSheet___logObj;
  SBLogAddWidgetSheet___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogIconStylePicker()
{
  if (SBLogIconStylePicker_onceToken != -1)
  {
    SBLogIconStylePicker_cold_1();
  }

  v1 = SBLogIconStylePicker___logObj;

  return v1;
}

uint64_t __SBLogIconStylePicker_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "IconStylePicker");
  v1 = SBLogIconStylePicker___logObj;
  SBLogIconStylePicker___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogIconImageView()
{
  if (SBLogIconImageView_onceToken != -1)
  {
    SBLogIconImageView_cold_1();
  }

  v1 = SBLogIconImageView___logObj;

  return v1;
}

uint64_t __SBLogIconImageView_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "IconImageView");
  v1 = SBLogIconImageView___logObj;
  SBLogIconImageView___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1BEC11644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEC11DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBHAppDragLocalContextStartLocationFromSBSLocation(uint64_t result)
{
  if ((result - 1) >= 0xC)
  {
    return 0;
  }

  return result;
}

uint64_t SBHAppDragLocalContextStartLocationToSBSLocation(uint64_t result)
{
  if ((result - 1) >= 0xC)
  {
    return 0;
  }

  return result;
}

void sub_1BEC1F7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPUIAppPredictionViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppPredictionUIWidgetLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppPredictionUIWidgetLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E808BF70;
    v6 = 0;
    AppPredictionUIWidgetLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppPredictionUIWidgetLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APUIAppPredictionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPUIAppPredictionViewControllerClass_block_invoke_cold_1();
  }

  getAPUIAppPredictionViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionUIWidgetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppPredictionUIWidgetLibraryCore_frameworkLibrary = result;
  return result;
}

id SBHWidgetViewControllerDescriptionsForSysdiagnose(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = SBHWidgetViewControllerSysdiagnoseDescription(v8);
        [v2 setObject:v9 forKey:{v8, v11}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

id SBHWidgetViewControllerSysdiagnoseDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 sbh_underlyingAvocadoHostViewControllers];
  v3 = objc_opt_new();
  if ([v2 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __SBHWidgetViewControllerSysdiagnoseDescription_block_invoke;
    v11[3] = &unk_1E808C000;
    v12 = v3;
    [v2 bs_each:v11];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    if ([v1 isViewLoaded])
    {
      v6 = @"Y";
    }

    else
    {
      v6 = @"N";
    }

    if ([v1 bs_isAppearingOrAppeared])
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    v8 = [v4 stringWithFormat:@"<%@:%p l:%@ v:%@>", v5, v1, v6, v7];
    [v3 addObject:v8];
  }

  v9 = [v3 componentsJoinedByString:@"\n"];

  return v9;
}

void __SBHWidgetViewControllerSysdiagnoseDescription_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 widget];
  v5 = [v4 intentReference];
  v12 = [v5 intent];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = @"Y";
  if ([v3 isViewLoaded])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if (![v3 bs_isAppearingOrAppeared])
  {
    v8 = @"N";
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "_indexingHash")}];
  v11 = [v6 stringWithFormat:@"<%@:%p l:%@ v:%@ i:%@>", v7, v3, v9, v8, v10];

  [*(a1 + 32) addObject:v11];
}

void sub_1BEC233E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC240B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCPSWebClipStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ClipServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E808C078;
    v6 = 0;
    ClipServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ClipServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CPSWebClipStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCPSWebClipStoreClass_block_invoke_cold_1();
  }

  getCPSWebClipStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ClipServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ClipServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getIXAppInstallCoordinatorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!InstallCoordinationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __InstallCoordinationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E808C090;
    v6 = 0;
    InstallCoordinationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (InstallCoordinationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IXAppInstallCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXAppInstallCoordinatorClass_block_invoke_cold_1();
  }

  getIXAppInstallCoordinatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InstallCoordinationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  InstallCoordinationLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

void sub_1BEC29B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEC2E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC2F780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC2FA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1BEC35278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BEC35378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BEC39FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBHSpecialWidgetDescriptorTypeForKind(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsFolder"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsSingle"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"SBHSpecialAvocadoDescriptorKindSmartStack"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double SBHDirectionalEdgeInsetsInsetRect(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a1)
  {
    a7 = a9;
  }

  return a2 + a7;
}

double SBHRoundEdgeInsetsToScale()
{
  UIRoundToScale();
  v1 = v0;
  UIRoundToScale();
  UIRoundToScale();
  UIRoundToScale();
  return v1;
}

double SBHAlignSizeInRectUsingBaseline(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8.origin.x = a4;
  v8.origin.y = a5;
  v8.size.width = a6;
  v8.size.height = a7;
  CGRectGetMaxY(v8);
  return 0.0;
}

long double SBHRectGetEdgeRect(int a1, long double a2, long double a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      MaxX = CGRectGetMaxX(*&a2);
      v31.origin.x = a2;
      v31.origin.y = a3;
      v31.size.width = a4;
      v31.size.height = a5;
      MinX = CGRectGetMinX(v31);
      v9 = nexttoward(MaxX, MinX);
      v32.origin.x = a2;
      v32.origin.y = a3;
      v32.size.width = a4;
      v32.size.height = a5;
      MinY = CGRectGetMinY(v32);
      v33.origin.x = a2;
      v33.origin.y = a3;
      v33.size.width = a4;
      v33.size.height = a5;
      v20 = CGRectGetMaxX(v33);
      nexttoward(v9, v20);
      v34.size.width = 0.0;
      v34.size.height = 0.0;
      v34.origin.x = v9;
      v34.origin.y = MinY;
      CGRectGetMinX(v34);
      v35.origin.x = a2;
      v35.origin.y = a3;
      v35.size.width = a4;
      v35.size.height = a5;
      CGRectGetHeight(v35);
    }

    else
    {
      v9 = 0.0;
      if (a1 == 3)
      {
        v9 = CGRectGetMinX(*&a2);
        v24.origin.x = a2;
        v24.origin.y = a3;
        v24.size.width = a4;
        v24.size.height = a5;
        MaxY = CGRectGetMaxY(v24);
        v25.origin.x = a2;
        v25.origin.y = a3;
        v25.size.width = a4;
        v25.size.height = a5;
        v12 = CGRectGetMinY(v25);
        v13 = nexttoward(MaxY, v12);
        v26.origin.x = a2;
        v26.origin.y = a3;
        v26.size.width = a4;
        v26.size.height = a5;
        Width = CGRectGetWidth(v26);
        v27.origin.x = a2;
        v27.origin.y = a3;
        v27.size.width = a4;
        v27.size.height = a5;
        v15 = CGRectGetMaxY(v27);
        nexttoward(v13, v15);
        v28.size.height = 0.0;
        v28.origin.x = v9;
        v28.origin.y = v13;
        v28.size.width = Width;
        CGRectGetMinY(v28);
      }
    }
  }

  else
  {
    if (!a1)
    {
      v16 = CGRectGetMaxX(*&a2);
      nexttoward(a2, v16);
      v29.origin.x = a2;
      v29.origin.y = a3;
      v29.size.width = a4;
      v29.size.height = a5;
      CGRectGetMinX(v29);
      v30.origin.x = a2;
      v30.origin.y = a3;
      v30.size.width = a4;
      v30.size.height = a5;
      CGRectGetHeight(v30);
      return a2;
    }

    v9 = 0.0;
    if (a1 == 1)
    {
      CGRectGetWidth(*&a2);
      v22.origin.x = a2;
      v22.origin.y = a3;
      v22.size.width = a4;
      v22.size.height = a5;
      v10 = CGRectGetMaxY(v22);
      nexttoward(a3, v10);
      v23.origin.x = a2;
      v23.origin.y = a3;
      v23.size.width = a4;
      v23.size.height = a5;
      CGRectGetMinY(v23);
      return a2;
    }
  }

  return v9;
}

double SBHCenterNormalizedFromLayerAnchorPoint(void *a1)
{
  v1 = a1;
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 layer];
  [v10 anchorPoint];
  v15 = v11;

  [v1 center];
  v13 = v12;

  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  CGRectGetHeight(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  return v13 + CGRectGetWidth(v17) * (0.5 - v15);
}

id SBHPinViewWithinView(void *a1, void *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v18 = [v4 leadingAnchor];
  v17 = [v3 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [v4 trailingAnchor];
  v6 = [v3 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [v3 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v14];

  return v14;
}

id SBHPinViewWithinLayoutGuide(void *a1, void *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v18 = [v4 leadingAnchor];
  v17 = [v3 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [v4 trailingAnchor];
  v6 = [v3 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [v3 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v14];

  return v14;
}

double SBHSizeConstrain(double result, double a2, double a3, double a4, double a5)
{
  if (result < a3)
  {
    result = a3;
  }

  if (result > a5)
  {
    return a5;
  }

  return result;
}

void SBHCGRectIntersectionAsPercentage(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (CGRectIntersectsRect(*&a1, *&a5))
  {
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    v17.origin.x = a5;
    v17.origin.y = a6;
    v17.size.width = a7;
    v17.size.height = a8;
    CGRectIntersection(v16, v17);
  }
}

double SBHSubRectFromNormalizedRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v20 = MinX * CGRectGetWidth(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetHeight(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetWidth(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetWidth(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetHeight(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetHeight(v28);
  return v20;
}

double SBHNearestPointInLine(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 - a3;
  v7 = a5 - a3;
  v8 = ((a2 - a4) * (a6 - a4) + v6 * v7) / (v7 * v7 + (a6 - a4) * (a6 - a4));
  v9 = 0.0;
  if (v8 >= 0.0)
  {
    v9 = v8;
    if (v8 > 1.0)
    {
      v9 = 1.0;
    }
  }

  return a3 + v7 * v9;
}

double SBH3DPointVelocity(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  result = 0.0;
  if (a7 != 0.0)
  {
    return (a4 - a1) / a7;
  }

  return result;
}

double SBH3DPointVelocityMagnitude(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (a7 != 0.0)
  {
    v9 = (a4 - a1) / a7;
    v8 = (a5 - a2) / a7;
    v7 = (a6 - a3) / a7;
  }

  return sqrt(v8 * v8 + v9 * v9 + v7 * v7);
}

double SBHRectInsetVerticallOrHorizontally(int a1, double a2, double a3, double a4, double a5, CGFloat a6)
{
  if (a1)
  {
    v6 = a6;
  }

  else
  {
    v6 = 0.0;
  }

  if (a1)
  {
    a6 = 0.0;
  }

  *&result = CGRectInset(*&a2, a6, v6);
  return result;
}

uint64_t SBHRectGetRectsNotCoveredByInlineRect(CGRect *a1, CGRect *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (CGRectContainsRect(*&a3, *&a7))
  {
    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    v60.origin.x = a7;
    v60.origin.y = a8;
    v60.size.width = a9;
    v60.size.height = a10;
    if (!CGRectEqualToRect(v39, v60))
    {
      v40.origin.x = a3;
      v40.origin.y = a4;
      v40.size.width = a5;
      rect = a6;
      v40.size.height = a6;
      MinX = CGRectGetMinX(v40);
      v41.origin.x = a7;
      v41.origin.y = a8;
      v41.size.width = a9;
      v41.size.height = a10;
      if (MinX == CGRectGetMinX(v41))
      {
        v42.origin.x = a3;
        v42.origin.y = a4;
        v42.size.width = a5;
        v42.size.height = rect;
        MaxX = CGRectGetMaxX(v42);
        v43.origin.x = a7;
        v43.origin.y = a8;
        v43.size.width = a9;
        v43.size.height = a10;
        if (MaxX == CGRectGetMaxX(v43))
        {
          memset(&remainder, 0, sizeof(remainder));
          v44.origin.x = a7;
          v44.origin.y = a8;
          v44.size.width = a9;
          v44.size.height = a10;
          MinY = CGRectGetMinY(v44);
          v45.origin.x = a3;
          v45.origin.y = a4;
          v45.size.width = a5;
          v45.size.height = rect;
          v24 = MinY - CGRectGetMinY(v45);
          v20 = 1;
          v46.origin.x = a3;
          v46.origin.y = a4;
          v46.size.width = a5;
          v46.size.height = rect;
          CGRectDivide(v46, a1, &remainder, v24, CGRectMinYEdge);
          memset(&v37, 0, sizeof(v37));
          v47.origin.x = a3;
          v47.origin.y = a4;
          v47.size.width = a5;
          v47.size.height = rect;
          MaxY = CGRectGetMaxY(v47);
          v48.origin.x = a7;
          v48.origin.y = a8;
          v48.size.width = a9;
          v48.size.height = a10;
          v25 = MaxY - CGRectGetMaxY(v48);
          v49.origin.x = a3;
          v49.origin.y = a4;
          v49.size.width = a5;
          v49.size.height = rect;
          CGRectDivide(v49, a2, &v37, v25, CGRectMaxYEdge);
          return v20;
        }
      }

      v50.origin.x = a3;
      v50.origin.y = a4;
      v50.size.width = a5;
      v50.size.height = rect;
      v26 = CGRectGetMinY(v50);
      v51.origin.x = a7;
      v51.origin.y = a8;
      v51.size.width = a9;
      v51.size.height = a10;
      if (v26 == CGRectGetMinY(v51))
      {
        v52.origin.x = a3;
        v52.origin.y = a4;
        v52.size.width = a5;
        v52.size.height = rect;
        v27 = CGRectGetMaxY(v52);
        v53.origin.x = a7;
        v53.origin.y = a8;
        v53.size.width = a9;
        v53.size.height = a10;
        if (v27 == CGRectGetMaxY(v53))
        {
          memset(&v36, 0, sizeof(v36));
          v54.origin.x = a7;
          v54.origin.y = a8;
          v54.size.width = a9;
          v54.size.height = a10;
          v32 = CGRectGetMinX(v54);
          v55.origin.x = a3;
          v55.origin.y = a4;
          v55.size.width = a5;
          v55.size.height = rect;
          v28 = v32 - CGRectGetMinX(v55);
          v56.origin.x = a3;
          v56.origin.y = a4;
          v56.size.width = a5;
          v56.size.height = rect;
          CGRectDivide(v56, a1, &v36, v28, CGRectMinXEdge);
          memset(&v35, 0, sizeof(v35));
          v57.origin.x = a3;
          v57.origin.y = a4;
          v57.size.width = a5;
          v57.size.height = rect;
          v33 = CGRectGetMaxX(v57);
          v58.origin.x = a7;
          v58.origin.y = a8;
          v58.size.width = a9;
          v58.size.height = a10;
          v29 = v33 - CGRectGetMaxX(v58);
          v59.origin.x = a3;
          v59.origin.y = a4;
          v59.size.width = a5;
          v59.size.height = rect;
          CGRectDivide(v59, a2, &v35, v29, CGRectMaxXEdge);
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t SBHPolygonContainsPoint(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a2 - 1;
    v7 = (a1 + 8);
    do
    {
      v8 = *v7;
      v9 = *(a1 + 16 * v6 + 8);
      v10 = *v7 <= a4 && a4 < v9;
      if (v10 || (a4 < v8 ? (v11 = v9 > a4) : (v11 = 1), !v11))
      {
        if (a3 < *(v7 - 1) + (a4 - v8) * (*(a1 + 16 * v6) - *(v7 - 1)) / (v9 - v8))
        {
          v5 ^= 1u;
        }
      }

      v6 = v4++;
      v7 += 2;
      --a2;
    }

    while (a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double SBHPolygonNearestPointToPoint(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = a2;
  v8 = SBHPolygonContainsPoint(a1, a2, a3, a4);
  if (!v6 || (v8 & 1) != 0)
  {
    return a3;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  v12 = a3;
  do
  {
    v13 = *(a1 + v9);
    v14 = *(a1 + v9 + 8);
    v15 = (a1 + v9 + 16);
    v16 = (a1 + v9 + 24);
    if (!--v6)
    {
      v15 = a1;
      v16 = (a1 + 8);
    }

    v17 = *v15 - v13;
    v18 = *v16 - v14;
    v19 = v18 * v18 + v17 * v17;
    v20 = ((a4 - v14) * v18 + (a3 - v13) * v17) / v19;
    v21 = 0.0;
    if (v20 >= 0.0)
    {
      v21 = ((a4 - v14) * v18 + (a3 - v13) * v17) / v19;
      if (v20 > 1.0)
      {
        v21 = 1.0;
      }
    }

    v22 = v13 + v17 * v21;
    UIDistanceBetweenPoints();
    if (v23 < v11 || v10 == 0)
    {
      v11 = v23;
      v12 = v22;
    }

    --v10;
    v9 += 16;
  }

  while (v6);
  return v12;
}

uint64_t SBHPolygonFindConvexHullPoints(const void *a1, size_t count, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (count < 0xB)
  {
    v6 = 0;
    v7 = &v17;
  }

  else
  {
    v6 = malloc_type_calloc(count, 0x10uLL, 0x1000040451B5BE8uLL);
    v7 = v6;
  }

  memmove(v7, a1, 16 * count);
  CFMergeSortArray();
  v8 = 0;
  v9 = 0;
  if (count <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = count;
  }

  do
  {
    v11 = 0;
    v12 = &v7[2 * v9];
    *(a3 + 16 * v8) = *v12;
    v9 = (v9 + 1) % count;
    v13 = *v12;
    v14 = v12[1];
    v15 = v7 + 1;
    do
    {
      if (((*v15 - v14) * (v7[2 * v9] - *(v15 - 1)) - (*(v15 - 1) - v13) * (v7[2 * v9 + 1] - *v15)) < 0)
      {
        v9 = v11;
      }

      ++v11;
      v15 += 2;
    }

    while (v10 != v11);
    ++v8;
  }

  while (v9);
  free(v6);
  return v8;
}

double SBHPolygonCreateRectangleFromLine(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = BSFloatApproximatelyEqualToFloat();
  v13 = 0.0;
  if (v12)
  {
    v14 = a6;
  }

  else
  {
    v15 = BSFloatApproximatelyEqualToFloat();
    v14 = 0.0;
    if (v15)
    {
      v13 = a6;
    }

    else
    {
      v16 = atan((a5 - a3) / (a4 - a2));
      v17 = __sincos_stret(v16);
      v14 = v17.__cosval * a6;
      v13 = v17.__sinval * a6;
    }
  }

  *a1 = a2 + v14;
  a1[1] = a3 - v13;
  a1[2] = a4 + v14;
  a1[3] = a5 - v13;
  a1[4] = a4 - v14;
  a1[5] = a5 + v13;
  result = a3 + v13;
  a1[6] = a2 - v14;
  a1[7] = result;
  return result;
}

void sub_1BEC3D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC40314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEC40AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEC417B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC44204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCCUICAPackageDescriptionClass_block_invoke(uint64_t a1)
{
  ControlCenterUIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCUICAPackageDescription");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCUICAPackageDescriptionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCCUICAPackageDescriptionClass_block_invoke_cold_1();
    ControlCenterUIKitLibrary();
  }
}

void ControlCenterUIKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ControlCenterUIKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ControlCenterUIKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E808C8B0;
    v3 = 0;
    ControlCenterUIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ControlCenterUIKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ControlCenterUIKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ControlCenterUIKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

SBHIconGridSizeClassSet *__getCCUILabeledRoundButtonViewControllerClass_block_invoke(uint64_t a1)
{
  ControlCenterUIKitLibrary();
  result = objc_getClass("CCUILabeledRoundButtonViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCCUILabeledRoundButtonViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCCUILabeledRoundButtonViewControllerClass_block_invoke_cold_1();
    return [(SBHIconGridSizeClassSet *)v3 allocWithZone:v4, v5];
  }

  return result;
}

id getCNMonogrammerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNMonogrammerClass_softClass;
  v7 = getCNMonogrammerClass_softClass;
  if (!getCNMonogrammerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNMonogrammerClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getCNMonogrammerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEC49DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC4A6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNMonogrammerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E808C940;
    v6 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ContactsUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CNMonogrammer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNMonogrammerClass_block_invoke_cold_1();
  }

  getCNMonogrammerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNContactStoreClass_block_invoke_cold_1();
    ContactsLibrary();
  }
}

void ContactsLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ContactsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E808C958;
    v3 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContactsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

SBHLibraryCategoryIdentifier *__getCNMutableContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNMutableContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNMutableContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNMutableContactClass_block_invoke_cold_1();
    return [(SBHLibraryCategoryIdentifier *)v3 initWithPredictionCategoryID:v4 localizedDisplayNameKey:v5, v6];
  }

  return result;
}

void sub_1BEC4B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SBHBundle_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_self();
  v1 = [v0 bundleForClass:v3];
  v2 = SBHBundle___springBoardHomeBundle;
  SBHBundle___springBoardHomeBundle = v1;
}

id SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice()
{
  if (SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_onceToken != -1)
  {
    SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_cold_1();
  }

  v0 = _Block_copy(SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_handler);

  return v0;
}

void __SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_block_invoke()
{
  v0 = __SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_block_invoke_2();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_block_invoke_3;
  aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&aBlock[4] = v0;
  v1 = _Block_copy(aBlock);
  v2 = SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_handler;
  SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_handler = v1;
}

double __SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice_block_invoke_2()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.25;
  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v4 = [v3 sbf_homescreenBlurGraphicsQuality];

    result = 0.25;
    if (v4 == 100)
    {
      return 0.5;
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEC57B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC603DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC646B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1BEC65F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEC6AB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC6ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC6B5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC6DB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1BEC73D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEC7548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC77DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC784C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void SBIconViewQueryingHandleMethodRecursion(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SBIconViewQueryingHandleMethodRecursion_block_invoke;
  v13[3] = &unk_1E808D520;
  v15 = v10;
  v16 = a3;
  v14 = v9;
  v11 = v10;
  v12 = v9;
  SBIconViewQueryingEnumerateIconViewQueryable(a1, a2, v13);
}

void __SBIconViewQueryingHandleMethodRecursion_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = (*(*(a1 + 40) + 16))();

    if (!v8)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = (*(*(a1 + 32) + 16))();

  if (v7)
  {
LABEL_5:
    *a4 = 1;
  }
}

id SBIconViewQueryingFirstIconViewForIcon(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SBIconViewQueryingFirstIconViewForIcon_block_invoke;
  v15[3] = &unk_1E808D548;
  v18 = &v20;
  v16 = v5;
  v17 = v6;
  v19 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SBIconViewQueryingFirstIconViewForIcon_block_invoke_2;
  v11[3] = &unk_1E808D570;
  v14 = &v20;
  v7 = v16;
  v12 = v7;
  v8 = v17;
  v13 = v8;
  SBIconViewQueryingOptionalMethodImplementation(v7, a3, sel_firstIconViewForIcon_options_, v15, v11);
  v9 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v9;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL __SBIconViewQueryingFirstIconViewForIcon_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstIconViewForIcon:*(a1 + 40) options:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

uint64_t __SBIconViewQueryingFirstIconViewForIcon_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) firstIconViewForIcon:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

id SBIconViewQueryingFirstIconViewForIconPassingTest(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __SBIconViewQueryingFirstIconViewForIconPassingTest_block_invoke;
  v12[3] = &unk_1E808D598;
  v15 = &v17;
  v7 = v5;
  v13 = v7;
  v16 = a2;
  v8 = v6;
  v14 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SBIconViewQueryingFirstIconViewForIconPassingTest_block_invoke_2;
  v11[3] = &unk_1E8089848;
  v11[4] = &v17;
  SBIconViewQueryingOptionalMethodImplementation(v7, a2, sel_firstIconViewWithOptions_iconPassingTest_, v12, v11);
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

void sub_1BEC7D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __SBIconViewQueryingFirstIconViewForIconPassingTest_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstIconViewWithOptions:*(a1 + 56) iconPassingTest:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

void __SBIconViewQueryingFirstIconViewForIconPassingTest_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

uint64_t __SBIconViewQueryingIconViewForIconInLocation_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) iconViewForIcon:*(a1 + 40) location:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SBIconViewQueryingBestIconViewForIcon_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isApplicationIcon])
  {
    v4 = [v3 applicationBundleID];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SBIconViewQueryingDisplayingIcon(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SBIconViewQueryingDisplayingIcon_block_invoke;
  v15[3] = &unk_1E808D548;
  v18 = &v20;
  v16 = v5;
  v17 = v6;
  v19 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SBIconViewQueryingDisplayingIcon_block_invoke_2;
  v11[3] = &unk_1E808D570;
  v14 = &v20;
  v7 = v16;
  v12 = v7;
  v8 = v17;
  v13 = v8;
  SBIconViewQueryingOptionalMethodImplementation(v7, a3, sel_isDisplayingIcon_options_, v15, v11);
  v9 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v9;
}

uint64_t __SBIconViewQueryingDisplayingIcon_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isDisplayingIcon:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t SBIconViewQueryingDisplayingIconInLocation(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __SBIconViewQueryingDisplayingIconInLocation_block_invoke;
  v20[3] = &unk_1E808D5C0;
  v24 = &v26;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v25 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SBIconViewQueryingDisplayingIconInLocation_block_invoke_2;
  v15[3] = &unk_1E808D5E8;
  v19 = &v26;
  v10 = v21;
  v16 = v10;
  v11 = v22;
  v17 = v11;
  v12 = v23;
  v18 = v12;
  SBIconViewQueryingOptionalMethodImplementation(v10, a4, sel_isDisplayingIcon_inLocation_options_, v20, v15);
  v13 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v13;
}

uint64_t __SBIconViewQueryingDisplayingIconInLocation_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isDisplayingIcon:*(a1 + 40) inLocation:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t SBIconViewQueryingDisplayingIconView(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SBIconViewQueryingDisplayingIconView_block_invoke;
  v15[3] = &unk_1E808D548;
  v18 = &v20;
  v16 = v5;
  v17 = v6;
  v19 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SBIconViewQueryingDisplayingIconView_block_invoke_2;
  v11[3] = &unk_1E808D570;
  v14 = &v20;
  v7 = v16;
  v12 = v7;
  v8 = v17;
  v13 = v8;
  SBIconViewQueryingOptionalMethodImplementation(v7, a3, sel_isDisplayingIconView_options_, v15, v11);
  v9 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v9;
}

uint64_t __SBIconViewQueryingDisplayingIconView_block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isDisplayingIconView:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1BEC7F93C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void _SBClockIconResetTimer()
{
  if ([__tickClients count])
  {
    if (!+[SBHClockApplicationIconImageView hidesSecondsHand](SBHClockApplicationIconImageView, "hidesSecondsHand") && (+[SBHClockApplicationIconImageView sweepsSecondsHand]? (v0 = __displayLink == 0) : (v0 = 0), v0))
    {
      __frameCount = 0;
      v1 = [MEMORY[0x1E6979330] displayLinkWithTarget:objc_opt_class() selector:sel__displayLinkFired_];
      v2 = __displayLink;
      __displayLink = v1;

      LODWORD(v3) = __secondFrameRange_0;
      LODWORD(v4) = __secondFrameRange_1;
      LODWORD(v5) = __secondFrameRange_2;
      [__displayLink setPreferredFrameRateRange:{v3, v4, v5}];
      v6 = __displayLink;
      v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

      [__tickTimer invalidate];
      v8 = __tickTimer;
      __tickTimer = 0;

      v9 = SBLogClock();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Started clock icon tick timer", v10, 2u);
      }
    }

    else if (!__tickTimer)
    {

      _SBClockIconResetTickTimer();
    }
  }
}

void _SBClockIconResetTickTimer()
{
  v14 = _SBClockIconGetCalendar();
  v0 = +[SBHClockApplicationIconImageView effectiveDate];
  v1 = +[SBHClockApplicationIconImageView hidesSecondsHand];
  if (v1)
  {
    v2 = 124;
  }

  else
  {
    v2 = 252;
  }

  v3 = [v14 components:v2 fromDate:v0];
  v4 = v3;
  if (v1)
  {
    [v3 setMinute:{objc_msgSend(v3, "minute") + 1}];
    v5 = 0;
  }

  else
  {
    v5 = [v3 second] + 1;
  }

  [v4 setSecond:v5];
  [v4 setNanosecond:0];
  v6 = [v14 dateFromComponents:v4];
  [v6 timeIntervalSinceDate:v0];
  v8 = v7;
  [__tickTimer invalidate];
  v9 = MEMORY[0x1E695DFF0];
  v10 = objc_opt_self();
  v11 = [v9 scheduledTimerWithTimeInterval:v10 target:sel__tickTimerFired_ selector:v4 userInfo:0 repeats:v8];
  v12 = __tickTimer;
  __tickTimer = v11;

  [__displayLink invalidate];
  v13 = __displayLink;
  __displayLink = 0;
}

id SBHStackLayoutSizeToIconGridSizeClass(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __SBHStackLayoutSizeToIconGridSizeClass_block_invoke;
  v3[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
  v3[4] = a1;
  v1 = SBHGetIconGridSizeClassPassingTest(v3);

  return v1;
}

BOOL __SBHStackLayoutSizeToIconGridSizeClass_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"SBHIconGridSizeClassRegistrationInfoKeyATXStackLayoutSize"];
  v4 = [v3 integerValue] == *(a1 + 32);

  return v4;
}

uint64_t PosterUIFoundationLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterUIFoundationLibraryCore_frameworkLibrary;
  v5 = PosterUIFoundationLibraryCore_frameworkLibrary;
  if (!PosterUIFoundationLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E808D6F0;
    v7 = *off_1E808D700;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterUIFoundationLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1BEC83C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterUIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterUIFoundationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterUIFoundationLibrary()
{
  v0 = PosterUIFoundationLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getPUIMutableStylePickerConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIMutableStylePickerConfigurationClass_softClass;
  v7 = getPUIMutableStylePickerConfigurationClass_softClass;
  if (!getPUIMutableStylePickerConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUIMutableStylePickerConfigurationClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getPUIMutableStylePickerConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEC83E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIMutableStylePickerConfigurationClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIMutableStylePickerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUIMutableStylePickerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPUIMutableStylePickerConfigurationClass_block_invoke_cold_1();
    return getPUIStylePickerComponentsClass(v3);
  }

  return result;
}

id getPUIStylePickerComponentsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIStylePickerComponentsClass_softClass;
  v7 = getPUIStylePickerComponentsClass_softClass;
  if (!getPUIStylePickerComponentsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUIStylePickerComponentsClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getPUIStylePickerComponentsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEC83F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIStylePickerComponentsClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIStylePickerComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUIStylePickerComponentsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPUIStylePickerComponentsClass_block_invoke_cold_1();
    return __getPUIStylePickerHomeScreenConfigurationClass_block_invoke(v3);
  }

  return result;
}

Class __getPUIStylePickerHomeScreenConfigurationClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIStylePickerHomeScreenConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUIStylePickerHomeScreenConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPUIStylePickerHomeScreenConfigurationClass_block_invoke_cold_1();
    return getPUIMutableStylePickerHomeScreenConfigurationClass(v3);
  }

  return result;
}

id getPUIMutableStylePickerHomeScreenConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIMutableStylePickerHomeScreenConfigurationClass_softClass;
  v7 = getPUIMutableStylePickerHomeScreenConfigurationClass_softClass;
  if (!getPUIMutableStylePickerHomeScreenConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEC840D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIMutableStylePickerHomeScreenConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUIMutableStylePickerHomeScreenConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPUIMutableStylePickerHomeScreenConfigurationClass_block_invoke_cold_1();
    return getPUIStylePickerViewControllerClass(v3);
  }

  return result;
}

id getPUIStylePickerViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIStylePickerViewControllerClass_softClass;
  v7 = getPUIStylePickerViewControllerClass_softClass;
  if (!getPUIStylePickerViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUIStylePickerViewControllerClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getPUIStylePickerViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEC84210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIStylePickerViewControllerClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIStylePickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUIStylePickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPUIStylePickerViewControllerClass_block_invoke_cold_1();
    return getPUIGradientViewClass(v3);
  }

  return result;
}

id getPUIGradientViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIGradientViewClass_softClass;
  v7 = getPUIGradientViewClass_softClass;
  if (!getPUIGradientViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPUIGradientViewClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getPUIGradientViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEC84348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIGradientViewClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIGradientView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPUIGradientViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPUIGradientViewClass_block_invoke_cold_1();
    return _SBIconUserInterfaceStyleTypeFromPUIHomeScreenStyleType(v3);
  }

  return result;
}

id _SBIconUserInterfaceStyleTypeFromPUIHomeScreenStyleType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = MEMORY[0x1E69D4050];
  }

  else
  {
    v1 = qword_1E808D740[a1 - 1];
  }

  return *v1;
}

uint64_t _PUIHomeScreenStyleTypeFromSBIconUserInterfaceStyleType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69D4058]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69D4060]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69D4048]])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SBHHomeScreenDefaultsSetPUIStylePickerHomeScreenConfiguration(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Updating home screen configuration: %{public}@", &v7, 0xCu);
  }

  [v4 sbh_setHomeScreenConfiguration:v3];
  v6 = SBLogIcon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Updated home screen configuration: %{public}@", &v7, 0xCu);
  }
}

id SBHIconImageStyleConfigurationFromUserDefaults(void *a1)
{
  v1 = [a1 sbh_homeScreenConfiguration];
  if (v1)
  {
    v2 = [SBHIconImageStyleConfiguration styleConfigurationWithHomeScreenConfiguration:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SBHHomeScreenDefaultsSetIconImageStyleConfiguration(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 homeScreenConfiguration];
  [v3 sbh_setHomeScreenConfiguration:v4];
}

id SBHHomeScreenDefaultsIconTintColor(void *a1)
{
  v1 = [a1 sbh_homeScreenConfiguration];
  if ([v1 styleType] == 3)
  {
    v2 = [v1 accentColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SBHHomeScreenDefaultsSetIconTintColor(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(getPUIMutableStylePickerHomeScreenConfigurationClass());
  v7 = v5;
  if (v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [v5 setStyleType:v6];
  [v7 setAccentColor:v3];

  SBHHomeScreenDefaultsSetPUIStylePickerHomeScreenConfiguration(v4, v7);
}

id SBHOpaqueTintColorFromTintColor(void *a1)
{
  v1 = a1;
  v2 = [getPUIMutableStylePickerHomeScreenConfigurationClass() opaqueAccentColorFromColor:v1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 colorWithAlphaComponent:1.0];
  }

  v5 = v4;

  return v5;
}

void sub_1BEC84D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEC86B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC885BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEC896A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC89B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBIconListIsCoordinateValidForGridSize(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v5 = a1 - 1;
  v6 = a1 - 1 + a3;
  if ((a3 & 0xFFFE) != 0 && v6 <= a4)
  {
    if ((a5 & 2) == 0 && a1 != 1 && a4 - a3 != v5 && v5 % a3)
    {
      return 0;
    }
  }

  else if (v6 > a4)
  {
    return 0;
  }

  v8 = (a3 & 0xFFFE0000) == 0;
  if (((a2 - 1) & 1) == 0)
  {
    v8 = 1;
  }

  return (a2 - 1 + HIWORD(a3) <= HIWORD(a4)) & (v8 | a5);
}

void sub_1BEC8C0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC8C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC8CBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC90260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC90524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC90EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC954FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC956F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BEC96454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC9A2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC9A7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC9BDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC9BF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC9C1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEC9C430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BEC9C908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 176), 8);
  _Block_object_dispose((v10 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BECA07A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECA2820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL _SBIconListIsColumnValidForGridSize(unint64_t a1, unint64_t a2, unsigned __int16 a3, char a4)
{
  v5 = a1 + a3;
  result = v5 <= a2;
  if ((a3 & 0xFFFE) != 0 && v5 <= a2)
  {
    result = 1;
    if ((a4 & 2) == 0)
    {
      if (a1)
      {
        if (a2 - a3 != a1)
        {
          return a1 % a3 == 0;
        }
      }
    }
  }

  return result;
}

uint64_t _SBIconListIsRowValidForGridSize(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v4 = (a2 & 0xFFFE0000) == 0;
  if ((a1 & 1) == 0)
  {
    v4 = 1;
  }

  return (a1 + HIWORD(a2) <= HIWORD(a3)) & (v4 | a4);
}

void sub_1BECA6068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECA6BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBHStringForIconListModelMutationOptions(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"bounced"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"insertion without bouncing inserted icons"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"insertion bouncing inserted icons"];
  if ((a1 & 0x40) == 0)
  {
LABEL_5:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 addObject:@"insertion bouncing default-sized icons first"];
  if ((a1 & 0x80) == 0)
  {
LABEL_6:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:@"insertion fixed"];
  if ((a1 & 0x100) == 0)
  {
LABEL_7:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 addObject:@"insertion displacing existing fixed icons"];
  if ((a1 & 0x200) == 0)
  {
LABEL_8:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 addObject:@"insertion fixed if necessary"];
  if ((a1 & 0x400) == 0)
  {
LABEL_9:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 addObject:@"insertion adjusting location to fit"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_10:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 addObject:@"removal recursive"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_11:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 addObject:@"without closing gaps"];
  if ((a1 & 0x200000) == 0)
  {
LABEL_12:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 addObject:@"minimizing layout disruption"];
  if ((a1 & 0x40000000) == 0)
  {
LABEL_13:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 addObject:@"skip layout invalidation"];
  if ((a1 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 addObject:@"disallow direct rotated layout updates"];
  if ((a1 & 0x20000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 addObject:@"skip dirtying icon state"];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 addObject:@"skip will add icon"];
  if ((a1 & 0x8000000) == 0)
  {
LABEL_17:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:@"clear fixed locations before bounding"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_18:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:@"skip removing from other containers"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_19:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:@"skip reflowing contiguous regions"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_20:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:@"skip bounced icons check"];
  if ((a1 & 0x800000) == 0)
  {
LABEL_21:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 addObject:@"skip observer notification"];
  if ((a1 & 0x100000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 addObject:@"skip quad-based movements"];
  if ((a1 & 0x200000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_49:
  [v3 addObject:@"skip clustered movements"];
  if ((a1 & 0x800000000) != 0)
  {
LABEL_24:
    [v3 addObject:@"use 'add icon' behavior"];
  }

LABEL_25:
  v4 = [v3 componentsJoinedByString:@" | "];

  return v4;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

BOOL tapInsideView(void *a1, void *a2)
{
  v3 = a2;
  [a1 locationInView:v3];
  v6 = 0;
  if (v4 >= 0.0)
  {
    v7 = v5;
    if (v5 >= 0.0)
    {
      v8 = v4;
      [v3 bounds];
      if (v8 <= v9)
      {
        [v3 bounds];
        v6 = v7 <= v10;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

void sub_1BECB3788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBHGetApplicationIconImage(void *a1, char a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = +[SBHIconImageAppearance defaultAppearance];
  v11 = SBHGetApplicationIconImageWithImageAppearance(v9, v10, a2, a3, a4, a5);

  return v11;
}

id SBHGetIconImageWithImageAppearance(void *a1, void *a2, char a3, double a4, double a5, double a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:a4 scale:{a5, a6}];
  SBHModifyImageDescriptorWithImageAppearance(v13, v12, a3);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v14 = SBLogIconImageCache();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134218496;
      v19 = a4;
      v20 = 2048;
      v21 = a5;
      v22 = 1024;
      v23 = [v13 shouldApplyMask];
      _os_log_debug_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEBUG, "Main thread load of icon image of size %fx%f, masked: %{BOOL}u", &v18, 0x1Cu);
    }
  }

  v15 = SBHIconServicesImageForDescriptor(v11, v13, a3);
  v16 = SBHGetIconImageFromIconServicesImage(v15);

  return v16;
}

id SBHGetIconImageWithTraitCollection(void *a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a1;
  v13 = [v11 sbh_iconImageAppearanceFromTraitCollection:a2];
  v14 = SBHGetIconImageWithImageAppearance(v12, v13, a3, a4, a5, a6);

  return v14;
}

id SBHGetIconImageFromIconServicesImage(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x1E69DCAB8];
    v3 = a1;
    v4 = [v3 CGImage];
    [v3 scale];
    v6 = v5;

    a1 = [v2 imageWithCGImage:v4 scale:0 orientation:v6];
    v1 = vars8;
  }

  return a1;
}

id SBHImageDescriptorWithTraitCollection(void *a1, char a2, double a3, double a4, double a5)
{
  v9 = MEMORY[0x1E69A8A30];
  v10 = a1;
  v11 = [[v9 alloc] initWithSize:a3 scale:{a4, a5}];
  SBHModifyImageDescriptorWithTraitCollection(v11, v10, a2);

  return v11;
}

id SBHGetApplicationIconLayer(void *a1, unint64_t a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = +[SBHIconImageAppearance defaultAppearance];
  v11 = SBHGetApplicationIconLayerWithImageAppearance(v9, v10, a2, a3, a4, a5);

  return v11;
}

id SBHGetIconLayerWithTraitCollection(void *a1, uint64_t a2, unint64_t a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a1;
  v13 = [v11 sbh_iconImageAppearanceFromTraitCollection:a2];
  v14 = SBHGetIconLayerWithImageAppearance(v12, v13, a3, a4, a5, a6);

  return v14;
}

id SBHGetGraphicIconLayerWithTraitCollection(void *a1, uint64_t a2, unint64_t a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a1;
  v13 = [v11 sbh_iconImageAppearanceFromTraitCollection:a2];
  v14 = SBHGetGraphicIconLayerWithImageAppearance(v12, v13, a3, a4, a5, a6);

  return v14;
}

id SBHGetGraphicIconImageWithTraitCollection(void *a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a1;
  v13 = [v11 sbh_iconImageAppearanceFromTraitCollection:a2];
  v14 = SBHGetGraphicIconImageWithImageAppearance(v12, v13, a3, a4, a5, a6);

  return v14;
}

id SBHGetGraphicIconImageWithImageAppearance(void *a1, void *a2, char a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69A8A00];
  v12 = a2;
  v13 = a1;
  v14 = [v11 alloc];
  v15 = [v14 initWithTypeIdentifier:v13 layerGroups:MEMORY[0x1E695E0F0]];

  v16 = SBHGetIconImageWithImageAppearance(v15, v12, a3, a4, a5, a6);

  return v16;
}

id SBHTintedImageFromTintableImage(void *a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  [v4 size];
  v6 = v5;
  v8 = v7;
  [v4 scale];
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x1E69A8988]);
  v12 = [v4 CGImage];

  v13 = [v11 initWithCGImage:v12 scale:v10];
  v14 = objc_alloc(MEMORY[0x1E69A8A00]);
  v24[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16 = [v14 initWithImages:v15];

  v17 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v6 scale:{v8, v10}];
  [v17 setAppearance:2];
  v18 = objc_alloc(MEMORY[0x1E69A8968]);
  v19 = [v3 CGColor];

  v20 = [v18 initWithCGColor:v19];
  [v17 setTintColor:v20];
  v21 = [v16 prepareImageForDescriptor:v17];
  v22 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:objc_msgSend(v21 scale:"CGImage") orientation:{0, v10}];

  return v22;
}

void SBHCacheIconImagesForApplicationsWithTraitCollection(void *a1, void *a2, char a3, double a4, double a5, double a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = imageDescriptorsForCachingIconImagesForApplicationsWithTraitCollection(v11, v12, a3, a4, a5, a6);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = objc_alloc(MEMORY[0x1E69A8A00]);
        v22 = [v21 initWithBundleIdentifier:{v19, v23}];
        [v22 prepareImagesForImageDescriptors:v13];

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }
}

id imageDescriptorsForCachingIconImagesForApplicationsWithTraitCollection(void *a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a1;
  v13 = [v11 sbh_iconImageAppearanceFromTraitCollection:a2];
  v14 = imageDescriptorsForCachingIconImagesForApplicationsWithImageAppearance(v13, a3, a4, a5, a6);

  return v14;
}

void SBHCacheIconImagesForApplicationsWithImageAppearance(void *a1, void *a2, char a3, double a4, double a5, double a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = imageDescriptorsForCachingIconImagesForApplicationsWithImageAppearance(v12, a3, a4, a5, a6);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = objc_alloc(MEMORY[0x1E69A8A00]);
        v22 = [v21 initWithBundleIdentifier:{v19, v23}];
        [v22 prepareImagesForImageDescriptors:v13];

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }
}

id imageDescriptorsForCachingIconImagesForApplicationsWithImageAppearance(void *a1, char a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a2)
  {
    v11 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:a3 scale:{a4, a5}];
    SBHModifyImageDescriptorWithImageAppearance(v11, v9, 0);
    [v10 addObject:v11];
  }

  if ((a2 & 2) != 0)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:a3 scale:{a4, a5}];
    SBHModifyImageDescriptorWithImageAppearance(v12, v9, 1);
    [v10 addObject:v12];
  }

  return v10;
}

uint64_t SBHHasCachedIconImagesForApplications(void *a1, char a2, double a3, double a4, double a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = imageDescriptorsForCachingIconImagesForApplicationsWithTraitCollection(v9, 0, a2, a3, a4, a5);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v9;
  v28 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v12 = *v34;
    v13 = 0x1E69A8000uLL;
    v27 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = [objc_alloc(*(v13 + 2560)) initWithBundleIdentifier:v15];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v18 = v10;
        v19 = v10;
        v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v30;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v30 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [v17 imageForDescriptor:{*(*(&v29 + 1) + 8 * i), v27}];

              if (!v24)
              {

                objc_autoreleasePoolPop(v16);
                v25 = 0;
                v10 = v18;
                goto LABEL_19;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
        v10 = v18;
        v12 = v27;
        v13 = 0x1E69A8000;
      }

      while (v14 != v28);
      v25 = 1;
      v28 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  else
  {
    v25 = 1;
  }

LABEL_19:

  return v25;
}

uint64_t SBHIconServicesCacheOptionsForImageOptions(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

double _SBScaleIconZoomAnimatorCameraPositionToScaleModelPointToTargetPoint(double a1, double a2, double a3, double a4, double a5)
{
  result = 1.0;
  if (a5 > 1.0)
  {
    return -(a3 - a5 * a1) / (a5 + -1.0);
  }

  return result;
}

void sub_1BECB76FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void sub_1BECB8740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIXUninstallOptionsClass_block_invoke(uint64_t a1)
{
  InstallCoordinationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IXUninstallOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIXUninstallOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIXUninstallOptionsClass_block_invoke_cold_1();
    InstallCoordinationLibrary();
  }
}

void InstallCoordinationLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!InstallCoordinationLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __InstallCoordinationLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E808E710;
    v3 = 0;
    InstallCoordinationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!InstallCoordinationLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __InstallCoordinationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  InstallCoordinationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getIXAppInstallCoordinatorClass_block_invoke_0(uint64_t a1)
{
  InstallCoordinationLibrary();
  result = objc_getClass("IXAppInstallCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIXAppInstallCoordinatorClass_block_invoke_cold_1();
  }

  getIXAppInstallCoordinatorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SBSLibraryPodPresentationErrorCodeForErrorCode(uint64_t result)
{
  if ((result - 1) >= 9)
  {
    return 0;
  }

  return result;
}

void *__BSSafeCast(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    if (objc_opt_isKindOfClass())
    {
      a2 = v3;
    }

    else
    {
      a2 = 0;
    }
  }

  v4 = a2;

  return a2;
}

void sub_1BECC17D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BECC19A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC1B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC1CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC1E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC1FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC2130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC2268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC23C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC26E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC28EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC4EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC5F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECC9168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BECC95B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BECCA7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_5(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [a1 initWithGridCellIndexes:a10 inGridRange:v11 gridSize:{v12, v10}];
}

uint64_t SBHFilterKnownCHSWidgetFamilies(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SBHFilterKnownCHSWidgetFamilies_block_invoke;
  v4[3] = &unk_1E808EBD0;
  v4[4] = &v5;
  SBHEnumerateIconGridSizeClasses(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2 & a1;
}

void sub_1BECD0960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SBHFilterKnownCHSWidgetFamilies_block_invoke(uint64_t a1, void *a2)
{
  v4 = SBHGetIconGridSizeClassInfoValue(a2, @"SBHIconGridSizeClassRegistrationInfoKeyCHSWidgetFamily");
  v3 = [v4 integerValue];
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) |= 1 << v3;
  }
}

void sub_1BECD0BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BECD0E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBHTooltipViewParametersMake@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>)
{
  result = a3;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a9;
  *(a4 + 56) = a10;
  *(a4 + 64) = a11;
  *(a4 + 72) = result;
  return result;
}

uint64_t SBHTooltipViewParametersEqualToTooltipViewParameters(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && *(a1 + 64) == *(a2 + 64))
  {
    v4 = [*(a1 + 72) isEqualToString:*(a2 + 72)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1BECD4EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SBTreeNodeContainsDescendantIndexPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if ([v4 length])
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      v8 = [v7 treeChildren];
      v9 = [v8 count];
      v10 = [v4 indexAtPosition:v6];
      if (v10 >= v9)
      {
        break;
      }

      v11 = [v8 objectAtIndex:v10];

      ++v6;
      v7 = v11;
      if (v6 >= [v4 length])
      {
        v12 = 1;
        v7 = v11;
        goto LABEL_8;
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
    v7 = v5;
  }

LABEL_8:

  return v12;
}

id SBTreeNodeGetDescendantAtIndexPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if ([v4 length])
  {
    v7 = 0;
    v8 = v5;
    do
    {
      v9 = [v8 treeChildren];
      v10 = [v9 count];
      v11 = [v4 indexAtPosition:v7];
      if (v11 >= v10)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Index %lu out of bounds for children array of length %lu", v11, v10];
        v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
        objc_exception_throw(v13);
      }

      v6 = [v9 objectAtIndex:v11];

      ++v7;
      v8 = v6;
    }

    while (v7 < [v4 length]);
  }

  return v6;
}

uint64_t SBTreeNodeIsDescendantOfTreeNode(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 treeParent];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 isEqual:v3];
      if (v6)
      {
        break;
      }

      v7 = [v5 treeParent];

      v5 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id SBTreeNodeGetIndexPathForDescendantTreeNode(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 isEqual:v4])
  {
    v5 = [MEMORY[0x1E696AC88] bs_emptyPath];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = v4;
    v8 = [v7 treeParent];
    if (v8)
    {
      v9 = v8;
      while (1)
      {
        v10 = [v9 treeChildren];
        v11 = [v10 indexOfObject:v7];

        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        [v6 addObject:v12];

        if ([v9 isEqual:v3])
        {
          break;
        }

        v13 = v9;

        v9 = [v13 treeParent];

        v7 = v13;
        if (!v9)
        {
          v5 = 0;
          v7 = v13;
          goto LABEL_16;
        }
      }

      v14 = v6;
      v15 = [v14 count];
      if (v15)
      {
        v16 = v15;
        if (v15 >= 0x10)
        {
          v17 = malloc_type_calloc(v15, 8uLL, 0x100004000313F17uLL);
          v18 = v17;
        }

        else
        {
          v17 = 0;
          v18 = &v21;
        }

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___SBTreeNodeIndexPathFromReverseOfNSArray_block_invoke;
        v20[3] = &__block_descriptor_48_e25_v32__0__NSNumber_8Q16_B24l;
        v20[4] = v18;
        v20[5] = v16;
        [v14 enumerateObjectsWithOptions:2 usingBlock:v20];
        v5 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v18 length:v16];
        free(v17);
      }

      else
      {
        v5 = [MEMORY[0x1E696AC88] bs_emptyPath];
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
  }

  return v5;
}

id SBTreeNodeGetRootNode(void *a1)
{
  v1 = a1;
  v2 = [v1 treeParent];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 treeParent];
    if (v4)
    {
      do
      {
        v5 = v4;

        v4 = [v5 treeParent];
        v3 = v5;
      }

      while (v4);
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void SBIconLocationGroupAddLocation(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = SBGetIconLocationGroups();
  v5 = [v4 objectForKey:v8];
  v6 = v5;
  if (v5)
  {
    [v5 addObject:v3];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA8] setWithObject:v3];

    [v4 setObject:v7 forKey:v8];
    v3 = v7;
  }
}

__CFString *SBIconLocationSelectLocationWithWidgets(void *a1, int a2)
{
  v3 = a1;
  v4 = @"SBIconLocationRootWithWidgets";
  if (![(__CFString *)v3 isEqualToString:@"SBIconLocationRoot"]|| (a2 & 1) == 0)
  {
    if ([(__CFString *)v3 isEqualToString:@"SBIconLocationRootWithWidgets"]^ 1 | a2)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"SBIconLocationRoot";
    }
  }

  v5 = v4;

  return v4;
}

uint64_t SBHIconGridSizeGetSmallestDimension(uint64_t result)
{
  if (result >= WORD1(result))
  {
    return WORD1(result);
  }

  else
  {
    return result;
  }
}

uint64_t SBHIconGridSizeGetLargestDimension(uint64_t result)
{
  if (result <= WORD1(result))
  {
    return WORD1(result);
  }

  else
  {
    return result;
  }
}

uint64_t SBHIconGridSizeRotate(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  return (v2 >> 16);
}

uint64_t SBHIconGridSizeRotateWithOptions(uint64_t result, char a2)
{
  HIDWORD(v3) = result;
  LODWORD(v3) = result;
  v2 = v3 >> 16;
  if ((a2 & 2) != 0)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

id SBHStringForGridCellInfoOptions(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ReversedOrder"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"RotatedGrid"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:@"AllowGaps"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v3 addObject:@"IconReordering"];
  if ((a1 & 0x10) != 0)
  {
LABEL_6:
    [v3 addObject:@"FlippedGrid"];
  }

LABEL_7:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

unint64_t SBHIconGridDistanceBetweenGridCellIndexes(unint64_t a1, unint64_t a2, unsigned __int16 a3)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = a1 % a3 + 1;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = a2 % a3 + 1;
  }

  return v4 - v3;
}

uint64_t SBHIconGridDistanceBetweenGridRanges(unint64_t a1, int a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  v6 = a4;
  SBHIconGridRangeIntersection(a1, a2, a3, a4, a5);
  v12.f64[0] = 0.0;
  if (v11)
  {
    v13 = (v11 & 0xFFFF0000) == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
    v15 = HIWORD(a2);
    v16 = a1 + a2 - 1;
    v17 = a5;
    v18 = v16 + (v15 - 1) * a5;
    v19 = a1 + v17 * (v15 - 1);
    v20 = a3 + v6 - 1;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v12 = vnegq_f64(v21);
    do
    {
      v28 = v12;
      if (v14 >= 0xC)
      {
        v22 = v19;
      }

      else
      {
        v22 = v18;
      }

      if (v14 < 8)
      {
        v22 = v16;
      }

      if (v14 >= 4)
      {
        v23 = v22;
      }

      else
      {
        v23 = a1;
      }

      if ((v14 & 3) != 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = a3;
      }

      v25.i64[0] = SBHIconGridDistanceBetweenGridCellIndexes(v23, v24, a5);
      v25.i64[1] = v26;
      v12 = vbslq_s8(vcgtq_u64(vabsq_s64(v28), vabsq_s64(v25)), v25, v28);
      ++v14;
    }

    while (v14 != 16);
  }

  return *&v12.f64[0];
}

uint64_t SBHIconGridRangeIntersection(unint64_t a1, int a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != 0x7FFFFFFFFFFFFFFFLL && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = a1 / a5;
    v9 = a1 % a5;
    v10 = a3 / a5;
    v11 = a3 % a5;
    if (v9 + a2 > v11)
    {
      v12 = v11 + a4;
      if (v12 > v9)
      {
        v13 = v8 + HIWORD(a2);
        if (v13 > v10)
        {
          v14 = v10 + HIWORD(a4);
          if (v14 > v8)
          {
            if (v9 <= v11)
            {
              v9 = a3 % a5;
            }

            if (v8 > v10)
            {
              v10 = v8;
            }

            return v9 + v10 * a5;
          }
        }
      }
    }
  }

  return result;
}

uint64_t SBHIconGridDistanceGetNumberOfSteps(uint64_t a1, uint64_t a2)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  return v2 + v3;
}

uint64_t SBHIconGridDistanceGetDirection(uint64_t a1, uint64_t a2)
{
  v2 = 8 * (a1 != 0);
  if (a1 < 0)
  {
    v2 = 2;
  }

  v3 = v2 | 4;
  if (!a2)
  {
    v3 = v2;
  }

  if (a2 < 0)
  {
    return v2 + 1;
  }

  else
  {
    return v3;
  }
}

__CFString *SBStringForIconListDragHitRegion(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"inside"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"center"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:@"top"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"bottom"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  [v3 addObject:@"left"];
  if ((a1 & 0x20) != 0)
  {
LABEL_7:
    [v3 addObject:@"right"];
  }

LABEL_8:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

__CFString *SBHStringForIconListIconSpacingAxisMatchingBehavior(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E808EE88[a1];
  }
}

void SBHRegisterIconGridSizeClass(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  [v5 registerIconGridSizeClass:v4 info:v3];
}

void SBHRegisterIconGridSizeClasses(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  [v2 registerIconGridSizeClasses:v1];
}

id SBHShortStringForIconGridSizeClass(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = [v2 shortDescriptionForGridSizeClass:v1];

  return v3;
}

id SBHIconGridSizeClassForString(void *a1)
{
  v1 = a1;
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = [v2 gridSizeClassForDescription:v1];

  return v3;
}

void SBHEnumerateFilteredIconGridSizeClasses(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  [v5 enumerateGridSizeClassesFilteredBySet:v4 usingBlock:v3];
}

uint64_t SBHIconLocationIsAppPrediction(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAPUIIconLocationAppPredictionsSymbolLoc_ptr;
  v10 = getAPUIIconLocationAppPredictionsSymbolLoc_ptr;
  if (!getAPUIIconLocationAppPredictionsSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke;
    v6[3] = &unk_1E8089848;
    v6[4] = &v7;
    __getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    IsAppPrediction_cold_1 = SBHIconLocationIsAppPrediction_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(IsAppPrediction_cold_1);
  }

  v3 = [v1 isEqualToString:*v2];

  return v3;
}

uint64_t SBHIconGridRangeMakeWithCellIndexes(void *a1, int a2)
{
  v3 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1BEECC529;
  v12 = xmmword_1BEE87D40;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SBHIconGridRangeMakeWithCellIndexes_block_invoke;
  v6[3] = &unk_1E808EE28;
  v6[4] = &v8;
  v7 = a2;
  [v3 enumerateIndexesUsingBlock:v6];
  v4 = v9[4];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void sub_1BECD72BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t __SBHIconGridRangeMakeWithCellIndexes_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(*(a1 + 32) + 8);
  result = *(v4 + 32);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = SBHIconGridRangeUnion(result, *(v4 + 40), a2, 65537, *(a1 + 40));
    v2 = result;
    *(v4 + 40) = v6;
  }

  *(v4 + 32) = v2;
  return result;
}

id SBHIconGridRangeCellIndexes(uint64_t a1, int a2, unsigned __int16 a3)
{
  v6 = a2;
  if (a2 == a3)
  {
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a1, HIWORD(a2) * a2}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD50] indexSet];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __SBHIconGridRangeCellIndexes_block_invoke;
    v10[3] = &unk_1E808C408;
    v7 = v8;
    v11 = v7;
    SBHIconGridRangeEnumerateCellIndexes(a1, a2 & 0xFFFF0000 | v6, a3, v10);
  }

  return v7;
}

void SBHIconGridRangeEnumerateCellIndexes(uint64_t a1, int a2, unsigned __int16 a3, void *a4)
{
  v7 = a4;
  v8 = HIWORD(a2);
  if (HIWORD(a2))
  {
    v9 = 0;
    v10 = a2;
    while (__CFADD__(v9 * a3, a1) || !v10)
    {
LABEL_8:
      if (++v9 == v8)
      {
        goto LABEL_9;
      }
    }

    v11 = v9 * a3 + a1;
    v12 = v10;
    while (1)
    {
      v13 = 0;
      v7[2](v7, v11, &v13);
      if (v13)
      {
        break;
      }

      ++v11;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
}

void SBHIconGridRangeEnumerateSubranges(unint64_t a1, int a2, unsigned int a3, unsigned __int16 a4, char a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v57 = a5;
  v53 = v10;
  if ((a5 & 8) != 0)
  {
    v27 = v10;
    v28 = a5;
    v52 = v27;
    v56 = a3;
    if (a5)
    {
      v29 = 1;
    }

    else
    {
      v29 = HIWORD(a3);
    }

    if (a5)
    {
      v30 = 1;
    }

    else
    {
      v30 = a3;
    }

    v47 = v30;
    v31 = a2;
    if (a2)
    {
      v32 = a3;
      v55 = a4;
      v33 = HIWORD(a2);
      v34 = a4;
      v35 = HIWORD(a2) << 16;
      v49 = 0;
      v44 = HIWORD(a2) - 1;
      do
      {
        if (v33)
        {
          v36 = 0;
          v37 = v31 + ~v49;
          v38 = v44;
          if ((v57 & 6) == 0)
          {
            v37 = v49;
          }

          v39 = v37 + a1;
          do
          {
            if ((v28 & 4) != 0)
            {
              v40 = v38;
            }

            else
            {
              v40 = v36;
            }

            v41 = v39 + v40 * v34;
            v60 = 0;
            if (SBHIconGridRangeIntersection(a1, v35 | v31, v41, v32, v55) == v41 && v42 == v56)
            {
              v52[2](v52, v41, v56, &v60);
              v28 = v57;
              if (v60)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v28 = v57;
            }

            v36 += v29;
            v38 -= v29;
          }

          while (v36 < v33);
        }

        v49 += v47;
      }

      while (v49 < v31);
    }

LABEL_53:
  }

  else
  {
    if (a5)
    {
      v12 = 1;
    }

    else
    {
      v12 = a3;
    }

    if (a5)
    {
      v13 = 1;
    }

    else
    {
      v13 = HIWORD(a3);
    }

    v50 = v13;
    v51 = HIWORD(a2);
    if (HIWORD(a2))
    {
      v14 = a3;
      v15 = a2;
      v46 = a4;
      v48 = a5 & 6;
      v16 = a3;
      v17 = a2;
      v18 = a4;
      v54 = 0;
      v45 = a2 - 1;
      do
      {
        if (v15)
        {
          v19 = 0;
          v20 = v51 + ~v54;
          if (!v48)
          {
            v20 = v54;
          }

          v21 = v45;
          v22 = a1 + v20 * v46;
          do
          {
            if ((v11 & 4) != 0)
            {
              v23 = v21;
            }

            else
            {
              v23 = v19;
            }

            v24 = v22 + v23;
            v59 = 0;
            if (SBHIconGridRangeIntersection(a1, v17, v22 + v23, v16, v18) == v22 + v23 && v25 == v14)
            {
              (v53)[2](v53, v24, v16, &v59);
              v11 = v57;
              if (v59)
              {
                goto LABEL_54;
              }
            }

            else
            {
              v11 = v57;
            }

            v19 += v12;
            v21 -= v12;
          }

          while (v19 < v15);
        }

        v54 += v50;
      }

      while (v54 < v51);
    }
  }

LABEL_54:
}

BOOL SBHIconGridRangeContainsIconGridRange(unint64_t a1, int a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  v7 = SBHIconGridRangeIntersection(a1, a2, a3, a4, a5);
  v9 = ((v8 ^ a4) & 0xFFFF0000) == 0 && v8 == a4;
  return v7 == a3 && v9;
}

void SBHIconGridRangeEnumerateRows(unint64_t a1, int a2, unsigned __int16 a3, char a4, void *a5)
{
  v9 = a5;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SBHIconGridRangeEnumerateRows_block_invoke;
  v11[3] = &unk_1E808D988;
  v10 = v9;
  v12 = v10;
  v13 = v14;
  SBHIconGridRangeEnumerateSubranges(a1, a2, a2 | 0x10000, a3, a4, v11);

  _Block_object_dispose(v14, 8);
}

void sub_1BECD7904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBHIconGridRangeEnumerateRows_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t SBHIconGridRangeCellIndexBelowColumn(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a1 + a4 + (HIWORD(a2) * a3) >= HIWORD(a3) * a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a1 + a4 + HIWORD(a2) * a3;
  }
}