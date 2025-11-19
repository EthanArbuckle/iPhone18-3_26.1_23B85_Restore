uint64_t sub_21DA19E24@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, id)@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v80 = a8;
  v69 = a7;
  v70 = a6;
  v67 = a5;
  v68 = a4;
  v14 = sub_21DBF56BC();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x28223BE20](v14);
  v77 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF680C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF69AC();
  v75 = *(v19 - 8);
  v76 = v19;
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v78 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v22 = [*a2 objectID];
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_21DBF693C();
  v24 = [v23 objectID];

  if (v22)
  {
    if (v24)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v66 = sub_21DBFB63C();
    }

    else
    {
      v66 = 0;
    }

    v24 = v22;
  }

  else
  {
    if (!v24)
    {
      v66 = 1;
      goto LABEL_12;
    }

    v66 = 0;
  }

LABEL_12:
  (*(v75 + 16))(v78, a1, v76);
  (*(v17 + 16))(v79, a3, v16);
  v25 = sub_21DBF696C();
  v26 = sub_21DBF693C();
  v27 = [v26 objectID];

  v28 = [v27 uuid];
  v29 = v77;
  sub_21DBF568C();

  v30 = sub_21DBF67AC();
  if (*(v30 + 16) && (v31 = sub_21D0F55D0(v29), (v32 & 1) != 0))
  {
    v33 = *(*(v30 + 56) + 8 * v31);

    v35 = 1;
    if ((v80 & 1) != 0 && (a10 & 1) == 0 && !*(v25 + 16))
    {
LABEL_21:
      v35 = v33 > 0;
    }
  }

  else
  {

    v35 = 1;
    if ((v80 & 1) != 0 && (a10 & 1) == 0)
    {
      v33 = 0;
      if (!*(v25 + 16))
      {
        goto LABEL_21;
      }
    }
  }

  v64 = v35;
  MEMORY[0x28223BE20](v34);
  v59 = v79;
  v36 = v65;
  v63 = sub_21D0F588C(sub_21D0F5BC0, (&v60 - 4), v25);
  v65 = v36;

  v37 = sub_21DBF693C();
  v38 = v37;
  v73 = v17;
  v74 = v16;
  if (v80)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v59 = 0x800000021DC73DF0;
    v39 = sub_21DBF516C();
    v61 = v40;
    v62 = v39;
  }

  else
  {
    v41 = [v37 displayName];
    v42 = sub_21DBFA16C();
    v61 = v43;
    v62 = v42;
  }

  v44 = v38;
  v68((&v81 + 1));
  v45 = BYTE1(v81);
  v70(&v81, v44);
  v46 = v81;
  v47 = [v44 objectID];
  v48 = [v44 accountTypeHost];
  v49 = [v48 isLocal];

  v50 = [v44 capabilities];
  LOBYTE(v48) = [v50 supportsRecentlyDeletedList];

  v51 = [v44 capabilities];
  v52 = [v51 supportsGroceriesList];

  (*(v71 + 8))(v77, v72);
  (*(v75 + 8))(v78, v76);
  v53 = v80 & 1;
  v54 = v66 & 1;
  v55 = v61;
  *a9 = v62;
  *(a9 + 8) = v55;
  *(a9 + 16) = v47;
  *(a9 + 24) = v45;
  *(a9 + 25) = v46;
  *(a9 + 26) = v53;
  *(a9 + 27) = v64;
  *(a9 + 28) = v49;
  *(a9 + 29) = v48;
  *(a9 + 30) = v52;
  *(a9 + 31) = v54;
  type metadata accessor for TTRAccountsListsViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v57 = a9 + *(v56 + 52);
  *v57 = v44;
  *(v57 + 8) = 0;
  *(a9 + *(v56 + 56)) = v63;
  return (*(v73 + 8))(v79, v74);
}

void *static TTRAccountsListsViewModel.generatePredefinedSmartLists(model:reminderCounts:capabilities:smartListsDisplayOrder:smartListsVisibility:isEditing:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, char a6)
{
  v9 = *a3;
  v10 = *a5;
  v20 = *a4;
  v11 = TTRListType.PredefinedSmartListsDisplayOrder.orderingIncludingAllPossibleSmartLists.getter();
  v15 = v6;
  v16 = a2;
  v17 = v9;
  v18 = v10;
  v19 = a6;
  v12 = sub_21D0FF9B8(sub_21DA3127C, &v14, v11);

  return v12;
}

uint64_t TTRAccountsListsViewModel.Item.hasVisibleSectionHeader.getter()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v0, v3, type metadata accessor for TTRAccountsListsViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 4:
      v7 = *(v3 + 2);
      v8 = v3[27];

      result = v8;
      break;
    case 12:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 1;
      break;
    case 15:
    case 16:
      return result;
    default:
      v6 = sub_21DBF56BC();
      (*(*(v6 - 8) + 8))(v3, v6);
LABEL_3:
      result = 0;
      break;
  }

  return result;
}

char *sub_21DA1A714(void *a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v72 = &v48 - v20;
  v21 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v4, v13);
  sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE5A490);
    return 0;
  }

  else
  {
    v24 = v13;
    v25 = v72;
    sub_21D100E28(v24, v72, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0FE734(v25, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_21D267C40(v10);
    sub_21D0CF7E0(v10, &qword_27CE5A490);
    sub_21DBFC10C();
    sub_21DBFC42C();
    v26 = v22(v7, 1, v14);
    v23 = MEMORY[0x277D84F90];
    while (v26 != 1)
    {
      while (2)
      {
        sub_21D100E28(v7, v17, type metadata accessor for TTRAccountsListsViewModel.Item);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
            sub_21D101450(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
            goto LABEL_5;
          case 5u:
          case 6u:
            v27 = v17[217];
            v70 = v17[216];
            v71 = v27;
            v28 = *(v17 + 184);
            v68 = *(v17 + 200);
            v69 = v28;
            v29 = *(v17 + 152);
            v66 = *(v17 + 168);
            v67 = v29;
            v30 = v17[148];
            v64 = v17[147];
            v65 = v30;
            v31 = v17[146];
            v62 = v17[145];
            v63 = v31;
            v32 = v17[144];
            v33 = *(v17 + 17);
            v60 = *(v17 + 16);
            v61 = v33;
            LOBYTE(v31) = v17[120];
            v34 = *(v17 + 88);
            v58 = *(v17 + 104);
            v59 = v34;
            v56 = *(v17 + 72);
            v57 = *(v17 + 56);
            v55 = *(v17 + 6);
            v54 = *(v17 + 5);
            v53 = *(v17 + 4);
            v52 = *(v17 + 3);
            v51 = *(v17 + 2);
            v50 = *(v17 + 1);
            v49 = *v17;
            v77 = v31;
            v75 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_21D214580(0, *(v23 + 2) + 1, 1, v23);
            }

            v36 = *(v23 + 2);
            v35 = *(v23 + 3);
            if (v36 >= v35 >> 1)
            {
              v23 = sub_21D214580((v35 > 1), v36 + 1, 1, v23);
            }

            *(v23 + 2) = v36 + 1;
            v37 = &v23[224 * v36];
            v38 = v50;
            *(v37 + 4) = v49;
            *(v37 + 5) = v38;
            v39 = v52;
            *(v37 + 6) = v51;
            *(v37 + 7) = v39;
            v40 = v54;
            *(v37 + 8) = v53;
            *(v37 + 9) = v40;
            *(v37 + 10) = v55;
            *(v37 + 104) = v56;
            *(v37 + 88) = v57;
            v41 = v59;
            *(v37 + 136) = v58;
            *(v37 + 120) = v41;
            v37[152] = v77;
            LODWORD(v40) = *v76;
            *(v37 + 39) = *&v76[3];
            *(v37 + 153) = v40;
            v42 = v61;
            *(v37 + 20) = v60;
            *(v37 + 21) = v42;
            v37[176] = v75;
            LOBYTE(v42) = v63;
            v37[177] = v62;
            v37[178] = v42;
            LOBYTE(v42) = v65;
            v37[179] = v64;
            v37[180] = v42;
            LOBYTE(v42) = v74;
            *(v37 + 181) = v73;
            v37[183] = v42;
            v43 = v67;
            *(v37 + 200) = v66;
            *(v37 + 184) = v43;
            v44 = v69;
            *(v37 + 232) = v68;
            *(v37 + 216) = v44;
            LOBYTE(v42) = v71;
            v37[248] = v70;
            v37[249] = v42;
            sub_21DBFC42C();
            v45 = v22(v7, 1, v14);
            v25 = v72;
            if (v45 != 1)
            {
              continue;
            }

            goto LABEL_15;
          case 0xFu:
          case 0x10u:
            goto LABEL_5;
          default:
            v46 = sub_21DBF56BC();
            (*(*(v46 - 8) + 8))(v17, v46);
LABEL_5:
            sub_21DBFC42C();
            v26 = v22(v7, 1, v14);
            break;
        }

        break;
      }
    }

LABEL_15:

    sub_21D101450(v25, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return v23;
}

char *TTRAccountsListsViewModel.groups(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v38 = &v37 - v20;
  v21 = [*(a1 + 16) uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v4, v13);
  sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v22 = *(v15 + 48);
  if (v22(v13, 1, v14) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE5A490);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v24 = v13;
    v25 = v38;
    sub_21D100E28(v24, v38, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0FE734(v25, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_21D267C40(v10);
    sub_21D0CF7E0(v10, &qword_27CE5A490);
    sub_21DBFC10C();
    sub_21DBFC42C();
    v26 = v22(v7, 1, v14);
    v23 = MEMORY[0x277D84F90];
    while (v26 != 1)
    {
      while (1)
      {
        sub_21D100E28(v7, v17, type metadata accessor for TTRAccountsListsViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          break;
        }

        v27 = v17[1];
        v39 = *v17;
        v40 = v27;
        v28 = v17[3];
        v41 = v17[2];
        v42 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_21D2150E0(0, *(v23 + 2) + 1, 1, v23);
        }

        v30 = *(v23 + 2);
        v29 = *(v23 + 3);
        if (v30 >= v29 >> 1)
        {
          v23 = sub_21D2150E0((v29 > 1), v30 + 1, 1, v23);
        }

        *(v23 + 2) = v30 + 1;
        v31 = &v23[64 * v30];
        v32 = v39;
        v33 = v40;
        v34 = v42;
        *(v31 + 4) = v41;
        *(v31 + 5) = v34;
        *(v31 + 2) = v32;
        *(v31 + 3) = v33;
        sub_21DBFC42C();
        v35 = v22(v7, 1, v14);
        v25 = v38;
        if (v35 == 1)
        {
          goto LABEL_12;
        }
      }

      sub_21D101450(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21DBFC42C();
      v26 = v22(v7, 1, v14);
    }

LABEL_12:

    sub_21D101450(v25, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return v23;
}

uint64_t TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)(uint64_t a1)
{
  result = sub_21DA1B278(*(a1 + 48));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

{
  result = sub_21DA1B278(*(a1 + 16));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21DA1B278(void *a1)
{
  v2 = v1;
  result = sub_21DA1A714(a1);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (!v5)
    {
      v8 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v6 = 0;
    v37 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
    v39 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree;
    v7 = result + 32;
    v31 = v5 - 1;
    v8 = MEMORY[0x277D84F90];
    v38 = v1;
    v36 = v5;
    v34 = result;
    v32 = result + 32;
    while (1)
    {
      v33 = v8;
      v9 = (v7 + 224 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = v9[1];
        v45[0] = *v9;
        v45[1] = v11;
        v12 = v9[2];
        v13 = v9[3];
        v14 = v9[5];
        v45[4] = v9[4];
        v45[5] = v14;
        v45[2] = v12;
        v45[3] = v13;
        v15 = v9[6];
        v16 = v9[7];
        v17 = v9[9];
        v45[8] = v9[8];
        v45[9] = v17;
        v45[6] = v15;
        v45[7] = v16;
        v18 = v9[10];
        v19 = v9[11];
        v20 = v9[12];
        *(v46 + 10) = *(v9 + 202);
        v45[11] = v19;
        v46[0] = v20;
        v45[10] = v18;
        v21 = BYTE2(v17);
        v22 = *&v45[0];
        if (BYTE2(v17) != 2 && (BYTE2(v17) & 1) != 0)
        {
          break;
        }

        sub_21D567868(v45, &v41);
        sub_21DA1CE20(v22, &v43);
        if (v44 != 255)
        {
          if (v44 == 1 || v44 == 4)
          {
            v24 = v43;
            sub_21D1077D8(v45);
            v25 = 0;
            goto LABEL_32;
          }

          sub_21D103A34(v43, v44);
        }

        if (v21 == 2 || (v21 & 1) == 0)
        {
          sub_21DA1CE20(v22, &v41);
          if (v42 != 255)
          {
            if (v42 == 2)
            {
              v24 = v41;
              sub_21D1077D8(v45);
              v25 = 1;
              goto LABEL_32;
            }

            sub_21D103A34(v41, v42);
          }

          result = sub_21D1077D8(v45);
          goto LABEL_7;
        }

LABEL_21:
        v43 = *(v2 + v37);
        MEMORY[0x28223BE20](v23);
        *(&v30 - 2) = v22;
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
        sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
        sub_21DBFA48C();

        if (v42 == 255)
        {
          result = sub_21D1077D8(v45);
          v2 = v38;
          v5 = v36;
          v4 = v34;
        }

        else
        {
          v2 = v38;
          v5 = v36;
          if (v42)
          {
            v24 = v41;
            sub_21D1077D8(v45);
            v25 = 1;
            goto LABEL_31;
          }

          sub_21D157864(v41, v42);
          result = sub_21D1077D8(v45);
          v4 = v34;
        }

LABEL_7:
        ++v10;
        v9 += 14;
        if (v5 == v10)
        {
          v8 = v33;
          goto LABEL_41;
        }
      }

      v35 = &v30;
      v40 = *(v2 + v37);
      MEMORY[0x28223BE20](result);
      *(&v30 - 2) = v22;
      sub_21D567868(v45, &v41);
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
      sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
      sub_21DBFA48C();

      if (v44 == 255)
      {
        goto LABEL_14;
      }

      if (v44)
      {
        break;
      }

      v24 = v43;
      sub_21D1077D8(v45);
      v25 = 0;
LABEL_31:
      v4 = v34;
LABEL_32:
      v8 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21D2146A4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v27 = *(v8 + 16);
      v26 = *(v8 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21D2146A4((v26 > 1), v27 + 1, 1, v8);
        v8 = result;
      }

      v28 = v24;
      v2 = v38;
      v6 = v10 + 1;
      *(v8 + 16) = v27 + 1;
      v29 = v8 + 16 * v27;
      *(v29 + 32) = v28;
      *(v29 + 40) = v25;
      v7 = v32;
      v5 = v36;
      if (v31 == v10)
      {
LABEL_41:

        return v8;
      }
    }

    sub_21D157864(v43, v44);
LABEL_14:
    v2 = v38;
    goto LABEL_21;
  }

  return 0;
}

uint64_t TTRAccountsListsViewModel.parent(of:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
  v5 = sub_21D2916B0(v4);
  sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v5 && (Strong = swift_weakLoadStrong(), , Strong))
  {
    v7 = *(*Strong + 120);
    swift_beginAccess();
    sub_21D0FE734(Strong + v7, a1, type metadata accessor for TTRAccountsListsViewModel.Item);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

BOOL TTRAccountsListsViewModel.hasItemInTree(_:)()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v2);
  sub_21D1083C8(v2, v5);
  sub_21D101450(v2, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_21D0CF7E0(v5, &qword_27CE5A490);
  return v7;
}

uint64_t TTRAccountsListsViewModel.item(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = sub_21D105CF4(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = *(*v9 + 120);
    swift_beginAccess();
    sub_21D0FE734(v9 + v10, a2, type metadata accessor for TTRAccountsListsViewModel.Item);
    v11 = 0;
  }

  else
  {
    swift_endAccess();
    v11 = 1;
  }

  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t TTRAccountsListsViewModel.item(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v7, a2);
  return sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
}

void TTRAccountsListsViewModel.list(with:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v36 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5A490);
    sub_21D7F4008(&v36);
    v16 = v47;
    a2[10] = v46;
    a2[11] = v16;
    a2[12] = v48[0];
    *(a2 + 202) = *(v48 + 10);
    v17 = v43;
    a2[6] = v42;
    a2[7] = v17;
    v18 = v45;
    a2[8] = v44;
    a2[9] = v18;
    v19 = v39;
    a2[2] = v38;
    a2[3] = v19;
    v20 = v41;
    a2[4] = v40;
    a2[5] = v20;
    v21 = v37;
    *a2 = v36;
    a2[1] = v21;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v24 = v7[11];
      v46 = v7[10];
      v47 = v24;
      v48[0] = v7[12];
      *(v48 + 10) = *(v7 + 202);
      v25 = v7[7];
      v42 = v7[6];
      v43 = v25;
      v26 = v7[9];
      v44 = v7[8];
      v45 = v26;
      v27 = v7[3];
      v38 = v7[2];
      v39 = v27;
      v28 = v7[5];
      v40 = v7[4];
      v41 = v28;
      v29 = v7[1];
      v36 = *v7;
      v37 = v29;
      nullsub_1(&v36, v22, v23);
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D7F4008(&v36);
    }

    v30 = v47;
    a2[10] = v46;
    a2[11] = v30;
    a2[12] = v48[0];
    *(a2 + 202) = *(v48 + 10);
    v31 = v43;
    a2[6] = v42;
    a2[7] = v31;
    v32 = v45;
    a2[8] = v44;
    a2[9] = v32;
    v33 = v39;
    a2[2] = v38;
    a2[3] = v33;
    v34 = v41;
    a2[4] = v40;
    a2[5] = v34;
    v35 = v37;
    *a2 = v36;
    a2[1] = v35;
    sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }
}

double TTRAccountsListsViewModel.Item.list.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v9 = v6[11];
    v32 = v6[10];
    v33 = v9;
    v34[0] = v6[12];
    *(v34 + 10) = *(v6 + 202);
    v10 = v6[7];
    v28 = v6[6];
    v29 = v10;
    v11 = v6[9];
    v30 = v6[8];
    v31 = v11;
    v12 = v6[3];
    v24 = v6[2];
    v25 = v12;
    v13 = v6[5];
    v26 = v6[4];
    v27 = v13;
    v14 = v6[1];
    v22 = *v6;
    v23 = v14;
    nullsub_1(&v22, v7, v8);
  }

  else
  {
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D7F4008(&v22);
  }

  v15 = v33;
  a1[10] = v32;
  a1[11] = v15;
  a1[12] = v34[0];
  *(a1 + 202) = *(v34 + 10);
  v16 = v29;
  a1[6] = v28;
  a1[7] = v16;
  v17 = v31;
  a1[8] = v30;
  a1[9] = v17;
  v18 = v25;
  a1[2] = v24;
  a1[3] = v18;
  v19 = v27;
  a1[4] = v26;
  a1[5] = v19;
  result = *&v22;
  v21 = v23;
  *a1 = v22;
  a1[1] = v21;
  return result;
}

void TTRAccountsListsViewModel.customSmartList(with:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v36 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5A490);
    sub_21D7F4008(&v36);
    v16 = v47;
    a2[10] = v46;
    a2[11] = v16;
    a2[12] = v48[0];
    *(a2 + 202) = *(v48 + 10);
    v17 = v43;
    a2[6] = v42;
    a2[7] = v17;
    v18 = v45;
    a2[8] = v44;
    a2[9] = v18;
    v19 = v39;
    a2[2] = v38;
    a2[3] = v19;
    v20 = v41;
    a2[4] = v40;
    a2[5] = v20;
    v21 = v37;
    *a2 = v36;
    a2[1] = v21;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v24 = v7[11];
      v46 = v7[10];
      v47 = v24;
      v48[0] = v7[12];
      *(v48 + 10) = *(v7 + 202);
      v25 = v7[7];
      v42 = v7[6];
      v43 = v25;
      v26 = v7[9];
      v44 = v7[8];
      v45 = v26;
      v27 = v7[3];
      v38 = v7[2];
      v39 = v27;
      v28 = v7[5];
      v40 = v7[4];
      v41 = v28;
      v29 = v7[1];
      v36 = *v7;
      v37 = v29;
      nullsub_1(&v36, v22, v23);
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D7F4008(&v36);
    }

    v30 = v47;
    a2[10] = v46;
    a2[11] = v30;
    a2[12] = v48[0];
    *(a2 + 202) = *(v48 + 10);
    v31 = v43;
    a2[6] = v42;
    a2[7] = v31;
    v32 = v45;
    a2[8] = v44;
    a2[9] = v32;
    v33 = v39;
    a2[2] = v38;
    a2[3] = v33;
    v34 = v41;
    a2[4] = v40;
    a2[5] = v34;
    v35 = v37;
    *a2 = v36;
    a2[1] = v35;
    sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }
}

double TTRAccountsListsViewModel.Item.customSmartList.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v9 = v6[11];
    v32 = v6[10];
    v33 = v9;
    v34[0] = v6[12];
    *(v34 + 10) = *(v6 + 202);
    v10 = v6[7];
    v28 = v6[6];
    v29 = v10;
    v11 = v6[9];
    v30 = v6[8];
    v31 = v11;
    v12 = v6[3];
    v24 = v6[2];
    v25 = v12;
    v13 = v6[5];
    v26 = v6[4];
    v27 = v13;
    v14 = v6[1];
    v22 = *v6;
    v23 = v14;
    nullsub_1(&v22, v7, v8);
  }

  else
  {
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D7F4008(&v22);
  }

  v15 = v33;
  a1[10] = v32;
  a1[11] = v15;
  a1[12] = v34[0];
  *(a1 + 202) = *(v34 + 10);
  v16 = v29;
  a1[6] = v28;
  a1[7] = v16;
  v17 = v31;
  a1[8] = v30;
  a1[9] = v17;
  v18 = v25;
  a1[2] = v24;
  a1[3] = v18;
  v19 = v27;
  a1[4] = v26;
  a1[5] = v19;
  result = *&v22;
  v21 = v23;
  *a1 = v22;
  a1[1] = v21;
  return result;
}

uint64_t TTRAccountsListsViewModel.group(with:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v19 - v13;
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v10, v14);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    result = sub_21D0CF7E0(v14, &qword_27CE5A490);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
  }

  else
  {
    sub_21D0FE734(v14, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v17 = v7[1];
      *a2 = *v7;
      a2[1] = v17;
      v18 = v7[3];
      a2[2] = v7[2];
      a2[3] = v18;
    }

    else
    {
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      *a2 = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
    }

    return sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return result;
}

double TTRAccountsListsViewModel.pinnedListInnerList(with:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  sub_21DA1CB78(v8, v7);

  sub_21D0D523C(v7, v4, &qword_27CE61CB0);
  v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    goto LABEL_5;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_5:
    sub_21D7F4008(&v26);
    goto LABEL_6;
  }

  v12 = v4[11];
  v36 = v4[10];
  v37 = v12;
  v38[0] = v4[12];
  *(v38 + 10) = *(v4 + 202);
  v13 = v4[7];
  v32 = v4[6];
  v33 = v13;
  v14 = v4[9];
  v34 = v4[8];
  v35 = v14;
  v15 = v4[3];
  v28 = v4[2];
  v16 = v4[4];
  v17 = v4[5];
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v18 = v4[1];
  v26 = *v4;
  v27 = v18;
  nullsub_1(&v26, v10, v11);
LABEL_6:
  v19 = v37;
  a1[10] = v36;
  a1[11] = v19;
  a1[12] = v38[0];
  *(a1 + 202) = *(v38 + 10);
  v20 = v33;
  a1[6] = v32;
  a1[7] = v20;
  v21 = v35;
  a1[8] = v34;
  a1[9] = v21;
  v22 = v29;
  a1[2] = v28;
  a1[3] = v22;
  v23 = v31;
  a1[4] = v30;
  a1[5] = v23;
  result = *&v26;
  v25 = v27;
  *a1 = v26;
  a1[1] = v25;
  return result;
}

uint64_t sub_21DA1CB78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return (*(v4 + 56))(v27, 1, 1, v3, v8);
  }

  v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v13 = *(v4 + 72);
  while (1)
  {
    sub_21D0FE734(v12, v10, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    sub_21D0FE734(v10, v6, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v14 = v6;
LABEL_4:
    sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v12 += v13;
    if (!--v11)
    {
      return (*(v4 + 56))(v27, 1, 1, v3, v8);
    }
  }

  v15 = v6[11];
  v28[10] = v6[10];
  v28[11] = v15;
  v29[0] = v6[12];
  *(v29 + 10) = *(v6 + 202);
  v16 = v6[7];
  v28[6] = v6[6];
  v28[7] = v16;
  v17 = v6[9];
  v28[8] = v6[8];
  v28[9] = v17;
  v18 = v6[3];
  v28[2] = v6[2];
  v28[3] = v18;
  v19 = v6[5];
  v28[4] = v6[4];
  v28[5] = v19;
  v20 = v6[1];
  v28[0] = *v6;
  v28[1] = v20;
  sub_21D0D8CF0(0, &qword_280D17680);
  v21 = *&v28[0];
  v22 = sub_21DBFB63C();
  sub_21D1077D8(v28);

  if ((v22 & 1) == 0)
  {
    v14 = v10;
    goto LABEL_4;
  }

  v24 = v27;
  sub_21D100E28(v10, v27, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  return (*(v4 + 56))(v24, 0, 1, v3, v25);
}

void sub_21DA1CE20(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v6, v9);
  sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A490);
    if (qword_280D0F4D0 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_280D0F4D8);
    v17 = a1;
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to find model by objectID {objectID: %@}", v20, 0xCu);
      sub_21D0CF7E0(v21, &unk_27CE60070);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_9;
  }

  sub_21D100E28(v9, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v6);
  v23 = sub_21D2916B0(v6);
  sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (!v23)
  {
LABEL_9:
    v25 = 0;
    v26 = -1;
    goto LABEL_10;
  }

  v24 = v23 + *(*v23 + 128);
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 8);
  sub_21D105AA4(v25, v26);

LABEL_10:
  *a2 = v25;
  *(a2 + 8) = v26;
}

void *TTRAccountsListsViewModel.remAccountForTemplates.getter()
{
  v90 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v90);
  v2 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v76 - v4;
  v88 = sub_21DBF56BC();
  v97 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v76 - v8;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v86 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  v94 = *(v14 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v96 = &v76 - v17;
  MEMORY[0x28223BE20](v18);
  v93 = &v76 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v23);
  v87 = &v76 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  v77 = v0;
  v29 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v95 = v10;
  v30 = *(v10 + 56);
  v78 = v9;
  v98 = v10 + 56;
  v30(&v76 - v27, 1, 1, v9, v26);
  v31 = sub_21D0E8DA0(v28);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v32 = v31;
  v33 = v87;
  sub_21D0D523C(v28, v87, &qword_27CE5A490);
  v91 = v22;
  sub_21D0D3954(v33, v22, &qword_27CE5A490);
  v34 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  sub_21D0D523C(v33, v35 + v34, &qword_27CE5A490);
  v79 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v95 += 6;
  v83 = (v97 + 32);
  v81 = (v97 + 16);
  v80 = (v97 + 8);
  v94 = v29;
  swift_retain_n();
  swift_retain_n();
  v76 = v35;

  v31 = 0;
  v36 = v86;
  v87 = v32;
  v84 = v5;
  v82 = v30;
LABEL_3:
  v37 = v78;
  v38 = v99;
  v39 = v96;
  v40 = v91;
  v41 = v93;
  v42 = v31 >= v32;
  if (v31 == v32)
  {
LABEL_8:
    v43 = 1;
    v97 = v32;
    goto LABEL_12;
  }

  while (!v42)
  {
    v44 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_43;
    }

    sub_21D107A34(v31, v40, v41);
    v38 = v99;
    v43 = 0;
    v97 = v44;
    v39 = v96;
LABEL_12:
    (v30)(v41, v43, 1, v37);
    sub_21D0D523C(v41, v39, &qword_27CE5A490);
    v45 = *v95;
    if ((*v95)(v39, 1, v37) == 1)
    {

      sub_21D0CF7E0(v91, &qword_27CE5A490);

      v31 = v79;
      if (v79 >> 62)
      {
        goto LABEL_47;
      }

      v66 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66)
      {
        goto LABEL_32;
      }

      goto LABEL_48;
    }

    sub_21D100E28(v39, v38, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v5);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v47 = *v83;
      v48 = v85;
      v49 = v5;
      v50 = v88;
      (*v83)(v85, v49, v88);
      v51 = v2;
      v52 = v89;
      v47(v89, v48, v50);
      v53 = v52;
      v2 = v51;
      (*v81)(v51, v53, v50);
      swift_storeEnumTagMultiPayload();
      v54 = v94;
      swift_beginAccess();
      v55 = *(v54 + 24);
      if (*(v55 + 16) && (v56 = sub_21D105CF4(v51), (v57 & 1) != 0))
      {
        v58 = *(*(v55 + 56) + 8 * v56);
        swift_endAccess();
        v59 = *(*v58 + 120);
        swift_beginAccess();
        v60 = v58 + v59;
        v36 = v86;
        sub_21D0FE734(v60, v92, type metadata accessor for TTRAccountsListsViewModel.Item);
        v61 = 0;
      }

      else
      {
        swift_endAccess();
        v61 = 1;
      }

      v30 = v82;
      v46 = v92;
      v38 = v99;
      (v82)(v92, v61, 1, v37);
      sub_21D101450(v2, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      (*v80)(v89, v88);
      v62 = v45(v46, 1, v37);
      v5 = v84;
      v32 = v87;
      if (v62 == 1)
      {
        sub_21D0CF7E0(v46, &qword_27CE5A490);
        v41 = v93;
        goto LABEL_6;
      }
    }

    else
    {
      sub_21D101450(v5, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v46 = v92;
      sub_21D0FE734(v38, v92, type metadata accessor for TTRAccountsListsViewModel.Item);
      (v30)(v46, 0, 1, v37);
    }

    sub_21D0FE734(v46, v36, type metadata accessor for TTRAccountsListsViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v41 = v93;
    if (EnumCaseMultiPayload == 4)
    {
      v64 = *(v36 + 16);
      sub_21D101450(v46, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v99, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21DA1CE20(v64, &v100);
      if (v101 == 255)
      {

        v36 = v86;
        v38 = v99;
        goto LABEL_7;
      }

      v38 = v99;
      if (!v101)
      {

        MEMORY[0x223D42D80](v65);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v79 = v102;
        v36 = v86;
        v32 = v87;
        v31 = v97;
        goto LABEL_3;
      }

      sub_21D103A34(v100, v101);

      v37 = v78;
      v36 = v86;
      v32 = v87;
      v39 = v96;
      v31 = v97;
      v40 = v91;
      v41 = v93;
      v42 = v97 >= v87;
      if (v97 == v87)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_21D101450(v36, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v46, type metadata accessor for TTRAccountsListsViewModel.Item);
      v38 = v99;
LABEL_6:
      sub_21D101450(v38, type metadata accessor for TTRAccountsListsViewModel.Item);
LABEL_7:
      v39 = v96;
      v31 = v97;
      v40 = v91;
      v42 = v97 >= v32;
      if (v97 == v32)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v74 = v31;
    v66 = sub_21DBFBD7C();
    v31 = v74;
    if (!v66)
    {
      break;
    }

LABEL_32:
    v67 = 0;
    v68 = v31 & 0xC000000000000001;
    v69 = v31 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v68)
      {
        v31 = MEMORY[0x223D44740](v67, v31);
      }

      else
      {
        if (v67 >= *(v69 + 16))
        {
          goto LABEL_45;
        }

        v31 = *(v31 + 8 * v67 + 32);
      }

      v70 = v31;
      v71 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      v72 = [v31 capabilities];
      v73 = [v72 supportsTemplates];

      if (v73)
      {

        return v70;
      }

      ++v67;
      v31 = v79;
      if (v71 == v66)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_48:

  return 0;
}

uint64_t TTRAccountsListsViewModel.pinnedListsItem(containingPinnedListMatching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
    sub_21DBFA48C();
  }

  else
  {
    v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t sub_21DA1DFBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_21D0FE734(a1, v11, type metadata accessor for TTRAccountsListsViewModel.Item);
  v27 = v9;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    result = sub_21D100E28(v11, v14, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
    v16 = 0;
    v17 = *&v14[*(v12 + 20)];
    v18 = *(v17 + 16);
    while (1)
    {
      if (v18 == v16)
      {
        v23 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists;
        v24 = v14;
        goto LABEL_9;
      }

      if (v16 >= *(v17 + 16))
      {
        break;
      }

      sub_21D0FE734(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16++, v8, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      v19 = a2(v8);
      result = sub_21D101450(v8, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (v19)
      {
        sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.PinnedLists);
        v20 = v28;
        sub_21D0FE734(v25, v28, type metadata accessor for TTRAccountsListsViewModel.Item);
        v21 = v20;
        v22 = 0;
        return (*(v26 + 56))(v21, v22, 1, v27);
      }
    }

    __break(1u);
  }

  else
  {
    v23 = type metadata accessor for TTRAccountsListsViewModel.Item;
    v24 = v11;
LABEL_9:
    sub_21D101450(v24, v23);
    v22 = 1;
    v21 = v28;
    return (*(v26 + 56))(v21, v22, 1, v27);
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
    sub_21DBFA48C();
  }

  else
  {
    v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
    sub_21DBFA48C();
  }

  else
  {
    v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8) == 1)
  {
    MEMORY[0x28223BE20](a1);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
    sub_21DBFA48C();
  }

  else
  {
    v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

uint64_t sub_21DA1E4B4(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(a1, v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = v4[11];
    v14[10] = v4[10];
    v14[11] = v5;
    v15[0] = v4[12];
    *(v15 + 10) = *(v4 + 202);
    v6 = v4[7];
    v14[6] = v4[6];
    v14[7] = v6;
    v7 = v4[9];
    v14[8] = v4[8];
    v14[9] = v7;
    v8 = v4[3];
    v14[2] = v4[2];
    v14[3] = v8;
    v9 = v4[5];
    v14[4] = v4[4];
    v14[5] = v9;
    v10 = v4[1];
    v14[0] = *v4;
    v14[1] = v10;
    sub_21D0D8CF0(0, &qword_280D17680);
    v11 = *&v14[0];
    v12 = sub_21DBFB63C();

    sub_21D1077D8(v14);
  }

  else
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_21DA1E7D0(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(a1, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    v10 = 0;
  }

  else
  {
    sub_21D100E28(v9, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v10 = sub_21D11ED58(v6[*(v4 + 20)], a2);
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
  }

  return v10 & 1;
}

uint64_t sub_21DA1EB1C(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0FE734(a1, v9, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v9[11];
    v57 = v9[10];
    v58 = v10;
    v59[0] = v9[12];
    *(v59 + 10) = *(v9 + 202);
    v11 = v9[7];
    v53 = v9[6];
    v54 = v11;
    v12 = v9[9];
    v55 = v9[8];
    v56 = v12;
    v13 = v9[3];
    v49 = v9[2];
    v50 = v13;
    v14 = v9[5];
    v51 = v9[4];
    v52 = v14;
    v15 = v9[1];
    v47 = *v9;
    v48 = v15;
    sub_21D14DB00(&v47);
  }

  else
  {
    sub_21D100E28(v9, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v16 = v6[*(v4 + 20)];
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    LOBYTE(v47) = v16;
    sub_21D14DACC(&v47);
  }

  v70 = v57;
  v71 = v58;
  v72[0] = v59[0];
  *(v72 + 10) = *(v59 + 10);
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v69 = v56;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v60 = v47;
  v61 = v48;
  v17 = a2[11];
  v57 = a2[10];
  v58 = v17;
  v59[0] = a2[12];
  *(v59 + 10) = *(a2 + 202);
  v18 = a2[7];
  v53 = a2[6];
  v54 = v18;
  v19 = a2[9];
  v55 = a2[8];
  v56 = v19;
  v20 = a2[3];
  v49 = a2[2];
  v50 = v20;
  v21 = a2[5];
  v51 = a2[4];
  v52 = v21;
  v22 = a2[1];
  v47 = *a2;
  v48 = v22;
  if (sub_21D1577AC(&v47) != 1)
  {
    v29 = *sub_21D14D0D4(&v47);
    v44 = v70;
    v45 = v71;
    v46[0] = v72[0];
    *(v46 + 10) = *(v72 + 10);
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v43 = v69;
    v36 = v62;
    v37 = v63;
    v38 = v64;
    v39 = v65;
    v34 = v60;
    v35 = v61;
    v30 = sub_21D1577AC(&v34);
    v31 = sub_21D14D0D4(&v34);
    if (v30 != 1)
    {
      v28 = sub_21D11ED58(v29, *v31);
      return v28 & 1;
    }

    sub_21DA28F18(&v60);
    goto LABEL_9;
  }

  sub_21D14D0D4(&v47);
  v34 = v60;
  v35 = v61;
  v38 = v64;
  v39 = v65;
  v36 = v62;
  v37 = v63;
  v42 = v68;
  v43 = v69;
  v40 = v66;
  v41 = v67;
  *(v46 + 10) = *(v72 + 10);
  v45 = v71;
  v46[0] = v72[0];
  v44 = v70;
  v23 = sub_21D1577AC(&v34);
  v24 = sub_21D14D0D4(&v34);
  if (v23 != 1)
  {
LABEL_9:
    v28 = 0;
    return v28 & 1;
  }

  v25 = v24;
  sub_21D0D8CF0(0, &qword_280D17680);
  v26 = *v25;
  sub_21DA28EE0(&v60, v33);
  v27 = v26;
  v28 = sub_21DBFB63C();
  sub_21DA28F18(&v60);

  sub_21DA28F18(&v60);
  return v28 & 1;
}

double TTRAccountsListsPinnedListSelection.init(pinnedList:)@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = a1[11];
    v31 = a1[10];
    v32 = v7;
    v33[0] = a1[12];
    *(v33 + 10) = *(a1 + 202);
    v8 = a1[7];
    v27 = a1[6];
    v28 = v8;
    v9 = a1[9];
    v29 = a1[8];
    v30 = v9;
    v10 = a1[3];
    v23 = a1[2];
    v24 = v10;
    v11 = a1[5];
    v25 = a1[4];
    v26 = v11;
    v12 = a1[1];
    v21 = *a1;
    v22 = v12;
    sub_21D14DB00(&v21);
  }

  else
  {
    sub_21D100E28(a1, v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v13 = v6[*(v4 + 20)];
    sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    LOBYTE(v21) = v13;
    sub_21D14DACC(&v21);
  }

  v44[0] = v33[0];
  *(v44 + 10) = *(v33 + 10);
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v34 = v21;
  v35 = v22;
  v14 = v32;
  a2[10] = v31;
  a2[11] = v14;
  a2[12] = v44[0];
  *(a2 + 202) = *(v44 + 10);
  v15 = v41;
  a2[6] = v40;
  a2[7] = v15;
  v16 = v43;
  a2[8] = v42;
  a2[9] = v16;
  v17 = v37;
  a2[2] = v36;
  a2[3] = v17;
  v18 = v39;
  a2[4] = v38;
  a2[5] = v18;
  result = *&v34;
  v20 = v35;
  *a2 = v34;
  a2[1] = v20;
  return result;
}

uint64_t static TTRAccountsListsPinnedListSelection.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[11];
  v54[10] = a1[10];
  v54[11] = v2;
  v55[0] = a1[12];
  *(v55 + 10) = *(a1 + 202);
  v3 = a1[7];
  v54[6] = a1[6];
  v54[7] = v3;
  v4 = a1[9];
  v54[8] = a1[8];
  v54[9] = v4;
  v5 = a1[3];
  v54[2] = a1[2];
  v54[3] = v5;
  v6 = a1[5];
  v54[4] = a1[4];
  v54[5] = v6;
  v7 = a1[1];
  v54[0] = *a1;
  v54[1] = v7;
  v8 = a2[11];
  v51 = a2[10];
  v52 = v8;
  v53[0] = a2[12];
  *(v53 + 10) = *(a2 + 202);
  v9 = a2[7];
  v47 = a2[6];
  v48 = v9;
  v10 = a2[9];
  v49 = a2[8];
  v50 = v10;
  v11 = a2[3];
  v43 = a2[2];
  v44 = v11;
  v12 = a2[5];
  v45 = a2[4];
  v46 = v12;
  v13 = a2[1];
  v41 = *a2;
  v42 = v13;
  if (sub_21D1577AC(v54) != 1)
  {
    v23 = *sub_21D14D0D4(v54);
    v38 = v51;
    v39 = v52;
    v40[0] = v53[0];
    *(v40 + 10) = *(v53 + 10);
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    v24 = sub_21D1577AC(&v28);
    v25 = sub_21D14D0D4(&v28);
    if (v24 != 1)
    {
      v22 = sub_21D11ED58(v23, *v25);
      return v22 & 1;
    }

    goto LABEL_5;
  }

  v14 = sub_21D14D0D4(v54);
  v38 = v51;
  v39 = v52;
  v40[0] = v53[0];
  *(v40 + 10) = *(v53 + 10);
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v28 = v41;
  v29 = v42;
  v15 = sub_21D1577AC(&v28);
  v16 = sub_21D14D0D4(&v28);
  if (v15 != 1)
  {
LABEL_5:
    v22 = 0;
    return v22 & 1;
  }

  v17 = v16;
  sub_21D0D8CF0(0, &qword_280D17680);
  v18 = *v14;
  v19 = *v17;
  sub_21DA28EE0(&v41, &v27);
  v20 = v18;
  v21 = v19;
  v22 = sub_21DBFB63C();

  sub_21DA28F18(&v41);
  return v22 & 1;
}

uint64_t TTRAccountsListsViewModel.Item.sectionProxyProxiedUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v7 = sub_21DBF56BC();
    v8 = *(v7 - 8);
    (*(v8 + 32))(a1, v4, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v5 = sub_21DBF56BC();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)(uint64_t a1, int a2)
{
  v15[1] = a2;
  v16 = a1;
  v3 = sub_21DBF78CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, v9, &qword_27CE5A490);
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A490);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_21D100E28(v9, v12, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      sub_21DBF8E0C();
      sub_21DBF784C();
      sub_21DBF6BFC();
      (*(v4 + 8))(v6, v3);
      return sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.Hashtags);
    }

    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  return sub_21DBF6BCC();
}

uint64_t TTRAccountsListsViewModel.validatePinnedListSelection(_:)(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = v47 - v6;
  v48 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v48);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  v17 = a1[11];
  v54[10] = a1[10];
  v54[11] = v17;
  v55[0] = a1[12];
  *(v55 + 10) = *(a1 + 202);
  v18 = a1[7];
  v54[6] = a1[6];
  v54[7] = v18;
  v19 = a1[9];
  v54[8] = a1[8];
  v54[9] = v19;
  v20 = a1[3];
  v54[2] = a1[2];
  v54[3] = v20;
  v21 = a1[5];
  v54[4] = a1[4];
  v54[5] = v21;
  v22 = a1[1];
  v54[0] = *a1;
  v54[1] = v22;
  LODWORD(a1) = sub_21D1577AC(v54);
  v23 = sub_21D14D0D4(v54);
  if (a1 != 1)
  {
    v47[1] = v10;
    v26 = *v23;
    result = TTRAccountsListsViewModel.visiblePinnedLists.getter();
    v27 = result;
    v51 = *(result + 16);
    if (!v51)
    {
LABEL_57:

      return 0;
    }

    v28 = v11;
    v29 = 0;
    v50 = v28;
    v49 = result + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        __break(1u);
        return result;
      }

      sub_21D0FE734(v49 + *(v50 + 72) * v29, v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      sub_21D0FE734(v16, v13, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        result = sub_21D101450(v13, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
        goto LABEL_7;
      }

      sub_21D100E28(v13, v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v30 = v9[*(v48 + 20)];
      if (v30 <= 2)
      {
        if (!v9[*(v48 + 20)])
        {
          v31 = 0xE500000000000000;
          v32 = 0x7961646F74;
          if (v26 <= 2)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        if (v30 != 1)
        {
          v31 = 0xE300000000000000;
          v32 = 7105633;
          if (v26 <= 2)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        v32 = 0x656C756465686373;
      }

      else
      {
        if (v9[*(v48 + 20)] <= 4u)
        {
          if (v30 == 3)
          {
            v31 = 0xE700000000000000;
            v32 = 0x64656767616C66;
            if (v26 <= 2)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v31 = 0xE800000000000000;
            v32 = 0x64656E6769737361;
            if (v26 <= 2)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_39;
        }

        if (v30 == 5)
        {
          v32 = 0x6E756F4669726973;
          v31 = 0xEF737070416E4964;
          if (v26 <= 2)
          {
            goto LABEL_26;
          }

          goto LABEL_39;
        }

        v32 = 0x6574656C706D6F63;
      }

      v31 = 0xE900000000000064;
      if (v26 <= 2)
      {
LABEL_26:
        if (v26)
        {
          if (v26 == 1)
          {
            v33 = 0x656C756465686373;
          }

          else
          {
            v33 = 7105633;
          }

          if (v26 == 1)
          {
            v34 = 0xE900000000000064;
          }

          else
          {
            v34 = 0xE300000000000000;
          }

          if (v32 == v33)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v34 = 0xE500000000000000;
          if (v32 == 0x7961646F74)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_55;
      }

LABEL_39:
      v35 = 0x6E756F4669726973;
      if (v26 != 5)
      {
        v35 = 0x6574656C706D6F63;
      }

      v36 = 0xEF737070416E4964;
      if (v26 != 5)
      {
        v36 = 0xE900000000000064;
      }

      v37 = 0x64656E6769737361;
      if (v26 == 3)
      {
        v37 = 0x64656767616C66;
      }

      v38 = 0xE700000000000000;
      if (v26 != 3)
      {
        v38 = 0xE800000000000000;
      }

      if (v26 <= 4)
      {
        v39 = v37;
      }

      else
      {
        v39 = v35;
      }

      if (v26 <= 4)
      {
        v34 = v38;
      }

      else
      {
        v34 = v36;
      }

      if (v32 == v39)
      {
LABEL_54:
        if (v31 == v34)
        {

          sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_62:

          return 1;
        }
      }

LABEL_55:
      v40 = sub_21DBFC64C();

      sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      result = sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      if (v40)
      {
        goto LABEL_62;
      }

LABEL_7:
      if (v51 == ++v29)
      {
        goto LABEL_57;
      }
    }
  }

  v24 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  sub_21DA1CB78(v24, v7);

  sub_21D0D523C(v7, v4, &qword_27CE61CB0);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v4[11];
    v52[10] = v4[10];
    v52[11] = v41;
    v53[0] = v4[12];
    *(v53 + 10) = *(v4 + 202);
    v42 = v4[7];
    v52[6] = v4[6];
    v52[7] = v42;
    v43 = v4[9];
    v52[8] = v4[8];
    v52[9] = v43;
    v44 = v4[3];
    v52[2] = v4[2];
    v52[3] = v44;
    v45 = v4[5];
    v52[4] = v4[4];
    v52[5] = v45;
    v46 = v4[1];
    v52[0] = *v4;
    v52[1] = v46;
    sub_21D1077D8(v52);
    return 1;
  }

  else
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    return 0;
  }
}

uint64_t TTRAccountsListsViewModel.alternativePinnedListSelection(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60);
  sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60);
  return sub_21DBFA48C();
}

double sub_21DA1FE5C@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter(v51);
  v53[10] = v51[10];
  v53[11] = v51[11];
  v54[0] = v52[0];
  *(v54 + 10) = *(v52 + 10);
  v53[6] = v51[6];
  v53[7] = v51[7];
  v53[8] = v51[8];
  v53[9] = v51[9];
  v53[2] = v51[2];
  v53[3] = v51[3];
  v53[4] = v51[4];
  v53[5] = v51[5];
  v53[0] = v51[0];
  v53[1] = v51[1];
  if (sub_21D157494(v53) == 1)
  {
    goto LABEL_6;
  }

  v8 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
  sub_21DA1CB78(v8, v7);
  sub_21D0CF7E0(v51, &qword_27CE64CD0);

  sub_21D0D523C(v7, v4, &qword_27CE61CB0);
  v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_6:
    sub_21DA31184(&v38);
    goto LABEL_7;
  }

  v10 = v4[11];
  v35 = v4[10];
  v36 = v10;
  v37[0] = v4[12];
  *(v37 + 10) = *(v4 + 202);
  v11 = v4[7];
  v31 = v4[6];
  v32 = v11;
  v12 = v4[9];
  v33 = v4[8];
  v34 = v12;
  v13 = v4[3];
  v27 = v4[2];
  v28 = v13;
  v14 = v4[5];
  v29 = v4[4];
  v30 = v14;
  v15 = v4[1];
  v25 = *v4;
  v26 = v15;
  sub_21D14DB00(&v25);
  v48 = v35;
  v49 = v36;
  v50[0] = v37[0];
  *(v50 + 10) = *(v37 + 10);
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v38 = v25;
  v39 = v26;
  nullsub_1(&v38, v16, v17);
LABEL_7:
  v18 = v49;
  a1[10] = v48;
  a1[11] = v18;
  a1[12] = v50[0];
  *(a1 + 202) = *(v50 + 10);
  v19 = v45;
  a1[6] = v44;
  a1[7] = v19;
  v20 = v47;
  a1[8] = v46;
  a1[9] = v20;
  v21 = v41;
  a1[2] = v40;
  a1[3] = v21;
  v22 = v43;
  a1[4] = v42;
  a1[5] = v22;
  result = *&v38;
  v24 = v39;
  *a1 = v38;
  a1[1] = v24;
  return result;
}

uint64_t TTRAccountsListsViewModel.alternativeItemSelection(for:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[11];
  v17[10] = a1[10];
  v17[11] = v7;
  v18[0] = a1[12];
  *(v18 + 10) = *(a1 + 202);
  v8 = a1[7];
  v17[6] = a1[6];
  v17[7] = v8;
  v9 = a1[9];
  v17[8] = a1[8];
  v17[9] = v9;
  v10 = a1[3];
  v17[2] = a1[2];
  v17[3] = v10;
  v11 = a1[5];
  v17[4] = a1[4];
  v17[5] = v11;
  v12 = a1[1];
  v17[0] = *a1;
  v17[1] = v12;
  LODWORD(a1) = sub_21D1577AC(v17);
  v13 = sub_21D14D0D4(v17);
  if (a1 == 1)
  {
    v14 = [*v13 uuid];
    sub_21DBF568C();

    swift_storeEnumTagMultiPayload();
    sub_21D1083C8(v6, a2);
    return sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  }

  else
  {
    v16 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_21DA202E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v71 = a2;
  v67 = sub_21DBF6C1C();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v63 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v69 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v19 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v70, v27, type metadata accessor for TTRListType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v50 = v65;
      v51 = *(v65 + 32);
      v52 = v67;
      v51(v5, v27, v67);
      v53 = v64;
      TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)(v5, 1);
      v54 = sub_21DBF6BEC();
      v55 = *(v50 + 8);
      v55(v5, v52);
      if ((v54 & 1) == 0)
      {
        v43 = v71;
        v51(v71, v53, v52);
        v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
        goto LABEL_21;
      }

      v55(v53, v52);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v41 = type metadata accessor for TTRListType;
LABEL_10:
        sub_21D101450(v27, v41);
        goto LABEL_18;
      }

      v59 = *v27;
      v60 = [*v27 uuid];
      sub_21DBF568C();

      swift_storeEnumTagMultiPayload();
      TTRAccountsListsViewModel.item(with:)(v12, v15);

      sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      if ((*(v19 + 48))(v15, 1, v69) != 1)
      {
        sub_21D100E28(v15, v21, type metadata accessor for TTRAccountsListsViewModel.Item);
        v43 = v71;
        sub_21D100E28(v21, v71, type metadata accessor for TTRAccountsListsViewModel.Item);
        v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
        goto LABEL_21;
      }

      sub_21D0CF7E0(v15, &qword_27CE5A490);
    }

LABEL_18:
    v61 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
    return (*(*(v61 - 8) + 56))(v71, 1, 1, v61);
  }

  if (EnumCaseMultiPayload >= 2)
  {
    LOBYTE(v72) = *v27;
    sub_21D14DACC(&v72);
    goto LABEL_12;
  }

  v29 = *v27;
  v30 = [*v27 uuid];
  sub_21DBF568C();

  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v12, v18);
  sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if ((*(v19 + 48))(v18, 1, v69) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5A490);
    v31 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
    v32 = v66;
    sub_21DA1CB78(v31, v66);

    v33 = v32;
    v27 = v68;
    sub_21D0D523C(v33, v68, &qword_27CE61CB0);
    v34 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if ((*(*(v34 - 8) + 48))(v27, 1, v34) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *(v27 + 11);
        v82 = *(v27 + 10);
        v83 = v35;
        *v84 = *(v27 + 12);
        *&v84[10] = *(v27 + 202);
        v36 = *(v27 + 7);
        v78 = *(v27 + 6);
        v79 = v36;
        v37 = *(v27 + 9);
        v80 = *(v27 + 8);
        v81 = v37;
        v38 = *(v27 + 3);
        v74 = *(v27 + 2);
        v75 = v38;
        v39 = *(v27 + 5);
        v76 = *(v27 + 4);
        v77 = v39;
        v40 = *(v27 + 1);
        v72 = *v27;
        v73 = v40;
        sub_21D14DB00(&v72);
LABEL_12:
        v42 = v83;
        v43 = v71;
        v71[10] = v82;
        v43[11] = v42;
        v43[12] = *v84;
        *(v43 + 202) = *&v84[10];
        v44 = v79;
        v43[6] = v78;
        v43[7] = v44;
        v45 = v81;
        v43[8] = v80;
        v43[9] = v45;
        v46 = v75;
        v43[2] = v74;
        v43[3] = v46;
        v47 = v77;
        v43[4] = v76;
        v43[5] = v47;
        v48 = v73;
        *v43 = v72;
        v43[1] = v48;
        v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
LABEL_21:
        swift_storeEnumTagMultiPayload();
        v57 = *(*(v49 - 8) + 56);
        v58 = v43;
        return v57(v58, 0, 1, v49);
      }

      v41 = type metadata accessor for TTRAccountsListsViewModel.PinnedList;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  sub_21D100E28(v18, v24, type metadata accessor for TTRAccountsListsViewModel.Item);
  v56 = v71;
  sub_21D100E28(v24, v71, type metadata accessor for TTRAccountsListsViewModel.Item);
  v49 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
  swift_storeEnumTagMultiPayload();
  v57 = *(*(v49 - 8) + 56);
  v58 = v56;
  return v57(v58, 0, 1, v49);
}

uint64_t TTRAccountsListsViewModel.fallbackSelectionForEmptySelection(lastSelectedListInWindow:globalLastSelectedList:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a2;
  v164 = a1;
  v168 = a3;
  v144 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v144);
  v143 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v149 = (&v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v5 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v145 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v142 - v8;
  MEMORY[0x28223BE20](v10);
  v153 = &v142 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v12 - 8);
  v151 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v142 - v15;
  MEMORY[0x28223BE20](v17);
  v155 = &v142 - v18;
  MEMORY[0x28223BE20](v19);
  v150 = &v142 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C48);
  MEMORY[0x28223BE20](v21 - 8);
  v160 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v159 = &v142 - v24;
  MEMORY[0x28223BE20](v25);
  v161 = &v142 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v142 - v28;
  MEMORY[0x28223BE20](v30);
  v158 = &v142 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v152 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v142 - v35;
  v37 = type metadata accessor for TTRListType(0);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v146 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v142 - v41;
  if (qword_280D0F4D0 != -1)
  {
    swift_once();
  }

  v157 = v5;
  v43 = sub_21DBF84BC();
  v166 = __swift_project_value_buffer(v43, qword_280D0F4D8);
  v44 = sub_21DBF84AC();
  v45 = sub_21DBFAE9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_21D0C9000, v44, v45, "TTRAccountsListViewModel: computing fallbackSelectionForEmptySelection", v46, 2u);
    MEMORY[0x223D46520](v46, -1, -1);
  }

  v47 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
  v169 = *(v47 - 8);
  v48 = *(v169 + 56);
  v167 = v47;
  v163 = v48;
  v162 = v169 + 56;
  (v48)(v168, 1, 1);
  sub_21D0D3954(v164, v36, &qword_27CE650E0);
  v49 = *(v38 + 48);
  if (v49(v36, 1, v37) == 1)
  {
    sub_21D0CF7E0(v36, &qword_27CE650E0);
    v50 = v168;
  }

  else
  {
    sub_21D100E28(v36, v42, type metadata accessor for TTRListType);
    v51 = sub_21DBF84AC();
    v52 = sub_21DBFAE9C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_21D0C9000, v51, v52, "fallbackSelectionForEmptySelection: trying to use lastSelectedListInWindow", v53, 2u);
      MEMORY[0x223D46520](v53, -1, -1);
    }

    v54 = v158;
    sub_21DA202E0(v42, v158);
    sub_21D101450(v42, type metadata accessor for TTRListType);
    v50 = v168;
    sub_21D0CF7E0(v168, &qword_27CE64C48);
    sub_21D0D523C(v54, v50, &qword_27CE64C48);
  }

  sub_21D0D3954(v50, v29, &qword_27CE64C48);
  v55 = *(v169 + 48);
  v169 += 48;
  v164 = v55;
  v56 = v55(v29, 1, v167);
  sub_21D0CF7E0(v29, &qword_27CE64C48);
  if (v56 == 1)
  {
    v57 = v152;
    sub_21D0D3954(v154, v152, &qword_27CE650E0);
    if (v49(v57, 1, v37) == 1)
    {
      sub_21D0CF7E0(v57, &qword_27CE650E0);
    }

    else
    {
      v58 = v146;
      sub_21D100E28(v57, v146, type metadata accessor for TTRListType);
      v59 = sub_21DBF84AC();
      v60 = sub_21DBFAE9C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_21D0C9000, v59, v60, "fallbackSelectionForEmptySelection: trying to use globalLastSelectedList", v61, 2u);
        MEMORY[0x223D46520](v61, -1, -1);
      }

      v62 = v158;
      sub_21DA202E0(v58, v158);
      sub_21D101450(v58, type metadata accessor for TTRListType);
      sub_21D0CF7E0(v50, &qword_27CE64C48);
      sub_21D0D523C(v62, v50, &qword_27CE64C48);
    }
  }

  v63 = v161;
  sub_21D0D3954(v50, v161, &qword_27CE64C48);
  v64 = v167;
  v65 = v164;
  v66 = v164(v63, 1, v167);
  v67 = v63;
  v68 = v64;
  sub_21D0CF7E0(v67, &qword_27CE64C48);
  if (v66 == 1)
  {
    v69 = sub_21DBF84AC();
    v70 = sub_21DBFAE9C();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_21D0C9000, v69, v70, "fallbackSelectionForEmptySelection: trying to use firstListOrCustomSmartListDescendant", v71, 2u);
      MEMORY[0x223D46520](v71, -1, -1);
    }

    v72 = *(v165 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A10);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_21DC08D00;
    v74 = v157;
    v75 = v157 + 56;
    v76 = *(v157 + 56);
    v77 = v155;
    v78 = v156;
    v76(v155, 1, 1, v156);
    *&v170 = v72;
    swift_retain_n();
    v161 = v72;
    result = sub_21D0E8DA0(v77);
    v80 = v153;
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v158 = v75;
    MEMORY[0x28223BE20](result);
    *(&v142 - 2) = &v170;
    *(&v142 - 1) = v77;
    v82 = sub_21D174668(sub_21DA28F64, (&v142 - 4), 0, v81);
    v154 = v76;
    v83 = v74;
    v84 = v82;
    sub_21D0CF7E0(v77, &qword_27CE5A490);
    *(v73 + 32) = v84;
    *(v73 + 40) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C50);
    v85 = swift_allocObject();
    *(v85 + 16) = v161;
    v155 = v85;
    *(v85 + 24) = v73;
    sub_21DA1256C(v16);
    v86 = *(v83 + 48);
    v87 = v86(v16, 1, v78);
    v88 = v154;
    v68 = v167;
    if (v87 != 1)
    {
      while (2)
      {
        sub_21D100E28(v16, v80, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0FE734(v80, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
            sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
            goto LABEL_25;
          case 5u:
          case 6u:
            v131 = v9[217];
            v132 = v9[216];
            v133 = v9[148];
            v134 = v9[147];
            v135 = v9[146];
            v136 = v9[145];
            v137 = v9[144];
            v138 = v9[120];
            v140 = *(v9 + 5);
            v139 = *(v9 + 6);
            v141 = *(v9 + 2);
            v170 = *v9;
            *v171 = v141;
            *&v171[8] = *(v9 + 24);
            *&v171[24] = v140;
            *v172 = v139;
            *&v172[8] = *(v9 + 56);
            *&v172[24] = *(v9 + 72);
            *&v172[40] = *(v9 + 88);
            *&v172[56] = *(v9 + 104);
            v172[72] = v138;
            v173 = *(v9 + 8);
            v174[0] = v137;
            v174[1] = v136;
            v174[2] = v135;
            v174[3] = v134;
            v174[4] = v133;
            *&v174[8] = *(v9 + 152);
            *&v174[24] = *(v9 + 168);
            *&v174[40] = *(v9 + 184);
            *&v174[56] = *(v9 + 200);
            v174[72] = v132;
            v174[73] = v131;
            sub_21D1077D8(&v170);

            swift_setDeallocating();

            swift_deallocClassInstance();
            v89 = v150;
            sub_21D100E28(v80, v150, type metadata accessor for TTRAccountsListsViewModel.Item);
            v90 = v89;
            v91 = 0;
            goto LABEL_22;
          case 0xFu:
          case 0x10u:
            goto LABEL_25;
          default:
            v95 = sub_21DBF56BC();
            (*(*(v95 - 8) + 8))(v9, v95);
LABEL_25:
            sub_21D101450(v80, type metadata accessor for TTRAccountsListsViewModel.Item);
            sub_21DA1256C(v16);
            if (v86(v16, 1, v78) != 1)
            {
              continue;
            }

            goto LABEL_21;
        }
      }
    }

LABEL_21:

    swift_setDeallocating();

    swift_deallocClassInstance();
    v89 = v150;
    v90 = v150;
    v91 = 1;
LABEL_22:
    v88(v90, v91, 1, v78);
    v92 = v89;
    v93 = v151;
    sub_21D0D523C(v92, v151, &qword_27CE5A490);
    v94 = v86(v93, 1, v78);
    v50 = v168;
    if (v94 == 1)
    {
      sub_21D0CF7E0(v93, &qword_27CE5A490);
    }

    else
    {
      sub_21D0CF7E0(v168, &qword_27CE64C48);
      v96 = v93;
      v97 = v145;
      sub_21D100E28(v96, v145, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D100E28(v97, v50, type metadata accessor for TTRAccountsListsViewModel.Item);
      swift_storeEnumTagMultiPayload();
      v163(v50, 0, 1, v68);
    }

    v65 = v164;
  }

  v98 = v159;
  sub_21D0D3954(v50, v159, &qword_27CE64C48);
  v99 = v65(v98, 1, v68);
  sub_21D0CF7E0(v98, &qword_27CE64C48);
  if (v99 == 1)
  {
    v100 = sub_21DBF84AC();
    v101 = sub_21DBFAE9C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_21D0C9000, v100, v101, "fallbackSelectionForEmptySelection: trying to use visiblePinnedLists.first", v102, 2u);
      MEMORY[0x223D46520](v102, -1, -1);
    }

    v103 = TTRAccountsListsViewModel.visiblePinnedLists.getter();
    if (*(v103 + 16))
    {
      v104 = v149;
      sub_21D0FE734(v103 + ((*(v147 + 80) + 32) & ~*(v147 + 80)), v149, type metadata accessor for TTRAccountsListsViewModel.PinnedList);

      sub_21D0CF7E0(v50, &qword_27CE64C48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v105 = v104[11];
        *&v174[16] = v104[10];
        *&v174[32] = v105;
        *&v174[48] = v104[12];
        *&v174[58] = *(v104 + 202);
        v106 = v104[7];
        *&v172[48] = v104[6];
        *&v172[64] = v106;
        v107 = v104[9];
        v173 = v104[8];
        *v174 = v107;
        v108 = v104[3];
        *&v171[16] = v104[2];
        *v172 = v108;
        v109 = v104[5];
        *&v172[16] = v104[4];
        *&v172[32] = v109;
        v110 = v104[1];
        v170 = *v104;
        *v171 = v110;
        sub_21D14DB00(&v170);
      }

      else
      {
        v112 = v104;
        v113 = v143;
        sub_21D100E28(v112, v143, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v114 = *(v113 + *(v144 + 20));
        sub_21D101450(v113, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        LOBYTE(v170) = v114;
        sub_21D14DACC(&v170);
      }

      v111 = *&v174[32];
      v50[10] = *&v174[16];
      v50[11] = v111;
      v50[12] = *&v174[48];
      *(v50 + 202) = *&v174[58];
      v115 = *&v172[64];
      v50[6] = *&v172[48];
      v50[7] = v115;
      v116 = *v174;
      v50[8] = v173;
      v50[9] = v116;
      v117 = *v172;
      v50[2] = *&v171[16];
      v50[3] = v117;
      v118 = *&v172[32];
      v50[4] = *&v172[16];
      v50[5] = v118;
      v119 = *v171;
      *v50 = v170;
      v50[1] = v119;
      swift_storeEnumTagMultiPayload();
      v163(v50, 0, 1, v68);
    }

    else
    {
    }
  }

  v120 = v160;
  sub_21D0D3954(v50, v160, &qword_27CE64C48);
  v121 = v65(v120, 1, v68);
  result = sub_21D0CF7E0(v120, &qword_27CE64C48);
  if (v121 == 1)
  {
    v122 = sub_21DBF84AC();
    v123 = sub_21DBFAEDC();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_21D0C9000, v122, v123, "fallbackSelectionForEmptySelection: show the 'All' list anyway", v124, 2u);
      MEMORY[0x223D46520](v124, -1, -1);
    }

    sub_21D0CF7E0(v50, &qword_27CE64C48);
    LOBYTE(v170) = 2;
    sub_21D14DACC(&v170);
    v125 = *&v174[32];
    v50[10] = *&v174[16];
    v50[11] = v125;
    v50[12] = *&v174[48];
    *(v50 + 202) = *&v174[58];
    v126 = *&v172[64];
    v50[6] = *&v172[48];
    v50[7] = v126;
    v127 = *v174;
    v50[8] = v173;
    v50[9] = v127;
    v128 = *v172;
    v50[2] = *&v171[16];
    v50[3] = v128;
    v129 = *&v172[32];
    v50[4] = *&v172[16];
    v50[5] = v129;
    v130 = *v171;
    *v50 = v170;
    v50[1] = v130;
    swift_storeEnumTagMultiPayload();
    return (v163)(v50, 0, 1, v68);
  }

  return result;
}

uint64_t TTRAccountsListsViewModel.moveItem(at:in:to:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21D0FE734(a2, &v17 - v12, type metadata accessor for TTRAccountsListsViewModel.Item);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 0, 1, v14);
  sub_21D0FE734(a4, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
  v15(v10, 0, 1, v14);
  sub_21D260B34(a1, v13, a3, v10);
  sub_21D0CF7E0(v10, &qword_27CE5A490);
  return sub_21D0CF7E0(v13, &qword_27CE5A490);
}

Swift::Void __swiftcall TTRAccountsListsViewModel.performMoves(_:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = 0;
  rawValue = a1._rawValue;
  v33 = &v31 - v9;
  v12 = *(a1._rawValue + 2);
  v34 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree;
  v35 = v12;
  v13 = &unk_21DC0CD40;
  v14 = v12 == 0;
  if (v12)
  {
    goto LABEL_3;
  }

LABEL_2:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v11 = v12;
  while (1)
  {
    sub_21D0D523C(v7, v10, &qword_27CE64C58);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      break;
    }

    v20 = &v10[*(v19 + 48)];
    v21 = &v10[*(v19 + 64)];
    v22 = v36;
    v23 = v13;
    sub_21D0D523C(v21, v36, &qword_27CE59A08);
    v24 = v38;
    v40 = *(v39 + v34);
    v25 = v7;
    v26 = v37;
    v27 = *(v20 + *(v37 + 36));
    sub_21D0D3954(v20, v38, &qword_27CE5A490);
    sub_21D0CF7E0(v20, &qword_27CE59A08);
    v28 = *(v26 + 36);
    v7 = v25;
    v13 = v23;
    sub_21D260B34(v27, v24, *(v22 + v28), v22);
    v29 = v24;
    v10 = v33;
    sub_21D0CF7E0(v29, &qword_27CE5A490);
    v30 = v22;
    v12 = v35;
    sub_21D0CF7E0(v30, &qword_27CE59A08);
    sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    v14 = v11 >= v12;
    if (v11 == v12)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v14)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00);
    v17 = *(v16 - 8);
    sub_21D0D3954(rawValue + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11, v7, &qword_27CE59B00);
    if (__OFADD__(v11++, 1))
    {
      goto LABEL_11;
    }

    (*(v17 + 56))(v7, 0, 1, v16);
  }
}

uint64_t TTRAccountsListsViewModel.activePinnedListsDisplayOrder()()
{
  v41 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v1 = *(v41 - 1);
  MEMORY[0x28223BE20](v41);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v44 = MEMORY[0x277D84F90];
  v19 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  if (qword_280D14DE0 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF56BC();
  v21 = __swift_project_value_buffer(v20, qword_280D14DE8);
  (*(*(v20 - 8) + 16))(v12, v21, v20);
  swift_storeEnumTagMultiPayload();
  sub_21D1083C8(v12, v18);
  sub_21D101450(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v43 = 0;
  sub_21D0D3954(v18, v15, &qword_27CE5A490);
  if ((*(v1 + 48))(v15, 1, v41) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5A490);
    swift_beginAccess();
    v22 = sub_21DBF8E0C();
    sub_21D33C190(v22, MEMORY[0x277D84F90], &v43, v19, &v44);

    sub_21D0CF7E0(v18, &qword_27CE5A490);
    return v44;
  }

  v23 = v1;
  v39 = v18;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v6);
  sub_21D101450(v15, type metadata accessor for TTRAccountsListsViewModel.Item);
  sub_21D100E28(v6, v9, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v40 = v19;
  v24 = sub_21D2916B0(v9);
  if (v24)
  {
    v25 = v24;
    v41 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587A8);
    v26 = *(v23 + 72);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21DC08D00;
    v29 = *(*v25 + 120);
    swift_beginAccess();
    sub_21D0FE734(v25 + v29, v28 + v27, type metadata accessor for TTRAccountsListsViewModel.Item);
    v42 = v28;

    for (i = swift_weakLoadStrong(); i; i = swift_weakLoadStrong())
    {
      v31 = i;
      v32 = *(*i + 120);
      swift_beginAccess();
      sub_21D0FE734(v31 + v32, v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        v28 = sub_21D103C5C(v33 > 1, v34 + 1, 1, v28);
      }

      *(v28 + 16) = v34 + 1;
      sub_21D100E28(v3, v28 + v27 + v34 * v26, type metadata accessor for TTRAccountsListsViewModel.Item);

      v42 = v28;
    }

    sub_21DA0F818();
    swift_beginAccess();
    v35 = v42;
    v36 = sub_21DBF8E0C();
    sub_21D33C190(v36, v35, &v43, v40, &v44);

    sub_21D101450(v41, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    sub_21D0CF7E0(v39, &qword_27CE5A490);

    return v44;
  }

  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.hasAccountAvailableForUpgrade()()
{
  v86 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v86);
  v85 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v68 - v3;
  v84 = sub_21DBF56BC();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v77 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v68 - v7;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  v81 = *(v15 - 8);
  v16 = *(v81 + 8);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v20);
  v88 = &v68 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  MEMORY[0x28223BE20](v25);
  v79 = &v68 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v68 - v29;
  v70 = v0;
  v31 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v90 = v9;
  v91 = *(v9 + 56);
  v92 = v9 + 56;
  v91(&v68 - v29, 1, 1, v8, v28);
  v89 = v31;
  v32 = sub_21D0E8DA0(v30);
  if (v32 < 0)
  {
    goto LABEL_47;
  }

  v87 = v32;
  v33 = v79;
  sub_21D0D523C(v30, v79, &qword_27CE5A490);
  v80 = v24;
  sub_21D0D3954(v33, v24, &qword_27CE5A490);
  v34 = (v81[80] + 24) & ~v81[80];
  v35 = swift_allocObject();
  *(v35 + 16) = v89;
  sub_21D0D523C(v33, v35 + v34, &qword_27CE5A490);
  v90 += 6;
  v74 = (v82 + 32);
  v73 = (v82 + 16);
  v72 = (v82 + 8);
  v69 = 0x800000021DC63B60;
  v79 = 0x800000021DC73B80;
  swift_retain_n();
  swift_retain_n();
  v68 = v35;

  v36 = 0;
  v81 = v4;
  v37 = v78;
  v76 = v19;
  v75 = v14;
  while (1)
  {
    if (v36 == v87)
    {
      v38 = 1;
      v36 = v87;
      v39 = v88;
      goto LABEL_10;
    }

    v39 = v88;
    if (v36 >= v87)
    {
      break;
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_46;
    }

    sub_21D107A34(v36, v80, v88);
    v38 = 0;
    ++v36;
LABEL_10:
    (v91)(v39, v38, 1, v8);
    sub_21D0D523C(v39, v19, &qword_27CE5A490);
    v40 = *v90;
    if ((*v90)(v19, 1, v8) == 1)
    {

      sub_21D0CF7E0(v80, &qword_27CE5A490);

      v63 = 0;
      v62 = 0;
      v66 = 0;
      goto LABEL_44;
    }

    sub_21D100E28(v19, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0FE734(v14, v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      (v91)(v37, 0, 1, v8);
      goto LABEL_19;
    }

    v82 = v36;
    v41 = v8;
    v42 = v11;
    v43 = *v74;
    v44 = v77;
    v45 = v84;
    (*v74)(v77, v4, v84);
    v46 = v83;
    v43(v83, v44, v45);
    v47 = v85;
    (*v73)(v85, v46, v45);
    swift_storeEnumTagMultiPayload();
    v48 = v89;
    swift_beginAccess();
    v49 = *(v48 + 24);
    if (*(v49 + 16) && (v50 = sub_21D105CF4(v47), (v51 & 1) != 0))
    {
      v52 = *(*(v49 + 56) + 8 * v50);
      swift_endAccess();
      v53 = *(*v52 + 120);
      swift_beginAccess();
      v37 = v78;
      sub_21D0FE734(v52 + v53, v78, type metadata accessor for TTRAccountsListsViewModel.Item);
      v54 = 0;
      v11 = v42;
      v8 = v41;
    }

    else
    {
      swift_endAccess();
      v54 = 1;
      v11 = v42;
      v8 = v41;
      v37 = v78;
    }

    (v91)(v37, v54, 1, v8);
    sub_21D101450(v85, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    (*v72)(v83, v84);
    v55 = v40(v37, 1, v8);
    v4 = v81;
    v14 = v75;
    v19 = v76;
    v36 = v82;
    if (v55 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE5A490);
LABEL_4:
      LOBYTE(v32) = sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    else
    {
LABEL_19:
      sub_21D0FE734(v37, v11, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_21D101450(v11, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_4;
      }

      v56 = v11[1];
      v95 = *v11;
      v96 = v56;
      sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      v57 = BYTE8(v96);
      if (BYTE8(v96) > 3u)
      {
        if (BYTE8(v96) == 4)
        {
          v58 = 0xE500000000000000;
          v59 = 0x726F727265;
          goto LABEL_36;
        }

        if (BYTE8(v96) == 5)
        {
          v58 = 0xE800000000000000;
          v59 = 0x64656873696E6966;
          goto LABEL_36;
        }
      }

      else
      {
        if (BYTE8(v96) == 2)
        {
          v59 = 0x6C69617641746F6ELL;
          v58 = 0xEC000000656C6261;
          goto LABEL_36;
        }

        if (BYTE8(v96) == 3)
        {
          v58 = 0xEA00000000007373;
          v59 = 0x6572676F72506E69;
          goto LABEL_36;
        }
      }

      v93 = 0;
      v94 = 0xE000000000000000;
      sub_21DBFBEEC();

      v93 = 0xD000000000000024;
      v94 = v69;
      if (v57)
      {
        v60 = 1702195828;
      }

      else
      {
        v60 = 0x65736C6166;
      }

      if (v57)
      {
        v61 = 0xE400000000000000;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v60, v61);

      v59 = v93;
      v58 = v94;
LABEL_36:
      v62 = *(&v95 + 1);
      v63 = v95;
      v71 = *(&v96 + 1);
      v82 = v96;
      if (v59 == 0xD000000000000029 && v79 == v58)
      {

        goto LABEL_43;
      }

      v64 = v95;
      v65 = sub_21DBFC64C();

      if (v65)
      {

        v63 = v64;
LABEL_43:
        sub_21D0CF7E0(v80, &qword_27CE5A490);

        v66 = v82;
LABEL_44:
        sub_21D1576C8(v63, v62, v66);
        LOBYTE(v32) = v62 != 0;
        return v32;
      }

      LOBYTE(v32) = sub_21D122250(&v95);
      v4 = v81;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return v32;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.hasUpgradedAccount()()
{
  v85 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v85);
  v84 = v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = v68 - v3;
  v83 = sub_21DBF56BC();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = v68 - v7;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  v80 = *(v15 - 8);
  v16 = *(v80 + 8);
  MEMORY[0x28223BE20](v15 - 8);
  v78 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v68 - v18;
  MEMORY[0x28223BE20](v20);
  v87 = v68 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v68 - v23;
  MEMORY[0x28223BE20](v25);
  v74 = (v68 - v26);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v68 - v29;
  v70 = v0;
  v31 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v89 = v9;
  v90 = *(v9 + 56);
  v91 = v9 + 56;
  v90(v68 - v29, 1, 1, v8, v28);
  v88 = v31;
  v32 = sub_21D0E8DA0(v30);
  if (v32 < 0)
  {
    goto LABEL_47;
  }

  v86 = v32;
  v33 = v74;
  sub_21D0D523C(v30, v74, &qword_27CE5A490);
  v79 = v24;
  sub_21D0D3954(v33, v24, &qword_27CE5A490);
  v34 = (v80[80] + 24) & ~v80[80];
  v35 = swift_allocObject();
  *(v35 + 16) = v88;
  sub_21D0D523C(v33, v35 + v34, &qword_27CE5A490);
  v89 += 6;
  v74 = (v81 + 32);
  v73 = (v81 + 16);
  v72 = (v81 + 8);
  v69 = 0x800000021DC63B60;
  swift_retain_n();
  swift_retain_n();
  v68[1] = v35;

  v36 = 0;
  v80 = v4;
  v37 = v78;
  v76 = v19;
  v75 = v14;
  while (1)
  {
    if (v36 == v86)
    {
      v38 = 1;
      v36 = v86;
      v39 = v87;
      goto LABEL_10;
    }

    v39 = v87;
    if (v36 >= v86)
    {
      break;
    }

    if (__OFADD__(v36, 1))
    {
      goto LABEL_46;
    }

    sub_21D107A34(v36, v79, v87);
    v38 = 0;
    ++v36;
LABEL_10:
    (v90)(v39, v38, 1, v8);
    sub_21D0D523C(v39, v19, &qword_27CE5A490);
    v40 = *v89;
    if ((*v89)(v19, 1, v8) == 1)
    {

      sub_21D0CF7E0(v79, &qword_27CE5A490);

      v63 = 0;
      v62 = 0;
      v66 = 0;
      goto LABEL_44;
    }

    sub_21D100E28(v19, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v4);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      sub_21D101450(v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0FE734(v14, v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      (v90)(v37, 0, 1, v8);
      goto LABEL_19;
    }

    v81 = v36;
    v41 = v8;
    v42 = v11;
    v43 = *v74;
    v44 = v77;
    v45 = v83;
    (*v74)(v77, v4, v83);
    v46 = v82;
    v43(v82, v44, v45);
    v47 = v84;
    (*v73)(v84, v46, v45);
    swift_storeEnumTagMultiPayload();
    v48 = v88;
    swift_beginAccess();
    v49 = *(v48 + 24);
    if (*(v49 + 16) && (v50 = sub_21D105CF4(v47), (v51 & 1) != 0))
    {
      v52 = *(*(v49 + 56) + 8 * v50);
      swift_endAccess();
      v53 = *(*v52 + 120);
      swift_beginAccess();
      v37 = v78;
      sub_21D0FE734(v52 + v53, v78, type metadata accessor for TTRAccountsListsViewModel.Item);
      v54 = 0;
      v11 = v42;
      v8 = v41;
    }

    else
    {
      swift_endAccess();
      v54 = 1;
      v11 = v42;
      v8 = v41;
      v37 = v78;
    }

    (v90)(v37, v54, 1, v8);
    sub_21D101450(v84, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    (*v72)(v82, v83);
    v55 = v40(v37, 1, v8);
    v4 = v80;
    v14 = v75;
    v19 = v76;
    v36 = v81;
    if (v55 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE5A490);
LABEL_4:
      LOBYTE(v32) = sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    else
    {
LABEL_19:
      sub_21D0FE734(v37, v11, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_21D101450(v11, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_4;
      }

      v56 = v11[1];
      v94 = *v11;
      v95 = v56;
      sub_21D101450(v37, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      v57 = BYTE8(v95);
      if (BYTE8(v95) > 3u)
      {
        if (BYTE8(v95) == 4)
        {
          v58 = 0xE500000000000000;
          v59 = 0x726F727265;
          goto LABEL_36;
        }

        if (BYTE8(v95) == 5)
        {
          v58 = 0xE800000000000000;
          v59 = 0x64656873696E6966;
          goto LABEL_36;
        }
      }

      else
      {
        if (BYTE8(v95) == 2)
        {
          v59 = 0x6C69617641746F6ELL;
          v58 = 0xEC000000656C6261;
          goto LABEL_36;
        }

        if (BYTE8(v95) == 3)
        {
          v58 = 0xEA00000000007373;
          v59 = 0x6572676F72506E69;
          goto LABEL_36;
        }
      }

      v92 = 0;
      v93 = 0xE000000000000000;
      sub_21DBFBEEC();

      v92 = 0xD000000000000024;
      v93 = v69;
      if (v57)
      {
        v60 = 1702195828;
      }

      else
      {
        v60 = 0x65736C6166;
      }

      if (v57)
      {
        v61 = 0xE400000000000000;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      MEMORY[0x223D42AA0](v60, v61);

      v59 = v92;
      v58 = v93;
LABEL_36:
      v62 = *(&v94 + 1);
      v63 = v94;
      v71 = *(&v95 + 1);
      v81 = v95;
      if (v59 == 0x64656873696E6966 && v58 == 0xE800000000000000)
      {

        goto LABEL_43;
      }

      v64 = v94;
      v65 = sub_21DBFC64C();

      if (v65)
      {

        v63 = v64;
LABEL_43:
        sub_21D0CF7E0(v79, &qword_27CE5A490);

        v66 = v81;
LABEL_44:
        sub_21D1576C8(v63, v62, v66);
        LOBYTE(v32) = v62 != 0;
        return v32;
      }

      LOBYTE(v32) = sub_21D122250(&v94);
      v4 = v80;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return v32;
}

Swift::Bool __swiftcall TTRAccountsListsViewModel.canDisplay(_:)(RemindersUICore::TTRListType::PredefinedSmartListType a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability);
  if (*(v2 + 16) && (v3 = sub_21D10186C(*a1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + v3);
  }

  else
  {
    return 0;
  }
}

void sub_21DA24368(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180) + 52);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7 > 2)
  {
    if (v7 == 3 && v6[2])
    {
      sub_21D0FF19C(v6, 3u);
      v11 = sub_21D17E07C(a2);
      if (v12)
      {
        v13 = v6[7] + 16 * v11;
        v14 = *v13;
        LOBYTE(v13) = *(v13 + 8);
        *a3 = v14;
        *(a3 + 8) = v13;
        v15 = v14;
        sub_21D103A34(v6, 3u);
        return;
      }

      sub_21D103A34(v6, 3u);
    }

    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    *a3 = 0;
    v10 = -1;
    goto LABEL_16;
  }

  if (v7 != 1)
  {
    sub_21D0D8CF0(0, &qword_280D17680);
    sub_21D0FF19C(v6, 2u);
    v16 = [v6 objectID];
    v17 = sub_21DBFB63C();

    if (v17)
    {
      v10 = 1;
      *a3 = v6;
      goto LABEL_16;
    }

    v18 = v6;
    v19 = 2;
LABEL_15:
    sub_21D103A34(v18, v19);
    v10 = -1;
    *a3 = 0;
    goto LABEL_16;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  sub_21D0FF19C(v6, 1u);
  v8 = [v6 objectID];
  v9 = sub_21DBFB63C();

  if ((v9 & 1) == 0)
  {
    v18 = v6;
    v19 = 1;
    goto LABEL_15;
  }

  v10 = 0;
  *a3 = v6;
LABEL_16:
  *(a3 + 8) = v10;
}

uint64_t TTRAccountsListsViewModel.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v9 = MEMORY[0x277D84F90];
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  sub_21D346788(v3, v4, v4, &v9);

  sub_21D0CF7E0(v3, &qword_27CE5A490);
  v8 = v9;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v6 = sub_21DBFA07C();
  swift_bridgeObjectRelease_n();
  return v6;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC4ItemO15identitiesEqualySbAE_AEtFZ_0()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(&v8 - v4);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v2);
  v6 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v5, v2);
  sub_21D101450(v2, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D101450(v5, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  return v6 & 1;
}

uint64_t sub_21DA24864()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  v5 = swift_allocObject();
  *(v5 + 16) = 2;
  v6 = swift_allocObject();
  *(v6 + 16) = 2;
  sub_21D0FE734(v0, v3, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 8u:
    case 0xAu:
      v10 = sub_21DA24C70(v5);
      goto LABEL_10;
    case 2u:
    case 3u:
    case 0xDu:
      v10 = sub_21DA24CD4(v6);
      goto LABEL_10;
    case 4u:
      v9 = *(v3 + 2);
      v13 = v3[26];

      LOBYTE(v9) = v13 ^ 1;
      LOBYTE(v8) = 1;
      break;
    case 5u:
    case 6u:
    case 9u:
    case 0xBu:
    case 0xEu:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 7u:
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      v7 = sub_21DA24C08(v4);
      goto LABEL_4;
    case 0xCu:
      v10 = sub_21DA24C08(v4);
LABEL_10:
      LOBYTE(v8) = v10;
      LODWORD(v9) = (v10 >> 8) & 1;
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_11;
    case 0xFu:
      v7 = sub_21DA24C70(v5);
      goto LABEL_4;
    case 0x10u:
LABEL_3:
      v7 = sub_21DA24CD4(v6);
LABEL_4:
      v8 = v7;

      LODWORD(v9) = (v8 >> 8) & 1;
      break;
    default:
      v14 = sub_21DA24C70(v5);
      LOBYTE(v8) = v14;
      LODWORD(v9) = (v14 >> 8) & 1;
      v15 = sub_21DBF56BC();
      (*(*(v15 - 8) + 8))(v3, v15);
LABEL_11:

      break;
  }

  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 0xFFFFFFFE | v8 & 1;
}

uint64_t TTRAccountsListsViewModel.Item.recentlyDeletedList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE734(v2, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  if (result == 14)
  {
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[2];
    v11 = v6[3];
  }

  else
  {
    result = sub_21D101450(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  return result;
}

uint64_t sub_21DA24C08(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = (a1 + 16);
  v2 = v3;
  if (v3 == 2)
  {
    LOBYTE(v2) = 1;
    v4 = v1;
    swift_beginAccess();
    *v4 = 257;
    v5 = 256;
  }

  else
  {
    v5 = v2 & 0x100;
  }

  return v5 | v2 & 1u;
}

uint64_t sub_21DA24C70(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = (a1 + 16);
  v2 = v3;
  if (v3 == 2)
  {
    LOBYTE(v2) = 1;
    v4 = v1;
    swift_beginAccess();
    v5 = 0;
    *v4 = 1;
  }

  else
  {
    v5 = v2 & 0x100;
  }

  return v5 | v2 & 1u;
}

uint64_t sub_21DA24CD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = (a1 + 16);
  v2 = v3;
  if (v3 == 2)
  {
    v4 = v1;
    swift_beginAccess();
    LOBYTE(v2) = 0;
    v5 = 0;
    *v4 = 0;
  }

  else
  {
    v5 = v2 & 0x100;
  }

  return v5 | v2 & 1u;
}

uint64_t TTRAccountsListsViewModel.Item.debugDescription.getter()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v0, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0xD000000000000012;
    case 2u:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0x694C64656E6E6970;
    case 3u:
      sub_21D100E28(v10, v3, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();

      *&v46 = 0xD00000000000001CLL;
      *(&v46 + 1) = 0x800000021DC73C80;
      LOBYTE(v58) = v3[*(v1 + 20)];
      v24 = TTRListType.PredefinedSmartListType.longTitle.getter();
      MEMORY[0x223D42AA0](v24);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v12 = v46;
      sub_21D101450(v3, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      goto LABEL_14;
    case 4u:
      v16 = *v10;
      v17 = *(v10 + 1);
      v18 = *(v10 + 2);
      strcpy(&v46, "account(");
      BYTE9(v46) = 0;
      WORD5(v46) = 0;
      HIDWORD(v46) = -402653184;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v16, v17);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);

      goto LABEL_16;
    case 5u:
      v28 = *(v10 + 11);
      v55 = *(v10 + 10);
      v56 = v28;
      v57[0] = *(v10 + 12);
      *(v57 + 10) = *(v10 + 202);
      v29 = *(v10 + 7);
      v51 = *(v10 + 6);
      v52 = v29;
      v30 = *(v10 + 9);
      v53 = *(v10 + 8);
      v54 = v30;
      v31 = *(v10 + 3);
      v48 = *(v10 + 2);
      v49 = v31;
      v32 = *(v10 + 5);
      *v50 = *(v10 + 4);
      *&v50[16] = v32;
      v33 = *(v10 + 1);
      v46 = *v10;
      v47 = v33;
      v58 = 0x287473696CLL;
      v59 = 0xE500000000000000;
      v34 = *(&v46 + 1);
      v35 = v33;
      sub_21DBF8E0C();
      goto LABEL_21;
    case 6u:
      v36 = *(v10 + 11);
      v55 = *(v10 + 10);
      v56 = v36;
      v57[0] = *(v10 + 12);
      *(v57 + 10) = *(v10 + 202);
      v37 = *(v10 + 7);
      v51 = *(v10 + 6);
      v52 = v37;
      v38 = *(v10 + 9);
      v53 = *(v10 + 8);
      v54 = v38;
      v39 = *(v10 + 3);
      v48 = *(v10 + 2);
      v49 = v39;
      v40 = *(v10 + 5);
      *v50 = *(v10 + 4);
      *&v50[16] = v40;
      v41 = *(v10 + 1);
      v46 = *v10;
      v47 = v41;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_21DBFBEEC();

      v58 = 0xD000000000000010;
      v59 = 0x800000021DC69630;
      v34 = *(&v46 + 1);
      v35 = v47;
      sub_21DBF8E0C();
LABEL_21:
      MEMORY[0x223D42AA0](v34, v35);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      sub_21D1077D8(&v46);
      goto LABEL_31;
    case 7u:
      v25 = *v10;
      v26 = *(v10 + 1);
      v27 = *(v10 + 6);
      *&v46 = 0x2870756F7267;
      *(&v46 + 1) = 0xE600000000000000;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v25, v26);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);

LABEL_16:

      goto LABEL_17;
    case 8u:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0xD000000000000011;
    case 9u:
      v19 = *(v10 + 1);
      v46 = *v10;
      v47 = v19;
      *v50 = *(v10 + 4);
      *&v50[9] = *(v10 + 73);
      v20 = *(v10 + 2);
      v49 = *(v10 + 3);
      v48 = v20;
      v21 = *(&v46 + 1);
      v22 = v47;
      if (v50[24])
      {
        if (v50[24] == 1)
        {
          v23 = v46;
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_21DBFBEEC();

          v58 = 0xD000000000000020;
          v59 = 0x800000021DC73C30;
          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](v23, v21);
        }

        else
        {
          v44 = *(&v49 + 1);
          v45 = *v50;
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_21DBFBEEC();

          v58 = 0xD000000000000019;
          v59 = 0x800000021DC73C10;
          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](v21, v22);

          MEMORY[0x223D42AA0](0x6F74747562202C29, 0xEA0000000000286ELL);
          if (v45)
          {
            sub_21DBF8E0C();
          }

          else
          {
            v45 = 0xE300000000000000;
            v44 = 7104846;
          }

          MEMORY[0x223D42AA0](v44, v45);
        }

        v42 = 41;
        v43 = 0xE100000000000000;
      }

      else
      {
        v58 = 0;
        v59 = 0xE000000000000000;
        sub_21DBFBEEC();

        v58 = 0xD000000000000019;
        v59 = 0x800000021DC73C10;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v21, v22);

        v42 = 10537;
        v43 = 0xE200000000000000;
      }

      MEMORY[0x223D42AA0](v42, v43);
      sub_21DA264B0(&v46);
LABEL_31:
      result = v58;
      break;
    case 0xAu:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 0x6974636553706954;
      break;
    case 0xBu:
      v14 = *v10;
      v15 = *(v10 + 1);
      *&v46 = 678455636;
      *(&v46 + 1) = 0xE400000000000000;
      MEMORY[0x223D42AA0](v14, v15);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
LABEL_17:
      result = v46;
      break;
    case 0xCu:
    case 0xDu:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 0x7367617468736168;
      break;
    case 0xEu:
      sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      result = 0xD000000000000013;
      break;
    case 0xFu:
      result = 0xD000000000000017;
      break;
    case 0x10u:
      result = 0xD000000000000010;
      break;
    default:
      (*(v5 + 32))(v7, v10, v4);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();

      strcpy(&v46, "sectionProxy(");
      HIWORD(v46) = -4864;
      sub_21D0DCFD0(&qword_280D17190, MEMORY[0x277CC95F0]);
      v11 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v11);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v12 = v46;
      (*(v5 + 8))(v7, v4);
LABEL_14:
      result = v12;
      break;
  }

  return result;
}

void TTRAccountsListsViewModel.SharingParticipantInfo.init(with:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isShared])
  {
    v4 = REMList.participantsToShowForSharingStatus(maxCount:)(3, 0);
  }

  else
  {

    v4 = 0;
  }

  *a2 = v4;
}

uint64_t TTRAccountsListsViewModel.diff(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64C18);
  v5[4] = sub_21D0D0F1C(qword_280D156E0, &qword_27CE64C18);
  v5[0] = v3;

  sub_21DA0F534(v5, 0, 0, a2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_21DA2584C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[11];
  v54[10] = a1[10];
  v54[11] = v2;
  v55[0] = a1[12];
  *(v55 + 10) = *(a1 + 202);
  v3 = a1[7];
  v54[6] = a1[6];
  v54[7] = v3;
  v4 = a1[9];
  v54[8] = a1[8];
  v54[9] = v4;
  v5 = a1[3];
  v54[2] = a1[2];
  v54[3] = v5;
  v6 = a1[5];
  v54[4] = a1[4];
  v54[5] = v6;
  v7 = a1[1];
  v54[0] = *a1;
  v54[1] = v7;
  v8 = a2[11];
  v51 = a2[10];
  v52 = v8;
  v53[0] = a2[12];
  *(v53 + 10) = *(a2 + 202);
  v9 = a2[7];
  v47 = a2[6];
  v48 = v9;
  v10 = a2[9];
  v49 = a2[8];
  v50 = v10;
  v11 = a2[3];
  v43 = a2[2];
  v44 = v11;
  v12 = a2[5];
  v45 = a2[4];
  v46 = v12;
  v13 = a2[1];
  v41 = *a2;
  v42 = v13;
  if (sub_21D1577AC(v54) != 1)
  {
    v23 = *sub_21D14D0D4(v54);
    v38 = v51;
    v39 = v52;
    v40[0] = v53[0];
    *(v40 + 10) = *(v53 + 10);
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    v24 = sub_21D1577AC(&v28);
    v25 = sub_21D14D0D4(&v28);
    if (v24 != 1)
    {
      v22 = sub_21D11ED58(v23, *v25);
      return v22 & 1;
    }

    goto LABEL_5;
  }

  v14 = sub_21D14D0D4(v54);
  v38 = v51;
  v39 = v52;
  v40[0] = v53[0];
  *(v40 + 10) = *(v53 + 10);
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v28 = v41;
  v29 = v42;
  v15 = sub_21D1577AC(&v28);
  v16 = sub_21D14D0D4(&v28);
  if (v15 != 1)
  {
LABEL_5:
    v22 = 0;
    return v22 & 1;
  }

  v17 = v16;
  sub_21D0D8CF0(0, &qword_280D17680);
  v18 = *v14;
  v19 = *v17;
  sub_21DA28EE0(&v41, &v27);
  v20 = v18;
  v21 = v19;
  v22 = sub_21DBFB63C();

  sub_21DA28F18(&v41);
  return v22 & 1;
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v1, v5, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v6 = sub_21DBF56BC();
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t TTRAccountsListsViewModel.ItemIdentifier.description.getter()
{
  v1 = sub_21DBF56BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(v0, v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 32))(v4, v7, v1);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = 676086866;
      v10 = 0xE400000000000000;
    }

    else
    {
      v9 = 0x2859584F5250;
      v10 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0x2844495555;
    v10 = 0xE500000000000000;
  }

  v14[0] = v9;
  v14[1] = v10;
  sub_21D0DCFD0(&qword_280D17190, MEMORY[0x277CC95F0]);
  v11 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v11);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  v12 = v14[0];
  (*(v2 + 8))(v4, v1);
  return v12;
}

void sub_21DA25D58(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v44[1] = a4;
  v59 = a3;
  v44[3] = a2;
  v7 = sub_21DBF676C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v44 - v12;
  v14 = sub_21DBF68CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D452E8])
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    MEMORY[0x223D3EFA0]();
    v45 = 0;
    (*(v8 + 16))(v10, v13, v7);
    TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v20, &v45, v10, &v46);
    v21 = sub_21DBF673C();
    if (!__OFADD__(*v59, v21))
    {
      *v59 += v21;
      v22 = v57;
      a5[10] = v56;
      a5[11] = v22;
      a5[12] = *v58;
      *(a5 + 202) = *&v58[10];
      v23 = v53;
      a5[6] = v52;
      a5[7] = v23;
      v24 = v55;
      a5[8] = v54;
      a5[9] = v24;
      v25 = v49;
      a5[2] = v48;
      a5[3] = v25;
      v26 = v51;
      a5[4] = v50;
      a5[5] = v26;
      v27 = v47;
      *a5 = v46;
      a5[1] = v27;
      type metadata accessor for TTRAccountsListsViewModel.Item(0);
      swift_storeEnumTagMultiPayload();

      (*(v8 + 8))(v13, v7);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
      v29 = v28;
      v30 = a5 + *(v28 + 52);
      *v30 = v20;
      v31 = 1;
LABEL_7:
      v30[8] = v31;
      *(a5 + *(v28 + 56)) = MEMORY[0x277D84F90];
      (*(*(v28 - 8) + 56))(a5, 0, 1, v29);
      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v44[0] = v8;
  if (v19 == *MEMORY[0x277D452E0])
  {
    (*(v15 + 96))(v18, v14);
    v32 = *v18;
    MEMORY[0x223D3EF90]();
    v33 = v44[0];
    (*(v44[0] + 16))(v10, v13, v7);
    v34 = sub_21DBF693C();
    TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v32, v10, v34, &v46);
    v35 = sub_21DBF673C();
    if (!__OFADD__(*v59, v35))
    {
      *v59 += v35;
      v36 = v57;
      a5[10] = v56;
      a5[11] = v36;
      a5[12] = *v58;
      *(a5 + 202) = *&v58[10];
      v37 = v53;
      a5[6] = v52;
      a5[7] = v37;
      v38 = v55;
      a5[8] = v54;
      a5[9] = v38;
      v39 = v49;
      a5[2] = v48;
      a5[3] = v39;
      v40 = v51;
      a5[4] = v50;
      a5[5] = v40;
      v41 = v47;
      *a5 = v46;
      a5[1] = v41;
      type metadata accessor for TTRAccountsListsViewModel.Item(0);
      swift_storeEnumTagMultiPayload();

      (*(v33 + 8))(v13, v7);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
      v29 = v28;
      v30 = a5 + *(v28 + 52);
      *v30 = v32;
      v31 = 2;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_10:
  if (qword_280D0F4D0 != -1)
  {
    swift_once();
  }

  v42 = sub_21DBF84BC();
  __swift_project_value_buffer(v42, qword_280D0F4D8);
  v43 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v43);
  sub_21DAEAB00("Unknown list type", 17, 2);
  __break(1u);
}

id sub_21DA262C8(void *a1)
{
  v1 = [a1 customContext];
  if (!v1)
  {
    v2 = 0;
    goto LABEL_9;
  }

  v8 = v1;
  sub_21D0D8CF0(0, &qword_27CE61F80);
  v2 = sub_21D1198C0();

  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [v2 emblem];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (qword_27CE56B40 != -1)
  {
    swift_once();
  }

  v5 = qword_27CE5F688;
  sub_21DBF8E0C();
  v6 = sub_21D22D5B4(v4, v5);

  if ((v6 & 1) == 0)
  {

LABEL_9:
    v4 = *MEMORY[0x277D44960];
  }

  return v4;
}

uint64_t sub_21DA263EC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s15RemindersUICore25TTRAccountsListsViewModelC4ItemO2eeoiySbAE_AEtFZ_0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21DA26418(uint64_t a1, uint64_t *a2)
{
  v6 = *a2;
  result = sub_21D0E8DA0(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v5[2] = &v6;
    v5[3] = a1;
    return sub_21D174668(sub_21DA312A8, v5, 0, v4);
  }

  return result;
}

BOOL _s15RemindersUICore25TTRAccountsListsViewModelC22HashtagFilterOperationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  if ((sub_21D1D75BC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != 2)
  {
    return v7 != 2 && ((v7 ^ v6) & 1) == 0;
  }

  return v7 == 2;
}

BOOL _s15RemindersUICore25TTRAccountsListsViewModelC15HashtagsSectionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64CF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if ((_s15RemindersUICore25TTRAccountsListsViewModelC06PinnedD7SectionV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v14 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
  v15 = *(v11 + 48);
  sub_21D0D3954(a1 + v14, v13, &qword_27CE5EB70);
  sub_21D0D3954(a2 + v14, &v13[v15], &qword_27CE5EB70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EB70);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5EB70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
LABEL_7:
    sub_21D0CF7E0(v13, &qword_27CE64CF0);
    return 0;
  }

  v18 = v21;
  sub_21D100E28(&v13[v15], v21, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  v19 = _s15RemindersUICore25TTRAccountsListsViewModelC22HashtagFilterOperationV2eeoiySbAE_AEtFZ_0(v10, v18);
  sub_21D101450(v18, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  sub_21D101450(v10, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
  sub_21D0CF7E0(v13, &qword_27CE5EB70);
  return v19;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC17FallbackSelectionO010PinnedListH0O2eeoiySbAG_AGtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[11];
  v3 = a1[9];
  v80 = a1[10];
  v81 = v2;
  v4 = a1[11];
  v82[0] = a1[12];
  *(v82 + 10) = *(a1 + 202);
  v5 = a1[7];
  v6 = a1[5];
  v76 = a1[6];
  v77 = v5;
  v7 = a1[7];
  v8 = a1[9];
  v78 = a1[8];
  v79 = v8;
  v9 = a1[3];
  v10 = a1[1];
  v72 = a1[2];
  v73 = v9;
  v11 = a1[3];
  v12 = a1[5];
  v74 = a1[4];
  v75 = v12;
  v13 = a1[1];
  v70 = *a1;
  v71 = v13;
  v14 = a2[11];
  v15 = a2[9];
  v93 = a2[10];
  v94 = v14;
  v16 = a2[11];
  v95[0] = a2[12];
  *(v95 + 10) = *(a2 + 202);
  v17 = a2[7];
  v18 = a2[5];
  v89 = a2[6];
  v90 = v17;
  v19 = a2[7];
  v20 = a2[9];
  v91 = a2[8];
  v92 = v20;
  v21 = a2[3];
  v22 = a2[1];
  v85 = a2[2];
  v86 = v21;
  v23 = a2[3];
  v24 = a2[5];
  v87 = a2[4];
  v88 = v24;
  v25 = a2[1];
  v83 = *a2;
  v84 = v25;
  v26 = a1[11];
  v96[10] = a1[10];
  v96[11] = v26;
  v97[0] = a1[12];
  *(v97 + 10) = *(a1 + 202);
  v27 = a1[7];
  v96[6] = a1[6];
  v96[7] = v27;
  v28 = a1[9];
  v96[8] = a1[8];
  v96[9] = v28;
  v29 = a1[3];
  v96[2] = a1[2];
  v96[3] = v29;
  v30 = a1[5];
  v96[4] = a1[4];
  v96[5] = v30;
  v31 = a1[1];
  v96[0] = *a1;
  v96[1] = v31;
  *(v98 + 10) = *(a2 + 202);
  v32 = a2[12];
  v97[13] = v16;
  v98[0] = v32;
  v97[9] = v19;
  v97[10] = v91;
  v97[12] = v93;
  v97[11] = v15;
  v97[5] = v23;
  v97[6] = v87;
  v97[8] = v89;
  v97[7] = v18;
  v97[2] = v83;
  v97[4] = v85;
  v97[3] = v22;
  v99[10] = v80;
  v99[11] = v4;
  v100[0] = a1[12];
  *(v100 + 10) = *(a1 + 202);
  v99[6] = v76;
  v99[7] = v7;
  v99[8] = v78;
  v99[9] = v3;
  v99[2] = v72;
  v99[3] = v11;
  v99[4] = v74;
  v99[5] = v6;
  v99[0] = v70;
  v99[1] = v10;
  if (sub_21D1577AC(v99) != 1)
  {
    v36 = *sub_21D14D0D4(v99);
    v67 = v93;
    v68 = v94;
    v69[0] = v95[0];
    *(v69 + 10) = *(v95 + 10);
    v63 = v89;
    v64 = v90;
    v65 = v91;
    v66 = v92;
    v59 = v85;
    v60 = v86;
    v61 = v87;
    v62 = v88;
    v57 = v83;
    v58 = v84;
    v37 = sub_21D1577AC(&v57);
    v38 = sub_21D14D0D4(&v57);
    if (v37 != 1)
    {
      v35 = sub_21D11ED58(v36, *v38);
      sub_21D0CF7E0(v96, &qword_27CE64CE0);
      return v35 & 1;
    }

LABEL_7:
    sub_21DA31204(&v83, &v57);
    sub_21D0CF7E0(v96, &qword_27CE64CE0);
    v35 = 0;
    return v35 & 1;
  }

  v33 = sub_21D14D0D4(v99);
  v67 = v93;
  v68 = v94;
  v69[0] = v95[0];
  *(v69 + 10) = *(v95 + 10);
  v63 = v89;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  v59 = v85;
  v60 = v86;
  v61 = v87;
  v62 = v88;
  v57 = v83;
  v58 = v84;
  if (sub_21D1577AC(&v57) != 1)
  {
    sub_21D14D0D4(&v57);
    v54 = v80;
    v55 = v81;
    v56[0] = v82[0];
    *(v56 + 10) = *(v82 + 10);
    v50 = v76;
    v51 = v77;
    v52 = v78;
    v53 = v79;
    v46 = v72;
    v47 = v73;
    v48 = v74;
    v49 = v75;
    v44 = v70;
    v45 = v71;
    v39 = sub_21D14D0D4(&v44);
    sub_21D567868(v39, v42);
    goto LABEL_7;
  }

  v34 = sub_21D14D0D4(&v57);
  v54 = v33[10];
  v55 = v33[11];
  v56[0] = v33[12];
  *(v56 + 10) = *(v33 + 202);
  v50 = v33[6];
  v51 = v33[7];
  v52 = v33[8];
  v53 = v33[9];
  v46 = v33[2];
  v47 = v33[3];
  v48 = v33[4];
  v49 = v33[5];
  v44 = *v33;
  v45 = v33[1];
  v42[10] = v34[10];
  v42[11] = v34[11];
  v43[0] = v34[12];
  *(v43 + 10) = *(v34 + 202);
  v42[6] = v34[6];
  v42[7] = v34[7];
  v42[8] = v34[8];
  v42[9] = v34[9];
  v42[2] = v34[2];
  v42[3] = v34[3];
  v42[4] = v34[4];
  v42[5] = v34[5];
  v42[0] = *v34;
  v42[1] = v34[1];
  sub_21DA31204(&v83, v41);
  sub_21DA31204(&v70, v41);
  sub_21DA31204(&v83, v41);
  sub_21DA31204(&v70, v41);
  v35 = _s15RemindersUICore25TTRAccountsListsViewModelC4ListV2eeoiySbAE_AEtFZ_0(&v44, v42);
  sub_21D0CF7E0(v96, &qword_27CE64CE0);
  sub_21DA311D4(&v83);
  sub_21DA311D4(&v70);
  return v35 & 1;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC5GroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_21DBFC64C();
    result = 0;
    if ((v11 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v7 && v4 == v8)
  {
    if (v5 != v9)
    {
      return 0;
    }

    goto LABEL_13;
  }

  v13 = sub_21DBFC64C();
  result = 0;
  if ((v13 & 1) != 0 && ((v5 ^ v9) & 1) == 0)
  {
LABEL_13:
    sub_21D0D8CF0(0, &qword_280D17680);
    return sub_21DBFB63C() & (v14 == v10);
  }

  return result;
}

BOOL _s15RemindersUICore25TTRAccountsListsViewModelC17PermissionRequestO2eeoiySbAE_AEtFZ_0(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v28 = a1[2];
  v29 = v2;
  v4 = a1[3];
  *v30 = a1[4];
  *&v30[9] = *(a1 + 73);
  v5 = a1[1];
  v27[0] = *a1;
  v27[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  *&v32[16] = *(a2 + 32);
  *&v32[32] = v6;
  v8 = *(a2 + 48);
  *v33 = *(a2 + 64);
  *&v33[9] = *(a2 + 73);
  v9 = *(a2 + 16);
  v31 = *a2;
  *v32 = v9;
  v34[2] = v28;
  v34[3] = v4;
  v35[0] = a1[4];
  *(v35 + 9) = *(a1 + 73);
  v34[0] = v27[0];
  v34[1] = v3;
  *(v36 + 9) = *(a2 + 73);
  v10 = *(a2 + 64);
  v35[5] = v8;
  v36[0] = v10;
  v35[2] = v31;
  v35[3] = v7;
  v35[4] = *&v32[16];
  if (!v30[24])
  {
    if (!v33[24])
    {
      v20 = v27[0];
      v21 = v5;
      v22 = v28;
      v23 = v29;
      v16 = v31;
      *v17 = *v32;
      *&v17[8] = *&v32[8];
      *&v17[24] = *&v32[24];
      sub_21DA3123C(&v31, v26);
      sub_21DA3123C(v27, v26);
      sub_21DA3123C(v27, v26);
      sub_21DA3123C(&v31, v26);
      v11 = _s15RemindersUICore26TTRPermissionConfigurationV6HeaderV2eeoiySbAE_AEtFZ_0(&v20, &v16);
      goto LABEL_9;
    }

LABEL_10:
    sub_21DA3123C(v27, v26);
    sub_21DA3123C(&v31, v26);
    sub_21D0CF7E0(v34, &qword_27CE64CF8);
    return 0;
  }

  if (v30[24] != 1)
  {
    if (v33[24] == 2)
    {
      v20 = v27[0];
      v21 = v5;
      v22 = v28;
      v23 = v29;
      v24 = *(a1 + 56);
      v25 = *(a1 + 72);
      v12 = *(a2 + 48);
      *&v17[16] = *(a2 + 32);
      *&v17[32] = v12;
      v18 = *(a2 + 64);
      v19 = *(a2 + 80);
      v13 = *(a2 + 16);
      v16 = *a2;
      *v17 = v13;
      sub_21DA3123C(&v31, v26);
      sub_21DA3123C(v27, v26);
      sub_21DA3123C(v27, v26);
      sub_21DA3123C(&v31, v26);
      v11 = _s15RemindersUICore26TTRPermissionConfigurationV2eeoiySbAC_ACtFZ_0(&v20, &v16);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v33[24] != 1)
  {
    goto LABEL_10;
  }

  v20 = v27[0];
  v21 = v5;
  v16 = v31;
  *v17 = *v32;
  sub_21DA3123C(&v31, v26);
  sub_21DA3123C(v27, v26);
  sub_21DA3123C(v27, v26);
  sub_21DA3123C(&v31, v26);
  v11 = _s15RemindersUICore26TTRPermissionConfigurationV13PrimaryButtonV2eeoiySbAE_AEtFZ_0(&v20, &v16);
LABEL_9:
  v14 = v11;
  sub_21D0CF7E0(v34, &qword_27CE64CF8);
  sub_21DA264B0(&v31);
  sub_21DA264B0(v27);
  return v14;
}

unint64_t sub_21DA2716C()
{
  result = qword_27CE64BE8;
  if (!qword_27CE64BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64BE8);
  }

  return result;
}

unint64_t sub_21DA271DC()
{
  result = qword_27CE64C08;
  if (!qword_27CE64C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64C08);
  }

  return result;
}

uint64_t _s15RemindersUICore25TTRAccountsListsViewModelC17FallbackSelectionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_21DBF6C1C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v53 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64CD8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - v18;
  v21 = (&v53 + *(v20 + 56) - v18);
  sub_21D0FE734(a1, &v53 - v18, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
  sub_21D0FE734(v56, v21, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0FE734(v19, v13, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
      v23 = v13[11];
      v73[10] = v13[10];
      v73[11] = v23;
      v74[0] = v13[12];
      *(v74 + 10) = *(v13 + 202);
      v24 = v13[7];
      v73[6] = v13[6];
      v73[7] = v24;
      v25 = v13[9];
      v73[8] = v13[8];
      v73[9] = v25;
      v26 = v13[3];
      v73[2] = v13[2];
      v73[3] = v26;
      v27 = v13[5];
      v73[4] = v13[4];
      v73[5] = v27;
      v28 = v13[1];
      v73[0] = *v13;
      v73[1] = v28;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v21[11];
        v30 = v21[9];
        v70 = v21[10];
        v71 = v29;
        v31 = v21[11];
        v72[0] = v21[12];
        *(v72 + 10) = *(v21 + 202);
        v32 = v21[7];
        v33 = v21[5];
        v66 = v21[6];
        v67 = v32;
        v34 = v21[7];
        v35 = v21[9];
        v68 = v21[8];
        v69 = v35;
        v36 = v21[3];
        v37 = v21[1];
        v62 = v21[2];
        v63 = v36;
        v38 = v21[3];
        v39 = v21[5];
        v64 = v21[4];
        v65 = v39;
        v40 = v21[1];
        v61[0] = *v21;
        v61[1] = v40;
        v41 = v13[11];
        v59[10] = v13[10];
        v59[11] = v41;
        v60[0] = v13[12];
        *(v60 + 10) = *(v13 + 202);
        v42 = v13[7];
        v59[6] = v13[6];
        v59[7] = v42;
        v43 = v13[9];
        v59[8] = v13[8];
        v59[9] = v43;
        v44 = v13[3];
        v59[2] = v13[2];
        v59[3] = v44;
        v45 = v13[5];
        v59[4] = v13[4];
        v59[5] = v45;
        v46 = v13[1];
        v59[0] = *v13;
        v59[1] = v46;
        v57[10] = v70;
        v57[11] = v31;
        v58[0] = v21[12];
        *(v58 + 10) = *(v21 + 202);
        v57[6] = v66;
        v57[7] = v34;
        v57[8] = v68;
        v57[9] = v30;
        v57[2] = v62;
        v57[3] = v38;
        v57[4] = v64;
        v57[5] = v33;
        v57[0] = v61[0];
        v57[1] = v37;
        v47 = _s15RemindersUICore25TTRAccountsListsViewModelC17FallbackSelectionO010PinnedListH0O2eeoiySbAG_AGtFZ_0(v59, v57);
        sub_21DA311D4(v61);
        sub_21DA311D4(v73);
LABEL_13:
        sub_21D101450(v19, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
        return v47 & 1;
      }

      sub_21DA311D4(v73);
    }

    else
    {
      sub_21D0FE734(v19, v10, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v49 = v53;
        v48 = v54;
        v50 = v55;
        (*(v54 + 32))(v53, v21, v55);
        v47 = MEMORY[0x223D3F370](v10, v49);
        v51 = *(v48 + 8);
        v51(v49, v50);
        v51(v10, v50);
        goto LABEL_13;
      }

      (*(v54 + 8))(v10, v55);
    }
  }

  else
  {
    sub_21D0FE734(v19, v16, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D100E28(v21, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      v47 = _s15RemindersUICore25TTRAccountsListsViewModelC4ItemO2eeoiySbAE_AEtFZ_0(v16, v7);
      sub_21D101450(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_13;
    }

    sub_21D101450(v16, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  sub_21D0CF7E0(v19, &qword_27CE64CD8);
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_21DA27778(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFB1BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v48[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v48[-1] - v14);
  v16 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0FE734(a1, v18, type metadata accessor for TTRAccountsListsViewModel.Item);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
    case 2:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      result = sub_21D101450(v18, type metadata accessor for TTRAccountsListsViewModel.Item);
      break;
    case 3:
      sub_21D100E28(v18, v8, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      *v12 = **(&unk_27832F608 + v8[*(v6 + 20)]);
      (*(v10 + 104))(v12, *MEMORY[0x277D45A00], v9);
      v42 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_21D2150B8(0, v42[2] + 1, 1, v42);
        *a4 = v42;
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        *a4 = sub_21D2150B8(v44 > 1, v45 + 1, 1, v42);
      }

      sub_21D101450(v8, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v46 = *a4;
      v46[2] = v45 + 1;
      result = (*(v10 + 32))(v46 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v45, v12, v9);
      break;
    case 5:
    case 6:
      v20 = v18[217];
      v21 = v18[216];
      v22 = v18[148];
      v23 = v18[147];
      v24 = v18[146];
      v25 = v18[145];
      v26 = v18[144];
      v27 = v18[120];
      v29 = *(v18 + 5);
      v28 = *(v18 + 6);
      v31 = *(v18 + 1);
      v30 = *(v18 + 2);
      v48[0] = *v18;
      v32 = v48[0];
      v48[1] = v31;
      v48[2] = v30;
      v49 = *(v18 + 24);
      v50 = v29;
      v51 = v28;
      v33 = *(v18 + 72);
      v52 = *(v18 + 56);
      v53 = v33;
      v34 = *(v18 + 104);
      v54 = *(v18 + 88);
      v55 = v34;
      v56 = v27;
      v57 = *(v18 + 8);
      v58 = v26;
      v59 = v25;
      v60 = v24;
      v61 = v23;
      v62 = v22;
      v63 = *(v18 + 152);
      v64 = *(v18 + 168);
      v65 = *(v18 + 184);
      v66 = *(v18 + 200);
      v67 = v21;
      v68 = v20;
      *v15 = v48[0];
      (*(v10 + 104))(v15, *MEMORY[0x277D45A08], v9);
      v35 = *a4;
      v36 = v32;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v35;
      if ((v37 & 1) == 0)
      {
        v35 = sub_21D2150B8(0, v35[2] + 1, 1, v35);
        *a4 = v35;
      }

      v39 = v35[2];
      v38 = v35[3];
      if (v39 >= v38 >> 1)
      {
        *a4 = sub_21D2150B8(v38 > 1, v39 + 1, 1, v35);
      }

      sub_21D1077D8(v48);
      v40 = *a4;
      v40[2] = v39 + 1;
      result = (*(v10 + 32))(v40 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v39, v15, v9);
      break;
    case 15:
    case 16:
      return result;
    default:
      v41 = sub_21DBF56BC();
      result = (*(*(v41 - 8) + 8))(v18, v41);
      break;
  }

  return result;
}

uint64_t sub_21DA27C54(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_maximumItemCountInPinnedListsSection) = 9;

  v3 = sub_21D261FB8();

  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree) = v3;
  *(v1 + 16) = *(a1 + 16);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability) = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_smartListDisplayability);
  v4 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes + 8);
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
  *v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
  *(v5 + 8) = v4;
  sub_21D0D3954(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsHeaderItem, &qword_27CE5A490);
  sub_21D0D3954(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_hashtagsItem, &qword_27CE5A490);
  sub_21D0D3954(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_permissionMainItem, &qword_27CE5A490);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems) = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsItems);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities) = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_accountsCapabilities);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return v1;
}

void _s15RemindersUICore25TTRAccountsListsViewModelC022generateEditablePinnedD007orderediD012capabilities022visiblePredefinedSmartD014reminderCountsSayAA23TTRTreeStorageNodeValueVyAC4ItemOAC13AuxiliaryDataVGGSay19ReminderKitInternal015REMAccountsListwE0C0F0V0I4ListOG_AC20AccountsCapabilitiesVSayAC0N4ListVGAS0xP0VtFZ_0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v118 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v140 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v121 = &v108[-v11];
  MEMORY[0x28223BE20](v12);
  v120 = &v108[-v13];
  v117 = sub_21DBF676C();
  v14 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v108[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v115 = &v108[-v17];
  v18 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
  v123 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v108[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v134 = &v108[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v108[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D178);
  MEMORY[0x28223BE20](v26 - 8);
  v133 = &v108[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v132 = &v108[-v29];
  v138 = sub_21DBF68BC();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v108[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D180);
  MEMORY[0x28223BE20](v31 - 8);
  v119 = &v108[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v33);
  v122 = &v108[-v35];
  v36 = *a2;
  v139 = v7;
  if ((v36 & 0x40) == 0)
  {
    v37 = *(a3 + 16);
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      *&v143 = MEMORY[0x277D84F90];
      sub_21D0F5590(0, v37, 0);
      v39 = v143;
      v40 = a3 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
      v41 = *(v123 + 72);
      do
      {
        sub_21D0FE734(v40, v20, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        sub_21D0FE734(v20, v9, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        type metadata accessor for TTRAccountsListsViewModel.Item(0);
        swift_storeEnumTagMultiPayload();
        sub_21D101450(v20, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v42 = &v9[*(v7 + 52)];
        *v42 = 0;
        v42[8] = -1;
        *&v9[*(v7 + 56)] = v38;
        *&v143 = v39;
        v44 = *(v39 + 16);
        v43 = *(v39 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_21D0F5590(v43 > 1, v44 + 1, 1);
          v39 = v143;
        }

        *(v39 + 16) = v44 + 1;
        sub_21D0D523C(v9, v39 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v44, &qword_27CE58180);
        v40 += v41;
        --v37;
        v7 = v139;
      }

      while (v37);
    }

    return;
  }

  v45 = *(a1 + 16);
  v46 = MEMORY[0x277D84F90];
  if (!v45)
  {
    return;
  }

  v47 = 0;
  v130 = v137 + 16;
  v129 = v137 + 88;
  v128 = *MEMORY[0x277D452D0];
  v127 = (v137 + 96);
  v126 = (v123 + 56);
  v125 = (v123 + 48);
  v112 = *MEMORY[0x277D452D8];
  v111 = (v14 + 16);
  v110 = (v14 + 8);
  v109 = *MEMORY[0x277D452C8];
  v113 = (v140 + 56);
  v114 = (v140 + 48);
  v48 = v138;
  v124 = a1;
  v131 = v45;
  while (2)
  {
    v135 = v46;
    v49 = v47;
    while (1)
    {
      if (v49 >= v45)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (__OFADD__(v49, 1))
      {
        goto LABEL_46;
      }

      v141 = v49 + 1;
      v51 = v137;
      v52 = v136;
      (*(v137 + 16))(v136, a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, v48, v34);
      v53 = (*(v51 + 88))(v52, v48);
      if (v53 != v128)
      {
        if (v53 == v112)
        {
          (*v127)(v52, v48);
          v71 = *v52;
          v72 = v115;
          MEMORY[0x223D3EFA0]();
          v142 = 0;
          v73 = v116;
          v74 = v117;
          (*v111)(v116, v72, v117);
          TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v71, &v142, v73, &v143);
          v75 = v154;
          v76 = v122;
          *(v122 + 10) = v153;
          v76[11] = v75;
          v76[12] = *v155;
          *(v76 + 202) = *&v155[10];
          v77 = v150;
          v76[6] = v149;
          v76[7] = v77;
          v78 = v152;
          v76[8] = v151;
          v76[9] = v78;
          v79 = v146;
          v76[2] = v145;
          v76[3] = v79;
          v80 = v148;
          v76[4] = v147;
          v76[5] = v80;
          v81 = v144;
          *v76 = v143;
          v76[1] = v81;
          type metadata accessor for TTRAccountsListsViewModel.Item(0);
          swift_storeEnumTagMultiPayload();

          v82 = v72;
          v46 = v135;
          v83 = v74;
          v98 = v76;
          (*v110)(v82, v83);
          v99 = v139;
          v84 = v76 + *(v139 + 52);
          *v84 = v71;
          v84[8] = 1;
          *(v76 + *(v99 + 56)) = MEMORY[0x277D84F90];
          (*v113)(v76, 0, 1, v99);
          goto LABEL_35;
        }

        v99 = v139;
        if (v53 == v109)
        {
          (*v127)(v52, v48);
          v85 = *v52;
          v86 = v115;
          MEMORY[0x223D3EF90]();
          v87 = v116;
          v88 = v117;
          (*v111)(v116, v86, v117);
          TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v85, v87, 0, &v143);
          v89 = v154;
          v90 = v122;
          *(v122 + 10) = v153;
          v90[11] = v89;
          v90[12] = *v155;
          *(v90 + 202) = *&v155[10];
          v91 = v150;
          v90[6] = v149;
          v90[7] = v91;
          v92 = v152;
          v90[8] = v151;
          v90[9] = v92;
          v93 = v146;
          v90[2] = v145;
          v90[3] = v93;
          v94 = v148;
          v90[4] = v147;
          v90[5] = v94;
          v95 = v144;
          *v90 = v143;
          v90[1] = v95;
          type metadata accessor for TTRAccountsListsViewModel.Item(0);
          swift_storeEnumTagMultiPayload();

          v96 = v88;
          v98 = v90;
          (*v110)(v86, v96);
          v97 = v90 + *(v99 + 52);
          *v97 = v85;
          v97[8] = 2;
          *(v90 + *(v99 + 56)) = MEMORY[0x277D84F90];
          (*v113)(v90, 0, 1, v99);
          v46 = v135;
          goto LABEL_35;
        }

LABEL_47:
        if (qword_280D0F4D0 != -1)
        {
          swift_once();
        }

        v106 = sub_21DBF84BC();
        __swift_project_value_buffer(v106, qword_280D0F4D8);
        v107 = MEMORY[0x277D84F90];
        sub_21D17716C(MEMORY[0x277D84F90]);
        sub_21D17716C(v107);
        sub_21DAEAB00("Unknown list type", 17, 2);
        __break(1u);
        return;
      }

      (*v127)(v52, v48);
      v54 = *v52;
      v55 = a3;
      v56 = *(a3 + 16);
      if (v56)
      {
        v57 = a3 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
        v58 = *(v123 + 72);
        while (1)
        {
          sub_21D0FE734(v57, v25, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v59 = v18;
          v60 = sub_21DBFA16C();
          v62 = v61;
          if (v60 == sub_21DBFA16C() && v62 == v63)
          {
            break;
          }

          v65 = sub_21DBFC64C();

          if (v65)
          {
            goto LABEL_26;
          }

          sub_21D101450(v25, type metadata accessor for TTRAccountsListsViewModel.SmartList);
          v57 += v58;
          --v56;
          v18 = v59;
          if (!v56)
          {
            goto LABEL_24;
          }
        }

LABEL_26:
        v66 = v132;
        sub_21D100E28(v25, v132, type metadata accessor for TTRAccountsListsViewModel.SmartList);
        v18 = v59;
        (*v126)(v66, 0, 1, v59);
      }

      else
      {
LABEL_24:
        v66 = v132;
        (*v126)(v132, 1, 1, v18);
      }

      v67 = v133;
      sub_21D0D3954(v66, v133, &qword_27CE5D178);
      v68 = (*v125)(v67, 1, v18);
      v69 = v55;
      v70 = v134;
      if (v68 != 1)
      {
        break;
      }

      sub_21D0CF7E0(v66, &qword_27CE5D178);

      v50 = v67;
LABEL_12:
      sub_21D0CF7E0(v50, &qword_27CE5D178);
      v49 = v141;
      v45 = v131;
      v48 = v138;
      a3 = v69;
      a1 = v124;
      if (v141 == v131)
      {
        return;
      }
    }

    sub_21D100E28(v67, v134, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    v46 = v135;
    if (v70[*(v18 + 20)] == 5)
    {

      sub_21D101450(v70, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v50 = v66;
      goto LABEL_12;
    }

    v98 = v122;
    sub_21D0FE734(v70, v122, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    type metadata accessor for TTRAccountsListsViewModel.Item(0);
    swift_storeEnumTagMultiPayload();

    sub_21D101450(v70, type metadata accessor for TTRAccountsListsViewModel.SmartList);
    sub_21D0CF7E0(v66, &qword_27CE5D178);
    v99 = v139;
    v100 = &v98[*(v139 + 52)];
    *v100 = 0;
    v100[8] = -1;
    *&v98[*(v99 + 56)] = MEMORY[0x277D84F90];
    (*v113)(v98, 0, 1, v99);
    a3 = v69;
    a1 = v124;
LABEL_35:
    v101 = v119;
    sub_21D0D3954(v98, v119, &qword_27CE5D180);
    if ((*v114)(v101, 1, v99) == 1)
    {
      sub_21D0CF7E0(v98, &qword_27CE5D180);
      sub_21D0CF7E0(v101, &qword_27CE5D180);
    }

    else
    {
      v102 = v101;
      v103 = v120;
      sub_21D0D523C(v102, v120, &qword_27CE58180);
      sub_21D0D3954(v103, v121, &qword_27CE58180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_21D0FBE34(0, v46[2] + 1, 1, v46);
      }

      v105 = v46[2];
      v104 = v46[3];
      if (v105 >= v104 >> 1)
      {
        v46 = sub_21D0FBE34(v104 > 1, v105 + 1, 1, v46);
      }

      sub_21D0CF7E0(v120, &qword_27CE58180);
      sub_21D0CF7E0(v122, &qword_27CE5D180);
      v46[2] = v105 + 1;
      sub_21D0D523C(v121, v46 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v105, &qword_27CE58180);
    }

    v48 = v138;
    v45 = v131;
    v47 = v141;
    if (v141 != v131)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_21DA28F9C()
{
  result = qword_27CE64C60;
  if (!qword_27CE64C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64C60);
  }

  return result;
}

unint64_t sub_21DA29038()
{
  result = qword_27CE64C78;
  if (!qword_27CE64C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64C78);
  }

  return result;
}

unint64_t sub_21DA29090()
{
  result = qword_27CE64C80;
  if (!qword_27CE64C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64C80);
  }

  return result;
}

unint64_t sub_21DA290E8()
{
  result = qword_27CE64C88;
  if (!qword_27CE64C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64C88);
  }

  return result;
}

unint64_t sub_21DA29184()
{
  result = qword_27CE64C98;
  if (!qword_27CE64C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64C98);
  }

  return result;
}

unint64_t sub_21DA291DC()
{
  result = qword_27CE64CA0;
  if (!qword_27CE64CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64CA0);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.PinnedList(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = &v21[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      *(a1 + 2) = a2[2];
      *(a1 + 24) = *(a2 + 3);
      v8 = a2[6];
      *(a1 + 5) = a2[5];
      *(a1 + 6) = v8;
      v9 = a2[8];
      *(a1 + 7) = a2[7];
      *(a1 + 8) = v9;
      v10 = a2[9];
      v11 = a2[10];
      v12 = a2[11];
      v13 = a2[12];
      v35 = a2[14];
      v36 = a2[13];
      v34 = *(a2 + 120);
      v14 = v6;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D0FB960(v10, v11, v12, v13, v36, v35, v34);
      *(a1 + 9) = v10;
      *(a1 + 10) = v11;
      *(a1 + 11) = v12;
      *(a1 + 12) = v13;
      *(a1 + 13) = v36;
      *(a1 + 14) = v35;
      a1[120] = v34;
      v15 = a2[16];
      v16 = a2[17];
      LOBYTE(v9) = *(a2 + 144);
      sub_21D0FB9BC(v15, v16, v9);
      *(a1 + 16) = v15;
      *(a1 + 17) = v16;
      a1[144] = v9;
      *(a1 + 145) = *(a2 + 145);
      *(a1 + 152) = *(a2 + 19);
      v17 = a2[22];
      *(a1 + 21) = a2[21];
      *(a1 + 22) = v17;
      v18 = a2[24];
      *(a1 + 23) = a2[23];
      *(a1 + 24) = v18;
      v19 = a2[26];
      *(a1 + 25) = a2[25];
      *(a1 + 26) = v19;
      *(a1 + 108) = *(a2 + 108);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v20 = v18;
    }

    else
    {
      v22 = sub_21DBF56BC();
      (*(*(v22 - 8) + 16))(a1, a2, v22);
      v23 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v23[5]] = *(a2 + v23[5]);
      *&a1[v23[6]] = *(a2 + v23[6]);
      v24 = v23[7];
      v25 = &a1[v24];
      v26 = (a2 + v24);
      v28 = *v26;
      v27 = v26[1];
      *v25 = v28;
      *(v25 + 1) = v27;
      *&a1[v23[8]] = *(a2 + v23[8]);
      a1[v23[9]] = *(a2 + v23[9]);
      v29 = v23[10];
      v30 = &a1[v29];
      v31 = (a2 + v29);
      v32 = v31[1];
      *v30 = *v31;
      *(v30 + 1) = v32;
      sub_21DBF8E0C();
    }

    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.PinnedList(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      v5 = *(a2 + 72);
      v6 = *(a2 + 80);
      v7 = *(a2 + 88);
      v8 = *(a2 + 96);
      v9 = *(a2 + 104);
      v26 = *(a2 + 112);
      v25 = *(a2 + 120);
      v10 = v4;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D0FB960(v5, v6, v7, v8, v9, v26, v25);
      *(a1 + 72) = v5;
      *(a1 + 80) = v6;
      *(a1 + 88) = v7;
      *(a1 + 96) = v8;
      *(a1 + 104) = v9;
      *(a1 + 112) = v26;
      *(a1 + 120) = v25;
      v11 = *(a2 + 128);
      v12 = *(a2 + 136);
      v13 = *(a2 + 144);
      sub_21D0FB9BC(v11, v12, v13);
      *(a1 + 128) = v11;
      *(a1 + 136) = v12;
      *(a1 + 144) = v13;
      *(a1 + 145) = *(a2 + 145);
      *(a1 + 146) = *(a2 + 146);
      *(a1 + 147) = *(a2 + 147);
      *(a1 + 148) = *(a2 + 148);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      v14 = *(a2 + 192);
      *(a1 + 192) = v14;
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v15 = v14;
    }

    else
    {
      v16 = sub_21DBF56BC();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v17 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      *(a1 + v17[5]) = *(a2 + v17[5]);
      *(a1 + v17[6]) = *(a2 + v17[6]);
      v18 = v17[7];
      v19 = (a1 + v18);
      v20 = (a2 + v18);
      *v19 = *v20;
      v19[1] = v20[1];
      *(a1 + v17[8]) = *(a2 + v17[8]);
      *(a1 + v17[9]) = *(a2 + v17[9]);
      v21 = v17[10];
      v22 = (a1 + v21);
      v23 = (a2 + v21);
      *v22 = *v23;
      v22[1] = v23[1];
      sub_21DBF8E0C();
    }

    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for TTRAccountsListsViewModel.PinnedList(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF56BC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    a1[v9[5]] = a2[v9[5]];
    *&a1[v9[6]] = *&a2[v9[6]];
    *&a1[v9[7]] = *&a2[v9[7]];
    *&a1[v9[8]] = *&a2[v9[8]];
    a1[v9[9]] = a2[v9[9]];
    *&a1[v9[10]] = *&a2[v9[10]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

_BYTE *assignWithTake for TTRAccountsListsViewModel.PinnedList(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF56BC();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    a1[v9[5]] = a2[v9[5]];
    *&a1[v9[6]] = *&a2[v9[6]];
    *&a1[v9[7]] = *&a2[v9[7]];
    *&a1[v9[8]] = *&a2[v9[8]];
    a1[v9[9]] = a2[v9[9]];
    *&a1[v9[10]] = *&a2[v9[10]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.SmartList(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    v9 = a3[7];
    v10 = a3[8];
    v11 = (a1 + v9);
    v12 = (a2 + v9);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;
    *(a1 + v10) = *(a2 + v10);
    v14 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    v15 = (a1 + v14);
    v16 = (a2 + v14);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.SmartList(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  sub_21DBF8E0C();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v10 = a3[10];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTRAccountsListsViewModel.SmartList(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.SmartList(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  *v9 = v12;
  v9[1] = v11;

  v13 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v13) = *(a2 + v13);
  v14 = a3[10];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v18 = *v16;
  v17 = v16[1];
  *v15 = v18;
  v15[1] = v17;

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  v13 = *(a2 + 120);
  sub_21D0FB960(v7, v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = v13;
  sub_21D1078C0(v14, v15, v16, v17, v18, v19, v20);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  LOBYTE(v9) = *(a2 + 144);
  sub_21D0FB9BC(v21, v22, v9);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v9;
  sub_21D0FB9F4(v23, v24, v25);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  sub_21DBF8E0C();

  *(a1 + 176) = *(a2 + 176);
  sub_21DBF8E0C();

  *(a1 + 184) = *(a2 + 184);
  sub_21DBF8E0C();

  v26 = *(a1 + 192);
  v27 = *(a2 + 192);
  *(a1 + 192) = v27;
  v28 = v27;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  sub_21DBF8E0C();

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.List(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  v8 = *(a2 + 120);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v8;
  sub_21D1078C0(v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a2 + 144);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  sub_21D0FB9F4(v17, v18, v19);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 168) = *(a2 + 168);

  v20 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);

  v21 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v21;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  return a1;
}

void destroy for TTRAccountsListsViewModel.Group(uint64_t a1)
{

  v2 = *(a1 + 48);
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.Group(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v5;
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.Group(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a1 + 48);
  *(a1 + 48) = v4;
  v6 = v4;

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.Group(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsViewModel.Group(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for TTRAccountsListsViewModel.Group(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.Account(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  v6 = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 31) = *(a2 + 31);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.Account(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 31) = *(a2 + 31);
  return a1;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.PermissionRequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  sub_21D5D5C84(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.PermissionRequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  sub_21D5D5C84(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  sub_21D5D60A0(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, v22);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.PermissionRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  sub_21D5D60A0(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, v15);
  return a1;
}

uint64_t sub_21DA2A7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_21DA2A840(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21DA2A8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_21DA2A908(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_21DA2A96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_21DA2A9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.HashtagsSection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF56BC();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
      memcpy(v10, v11, *(*(v14 - 8) + 64));
    }

    else
    {
      v8(v10, v11, v7);
      *&v10[*(v12 + 20)] = *&v11[*(v12 + 20)];
      v10[*(v12 + 24)] = v11[*(v12 + 24)];
      v16 = *(v13 + 56);
      sub_21DBF8E0C();
      v16(v10, 0, 1, v12);
    }
  }

  return a1;
}

uint64_t destroy for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v6 = a1 + *(a2 + 20);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {
    v5(v6, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v7(v9, v10, v6);
    *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    v14 = *(v12 + 56);
    sub_21DBF8E0C();
    v14(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v19 = *(v6 - 8);
  v7 = *(v19 + 24);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v20 = a1;
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      v7(v9, v10, v6);
      *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
      sub_21DBF8E0C();

      v9[*(v11 + 24)] = v10[*(v11 + 24)];
      return v20;
    }

    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
    memcpy(v9, v10, *(*(v17 - 8) + 64));
    return v20;
  }

  (*(v19 + 16))(v9, v10, v6);
  *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
  v9[*(v11 + 24)] = v10[*(v11 + 24)];
  v16 = *(v12 + 56);
  sub_21DBF8E0C();
  v16(v9, 0, 1, v11);
  return v20;
}

uint64_t initializeWithTake for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v7(v9, v10, v6);
    *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.HashtagsSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v18 = *(v6 - 8);
  v7 = *(v18 + 40);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v19 = a1;
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      v7(v9, v10, v6);
      *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];

      v9[*(v11 + 24)] = v10[*(v11 + 24)];
      return v19;
    }

    sub_21D101450(v9, type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
    memcpy(v9, v10, *(*(v16 - 8) + 64));
    return v19;
  }

  (*(v18 + 32))(v9, v10, v6);
  *&v9[*(v11 + 20)] = *&v10[*(v11 + 20)];
  v9[*(v11 + 24)] = v10[*(v11 + 24)];
  (*(v12 + 56))(v9, 0, 1, v11);
  return v19;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.HashtagFilterOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.HashtagFilterOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void *sub_21DA2B6D4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21DA2B7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF56BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_31Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21DBF56BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void *initializeWithCopy for TTRAccountsListsViewModel.RecentlyDeletedList(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.RecentlyDeletedList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.RecentlyDeletedList(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  *(a1 + 24) = a2[3];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.ItemIdentifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_getEnumCaseMultiPayload();
    v6 = sub_21DBF56BC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v3 = sub_21DBF56BC();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    swift_getEnumCaseMultiPayload();
    v4 = sub_21DBF56BC();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = sub_21DBF56BC();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    swift_getEnumCaseMultiPayload();
    v4 = sub_21DBF56BC();
    (*(*(v4 - 8) + 32))(a1, a2, v4);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = *(a3 - 8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v7 = sub_21DBF56BC();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_20;
      case 2u:
        v34 = sub_21DBF56BC();
        (*(*(v34 - 8) + 16))(a1, a2, v34);
        v35 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v35 + 20)] = *&a2[*(v35 + 20)];
        a1[*(v35 + 24)] = a2[*(v35 + 24)];
        sub_21DBF8E0C();
        goto LABEL_20;
      case 3u:
        v38 = sub_21DBF56BC();
        (*(*(v38 - 8) + 16))(a1, a2, v38);
        v39 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v39[5]] = a2[v39[5]];
        *&a1[v39[6]] = *&a2[v39[6]];
        v40 = v39[7];
        v41 = &a1[v40];
        v42 = &a2[v40];
        v44 = *v42;
        v43 = *(v42 + 1);
        *v41 = v44;
        *(v41 + 1) = v43;
        *&a1[v39[8]] = *&a2[v39[8]];
        a1[v39[9]] = a2[v39[9]];
        v45 = v39[10];
        v46 = &a1[v45];
        v47 = &a2[v45];
        v48 = *(v47 + 1);
        *v46 = *v47;
        *(v46 + 1) = v48;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_20;
      case 4u:
        v14 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v14;
        v15 = *(a2 + 2);
        *(a1 + 2) = v15;
        a1[24] = a2[24];
        a1[25] = a2[25];
        *(a1 + 26) = *(a2 + 26);
        *(a1 + 15) = *(a2 + 15);
        sub_21DBF8E0C();
        v16 = v15;
        goto LABEL_20;
      case 5u:
      case 6u:
        v53 = *a2;
        v54 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v54;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 24);
        v55 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v55;
        v56 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v56;
        v57 = *(a2 + 9);
        v58 = *(a2 + 10);
        v59 = *(a2 + 11);
        v60 = *(a2 + 12);
        v75 = *(a2 + 14);
        v77 = *(a2 + 13);
        v73 = a2[120];
        v61 = v53;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v57, v58, v59, v60, v77, v75, v73);
        *(a1 + 9) = v57;
        *(a1 + 10) = v58;
        *(a1 + 11) = v59;
        *(a1 + 12) = v60;
        *(a1 + 13) = v77;
        *(a1 + 14) = v75;
        a1[120] = v73;
        v62 = *(a2 + 16);
        v63 = *(a2 + 17);
        LOBYTE(v56) = a2[144];
        sub_21D0FB9BC(v62, v63, v56);
        *(a1 + 16) = v62;
        *(a1 + 17) = v63;
        a1[144] = v56;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 152);
        v64 = *(a2 + 22);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = v64;
        v65 = *(a2 + 24);
        *(a1 + 23) = *(a2 + 23);
        *(a1 + 24) = v65;
        v66 = *(a2 + 26);
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = v66;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v67 = v65;
        sub_21DBF8E0C();
        goto LABEL_20;
      case 7u:
        v49 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v49;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v51 = *(a2 + 6);
        v50 = *(a2 + 7);
        *(a1 + 6) = v51;
        *(a1 + 7) = v50;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v52 = v51;
        goto LABEL_20;
      case 9u:
        v25 = *a2;
        v26 = *(a2 + 1);
        v27 = *(a2 + 2);
        v28 = *(a2 + 3);
        v29 = *(a2 + 4);
        v30 = *(a2 + 5);
        v31 = *(a2 + 6);
        v71 = *(a2 + 8);
        v72 = *(a2 + 9);
        v74 = *(a2 + 10);
        v76 = a2[88];
        v32 = *a2;
        v33 = *(a2 + 7);
        sub_21D5D5C84(v32, v26, v27, v28, v29, v30, v31, v33, v71, v72, v74, v76);
        *a1 = v25;
        *(a1 + 1) = v26;
        *(a1 + 2) = v27;
        *(a1 + 3) = v28;
        *(a1 + 4) = v29;
        *(a1 + 5) = v30;
        *(a1 + 6) = v31;
        *(a1 + 7) = v33;
        *(a1 + 8) = v71;
        *(a1 + 9) = v72;
        *(a1 + 10) = v74;
        a1[88] = v76;
        goto LABEL_20;
      case 0xBu:
        v13 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v13;
        sub_21DBF8E0C();
        goto LABEL_20;
      case 0xCu:
        v17 = sub_21DBF56BC();
        v18 = *(*(v17 - 8) + 16);
        v18(a1, a2, v17);
        v19 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v20 = &a1[v19];
        v21 = &a2[v19];
        v22 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v21, 1, v22))
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
          memcpy(v20, v21, *(*(v24 - 8) + 64));
        }

        else
        {
          v18(v20, v21, v17);
          *&v20[*(v22 + 20)] = *&v21[*(v22 + 20)];
          v20[*(v22 + 24)] = v21[*(v22 + 24)];
          v70 = *(v23 + 56);
          sub_21DBF8E0C();
          v70(v20, 0, 1, v22);
        }

        goto LABEL_20;
      case 0xDu:
        v68 = sub_21DBF56BC();
        (*(*(v68 - 8) + 16))(a1, a2, v68);
        v69 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v69 + 20)] = *&a2[*(v69 + 20)];
        a1[*(v69 + 24)] = a2[*(v69 + 24)];
        sub_21DBF8E0C();
        goto LABEL_20;
      case 0xEu:
        v9 = *a2;
        v10 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v10;
        v11 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v11;
        v12 = v9;
        sub_21DBF8E0C();
LABEL_20:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v36 = *(v6 + 64);

        return memcpy(a1, a2, v36);
    }
  }

  v8 = *a2;
  *a1 = *a2;
  a1 = (v8 + ((v5 + 16) & ~v5));

  return a1;
}

char *assignWithCopy for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v6 = sub_21DBF56BC();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        goto LABEL_19;
      case 2u:
        v28 = sub_21DBF56BC();
        (*(*(v28 - 8) + 16))(a1, a2, v28);
        v29 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v29 + 20)] = *&a2[*(v29 + 20)];
        a1[*(v29 + 24)] = a2[*(v29 + 24)];
        sub_21DBF8E0C();
        goto LABEL_19;
      case 3u:
        v32 = sub_21DBF56BC();
        (*(*(v32 - 8) + 16))(a1, a2, v32);
        v33 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v33[5]] = a2[v33[5]];
        *&a1[v33[6]] = *&a2[v33[6]];
        v34 = v33[7];
        v35 = &a1[v34];
        v36 = &a2[v34];
        *v35 = *v36;
        *(v35 + 1) = *(v36 + 1);
        *&a1[v33[8]] = *&a2[v33[8]];
        a1[v33[9]] = a2[v33[9]];
        v37 = v33[10];
        v38 = &a1[v37];
        v39 = &a2[v37];
        *v38 = *v39;
        *(v38 + 1) = *(v39 + 1);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_19;
      case 4u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v9 = *(a2 + 2);
        *(a1 + 2) = v9;
        a1[24] = a2[24];
        a1[25] = a2[25];
        a1[26] = a2[26];
        a1[27] = a2[27];
        a1[28] = a2[28];
        a1[29] = a2[29];
        a1[30] = a2[30];
        a1[31] = a2[31];
        sub_21DBF8E0C();
        v10 = v9;
        goto LABEL_19;
      case 5u:
      case 6u:
        v42 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        v43 = *(a2 + 9);
        v44 = *(a2 + 10);
        v45 = *(a2 + 11);
        v46 = *(a2 + 12);
        v60 = *(a2 + 14);
        v62 = *(a2 + 13);
        v58 = a2[120];
        v47 = v42;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v43, v44, v45, v46, v62, v60, v58);
        *(a1 + 9) = v43;
        *(a1 + 10) = v44;
        *(a1 + 11) = v45;
        *(a1 + 12) = v46;
        *(a1 + 13) = v62;
        *(a1 + 14) = v60;
        a1[120] = v58;
        v48 = *(a2 + 16);
        v49 = *(a2 + 17);
        v50 = a2[144];
        sub_21D0FB9BC(v48, v49, v50);
        *(a1 + 16) = v48;
        *(a1 + 17) = v49;
        a1[144] = v50;
        a1[145] = a2[145];
        a1[146] = a2[146];
        a1[147] = a2[147];
        a1[148] = a2[148];
        *(a1 + 19) = *(a2 + 19);
        *(a1 + 20) = *(a2 + 20);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = *(a2 + 22);
        *(a1 + 23) = *(a2 + 23);
        v51 = *(a2 + 24);
        *(a1 + 24) = v51;
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = *(a2 + 26);
        a1[216] = a2[216];
        a1[217] = a2[217];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v52 = v51;
        sub_21DBF8E0C();
        goto LABEL_19;
      case 7u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v40 = *(a2 + 6);
        *(a1 + 6) = v40;
        *(a1 + 7) = *(a2 + 7);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v41 = v40;
        goto LABEL_19;
      case 9u:
        v19 = *a2;
        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        v22 = *(a2 + 3);
        v23 = *(a2 + 4);
        v24 = *(a2 + 5);
        v25 = *(a2 + 6);
        v56 = *(a2 + 8);
        v57 = *(a2 + 9);
        v59 = *(a2 + 10);
        v61 = a2[88];
        v26 = *a2;
        v27 = *(a2 + 7);
        sub_21D5D5C84(v26, v20, v21, v22, v23, v24, v25, v27, v56, v57, v59, v61);
        *a1 = v19;
        *(a1 + 1) = v20;
        *(a1 + 2) = v21;
        *(a1 + 3) = v22;
        *(a1 + 4) = v23;
        *(a1 + 5) = v24;
        *(a1 + 6) = v25;
        *(a1 + 7) = v27;
        *(a1 + 8) = v56;
        *(a1 + 9) = v57;
        *(a1 + 10) = v59;
        a1[88] = v61;
        goto LABEL_19;
      case 0xBu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        sub_21DBF8E0C();
        goto LABEL_19;
      case 0xCu:
        v11 = sub_21DBF56BC();
        v12 = *(*(v11 - 8) + 16);
        v12(a1, a2, v11);
        v13 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v14 = &a1[v13];
        v15 = &a2[v13];
        v16 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v15, 1, v16))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
          memcpy(v14, v15, *(*(v18 - 8) + 64));
        }

        else
        {
          v12(v14, v15, v11);
          *&v14[*(v16 + 20)] = *&v15[*(v16 + 20)];
          v14[*(v16 + 24)] = v15[*(v16 + 24)];
          v55 = *(v17 + 56);
          sub_21DBF8E0C();
          v55(v14, 0, 1, v16);
        }

        goto LABEL_19;
      case 0xDu:
        v53 = sub_21DBF56BC();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        v54 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v54 + 20)] = *&a2[*(v54 + 20)];
        a1[*(v54 + 24)] = a2[*(v54 + 24)];
        sub_21DBF8E0C();
        goto LABEL_19;
      case 0xEu:
        v7 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v8 = v7;
        sub_21DBF8E0C();
LABEL_19:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v30 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v30);
    }
  }

  return a1;
}

char *initializeWithTake for TTRAccountsListsViewModel.Item(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload > 11)
    {
      if (EnumCaseMultiPayload == 12)
      {
        v14 = sub_21DBF56BC();
        v15 = *(*(v14 - 8) + 32);
        v15(a1, a2, v14);
        v16 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v17 = &a1[v16];
        v18 = &a2[v16];
        v19 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          v15(v17, v18, v14);
          *&v17[*(v19 + 20)] = *&v18[*(v19 + 20)];
          v17[*(v19 + 24)] = v18[*(v19 + 24)];
          (*(v20 + 56))(v17, 0, 1, v19);
        }

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 13)
      {
        v10 = sub_21DBF56BC();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v11 + 20)] = *&a2[*(v11 + 20)];
        a1[*(v11 + 24)] = a2[*(v11 + 24)];
        goto LABEL_23;
      }
    }

    else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 10)
    {
      goto LABEL_4;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_21DBF56BC();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
      *&a1[*(v13 + 20)] = *&a2[*(v13 + 20)];
      a1[*(v13 + 24)] = a2[*(v13 + 24)];
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = sub_21DBF56BC();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      v9 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v9[5]] = a2[v9[5]];
      *&a1[v9[6]] = *&a2[v9[6]];
      *&a1[v9[7]] = *&a2[v9[7]];
      *&a1[v9[8]] = *&a2[v9[8]];
      a1[v9[9]] = a2[v9[9]];
      *&a1[v9[10]] = *&a2[v9[10]];
      goto LABEL_23;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_4:
    v7 = sub_21DBF56BC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_23:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v22 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v22);
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.AuxiliaryData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v3 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v7 = *a2;
      sub_21D0FF19C(*a2, *(a2 + 8));
      *a1 = v7;
      *(a1 + 8) = v3;
    }
  }

  else if (v3 == 255)
  {
    sub_21D104D50(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v4 = *a2;
    sub_21D0FF19C(*a2, *(a2 + 8));
    v5 = *a1;
    *a1 = v4;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    sub_21D0FF670(v5, v6);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsViewModel.AuxiliaryData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAccountsListsViewModel.AuxiliaryData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRAccountsListsViewModel.AuxiliaryData.Model(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D0FF19C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D0FF670(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsViewModel.AuxiliaryData.Model(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D0FF670(v4, v5);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = &v24[(v5 + 16) & ~v5];
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = sub_21DBF6C1C();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      v10 = *(a2 + 3);
      v11 = *(a2 + 4);
      v12 = *(a2 + 5);
      v13 = *(a2 + 6);
      v14 = *(a2 + 7);
      v89 = *(a2 + 9);
      v90 = *(a2 + 10);
      v91 = *(a2 + 11);
      v92 = *(a2 + 12);
      v93 = *(a2 + 13);
      v94 = *(a2 + 14);
      v95 = *(a2 + 15);
      v96 = *(a2 + 16);
      v97 = *(a2 + 17);
      v98 = *(a2 + 18);
      v99 = *(a2 + 19);
      v100 = *(a2 + 20);
      v101 = *(a2 + 21);
      v102 = *(a2 + 22);
      v103 = *(a2 + 23);
      v104 = *(a2 + 24);
      v106 = *(a2 + 25);
      v109 = *(a2 + 26);
      v112 = *(a2 + 108);
      v15 = *(a2 + 8);
      v16 = v7;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      v22 = v13;
      v23 = v14;
      sub_21DA30840(v7, v8, v9, v10, v11, v12, v13, v14, v15, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v106, v109, v112);
      *a1 = v16;
      *(a1 + 1) = v17;
      *(a1 + 2) = v18;
      *(a1 + 3) = v19;
      *(a1 + 4) = v20;
      *(a1 + 5) = v21;
      *(a1 + 6) = v22;
      *(a1 + 7) = v23;
      *(a1 + 8) = v15;
      *(a1 + 9) = v89;
      *(a1 + 10) = v90;
      *(a1 + 11) = v91;
      *(a1 + 12) = v92;
      *(a1 + 13) = v93;
      *(a1 + 14) = v94;
      *(a1 + 15) = v95;
      *(a1 + 16) = v96;
      *(a1 + 17) = v97;
      *(a1 + 18) = v98;
      *(a1 + 19) = v99;
      *(a1 + 20) = v100;
      *(a1 + 21) = v101;
      *(a1 + 22) = v102;
      *(a1 + 23) = v103;
      *(a1 + 24) = v104;
      *(a1 + 25) = v106;
      *(a1 + 26) = v109;
      *(a1 + 108) = v112;
    }

    else
    {
      v26 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 1u:
        case 8u:
        case 0xAu:
          v27 = sub_21DBF56BC();
          (*(*(v27 - 8) + 16))(a1, a2, v27);
          goto LABEL_22;
        case 2u:
          v53 = sub_21DBF56BC();
          (*(*(v53 - 8) + 16))(a1, a2, v53);
          v54 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          *&a1[*(v54 + 20)] = *&a2[*(v54 + 20)];
          a1[*(v54 + 24)] = a2[*(v54 + 24)];
          sub_21DBF8E0C();
          goto LABEL_22;
        case 3u:
          v55 = sub_21DBF56BC();
          (*(*(v55 - 8) + 16))(a1, a2, v55);
          v56 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
          a1[v56[5]] = a2[v56[5]];
          *&a1[v56[6]] = *&a2[v56[6]];
          v57 = v56[7];
          v58 = &a1[v57];
          v59 = &a2[v57];
          v61 = *v59;
          v60 = *(v59 + 1);
          *v58 = v61;
          *(v58 + 1) = v60;
          *&a1[v56[8]] = *&a2[v56[8]];
          a1[v56[9]] = a2[v56[9]];
          v62 = v56[10];
          v63 = &a1[v62];
          v64 = &a2[v62];
          v65 = *(v64 + 1);
          *v63 = *v64;
          *(v63 + 1) = v65;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          goto LABEL_22;
        case 4u:
          v33 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v33;
          v34 = *(a2 + 2);
          *(a1 + 2) = v34;
          a1[24] = a2[24];
          a1[25] = a2[25];
          *(a1 + 26) = *(a2 + 26);
          *(a1 + 15) = *(a2 + 15);
          sub_21DBF8E0C();
          v35 = v34;
          goto LABEL_22;
        case 5u:
        case 6u:
          v70 = *a2;
          v71 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v71;
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 24) = *(a2 + 24);
          v72 = *(a2 + 6);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = v72;
          v73 = *(a2 + 8);
          *(a1 + 7) = *(a2 + 7);
          *(a1 + 8) = v73;
          v74 = *(a2 + 9);
          v75 = *(a2 + 10);
          v76 = *(a2 + 11);
          v77 = *(a2 + 12);
          v111 = *(a2 + 14);
          v114 = *(a2 + 13);
          v108 = a2[120];
          v78 = v70;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21D0FB960(v74, v75, v76, v77, v114, v111, v108);
          *(a1 + 9) = v74;
          *(a1 + 10) = v75;
          *(a1 + 11) = v76;
          *(a1 + 12) = v77;
          *(a1 + 13) = v114;
          *(a1 + 14) = v111;
          a1[120] = v108;
          v79 = *(a2 + 16);
          v80 = *(a2 + 17);
          LOBYTE(v73) = a2[144];
          sub_21D0FB9BC(v79, v80, v73);
          *(a1 + 16) = v79;
          *(a1 + 17) = v80;
          a1[144] = v73;
          *(a1 + 145) = *(a2 + 145);
          *(a1 + 152) = *(a2 + 152);
          v81 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v81;
          v82 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v82;
          v83 = *(a2 + 26);
          *(a1 + 25) = *(a2 + 25);
          *(a1 + 26) = v83;
          *(a1 + 108) = *(a2 + 108);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v84 = v82;
          sub_21DBF8E0C();
          goto LABEL_22;
        case 7u:
          v66 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v66;
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 4) = *(a2 + 4);
          a1[40] = a2[40];
          v68 = *(a2 + 6);
          v67 = *(a2 + 7);
          *(a1 + 6) = v68;
          *(a1 + 7) = v67;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v69 = v68;
          goto LABEL_22;
        case 9u:
          v44 = *a2;
          v45 = *(a2 + 1);
          v46 = *(a2 + 2);
          v47 = *(a2 + 3);
          v48 = *(a2 + 4);
          v49 = *(a2 + 5);
          v50 = *(a2 + 6);
          v105 = *(a2 + 8);
          v107 = *(a2 + 9);
          v110 = *(a2 + 10);
          v113 = a2[88];
          v51 = *a2;
          v52 = *(a2 + 7);
          sub_21D5D5C84(v51, v45, v46, v47, v48, v49, v50, v52, v105, v107, v110, v113);
          *a1 = v44;
          *(a1 + 1) = v45;
          *(a1 + 2) = v46;
          *(a1 + 3) = v47;
          *(a1 + 4) = v48;
          *(a1 + 5) = v49;
          *(a1 + 6) = v50;
          *(a1 + 7) = v52;
          *(a1 + 8) = v105;
          *(a1 + 9) = v107;
          *(a1 + 10) = v110;
          a1[88] = v113;
          goto LABEL_22;
        case 0xBu:
          v32 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v32;
          sub_21DBF8E0C();
          goto LABEL_22;
        case 0xCu:
          v36 = sub_21DBF56BC();
          v37 = *(*(v36 - 8) + 16);
          v37(a1, a2, v36);
          v38 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v39 = &a1[v38];
          v40 = &a2[v38];
          v41 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v42 = *(v41 - 8);
          if ((*(v42 + 48))(v40, 1, v41))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
            memcpy(v39, v40, *(*(v43 - 8) + 64));
          }

          else
          {
            v37(v39, v40, v36);
            *&v39[*(v41 + 20)] = *&v40[*(v41 + 20)];
            v39[*(v41 + 24)] = v40[*(v41 + 24)];
            v87 = *(v42 + 56);
            sub_21DBF8E0C();
            v87(v39, 0, 1, v41);
          }

          goto LABEL_22;
        case 0xDu:
          v85 = sub_21DBF56BC();
          (*(*(v85 - 8) + 16))(a1, a2, v85);
          v86 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *&a1[*(v86 + 20)] = *&a2[*(v86 + 20)];
          a1[*(v86 + 24)] = a2[*(v86 + 24)];
          sub_21DBF8E0C();
          goto LABEL_22;
        case 0xEu:
          v28 = *a2;
          v29 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v29;
          v30 = *(a2 + 3);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = v30;
          v31 = v28;
          sub_21DBF8E0C();
LABEL_22:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v26 - 8) + 64));
          break;
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for TTRAccountsListsViewModel.FallbackSelection(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v3 = sub_21DBF6C1C();
LABEL_9:
      v4 = *(*(v3 - 8) + 8);

      v4(a1, v3);
      break;
    case 1:
      sub_21DA309F0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216));
      break;
    case 0:
      type metadata accessor for TTRAccountsListsViewModel.Item(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 1u:
        case 8u:
        case 0xAu:
          v3 = sub_21DBF56BC();
          goto LABEL_9;
        case 2u:
          v5 = sub_21DBF56BC();
          (*(*(v5 - 8) + 8))(a1, v5);
          type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          goto LABEL_24;
        case 3u:
          v11 = sub_21DBF56BC();
          (*(*(v11 - 8) + 8))(a1, v11);
          type metadata accessor for TTRAccountsListsViewModel.SmartList(0);

          goto LABEL_24;
        case 4u:

          v10 = *(a1 + 16);
          goto LABEL_20;
        case 5u:
        case 6u:

          sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
          sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));

          goto LABEL_24;
        case 7u:

          v10 = *(a1 + 48);
LABEL_20:

          return;
        case 9u:
          sub_21D5D60A0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
          return;
        case 0xBu:
          goto LABEL_24;
        case 0xCu:
          v6 = sub_21DBF56BC();
          v7 = *(*(v6 - 8) + 8);
          v7(a1, v6);
          v8 = a1 + *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v9 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          if ((*(*(v9 - 8) + 48))(v8, 1, v9))
          {
            return;
          }

          v7(v8, v6);
LABEL_24:

          break;
        case 0xDu:
          v12 = sub_21DBF56BC();
          (*(*(v12 - 8) + 8))(a1, v12);
          type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          goto LABEL_24;
        case 0xEu:

          goto LABEL_24;
        default:
          return;
      }

      break;
  }
}

char *initializeWithCopy for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v22 = sub_21DBF6C1C();
    (*(*(v22 - 8) + 16))(a1, a2, v22);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 6);
    v12 = *(a2 + 7);
    v86 = *(a2 + 9);
    v87 = *(a2 + 10);
    v88 = *(a2 + 11);
    v89 = *(a2 + 12);
    v90 = *(a2 + 13);
    v91 = *(a2 + 14);
    v92 = *(a2 + 15);
    v93 = *(a2 + 16);
    v94 = *(a2 + 17);
    v95 = *(a2 + 18);
    v96 = *(a2 + 19);
    v97 = *(a2 + 20);
    v98 = *(a2 + 21);
    v99 = *(a2 + 22);
    v100 = *(a2 + 23);
    v101 = *(a2 + 24);
    v103 = *(a2 + 25);
    v106 = *(a2 + 26);
    v109 = *(a2 + 108);
    v13 = *(a2 + 8);
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    sub_21DA30840(v5, v6, v7, v8, v9, v10, v11, v12, v13, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v103, v106, v109);
    *a1 = v14;
    *(a1 + 1) = v15;
    *(a1 + 2) = v16;
    *(a1 + 3) = v17;
    *(a1 + 4) = v18;
    *(a1 + 5) = v19;
    *(a1 + 6) = v20;
    *(a1 + 7) = v21;
    *(a1 + 8) = v13;
    *(a1 + 9) = v86;
    *(a1 + 10) = v87;
    *(a1 + 11) = v88;
    *(a1 + 12) = v89;
    *(a1 + 13) = v90;
    *(a1 + 14) = v91;
    *(a1 + 15) = v92;
    *(a1 + 16) = v93;
    *(a1 + 17) = v94;
    *(a1 + 18) = v95;
    *(a1 + 19) = v96;
    *(a1 + 20) = v97;
    *(a1 + 21) = v98;
    *(a1 + 22) = v99;
    *(a1 + 23) = v100;
    *(a1 + 24) = v101;
    *(a1 + 25) = v103;
    *(a1 + 26) = v106;
    *(a1 + 108) = v109;
  }

  else
  {
    v24 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
      case 8u:
      case 0xAu:
        v25 = sub_21DBF56BC();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        swift_storeEnumTagMultiPayload();
        break;
      case 2u:
        v51 = sub_21DBF56BC();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        v52 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v52 + 20)] = *&a2[*(v52 + 20)];
        a1[*(v52 + 24)] = a2[*(v52 + 24)];
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 3u:
        v53 = sub_21DBF56BC();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        v54 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v54[5]] = a2[v54[5]];
        *&a1[v54[6]] = *&a2[v54[6]];
        v55 = v54[7];
        v56 = &a1[v55];
        v57 = &a2[v55];
        v59 = *v57;
        v58 = *(v57 + 1);
        *v56 = v59;
        *(v56 + 1) = v58;
        *&a1[v54[8]] = *&a2[v54[8]];
        a1[v54[9]] = a2[v54[9]];
        v60 = v54[10];
        v61 = &a1[v60];
        v62 = &a2[v60];
        v63 = *(v62 + 1);
        *v61 = *v62;
        *(v61 + 1) = v63;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 4u:
        v31 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v31;
        v32 = *(a2 + 2);
        *(a1 + 2) = v32;
        a1[24] = a2[24];
        a1[25] = a2[25];
        *(a1 + 26) = *(a2 + 26);
        *(a1 + 15) = *(a2 + 15);
        sub_21DBF8E0C();
        v33 = v32;
        swift_storeEnumTagMultiPayload();
        break;
      case 5u:
      case 6u:
        v68 = *a2;
        v69 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v69;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 24);
        v70 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v70;
        v71 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v71;
        v72 = *(a2 + 9);
        v73 = *(a2 + 10);
        v74 = *(a2 + 11);
        v75 = *(a2 + 12);
        v108 = *(a2 + 14);
        v111 = *(a2 + 13);
        v105 = a2[120];
        v76 = v68;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v72, v73, v74, v75, v111, v108, v105);
        *(a1 + 9) = v72;
        *(a1 + 10) = v73;
        *(a1 + 11) = v74;
        *(a1 + 12) = v75;
        *(a1 + 13) = v111;
        *(a1 + 14) = v108;
        a1[120] = v105;
        v77 = *(a2 + 16);
        v78 = *(a2 + 17);
        LOBYTE(v71) = a2[144];
        sub_21D0FB9BC(v77, v78, v71);
        *(a1 + 16) = v77;
        *(a1 + 17) = v78;
        a1[144] = v71;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 152);
        v79 = *(a2 + 22);
        *(a1 + 21) = *(a2 + 21);
        *(a1 + 22) = v79;
        v80 = *(a2 + 24);
        *(a1 + 23) = *(a2 + 23);
        *(a1 + 24) = v80;
        v81 = *(a2 + 26);
        *(a1 + 25) = *(a2 + 25);
        *(a1 + 26) = v81;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v82 = v80;
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 7u:
        v64 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v64;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        v66 = *(a2 + 6);
        v65 = *(a2 + 7);
        *(a1 + 6) = v66;
        *(a1 + 7) = v65;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v67 = v66;
        swift_storeEnumTagMultiPayload();
        break;
      case 9u:
        v42 = *a2;
        v43 = *(a2 + 1);
        v44 = *(a2 + 2);
        v45 = *(a2 + 3);
        v46 = *(a2 + 4);
        v47 = *(a2 + 5);
        v48 = *(a2 + 6);
        v102 = *(a2 + 8);
        v104 = *(a2 + 9);
        v107 = *(a2 + 10);
        v110 = a2[88];
        v49 = *a2;
        v50 = *(a2 + 7);
        sub_21D5D5C84(v49, v43, v44, v45, v46, v47, v48, v50, v102, v104, v107, v110);
        *a1 = v42;
        *(a1 + 1) = v43;
        *(a1 + 2) = v44;
        *(a1 + 3) = v45;
        *(a1 + 4) = v46;
        *(a1 + 5) = v47;
        *(a1 + 6) = v48;
        *(a1 + 7) = v50;
        *(a1 + 8) = v102;
        *(a1 + 9) = v104;
        *(a1 + 10) = v107;
        a1[88] = v110;
        swift_storeEnumTagMultiPayload();
        break;
      case 0xBu:
        v30 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v30;
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 0xCu:
        v34 = sub_21DBF56BC();
        v35 = *(*(v34 - 8) + 16);
        v35(a1, a2, v34);
        v36 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
        v37 = &a1[v36];
        v38 = &a2[v36];
        v39 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v38, 1, v39))
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
          memcpy(v37, v38, *(*(v41 - 8) + 64));
        }

        else
        {
          v35(v37, v38, v34);
          *&v37[*(v39 + 20)] = *&v38[*(v39 + 20)];
          v37[*(v39 + 24)] = v38[*(v39 + 24)];
          v85 = *(v40 + 56);
          sub_21DBF8E0C();
          v85(v37, 0, 1, v39);
        }

        swift_storeEnumTagMultiPayload();
        break;
      case 0xDu:
        v83 = sub_21DBF56BC();
        (*(*(v83 - 8) + 16))(a1, a2, v83);
        v84 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
        *&a1[*(v84 + 20)] = *&a2[*(v84 + 20)];
        a1[*(v84 + 24)] = a2[*(v84 + 24)];
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      case 0xEu:
        v26 = *a2;
        v27 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v27;
        v28 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v28;
        v29 = v26;
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v24 - 8) + 64));
        break;
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRAccountsListsViewModel.FallbackSelection(void *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v22 = sub_21DBF6C1C();
      (*(*(v22 - 8) + 16))(a1, a2, v22);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 1);
      v7 = *(a2 + 2);
      v8 = *(a2 + 3);
      v9 = *(a2 + 4);
      v10 = *(a2 + 5);
      v11 = *(a2 + 6);
      v12 = *(a2 + 7);
      v73 = *(a2 + 9);
      v74 = *(a2 + 10);
      v75 = *(a2 + 11);
      v76 = *(a2 + 12);
      v77 = *(a2 + 13);
      v78 = *(a2 + 14);
      v79 = *(a2 + 15);
      v80 = *(a2 + 16);
      v81 = *(a2 + 17);
      v82 = *(a2 + 18);
      v83 = *(a2 + 19);
      v84 = *(a2 + 20);
      v85 = *(a2 + 21);
      v86 = *(a2 + 22);
      v87 = *(a2 + 23);
      v88 = *(a2 + 24);
      v90 = *(a2 + 25);
      v93 = *(a2 + 26);
      v96 = *(a2 + 108);
      v13 = *(a2 + 8);
      v14 = v5;
      v15 = v6;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      sub_21DA30840(v5, v6, v7, v8, v9, v10, v11, v12, v13, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v90, v93, v96);
      *a1 = v14;
      a1[1] = v15;
      a1[2] = v16;
      a1[3] = v17;
      a1[4] = v18;
      a1[5] = v19;
      a1[6] = v20;
      a1[7] = v21;
      a1[8] = v13;
      a1[9] = v73;
      a1[10] = v74;
      a1[11] = v75;
      a1[12] = v76;
      a1[13] = v77;
      a1[14] = v78;
      a1[15] = v79;
      a1[16] = v80;
      a1[17] = v81;
      a1[18] = v82;
      a1[19] = v83;
      a1[20] = v84;
      a1[21] = v85;
      a1[22] = v86;
      a1[23] = v87;
      a1[24] = v88;
      a1[25] = v90;
      a1[26] = v93;
      *(a1 + 108) = v96;
    }

    else
    {
      v24 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 1u:
        case 8u:
        case 0xAu:
          v25 = sub_21DBF56BC();
          (*(*(v25 - 8) + 16))(a1, a2, v25);
          swift_storeEnumTagMultiPayload();
          break;
        case 2u:
          v47 = sub_21DBF56BC();
          (*(*(v47 - 8) + 16))(a1, a2, v47);
          v48 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
          *(a1 + *(v48 + 20)) = *&a2[*(v48 + 20)];
          *(a1 + *(v48 + 24)) = a2[*(v48 + 24)];
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 3u:
          v49 = sub_21DBF56BC();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          v50 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
          *(a1 + v50[5]) = a2[v50[5]];
          *(a1 + v50[6]) = *&a2[v50[6]];
          v51 = v50[7];
          v52 = (a1 + v51);
          v53 = &a2[v51];
          *v52 = *v53;
          v52[1] = *(v53 + 1);
          *(a1 + v50[8]) = *&a2[v50[8]];
          *(a1 + v50[9]) = a2[v50[9]];
          v54 = v50[10];
          v55 = (a1 + v54);
          v56 = &a2[v54];
          *v55 = *v56;
          v55[1] = *(v56 + 1);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 4u:
          *a1 = *a2;
          a1[1] = *(a2 + 1);
          v28 = *(a2 + 2);
          a1[2] = v28;
          *(a1 + 24) = a2[24];
          *(a1 + 25) = a2[25];
          *(a1 + 26) = a2[26];
          *(a1 + 27) = a2[27];
          *(a1 + 28) = a2[28];
          *(a1 + 29) = a2[29];
          *(a1 + 30) = a2[30];
          *(a1 + 31) = a2[31];
          sub_21DBF8E0C();
          v29 = v28;
          swift_storeEnumTagMultiPayload();
          break;
        case 5u:
        case 6u:
          v59 = *a2;
          *a1 = *a2;
          a1[1] = *(a2 + 1);
          a1[2] = *(a2 + 2);
          a1[3] = *(a2 + 3);
          a1[4] = *(a2 + 4);
          a1[5] = *(a2 + 5);
          a1[6] = *(a2 + 6);
          a1[7] = *(a2 + 7);
          a1[8] = *(a2 + 8);
          v60 = *(a2 + 9);
          v61 = *(a2 + 10);
          v62 = *(a2 + 11);
          v63 = *(a2 + 12);
          v95 = *(a2 + 14);
          v98 = *(a2 + 13);
          v92 = a2[120];
          v64 = v59;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21D0FB960(v60, v61, v62, v63, v98, v95, v92);
          a1[9] = v60;
          a1[10] = v61;
          a1[11] = v62;
          a1[12] = v63;
          a1[13] = v98;
          a1[14] = v95;
          *(a1 + 120) = v92;
          v65 = *(a2 + 16);
          v66 = *(a2 + 17);
          v67 = a2[144];
          sub_21D0FB9BC(v65, v66, v67);
          a1[16] = v65;
          a1[17] = v66;
          *(a1 + 144) = v67;
          *(a1 + 145) = a2[145];
          *(a1 + 146) = a2[146];
          *(a1 + 147) = a2[147];
          *(a1 + 148) = a2[148];
          a1[19] = *(a2 + 19);
          a1[20] = *(a2 + 20);
          a1[21] = *(a2 + 21);
          a1[22] = *(a2 + 22);
          a1[23] = *(a2 + 23);
          v68 = *(a2 + 24);
          a1[24] = v68;
          a1[25] = *(a2 + 25);
          a1[26] = *(a2 + 26);
          *(a1 + 216) = a2[216];
          *(a1 + 217) = a2[217];
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v69 = v68;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 7u:
          *a1 = *a2;
          a1[1] = *(a2 + 1);
          a1[2] = *(a2 + 2);
          a1[3] = *(a2 + 3);
          a1[4] = *(a2 + 4);
          *(a1 + 40) = a2[40];
          v57 = *(a2 + 6);
          a1[6] = v57;
          a1[7] = *(a2 + 7);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v58 = v57;
          swift_storeEnumTagMultiPayload();
          break;
        case 9u:
          v38 = *a2;
          v39 = *(a2 + 1);
          v40 = *(a2 + 2);
          v41 = *(a2 + 3);
          v42 = *(a2 + 4);
          v43 = *(a2 + 5);
          v44 = *(a2 + 6);
          v89 = *(a2 + 8);
          v91 = *(a2 + 9);
          v94 = *(a2 + 10);
          v97 = a2[88];
          v45 = *a2;
          v46 = *(a2 + 7);
          sub_21D5D5C84(v45, v39, v40, v41, v42, v43, v44, v46, v89, v91, v94, v97);
          *a1 = v38;
          a1[1] = v39;
          a1[2] = v40;
          a1[3] = v41;
          a1[4] = v42;
          a1[5] = v43;
          a1[6] = v44;
          a1[7] = v46;
          a1[8] = v89;
          a1[9] = v91;
          a1[10] = v94;
          *(a1 + 88) = v97;
          swift_storeEnumTagMultiPayload();
          break;
        case 0xBu:
          *a1 = *a2;
          a1[1] = *(a2 + 1);
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 0xCu:
          v30 = sub_21DBF56BC();
          v31 = *(*(v30 - 8) + 16);
          v31(a1, a2, v30);
          v32 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v33 = a1 + v32;
          v34 = &a2[v32];
          v35 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v36 = *(v35 - 8);
          if ((*(v36 + 48))(v34, 1, v35))
          {
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
            memcpy(v33, v34, *(*(v37 - 8) + 64));
          }

          else
          {
            v31(v33, v34, v30);
            *&v33[*(v35 + 20)] = *&v34[*(v35 + 20)];
            v33[*(v35 + 24)] = v34[*(v35 + 24)];
            v72 = *(v36 + 56);
            sub_21DBF8E0C();
            v72(v33, 0, 1, v35);
          }

          swift_storeEnumTagMultiPayload();
          break;
        case 0xDu:
          v70 = sub_21DBF56BC();
          (*(*(v70 - 8) + 16))(a1, a2, v70);
          v71 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *(a1 + *(v71 + 20)) = *&a2[*(v71 + 20)];
          *(a1 + *(v71 + 24)) = a2[*(v71 + 24)];
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        case 0xEu:
          v26 = *a2;
          *a1 = *a2;
          a1[1] = *(a2 + 1);
          a1[2] = *(a2 + 2);
          a1[3] = *(a2 + 3);
          v27 = v26;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v24 - 8) + 64));
          break;
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_21DBF6C1C();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 7)
    {
      if (v8 > 11)
      {
        if (v8 == 12)
        {
          v19 = sub_21DBF56BC();
          v20 = *(*(v19 - 8) + 32);
          v20(a1, a2, v19);
          v21 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v22 = &a1[v21];
          v23 = &a2[v21];
          v24 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v25 = *(v24 - 8);
          if ((*(v25 + 48))(v23, 1, v24))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
            memcpy(v22, v23, *(*(v26 - 8) + 64));
          }

          else
          {
            v20(v22, v23, v19);
            *&v22[*(v24 + 20)] = *&v23[*(v24 + 20)];
            v22[*(v24 + 24)] = v23[*(v24 + 24)];
            (*(v25 + 56))(v22, 0, 1, v24);
          }

          goto LABEL_27;
        }

        if (v8 == 13)
        {
          v15 = sub_21DBF56BC();
          (*(*(v15 - 8) + 32))(a1, a2, v15);
          v16 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *&a1[*(v16 + 20)] = *&a2[*(v16 + 20)];
          a1[*(v16 + 24)] = a2[*(v16 + 24)];
          goto LABEL_27;
        }
      }

      else if (v8 == 8 || v8 == 10)
      {
        goto LABEL_6;
      }
    }

    else if (v8 > 1)
    {
      if (v8 == 2)
      {
        v17 = sub_21DBF56BC();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v18 + 20)] = *&a2[*(v18 + 20)];
        a1[*(v18 + 24)] = a2[*(v18 + 24)];
        goto LABEL_27;
      }

      if (v8 == 3)
      {
        v13 = sub_21DBF56BC();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        v14 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v14[5]] = a2[v14[5]];
        *&a1[v14[6]] = *&a2[v14[6]];
        *&a1[v14[7]] = *&a2[v14[7]];
        *&a1[v14[8]] = *&a2[v14[8]];
        a1[v14[9]] = a2[v14[9]];
        *&a1[v14[10]] = *&a2[v14[10]];
        goto LABEL_27;
      }
    }

    else if (v8 <= 1)
    {
LABEL_6:
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      goto LABEL_28;
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_28:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *assignWithTake for TTRAccountsListsViewModel.FallbackSelection(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101450(a1, type metadata accessor for TTRAccountsListsViewModel.FallbackSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_21DBF6C1C();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    goto LABEL_29;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 7)
    {
      if (v8 > 11)
      {
        if (v8 == 12)
        {
          v19 = sub_21DBF56BC();
          v20 = *(*(v19 - 8) + 32);
          v20(a1, a2, v19);
          v21 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagsSection(0) + 20);
          v22 = &a1[v21];
          v23 = &a2[v21];
          v24 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation(0);
          v25 = *(v24 - 8);
          if ((*(v25 + 48))(v23, 1, v24))
          {
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EB70);
            memcpy(v22, v23, *(*(v26 - 8) + 64));
          }

          else
          {
            v20(v22, v23, v19);
            *&v22[*(v24 + 20)] = *&v23[*(v24 + 20)];
            v22[*(v24 + 24)] = v23[*(v24 + 24)];
            (*(v25 + 56))(v22, 0, 1, v24);
          }

          goto LABEL_28;
        }

        if (v8 == 13)
        {
          v15 = sub_21DBF56BC();
          (*(*(v15 - 8) + 32))(a1, a2, v15);
          v16 = type metadata accessor for TTRAccountsListsViewModel.Hashtags(0);
          *&a1[*(v16 + 20)] = *&a2[*(v16 + 20)];
          a1[*(v16 + 24)] = a2[*(v16 + 24)];
          goto LABEL_28;
        }
      }

      else if (v8 == 8 || v8 == 10)
      {
        goto LABEL_7;
      }
    }

    else if (v8 > 1)
    {
      if (v8 == 2)
      {
        v17 = sub_21DBF56BC();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists(0);
        *&a1[*(v18 + 20)] = *&a2[*(v18 + 20)];
        a1[*(v18 + 24)] = a2[*(v18 + 24)];
        goto LABEL_28;
      }

      if (v8 == 3)
      {
        v13 = sub_21DBF56BC();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        v14 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v14[5]] = a2[v14[5]];
        *&a1[v14[6]] = *&a2[v14[6]];
        *&a1[v14[7]] = *&a2[v14[7]];
        *&a1[v14[8]] = *&a2[v14[8]];
        a1[v14[9]] = a2[v14[9]];
        *&a1[v14[10]] = *&a2[v14[10]];
        goto LABEL_28;
      }
    }

    else if (v8 <= 1)
    {
LABEL_7:
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      goto LABEL_29;
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_29:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

id sub_21DA30840(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, void *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, __int16 a28)
{
  if (a28 < 0)
  {
    v28 = result;
    sub_21DBF8E0C();
    v29 = v28;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D0FB960(a10, a11, a12, a13, a14, a15, a16 & 1);
    sub_21D0FB9BC(a17, a18, a19 & 1);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return a25;
  }

  return result;
}

void *sub_21DA309F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, void *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, __int16 a28)
{
  if (a28 < 0)
  {

    sub_21D1078C0(a10, a11, a12, a13, a14, a15, a16 & 1);
    sub_21D0FB9F4(a17, a18, a19 & 1);
  }

  return result;
}

uint64_t sub_21DA30B34(uint64_t a1, uint64_t a2)
{
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  v21 = *(a2 + 136);
  v22 = *(a2 + 144);
  v23 = *(a2 + 152);
  v24 = *(a2 + 160);
  v25 = *(a2 + 168);
  v26 = *(a2 + 176);
  v27 = *(a2 + 184);
  v28 = *(a2 + 192);
  v29 = *(a2 + 200);
  v30 = *(a2 + 208);
  v31 = *(a2 + 216);
  v3 = *(a2 + 64);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  sub_21DA30840(*a2, v5, v6, v7, v8, v9, v10, v11, v3, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v3;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  *(a1 + 128) = v20;
  *(a1 + 136) = v21;
  *(a1 + 144) = v22;
  *(a1 + 152) = v23;
  *(a1 + 160) = v24;
  *(a1 + 168) = v25;
  *(a1 + 176) = v26;
  *(a1 + 184) = v27;
  *(a1 + 192) = v28;
  *(a1 + 200) = v29;
  *(a1 + 208) = v30;
  *(a1 + 216) = v31;
  return a1;
}

uint64_t sub_21DA30CA0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v32 = *(a2 + 72);
  v33 = *(a2 + 80);
  v34 = *(a2 + 88);
  v35 = *(a2 + 96);
  v36 = *(a2 + 104);
  v37 = *(a2 + 112);
  v38 = *(a2 + 120);
  v39 = *(a2 + 128);
  v40 = *(a2 + 136);
  v41 = *(a2 + 144);
  v42 = *(a2 + 152);
  v43 = *(a2 + 160);
  v44 = *(a2 + 168);
  v45 = *(a2 + 176);
  v46 = *(a2 + 184);
  v47 = *(a2 + 192);
  v48 = *(a2 + 200);
  v49 = *(a2 + 208);
  v50 = *(a2 + 216);
  v11 = *(a2 + 48);
  sub_21DA30840(*a2, v4, v5, v6, v7, v8, v11, v9, v10, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v12 = *a1;
  v13 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 48) = v11;
  *(a1 + 56) = v9;
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  *(a1 + 64) = v10;
  *(a1 + 72) = v32;
  *(a1 + 80) = v33;
  *(a1 + 88) = v34;
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  *(a1 + 96) = v35;
  *(a1 + 104) = v36;
  *(a1 + 112) = v37;
  *(a1 + 120) = v38;
  v24 = *(a1 + 128);
  v25 = *(a1 + 144);
  *(a1 + 128) = v39;
  *(a1 + 136) = v40;
  *(a1 + 144) = v41;
  *(a1 + 152) = v42;
  v26 = *(a1 + 160);
  v27 = *(a1 + 176);
  *(a1 + 160) = v43;
  *(a1 + 168) = v44;
  *(a1 + 176) = v45;
  *(a1 + 184) = v46;
  v28 = *(a1 + 192);
  *(a1 + 192) = v47;
  *(a1 + 200) = v48;
  v29 = *(a1 + 208);
  *(a1 + 208) = v49;
  v30 = *(a1 + 216);
  *(a1 + 216) = v50;
  sub_21DA309F0(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, SBYTE8(v23), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30);
  return a1;
}

uint64_t sub_21DA30E60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 208);
  v5 = *(a2 + 216);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v16 = *(a1 + 96);
  v17 = *(a1 + 112);
  v18 = *(a1 + 128);
  v19 = *(a1 + 144);
  v20 = *(a1 + 160);
  v21 = *(a1 + 176);
  v22 = *(a1 + 192);
  v23 = *(a1 + 208);
  v24 = *(a1 + 216);
  v25 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v25;
  v26 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v26;
  v27 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v27;
  v28 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v28;
  v29 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v29;
  v30 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v30;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v4;
  *(a1 + 216) = v5;
  sub_21DA309F0(v6, v7, v8, v9, v10, v11, v12, v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, SBYTE8(v17), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  return a1;
}

uint64_t sub_21DA30F28(uint64_t result, __int16 a2)
{
  v2 = *(result + 144) & 0x101FF0101;
  v3 = *(result + 216) & 0x101;
  *(result + 120) &= 1uLL;
  *(result + 144) = v2;
  *(result + 216) = v3 | (a2 << 15);
  return result;
}

unint64_t sub_21DA30F74()
{
  result = qword_27CE64CC0;
  if (!qword_27CE64CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64CC0);
  }

  return result;
}