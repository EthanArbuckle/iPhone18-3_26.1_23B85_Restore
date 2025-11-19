uint64_t sub_1BEDE7EC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = [v3 listAtGridPath_];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 gridCellInfoWithOptions_];
    v21 = [v20 iconIndexForGridCellIndex_];
    if (v21 == sub_1BEE467EC())
    {
      [v19 numberOfIcons];
    }

    v22 = [v3 indexPathForList_];
    if (v22)
    {
      v23 = v22;
      sub_1BEE4697C();

      v24 = sub_1BEE469DC();
      (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    }

    else
    {
      v24 = sub_1BEE469DC();
      (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
    }

    sub_1BEB31BF4(v15, v17);
    sub_1BEB44B04(v17, v9, &qword_1EBDC7A28);
    sub_1BEE469DC();
    v28 = *(v24 - 8);
    if ((*(v28 + 48))(v9, 1, v24) == 1)
    {
      sub_1BEB4992C(v17, &qword_1EBDC7A28);

      sub_1BEB4992C(v9, &qword_1EBDC7A28);
      v29 = 1;
    }

    else
    {
      sub_1BEE469BC();

      sub_1BEB4992C(v17, &qword_1EBDC7A28);
      (*(v28 + 8))(v9, v24);
      v29 = 0;
    }

    (*(v28 + 56))(v12, v29, 1, v24);
    return sub_1BEB31BF4(v12, a2);
  }

  else
  {
    v25 = sub_1BEE469DC();
    v26 = *(*(v25 - 8) + 56);

    return v26(a2, 1, 1, v25);
  }
}

uint64_t sub_1BEDE82BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = [v3 gridPathForRelativePath_];
  if (v9)
  {
    v10 = v9;
    v11 = [v3 indexPathForGridPath_];
    if (v11)
    {
      v12 = v11;
      sub_1BEE4697C();

      v13 = sub_1BEE469DC();
      (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    }

    else
    {

      v17 = sub_1BEE469DC();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    }

    return sub_1BEB31BF4(v8, a2);
  }

  else
  {
    v14 = sub_1BEE469DC();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_1BEDE848C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BEB541FC;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_419;
  v7 = _Block_copy(aBlock);

  [v2 enumerateAllIconsWithOptions:1 usingBlock:v7];
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

uint64_t sub_1BEDE8618()
{
  v1 = v0;
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BEE4696C();
  v12[0] = 0;
  v3 = [v1 folderContainingIndexPath:v2 relativeIndexPath:v12];

  v4 = v12[0];
  if (v3)
  {
    if (v12[0])
    {
      sub_1BEB20D28(0, &qword_1EBDBFE90);
      v5 = v4;
      if (sub_1BEE473CC())
      {
        v6 = [v5 sbListIndex];
        v7 = [v5 sbIconIndex];
        if ([v1 isValidListIndex_])
        {
          v8 = [v1 listAtIndex_];
          if (v7 < [v8 numberOfIcons])
          {
            v9 = [v8 iconAtIndex_];

            v3 = v8;
LABEL_8:

            return v9;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      v9 = [v3 iconAtIndexPath_];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v12[0];
  }

  result = sub_1BEE4764C();
  __break(1u);
  return result;
}

id sub_1BEDE8844(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

id sub_1BEDE8A8C(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = [v7 *a4];
  v9 = [v8 folder];

  return v9;
}

uint64_t sub_1BEDE8B18(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v5 = [v2 uniqueIdentifier];
  v6 = sub_1BEE4708C();
  v8 = v7;

  if (v6 == a1 && v8 == a2)
  {

    goto LABEL_9;
  }

  v10 = sub_1BEE4770C();

  if (v10)
  {
LABEL_9:
    v19 = v2;
    v17 = v2;
    v16 = 0;
    goto LABEL_10;
  }

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = &v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BEDFB7D4;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_409;
  v13 = _Block_copy(aBlock);

  [v2 enumerateAllIconsWithOptions:1 usingBlock:v13];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v16 = sub_1BEDFB7D4;
    v2 = v19;
LABEL_10:
    sub_1BEB326F8(v16);
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1BEDE8D20(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, void **a6)
{
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v23 = a1;
  v13 = [v12 folder];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 uniqueIdentifier];
    v16 = sub_1BEE4708C();
    v18 = v17;

    if (v16 == a4 && v18 == a5)
    {
    }

    else
    {
      v20 = sub_1BEE4770C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v22 = *a6;
    *a6 = v14;
    v14 = v14;

    *a3 = 1;
LABEL_13:

    v21 = v14;
    goto LABEL_14;
  }

  v21 = v23;
LABEL_14:
}

uint64_t sub_1BEDE8E94(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v5 = [v2 displayName];
  v6 = sub_1BEE4708C();
  v8 = v7;

  if (v6 == a1 && v8 == a2)
  {

    goto LABEL_9;
  }

  v10 = sub_1BEE4770C();

  if (v10)
  {
LABEL_9:
    v19 = v2;
    v17 = v2;
    v16 = 0;
    goto LABEL_10;
  }

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = &v19;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BEDFB7C8;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_399;
  v13 = _Block_copy(aBlock);

  [v2 enumerateAllIconsWithOptions:1 usingBlock:v13];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v16 = sub_1BEDFB7C8;
    v2 = v19;
LABEL_10:
    sub_1BEB326F8(v16);
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1BEDE909C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, void **a6)
{
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v23 = a1;
  v13 = [v12 folder];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 displayName];
    v16 = sub_1BEE4708C();
    v18 = v17;

    if (v16 == a4 && v18 == a5)
    {
    }

    else
    {
      v20 = sub_1BEE4770C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v22 = *a6;
    *a6 = v14;
    v14 = v14;

    *a3 = 1;
LABEL_13:

    v21 = v14;
    goto LABEL_14;
  }

  v21 = v23;
LABEL_14:
}

uint64_t sub_1BEDE9210(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v5 = [v2 defaultDisplayName];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BEE4708C();
    v9 = v8;

    if (v7 == a1 && v9 == a2)
    {
    }

    else
    {
      v11 = sub_1BEE4770C();

      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v20 = v2;
    v18 = v2;
    v17 = 0;
    goto LABEL_11;
  }

LABEL_7:
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = &v20;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BEDFB7BC;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_389;
  v14 = _Block_copy(aBlock);

  [v2 enumerateAllIconsWithOptions:1 usingBlock:v14];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v17 = sub_1BEDFB7BC;
    v2 = v20;
LABEL_11:
    sub_1BEB326F8(v17);
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1BEDE9418(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, void **a6)
{
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v24 = a1;
  v13 = [v12 folder];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 defaultDisplayName];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BEE4708C();
      v19 = v18;

      if (v17 == a4 && v19 == a5)
      {
      }

      else
      {
        v21 = sub_1BEE4770C();

        if ((v21 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v22 = *a6;
      *a6 = v14;
      v23 = v14;

      *a3 = 1;
      v14 = v24;
      v24 = v23;
    }

LABEL_13:
  }
}

uint64_t sub_1BEDE958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = 0;
  v13 = [v6 uniqueIdentifier];
  v14 = sub_1BEE4708C();
  v16 = v15;

  if (a2)
  {
    if (v14 == a1 && v16 == a2)
    {

LABEL_12:
      v27 = v6;
      v25 = v6;
      v24 = 0;
      goto LABEL_13;
    }

    v18 = sub_1BEE4770C();

    if (v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = &v27;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  v19[8] = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BEDFB788;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_379;
  v21 = _Block_copy(aBlock);

  [v6 enumerateAllIconsWithOptions:1 usingBlock:v21];
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v24 = sub_1BEDFB788;
    v6 = v27;
LABEL_13:
    sub_1BEB326F8(v24);
    return v6;
  }

  __break(1u);
  return result;
}

void sub_1BEDE97D8(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = a10;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v48 = a1;
  v20 = [v19 folder];
  if (v20)
  {
    v21 = v20;
    if (!a5)
    {
      goto LABEL_13;
    }

    v22 = a3;
    v23 = [v20 uniqueIdentifier];
    v24 = sub_1BEE4708C();
    v26 = v25;

    if (v24 == a4 && v26 == a5)
    {

      a3 = v22;
      v17 = a10;
    }

    else
    {
      v28 = sub_1BEE4770C();

      a3 = v22;
      v17 = a10;
      if ((v28 & 1) == 0)
      {
LABEL_13:
        if (a8)
        {
          v31 = [v21 displayName];
          v32 = sub_1BEE4708C();
          v34 = v33;

          if (v32 == a7 && v34 == a8)
          {
          }

          else
          {
            v36 = sub_1BEE4770C();

            if ((v36 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          v37 = *a6;
          *a6 = v21;
          v38 = v21;

          *a3 = 1;
        }

LABEL_22:
        if (!v17)
        {
          goto LABEL_32;
        }

        v39 = [v21 defaultDisplayName];
        if (!v39)
        {
          goto LABEL_32;
        }

        v40 = v39;
        v41 = sub_1BEE4708C();
        v43 = v42;

        if (v41 == a9 && v43 == v17)
        {
        }

        else
        {
          v45 = sub_1BEE4770C();

          if ((v45 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v46 = *a6;
        *a6 = v21;
        v47 = v21;

        *a3 = 1;
LABEL_32:

        goto LABEL_33;
      }
    }

    v29 = *a6;
    *a6 = v21;
    v30 = v21;

    *a3 = 1;
    goto LABEL_13;
  }

LABEL_33:
}

id sub_1BEDE9B64(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BEE4696C();
  v9[0] = 0;
  v5 = [v2 folderContainingIndexPath:v4 relativeIndexPath:v9];

  if (!v5)
  {
    return 0;
  }

  if (!v9[0])
  {

    return 0;
  }

  v6 = v9[0];
  v7 = [v5 listAtIndex_];
  if (a2)
  {
    *a2 = [v6 sbIconIndex];
  }

  return v7;
}

char *sub_1BEDE9C8C()
{
  v1 = v0;
  v2 = sub_1BEE469DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BEE4696C();
  v6 = [v5 sb_iconRelativePathComponents];

  v7 = sub_1BEE471AC();
  v8 = *(v7 + 16);
  v30 = v3;
  v31 = v8;
  v28[1] = v3 + 16;
  v29 = (v3 + 8);
  result = v1;
  v10 = result;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v31 == v11)
    {

LABEL_16:

      return v12;
    }

    if (v11 >= *(v7 + 16))
    {
      break;
    }

    (*(v30 + 16))(v32, v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v11, v2);
    v13 = sub_1BEE4696C();
    v14 = [v13 sbListIndex];

    if (v14 >= [v10 listCount])
    {
      (*v29)(v32, v2);

      return v12;
    }

    v15 = [v10 listAtIndex_];
    v34 = sub_1BEB20D28(0, &qword_1EBDBFF10);
    *&v33 = v15;
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BEE304B4(0, *(v12 + 2) + 1, 1, v12);
    }

    v18 = *(v12 + 2);
    v17 = *(v12 + 3);
    if (v18 >= v17 >> 1)
    {
      v12 = sub_1BEE304B4((v17 > 1), v18 + 1, 1, v12);
    }

    *(v12 + 2) = v18 + 1;
    sub_1BEB45FE0(&v33, &v12[32 * v18 + 32]);
    v19 = sub_1BEE4696C();
    v20 = [v19 sbIconIndex];

    if (v20 == sub_1BEE467EC())
    {
      (*v29)(v32, v2);

      return v12;
    }

    v21 = v2;
    v22 = [v16 iconAtIndex_];
    v34 = sub_1BEB20D28(0, &qword_1EBDBFEA0);
    *&v33 = v22;
    v24 = *(v12 + 2);
    v23 = *(v12 + 3);
    v25 = v22;
    if (v24 >= v23 >> 1)
    {
      v12 = sub_1BEE304B4((v23 > 1), v24 + 1, 1, v12);
    }

    *(v12 + 2) = v24 + 1;
    sub_1BEB45FE0(&v33, &v12[32 * v24 + 32]);
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    v2 = v21;
    if (!v26)
    {

      (*v29)(v32, v21);
      return v12;
    }

    v27 = [v26 folder];

    result = (*v29)(v32, v21);
    ++v11;
    v10 = v27;
    if (!v27)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BEDEA0E8(void *a1)
{
  v3 = v1;
  v4 = a1;
  v30 = a1;
  if (!a1[2])
  {

    goto LABEL_9;
  }

  v6 = a1[4];
  v5 = a1[5];

  v7 = [v3 uniqueIdentifier];
  v8 = sub_1BEE4708C();
  v10 = v9;

  if (v6 != v8 || v5 != v10)
  {
    v2 = sub_1BEE4770C();

    if (v2)
    {
      goto LABEL_11;
    }

LABEL_9:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_11:
  sub_1BEDDCF9C(0);

  ObjectType = type metadata accessor for SBFolder(v13);
  *&v28 = v3;
  v14 = v3;
  v12 = sub_1BEE304B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v12 + 2);
  v15 = *(v12 + 3);
  v4 = v2 + 1;
  if (v2 >= v15 >> 1)
  {
LABEL_32:
    v12 = sub_1BEE304B4((v15 > 1), v4, 1, v12);
  }

  *(v12 + 2) = v4;
  sub_1BEB45FE0(&v28, &v12[32 * v2 + 32]);
  v4 = v30;
LABEL_13:
  v16 = *(v4 + 16);
  v3 = v3;
  if (v16)
  {
    v17 = 0;
    v18 = v4 + 40;
    while (2)
    {
      v19 = v18 + 16 * v17;
      v20 = v17;
      while (1)
      {
        v15 = *(v4 + 16);
        if (v20 >= v15)
        {
          __break(1u);
          goto LABEL_32;
        }

        v21 = sub_1BEE4705C();

        v2 = [v3 objectWithUniqueIdentifier_];

        if (!v2)
        {
          goto LABEL_30;
        }

        ObjectType = swift_getObjectType();
        *&v28 = v2;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1BEE304B4(0, *(v12 + 2) + 1, 1, v12);
        }

        v23 = *(v12 + 2);
        v22 = *(v12 + 3);
        if (v23 >= v22 >> 1)
        {
          v12 = sub_1BEE304B4((v22 > 1), v23 + 1, 1, v12);
        }

        *(v12 + 2) = v23 + 1;
        sub_1BEB45FE0(&v28, &v12[32 * v23 + 32]);
        v24 = swift_dynamicCastObjCProtocolConditional();
        if (v24)
        {
          break;
        }

        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = [v25 folder];
          swift_unknownObjectRelease();
          if (v26)
          {
            goto LABEL_29;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v20;
        v19 += 16;
        if (v16 == v20)
        {
          goto LABEL_30;
        }
      }

      v26 = v24;
LABEL_29:
      swift_unknownObjectRelease();
      v17 = v20 + 1;
      v3 = v26;
      v18 = v4 + 40;
      if (v16 - 1 != v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:
  swift_unknownObjectRelease();

  return v12;
}

char *sub_1BEDEA4C4()
{
  v1 = v0;
  v2 = sub_1BEE4696C();
  v3 = [v1 resolvedComponentsForIndexPath_];

  v4 = sub_1BEE471AC();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = v5 + 32;
    do
    {
      sub_1BEDD0540(v8, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A18);
      if (swift_dynamicCast())
      {
        v10 = [v17 uniqueIdentifier];
        v11 = sub_1BEE4708C();
        v13 = v12;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1BEE303A8(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_1BEE303A8((v14 > 1), v15 + 1, 1, v7);
        }

        swift_unknownObjectRelease();
        *(v7 + 2) = v15 + 1;
        v9 = &v7[16 * v15];
        *(v9 + 4) = v11;
        *(v9 + 5) = v13;
      }

      v8 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

id sub_1BEDEA6B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1BEE469DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BEE4697C();
  v10 = a1;
  a4(v9);

  (*(v7 + 8))(v9, v6);
  v11 = sub_1BEE4719C();

  return v11;
}

id sub_1BEDEA7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    v6 = v4;
    goto LABEL_5;
  }

  v5 = sub_1BEE4705C();
  v6 = [v4 firstFolderWithUniqueIdentifier_];

  if (v6)
  {
LABEL_5:
    v8 = v6;
    v9 = sub_1BEE4705C();
    v7 = [v8 listWithIdentifier_];

    return v7;
  }

  return 0;
}

uint64_t sub_1BEDEAB20()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFB76C;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_369;
  v3 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v3];
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

uint64_t sub_1BEDEACB4()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFBE00;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_359;
  v3 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:3 usingBlock:v3];
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

uint64_t sub_1BEDEAE14(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *a4 = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1BEDEAEA0()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFB764;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_349;
  v3 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:3 usingBlock:v3];
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

uint64_t sub_1BEDEB000(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a4;
    }
  }

  return result;
}

uint64_t sub_1BEDEB088()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFB748;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_339;
  v3 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v3];
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

uint64_t sub_1BEDEB21C()
{
  v8 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1BEDFBDFC;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1BEDFBF74;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEB31DD8;
  aBlock[3] = &block_descriptor_329;
  v3 = _Block_copy(aBlock);

  [v0 enumerateAllIconsWithOptions:3 usingBlock:v3];
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

uint64_t sub_1BEDEB37C(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v6 = [a1 gridSizeClass];
  v7 = sub_1BEE4708C();
  v9 = v8;
  if (v7 == sub_1BEE4708C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1BEE4770C();

    if ((v12 & 1) == 0)
    {
      *a4 = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_1BEDEB46C()
{
  v20 = MEMORY[0x1E69E7CC0];
  v1 = [v0 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v2 = sub_1BEE471AC();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB4EA90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BEE305C4(0, v5[2] + 1, 1, v5);
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1BEE305C4((v9 > 1), v10 + 1, 1, v5);
      }

      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v4;
      v11[5] = v7;
      v20 = v5;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v12 = swift_allocObject();
  *(v12 + 16) = &v20;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BEDFB3F8;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_159;
  v14 = _Block_copy(aBlock);

  [v18 enumerateExtraListsUsingBlock_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v17 = v20;

    return v17;
  }

  return result;
}

uint64_t sub_1BEDEB730(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_1BEE305C4(0, v6[2] + 1, 1, v6);
    v6 = result;
    *a4 = result;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_1BEE305C4((v9 > 1), v10 + 1, 1, v6);
    v6 = result;
    *a4 = result;
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = a2;
  v11[5] = v7;
  return result;
}

void sub_1BEDEB93C(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v12 = [a1 folder];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    v14[2] = a5;
    v14[3] = a6;
    v14[4] = a7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1BEDFB6F8;
    *(v15 + 24) = v14;
    v18[4] = sub_1BEDFBF6C;
    v18[5] = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1BEE39C64;
    v18[3] = &block_descriptor_311;
    v16 = _Block_copy(v18);

    [v13 enumerateListsWithOptions:a4 usingBlock:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (*a7 == 1)
      {
        *a3 = 1;
      }
    }
  }
}

uint64_t sub_1BEDEBB60(void *a1)
{
  v11 = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BEDFB674;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_291;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v1 enumerateExtraListsUsingBlock_];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

id sub_1BEDEBD14(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a3;
  v43 = a6;
  v41 = a5;
  v10 = sub_1BEE469DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  result = [a4 indexPathForList_];
  if (result)
  {
    v24 = result;
    sub_1BEE4697C();

    v38 = a7;
    v25 = *(v11 + 32);
    v25(v22, v20, v10);
    v26 = v22;
    v40 = v22;
    v27 = *(v11 + 16);
    v27(v17, v26, v10);
    v27(v14, v41, v10);
    v28 = *(v11 + 80);
    v29 = (v28 + 16) & ~v28;
    v39 = a1;
    v30 = (v12 + v28 + v29) & ~v28;
    v31 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = v11;
    v32 = swift_allocObject();
    v25((v32 + v29), v17, v10);
    v25((v32 + v30), v14, v10);
    v33 = (v32 + v31);
    v34 = v38;
    *v33 = v43;
    v33[1] = v34;
    *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v42;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1BEDFB5A0;
    *(v35 + 24) = v32;
    aBlock[4] = sub_1BEDFB220;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BEE39C64;
    aBlock[3] = &block_descriptor_265;
    v36 = _Block_copy(aBlock);

    [v39 enumerateIconsUsingBlock_];
    _Block_release(v36);
    (*(v41 + 8))(v40, v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BEDEC07C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *, char *), uint64_t a7, _BYTE *a8)
{
  v20 = a3;
  v21 = a8;
  v23 = *MEMORY[0x1E69E9840];
  v10 = sub_1BEE469DC();
  v11 = *(v10 - 8);
  v12 = (MEMORY[0x1EEE9AC00])();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1BEE469BC();
  sub_1BEE469AC();
  v22 = 0;
  a6(a1, v14, &v22);
  if (v22 == 1)
  {
    v17 = v21;
    *v20 = 1;
    *v17 = 1;
  }

  v18 = *(v11 + 8);
  v18(v14, v10);
  return (v18)(v16, v10);
}

uint64_t sub_1BEDEC21C(id a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  ObjectType = swift_getObjectType();
  v10 = [v3 icon];
  if (v10 && (v11 = v10, sub_1BEB20D28(0, &qword_1EBDBFEA0), v12 = a1, inited = sub_1BEE473CC(), v12, v11, (inited & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1BEE4696C();
    v11 = [v6 folderContainingIndexPath_];

    if (!v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BEE8AF50;
      *(v22 + 32) = a1;
      v23 = a1;
      return v22;
    }

    v15 = sub_1BEE4696C();
    v16 = [v15 sb_lastListIndex];

    if (v16 == [v11 listCount])
    {
    }

    v17 = sub_1BEE4696C();
    v4 = [v6 listAtIndexPath_];

    v18 = sub_1BEE4705C();
    ObjectType = [v6 startCoalescingContentChangesForReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AF50;
    *(inited + 32) = a1;
    a1 = a1;
    if ((a3 & 4) != 0 || (v19 = [v4 overflowSlotCount]) == 0)
    {
LABEL_15:

      v26 = sub_1BEE4696C();
      v27 = [v26 sb_lastIconIndex];

      v28 = [v4 insertIcon:a1 atIndex:v27 options:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
      if (v28)
      {
        v29 = v28;
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        v30 = sub_1BEE471AC();
      }

      else
      {
        v30 = 0;
      }

      v31 = v4;
      v22 = sub_1BEDD8B4C(v30, v4, 0, a3);

      [ObjectType invalidate];

      swift_unknownObjectRelease();
      return v22;
    }

    v5 = v19;
    if ((inited & 0xC000000000000001) == 0)
    {
      v20 = *(inited + 32);
      goto LABEL_10;
    }
  }

  v20 = MEMORY[0x1BFB4EA90](0, inited);
LABEL_10:
  v21 = v20;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

LABEL_14:
    [v4 setOverflowSlotCount_];
    goto LABEL_15;
  }

  v34 = [v4 iconGridSizeClassSizes];
  v33 = [v21 gridSizeClass];
  v32 = [v34 gridSizeForGridSizeClass_];

  result = SBHIconGridSizeGetArea(v32);
  v25 = __OFADD__(v5, result);
  v5 += result;
  if (!v25)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BEDEC798(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB4EA90](0, v3);
        v19 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v6 = *(v3 + 32);
      }

      v23 = MEMORY[0x1E69E7CC0];
      sub_1BEB20D28(0, &qword_1EBDBFE90);
      v20 = v3;
      v18 = (v3 + 32);
      while (1)
      {
        if (__OFSUB__(v4--, 1))
        {
          __break(1u);
LABEL_20:
          v13 = sub_1BEE4696C();
          v14 = [v21 listAtIndexPath_];

          v15 = v23;
          v16 = v14;
          v17 = sub_1BEDD8B4C(v15, v14, 0, a3);

          return v17;
        }

        if (!v5)
        {
          break;
        }

        v8 = MEMORY[0x1BFB4EA90](v4, v20);
LABEL_14:
        v9 = v8;
        if (sub_1BEE473CC())
        {
          v10 = a3 | 0x400000;
        }

        else
        {
          v10 = a3;
        }

        v11 = sub_1BEE4696C();
        v3 = [v21 insertIcon:v9 atIndexPath:v11 options:v10];

        if (v3)
        {
          sub_1BEB20D28(0, &qword_1EBDBFEA0);
          v12 = sub_1BEE471AC();

          v3 = &v23;
          sub_1BEE34FD0(v12);
        }

        if (!v4)
        {
          goto LABEL_20;
        }
      }

      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = sub_1BEE474CC();
      v4 = result;
      if (!result)
      {
        return 0;
      }
    }

    if (v4 >= *(v19 + 16))
    {
      goto LABEL_22;
    }

    v8 = v18[v4];
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1BEDECB6C(id a1, void *a2, uint64_t a3)
{
  v6 = v3;
  swift_getObjectType();
  v10 = [v3 icon];
  if (v10 && (v11 = v10, sub_1BEB20D28(0, &qword_1EBDBFEA0), inited = a1, v13 = sub_1BEE473CC(), inited, v11, (v13 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v14 = [v6 listAtGridPath_];
    if (!v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BEE8AF50;
      *(v19 + 32) = a1;
      v20 = a1;
      return v19;
    }

    v13 = v14;
    v15 = sub_1BEE4705C();
    v42 = [v6 startCoalescingContentChangesForReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AF50;
    *(inited + 32) = a1;
    a1 = a1;
    v11 = &selRef_fetchURL_;
    v4 = &selRef_fetchURL_;
    if ((a3 & 4) != 0 || (v16 = [v13 overflowSlotCount]) == 0)
    {
LABEL_14:

      v41 = [a1 v11[438]];
      v25 = [v13 v4[463]];
      v26 = [a2 gridCellIndex];
      v27 = [a2 gridCellInfoOptions];
      v28 = [v13 bestGridCellIndexForInsertingIcon:a1 atGridCellIndex:v26 gridCellInfoOptions:v27];
      v29 = a3;
      v30 = [swift_getObjCClassFromMetadata() listModelMutationOptionsForFolderMutationOptions_];
      v31 = [v13 isInsertionFixedForIcon:a1 atGridCellIndex:v26 gridCellInfoOptions:v27 mutationOptions:v30];
      if ([v13 isValidGridRange:v28 options:{v25, v27}] & 1) != 0 || (v31)
      {
        v32 = [v13 insertIcon:a1 atGridCellIndex:v26 gridCellInfoOptions:v27 mutationOptions:v30];
        if (!v32)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v32 = [v13 addIcon:a1 gridCellInfoOptions:v27 mutationOptions:v30];
        if (!v32)
        {
LABEL_17:
          v33 = 0;
          v34 = v29;
          v36 = v41;
          v35 = v42;
LABEL_20:
          v38 = v13;
          v19 = sub_1BEDD8B4C(v33, v13, v27, v34);

          [v35 invalidate];

          swift_unknownObjectRelease();
          return v19;
        }
      }

      v37 = v32;
      v34 = v29;
      v36 = v41;
      v35 = v42;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v33 = sub_1BEE471AC();

      goto LABEL_20;
    }

    v5 = v16;
    v40 = a3;
    if ((inited & 0xC000000000000001) == 0)
    {
      v17 = *(inited + 32);
      goto LABEL_8;
    }
  }

  v17 = MEMORY[0x1BFB4EA90](0, inited);
LABEL_8:
  v18 = v17;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    a3 = v40;
LABEL_13:
    [v13 setOverflowSlotCount_];
    goto LABEL_14;
  }

  v21 = [v13 iconGridSizeClassSizes];
  v22 = [v18 v11[438]];
  v39 = [v21 gridSizeForGridSizeClass_];

  result = SBHIconGridSizeGetArea(v39);
  v24 = __OFADD__(v5, result);
  v5 += result;
  if (!v24)
  {
    a3 = v40;
    v4 = &selRef_fetchURL_;
    v11 = &selRef_fetchURL_;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_1BEDED0A0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  result = [v3 listAtGridPath_];
  if (result)
  {
    v7 = result;
    v8 = sub_1BEE4705C();
    v9 = [v3 startCoalescingContentChangesForReason_];

    v10 = [a2 gridCellIndex];
    v11 = [a2 gridCellInfoOptions];
    v12 = [swift_getObjCClassFromMetadata() listModelMutationOptionsForFolderMutationOptions_];
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v13 = sub_1BEE4719C();
    v14 = [v7 insertIcons:v13 atGridCellIndex:v10 gridCellInfoOptions:v11 mutationOptions:v12];

    if (v14)
    {
      v15 = sub_1BEE471AC();
    }

    else
    {
      v15 = 0;
    }

    v16 = v7;
    v17 = sub_1BEDD8B4C(v15, v7, v11, a3);

    [v9 invalidate];

    swift_unknownObjectRelease();
    return v17;
  }

  return result;
}

uint64_t sub_1BEDED340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_getObjectType();
  v9 = [v4 listContainingIcon_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BEE4705C();
    v12 = [v4 startCoalescingContentChangesForReason_];

    v13 = [v10 insertIcon:a1 beforeIcon:a2 gridCellInfoOptions:a4 mutationOptions:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
    if (v13)
    {
      v14 = v13;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v15 = sub_1BEE471AC();
    }

    else
    {
      v15 = 0;
    }

    v16 = v10;
    v17 = sub_1BEDD8B4C(v15, v10, a4, a3);

    [v12 invalidate];

    swift_unknownObjectRelease();
    return v17;
  }

  else
  {
    result = sub_1BEE4764C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BEDED538(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_getObjectType();
  v9 = [v4 listContainingIcon_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BEE4705C();
    v12 = [v4 startCoalescingContentChangesForReason_];

    v13 = [v10 insertIcon:a1 afterIcon:a2 gridCellInfoOptions:a4 mutationOptions:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
    if (v13)
    {
      v14 = v13;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v15 = sub_1BEE471AC();
    }

    else
    {
      v15 = 0;
    }

    v16 = v10;
    v17 = sub_1BEDD8B4C(v15, v10, a4, a3);

    [v12 invalidate];

    swift_unknownObjectRelease();
    return v17;
  }

  else
  {
    result = sub_1BEE4764C();
    __break(1u);
  }

  return result;
}

id sub_1BEDED730(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(id, id, uint64_t, uint64_t))
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a7(v12, v13, a5, a6);

  if (v15)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v16 = sub_1BEE4719C();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1BEDED8EC(void *a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = [v3 listContainingIcon_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BEE4705C();
    v10 = [v3 startCoalescingContentChangesForReason_];

    v11 = [v8 replaceIcon:a1 withIcon:a2 options:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
    if (v11)
    {
      v12 = v11;
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v13 = sub_1BEE471AC();
    }

    else
    {
      v13 = 0;
    }

    v14 = v8;
    sub_1BEDD8B4C(v13, v8, 0, a3);

    if ((a3 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AF50;
    *(inited + 32) = a2;
    v16 = a2;
    if ((a3 & 4) != 0 || (v17 = [v14 overflowSlotCount]) == 0)
    {
LABEL_18:

      sub_1BEB51898(v14, 1, sub_1BEDDE0A4, 0, 0);
LABEL_19:
      [v10 invalidate];

      swift_unknownObjectRelease();
      return 1;
    }

    v18 = v17;
    if ((inited & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB4EA90](0, inited);
    }

    else
    {
      v19 = *(inited + 32);
    }

    v20 = v19;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

LABEL_13:
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v26 = a1;
        v27 = [v14 iconGridSizeClassSizes];
        v28 = [v26 gridSizeClass];
        v29 = [v27 gridSizeForGridSizeClass_];

        Area = SBHIconGridSizeGetArea(v29);
        if (v18 <= Area)
        {
          v18 = 0;
        }

        else
        {
          v18 -= Area;
        }
      }

      [v14 setOverflowSlotCount_];
      goto LABEL_18;
    }

    v21 = [v14 iconGridSizeClassSizes];
    v22 = [v20 gridSizeClass];
    v23 = [v21 gridSizeForGridSizeClass_];

    v24 = SBHIconGridSizeGetArea(v23);
    v25 = __OFADD__(v18, v24);
    v18 += v24;
    if (!v25)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  result = sub_1BEE4764C();
  __break(1u);
  return result;
}

uint64_t sub_1BEDEDD20(void *a1, unint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = [v3 listContainingIcon_];
  if (!v7)
  {
    goto LABEL_31;
  }

  v8 = v7;
  v9 = sub_1BEE4705C();
  v35 = [v3 startCoalescingContentChangesForReason_];

  v10 = [swift_getObjCClassFromMetadata() listModelMutationOptionsForFolderMutationOptions_];
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v11 = sub_1BEE4719C();
  v34 = a1;
  v12 = [v8 replaceIcon:a1 withIcons:v11 options:v10];

  if (v12)
  {
    v13 = sub_1BEE471AC();
  }

  else
  {
    v13 = 0;
  }

  v14 = v8;
  v15 = sub_1BEDD8B4C(v13, v8, 0, a3);

  if ((a3 & 0x800000) == 0)
  {
    goto LABEL_28;
  }

  if ((a3 & 4) != 0)
  {
    goto LABEL_27;
  }

  v16 = [v14 overflowSlotCount];
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  if (a2 >> 62)
  {
    v18 = sub_1BEE474CC();
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v15;
  if (!v18)
  {
    goto LABEL_22;
  }

  if (v18 < 1)
  {
    __break(1u);
LABEL_31:
    result = sub_1BEE4764C();
    __break(1u);
    return result;
  }

  v19 = 0;
  while (1)
  {
    v20 = (a2 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB4EA90](v19, a2) : *(a2 + 8 * v19 + 32);
    v21 = v20;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      break;
    }

LABEL_14:
    if (v18 == ++v19)
    {
      goto LABEL_22;
    }
  }

  v22 = [v14 iconGridSizeClassSizes];
  v23 = [v21 gridSizeClass];
  v24 = [v22 gridSizeForGridSizeClass_];

  Area = SBHIconGridSizeGetArea(v24);
  v26 = __OFADD__(v17, Area);
  v17 += Area;
  if (!v26)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_22:
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v27 = v34;
    v28 = [v14 iconGridSizeClassSizes];
    v29 = [v27 gridSizeClass];
    v30 = [v28 gridSizeForGridSizeClass_];

    v31 = SBHIconGridSizeGetArea(v30);
    if (v17 <= v31)
    {
      v17 = 0;
    }

    else
    {
      v17 -= v31;
    }
  }

  [v14 setOverflowSlotCount_];
  v15 = v33;
LABEL_27:
  sub_1BEB51898(v14, 1, sub_1BEDDE0A4, 0, 0);
LABEL_28:
  [v35 invalidate];

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1BEDEE20C(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_getObjectType();
  v9 = [v4 listContainingIcon_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BEE4705C();
    v41 = [v4 startCoalescingContentChangesForReason_];

    v12 = [swift_getObjCClassFromMetadata() listModelMutationOptionsForFolderMutationOptions_];
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v13 = sub_1BEE4719C();
    v38 = a1;
    v14 = [v10 replaceIcon:a1 withIcons:v13 gridCellInfoOptions:a4 mutationOptions:v12];

    if (v14)
    {
      v15 = sub_1BEE471AC();
    }

    else
    {
      v15 = 0;
    }

    v16 = v10;
    v40 = v4;
    v17 = sub_1BEDD8B4C(v15, v10, a4, a3);

    if ((a3 & 0x800000) == 0)
    {

LABEL_30:
      [v41 invalidate];

      swift_unknownObjectRelease();
      return v17;
    }

    if ((a3 & 4) == 0)
    {
      v18 = [v16 overflowSlotCount];
      if (v18)
      {
        v19 = v18;
        if (a2 >> 62)
        {
          v20 = sub_1BEE474CC();
        }

        else
        {
          v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = v16;
        v36 = v15;
        v37 = v17;
        if (v20)
        {
          if (v20 >= 1)
          {
            v21 = 0;
            while (1)
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x1BFB4EA90](v21, a2);
              }

              else
              {
                v22 = *(a2 + 8 * v21 + 32);
              }

              v23 = v22;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
              }

              else
              {
                v24 = [v39 iconGridSizeClassSizes];
                v25 = [v23 gridSizeClass];
                v26 = [v24 gridSizeForGridSizeClass_];

                Area = SBHIconGridSizeGetArea(v26);
                v28 = __OFADD__(v19, Area);
                v19 += Area;
                if (v28)
                {
                  __break(1u);
                  goto LABEL_23;
                }
              }

              if (v20 == ++v21)
              {
                goto LABEL_23;
              }
            }
          }

          __break(1u);
          goto LABEL_33;
        }

LABEL_23:
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v16 = v39;
        }

        else
        {
          v29 = v38;
          v16 = v39;
          v30 = [v39 iconGridSizeClassSizes];
          v31 = [v29 gridSizeClass];
          v32 = [v30 gridSizeForGridSizeClass_];

          v33 = SBHIconGridSizeGetArea(v32);
          if (v19 <= v33)
          {
            v19 = 0;
          }

          else
          {
            v19 -= v33;
          }
        }

        v15 = v36;
        v17 = v37;
        v18 = [v16 setOverflowSlotCount_];
      }
    }

    MEMORY[0x1EEE9AC00](v18);
    v35[2] = v15;
    sub_1BEB51898(v16, 1, sub_1BEDFB4DC, v35, 1);

    goto LABEL_30;
  }

LABEL_33:
  result = sub_1BEE4764C();
  __break(1u);
  return result;
}

uint64_t sub_1BEDEE664(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v4[2] = &v5;
  return sub_1BEB52D94(sub_1BEDFBF50, v4, v2) & 1;
}

void sub_1BEDEE7D8(void *a1, void *a2, void *a3, int a4)
{
  v5 = v4;
  type metadata accessor for SBFolder(a1);
  if (sub_1BEE473CC())
  {
    if ((a4 & 0x800000) != 0)
    {
      if ((a4 & 4) == 0)
      {
        v20 = [a2 overflowSlotCount];
        if (v20)
        {
          v21 = v20;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v22 = a1;
            v23 = [a2 iconGridSizeClassSizes];
            v24 = [v22 gridSizeClass];
            v25 = [v23 gridSizeForGridSizeClass_];

            Area = SBHIconGridSizeGetArea(v25);
            if (v21 <= Area)
            {
              v21 = 0;
            }

            else
            {
              v21 -= Area;
            }
          }

          [a2 setOverflowSlotCount_];
        }
      }

      sub_1BEB51898(a2, 1, sub_1BEDDE0A4, 0, 0);
      if ((a4 & 0x100000) == 0)
      {
LABEL_4:
        if ((a4 & 0x4000000) == 0)
        {
          return;
        }

LABEL_32:
        v28[4] = sub_1BEDD5C18;
        v28[5] = 0;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 1107296256;
        v28[2] = sub_1BEE39C64;
        v28[3] = &block_descriptor_213;
        v27 = _Block_copy(v28);

        [v5 enumerateListsUsingBlock_];
        _Block_release(v27);
        if (swift_isEscapingClosureAtFileLocation())
        {
          __break(1u);
        }

        return;
      }
    }

    else if ((a4 & 0x100000) == 0)
    {
      goto LABEL_4;
    }

    [v5 compactLists];
    if ((a4 & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  if ((a4 & 0x200000) != 0)
  {
    v10 = [a3 parentFolder];
    if (v10)
    {
      v11 = v10;
      v12 = v4;
      v13 = sub_1BEE473CC();

      if (v13)
      {
        if ([a3 isEmpty])
        {
          v14 = [a3 icon];
          if (v14)
          {
            v15 = v14;
            [v12 removeIcon:v14 options:0];
          }
        }
      }
    }
  }

  if ((a4 & 0x2000000) != 0)
  {
    if ([a3 isCancelable])
    {
      if ([a3 containsOneIcon])
      {
        v16 = [a3 icon];
        if (v16)
        {
          v17 = v16;
          v18 = [a3 firstIcon];
          if (v18)
          {
            v19 = v18;
            [v5 replaceIcon:v17 withIcon:v18];

            v17 = v19;
          }
        }
      }
    }
  }

  if ((a4 & 0x4100000) != 0)
  {

    [a3 compactLists];
  }
}

unint64_t sub_1BEDEEDF0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v6 = 0;
    v37 = v4 & 0xC000000000000001;
    v33 = v4 + 32;
    v34 = v4 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7CC0];
    v35 = i;
    v36 = v4;
    v32 = v3;
    while (1)
    {
      if (v37)
      {
        v8 = MEMORY[0x1BFB4EA90](v6, v4);
      }

      else
      {
        if (v6 >= *(v34 + 16))
        {
          goto LABEL_46;
        }

        v8 = *(v33 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v11 = [v3 addIcon:v8 options:a2];
      if (!v11)
      {

        goto LABEL_5;
      }

      v12 = v11;
      v4 = sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v13 = sub_1BEE471AC();

      v14 = v13 >> 62;
      if (v13 >> 62)
      {
        v15 = sub_1BEE474CC();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v7 >> 62;
      if (v7 >> 62)
      {
        v17 = sub_1BEE474CC();
      }

      else
      {
        v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v15;
      v10 = __OFADD__(v17, v15);
      v18 = v17 + v15;
      if (v10)
      {
        goto LABEL_43;
      }

      v39 = v9;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v16)
        {
LABEL_22:
          sub_1BEE474CC();
        }

LABEL_23:
        v7 = sub_1BEE475DC();
        v19 = v7 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_24;
      }

      if (v16)
      {
        goto LABEL_22;
      }

      v19 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v18 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }

LABEL_24:
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v14)
      {
        v22 = sub_1BEE474CC();
        if (v22)
        {
LABEL_26:
          if (((v21 >> 1) - v20) < v40)
          {
            goto LABEL_45;
          }

          v23 = v19 + 8 * v20 + 32;
          if (v14)
          {
            if (v22 < 1)
            {
              goto LABEL_48;
            }

            v4 = sub_1BEB53980(&unk_1EBDBFE20, &unk_1EBDC7A08);
            for (j = 0; j != v22; ++j)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7A08);
              v26 = sub_1BEDCF4E0(v41, j, v13);
              v28 = *v27;
              (v26)(v41, 0);
              *(v23 + 8 * j) = v28;
            }

            v3 = v32;
            v24 = v40;
            if (v40 <= 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v24 = v40;
            swift_arrayInitWithCopy();

            if (v40 <= 0)
            {
LABEL_39:
              i = v35;
              v4 = v36;
              goto LABEL_5;
            }
          }

          v29 = *(v19 + 16);
          v10 = __OFADD__(v29, v24);
          v30 = v29 + v24;
          if (v10)
          {
            goto LABEL_47;
          }

          *(v19 + 16) = v30;
          goto LABEL_39;
        }
      }

      else
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_26;
        }
      }

      i = v35;
      v4 = v36;
      if (v40 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v6 == i)
      {
        goto LABEL_51;
      }
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
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_51:
  if (v7 >> 62)
  {
    if (sub_1BEE474CC())
    {
      return v7;
    }

    goto LABEL_53;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_53:

    return 0;
  }

  return v7;
}

void sub_1BEDEF2B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 icon];
  if (v8)
  {
    v9 = v8;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v10 = a1;
    v11 = sub_1BEE473CC();

    if (v11)
    {
      goto LABEL_46;
    }
  }

  v43 = a1;
  v12 = [a1 gridSizeClass];
  v13 = [v4 uniqueIdentifier];
  v14 = v13;
  v15 = v13;
  if (!v13)
  {
    sub_1BEE4708C();
    v15 = sub_1BEE4705C();

    sub_1BEE4708C();
    v14 = sub_1BEE4705C();
  }

  v42 = v14;
  sub_1BEE4708C();
  v16 = v13;

  v17 = v12;

  v18 = [v4 listCount];
  v19 = sub_1BEE467EC();
  if (v19 == sub_1BEE467EC())
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if (v18 < v20)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  v41 = a2;
  if (v20 != v18)
  {
    v34 = v20;
    while (1)
    {
      if (v34 >= v18)
      {
        __break(1u);
        goto LABEL_44;
      }

      v23 = [v4 listAtIndex_];
      if (![v23 isHidden])
      {
        v35 = [v23 firstFreeGridCellIndexOfRangeOfSizeClass:v17 ignoringValidGridLayoutCheck:1 gridCellInfoOptions:a3];
        if (v35 != sub_1BEE467EC())
        {
          break;
        }
      }

      ++v34;

      if (v18 == v34)
      {
        goto LABEL_10;
      }
    }

    v25 = [v23 uniqueIdentifier];
    if (!v25)
    {
      sub_1BEE4708C();
      v25 = sub_1BEE4705C();
    }

    v36 = objc_allocWithZone(SBHIconGridPath);
    v27 = sub_1BEE4705C();
    v21 = a3;
    v28 = [v36 initWithFolderIdentifier:v27 listIdentifier:v25 gridCellIndex:v35 gridCellInfoOptions:a3];
LABEL_31:
    v37 = v28;

    swift_bridgeObjectRelease_n();
    if (v37)
    {
      v30 = v43;

      v17 = v37;
      goto LABEL_37;
    }

    goto LABEL_20;
  }

LABEL_10:
  if (v20 < 0)
  {
    goto LABEL_45;
  }

  v21 = a3;
  if (v20)
  {
    v22 = 0;
    while (1)
    {
      v23 = [v4 listAtIndex_];
      if (![v23 isHidden])
      {
        v24 = [v23 firstFreeGridCellIndexOfRangeOfSizeClass:v17 ignoringValidGridLayoutCheck:1 gridCellInfoOptions:a3];
        if (v24 != sub_1BEE467EC())
        {
          break;
        }
      }

      ++v22;

      if (v20 == v22)
      {
        goto LABEL_19;
      }
    }

    v25 = [v23 uniqueIdentifier];
    if (!v25)
    {
      sub_1BEE4708C();
      v25 = sub_1BEE4705C();
    }

    v26 = objc_allocWithZone(SBHIconGridPath);
    v27 = sub_1BEE4705C();
    v28 = [v26 initWithFolderIdentifier:v27 listIdentifier:v25 gridCellIndex:v24 gridCellInfoOptions:a3];
    goto LABEL_31;
  }

LABEL_19:

  swift_bridgeObjectRelease_n();
LABEL_20:
  v29 = [v4 addEmptyList];
  v31 = v42;
  v30 = v43;
  if (!v29)
  {
    goto LABEL_39;
  }

  v32 = v29;
  v33 = [v29 firstFreeGridCellIndexOfRangeOfSizeClass:v17 ignoringValidGridLayoutCheck:1 gridCellInfoOptions:v21];
  if (v33 == sub_1BEE467EC())
  {

    goto LABEL_39;
  }

  v38 = [v32 uniqueIdentifier];
  if (!v38)
  {
    sub_1BEE4708C();
    v38 = sub_1BEE4705C();
  }

  v39 = [objc_allocWithZone(SBHIconGridPath) initWithFolderIdentifier:v42 listIdentifier:v38 gridCellIndex:v33 gridCellInfoOptions:v21];

  v17 = v39;
  if (v39)
  {
LABEL_37:
    v40 = [v4 listAtGridPath_];
    if (!v40)
    {
      goto LABEL_40;
    }

    v31 = v40;
    sub_1BEDEF7C8(v30, v40, v41, v21);
LABEL_39:

LABEL_40:
  }
}

uint64_t sub_1BEDEF7C8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  if ([a2 directlyContainsIcon_])
  {
    return 0;
  }

  v10 = sub_1BEE4705C();
  v11 = [v4 startCoalescingContentChangesForReason_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AF50;
  *(inited + 32) = a1;
  v13 = a1;
  if ((a3 & 4) == 0)
  {
    v14 = [a2 overflowSlotCount];
    if (v14)
    {
      v15 = v14;
      if ((inited & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB4EA90](0, inited);
      }

      else
      {
        v16 = *(inited + 32);
      }

      v17 = v16;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
      }

      else
      {
        v25 = [a2 iconGridSizeClassSizes];
        v24 = [v17 gridSizeClass];
        v23 = [v25 gridSizeForGridSizeClass_];

        result = SBHIconGridSizeGetArea(v23);
        v18 = __OFADD__(v15, result);
        v15 += result;
        if (v18)
        {
          __break(1u);
          return result;
        }
      }

      [a2 setOverflowSlotCount_];
    }
  }

  v19 = [a2 addIcon:v13 gridCellInfoOptions:a4 mutationOptions:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
  if (v19)
  {
    v20 = v19;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v21 = sub_1BEE471AC();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1BEDD8B4C(v21, a2, 0, a3);

  [v11 invalidate];
  swift_unknownObjectRelease();
  return v22;
}

unint64_t sub_1BEDEFC5C(uint64_t a1, id a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4;
  v10 = sub_1BEE469DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v5 addIcon:a1 toListAtIndex:a2 options:a3];
  if (v14)
  {
    v15 = v14;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v16 = sub_1BEE471AC();

    if (!a4)
    {
      return v16;
    }

    if (v16)
    {
      v29 = v5;
      v30 = v13;
      v32 = v11;
      v33 = v10;
      v34 = a4;
      v31 = a2;
      if (v16 >> 62)
      {
LABEL_26:
        v17 = sub_1BEE474CC();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v17 != i; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFB4EA90](i, v16);
        }

        else
        {
          if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v19 = *(v16 + 8 * i + 32);
        }

        v20 = v19;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        sub_1BEB20D28(0, &qword_1EBDBFE90);
        v21 = sub_1BEE473CC();

        if (v21)
        {

          *v34 = 1;
          return v16;
        }
      }

      v10 = v33;
      a4 = v34;
      a2 = v31;
      v11 = v32;
      v5 = v29;
      v13 = v30;
    }
  }

  else
  {
    v16 = 0;
    if (!a4)
    {
      return v16;
    }
  }

  v22 = [v5 indexPathForIcon_];
  if (v22)
  {
    v23 = v22;
    sub_1BEE4697C();

    v24 = sub_1BEE4696C();
    v25 = [v24 sb_iconPathCount];

    if (v25 == 1)
    {
      v26 = sub_1BEE4696C();
      v27 = [v26 sbListIndex];

      if (v27 != a2)
      {
        *a4 = 1;
      }
    }

    (*(v11 + 8))(v13, v10);
  }

  return v16;
}

uint64_t sub_1BEDF00D0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = [v3 listAtIndex_];
  if ([v7 directlyContainsIcon_])
  {

    return 0;
  }

  v9 = sub_1BEE4705C();
  v10 = [v3 startCoalescingContentChangesForReason_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BEE8AF50;
  *(inited + 32) = a1;
  v12 = a1;
  if ((a3 & 4) == 0)
  {
    v13 = [v7 overflowSlotCount];
    if (v13)
    {
      v14 = v13;
      if ((inited & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB4EA90](0, inited);
      }

      else
      {
        v15 = *(inited + 32);
      }

      v16 = v15;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
      }

      else
      {
        v17 = [v7 iconGridSizeClassSizes];
        v25 = [v16 gridSizeClass];
        v24 = [v17 gridSizeForGridSizeClass_];

        result = SBHIconGridSizeGetArea(v24);
        v18 = __OFADD__(v14, result);
        v14 += result;
        if (v18)
        {
          __break(1u);
          return result;
        }
      }

      [v7 setOverflowSlotCount_];
    }
  }

  v19 = [v7 prependIcon:v12 options:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a3)}];
  if (v19)
  {
    v20 = v19;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v21 = sub_1BEE471AC();
  }

  else
  {
    v21 = 0;
  }

  v22 = v7;
  v23 = sub_1BEDD8B4C(v21, v7, 0, a3);

  [v10 invalidate];

  swift_unknownObjectRelease();
  return v23;
}

id sub_1BEDF03B8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id, uint64_t, uint64_t))
{
  v10 = a3;
  v11 = a1;
  v12 = a6(v10, a4, a5);

  if (v12)
  {
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v13 = sub_1BEE4719C();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_1BEDF04D0(uint64_t a1)
{
  v2 = [v1 lists];
  sub_1BEB20D28(0, &qword_1EBDBFF10);
  v3 = sub_1BEE471AC();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v4; i = v1)
  {
    v5 = 0;
    v6 = 0;
    v1 = &selRef_libraryIconViewControllerForPresenter_;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB4EA90](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 maxNumberOfIcons];
      v11 = [v8 numberOfIcons];

      if (v11 < v10)
      {
        v12 = v10 - v11;
        if (__OFSUB__(v10, v11))
        {
          goto LABEL_16;
        }

        v13 = __OFADD__(v6, v12);
        v6 += v12;
        if (v13)
        {
          goto LABEL_17;
        }

        if (v6 >= a1)
        {

          return 1;
        }
      }

      ++v5;
      if (v9 == v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v4 = sub_1BEE474CC();
  }

  v6 = 0;
LABEL_21:

  v15 = [i maxListCount];
  v16 = [i lists];
  v17 = sub_1BEE471AC();

  if (v17 >> 62)
  {
    v18 = sub_1BEE474CC();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = &v15[-v18];
  if (__OFSUB__(v15, v18))
  {
    __break(1u);
    goto LABEL_29;
  }

  result = SBHIconGridSizeGetArea([i listGridSize]);
  v20 = v19 * result;
  if ((v19 * result) >> 64 != v20 >> 63)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = __OFADD__(v6, v20);
  v21 = v6 + v20;
  if (!v13)
  {
    return v21 >= a1;
  }

LABEL_30:
  __break(1u);
  return result;
}

BOOL sub_1BEDF0874(unint64_t a1, void *a2)
{
  sub_1BEB20D28(0, &qword_1EBDBFEA0);
  v5 = sub_1BEE4719C();
  v6 = [v2 isAllowedToContainIcons_];

  if (!v6)
  {
    return 0;
  }

  if (a2 && ([v2 isExtraList_] & 1) != 0)
  {
    v7 = 0;
    LOBYTE(v8) = 1;
  }

  else
  {
    LOBYTE(v8) = 0;
    v7 = 4;
  }

  v38 = a1;
  v37 = a2 == 0;
  v10 = swift_allocObject();
  v10[2] = &v37;
  v10[3] = a2;
  v10[4] = &v38;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BEDFB4A4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_226;
  v12 = _Block_copy(aBlock);

  v13 = a2;

  [v2 enumerateListsWithOptions:v7 usingBlock:v12];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v38 >> 62)
  {
LABEL_60:
    v15 = sub_1BEE474CC();
    goto LABEL_10;
  }

  v15 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v9 = v15 == 0;
  if (v15)
  {
    v16 = v8;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v35 = [v2 firstList];
    if (v35)
    {
      v17 = [v2 maxListCount];
      v18 = [v2 visibleListCount];
      v19 = v17 - v18;
      if (__OFSUB__(v17, v18))
      {
        __break(1u);
      }

      else if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = 0;
        while (1)
        {
          if (v19 == v20)
          {
LABEL_47:
            if (v38 >> 62)
            {
              goto LABEL_63;
            }

            v33 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_49;
          }

          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v21 = sub_1BEE4719C();

          v2 = [v35 allowedIconsForByReplacingContentsWithIcons_];

          v22 = sub_1BEE471AC();

          v23 = sub_1BEDF79A4(&v38, v22, &unk_1F3D443A8, &unk_1F3D443D0, sub_1BEDFBF50, sub_1BEDFB4B0);
          v24 = v23;
          if (v38 >> 62)
          {
            v8 = sub_1BEE474CC();
            v25 = v8 - v24;
            if (v8 < v24)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v8 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v25 = v8 - v23;
            if (v8 < v23)
            {
              goto LABEL_54;
            }
          }

          if (v24 < 0)
          {
            goto LABEL_55;
          }

          v2 = v38;
          v26 = v38 >> 62;
          if (v38 >> 62)
          {
            if (sub_1BEE474CC() < v8)
            {
              goto LABEL_56;
            }
          }

          else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < v8)
          {
            goto LABEL_56;
          }

          v27 = __OFSUB__(0, v25);
          v28 = -v25;
          if (v27)
          {
            goto LABEL_57;
          }

          if (v26)
          {
            v29 = sub_1BEE474CC();
          }

          else
          {
            v29 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v27 = __OFADD__(v29, v28);
          v30 = v29 + v28;
          if (v27)
          {
            goto LABEL_58;
          }

          v31 = v38;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v38 = v31;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
            break;
          }

          if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v30 > *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_38;
          }

LABEL_39:
          v2 = &v38;
          sub_1BEE1FDB0(v24, v8, 0);

          if (v38 >> 62)
          {
            ++v20;
            if (!sub_1BEE474CC())
            {
              goto LABEL_47;
            }
          }

          else
          {
            ++v20;
            if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }
          }
        }

        if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
        {
LABEL_37:
          sub_1BEE474CC();
        }

LABEL_38:
        v38 = sub_1BEE475DC();
        goto LABEL_39;
      }

      __break(1u);
LABEL_63:
      v33 = sub_1BEE474CC();
LABEL_49:

      v9 = v33 == 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void sub_1BEDF0DB4(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, void *a5, unint64_t *a6)
{
  if ((*a4 & 1) == 0 && a5)
  {
    sub_1BEB20D28(0, &qword_1EBDBFE90);
    v11 = a5;
    v12 = sub_1BEE473CC();

    if ((v12 & 1) == 0)
    {
      return;
    }

    *a4 = 1;
  }

  sub_1BEB20D28(0, &qword_1EBDBFEA0);

  v13 = sub_1BEE4719C();

  v14 = [a1 allowedIconsForIcons_];

  v15 = sub_1BEE471AC();

  v16 = sub_1BEDF79A4(a6, v15, &unk_1F3D443F8, &unk_1F3D44420, sub_1BEDFBF50, sub_1BEDFBF50);
  if (!(*a6 >> 62))
  {
    v17 = *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v16)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v16;
  v17 = sub_1BEE474CC();
  v16 = v18;
  if (v17 < v18)
  {
    goto LABEL_12;
  }

LABEL_7:
  sub_1BEE1FDC4(v16, v17);

  if (!(*a6 >> 62))
  {
    if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  if (!sub_1BEE474CC())
  {
LABEL_9:
    *a3 = 1;
  }
}

void sub_1BEDF1204(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(SBIcon) init];
  v8 = [a1 gridSizeClass];
  [v7 setGridSizeClass_];

  v9 = sub_1BEE4705C();
  v15 = [v3 startCoalescingContentChangesForReason_];

  [v3 replaceIcon:a1 withIcon:v7 options:a3];
  [v3 replaceIcon:a2 withIcon:a1 options:a3];
  v16 = v7;
  [v3 replaceIcon:v7 withIcon:a2 options:a3];
  v10 = [*&v3[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v11 = sub_1BEE471AC();

  if (v11 >> 62)
  {
    v12 = sub_1BEE474CC();
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB4EA90](i, v11);
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if ([v14 respondsToSelector_])
    {
      [v14 folder:v3 didMoveIcon:a1];
    }

    if ([v14 respondsToSelector_])
    {
      [v14 folder:v3 didMoveIcon:a2];
    }

    swift_unknownObjectRelease();
  }

LABEL_14:

  [v15 invalidate];

  swift_unknownObjectRelease();
}

void sub_1BEDF1534(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = [v3 listContainingIcon_];
  if (v7)
  {
    v12 = v7;
    v8 = [v7 folder];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1BEE4705C();
      v11 = [v3 startCoalescingContentChangesForReason_];

      [v12 removeIcon:a1 gridCellInfoOptions:a3 mutationOptions:{objc_msgSend(swift_getObjCClassFromMetadata(), sel_listModelMutationOptionsForFolderMutationOptions_, a2)}];
      sub_1BEDEE7D8(a1, v12, v9, a2);
      [v11 invalidate];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1BEDF1990(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = [v4 listContainingIcon_];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = sub_1BEE4705C();
  v12 = [v4 startCoalescingContentChangesForReason_];

  v13 = [a1 gridSizeClass];
  v14 = [v10 changeGridSizeClassOfContainedIcon:a1 toGridSizeClass:a2 gridCellInfoOptions:a4];
  if (v14)
  {
    v15 = v14;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    v16 = sub_1BEE471AC();
  }

  else
  {
    v16 = 0;
  }

  v18 = v10;
  v17 = sub_1BEDD8B4C(v16, v10, a4, a3);

  if ((a3 & 0x800000) != 0)
  {
    if ((a3 & 4) != 0)
    {
      v19 = [v18 overflowSlotCount];
      if (v19)
      {
        v20 = v19;
        v21 = [a1 gridSizeClass];
        v22 = [v18 gridSizeForGridSizeClass_];
        v23 = [v18 gridSizeForGridSizeClass_];
        Area = SBHIconGridSizeGetArea(v22);
        v25 = SBHIconGridSizeGetArea(v23);
        v26 = v25 - Area;
        v27 = __OFSUB__(v20, v26);
        v28 = v20 - v26;
        if ((v28 < 0) ^ v27 | (v28 == 0))
        {
          v28 = 0;
        }

        if (v25 <= Area)
        {
          v29 = v20;
        }

        else
        {
          v29 = v28;
        }

        [v18 setOverflowSlotCount_];
      }
    }

    sub_1BEB51898(v18, 1, sub_1BEDDE0A4, 0, 0);
  }

  [v4 markIconStateDirty];

  [v12 invalidate];
  swift_unknownObjectRelease();
  return v17;
}

void sub_1BEDF1F40(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = sub_1BEE469DC();
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v8 == *(a2 + 16))
  {
    if (v8)
    {
      v9 = 0;
      v36 = a2 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v37 = a1 & 0xC000000000000001;
      v32 = a1 + 32;
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = (v38 + 8);
      v34 = v8;
      v35 = a1;
      while (1)
      {
        if (v9 == v8)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v8 = sub_1BEE474CC();
          goto LABEL_3;
        }

        if (v37)
        {
          v10 = MEMORY[0x1BFB4EA90](v9, a1);
        }

        else
        {
          if (v9 >= *(v33 + 16))
          {
            goto LABEL_35;
          }

          v10 = *(v32 + 8 * v9);
        }

        v11 = v10;
        v40 = v9;
        v12 = sub_1BEE4696C();
        v13 = SBFolderRelativeListIndex(v12);

        v14 = sub_1BEE4696C();
        v15 = SBFolderRelativeIconIndex(v14);

        v16 = [v3 listAtIndex_];
        v17 = v11;
        v18 = v17;
        if (!v16)
        {
LABEL_6:
          a2 = v17;

          goto LABEL_7;
        }

        v39 = v17;
LABEL_15:
        v19 = v18;
        while (1)
        {
          v20 = v16;
          v21 = [objc_opt_self() indexPathWithIconIndex:v15 listIndex:v13];
          sub_1BEE4697C();

          v22 = sub_1BEE4696C();
          v23 = [v3 isValidIndexPath_];

          if ((v23 & 1) == 0 || (a2 = sub_1BEE4696C(), v18 = [v3 iconAtIndexPath_], a2, !v18))
          {
            a2 = [v20 addIcon_];

LABEL_29:
            (*v41)(v7, v42);
            goto LABEL_30;
          }

          [v20 removeIcon_];
          v24 = [v3 lastVisibleList];
          if (v24)
          {
            v25 = v24;
            sub_1BEB20D28(0, &qword_1EBDBFF10);
            v26 = v20;
            a2 = sub_1BEE473CC();

            if (a2)
            {
              break;
            }
          }

          v13 = [v3 nextVisibleListIndexAfterIndex_];
          if (v13 == sub_1BEE467EC())
          {
            v29 = [v3 addEmptyListRemovingLeastRecentlyHiddenListIfNecessary];
            if (v29)
            {
              v16 = v29;
              v13 = [v3 indexOfList_];

              (*v41)(v7, v42);
              v30 = v18;
              goto LABEL_15;
            }

            goto LABEL_29;
          }

          v16 = [v3 listAtIndex_];
LABEL_24:

          (*v41)(v7, v42);
          v17 = v18;
          v19 = v18;
          if (!v16)
          {
            v8 = v34;
            a1 = v35;
            v18 = v39;
            goto LABEL_6;
          }
        }

        v27 = [v3 addEmptyListRemovingLeastRecentlyHiddenListIfNecessary];
        if (v27)
        {
          break;
        }

        (*v41)(v7, v42);

LABEL_30:
        v8 = v34;
        a1 = v35;
LABEL_7:
        v9 = v40 + 1;
        if (v40 + 1 == v8)
        {
          return;
        }
      }

      v28 = v27;

      v13 = [v3 indexOfList_];
      v16 = [v3 listAtIndex_];

      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BEDF2520(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = v1;
  v3 = a1;
  v4 = sub_1BEE4696C();
  v5 = SBFolderRelativeListIndex(v4);

  v6 = sub_1BEE4696C();
  v7 = SBFolderRelativeIconIndex(v6);

  v59 = [v2 listAtIndex_];
  v8 = [v2 nextVisibleListIndexAfterIndex_];
  if ([v2 isValidListIndex_])
  {
    v9 = [v2 listAtIndex_];
    if (v9)
    {
      v10 = v9;
      v11 = &selRef_iconManager_isCustomElementValid_;
      v56 = v3;
      v57 = v7;
      while (1)
      {
        v60 = v10;
        if ([v60 isEmpty])
        {

          v55 = v60;
          goto LABEL_89;
        }

        v12 = [v60 v11[285]];
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        v13 = sub_1BEE471AC();

        if (v13 >> 62)
        {
          v14 = sub_1BEE474CC();
          v11 = &selRef_iconManager_isCustomElementValid_;
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = v14 - 1;
        if (__OFSUB__(v14, 1))
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          swift_unknownObjectRelease();
          __break(1u);
          return;
        }

        v16 = __OFSUB__(v15, v7);
        v17 = v15 < v7;
        v18 = v15 - v7;
        if (v17)
        {
          v19 = [v60 numberOfIcons];
          v20 = [v60 numberOfIcons];
          v21 = v20;
          if (v19 >= v3)
          {
            v22 = &v20[-v3];
            if (__OFSUB__(v20, v3))
            {
              goto LABEL_110;
            }

            v23 = 0;
            v21 = v3;
            v24 = v20;
            if (__OFADD__(v22, v3))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v22 = 0;
            v23 = 1;
            v24 = v20;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_102;
          }

          v16 = __OFADD__(v18, 1);
          v25 = (v18 + 1);
          if (v16)
          {
            goto LABEL_103;
          }

          v23 = 0;
          if (v25 >= v3)
          {
            v21 = v3;
          }

          else
          {
            v21 = v25;
          }

          v22 = v7;
          v24 = &v21[v7];
          if (__OFADD__(v7, v21))
          {
            goto LABEL_96;
          }
        }

        if (v24 < v22)
        {
          goto LABEL_97;
        }

        v58 = v23;
        v26 = [v60 v11[285]];
        v27 = sub_1BEE471AC();

        v28 = v27 >> 62;
        if (v27 >> 62)
        {
          if (sub_1BEE474CC() < v22)
          {
            goto LABEL_98;
          }
        }

        else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < v22)
        {
          goto LABEL_98;
        }

        if (v22 < 0)
        {
          goto LABEL_99;
        }

        if (v28)
        {
          v29 = sub_1BEE474CC();
        }

        else
        {
          v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v29 < v24)
        {
          goto LABEL_100;
        }

        if ((v27 & 0xC000000000000001) == 0 || v22 == v24)
        {
        }

        else
        {
          if (v22 >= v24)
          {
            goto LABEL_104;
          }

          v30 = v22;
          do
          {
            v31 = v30 + 1;
            sub_1BEE475BC();
            v30 = v31;
            --v21;
          }

          while (v21);
        }

        if (v28)
        {
          sub_1BEE4767C();
          v22 = v33;
          v32 = v34;
        }

        else
        {
          v32 = (2 * v24) | 1;
        }

        swift_unknownObjectRetain();
        v35 = [v59 numberOfUsedSlots];
        if (__OFSUB__(v32 >> 1, v22))
        {
          goto LABEL_101;
        }

        if (v35 >= ((v32 >> 1) - v22))
        {
          swift_unknownObjectRelease();
          if ((v32 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v36 = [v59 numberOfUsedSlots];
          swift_unknownObjectRelease();
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_105;
          }

          if (v22 > 0)
          {
            goto LABEL_107;
          }

          if (v32 >> 1 < v36)
          {
            goto LABEL_109;
          }

          v22 = 0;
          v32 = v32 & 1 | (2 * v36);
          if ((v32 & 1) == 0)
          {
LABEL_54:
            v39 = v32 >> 1;
            v40 = (v32 >> 1) - v22;
            v42 = __OFSUB__(v32 >> 1, v22);
            swift_unknownObjectRetain();
            if (v42)
            {
              goto LABEL_106;
            }

            v11 = &selRef_iconManager_isCustomElementValid_;
            if (v40)
            {
              goto LABEL_59;
            }

            goto LABEL_70;
          }
        }

        sub_1BEE4772C();
        swift_unknownObjectRetain_n();
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          swift_unknownObjectRelease();
          v37 = MEMORY[0x1E69E7CC0];
        }

        v38 = *(v37 + 16);

        v39 = v32 >> 1;
        v40 = (v32 >> 1) - v22;
        if (__OFSUB__(v32 >> 1, v22))
        {
          goto LABEL_108;
        }

        if (v38 == v40)
        {
          v41 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v7 = v57;
          v11 = &selRef_iconManager_isCustomElementValid_;
          if (v41)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        swift_unknownObjectRelease();
        v11 = &selRef_iconManager_isCustomElementValid_;
        if (v40)
        {
LABEL_59:
          if (v40 < 1)
          {
            if (v22 == v39)
            {
              goto LABEL_111;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
            v43 = swift_allocObject();
            v44 = _swift_stdlib_malloc_size(v43);
            v45 = v44 - 32;
            if (v44 < 32)
            {
              v45 = v44 - 25;
            }

            v43[2] = v40;
            v43[3] = (2 * (v45 >> 3)) | 1;
            if (v22 == v39)
            {
              goto LABEL_111;
            }
          }

          swift_arrayInitWithCopy();
        }

LABEL_70:
        v7 = v57;
LABEL_71:
        swift_unknownObjectRelease();
LABEL_72:
        v46 = sub_1BEE4719C();

        v47 = [v59 insertIcons:v46 atIndex:v7 options:1];

        if (v47)
        {
          v48 = sub_1BEE471AC();

          if (qword_1EBDBFFA8 != -1)
          {
            swift_once();
          }

          v49 = sub_1BEE46A0C();
          __swift_project_value_buffer(v49, qword_1EBDCA820);

          v50 = sub_1BEE469FC();
          v51 = sub_1BEE4732C();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 134217984;
            if (v48 >> 62)
            {
              v53 = sub_1BEE474CC();
            }

            else
            {
              v53 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v52 + 4) = v53;

            _os_log_impl(&dword_1BEB18000, v50, v51, "Extra %ld icons left for swap restore", v52, 0xCu);
            MEMORY[0x1BFB50850](v52, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }
        }

        if (v58)
        {
          [v2 removeList_];
          swift_unknownObjectRelease();

          break;
        }

        v54 = [v2 nextVisibleListIndexAfterIndex_];
        if (([v2 isValidListIndex_] & 1) == 0)
        {

          swift_unknownObjectRelease();
          return;
        }

        v10 = [v2 listAtIndex_];
        swift_unknownObjectRelease();

        v55 = v60;
        v59 = v60;
        v3 = v56;
        if (!v10)
        {
          goto LABEL_89;
        }
      }
    }
  }

  v55 = v59;
LABEL_89:
}

uint64_t sub_1BEDF2E94()
{
  if (v0[OBJC_IVAR___SBFolder__isIconStateDirty])
  {
    return 1;
  }

  v8 = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1BEDFB400;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1BEDFBF6C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEE39C64;
  aBlock[3] = &block_descriptor_172;
  v4 = _Block_copy(aBlock);

  [v0 enumerateListsUsingBlock_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v1 = v8;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEDF3008()
{
  v1 = *(v0 + OBJC_IVAR___SBFolder__isIconStateDirty);
  *(v0 + OBJC_IVAR___SBFolder__isIconStateDirty) = 0;
  sub_1BEB53D74(v1);
  v2 = sub_1BEDEB46C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      [v5 markIconStateClean];
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1BEDF320C(int a1)
{
  v2 = *&v1[OBJC_IVAR___SBFolder_listWithNonDefaultSizedIconsGridSize];
  *&v1[OBJC_IVAR___SBFolder_listWithNonDefaultSizedIconsGridSize] = a1;
  result = SBHIconGridSizeEqualToIconGridSize(a1, v2);
  if ((result & 1) == 0)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BEDFB3A8;
    *(v5 + 24) = v4;
    v8[4] = sub_1BEDFBF6C;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1BEE39C64;
    v8[3] = &block_descriptor_149;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v7 enumerateListsWithOptions:4 usingBlock:v6];
    _Block_release(v6);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BEDF33EC(void *a1)
{
  v15 = *&v1[OBJC_IVAR___SBFolder_listRotatedLayoutClusterGridSizeClass];
  *&v1[OBJC_IVAR___SBFolder_listRotatedLayoutClusterGridSizeClass] = a1;
  v3 = sub_1BEE4708C();
  v5 = v4;
  if (v3 == sub_1BEE4708C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1BEE4770C();
    v9 = a1;

    if (v8)
    {
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1BEDFB324;
      *(v11 + 24) = v10;
      aBlock[4] = sub_1BEDFBF6C;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BEE39C64;
      aBlock[3] = &block_descriptor_139;
      v12 = _Block_copy(aBlock);
      v13 = v1;

      [v13 enumerateListsWithOptions:4 usingBlock:v12];

      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BEDF3698(uint64_t result)
{
  v2 = v1[OBJC_IVAR___SBFolder_listsAllowRotatedLayout];
  v1[OBJC_IVAR___SBFolder_listsAllowRotatedLayout] = result;
  if (v2 != (result & 1))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BEDFB310;
    *(v4 + 24) = v3;
    v7[4] = sub_1BEDFBF6C;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BEE39C64;
    v7[3] = &block_descriptor_129;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v6 enumerateListsWithOptions:4 usingBlock:v5];
    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BEDF3870(uint64_t result)
{
  v2 = v1[OBJC_IVAR___SBFolder_listsAllowIndependentRotatedLayout];
  v1[OBJC_IVAR___SBFolder_listsAllowIndependentRotatedLayout] = result;
  if (v2 != (result & 1))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BEDFB2FC;
    *(v4 + 24) = v3;
    v7[4] = sub_1BEDFBF6C;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BEE39C64;
    v7[3] = &block_descriptor_119;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v6 enumerateListsWithOptions:4 usingBlock:v5];
    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BEDF3A50(void *a1)
{
  v2 = v1;
  v10 = *&v1[OBJC_IVAR___SBFolder_listAllowedGridSizeClasses];
  *&v1[OBJC_IVAR___SBFolder_listAllowedGridSizeClasses] = a1;
  sub_1BEB20D28(0, &unk_1EBDBFED0);
  v4 = a1;
  if (sub_1BEE473CC())
  {
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1BEDFB2E8;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1BEDFBF6C;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BEE39C64;
    aBlock[3] = &block_descriptor_109;
    v7 = _Block_copy(aBlock);
    v8 = v2;

    [v8 enumerateListsWithOptions:4 usingBlock:v7];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BEDF3C94(uint64_t result)
{
  v2 = *&v1[OBJC_IVAR___SBFolder_listsFixedIconLocationBehavior];
  *&v1[OBJC_IVAR___SBFolder_listsFixedIconLocationBehavior] = result;
  if (v2 != result)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BEDFB280;
    *(v4 + 24) = v3;
    v7[4] = sub_1BEDFBF6C;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BEE39C64;
    v7[3] = &block_descriptor_99;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v6 enumerateListsWithOptions:4 usingBlock:v5];
    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BEDF3E68(uint64_t result)
{
  v2 = *&v1[OBJC_IVAR___SBFolder_listsIconDisplacementBehavior];
  *&v1[OBJC_IVAR___SBFolder_listsIconDisplacementBehavior] = result;
  if (v2 != result)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BEDFB26C;
    *(v4 + 24) = v3;
    v7[4] = sub_1BEDFBF6C;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BEE39C64;
    v7[3] = &block_descriptor_89;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v6 enumerateListsWithOptions:4 usingBlock:v5];
    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BEDF403C(uint64_t result)
{
  v2 = *&v1[OBJC_IVAR___SBFolder_listsIconLayoutBehavior];
  *&v1[OBJC_IVAR___SBFolder_listsIconLayoutBehavior] = result;
  if (v2 != result)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BEDFB258;
    *(v4 + 24) = v3;
    v7[4] = sub_1BEDFBF6C;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BEE39C64;
    v7[3] = &block_descriptor_79;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v6 enumerateListsWithOptions:4 usingBlock:v5];
    _Block_release(v5);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BEDF41DC(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR___SBFolder_rotatedIconGridSizeClassSizes];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_1BEB20D28(0, &qword_1EBDBFF78), v5 = v4, v6 = a1, v7 = sub_1BEE473CC(), v5, v6, (v7 & 1) == 0))
  {
LABEL_6:
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BEDFB244;
    *(v9 + 24) = v8;
    v12[4] = sub_1BEDFBF6C;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1BEE39C64;
    v12[3] = &block_descriptor_69;
    v10 = _Block_copy(v12);
    v11 = v2;

    [v11 enumerateListsWithOptions:4 usingBlock:v10];
    _Block_release(v10);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }
}

void sub_1BEDF43C4(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id))
{
  v9 = *&a1[*a4];
  *&a1[*a4] = a3;
  v7 = a3;
  v8 = a1;
  a5(v9);
}

void sub_1BEDF4444(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR___SBFolder_gridSizeClassDomain];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_1BEB20D28(0, &unk_1EBDBFEB0), v5 = v4, v6 = a1, v7 = sub_1BEE473CC(), v5, v6, (v7 & 1) == 0))
  {
LABEL_6:
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BEDFB230;
    *(v9 + 24) = v8;
    v12[4] = sub_1BEDFBF6C;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1BEE39C64;
    v12[3] = &block_descriptor_59;
    v10 = _Block_copy(v12);
    v11 = v2;

    [v11 enumerateListsWithOptions:4 usingBlock:v10];
    _Block_release(v10);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall SBFolder.iconList(_:didAdd:)(SBIconListModel *_, SBIcon *didAdd)
{
  v3 = v2;
  objc_opt_self();
  v25 = didAdd;
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = didAdd;
    v9 = [v7 folder];
    if (v9)
    {
      v10 = v9;
      [v2 didAddFolder_];

      v8 = v10;
    }
  }

  if (*&v2[OBJC_IVAR___SBFolder_coalesceChangesTransaction])
  {

    sub_1BEDDDC94(didAdd, _);

LABEL_22:
    sub_1BEB54724();
    return;
  }

  v11 = [v2 icon];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AE40;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v14 = didAdd;
    sub_1BEE4754C();
    sub_1BEDFA150(inited);
    swift_setDeallocating();
    sub_1BEDFA2B0(inited + 32);
    v15 = sub_1BEE4724C();

    [v12 noteContainedIconsAdded:v15 removed:0];
  }

  v16 = [*&v2[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v17 = sub_1BEE471AC();

  if (!(v17 >> 62))
  {
    v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_11;
    }

LABEL_21:

    goto LABEL_22;
  }

  v26 = sub_1BEE474CC();
  if (!v26)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v26 >= 1)
  {
    v18 = 0;
    v19 = v17 & 0xC000000000000001;
    do
    {
      if (v19)
      {
        v24 = MEMORY[0x1BFB4EA90](v18, v17);
      }

      else
      {
        v24 = *(v17 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      if ([v24 respondsToSelector_])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
        v20 = v3;
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1BEE8AF50;
        *(v21 + 32) = v25;
        v22 = v25;
        swift_unknownObjectRetain();
        sub_1BEDF90B4(v21, &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
        swift_setDeallocating();
        v3 = v20;
        swift_arrayDestroy();
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
        v23 = sub_1BEE4724C();
        [v24 folder:v20 didAddIcons:v23 removedIcons:0];
        v19 = v17 & 0xC000000000000001;

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v18;
    }

    while (v26 != v18);
    goto LABEL_21;
  }

  __break(1u);
}

Swift::Void __swiftcall SBFolder.iconList(_:didReplace:with:)(SBIconListModel *_, SBIcon *didReplace, SBIcon *with)
{
  v4 = v3;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = with;
    v11 = [v9 folder];
    if (v11)
    {
      v12 = v11;
      [v4 didAddFolder_];

      v10 = v12;
    }
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = didReplace;
    v16 = [v14 folder];
    if (v16)
    {
      v17 = v16;
      [v4 didRemoveFolder_];

      v15 = v17;
    }
  }

  if (*&v4[OBJC_IVAR___SBFolder_coalesceChangesTransaction])
  {
    swift_beginAccess();
    v18 = didReplace;

    sub_1BEB2AB48(&v26, v18, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
    swift_endAccess();

    swift_beginAccess();
    v19 = sub_1BEDF7D04(v18, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
    swift_endAccess();

    sub_1BEDDDC94(with, _);

LABEL_23:
    sub_1BEB54724();
    return;
  }

  v20 = [v4 icon];
  [v20 noteContainedIcon:with replacedIcon:didReplace];

  v21 = [*&v4[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v22 = sub_1BEE471AC();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_13;
    }

LABEL_22:

    goto LABEL_23;
  }

  v23 = sub_1BEE474CC();
  if (!v23)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (v23 >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1BFB4EA90](i, v22);
      }

      else
      {
        v25 = *(v22 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v25 respondsToSelector_])
      {
        [v25 folder:v4 didReplaceIcon:didReplace withIcon:with];
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1BEDF519C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = [v3 rootFolder];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, (v10 = [v8 delegate]) != 0))
  {
    v11 = v10;
    if ([v10 respondsToSelector_])
    {
      v12 = [v11 *a3];
      swift_unknownObjectRelease();

      return v12;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 1;
}

id sub_1BEDF5300(uint64_t a1, void *a2)
{
  v4 = [v2 rootFolder];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = v5, (v7 = [v5 delegate]) != 0))
  {
    v8 = v7;
    if ([v7 respondsToSelector_])
    {
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      swift_unknownObjectRetain();
      v9 = sub_1BEE4719C();
      v10 = [v8 rootFolder:v6 shouldBounceIcon:a2 afterInsertingIcons:v9 forIconList:a1 inFolder:v2];

      swift_unknownObjectRelease_n();
      if (v10)
      {
        return v10;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  return a2;
}

void sub_1BEDF56F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_1BEE4705C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 descriptionBuilderWithMultilinePrefix_];

  if (v5)
  {
    v6 = [v5 build];

    if (v6)
    {
      sub_1BEE4708C();
    }
  }

  else
  {
    __break(1u);
  }
}

id SBFolder.description.getter()
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

uint64_t sub_1BEDF59F0()
{
  v1 = [v0 effectiveGridSizeClassDomain];
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  v2 = swift_allocObject();
  *(v2 + 16) = v10;
  *(v2 + 24) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1BEDFB228;
  *(v3 + 24) = v2;
  v9[4] = sub_1BEB31F0C;
  v9[5] = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BEB31DD8;
  v9[3] = &block_descriptor_49;
  v4 = _Block_copy(v9);
  v5 = v1;

  [v0 enumerateAllIconsWithOptions:1 usingBlock:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_1BEDF5B80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_1BEE4698C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v29 = a1;
    if (result)
    {
      sub_1BEE469EC();
      v9 = sub_1BEE476EC();
      MEMORY[0x1BFB4E5A0](v9);

      if (v8 != 1)
      {
        v10 = 1;
        do
        {
          v11 = v10 + 1;
          sub_1BEE469EC();
          v12 = sub_1BEE476EC();
          MEMORY[0x1BFB4E5A0](v12);

          MEMORY[0x1BFB4E5A0](45, 0xE100000000000000);

          v10 = v11;
        }

        while (v8 != v11);
      }
    }

    v13 = [v29 gridSizeClass];
    sub_1BEE475AC();

    v14 = [v29 displayName];
    v15 = sub_1BEE4708C();
    v17 = v16;

    MEMORY[0x1BFB4E5A0](v15, v17);

    MEMORY[0x1BFB4E5A0](10272, 0xE200000000000000);
    v18 = [v29 uniqueIdentifier];
    v19 = sub_1BEE4708C();
    v21 = v20;

    MEMORY[0x1BFB4E5A0](v19, v21);

    MEMORY[0x1BFB4E5A0](0x203A657A6973202CLL, 0xE800000000000000);
    v22 = [a5 descriptionForGridSizeClass_];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1BEE4708C();
      v26 = v25;

      v27 = v24;
    }

    else
    {
      v27 = sub_1BEE4708C();
      v26 = v28;
    }

    MEMORY[0x1BFB4E5A0](v27, v26);

    MEMORY[0x1BFB4E5A0](10, 0xE100000000000000);
    MEMORY[0x1BFB4E5A0](8250, 0xE200000000000000);
  }

  return result;
}

uint64_t sub_1BEDF5E38(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v10;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BEDFB218;
  *(v4 + 24) = v3;
  v9[4] = sub_1BEDFB220;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BEE39C64;
  v9[3] = &block_descriptor_2;
  v5 = _Block_copy(v9);

  [v1 enumerateListsUsingBlock_];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

id sub_1BEDF5FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1BEDF5E38(a3);

  v5 = sub_1BEE4705C();

  return v5;
}

uint64_t sub_1BEDF6018(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 30000)
  {
    v5 = result;
    result = [result isEmpty];
    if ((result & 1) == 0)
    {
      v6 = [v5 layoutDescriptionWithOptions_];
      v7 = sub_1BEE4708C();
      v9 = v8;

      v11 = sub_1BEE476EC();
      v12 = v10;
      MEMORY[0x1BFB4E5A0](2618, 0xE200000000000000);
      MEMORY[0x1BFB4E5A0](v7, v9);

      MEMORY[0x1BFB4E5A0](2570, 0xE200000000000000);
      MEMORY[0x1BFB4E5A0](v11, v12);
    }
  }

  return result;
}

uint64_t SBFolder.id.getter()
{
  v1 = [v0 uniqueIdentifier];
  v2 = sub_1BEE4708C();

  return v2;
}

void *sub_1BEDF64C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC75A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1BEDF6558(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1BEE4777C();
  sub_1BEE470CC();
  v8 = sub_1BEE477CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1BEE4770C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1BEDF6F00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BEDF66CC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1BEE4776C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1BEDF7080(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BEDF67D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_1BEE4757C();
    v20 = v7;
    sub_1BEE4748C();
    if (sub_1BEE474FC())
    {
      sub_1BEB20D28(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1BEB2B240(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_1BEE473BC();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_1BEE474FC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_1BEDF69E4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82B0);
  result = sub_1BEE4756C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1BEE4777C();
      sub_1BEE470CC();
      result = sub_1BEE477CC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BEDF6C58()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC79C0);
  result = sub_1BEE4756C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1BEE4776C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1BEDF6E7C(uint64_t a1, uint64_t a2)
{
  sub_1BEE473BC();
  result = sub_1BEE4746C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1BEDF6F00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BEDF69E4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BEDF71A0();
      goto LABEL_16;
    }

    sub_1BEDF757C();
  }

  v10 = *v4;
  sub_1BEE4777C();
  sub_1BEE470CC();
  result = sub_1BEE477CC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1BEE4770C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1BEE4774C();
  __break(1u);
  return result;
}

uint64_t sub_1BEDF7080(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BEDF6C58();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BEDF72FC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BEDF77B4();
  }

  v8 = *v3;
  result = sub_1BEE4776C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BEE4774C();
  __break(1u);
  return result;
}

void *sub_1BEDF71A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82B0);
  v2 = *v0;
  v3 = sub_1BEE4755C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1BEDF72FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC79C0);
  v2 = *v0;
  v3 = sub_1BEE4755C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1BEDF743C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BEE4755C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
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
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
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

      v17 = *(v3 + 56 + 8 * v9);
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

uint64_t sub_1BEDF757C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC82B0);
  result = sub_1BEE4756C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1BEE4777C();

      sub_1BEE470CC();
      result = sub_1BEE477CC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BEDF77B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC79C0);
  result = sub_1BEE4756C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1BEE4776C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BEDF79A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id *))
{
  v10 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = *a1;
  swift_bridgeObjectRetain_n();
  v15 = sub_1BEB502DC(v14, a2, a4, a5, sub_1BEB52D94);
  if (v6)
  {

    return v10;
  }

  if (v16)
  {
    if (v14 >> 62)
    {
      goto LABEL_54;
    }

    v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_44:

    return v10;
  }

  v10 = v15;
  v35 = a1;
  v36 = a2;
  v34[5] = v13;
  v17 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v14 >> 62)
    {
      if (v17 == sub_1BEE474CC())
      {
        goto LABEL_43;
      }
    }

    else if (v17 == *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB4EA90](v17, v14);
      goto LABEL_17;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v19 = *(v14 + 8 * v17 + 32);
LABEL_17:
    v20 = v19;
    v37 = v19;
    MEMORY[0x1EEE9AC00](v19);
    v34[2] = &v37;
    a2 = a6;
    v21 = sub_1BEB52D94(a6, v34, v36);

    if (v21)
    {
LABEL_9:
      a6 = a2;
    }

    else
    {
      if (v10 != v17)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1BFB4EA90](v10, v14);
          v23 = MEMORY[0x1BFB4EA90](v17, v14);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v24)
          {
            goto LABEL_52;
          }

          if (v17 >= v24)
          {
            goto LABEL_53;
          }

          v25 = *(v14 + 32 + 8 * v17);
          v22 = *(v14 + 32 + 8 * v10);
          v23 = v25;
        }

        v26 = v23;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
        {
          v14 = sub_1BEE2451C(v14);
          v27 = (v14 >> 62) & 1;
        }

        else
        {
          LODWORD(v27) = 0;
        }

        v28 = v14 & 0xFFFFFFFFFFFFFF8;
        v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v26;

        if ((v14 & 0x8000000000000000) != 0 || v27)
        {
          v14 = sub_1BEE2451C(v14);
          v28 = v14 & 0xFFFFFFFFFFFFFF8;
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_42:
            __break(1u);
LABEL_43:

            goto LABEL_44;
          }
        }

        else if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (v17 >= *(v28 + 16))
        {
          goto LABEL_50;
        }

        v30 = v28 + 8 * v17;
        v31 = *(v30 + 32);
        *(v30 + 32) = v22;

        *v35 = v14;
      }

      a6 = a2;
      v18 = __OFADD__(v10++, 1);
      if (v18)
      {
        goto LABEL_49;
      }
    }

    v18 = __OFADD__(v17++, 1);
    if (v18)
    {
      goto LABEL_48;
    }
  }

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
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v33 = sub_1BEE474CC();

  return v33;
}

uint64_t sub_1BEDF7D04(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_1BEE4750C();

    if (v13)
    {
      v14 = sub_1BEDF7EB8(v11, v12, a4, a5, a2);

      return v14;
    }

    return 0;
  }

  v25 = v5;
  sub_1BEB20D28(0, a2);
  v16 = sub_1BEE473BC();
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v9 + 48) + 8 * v18);
    v21 = sub_1BEE473CC();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BEDF743C(a4);
    v23 = v26;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  sub_1BEDF8038(v18);
  result = v24;
  *v25 = v26;
  return result;
}

uint64_t sub_1BEDF7EB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = v5;

  v10 = sub_1BEE474CC();
  v11 = swift_unknownObjectRetain();
  v12 = sub_1BEDF67D0(v11, v10, a3, a4, a5);
  v21 = v12;

  v13 = sub_1BEE473BC();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_1BEB20D28(0, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_1BEE473CC();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_1BEDF8038(v15);
  result = sub_1BEE473CC();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BEDF8038(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BEE4745C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1BEE473BC();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unsigned __int8 *sub_1BEDF81D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1BEE4715C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BEDF8764();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BEE475EC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1BEDF8764()
{
  v0 = sub_1BEE4716C();
  v4 = sub_1BEDF87E4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1BEDF87E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BEE473FC();
    if (!v9 || (v10 = v9, v11 = sub_1BEDF64C0(v9, 0), v12 = sub_1BEDF893C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1BEE470BC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BEE470BC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BEE475EC();
LABEL_4:

  return sub_1BEE470BC();
}

unint64_t sub_1BEDF893C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1BEDF8B5C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BEE4712C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BEE475EC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1BEDF8B5C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1BEE4710C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BEDF8B5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BEE4713C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB4E5E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1BEDF8C3C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_1BEE474CC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB4EA90](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1BEB20D28(0, &qword_1EBDBFE90);
    v7 = sub_1BEE473CC();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1BEDF8D50(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1BEDF8C3C(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_1BEE474CC();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1EBDBFE90;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_1BEE474CC())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB4EA90](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_1BEB20D28(0, v8);
    v12 = sub_1BEE473CC();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB4EA90](v6, v3);
          v14 = MEMORY[0x1BFB4EA90](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1BEE2451C(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_1BEE2451C(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  return sub_1BEE474CC();
}

uint64_t sub_1BEDF9004(int a1)
{
  if (a1)
  {
    if ((a1 & 0x10) != 0)
    {
      v1 = 12;
      if ((a1 & 0x80) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 4;
      if ((a1 & 0x80) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 0x10) == 0)
    {
      v1 = 0;
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 8;
    if ((a1 & 0x80) != 0)
    {
LABEL_4:
      v1 |= 0x40uLL;
    }
  }

LABEL_5:
  if ((a1 & 0x100) != 0)
  {
    v1 |= 0x80uLL;
    if ((a1 & 0x200) == 0)
    {
LABEL_7:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((a1 & 0x200) == 0)
  {
    goto LABEL_7;
  }

  v1 |= 0x100uLL;
  if ((a1 & 0x400) == 0)
  {
LABEL_8:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v1 |= 0x200uLL;
  if ((a1 & 0x800) == 0)
  {
LABEL_9:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v1 |= 0x100000uLL;
    if ((a1 & 0x1000000) == 0)
    {
      return v1;
    }

    return v1 | 0x200000;
  }

LABEL_19:
  v1 |= 0x400uLL;
  if ((a1 & 0x400000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((a1 & 0x1000000) != 0)
  {
    return v1 | 0x200000;
  }

  return v1;
}

void sub_1BEDF90B4(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_1BEE474CC();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_1BEE4758C();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_1BEE474CC();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x1BFB4EA90](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_1BEE473BC();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1BEB20D28(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_1BEE473CC();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_1BEE473BC();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_1BEB20D28(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_1BEE473CC();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1BEDF93A0(uint64_t a1, int a2, char a3, void *a4, int a5, void *a6, uint64_t a7)
{
  v75 = a6;
  v76 = a5;
  LODWORD(v77) = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A28);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v72 - v12;
  v13 = &selRef_libraryIconViewControllerForPresenter_;
  v14 = [a4 listCount];
  if (a1)
  {
    v15 = [a4 indexOfList_];
  }

  else
  {
    v15 = sub_1BEE467EC();
  }

  v16 = v15;
  v17 = sub_1BEE467EC();
  v74 = a7;
  if (v16 == v17)
  {
    if (a3)
    {
      v16 = 0;
      goto LABEL_8;
    }

    if (v14 <= 0)
    {
      v16 = 0;
      if (v14 >= 0)
      {
        goto LABEL_41;
      }

      goto LABEL_64;
    }

    v16 = (v14 - 1);
LABEL_20:
    if (v16)
    {
      v21 = 0;
      v22 = v16;
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_93;
        }

        v24 = [a4 listAtIndex_];
        if (([v24 isHidden] & 1) == 0)
        {
          v25 = [v24 firstFreeSlotIndex];
          if (v25 != sub_1BEE467EC())
          {
LABEL_26:
            v26 = [objc_opt_self() indexPathWithIconIndex:v25 listIndex:v22];
            goto LABEL_90;
          }
        }

        --v22;
        ++v21;
        if (v23 == v16)
        {
          v13 = &selRef_libraryIconViewControllerForPresenter_;
          break;
        }
      }
    }

    if (v14 >= v16)
    {
LABEL_41:
      if (v16 == v14)
      {
        goto LABEL_68;
      }

      if (v16 >= v14)
      {
        goto LABEL_94;
      }

      if (v77)
      {
LABEL_49:
        v42 = (v16 + 1);
        if ((v16 + 1) == v14)
        {
          goto LABEL_68;
        }

        v43 = -1;
        v44 = &selRef_libraryIconViewControllerForPresenter_;
        v45 = &selRef_isEligibleForSimpleMutationsWithGridCellInfoOptions_mutationOptions_;
        v46 = &selRef_fetchURL_;
        while (v42 < v14)
        {
          if (v43 || (v77 & 1) == 0)
          {
            v24 = [a4 v44[54]];
            if (([v24 v45[59]] & 1) == 0)
            {
              if (!v43 && (v76 & 1) != 0)
              {
                v47 = v13[58];
                v72 = v24;
                v48 = v13;
                v49 = v45;
                v50 = v46;
                v51 = v75;
                v52 = v44;
                v53 = [v75 v47];
                v54 = v51;
                v46 = v50;
                v45 = v49;
                v13 = v48;
                v24 = v72;
                v55 = v53 < [v54 maxListCount];
                v44 = v52;
                if (v55)
                {
                  goto LABEL_62;
                }
              }

              v41 = [v24 v46[49]];
              if (v41 != sub_1BEE467EC())
              {
                goto LABEL_89;
              }
            }
          }

          ++v42;
          --v43;
          if (v14 == v42)
          {
            goto LABEL_68;
          }
        }

        goto LABEL_94;
      }

      v24 = [a4 listAtIndex_];
      if (([v24 isHidden] & 1) == 0)
      {
        if ((v76 & 1) != 0 && (v39 = v75, v40 = [v75 listCount], v40 < objc_msgSend(v39, sel_maxListCount)))
        {
LABEL_62:
          v26 = [objc_opt_self() indexPathWithIconIndex:0 listIndex:{objc_msgSend(v75, v13[58])}];
        }

        else
        {
          v41 = [v24 firstFreeSlotIndex];
          if (v41 == sub_1BEE467EC())
          {
            goto LABEL_48;
          }

          v43 = 0;
LABEL_89:
          v26 = [objc_opt_self() indexPathWithIconIndex:v41 listIndex:v43];
        }

LABEL_90:
        v69 = v26;
        v70 = v73;
        sub_1BEE4697C();

        v71 = sub_1BEE469DC();
        (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
        sub_1BEB384A0(v70, v74);

        return;
      }

LABEL_48:

      goto LABEL_49;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((a3 & 1) == 0)
  {
    if (v16 < 0)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v14 < v16)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v16 != v14)
  {
    v27 = &selRef_libraryIconViewControllerForPresenter_;
    v28 = &selRef_isEligibleForSimpleMutationsWithGridCellInfoOptions_mutationOptions_;
    v29 = &selRef_fetchURL_;
    v22 = v16;
    v72 = v16;
    while (v22 < v14)
    {
      if (v22 || (v77 & 1) == 0)
      {
        v24 = [a4 v27[54]];
        if (([v24 v28[59]] & 1) == 0)
        {
          if (!v22 && (v76 & 1) != 0)
          {
            v30 = v13[58];
            v31 = a4;
            v32 = v28;
            v33 = v27;
            v34 = v29;
            v35 = v13;
            v36 = v75;
            v37 = [v75 v30];
            v38 = v36;
            v13 = v35;
            v29 = v34;
            v27 = v33;
            v28 = v32;
            a4 = v31;
            v16 = v72;
            if (v37 < [v38 maxListCount])
            {
              v26 = [objc_opt_self() indexPathWithIconIndex:0 listIndex:{objc_msgSend(v75, v13 + 1400)}];
              goto LABEL_90;
            }
          }

          v25 = [v24 v29[49]];
          if (v25 != sub_1BEE467EC())
          {
            goto LABEL_26;
          }
        }
      }

      if (v14 == ++v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

LABEL_10:
  if (v16 < 0)
  {
LABEL_97:
    __break(1u);
    return;
  }

  if (!v16)
  {
    goto LABEL_68;
  }

  if ((v77 & 1) == 0)
  {
    v14 = [a4 listAtIndex_];
    if ([v14 isHidden])
    {
LABEL_66:

      goto LABEL_67;
    }

    if (v76)
    {
      v18 = v75;
      v19 = [v75 v13[58]];
      if (v19 < [v18 maxListCount])
      {
        v20 = [objc_opt_self() indexPathWithIconIndex:0 listIndex:{objc_msgSend(v75, v13[58])}];
LABEL_87:
        v66 = v20;
        v67 = v73;
        sub_1BEE4697C();

        v68 = sub_1BEE469DC();
        (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
        sub_1BEB384A0(v67, v74);

        return;
      }
    }

LABEL_65:
    v56 = [v14 firstFreeSlotIndex];
    if (v56 != sub_1BEE467EC())
    {
      i = 0;
LABEL_86:
      v20 = [objc_opt_self() indexPathWithIconIndex:v56 listIndex:i];
      goto LABEL_87;
    }

    goto LABEL_66;
  }

LABEL_67:
  if (v16 != 1)
  {
    for (i = 1; i != v16; ++i)
    {
      v14 = [a4 listAtIndex_];
      if (([v14 isHidden] & 1) == 0)
      {
        v56 = [v14 firstFreeSlotIndex];
        if (v56 != sub_1BEE467EC())
        {
          goto LABEL_86;
        }
      }
    }
  }

LABEL_68:
  if (v77)
  {
    v77 = [a4 listAtIndex_];
    if (![v77 isHidden])
    {
      if (v76)
      {
        v57 = v75;
        v58 = [v75 v13[58]];
        if (v58 < [v57 maxListCount])
        {
          v59 = [objc_opt_self() indexPathWithIconIndex:0 listIndex:{objc_msgSend(v75, v13[58])}];
LABEL_83:
          v63 = v59;
          v64 = v73;
          sub_1BEE4697C();

          v65 = sub_1BEE469DC();
          (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
          sub_1BEB384A0(v64, v74);

          return;
        }
      }

      v60 = [v77 firstFreeSlotIndex];
      if (v60 != sub_1BEE467EC())
      {
        v59 = [objc_opt_self() indexPathWithIconIndex:v60 listIndex:0];
        goto LABEL_83;
      }
    }

    v61 = v77;
  }
}

void sub_1BEDF9C98(uint64_t a1, id a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a2 indexOfList_];
  if (v6 == sub_1BEE467EC())
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = [a2 listCount];
  v13 = 0;
  (*(a3 + 16))(a3, a1, v6, &v13);
  if ((v13 & 1) == 0)
  {
    v8 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      v9 = __OFADD__(v6, 1);
      v10 = v6 + 1;
      if (!v9)
      {
        while ((v8 & 0x8000000000000000) == 0)
        {
          v11 = [a2 listAtIndex_];
          (*(a3 + 16))(a3, v11, v8, &v13);

          if (v13)
          {
            return;
          }

          --v8;
          if (v10 < v7)
          {
LABEL_11:
            v12 = [a2 listAtIndex_];
            (*(a3 + 16))(a3, v12, v10, &v13);

            ++v10;
            if (v13)
            {
              return;
            }
          }
        }

        if (v10 >= v7)
        {
          return;
        }

        goto LABEL_11;
      }

LABEL_15:
      __break(1u);
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1BEDF9E30(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v5 = sub_1BEDEB46C();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
  }

  v8 = 0;
  v9 = 0;
  v10 = (v5 + 40);
  v19 = *(v5 + 16);
  v20 = v3;
  while (1)
  {
    if (v9 >= *(v6 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    v13 = v12;
    if ((a1 & 2) != 0 && [v12 isHidden] || (a1 & 4) != 0 && objc_msgSend(a2, sel_isExtraListIndex_, v11))
    {
LABEL_3:

      goto LABEL_4;
    }

    v23 = 0;
    (*(v3 + 16))(v3, v13, v11, &v23);
    if (v23 == 1)
    {
      break;
    }

    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }

    v14 = v6;
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = sub_1BEDFB6E4;
    v15[4] = &v24;
    v15[5] = &v23;
    sub_1BEB326F8(v8);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1BEDFB6EC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1BEDFBF70;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BEB5E290;
    aBlock[3] = &block_descriptor_301;
    v17 = _Block_copy(aBlock);

    [v13 enumerateFolderIconsUsingBlock_];

    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      goto LABEL_20;
    }

    v6 = v14;
    v8 = sub_1BEDFB6EC;
    v7 = v19;
    v3 = v20;
LABEL_4:
    ++v9;
    v10 += 2;
    if (v7 == v9)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  return sub_1BEB326F8(v8);
}

uint64_t sub_1BEDFA150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7A98);
    v3 = sub_1BEE4758C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_1BEDFBC74(v6 + 40 * v4, v19);
      result = sub_1BEE4752C();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_1BEDFBC74(*(v3 + 48) + 40 * i, v18);
        v11 = MEMORY[0x1BFB4EA00](v18, v19);
        result = sub_1BEDFA2B0(v18);
        if (v11)
        {
          sub_1BEDFA2B0(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1BEDFA304(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v25 = a1;
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 folder];
    if (v7)
    {
      v8 = v7;
      [v1 didRemoveFolder_];

      v6 = v8;
    }
  }

  if (*&v1[OBJC_IVAR___SBFolder_coalesceChangesTransaction])
  {
    swift_beginAccess();
    v9 = a1;

    sub_1BEB2AB48(&v27, v9, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
    swift_endAccess();

    swift_beginAccess();
    v10 = sub_1BEDF7D04(v9, &qword_1EBDBFEA0, off_1E8087510, &qword_1EBDC7A90, &unk_1BEE8B100);
    swift_endAccess();

LABEL_22:
    sub_1BEB54724();
    return;
  }

  v11 = [v1 icon];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AE40;
    sub_1BEB20D28(0, &qword_1EBDBFEA0);
    sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
    v14 = a1;
    sub_1BEE4754C();
    sub_1BEDFA150(inited);
    swift_setDeallocating();
    sub_1BEDFA2B0(inited + 32);
    v15 = sub_1BEE4724C();

    [v12 noteContainedIconsAdded:0 removed:v15];
  }

  v16 = [*&v1[OBJC_IVAR___SBFolder_folderObservers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v17 = sub_1BEE471AC();

  if (!(v17 >> 62))
  {
    v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_11;
    }

LABEL_21:

    goto LABEL_22;
  }

  v26 = sub_1BEE474CC();
  if (!v26)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v26 >= 1)
  {
    v18 = 0;
    v19 = v17 & 0xC000000000000001;
    do
    {
      if (v19)
      {
        v24 = MEMORY[0x1BFB4EA90](v18, v17);
      }

      else
      {
        v24 = *(v17 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      if ([v24 respondsToSelector_])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
        v20 = v2;
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1BEE8AF50;
        *(v21 + 32) = v25;
        v22 = v25;
        swift_unknownObjectRetain();
        sub_1BEDF90B4(v21, &qword_1EBDC7A90, &unk_1BEE8B100, &qword_1EBDBFEA0);
        swift_setDeallocating();
        v2 = v20;
        swift_arrayDestroy();
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
        v23 = sub_1BEE4724C();
        [v24 folder:v20 didAddIcons:0 removedIcons:v23];
        v19 = v17 & 0xC000000000000001;

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v18;
    }

    while (v26 != v18);
    goto LABEL_21;
  }

  __break(1u);
}

id sub_1BEDFA7E4()
{
  v1 = [v0 succinctDescriptionBuilder];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = [v0 displayName];
    if (!v4)
    {
      sub_1BEE4708C();
      v4 = sub_1BEE4705C();
    }

    v5 = sub_1BEE4705C();
    [v3 appendString:v4 withName:v5];

    v6 = v3;
    v7 = [v0 listCount];
    v8 = sub_1BEE4705C();

    v9 = [v0 requiredTrailingEmptyListCount];
    if (v9 >= 1)
    {
      v10 = v9;
      v11 = v6;
      v12 = sub_1BEE4705C();
    }

    v13 = v6;
    v14 = SBHStringForIconGridSize([v0 listGridSize]);
    if (!v14)
    {
      sub_1BEE4708C();
      v14 = sub_1BEE4705C();
    }

    v15 = sub_1BEE4705C();
    [v13 appendString:v14 withName:v15];

    v16 = v13;
    v17 = [v0 iconGridSizeClassSizes];
    v18 = sub_1BEE4705C();
  }

  else
  {
    [v0 requiredTrailingEmptyListCount];
  }

  return v2;
}

void sub_1BEDFAAB8(uint64_t a1, SEL *a2)
{
  v5 = [*(v2 + OBJC_IVAR___SBFolder_folderObservers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v6 = sub_1BEE471AC();

  if (v6 >> 62)
  {
    v7 = sub_1BEE474CC();
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB4EA90](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if ([v9 respondsToSelector_])
    {
      [v9 *a2];
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
}

void sub_1BEDFAC0C(uint64_t a1, uint64_t a2)
{
  v4 = [*(v2 + OBJC_IVAR___SBFolder_folderObservers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v5 = sub_1BEE471AC();

  if (v5 >> 62)
  {
    v13 = sub_1BEE474CC();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v6 = 0;
    v10 = a1;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB4EA90](v6, v5);
      }

      else
      {
        v7 = *(v5 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      if ([v7 respondsToSelector_])
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_6:
      if (v13 == ++v6)
      {
        goto LABEL_18;
      }
    }

    if (a1)
    {
      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
      swift_unknownObjectRetain();
      v8 = sub_1BEE4724C();
      if (a2)
      {
LABEL_13:
        sub_1BEB20D28(0, &qword_1EBDBFEA0);
        sub_1BEB2A7E0(&qword_1EBDBFDC0, &qword_1EBDBFEA0);
        v9 = sub_1BEE4724C();
LABEL_16:
        [v7 folder:v12 didAddIcons:v8 removedIcons:v9];
        swift_unknownObjectRelease_n();

        a1 = v10;
        goto LABEL_6;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v8 = 0;
      if (a2)
      {
        goto LABEL_13;
      }
    }

    v9 = 0;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1BEDFAE80(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = [*(v3 + OBJC_IVAR___SBFolder_folderObservers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7678);
  v8 = sub_1BEE471AC();

  if (v8 >> 62)
  {
    v9 = sub_1BEE474CC();
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB4EA90](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if ([v11 respondsToSelector_])
    {
      [v11 *a3];
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
}

uint64_t sub_1BEDFB000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC79B8);
    v3 = sub_1BEE4758C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1BEE4708C();
      sub_1BEE4777C();
      v27 = v7;
      sub_1BEE470CC();
      v8 = sub_1BEE477CC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1BEE4708C();
        v18 = v17;
        if (v16 == sub_1BEE4708C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1BEE4770C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

id sub_1BEDFB294(void *a1, uint64_t a2, uint64_t a3, SEL *a4, const char **a5)
{
  v8 = [*(v5 + 16) *a4];
  v9 = *a5;

  return [a1 v9];
}

void sub_1BEDFB338(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = [*(v5 + 16) *a4];
  [a1 *a5];
}

id sub_1BEDFB3A8(void *a1)
{
  v3 = [*(v1 + 16) listWithNonDefaultSizedIconsGridSize];

  return [a1 setGridSizeWhenDirectlyContainingNonDefaultSizedIcons_];
}

id sub_1BEDFB400(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  result = [a1 isIconStateDirty];
  if (result)
  {
    *v5 = 1;
    *a3 = 1;
  }

  return result;
}

id sub_1BEDFB4E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1BEE469DC() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1BEDEBD14(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_1BEDFB5A0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(sub_1BEE469DC() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = v3 + v12;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v3 + v13);

  return sub_1BEDEC07C(a1, a2, a3, v3 + v9, v3 + v11, v15, v16, v17);
}

uint64_t sub_1BEDFB674(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 24);
  sub_1BEB20D28(0, &qword_1EBDBFE90);
  result = sub_1BEE473CC();
  if (result)
  {
    *v5 = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1BEDFB6F8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 32);
  result = (*(v3 + 16))(a1, a2, v5);
  if (*v5 == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1BEDFB808(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(v3 + 32);
  result = (*(v3 + 16))();
  if (result)
  {
    *v6 = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1BEDFB858()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return sub_1BEE4691C();
  }

  return result;
}

id sub_1BEDFB8D8(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  result = [a1 hasFixedIconLocations];
  if (result)
  {
    *v5 = 1;
    *a3 = 1;
  }

  return result;
}

void sub_1BEDFB97C(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = *v5;
  *v5 = a1;
  v7 = a1;

  *a3 = 1;
}

void sub_1BEDFBA28(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(v3 + 32);
  if ((*(v3 + 16))())
  {
    v7 = *v6;
    *v6 = a1;
    v8 = a1;

    *a3 = 1;
  }
}

uint64_t sub_1BEDFBA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 32);
  result = (*(v3 + 16))(a1, a3);
  if (result)
  {

    return [v5 addObject_];
  }

  return result;
}

id sub_1BEDFBB04(void *a1)
{
  v3 = *(v1 + 24);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [a1 addIconsOfClass:ObjCClassFromMetadata toSet:v3];
}

id sub_1BEDFBB50(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  result = [a1 numberOfIcons];
  v7 = result + *v5;
  if (__OFADD__(*v5, result))
  {
    __break(1u);
  }

  else
  {
    *v5 = v7;
    if (v7 >= 2)
    {
      *a3 = 1;
    }
  }

  return result;
}

id sub_1BEDFBBA4(void *a1)
{
  v2 = *(v1 + 16);
  result = [a1 numberOfIcons];
  if (__OFADD__(*v2, result))
  {
    __break(1u);
  }

  else
  {
    *v2 += result;
  }

  return result;
}

id sub_1BEDFBC1C(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = [a1 directlyContainsIcon_];
  if (result)
  {
    *v7 = a2;
    *a3 = 1;
  }

  return result;
}