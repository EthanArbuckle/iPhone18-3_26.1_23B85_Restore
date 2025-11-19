void sub_220765208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_220763878(a3, a4);
  }
}

uint64_t sub_220765278()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_220888CAC();
  }

  return result;
}

void sub_220765318(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_220891CBC();

    [v4 setSearchController_];
  }
}

uint64_t sub_220765394()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_220888CAC();
  }

  return result;
}

void sub_2207654A4(id a1)
{
  v2 = v1;
  v4 = sub_22088DA1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C32C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220891CBC();
  v15 = [v14 searchController];

  if (!v15 || (v15, v15 != a1))
  {
    if ([v2 su_isAppeared])
    {
      sub_22088C76C();
      swift_getObjectType();
      sub_22088D92C();
      swift_unknownObjectRelease();
      sub_22088C1DC();
      sub_22088D9EC();
      v17 = v16;
      (*(v5 + 8))(v8, v4);
      v18 = [v2 navigationController];
      if (v18)
      {
        v19 = v18;
        sub_22088C20C();
        v20 = [v19 navigationBar];
        [v20 setAutoresizingMask_];

        v21 = [v19 navigationBar];
        v22 = [v19 navigationBar];
        [v22 layoutMargins];

        sub_220891A3C();
        sub_220891A4C();
        [v21 setLayoutMargins_];
      }

      if (v17 * 0.5 > 0.0)
      {
        v23 = v17 * 0.5;
      }

      else
      {
        v23 = 0.0;
      }

      v24 = [a1 searchBar];
      [v24 setPositionAdjustment:0 forSearchBarIcon:{v23, 0.0}];

      v25 = [a1 searchBar];
      [v25 setLookToDictateEnabled_];

      v26 = sub_220891CBC();
      [v26 setSearchController_];

      v27 = sub_220891CBC();
      v28 = [v27 searchController];

      if (v28)
      {
        [v28 setDelegate_];
      }

      v29 = [v2 traitCollection];
      sub_2204A2984(v29);

      (*(v10 + 8))(v13, v9);
    }
  }
}

void sub_22076591C(void *a1)
{
  v2 = sub_22088A82C();
  v3 = sub_220891AFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22043F000, v2, v3, "Hiding ForYou card due to presenting search controller", v4, 2u);
    MEMORY[0x223D8B7F0](v4, -1, -1);
  }

  v5 = [a1 searchResultsController];
  if (v5)
  {
    v6 = v5;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      *&v6[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_delegate + 8] = &off_283420010;
      swift_unknownObjectWeakAssign();
      v7 = v6;
      sub_220628B74();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  sub_2207632BC(1, 1);
}

void sub_220765A7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = sub_22089132C();
    [a3 setText_];

    v8 = [a3 delegate];
    if (v8)
    {
      v9 = v8;
      if ([v8 respondsToSelector_])
      {
        v10 = sub_22089132C();
        [v9 searchBar:a3 textDidChange:v10];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_220888C9C();
    v13 = v15;
    if (!v15)
    {
      v13 = a5;
    }

    v14 = [v13 searchBar];

    [v14 becomeFirstResponder];
  }
}

id sub_220765BE4(int a1, uint64_t a2, void *a3, id a4)
{
  if (a2)
  {
    v6 = sub_22089132C();
    [a3 setText_];

    v7 = [a3 delegate];
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        v9 = sub_22089132C();
        [v8 searchBar:a3 textDidChange:v9];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v10 = [a4 splitViewController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 displayMode];

    if (v12 == 1)
    {
      sub_22088B45C();
      swift_getObjectType();
      sub_22088E4AC();
      sub_22088B82C();

      swift_unknownObjectRelease();
    }
  }

  return [a3 becomeFirstResponder];
}

unint64_t sub_220765E94(uint64_t a1)
{
  v3 = sub_2208854AC();
  v90 = *(v3 - 8);
  v91 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v85 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v85 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v85 - v17;
  v92 = v1;
  sub_22088C71C();
  v19 = sub_22088BFCC();

  sub_22088C71C();
  v20 = sub_22088BFCC();

  v21 = a1;
  v22 = sub_22088544C();
  v23 = [v20 cellForItemAtIndexPath_];

  if (!v23)
  {
    v48 = v15;
    v87 = v21;
    v88 = v7;
    v89 = v11;
    v92 = v18;
    v50 = v90;
    v49 = v91;
    v51 = [v19 visibleCells];
    sub_22044D56C(0, &qword_27CF59750);
    v52 = sub_2208916EC();

    if (v52 >> 62)
    {
      v53 = v48;
      if (sub_2208926AC())
      {
LABEL_8:
        if ((v52 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x223D8A700](0, v52);
        }

        else
        {
          if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v54 = *(v52 + 32);
        }

        v11 = v54;

        v55 = [v19 indexPathForCell_];
        if (!v55)
        {
LABEL_35:

          goto LABEL_36;
        }

        v56 = v55;
        sub_22088545C();

        v57 = v53;
        v53 = v49;
        v86 = *(v50 + 32);
        v86(v92, v57, v49);
        v58 = [v19 visibleCells];
        v52 = sub_2208916EC();

        if (!(v52 >> 62))
        {
          v59 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v60 = v88;
          v61 = v89;
          if (v59)
          {
            goto LABEL_14;
          }

LABEL_34:
          (*(v50 + 8))(v92, v53);

          goto LABEL_35;
        }

LABEL_33:
        v59 = sub_2208926AC();
        v60 = v88;
        v61 = v89;
        if (v59)
        {
LABEL_14:
          v62 = __OFSUB__(v59, 1);
          result = v59 - 1;
          if (v62)
          {
            __break(1u);
          }

          else if ((v52 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v63 = *(v52 + 8 * result + 32);
              goto LABEL_19;
            }

            __break(1u);
            goto LABEL_42;
          }

          v63 = MEMORY[0x223D8A700](result, v52);
LABEL_19:
          v64 = v63;

          v65 = [v19 indexPathForCell_];
          if (v65)
          {
            v66 = v65;
            sub_22088545C();

            v86(v61, v60, v53);
            v67 = sub_22088548C();
            v68 = v92;
            if (v67 < sub_22088548C() || (v69 = sub_22088549C(), v69 < sub_22088549C()))
            {

              v70 = *(v50 + 8);
              v70(v61, v53);
              v70(v68, v53);
              return 1;
            }

            v82 = sub_22088548C();
            v83 = sub_22088548C();

            v84 = *(v50 + 8);
            v84(v61, v53);
            v84(v68, v53);
            if (v83 < v82)
            {
              return 4;
            }
          }

          else
          {
            (*(v50 + 8))(v92, v53);
          }

          return 0;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v53 = v48;
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }

LABEL_36:

    return 0;
  }

  sub_22088C71C();
  v24 = sub_22088BFCC();

  [v23 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v92;
  result = [v92 view];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = result;
  v36 = [result coordinateSpace];

  [v24 convertRect:v36 toCoordinateSpace:{v26, v28, v30, v32}];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  swift_unknownObjectRelease();
  sub_22088C71C();
  v45 = sub_22088BFCC();

  [v45 adjustedContentInset];
  v47 = v46;

  v93.origin.x = v38;
  v93.origin.y = v40;
  v93.size.width = v42;
  v93.size.height = v44;
  if (CGRectGetMinY(v93) < v47)
  {

    return 1;
  }

  v94.origin.x = v38;
  v94.origin.y = v40;
  v94.size.width = v42;
  v94.size.height = v44;
  MaxY = CGRectGetMaxY(v94);
  result = [v33 view];
  if (result)
  {
    v72 = result;
    [result frame];
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v95.origin.x = v74;
    v95.origin.y = v76;
    v95.size.width = v78;
    v95.size.height = v80;
    v81 = CGRectGetMaxY(v95);

    if (v81 + -44.0 < MaxY)
    {
      return 4;
    }

    return 0;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_220766568(char *a1, uint64_t a2)
{
  v67 = a2;
  v3 = sub_22088E85C();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22088E86C();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22089030C();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v57 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22088CC6C();
  v60 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  LOBYTE(v15) = v16 == 0;
  v17 = *&a1[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = 0;
  *(v18 + 26) = v15;
  v19 = *(v17 + 40);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 136);
  v22 = a1;
  v21(0, sub_22076CBC0, v18, ObjectType, v19);

  v23 = sub_220891C4C();
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v25 = swift_getObjectType();
  v26 = sub_22088D05C();
  if (v26 >> 62)
  {
    v27 = sub_2208926AC();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v27)
  {

LABEL_10:
    sub_22088C6FC();
    sub_22076C7F8();
    v41 = *(v40 + 48);
    v42 = *(v40 + 64);
    sub_22089028C();
    v43 = &v22[OBJC_IVAR____TtC8StocksUI23StockListViewController_styler];
    swift_beginAccess();
    v44 = __swift_project_boxed_opaque_existential_1(v43, *(v43 + 3));
    v45 = *(*v44 + 80);
    v46 = *(*v44 + 88);
    __swift_project_boxed_opaque_existential_1((*v44 + 56), v45);
    sub_2208238DC(v45, v46, &v8[v41]);
    v47 = *MEMORY[0x277D6D418];
    v48 = sub_22088ADDC();
    (*(*(v48 - 8) + 104))(&v8[v42], v47, v48);
    v49 = v61;
    v50 = v63;
    (*(v61 + 104))(v8, *MEMORY[0x277D6ECA0], v63);
    v52 = v64;
    v51 = v65;
    v53 = v62;
    (*(v64 + 104))(v62, *MEMORY[0x277D6ECA8], v65);
    sub_22088B53C();

    (*(v52 + 8))(v53, v51);
    (*(v49 + 8))(v8, v50);
    goto LABEL_11;
  }

  v28 = sub_22088D05C();
  if (v28 >> 62)
  {
    v29 = sub_2208926AC();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!__OFSUB__(v29, 1))
  {
    v30 = *MEMORY[0x277D6E238];
    v31 = v60;
    v32 = *(v60 + 104);
    v64 = v29 - 1;
    v65 = v25;
    v33 = v14;
    v32(v14, v30, v66);
    v34 = v57;
    v35 = v58;
    v36 = v59;
    (*(v58 + 16))(v57, v67, v59);
    v37 = (*(v35 + 80) + 24) & ~*(v35 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v22;
    (*(v35 + 32))(v38 + v37, v34, v36);
    v39 = v22;
    sub_22088D01C();

    (*(v31 + 8))(v33, v66);
LABEL_11:
    v54 = [v22 editButtonItem];
    [v54 setEnabled_];

    v55 = sub_220492C48();
    [v55 setEnabled_];

    sub_22088C71C();
    v56 = sub_22088BFCC();

    [v56 setUserInteractionEnabled_];

    return;
  }

  __break(1u);
}

uint64_t sub_220766C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a3;
  v25 = sub_22088E85C();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088E86C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C6FC();
  sub_22076C7F8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 64);
  sub_22089028C();
  v16 = (a2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_styler);
  swift_beginAccess();
  v17 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v18 = *(*v17 + 80);
  v19 = *(*v17 + 88);
  __swift_project_boxed_opaque_existential_1((*v17 + 56), v18);
  sub_2208238DC(v18, v19, &v12[v14]);
  v20 = *MEMORY[0x277D6D418];
  v21 = sub_22088ADDC();
  (*(*(v21 - 8) + 104))(&v12[v15], v20, v21);
  (*(v9 + 104))(v12, *MEMORY[0x277D6ECA0], v8);
  v22 = v25;
  (*(v4 + 104))(v7, *MEMORY[0x277D6ECA8], v25);
  sub_22088B53C();

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_220766EC4(char *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  LOBYTE(v2) = v3 == 0;
  v4 = *&a1[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
  *(v5 + 26) = v2;
  v6 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 136);
  v9 = a1;
  v8(0, sub_22076C71C, v5, ObjectType, v6);
}

void sub_220766FCC(uint64_t a1)
{
  sub_220888C9C();
  if (v4)
  {
    v2 = [v4 searchResultsController];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for StockSearchViewController(0);
      if (swift_dynamicCastClass())
      {
        sub_22062887C(a1);
      }
    }

    else
    {
    }
  }
}

void sub_22076706C()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22076C794();
  v6 = v5;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EE5D8();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v39 - v19;
  v21 = sub_220891C4C();
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    ObjectType = swift_getObjectType();
    v41 = v24;
    v25 = sub_22088D06C();
    v26 = *(v25 + 16);
    v39 = v4;
    if (v26)
    {
      (*(v1 + 16))(v20, v25 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * (v26 - 1), v0);

      v27 = *(v1 + 56);
      v27(v20, 0, 1, v0);
    }

    else
    {

      v27 = *(v1 + 56);
      v27(v20, 1, 1, v0);
    }

    (*(v1 + 104))(v16, *MEMORY[0x277D6E238], v0);
    v27(v16, 0, 1, v0);
    v28 = *(v6 + 48);
    sub_2204B2C58(v20, v9, sub_2205EE5D8);
    sub_2204B2C58(v16, &v9[v28], sub_2205EE5D8);
    v29 = *(v1 + 48);
    if (v29(v9, 1, v0) == 1)
    {
      sub_2204A2890(v16, sub_2205EE5D8);
      sub_2204A2890(v20, sub_2205EE5D8);
      if (v29(&v9[v28], 1, v0) == 1)
      {
        sub_2204A2890(v9, sub_2205EE5D8);
LABEL_12:
        v37 = ObjectType;
        v36 = v41;
        v38 = *(sub_22088D06C() + 16);

        MEMORY[0x223D85240](v38 - 1, 1, 0, 0, v37, v36);
        goto LABEL_13;
      }
    }

    else
    {
      v30 = v42;
      sub_2204B2C58(v9, v42, sub_2205EE5D8);
      if (v29(&v9[v28], 1, v0) != 1)
      {
        v31 = &v9[v28];
        v32 = v39;
        (*(v1 + 32))(v39, v31, v0);
        sub_22045C20C(&unk_2812976E0, MEMORY[0x277D6E270]);
        v33 = v30;
        v34 = sub_2208912FC();
        v35 = *(v1 + 8);
        v35(v32, v0);
        sub_2204A2890(v16, sub_2205EE5D8);
        sub_2204A2890(v20, sub_2205EE5D8);
        v35(v33, v0);
        sub_2204A2890(v9, sub_2205EE5D8);
        if (v34)
        {
          goto LABEL_12;
        }

LABEL_13:

        return;
      }

      sub_2204A2890(v16, sub_2205EE5D8);
      sub_2204A2890(v20, sub_2205EE5D8);
      (*(v1 + 8))(v30, v0);
    }

    sub_2204A2890(v9, sub_22076C794);
    goto LABEL_13;
  }
}

uint64_t sub_220767590(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler);
    v5 = result;
    swift_unknownObjectRetain();

    v6 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 112))(a2, 1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220767638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_22088C71C();
  v8 = sub_22088BFCC();

  v9 = [v8 indexPathsForSelectedItems];

  if (v9)
  {
    sub_2208854AC();
    v10 = sub_2208916EC();

    v11 = sub_2206FA288(a2, v10);
  }

  else
  {
    v11 = 1;
  }

  v12 = *(*(v4 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v12 + 128))(a1, a2, a3, v11, ObjectType, v12);
}

void sub_220767740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  sub_22045BE48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v26 - v7;
  sub_22046B36C();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C71C();
  v15 = sub_22088BFCC();

  v16 = [v15 hasActiveDrag];

  if ((v16 & 1) == 0)
  {
    sub_220888C9C();
    if (aBlock[0])
    {
      v27 = aBlock[0];
      sub_220767A98(aBlock[0]);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
      v17 = v30;
      v18 = v31;
      (*(v30 + 16))(v8, v29, v31);
      v19 = *(v11 + 80);
      v28 = a2;
      v29 = v3;
      v20 = (v19 + 32) & ~v19;
      v21 = (v12 + *(v17 + 80) + v20) & ~*(v17 + 80);
      v22 = swift_allocObject();
      v23 = v27;
      *(v22 + 2) = v26;
      *(v22 + 3) = v23;
      (*(v11 + 32))(&v22[v20], v14, v10);
      (*(v17 + 32))(&v22[v21], v8, v18);
      aBlock[4] = sub_22076C558;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2204C35E8;
      aBlock[3] = &block_descriptor_34;
      v24 = _Block_copy(aBlock);
      v25 = v23;

      [v25 dismissViewControllerAnimated:1 completion:v24];
      _Block_release(v24);
    }

    sub_220767FE0();
  }
}

void sub_220767A98(void *a1)
{
  v2 = [a1 searchResultsController];
  if (v2)
  {
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

      v2 = 0;
    }
  }

  v3 = *(*(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(ObjectType, v3);
  v6 = sub_22088A82C();
  v7 = sub_220891AFC();
  v8 = os_log_type_enabled(v6, v7);
  if (v5)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22043F000, v6, v7, "Hiding ForYou card due to search dismissal with an empty stock list", v9, 2u);
      MEMORY[0x223D8B7F0](v9, -1, -1);
    }

    sub_2207632BC(1, 1);
    if (v2)
    {
LABEL_8:
      v11 = v2;
      sub_220628E1C();
    }
  }

  else
  {
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22043F000, v6, v7, "Showing ForYou card due to search dismissal", v10, 2u);
      MEMORY[0x223D8B7F0](v10, -1, -1);
    }

    sub_2204D5A7C(1);
    if (v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_220767C80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22088B96C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_220767EA8(a2);
    sub_220891CAC();
    if (v19)
    {
      sub_220457328(&v18, v20);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      (*(v8 + 104))(v11, *MEMORY[0x277D6D968], v7);
      sub_22088C39C();
      (*(v8 + 8))(v11, v7);
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (UIAccessibilityIsVoiceOverRunning())
      {
LABEL_4:
        v14 = 0;
LABEL_7:
        LOBYTE(v20[0]) = v14;
        sub_2207895A8(a3, a4, v20);

        return;
      }
    }

    else
    {
      sub_2204C0A04(&v18, &qword_27CF59760, &unk_2812979A0, MEMORY[0x277D6DE88], sub_2204446D4);
      if (UIAccessibilityIsVoiceOverRunning())
      {
        goto LABEL_4;
      }
    }

    __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR____TtC8StocksUI23StockListViewController_keyboardInputMonitor], *&v13[OBJC_IVAR____TtC8StocksUI23StockListViewController_keyboardInputMonitor + 24]);
    v15 = sub_22088CA3C() == 1703936;
    v14 = v15 & ~v16;
    goto LABEL_7;
  }
}

void sub_220767EA8(void *a1)
{
  v3 = [a1 searchResultsController];
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      *&v3[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_delegate + 8] = 0;
      swift_unknownObjectWeakAssign();
    }

    else
    {

      v3 = 0;
    }
  }

  [a1 setAutomaticallyShowsSearchResultsController_];
  v4 = *(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController);
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 setAlpha_];

  v7 = [v4 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setHidden_];
}

uint64_t sub_220767FE0()
{
  v1 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability), *(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability + 24));
  result = sub_22088618C();
  if (result)
  {
    sub_22046B36C();
    sub_22088AD8C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2204A2890(v4, type metadata accessor for StockListModel);
      }

      v7 = *(*(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      return (*(v7 + 160))(ObjectType, v7);
    }

    else
    {
      return sub_2204A2890(v4, type metadata accessor for StockListStockModel);
    }
  }

  return result;
}

uint64_t sub_220768130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_22088BCAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - v12;
  sub_22088CF1C();
  (*(v6 + 104))(v9, *MEMORY[0x277D6DA98], v5);
  sub_22045C20C(&qword_27CF59758, MEMORY[0x277D6DAC0]);
  v14 = sub_2208912FC();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v13, v5);
  v16 = (v14 & 1) == 0 && !UIAccessibilityIsVoiceOverRunning();
  v17 = *(*(v3 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v17 + 112))(a2, v16, ObjectType, v17);
}

uint64_t sub_22076830C()
{
  v1 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler);
  sub_22046B36C();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = EnumCaseMultiPayload;
    result = 0;
    if (v11 == 1)
    {
      sub_2204A2890(v8, type metadata accessor for StockListModel);
      return 0;
    }
  }

  else
  {
    sub_2204BD618(v8, v4, type metadata accessor for StockListStockModel);
    __swift_project_boxed_opaque_existential_1((v9 + 48), *(v9 + 72));
    v13 = sub_2208276B0();
    v14 = sub_22078008C(v4, v13);

    sub_2204A2890(v4, type metadata accessor for StockListStockModel);
    return v14;
  }

  return result;
}

void sub_2207684B8()
{
  v1 = v0;

  sub_2208886AC();

  sub_22088C71C();
  v2 = sub_22088BFCC();

  v3 = [v2 hasActiveDrop];

  if ((v3 & 1) == 0)
  {
    v4 = *&v1[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler];
    v5 = [v1 isEditing];
    v6 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 136))(v5, 0, 0, ObjectType, v6);
  }
}

uint64_t sub_2207685B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v10[4] = sub_22076C4F8;
    v10[5] = v4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2204C35E8;
    v10[3] = &block_descriptor_39;
    v5 = _Block_copy(v10);
    swift_unknownObjectRetain();
    v6 = v2;

    [a2 addCompletion_];
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(*&v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 40);
    ObjectType = swift_getObjectType();
    return (*(v8 + 176))(1, 0, 0, ObjectType, v8);
  }
}

uint64_t sub_2207686EC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 80))(a2, ObjectType, v4);
}

uint64_t sub_22076874C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(a2, ObjectType, v4);
}

uint64_t sub_2207687AC()
{

  sub_2208886AC();

  v1 = *(*(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 136))(1, 0, 0, ObjectType, v1);
}

uint64_t sub_220768850()
{
  v1 = *&v0[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler];
  v2 = [v0 isEditing];
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v3 + 136))(v2, 0, 0, ObjectType, v3);
}

uint64_t sub_2207688D0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 168))(1, ObjectType, v1);
}

uint64_t sub_220768924()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 136))(1, 0, 0, ObjectType, v1);
}

void sub_2207689CC(void *a1)
{
  v3 = sub_22088B3EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088B42C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  (*(v13 + 168))(2, ObjectType, v13);
  v15 = sub_220891C4C();
  if (!v15 || (v16 = v15, swift_getObjectType(), v17 = sub_22088D03C(), v16, !v17) || (v28[1] = v17, sub_22044D56C(0, &qword_28127E800), sub_2204446D4(0, &unk_281297710), (swift_dynamicCast() & 1) == 0))
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_8;
  }

  if (!*(&v30 + 1))
  {
LABEL_8:
    sub_2204C0A04(&v29, &unk_281297700, &unk_281297710, MEMORY[0x277D6E228], sub_2204446D4);

    return;
  }

  v28[0] = a1;
  sub_220457328(&v29, v32);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_22088CC3C();
  v18 = sub_22088B41C();
  (*(v9 + 8))(v12, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D6D768], v3);
  v19 = sub_22056F5BC(v7, v18);

  (*(v4 + 8))(v7, v3);
  if (v19)
  {
    v20 = v28[0];
    [v28[0] adjustedContentInset];
    v22 = v21;
    [v20 contentOffset];
    v24 = v22 + v23;
    v25 = sub_22088AE3C();
    v26 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v24;
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_220768DBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_22088CC6C();
  v68 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v66 = &v62 - v13;
  sub_22076C9B0();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v67 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2204A1E8C(0, &qword_28127E928, sub_22076C9B0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v76 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v75 = &v62 - v24;
  v69 = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v26 = [Strong isEditing];

  if ((v26 & 1) != 0 || (([a1 adjustedContentInset], v28 = v27, objc_msgSend(a1, sel_contentOffset), v28 + v29 > 0.0) ? (v30 = v28 + v29 <= a4) : (v30 = 1), v30))
  {
    v31 = *MEMORY[0x277D6D4B0];
    v32 = sub_22088AE4C();
    v33 = *(*(v32 - 8) + 104);

    return v33(a3, v31, v32);
  }

  v35 = swift_unknownObjectUnownedLoadStrong();
  v36 = sub_220891C4C();

  if (!v36)
  {
LABEL_23:
    v60 = *MEMORY[0x277D6D4B8];
    v61 = sub_22088AE4C();
    return (*(*(v61 - 8) + 104))(a3, v60, v61);
  }

  v64 = a3;
  swift_getObjectType();
  v63 = v36;
  result = sub_22088D06C();
  v37 = result;
  v38 = 0;
  v39 = *(result + 16);
  v65 = v68 + 16;
  v73 = (v16 + 48);
  v74 = (v16 + 56);
  v71 = (v68 + 32);
  v72 = v39;
  v79 = *MEMORY[0x277D6E260];
  v78 = (v68 + 104);
  v40 = (v68 + 8);
  v41 = v66;
  v42 = v76;
  while (1)
  {
    if (v38 == v39)
    {
      v43 = 1;
      v38 = v39;
      goto LABEL_18;
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v38 >= *(v37 + 16))
    {
      goto LABEL_25;
    }

    v45 = v67;
    v44 = v68;
    v46 = v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38;
    v47 = *(v15 + 48);
    *v67 = v38;
    (*(v44 + 16))(v45 + v47, v46, v8);
    sub_2204BD618(v45, v42, sub_22076C9B0);
    v43 = 0;
    ++v38;
LABEL_18:
    (*v74)(v42, v43, 1, v15);
    v48 = v75;
    sub_22076CA1C(v42, v75);
    if ((*v73)(v48, 1, v15) == 1)
    {

      a3 = v64;
      goto LABEL_23;
    }

    v49 = v37;
    v77 = *v48;
    v50 = v15;
    (*v71)(v41, &v48[*(v15 + 48)], v8);
    v51 = *v78;
    v52 = v80;
    (*v78)(v80, v79, v8);
    sub_22045C20C(&qword_2812976F0, MEMORY[0x277D6E270]);
    v53 = sub_2208912DC();
    v54 = *v40;
    (*v40)(v52, v8);
    if (v53)
    {
      v55 = swift_unknownObjectUnownedLoadStrong();
      v56 = sub_220891C4C();
      v70 = v57;

      if (v56)
      {
        swift_getObjectType();
        v58 = v80;
        v51(v80, v79, v8);
        sub_22088D08C();

        v59 = v58;
        v41 = v66;
        v54(v59, v8);
      }
    }

    result = (v54)(v41, v8);
    v15 = v50;
    v42 = v76;
    v37 = v49;
    v39 = v72;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_220769714()
{
  sub_220888C9C();
  result = 1;
  if (v2)
  {
    v0 = [v2 isActive];

    if (v0)
    {
      return 0;
    }
  }

  return result;
}

void sub_22076977C()
{
  v0 = sub_22088A82C();
  v1 = sub_220891AFC();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22043F000, v0, v1, "Hiding ForYou card due to trait collection change with search active", v2, 2u);
    MEMORY[0x223D8B7F0](v2, -1, -1);
  }

  sub_2207632BC(0, 0);
}

uint64_t sub_22076982C()
{
  sub_220888C9C();
  if (v2)
  {
    if ([v2 isActive])
    {
      v0 = [v2 searchResultsController];

      result = v0;
      if (v0)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return sub_22088C7BC();
}

void sub_2207698E8(double a1)
{
  v2 = sub_220492A40();
  [v2 setAlpha_];

  v3 = sub_220492C48();
  v4 = [v3 ts_barButtonItemView];

  [v4 setAlpha_];
}

void sub_2207699A0(double a1)
{
  v2 = sub_220492A40();
  [v2 setAlpha_];

  v3 = sub_220492C48();
  v4 = [v3 ts_barButtonItemView];

  [v4 setAlpha_];
}

uint64_t sub_220769AC4()
{
  v1 = sub_22088BCAC();
  v29 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088BC8C();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v27 - v21;
  v30 = v0;
  sub_220764128(v12);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    return sub_2204A2890(v12, sub_2204CF334);
  }

  (*(v15 + 32))(v22, v12, v14);
  if (sub_22088AD5C())
  {
    (*(v15 + 16))(v18, v22, v14);
    (*(v28 + 104))(v8, *MEMORY[0x277D6DA70], v5);
    (*(v29 + 104))(v4, *MEMORY[0x277D6DA98], v1);
    sub_22076C908(0, &qword_27CF58128, MEMORY[0x277D6E3E0]);
    swift_allocObject();
    v24 = sub_22088CEDC();
    v25 = *(*(v30 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v25 + 112))(v24, 0, ObjectType, v25);
  }

  return (*(v15 + 8))(v22, v14);
}

uint64_t sub_220769F40(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2208854BC() & 1) != 0 || (sub_2208854BC())
  {
    sub_2205BF038(a2, v29);
    if (v30)
    {
      sub_22044D56C(0, &qword_27CF59780);
      if (swift_dynamicCast())
      {

        v16 = 0;
        return v16 & 1;
      }
    }

    else
    {
      sub_22056D130(v29);
    }

    sub_220764128(v9);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_2204A2890(v9, sub_2204CF334);
      v16 = 0;
    }

    else
    {
      (*(v12 + 32))(v15, v9, v11);
      v17 = [v2 splitViewController];
      if (v17 && (v18 = v17, sub_220887EBC(), sub_220891C9C(), v18, v29[0]))
      {

        (*(v12 + 8))(v15, v11);
        v16 = 0;
      }

      else
      {
        v16 = sub_22088AD5C();
        (*(v12 + 8))(v15, v11);
      }
    }
  }

  else
  {
    sub_2205BF038(a2, v29);
    v19 = v30;
    if (v30)
    {
      v20 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v21 = *(v19 - 8);
      v22 = MEMORY[0x28223BE20](v20, v20);
      v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_22089289C();
      (*(v21 + 8))(v24, v19);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      v25 = 0;
    }

    v28.receiver = v2;
    v28.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v28, sel_canPerformAction_withSender_, a1, v25);
    swift_unknownObjectRelease();
  }

  return v16 & 1;
}

void sub_22076A380()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_220763878(0, 0);
  }
}

uint64_t sub_22076A3DC()
{
  sub_22088C73C();
  v0 = sub_22088B70C();

  return v0;
}

uint64_t sub_22076A430()
{
  sub_22088C73C();
  sub_22088B71C();
}

uint64_t sub_22076A484(uint64_t a1)
{
  v2 = sub_22045C20C(&qword_27CF56E50, type metadata accessor for StockListViewController);

  return MEMORY[0x2821D40A0](a1, v2);
}

uint64_t sub_22076A500(uint64_t a1, uint64_t a2)
{
  v4 = sub_22045C20C(&qword_27CF56E50, type metadata accessor for StockListViewController);

  return MEMORY[0x2821D40A8](a1, a2, v4);
}

void sub_22076A60C(char a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
  if (v3)
  {
    v4 = v3;
    v5 = 1.0;
    if (a1)
    {
      v5 = 0.0;
    }

    [v3 setAlpha_];

    sub_220888C9C();
    if (v6)
    {
      if (a1)
      {
        [v6 setShowsSearchResultsController_];
      }

      else
      {
        [v6 setAutomaticallyShowsSearchResultsController_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22076A6CC(char a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];

    sub_220888C9C();
    if (v5)
    {
      if (a1)
      {
        [v5 setShowsSearchResultsController_];
      }

      else
      {
        [v5 setAutomaticallyShowsSearchResultsController_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_22076A780(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_220884CAC();
  v11 = v10;

  v12 = a3[5];
  v13 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v12);
  v14 = (*(v13 + 48))(v9, v11, 0, v12, v13);

  v15 = a3[5];
  v16 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v15);
  v17 = (*(v16 + 24))(0, v15, v16);
  [v17 size];

  sub_220891F0C();
  sub_220891D6C();
  sub_220891A6C();
  sub_220891E8C();
  Width = CGRectGetWidth(v33);
  if (Width > 72.0)
  {
    v19 = Width;
  }

  else
  {
    v19 = 72.0;
  }

  sub_220891F0C();
  sub_220891D6C();
  sub_220891A7C();
  sub_220891E9C();
  Height = CGRectGetHeight(v34);
  if (Height > 28.0)
  {
    v21 = Height;
  }

  else
  {
    v21 = 28.0;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v22 setAttributedTitle:v14 forState:0];
  v23 = a3[5];
  v24 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v23);
  (*(v24 + 32))(v22, 0, v23, v24);
  [v22 addTarget:a1 action:a2 forControlEvents:64];
  v25 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  v26 = [v7 bundleForClass_];
  sub_220884CAC();

  v27 = sub_22089132C();

  [v25 setAccessibilityLabel_];

  v28 = [v7 bundleForClass_];
  sub_220884CAC();

  v29 = sub_22089132C();

  [v25 setAccessibilityHint_];

  [v25 setAccessibilityTraits_];
  v30 = [v25 customView];
  if (v30)
  {
    v31 = v30;
    [v30 setShowsLargeContentViewer_];
  }

  if (sub_22088F0DC())
  {
    [v25 _setPrefersNoPlatter_];
  }

  return v25;
}

void sub_22076AC3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220888C9C();
  v8 = aBlock[0];
  if (aBlock[0])
  {
    [aBlock[0] setShowsSearchResultsController_];
    v9 = [v8 searchResultsController];
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        *&v10[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_delegate + 8] = &off_283420010;
        swift_unknownObjectWeakAssign();
        v11 = sub_220886A4C();
        v12 = *(v11 - 8);
        (*(v12 + 16))(v7, a1, v11);
        (*(v12 + 56))(v7, 0, 1, v11);
        sub_22062887C(v7);

        sub_2204A2890(v7, type metadata accessor for StockSearchMode);
      }

      else
      {
      }
    }

    sub_220888C9C();
    v13 = aBlock[0];
    if (aBlock[0] && (v14 = [aBlock[0] searchBar], v13, v14))
    {
      v15 = [v2 splitViewController];
      if (v15)
      {
        v16 = v15;
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_22076CAFC;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2204C35E8;
        aBlock[3] = &block_descriptor_96;
        v18 = _Block_copy(aBlock);

        [v16 dismissViewControllerAnimated:1 completion:v18];

        _Block_release(v18);
      }

      else
      {
        sub_220763878(0, 0);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_22076AF34()
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v18 = EnumCaseMultiPayload;
    result = 0;
    if (v18 == 1)
    {
      sub_2204A2890(v16, type metadata accessor for StockListModel);
      return 0;
    }
  }

  else
  {
    sub_2204BD618(v16, v12, type metadata accessor for StockListStockModel);
    v20 = *(v5 + 16);
    v20(v8, v12, v4);
    v21 = type metadata accessor for StockViewModel();
    sub_2204B2C58(&v12[*(v21 + 20)], v3, sub_22045987C);
    v22 = type metadata accessor for StockShareActivityItemSource();
    v23 = objc_allocWithZone(v22);
    v20(&v23[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v8, v4);
    sub_2204B2C58(v3, &v23[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], sub_22045987C);
    v26.receiver = v23;
    v26.super_class = v22;
    v24 = objc_msgSendSuper2(&v26, sel_init);
    sub_2204A2890(v3, sub_22045987C);
    (*(v5 + 8))(v8, v4);
    v25 = sub_2205F7134();

    sub_2204A2890(v12, type metadata accessor for StockListStockModel);
    return v25;
  }

  return result;
}

uint64_t sub_22076B254()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - v7;
  v9 = sub_220891C4C();
  if (v9)
  {
    v10 = v9;
    swift_getObjectType();
    sub_22088D02C();

    v11 = *(v1 + 104);
    v11(v4, *MEMORY[0x277D6E258], v0);
    LOBYTE(v10) = sub_22088CC5C();
    v12 = *(v1 + 8);
    v12(v4, v0);
    if (v10)
    {
      v12(v8, v0);
      v13 = 0;
    }

    else
    {
      v11(v4, *MEMORY[0x277D6E230], v0);
      v14 = sub_22088CC5C();
      v12(v4, v0);
      v12(v8, v0);
      v13 = v14 ^ 1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

void sub_22076B420()
{
  v1 = v0;
  v2 = sub_22088F11C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088F14C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_22088C78C() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_22088C6FC();
  v12 = sub_22088B52C();

  if (v12)
  {
    v13 = sub_22088A82C();
    v14 = sub_220891AFC();
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_6:

      sub_2207632BC(1, 0);
      goto LABEL_7;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Hiding ForYou card due to trait collection change with a covering view";
LABEL_5:
    _os_log_impl(&dword_22043F000, v13, v14, v16, v15, 2u);
    MEMORY[0x223D8B7F0](v15, -1, -1);
    goto LABEL_6;
  }

  v17 = sub_220891C4C();
  if (!v17)
  {
LABEL_16:
    sub_220888C9C();
    v24 = aBlock[0];
    if (aBlock[0])
    {
      if ([aBlock[0] isActive])
      {
        sub_22044D56C(0, &qword_28127E7C0);
        v34 = sub_220891D0C();
        v25 = swift_allocObject();
        v25[2] = v1;
        aBlock[4] = sub_22076C6A0;
        aBlock[5] = v25;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2204C35E8;
        aBlock[3] = &block_descriptor_40;
        v33 = _Block_copy(aBlock);
        v26 = v1;

        sub_22088F13C();
        aBlock[0] = MEMORY[0x277D84F90];
        v32[1] = sub_22045C20C(&qword_281296CA0, MEMORY[0x277D85198]);
        v27 = MEMORY[0x277D85198];
        sub_2204A1E8C(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_22076C6A8(&qword_28127EA50, &qword_28127EA60, v27);
        sub_2208923FC();
        v29 = v33;
        v28 = v34;
        MEMORY[0x223D89EC0](0, v11, v6, v33);
        _Block_release(v29);

        (*(v3 + 8))(v6, v2);
        (*(v8 + 8))(v11, v7);
        goto LABEL_7;
      }
    }

    if ([v1 isEditing])
    {
      v13 = sub_22088A82C();
      v14 = sub_220891AFC();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_6;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Hiding ForYou card due to trait collection change with edit active";
    }

    else
    {
      v30 = *(*&v1[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 40);
      ObjectType = swift_getObjectType();
      if (((*(v30 + 32))(ObjectType, v30) & 1) == 0)
      {
        goto LABEL_7;
      }

      v13 = sub_22088A82C();
      v14 = sub_220891AFC();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_6;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Hiding ForYou card due to trait collection change with an empty stock list";
    }

    goto LABEL_5;
  }

  v18 = v17;
  swift_getObjectType();
  v19 = sub_22088D05C();
  if (v19 >> 62)
  {
    v20 = sub_2208926AC();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 != 2)
  {

    goto LABEL_16;
  }

  v21 = sub_22088A82C();
  v22 = sub_220891AFC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22043F000, v21, v22, "Showing ForYou card due to trait collection change with 2 cards in the stack", v23, 2u);
    MEMORY[0x223D8B7F0](v23, -1, -1);
  }

  sub_2204D5A7C(0);
LABEL_7:
  sub_2204A43F0();
}

double sub_22076BA14()
{
  sub_22044D56C(0, &qword_281299860);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_220891A8C();
  sub_220493AE8(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_22089B130;
  *(v3 + 32) = v2;
  return result;
}

char *sub_22076BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, objc_class *a16, uint64_t a17, uint64_t a18, objc_class *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v85 = a6;
  v86 = a8;
  v92 = a5;
  v93 = a7;
  v84 = a4;
  v89 = a3;
  v81 = a2;
  v97 = a18;
  v94 = a17;
  v95 = a14;
  v98 = a13;
  v96 = a12;
  v91 = a11;
  v90 = a10;
  v88 = a9;
  v83 = a26;
  v82 = a27;
  v87 = a16;
  v113 = a20;
  v114 = a25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v112);
  (*(*(a20 - 8) + 32))(boxed_opaque_existential_1, a1, a20);
  v110 = a23;
  v111 = a28;
  v31 = __swift_allocate_boxed_opaque_existential_1(v109);
  (*(*(a23 - 8) + 32))(v31, v81, a23);
  v108[3] = a24;
  v108[4] = a29;
  v32 = __swift_allocate_boxed_opaque_existential_1(v108);
  (*(*(a24 - 8) + 32))(v32, a15, a24);
  v106 = a22;
  v107 = a27;
  v33 = __swift_allocate_boxed_opaque_existential_1(v105);
  (*(*(a22 - 8) + 32))(v33, a16, a22);
  v87 = a19;
  v34 = objc_allocWithZone(a19);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
  MEMORY[0x28223BE20](v35, v35);
  v37 = (&v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  MEMORY[0x28223BE20](v39, v39);
  v41 = (&v80 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
  MEMORY[0x28223BE20](v43, v43);
  v45 = (&v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v37;
  v48 = *v41;
  v49 = *v45;
  v104[3] = type metadata accessor for StockListRenderer();
  v104[4] = &off_283414078;
  v104[0] = v47;
  v103[3] = type metadata accessor for StockListStyler();
  v103[4] = &off_2834281F8;
  v103[0] = v48;
  v102[3] = type metadata accessor for WatchlistEditMenuProvider();
  v102[4] = &off_28341EBC8;
  v102[0] = v49;
  v50 = OBJC_IVAR____TtC8StocksUI23StockListViewController_scrollTracker;
  *&v34[v50] = [objc_allocWithZone(sub_22088AE6C()) init];
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_backgroundView] = 0;
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController____lazy_storage___exchangeStatusToolbarItem] = 0;
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState] = 2;
  v51 = &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_lastContentOffset];
  *v51 = 0;
  *(v51 + 1) = 0;
  v51[16] = 1;
  v52 = OBJC_IVAR____TtC8StocksUI23StockListViewController_logger;
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v53 = sub_22088A84C();
  v54 = __swift_project_value_buffer(v53, qword_2812B6CB8);
  (*(*(v53 - 8) + 16))(&v34[v52], v54, v53);
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_contentSizeCategoryObserver] = 0;
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_applicationStateObserver] = 0;
  sub_22046DA2C(v104, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_renderer]);
  sub_22046DA2C(v103, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_styler]);
  v55 = &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler];
  v56 = v84;
  v57 = v85;
  *v55 = v89;
  *(v55 + 1) = v56;
  v59 = v92;
  v58 = v93;
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController] = v92;
  v60 = &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintSelectionProvider];
  v61 = v83;
  *v60 = v57;
  *(v60 + 1) = v61;
  v62 = &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_mastheadViewProvider];
  v63 = v86;
  *v62 = v58;
  *(v62 + 1) = v63;
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_lazySearchController] = v88;
  v64 = v90;
  v65 = v91;
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_bootstrapper] = v90;
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_commands] = v65;
  sub_22046DA2C(v96, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_keyboardInputMonitor]);
  sub_22046DA2C(v98, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_appConfigurationManager]);
  v66 = v95;
  sub_22046DA2C(v95, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_quoteAttributionProvider]);
  sub_22046DA2C(v108, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability]);
  sub_22046DA2C(v102, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_editWatchlistMenuProvider]);
  *&v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_stockListDraggingObserver] = v94;
  sub_22046DA2C(v97, &v34[OBJC_IVAR____TtC8StocksUI23StockListViewController_activeWatchlistProvider]);
  v101.receiver = v34;
  v101.super_class = v87;
  swift_unknownObjectRetain();
  v67 = v59;
  swift_unknownObjectRetain();

  v68 = v64;

  v69 = objc_msgSendSuper2(&v101, sel_initWithNibName_bundle_, 0, 0);
  *(*&v69[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 24) = &off_283420050;
  swift_unknownObjectWeakAssign();
  v70 = *&v69[OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController];
  v71 = v69;
  v72 = v70;
  sub_22088C79C();

  v73 = v66[3];
  v74 = v66[4];
  __swift_project_boxed_opaque_existential_1(v66, v73);
  (*(v74 + 8))(v73, v74);
  sub_22044D56C(0, &qword_28127E7C0);
  v75 = sub_220891D0C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = v71;
  sub_2208886EC();

  __swift_project_boxed_opaque_existential_1(v99, v100);
  sub_2208882EC();

  __swift_destroy_boxed_opaque_existential_1(v99);
  v77 = v98;
  __swift_project_boxed_opaque_existential_1(v98, v98[3]);
  sub_22088640C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22088868C();

  __swift_project_boxed_opaque_existential_1(v99, v100);
  v78 = v76;
  sub_2208882EC();

  __swift_destroy_boxed_opaque_existential_1(v99);
  *(swift_allocObject() + 16) = v78;

  sub_22088868C();

  __swift_destroy_boxed_opaque_existential_1(v97);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v112);
  return v78;
}

uint64_t sub_22076C4F8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 176))(1, 0, 0, ObjectType, v1);
}

void sub_22076C558()
{
  sub_22046B36C();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = v2 + *(*(v1 - 8) + 64);
  sub_22045BE48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v5 = *(v4 - 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((v3 + *(v5 + 80)) & ~*(v5 + 80));

  sub_220767C80(v6, v7, v0 + v2, v8);
}

void sub_22076C644(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22089230C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22076C6A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2204A1E8C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22076C73C()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 96))(ObjectType, v1);
}

void sub_22076C794()
{
  if (!qword_27CF59770)
  {
    sub_2205EE5D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59770);
    }
  }
}

void sub_22076C7F8()
{
  if (!qword_281298058)
  {
    sub_22088AA4C();
    sub_2204446D4(255, &unk_281297EA0);
    sub_22088ADDC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_281298058);
    }
  }
}

uint64_t sub_22076C894(uint64_t a1)
{
  v3 = *(sub_22089030C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_220766C14(a1, v4, v5);
}

void sub_22076C908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StockListModel(255);
    v7 = sub_22045C20C(&qword_281293CD8, type metadata accessor for StockListModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22076C9B0()
{
  if (!qword_28127E930)
  {
    sub_22088CC6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E930);
    }
  }
}

uint64_t sub_22076CA1C(uint64_t a1, uint64_t a2)
{
  sub_2204A1E8C(0, &qword_28127E928, sub_22076C9B0, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22076CBC4()
{
  sub_22089254C();
  MEMORY[0x223D89680](0x5B206B636F7453, 0xE700000000000000);
  sub_22088685C();
  sub_22089264C();
  MEMORY[0x223D89680](540686880, 0xE400000000000000);
  sub_22089264C();
  MEMORY[0x223D89680](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_22076CCC8()
{
  v0 = sub_22088BA1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22076D030(0, &unk_281297C40, MEMORY[0x277D6D8F8]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v20 - v7;
  sub_22076D030(0, &unk_281298048, MEMORY[0x277D6D2F8]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v20 - v11;
  v13 = sub_22088E5CC();
  __swift_allocate_value_buffer(v13, qword_2812B6BD0);
  v20[1] = __swift_project_value_buffer(v13, qword_2812B6BD0);
  if (qword_281297080 != -1)
  {
    swift_once();
  }

  v20[2] = 0;
  v21 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();

  v16 = [v15 bundleForClass_];
  sub_220884CAC();

  v17 = sub_22088AB9C();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_22088B86C();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D9A8], v0);
  return sub_22088E57C();
}

void sub_22076D030(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22076D084(void *a1, char a2)
{
  v4 = sub_22088BA1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281297080 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  v11 = a1;
  v12 = [v10 bundleForClass_];
  sub_220884CAC();

  if (qword_28127F098 != -1)
  {
    swift_once();
  }

  v13 = qword_2812B6928;
  (*(v5 + 104))(v8, *MEMORY[0x277D6D9A8], v4);
  v16 = v11;
  v17 = a2;
  sub_22088B17C();
  swift_allocObject();
  v14 = v13;
  return sub_22088B10C();
}

uint64_t sub_22076D2F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22076D33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22076D390()
{
  result = qword_27CF59788;
  if (!qword_27CF59788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59788);
  }

  return result;
}

uint64_t sub_22076D3E4@<X0>(uint64_t *a1@<X0>, double *a2@<X1>, double a3@<X8>)
{
  v137 = a3;
  v138 = sub_22088D83C();
  v6 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v7);
  v136 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for QuoteSummaryViewLayoutOptions();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v135 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v147 = a2[1];
  v148 = v12;
  v14 = a2[2];
  v13 = a2[3];
  v15 = type metadata accessor for StockTitleViewLayoutOptions();
  *&v16 = *(v15 + 20);
  sub_22088C31C();
  v144 = v17;
  v19 = v18;
  v20 = v3[5];
  v145 = *&v3;
  __swift_project_boxed_opaque_existential_1(v3 + 2, v20);
  v143 = a1;
  v21 = *a1;
  v22 = a1[1];
  v149 = v16;
  v23 = sub_22088C28C();
  v24 = [v23 horizontalSizeClass];

  v134 = v14;
  if (v24 >= 2)
  {
    if (v24 != 2)
    {
      goto LABEL_17;
    }

    sub_22088C31C();
  }

  v25 = v144 - v147 - v13;
  v26 = sub_220510408(v21, v22);
  v133 = v25;
  v142 = v19;
  [v26 boundingRectWithSize:33 options:0 context:{v25, v19}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = (a2 + *(v15 + 24));
  if ((v35[1] & 1) == 0)
  {
    v36 = *v35;
    v37 = sub_220891D8C();
    [v37 ascender];
    v39 = v38;

    v40 = sub_220891D8C();
    [v40 capHeight];
    v42 = v41;

    v148 = v36 - (v39 - v42);
  }

  v151.origin.x = v28;
  v151.origin.y = v30;
  v151.size.width = v32;
  v151.size.height = v34;
  Width = CGRectGetWidth(v151);
  v152.origin.x = v28;
  v152.origin.y = v30;
  v152.size.width = v32;
  v152.size.height = v34;
  Height = CGRectGetHeight(v152);
  v44 = __swift_project_boxed_opaque_existential_1((*&v145 + 16), *(*&v145 + 40));
  v45 = v143;
  v46 = *(v143 + 2);
  v47 = *(v143 + 3);
  v48 = sub_22088C28C();
  v49 = [v48 horizontalSizeClass];

  v141 = 0.0;
  v139 = v26;
  if (v49 >= 2)
  {
    v131 = v47;
    v132 = v6;
    v140 = v46;
    if (v49 == 2)
    {
      sub_22088C31C();
      v53 = *v44;
      sub_2204A5DF0();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220899920;
      v55 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v56 = sub_22044D56C(0, &qword_28127E570);
      v57 = v55;
      v58 = sub_220891F2C();
      v59 = MEMORY[0x277D740C0];
      *(inited + 40) = v58;
      v60 = *v59;
      *(inited + 64) = v56;
      *(inited + 72) = v60;
      v61 = v53[5];
      v62 = v53[6];
      __swift_project_boxed_opaque_existential_1(v53 + 2, v61);
      v63 = *(v62 + 16);
      v64 = *(v63 + 216);
      v65 = v60;
      v66 = v64(v61, v63);
      *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
      *(inited + 80) = v66;
      sub_2204A5EAC(inited);
      swift_setDeallocating();
      sub_2204A5D84();
      swift_arrayDestroy();
      v67 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v68 = sub_22089132C();
      type metadata accessor for Key(0);
      sub_2204A63B8();
      v69 = sub_22089125C();

      v70 = [v67 initWithString:v68 attributes:v69];

      v50 = 0.0;
      v51 = 0.0;
      v140 = 0.0;
      v6 = v132;
      v52 = v136;
      v45 = v143;
      if (v70)
      {
        v131 = Width;
        v71 = v133;
        [v70 boundingRectWithSize:33 options:0 context:{v133, v142}];
        v73 = v72;
        v75 = v74;
        v153.origin.y = v30;
        v77 = v76;
        v79 = v78;
        v153.origin.x = v28;
        v153.size.width = v32;
        v153.size.height = v34;
        v80 = CGRectGetWidth(v153) + 10.0;
        v140 = v75;
        v141 = v73;
        v154.origin.x = v73;
        v154.origin.y = v75;
        v81 = v77;
        v154.size.width = v77;
        v154.size.height = v79;
        v82 = 0.0;
        v83 = v80 + CGRectGetWidth(v154) < v71;
        v50 = 0.0;
        v84 = 0.0;
        v85 = 0.0;
        if (v83)
        {
          v87 = v147;
          v86 = v148;
          v155.origin.x = v147;
          v155.origin.y = v148;
          v88 = v131;
          v155.size.width = v131;
          v89 = Height;
          v155.size.height = Height;
          v82 = CGRectGetMaxX(v155) + 10.0;
          v156.origin.x = v87;
          v156.origin.y = v86;
          v156.size.width = v88;
          v156.size.height = v89;
          MinY = CGRectGetMinY(v156);
          v91 = sub_220891D8C();
          [v91 ascender];
          v93 = v92;

          v94 = MinY + v93;
          v95 = sub_220891D8C();
          v45 = v143;
          [v95 ascender];
          v97 = v96;

          v50 = v94 - v97;
          v99 = v140;
          v98 = v141;
          v157.origin.x = v141;
          v157.origin.y = v140;
          v157.size.width = v81;
          v157.size.height = v79;
          v84 = CGRectGetWidth(v157);
          v158.origin.x = v98;
          v158.origin.y = v99;
          v158.size.width = v81;
          v158.size.height = v79;
          v85 = CGRectGetHeight(v158);
        }

        v140 = v85;
        v141 = v82;

        Width = v131;
        v51 = v84;
      }

      goto LABEL_14;
    }

LABEL_17:
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  v50 = 0.0;
  v51 = 0.0;
  v140 = 0.0;
  v52 = v136;
LABEL_14:
  v137 = v50;
  v143 = *&v51;
  v100 = sub_22088C32C();
  v101 = v135;
  (*(*(v100 - 8) + 16))(v135, a2 + *&v149, v100);
  __swift_project_boxed_opaque_existential_1((*&v145 + 56), *(*&v145 + 80));
  v102 = type metadata accessor for StockTitleViewModel();
  sub_2205BBCE8(COERCE_DOUBLE((v45 + *(v102 + 24))), v101, v150);
  v103 = v147;
  v159.origin.y = v148;
  v159.origin.x = v147;
  v159.size.width = Width;
  v159.size.height = Height;
  v104 = CGRectGetMaxY(v159) + 1.0;
  v149 = v104;
  x = v150[0].origin.x;
  y = v150[0].origin.y;
  v107 = Width;
  v109 = v150[0].size.width;
  v108 = v150[0].size.height;
  v110 = CGRectGetWidth(v150[0]);
  v145 = v110;
  v160.origin.x = x;
  v160.origin.y = y;
  v160.size.width = v109;
  v160.size.height = v108;
  v111 = CGRectGetHeight(v160);
  v161.origin.x = v103;
  v161.origin.y = v104;
  v161.size.width = v110;
  v161.size.height = v111;
  MaxY = CGRectGetMaxY(v161);
  v162.origin.x = v103;
  v113 = v148;
  v162.origin.y = v148;
  v162.size.width = v107;
  v114 = v107;
  v115 = Height;
  v162.size.height = Height;
  v116 = CGRectGetMaxY(v162);
  if (MaxY > v116)
  {
    v116 = MaxY;
  }

  v117 = v134 + v116;
  sub_22076DCB4(v52);
  v118 = v144;
  v119 = v142;
  v120 = sub_220891EFC();
  v136 = v121;
  v134 = v122;
  MEMORY[0x28223BE20](v120, v123);
  *(&v130 - 18) = a2;
  *(&v130 - 17) = v118;
  *(&v130 - 16) = v119;
  *(&v130 - 15) = v117;
  *(&v130 - 14) = v103;
  *(&v130 - 13) = v113;
  *(&v130 - 12) = v114;
  v124 = v141;
  *(&v130 - 11) = v115;
  *(&v130 - 10) = v124;
  v125 = v143;
  *(&v130 - 9) = v137;
  *(&v130 - 8) = v125;
  *(&v130 - 7) = v140;
  *(&v130 - 6) = v103;
  v126 = v145;
  *(&v130 - 5) = v149;
  *(&v130 - 4) = v126;
  *(&v130 - 3) = v111;
  v128 = v150;
  v129 = v52;
  type metadata accessor for StockTitleViewLayoutAttributes();
  sub_22088C18C();

  sub_22076E304(v101);
  return (*(v6 + 8))(v52, v138);
}

uint64_t sub_22076DCB4@<X0>(uint64_t a1@<X8>)
{
  if ((sub_22088F0DC() & 1) != 0 || ((type metadata accessor for StockTitleViewLayoutOptions(), v2 = sub_22088C24C(), v3 = [v2 horizontalSizeClass], v2, v3) ? (v4 = v3 == 2) : (v4 = 1), v4))
  {
    v5 = *MEMORY[0x277D6E860];
    v6 = sub_22088D83C();
    v7 = *(*(v6 - 8) + 104);
    v8 = v6;
    v9 = a1;
    v10 = v5;
  }

  else
  {
    if (v3 != 1)
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    v12 = sub_22088C2AC();
    v13 = sub_220891DFC();

    v8 = sub_22088D83C();
    v7 = *(*(v8 - 8) + 104);
    if (v13)
    {
      v14 = MEMORY[0x277D6E868];
    }

    else
    {
      v14 = MEMORY[0x277D6E860];
    }

    v10 = *v14;
    v9 = a1;
  }

  return v7(v9, v10, v8);
}

uint64_t sub_22076DE48@<X0>(uint64_t a1@<X1>, const void *a2@<X2>, uint64_t a3@<X3>, CGFloat *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D2>, double a7@<D7>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v78 = a3;
  v79 = a2;
  v61[1] = a1;
  v64 = a7;
  v72 = a13;
  v73 = a12;
  v71 = a14;
  v61[2] = a8;
  v65 = a11;
  v62 = sub_22088D83C();
  v66 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v18);
  v63 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088ABEC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80.origin.y = *(a1 + *(type metadata accessor for StockTitleViewLayoutOptions() + 28));
  v80.origin.x = 0.0;
  v80.size.width = a5;
  v80.size.height = a6;
  v81 = CGRectIntegral(v80);
  y = v81.origin.y;
  x = v81.origin.x;
  height = v81.size.height;
  width = v81.size.width;
  v25 = *MEMORY[0x277D6D320];
  v26 = *(v21 + 104);
  v26(v24, v25, v20);
  sub_22088ABDC();
  v69 = v28;
  v70 = v27;
  v67 = v30;
  v68 = v29;
  v31 = *(v21 + 8);
  v31(v24, v20);
  v26(v24, v25, v20);
  sub_22088ABDC();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v31(v24, v20);
  v26(v24, v25, v20);
  v40 = v62;
  sub_22088ABDC();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v31(v24, v20);
  v49 = v63;
  v50 = v66;
  (*(v66 + 16))(v63, v78, v40);
  v51 = sub_22088C28C();
  v52 = [v51 horizontalSizeClass];

  if (v52 >= 2)
  {
    if (v52 != 2)
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    sub_22088C31C();
    if (v54 >= 640.0)
    {
      v53 = 1;
    }

    else
    {
      v53 = 2;
    }
  }

  else
  {
    v53 = 0;
  }

  v55 = y;
  *a4 = x;
  a4[1] = v55;
  v56 = height;
  a4[2] = width;
  a4[3] = v56;
  v57 = v69;
  *(a4 + 4) = v70;
  *(a4 + 5) = v57;
  v58 = v67;
  *(a4 + 6) = v68;
  *(a4 + 7) = v58;
  *(a4 + 8) = v33;
  *(a4 + 9) = v35;
  *(a4 + 10) = v37;
  *(a4 + 11) = v39;
  *(a4 + 12) = v42;
  *(a4 + 13) = v44;
  *(a4 + 14) = v46;
  *(a4 + 15) = v48;
  memcpy(a4 + 16, v79, 0x1A1uLL);
  v59 = type metadata accessor for StockTitleViewLayoutAttributes();
  result = (*(v50 + 32))(a4 + *(v59 + 36), v49, v40);
  *(a4 + *(v59 + 40)) = v53;
  return result;
}

uint64_t sub_22076E304(uint64_t a1)
{
  v2 = type metadata accessor for QuoteSummaryViewLayoutOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22076E480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22076E4C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StockSearchLayoutSectionDescriptor();
  MEMORY[0x28223BE20](v30, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for StockSearchSectionHeaderViewLayoutOptions();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StockSearchSectionDescriptor();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576D44();
  sub_22088B2AC();
  sub_22068C904(v34);
  sub_22076F454(v23, type metadata accessor for StockSearchSectionDescriptor);
  v24 = sub_22088C32C();
  (*(*(v24 - 8) + 16))(v19, a1, v24);
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  sub_220838654(v34, v8);
  sub_22076F2FC(0, &qword_281282D60, sub_220496010, type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes);
  v26 = *(v25 + 48);
  *(v15 + 6) = v35;
  v27 = v34[1];
  *v15 = v34[0];
  *(v15 + 1) = v27;
  *(v15 + 2) = v34[2];
  sub_22076F384(v8, &v15[v26], type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes);
  v32 = a1;
  v33 = a2;
  sub_220574B50(sub_22076F2DC, v31);
  sub_22076F3EC(v15, v11, type metadata accessor for StockSearchLayoutSectionDescriptor);
  type metadata accessor for StockSearchLayoutModel();
  sub_22076E480(qword_2812822F8, type metadata accessor for StockSearchLayoutSectionDescriptor);
  sub_22076E480(&qword_28128C340, type metadata accessor for StockSearchLayoutModel);
  sub_22088C33C();
  sub_22076F454(v15, type metadata accessor for StockSearchLayoutSectionDescriptor);
  return sub_22076F454(v19, type metadata accessor for StockSearchSectionHeaderViewLayoutOptions);
}

uint64_t sub_22076E894@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v75 = a1;
  v81 = a3;
  v78 = sub_220886A4C();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v4);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for StockSearchLayoutModel();
  MEMORY[0x28223BE20](v80, v6);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockSearchCellViewLayoutOptions();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v75 - v14;
  v16 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v75 - v22;
  v24 = type metadata accessor for StockSearchModel();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4A18();
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22076F2FC(0, &qword_281293BF0, type metadata accessor for StockViewModel, MEMORY[0x277D698E0]);
    v29 = *(v28 + 48);
    sub_22076F384(v27, v19, type metadata accessor for StockViewModel);
    v30 = v77;
    v31 = &v27[v29];
    v32 = v78;
    (*(v77 + 32))(v76, v31, v78);
    v33 = sub_22088C32C();
    (*(*(v33 - 8) + 16))(v11, v75, v33);
    v11[*(v8 + 20)] = 1;
    v34 = __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    __swift_project_boxed_opaque_existential_1((*v34 + 16), *(*v34 + 40));
    v35 = sub_22088684C();
    v37 = sub_220605F2C(v35, v36, 0);

    sub_22088C31C();
    v39 = v38;
    sub_22088C20C();
    sub_220891A6C();
    [v37 boundingRectWithSize:0 options:0 context:{v39 - v40, 1.79769313e308}];
    v41 = CGRectGetHeight(v97) >= 27.0;
    sub_2205A3FFC(v41, v19, v11, &v82);

    sub_220496328();
    v43 = *(v42 + 48);
    v44 = v79;
    v45 = v79 + *(v42 + 64);
    sub_22076F3EC(v19, v79, type metadata accessor for StockViewModel);
    v46 = v76;
    (*(v30 + 16))(v44 + v43, v76, v32);
    (*(v30 + 56))(v44 + v43, 0, 1, v32);
    v47 = v95;
    *(v45 + 192) = v94;
    *(v45 + 208) = v47;
    *(v45 + 224) = v96;
    v48 = v91;
    *(v45 + 128) = v90;
    *(v45 + 144) = v48;
    v49 = v93;
    *(v45 + 160) = v92;
    *(v45 + 176) = v49;
    v50 = v87;
    *(v45 + 64) = v86;
    *(v45 + 80) = v50;
    v51 = v89;
    *(v45 + 96) = v88;
    *(v45 + 112) = v51;
    v52 = v83;
    *v45 = v82;
    *(v45 + 16) = v52;
    v53 = v85;
    *(v45 + 32) = v84;
    *(v45 + 48) = v53;
    sub_22076E480(&qword_28128C340, type metadata accessor for StockSearchLayoutModel);
    sub_22088BC2C();
    sub_22076F454(v11, type metadata accessor for StockSearchCellViewLayoutOptions);
    (*(v30 + 8))(v46, v32);
    v23 = v19;
  }

  else
  {
    sub_22076F384(v27, v23, type metadata accessor for StockViewModel);
    v54 = sub_22088C32C();
    (*(*(v54 - 8) + 16))(v15, v75, v54);
    v15[*(v8 + 20)] = 0;
    v55 = __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    __swift_project_boxed_opaque_existential_1((*v55 + 16), *(*v55 + 40));
    v56 = sub_22088684C();
    v58 = sub_220605F2C(v56, v57, 0);

    sub_22088C31C();
    v60 = v59;
    sub_22088C20C();
    sub_220891A6C();
    [v58 boundingRectWithSize:0 options:0 context:{v60 - v61, 1.79769313e308}];
    v62 = CGRectGetHeight(v98) >= 27.0;
    sub_2205A3FFC(v62, v23, v15, &v82);

    sub_220496328();
    v64 = *(v63 + 48);
    v65 = v79;
    v66 = v79 + *(v63 + 64);
    sub_22076F3EC(v23, v79, type metadata accessor for StockViewModel);
    (*(v77 + 56))(v65 + v64, 1, 1, v78);
    v67 = v95;
    *(v66 + 192) = v94;
    *(v66 + 208) = v67;
    *(v66 + 224) = v96;
    v68 = v91;
    *(v66 + 128) = v90;
    *(v66 + 144) = v68;
    v69 = v93;
    *(v66 + 160) = v92;
    *(v66 + 176) = v69;
    v70 = v87;
    *(v66 + 64) = v86;
    *(v66 + 80) = v70;
    v71 = v89;
    *(v66 + 96) = v88;
    *(v66 + 112) = v71;
    v72 = v83;
    *v66 = v82;
    *(v66 + 16) = v72;
    v73 = v85;
    *(v66 + 32) = v84;
    *(v66 + 48) = v73;
    sub_22076E480(&qword_28128C340, type metadata accessor for StockSearchLayoutModel);
    sub_22088BC2C();
    sub_22076F454(v15, type metadata accessor for StockSearchCellViewLayoutOptions);
  }

  return sub_22076F454(v23, type metadata accessor for StockViewModel);
}

uint64_t sub_22076F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_22088C32C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_22076F138, 0, 0);
}

uint64_t sub_22076F138()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_2205747B4(sub_22076F2BC, v3);

  type metadata accessor for StockSearchLayoutSectionDescriptor();
  type metadata accessor for StockSearchLayoutModel();
  sub_22076E480(qword_2812822F8, type metadata accessor for StockSearchLayoutSectionDescriptor);
  sub_22076E480(&qword_28128C340, type metadata accessor for StockSearchLayoutModel);
  sub_22088B05C();

  v4 = v0[1];

  return v4();
}

void sub_22076F2FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22076F384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22076F3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22076F454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_22076F4B4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_separatorView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_earningsLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for StockFeedEarningsView.AddCalendarButton()) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_separatorView];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

char *sub_22076F66C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = qword_28128D6E0;
  sub_22049D9F4();
  *&a1[v11] = [objc_allocWithZone(v12) init];
  v18.receiver = a1;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a2, a3, a4, a5);
  v14 = *&v13[qword_28128D6E0];
  v15 = v13;
  v16 = v14;
  sub_22088E18C();

  return v15;
}

void sub_22076F73C(uint64_t a1)
{
  v2 = qword_28128D6E0;
  sub_22049D9F4();
  *(a1 + v2) = [objc_allocWithZone(v3) init];
  sub_22089267C();
  __break(1u);
}

uint64_t type metadata accessor for StockFeedEarningsView.AddCalendarButton()
{
  result = qword_28128D6D0;
  if (!qword_28128D6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22076F908()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton) + qword_28128D6E0);
}

void sub_22076F970()
{
  sub_22076F9FC(&qword_28128D6C0);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22076F9FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedEarningsView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22076FA3C()
{
  v1 = OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_separatorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_earningsLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for StockFeedEarningsView.AddCalendarButton()) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_22076FB6C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t))
{
  v101 = a7;
  v98 = a3;
  v99 = a2;
  v94 = a1;
  v103 = sub_220886A4C();
  v100 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220770FE8(0, &qword_27CF57A30, MEMORY[0x277D6DF88]);
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v95 = (&v86 - v13);
  v89 = sub_22088CFEC();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v14);
  v87 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  v90 = *(v16 - 1);
  v91 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D6EC60];
  sub_220770F90(0, &qword_27CF597B0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = (&v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v86 - v27;
  sub_220770FE8(0, &qword_27CF56C48, v20);
  v30 = v29;
  v93 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v86 = &v86 - v36;
  v37 = sub_22088BC8C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a6;
  if (a6)
  {
    v92 = v30;
    v42 = v99;

    sub_22088CEFC();
    v43 = (*(v38 + 88))(v41, v37);
    v44 = *MEMORY[0x277D6DA70];
    (*(v38 + 8))(v41, v37);
    if (v43 != v44)
    {
      sub_220770E84();
      v71 = swift_allocError();
      *v72 = 0;
      v74 = v95;
      v73 = v96;
      *v95 = v71;
      v75 = v97;
      (*(v73 + 104))(v74, *MEMORY[0x277D6DF68], v97);
      v42(v74);

      (*(v73 + 8))(v74, v75);
      return;
    }

    sub_220599F20();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899360;
    sub_22088CEEC();
    v46 = v91;
    v47 = sub_22088AD4C();
    v49 = v48;
    v90[1](v19, v46);
    *(inited + 32) = v47;
    *(inited + 40) = v49;
    sub_220770530(inited, v94, v42, v98, v28);
    swift_setDeallocating();
    sub_220770ED8(inited + 32);
    v50 = v92;
    v51 = v93;
    if ((*(v93 + 48))(v28, 1, v92) != 1)
    {
      v76 = v86;
      (*(v51 + 32))(v86, v28, v50);
      v77 = v88;
      v78 = v87;
      v79 = v89;
      (*(v88 + 104))(v87, *MEMORY[0x277D6E440], v89);
      sub_22088CECC();
      (*(v77 + 8))(v78, v79);
      type metadata accessor for ManageWatchlistsModel();
      sub_22055DF30();
      sub_22070FE8C();
      v80 = v95;
      sub_22088C64C();
      v99(v80);

      (*(v96 + 8))(v80, v97);
      (*(v51 + 8))(v76, v92);
      return;
    }

    v52 = MEMORY[0x277D6EC60];
    v53 = v28;
    goto LABEL_16;
  }

  v90 = v24;
  v91 = v33;
  v55 = v99;
  v54 = v100;
  v56 = v101;
  if (!v101)
  {
    return;
  }

  v57 = *(v101 + 2);
  v58 = MEMORY[0x277D84F90];
  if (v57)
  {
    v92 = v30;
    v104 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v57, 0);
    v58 = v104;
    v60 = v54[2];
    v59 = v54 + 2;
    v61 = v56 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v101 = v59[7];
    v102 = v60;
    v100 = v59 - 1;
    v62 = v103;
    do
    {
      v63 = v59;
      (v102)(v10, v61, v62);
      v64 = sub_2208869BC();
      v62 = v103;
      v65 = v64;
      v67 = v66;
      (*v100)(v10, v103);
      v104 = v58;
      v69 = *(v58 + 16);
      v68 = *(v58 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22048EE54((v68 > 1), v69 + 1, 1);
        v62 = v103;
        v58 = v104;
      }

      *(v58 + 16) = v69 + 1;
      v70 = v58 + 16 * v69;
      *(v70 + 32) = v65;
      *(v70 + 40) = v67;
      v61 += v101;
      --v57;
      v59 = v63;
    }

    while (v57);
    v55 = v99;
    v30 = v92;
  }

  v81 = v90;
  sub_220770530(v58, v94, v55, v98, v90);

  v82 = v93;
  v83 = (*(v93 + 48))(v81, 1, v30);
  v84 = v91;
  if (v83 == 1)
  {
    v52 = MEMORY[0x277D6EC60];
    v53 = v81;
LABEL_16:
    sub_220771078(v53, &qword_27CF597B0, &qword_27CF56C48, v52, sub_220770F90);
    return;
  }

  (*(v82 + 32))(v91, v81, v30);
  type metadata accessor for ManageWatchlistsModel();
  sub_22055DF30();
  sub_22070FE8C();
  v85 = v95;
  sub_22088C66C();
  v55(v85);
  (*(v96 + 8))(v85, v97);
  (*(v82 + 8))(v84, v30);
}

uint64_t sub_220770530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v66 = a3;
  v68 = a5;
  sub_220770FE8(0, &qword_27CF57A30, MEMORY[0x277D6DF88]);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v62 = (&v61 - v9);
  sub_220770F2C(0, &qword_27CF57A38, sub_22055DDDC, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v81 = &v61 - v12;
  sub_22055DDDC();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v76 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D6D710];
  sub_220770F90(0, &qword_27CF57A40, &qword_27CF56B28, MEMORY[0x277D6D710]);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v79 = &v61 - v21;
  sub_220770FE8(0, &qword_27CF56B28, v18);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v25);
  v75 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v61 - v29;
  sub_220770FE8(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v32 = v31;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v61 - v35;
  v67 = v37;
  (*(v37 + 16))(&v61 - v35, a2, v32, v34);
  v38 = *(a1 + 16);
  if (v38)
  {
    v77 = (v24 + 48);
    v78 = v32;
    v72 = (v15 + 48);
    v73 = (v24 + 32);
    v70 = (v24 + 16);
    v71 = (v15 + 32);
    v74 = (v24 + 8);
    v69 = (v15 + 8);
    v39 = a1 + 40;
    while (1)
    {
      v80 = v38;
      v40 = v14;
      v41 = v81;

      v42 = v79;
      sub_22088E76C();
      if ((*v77)(v42, 1, v23) == 1)
      {

        sub_220771078(v42, &qword_27CF57A40, &qword_27CF56B28, MEMORY[0x277D6D710], sub_220770F90);
        sub_220770E84();
        v50 = swift_allocError();
        v49 = 1;
        *v51 = 1;
        v53 = v62;
        v52 = v63;
        *v62 = v50;
        v54 = v64;
        (*(v52 + 104))(v53, *MEMORY[0x277D6DF68], v64);
        v66(v53);
        (*(v52 + 8))(v53, v54);
        goto LABEL_9;
      }

      (*v73)(v30, v42, v23);
      sub_22088B3AC();

      v43 = v41;
      v14 = v40;
      if ((*v72)(v43, 1, v40) == 1)
      {
        break;
      }

      v44 = v76;
      (*v71)(v76, v81, v14);
      v45 = v75;
      (*v70)(v75, v30, v23);
      sub_22088B31C();
      v32 = v78;
      sub_22088E75C();
      v46 = *v74;
      (*v74)(v45, v23);
      (*v69)(v44, v14);
      v46(v30, v23);
      v39 += 16;
      v38 = v80 - 1;
      if (v80 == 1)
      {
        goto LABEL_6;
      }
    }

    sub_220771078(v81, &qword_27CF57A38, sub_22055DDDC, MEMORY[0x277D83D88], sub_220770F2C);
    sub_220770E84();
    v55 = swift_allocError();
    v49 = 1;
    *v56 = 1;
    v57 = v62;
    v58 = v63;
    *v62 = v55;
    v59 = v64;
    (*(v58 + 104))(v57, *MEMORY[0x277D6DF68], v64);
    v66(v57);
    (*(v58 + 8))(v57, v59);
    (*v74)(v30, v23);
LABEL_9:
    v48 = v67;
    v32 = v78;
    (*(v67 + 8))(v36, v78);
    v47 = v68;
  }

  else
  {
LABEL_6:
    v48 = v67;
    v47 = v68;
    (*(v67 + 32))(v68, v36, v32);
    v49 = 0;
  }

  return (*(v48 + 56))(v47, v49, 1, v32);
}

uint64_t sub_220770CD4()
{
  sub_220770F2C(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE40], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

unint64_t sub_220770E30()
{
  result = qword_27CF597A8;
  if (!qword_27CF597A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF597A8);
  }

  return result;
}

unint64_t sub_220770E84()
{
  result = qword_27CF597B8;
  if (!qword_27CF597B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF597B8);
  }

  return result;
}

void sub_220770F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_220770F90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_220770FE8(255, a3, a4);
    v5 = sub_22089230C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_220770FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel();
    v8[2] = sub_22055DF30();
    v8[3] = sub_22070FE8C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220771078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2207710EC()
{
  result = qword_27CF597C0;
  if (!qword_27CF597C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF597C0);
  }

  return result;
}

uint64_t sub_220771140()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220884E9C();
  __swift_allocate_value_buffer(v4, qword_27CF6D138);
  v5 = __swift_project_value_buffer(v4, qword_27CF6D138);
  sub_220884E8C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_220771268(double a1)
{
  v3 = sub_2204BE298(0, *(v1 + 56), *(v1 + 64), a1);
  [v3 setNumberStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v5 = [v3 stringFromNumber_];

  if (v5)
  {
    v6 = sub_22089136C();
    v8 = v7;
  }

  else
  {

    v6 = sub_22089185C();
    v8 = v9;
  }

  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = __swift_project_boxed_opaque_existential_1((v1 + 16), v10);
  v13 = *(v10 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22089104C();
  (*(*(v11 + 8) + 8))(v17, v10);

  v18 = (*(v11 + 136))(v6, v8, v10, v11);

  (*(v13 + 8))(v16, v10);
  return v18;
}

uint64_t sub_220771460()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_220771508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for ForYouFeedMastheadViewStyler();
    v5 = swift_allocObject();
    result = sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_28341A200;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207715DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284560);
  result = sub_2208884DC();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v8, v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for ForYouFeedMastheadViewStyler();
    v21[3] = v13;
    v21[4] = &off_28341A200;
    v21[0] = v12;
    v14 = a2(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x28223BE20](v16, v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_28341A200;
    v15[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a4[3] = v14;
    a4[4] = a3;
    *a4 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220771814@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if (!v58)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812829D0);
  result = sub_2208884DC();
  if (!v57)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127F2D0);
  result = sub_2208884DC();
  if (!v55)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PremiumSealAnimationManager();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = result;
  v41 = v58;
  v42 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v53)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v39 = &v36;
    MEMORY[0x28223BE20](v5, v5);
    v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v38 = &v36;
    MEMORY[0x28223BE20](v9, v9);
    v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v7;
    v14 = *v11;
    v15 = type metadata accessor for ForYouFeedMastheadViewRenderer();
    v50 = v15;
    v51 = &off_283411FB0;
    v49[0] = v13;
    v16 = type metadata accessor for ForYouFeedMastheadViewLayoutAttributesFactory();
    v47 = v16;
    v48 = &off_283421018;
    v46[0] = v14;
    v17 = type metadata accessor for ForYouFeedMastheadViewProvider();
    v18 = objc_allocWithZone(v17);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v37 = &v36;
    MEMORY[0x28223BE20](v19, v19);
    v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v36 = &v36;
    MEMORY[0x28223BE20](v23, v23);
    v25 = (&v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v21;
    v28 = *v25;
    v45[3] = v15;
    v45[4] = &off_283411FB0;
    v44[4] = &off_283421018;
    v45[0] = v27;
    v44[3] = v16;
    v44[0] = v28;
    v29 = OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_mastheadView;
    v30 = objc_allocWithZone(type metadata accessor for ForYouFeedMastheadView());
    *&v18[v29] = [v30 initWithFrame_];
    v31 = OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_margins;
    v32 = *MEMORY[0x277D6DDC8];
    v33 = sub_22088C1BC();
    (*(*(v33 - 8) + 104))(&v18[v31], v32, v33);
    *&v18[OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_model] = v41;
    sub_22046DA2C(v45, &v18[OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_renderer]);
    sub_22046DA2C(v44, &v18[OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_layoutAttributesFactory]);
    *&v18[OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_animationManager] = v40;
    sub_22046DA2C(v52, &v18[OBJC_IVAR____TtC8StocksUI30ForYouFeedMastheadViewProvider_baseStyler]);
    v43.receiver = v18;
    v43.super_class = v17;
    v34 = objc_msgSendSuper2(&v43, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v35 = v42;
    v42[3] = v17;
    result = sub_220778508(&qword_2812858F8, type metadata accessor for ForYouFeedMastheadViewProvider);
    v35[4] = result;
    *v35 = v34;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220771E48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289750);
  result = sub_2208884DC();
  if (v11)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    MEMORY[0x28223BE20](v4, v4);
    v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v7 + 16))(v6);
    v8 = sub_220778044(*v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = sub_220778508(&qword_28128B440, type metadata accessor for QuoteDetailViewRenderer);
    *a2 = v8;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220771FE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289750);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for QuoteDetailViewStyler();
    v17[3] = v9;
    v17[4] = &off_283425760;
    v17[0] = v8;
    v10 = type metadata accessor for QuoteDetailViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    *(v11 + 40) = v9;
    *(v11 + 48) = &off_283425760;
    *(v11 + 16) = v16;
    *(v11 + 56) = 0;
    *(v11 + 64) = 1;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_283421C78;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220772220@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281284BB0);
  result = sub_2208884DC();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287178);
  result = sub_2208884DC();
  v5 = v23;
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (v22)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    MEMORY[0x28223BE20](v7, v7);
    v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for StockFeedMastheadViewStyler();
    v20[3] = v12;
    v20[4] = &off_283425AC8;
    v20[0] = v11;
    type metadata accessor for StockFeedMastheadViewRenderer();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
    MEMORY[0x28223BE20](v14, v14);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v13[5] = v12;
    v13[6] = &off_283425AC8;
    v13[2] = v18;
    v13[7] = v5;
    v13[8] = v6;
    sub_220457328(&v21, (v13 + 9));
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v25);
    result = sub_220778508(&qword_281285FC8, type metadata accessor for StockFeedMastheadViewRenderer);
    *a2 = v13;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220772568@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281284BB0);
  result = sub_2208884DC();
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127FC88);
  result = sub_2208884DC();
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288E90);
  result = sub_2208884DC();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (v19)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v5, v5);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v9, v9);
    v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v13, v13);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = sub_2207781B8(*v7, *v11, *v15, &v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    result = type metadata accessor for StockFeedMastheadViewLayoutAttributesFactory();
    a2[3] = result;
    a2[4] = &off_283423DE8;
    *a2 = v17;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220772910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286EF0);
  result = sub_2208884DC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281287178);
    result = sub_2208884DC();
    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for StockFeedQuoteViewStyler();
      v19[3] = v12;
      v19[4] = &off_28341CC50;
      v19[0] = v11;
      type metadata accessor for StockFeedPriceViewRenderer();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v12);
      MEMORY[0x28223BE20](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v12;
      v13[6] = &off_28341CC50;
      v13[2] = v18;
      v13[7] = v5;
      v13[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = sub_220778508(&qword_281288CD0, type metadata accessor for StockFeedPriceViewRenderer);
      *a2 = v13;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220772BFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286EF0);
  result = sub_2208884DC();
  if (!v32)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127FC88);
  result = sub_2208884DC();
  if (!v30)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v5 = v27;
  if (v27)
  {
    v6 = type metadata accessor for StockFeedPriceViewLayoutAttributesFactory();
    v7 = v28;
    v8 = __swift_project_boxed_opaque_existential_1(v26, v27);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v25 = &v25;
    MEMORY[0x28223BE20](v9, v9);
    v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x28223BE20](v13, v13);
    v15 = &v26[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = (*(v16 + 16))(v15);
    MEMORY[0x28223BE20](v17, v18);
    v20 = &v26[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20, v8, v5);
    v22 = type metadata accessor for StockFeedQuoteViewStyler();
    v23 = type metadata accessor for QuoteSummaryViewLayoutAttributesFactory();
    v24 = sub_220883170(v11, v15, v20, v6, v22, v5, v23, &off_28341CC50, v7, &off_283414AC8);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    a2[3] = v6;
    a2[4] = &off_283428418;
    *a2 = v24;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220772FA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284BB8);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for StockFeedEarningsViewStyler();
    v20[3] = v9;
    v20[4] = &off_2834123D0;
    v20[0] = v8;
    type metadata accessor for StockFeedEarningsViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_2834123D0;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_281286078, type metadata accessor for StockFeedEarningsViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220773234@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284BB8);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for StockFeedEarningsViewStyler();
    v22[3] = v9;
    v22[4] = &off_2834123D0;
    v22[0] = v8;
    v10 = type metadata accessor for StockFeedEarningsViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    *(v11 + 80) = v9;
    *(v11 + 88) = &off_2834123D0;
    __asm { FMOV            V1.2D, #12.0 }

    *(v11 + 16) = xmmword_2208B2D60;
    *(v11 + 32) = _Q1;
    *(v11 + 48) = 0x4014000000000000;
    *(v11 + 56) = v16;
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a2[3] = v10;
    a2[4] = &off_283418190;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220773474@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288300);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SectionHeaderViewStyler();
    v20[3] = v9;
    v20[4] = &off_283418580;
    v20[0] = v8;
    type metadata accessor for SectionHeaderViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283418580;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_281289740, type metadata accessor for SectionHeaderViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220773704@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288300);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SectionHeaderViewStyler();
    v17[3] = v9;
    v17[4] = &off_283418580;
    v17[0] = v8;
    v10 = type metadata accessor for SectionHeaderViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_283418580;
    v11[2] = v16;
    v11[7] = MEMORY[0x277D84F98];
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_283425D20;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22077393C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289E78);
  result = sub_2208884DC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281287178);
    result = sub_2208884DC();
    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for StockTitleViewStyler();
      v19[3] = v12;
      v19[4] = &off_28341A268;
      v19[0] = v11;
      type metadata accessor for StockTitleViewRenderer();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v12);
      MEMORY[0x28223BE20](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v12;
      v13[6] = &off_28341A268;
      v13[2] = v18;
      v13[7] = v5;
      v13[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = sub_220778508(&qword_28128C1D8, type metadata accessor for StockTitleViewRenderer);
      *a2 = v13;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220773C28@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v32)
  {
    v27 = a4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28128F330);
    result = sub_2208884DC();
    if (v29)
    {
      v11 = a2(0);
      v13 = v32;
      v12 = v33;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26 = &v26;
      MEMORY[0x28223BE20](v14, v14);
      v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      v18 = v29;
      v19 = v30;
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      MEMORY[0x28223BE20](v20, v20);
      v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22);
      v24 = a3(v16, v22, v11, v13, v18, v12, v19);
      __swift_destroy_boxed_opaque_existential_1(v28);
      result = __swift_destroy_boxed_opaque_existential_1(v31);
      v25 = v27;
      a5[3] = v11;
      a5[4] = v25;
      *a5 = v24;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220773EBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289E78);
  result = sub_2208884DC();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28127FC88);
    result = sub_2208884DC();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x28223BE20](v5, v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x28223BE20](v9, v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for StockTitleViewStyler();
      v33[3] = v15;
      v33[4] = &off_28341A268;
      v33[0] = v13;
      v16 = type metadata accessor for QuoteSummaryViewLayoutAttributesFactory();
      v31 = v16;
      v32 = &off_283414AC8;
      v30[0] = v14;
      v17 = type metadata accessor for StockTitleViewLayoutAttributesFactory();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x28223BE20](v19, v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v23, v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_28341A268;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_283414AC8;
      v18[7] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_2834205E0;
      *a2 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2207742F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283D70);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for StockSectionFooterViewStyler();
    v20[3] = v9;
    v20[4] = &off_283414268;
    v20[0] = v8;
    type metadata accessor for StockSectionFooterViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283414268;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_2812854B8, type metadata accessor for StockSectionFooterViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220774584@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283D70);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for StockSectionFooterViewStyler();
    v17[3] = v9;
    v17[4] = &off_283414268;
    v17[0] = v8;
    v10 = type metadata accessor for StockSectionFooterViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_283414268;
    v11[2] = v16;
    v11[7] = MEMORY[0x277D84F98];
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_283416FF0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207747F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_2812877A8);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for WatchlistSwitcherStyler();
    v17[3] = v9;
    v17[4] = &off_283412140;
    v17[0] = v8;
    v10 = type metadata accessor for WatchlistSwitcherLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_283412140;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_28341D790;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220774A1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281286C70);
  result = sub_2208884DC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28127ECF0);
    result = sub_2208884DC();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for StockSparklineViewStyler();
      v19[3] = v10;
      v19[4] = &off_28341D380;
      v19[0] = v9;
      v11 = type metadata accessor for StockSparklineViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x28223BE20](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_28341D380;
      v12[2] = v17;
      sub_220457328(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_283425530;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220774CAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281286C70);
  result = sub_2208884DC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28127ECD8);
    result = sub_2208884DC();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for StockSparklineViewStyler();
      v19[3] = v10;
      v19[4] = &off_28341D380;
      v19[0] = v9;
      v11 = type metadata accessor for StockSparklineViewLayoutAttributesFactory();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x28223BE20](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_28341D380;
      v12[2] = v17;
      sub_220457328(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_283424008;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220774F3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2208852DC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v19)
  {
    v9 = type metadata accessor for StockSparklineViewStyler();
    sub_22088528C();
    v10 = v19;
    v11 = v20;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v12, v12);
    v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v15 + 16))(v14);
    v16 = sub_22046BE88(v14, v7, v9, v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v9;
    a2[4] = &off_28341D380;
    *a2 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207750FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128DAF8);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for PlacardViewStyler();
    v20[3] = v9;
    v20[4] = &off_28341DDE0;
    v20[0] = v8;
    type metadata accessor for PlacardViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_28341DDE0;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_28128FCC0, type metadata accessor for PlacardViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22077538C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128DAF8);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for PlacardViewStyler();
    v17[3] = v9;
    v17[4] = &off_28341DDE0;
    v17[0] = v8;
    v10 = type metadata accessor for PlacardViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_28341DDE0;
    v11[2] = v16;
    v11[7] = MEMORY[0x277D84F98];
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_283424018;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207755C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283C18);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BilingualFeedPromptViewStyler();
    v20[3] = v9;
    v20[4] = &off_283413CD0;
    v20[0] = v8;
    type metadata accessor for BilingualFeedPromptViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283413CD0;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_281285050, type metadata accessor for BilingualFeedPromptViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220775854@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283C18);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BilingualFeedPromptViewStyler();
    v17[3] = v9;
    v17[4] = &off_283413CD0;
    v17[0] = v8;
    v10 = type metadata accessor for BilingualFeedPromptViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_283413CD0;
    v11[2] = v16;
    sub_2207784A8();
    swift_allocObject();
    v11[7] = sub_220888D0C();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_283414E98;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220775AA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288648);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BrandingTitleViewStyler();
    v20[3] = v9;
    v20[4] = &off_28341FA50;
    v20[0] = v8;
    type metadata accessor for BrandingTitleViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_28341FA50;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_281289E58, type metadata accessor for BrandingTitleViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220775D30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288648);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BrandingTitleViewStyler();
    v17[3] = v9;
    v17[4] = &off_28341FA50;
    v17[0] = v8;
    v10 = type metadata accessor for BrandingTitleViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_28341FA50;
    v11[2] = v16;
    v11[7] = MEMORY[0x277D84F98];
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_28341A990;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220775F68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289998);
  result = sub_2208884DC();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for PremiumSealAnimationManager();
    result = sub_2208884CC();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      MEMORY[0x28223BE20](v6, v6);
      v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for ForYouTitleViewStyler();
      v22[3] = v11;
      v22[4] = &off_283417888;
      v22[0] = v10;
      type metadata accessor for ForYouTitleViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v11);
      MEMORY[0x28223BE20](v13, v13);
      v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v20 = v11;
      v21 = &off_283417888;
      *&v19 = v17;
      sub_220457328(&v19, v12 + 16);
      *(v12 + 56) = v5;
      __swift_destroy_boxed_opaque_existential_1(v22);
      __swift_destroy_boxed_opaque_existential_1(v23);
      result = sub_220778508(&qword_28128B6D0, type metadata accessor for ForYouTitleViewRenderer);
      *a2 = v12;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220776208@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128F330);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if (v20)
  {
    v29[0] = v19[1];
    v29[1] = v20;
    v30 = v21;
    v31 = v22;
    v5 = type metadata accessor for ForYouTitleViewStyler();
    v7 = v27;
    v6 = v28;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v8, v8);
    v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10);
    v12 = v24;
    v13 = v25;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v14, v14);
    v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    v18 = sub_2204EA4B4(v10, v16, v29, v5, v7, v12, v6, v13);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    a2[3] = v5;
    a2[4] = &off_283417888;
    *a2 = v18;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2207764D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289998);
  result = sub_2208884DC();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281288E90);
    result = sub_2208884DC();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x28223BE20](v5, v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x28223BE20](v9, v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for ForYouTitleViewStyler();
      v33[3] = v15;
      v33[4] = &off_283417888;
      v33[0] = v13;
      v16 = type metadata accessor for MastheadMetricsFactory();
      v31 = v16;
      v32 = &off_283425F88;
      v30[0] = v14;
      v17 = type metadata accessor for ForYouTitleViewLayoutAttributesFactory();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x28223BE20](v19, v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v23, v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_283417888;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_283425F88;
      v18[7] = v28;
      v18[12] = MEMORY[0x277D84F98];
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_283421450;
      *a2 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22077691C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288DB8);
  result = sub_2208884DC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28128D860);
    result = sub_2208884DC();
    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for QuoteSummaryViewStyler();
      v19[3] = v12;
      v19[4] = &off_28341C598;
      v19[0] = v11;
      type metadata accessor for QuoteSummaryViewRenderer();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v12);
      MEMORY[0x28223BE20](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v12;
      v13[6] = &off_28341C598;
      v13[2] = v18;
      v13[7] = v5;
      v13[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = sub_220778508(&qword_28128A2D8, type metadata accessor for QuoteSummaryViewRenderer);
      *a2 = v13;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220776C08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288DB8);
  result = sub_2208884DC();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281281978);
    result = sub_2208884DC();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x28223BE20](v5, v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x28223BE20](v9, v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for QuoteSummaryViewStyler();
      v33[3] = v15;
      v33[4] = &off_28341C598;
      v33[0] = v13;
      v16 = type metadata accessor for QuoteViewLayoutAttributesFactory();
      v31 = v16;
      v32 = &off_2834251B8;
      v30[0] = v14;
      v17 = type metadata accessor for QuoteSummaryViewLayoutAttributesFactory();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x28223BE20](v19, v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v23, v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_28341C598;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_2834251B8;
      v18[7] = v28;
      v18[12] = MEMORY[0x277D84F98];
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_283414AC8;
      *a2 = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22077704C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128FC18);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for QuoteViewStyler();
    v20[3] = v9;
    v20[4] = &off_28341F300;
    v20[0] = v8;
    type metadata accessor for QuoteViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_28341F300;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_2812917D8, type metadata accessor for QuoteViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207772DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128FC18);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for QuoteViewStyler();
    v17[3] = v9;
    v17[4] = &off_28341F300;
    v17[0] = v8;
    v10 = type metadata accessor for QuoteViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_28341F300;
    v11[2] = v16;
    v11[7] = MEMORY[0x277D84F98];
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_2834251B8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220777514@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220505CDC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297B50);
  result = sub_22088849C();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297AD0);
  result = sub_2208884DC();
  if (v7)
  {
    v5 = sub_22088AA6C();
    swift_allocObject();
    result = sub_22088AA5C();
    v6 = MEMORY[0x277D6D2B0];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220777678@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22089082C();
  swift_allocObject();
  v3 = sub_22089081C();
  a1[3] = v2;
  result = sub_220778508(&qword_27CF597C8, MEMORY[0x277D33CA0]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_220777704@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220505CDC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297B50);
  result = sub_22088849C();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297AD0);
  result = sub_2208884DC();
  if (v7)
  {
    v5 = sub_22088AA6C();
    swift_allocObject();
    result = sub_22088AA5C();
    v6 = MEMORY[0x277D6D2B0];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220777868@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22088C02C();
  swift_allocObject();
  result = sub_22088C01C();
  v4 = MEMORY[0x277D6DCA8];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2207778C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289CF0);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for CardToolbarViewStyler();
    v20[3] = v9;
    v20[4] = &off_283423200;
    v20[0] = v8;
    type metadata accessor for CardToolbarViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283423200;
    *&v17 = v15;
    *(v10 + 56) = 0;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220778508(&qword_28128BD78, type metadata accessor for CardToolbarViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220777B54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289CF0);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for CardToolbarViewStyler();
    v17[3] = v9;
    v17[4] = &off_283423200;
    v17[0] = v8;
    v10 = type metadata accessor for CardToolbarViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_283423200;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_283411BD0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220777D80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127FF80);
  result = sub_2208884DC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281288638);
    result = sub_2208884DC();
    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for CardToolbarViewLayoutAttributesFactory();
      v19[3] = v12;
      v19[4] = &off_283411BD0;
      v19[0] = v11;
      type metadata accessor for CardToolbarViewProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v12);
      MEMORY[0x28223BE20](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[6] = v12;
      v13[7] = &off_283411BD0;
      v13[2] = 0;
      v13[3] = v18;
      v13[8] = 0x4050800000000000;
      v13[9] = v5;
      v13[10] = v6;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = sub_220778508(&qword_28128BE40, type metadata accessor for CardToolbarViewProvider);
      *a2 = v13;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_220778044(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_283425760;
  v14[0] = a1;
  v2 = type metadata accessor for QuoteDetailViewRenderer();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  MEMORY[0x28223BE20](v4, v4);
  v6 = (&v12 - v5);
  (*(v7 + 16))(&v12 - v5);
  v8 = *v6;
  v13[3] = v1;
  v13[4] = &off_283425760;
  v13[0] = v8;
  v9 = &v3[OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_lastKnownContentOffset];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_22046DA2C(v13, &v3[OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_styler]);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

void *sub_2207781B8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for StockFeedMastheadViewStyler();
  v35[3] = v8;
  v35[4] = &off_283425AC8;
  v35[0] = a1;
  v9 = type metadata accessor for QuoteSummaryViewLayoutAttributesFactory();
  v33 = v9;
  v34 = &off_283414AC8;
  v32[0] = a2;
  v10 = type metadata accessor for MastheadMetricsFactory();
  v30 = v10;
  v31 = &off_283425F88;
  v29[0] = a3;
  type metadata accessor for StockFeedMastheadViewLayoutAttributesFactory();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v35, v8);
  MEMORY[0x28223BE20](v12, v12);
  v14 = (&v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (&v29[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v20, v20);
  v22 = (&v29[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v14;
  v25 = *v18;
  v26 = *v22;
  v11[5] = v8;
  v11[6] = &off_283425AC8;
  v11[2] = v24;
  v11[10] = v9;
  v11[11] = &off_283414AC8;
  v11[12] = v26;
  v11[7] = v25;
  v11[15] = v10;
  v11[16] = &off_283425F88;
  v11[22] = MEMORY[0x277D84F98];
  sub_220457328(a4, (v11 + 17));
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v11;
}

void sub_2207784A8()
{
  if (!qword_2812986F0)
  {
    v0 = sub_220888D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812986F0);
    }
  }
}

uint64_t sub_220778508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220778550(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsContentMode(0);
  sub_22088837C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22055F760();
  sub_22088E11C();
  if (v5)
  {
    sub_22088731C();
    swift_dynamicCast();
  }

  else
  {
    sub_220779010(v4, sub_22055F87C);
  }

  sub_22088731C();
  sub_22088832C();

  v2 = sub_22088E0FC();
  v2(a1);
}

uint64_t sub_2207786AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v70 = a1;
  sub_22055F760();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManageWatchlistsContentMode(0);
  v69 = *(v17 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v20 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v64 - v23;
  sub_220778ED4(v68, v11, sub_2206AA758);
  v25 = (*(v13 + 48))(v11, 1, v12);
  v66 = a3;
  if (v25 == 1)
  {
    sub_220779010(v11, sub_2206AA758);
    v26 = 1;
  }

  else
  {
    v27 = *(v13 + 32);
    v27(v16, v11, v12);
    v27(v24, v16, v12);
    v26 = 0;
  }

  sub_22057B2D0();
  (*(*(v28 - 8) + 56))(v24, v26, 1, v28);
  v29 = v3[5];
  v68 = v3[6];
  v65 = v3;
  v67 = __swift_project_boxed_opaque_existential_1(v3 + 2, v29);
  sub_220778E70();
  sub_220778ED4(v24, v20, type metadata accessor for ManageWatchlistsContentMode);
  v31 = v72;
  v30 = v73;
  v32 = v71;
  (*(v72 + 16))(v71, v70, v73);
  v33 = v24;
  v34 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v35 = (v18 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  sub_220596844(v20, v36 + v34);
  (*(v31 + 32))(v36 + v35, v32, v30);
  sub_2208884BC();

  if (v76 == 0.0)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_220457328(&v74, v78);
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  v38 = sub_2205DFBC0(v33);
  v39 = [objc_allocWithZone(sub_22088BE5C()) initWithRootViewController_];

  if (!v66)
  {
LABEL_20:
    v41 = 0;
    goto LABEL_21;
  }

  v40 = sub_22088C49C();
  v41 = v40;
  if (!v40)
  {

    goto LABEL_21;
  }

  v42 = [v40 nextResponder];
  if (!v42)
  {
    goto LABEL_19;
  }

  v43 = v42;
  while (1)
  {
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      break;
    }

    v45 = [v43 nextResponder];

    v43 = v45;
    if (!v45)
    {
      goto LABEL_19;
    }
  }

  v46 = [v44 view];

  if (!v46)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_22088C48C();
  if ((v79 & 1) != 0 || *&v78[7] == 0.0 && *&v78[8] == 0.0)
  {
    v47 = sub_22088C49C();
    if (v47)
    {
      v48 = v47;
      [v47 bounds];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
    }

    else
    {
      v50 = 0.0;
      v52 = 0.0;
      v54 = 0.0;
      v56 = 0.0;
    }

LABEL_27:
    v57 = v41;
    [v46 convertRect:v57 fromCoordinateSpace:{v50, v52, v54, v56}];

    v41 = v46;
    v58 = sub_22088C47C();
    if (v58)
    {
      v59 = v58;
      v60 = [v65[7] traitCollection];
      v61 = [v60 horizontalSizeClass];

      if (v61 != 1)
      {
        v62 = v39;
        [v62 setModalPresentationStyle_];
        [v62 setPreferredContentSize_];
        v63 = [v62 popoverPresentationController];

        if (!v63)
        {
          sub_220779010(v33, type metadata accessor for ManageWatchlistsContentMode);
          swift_unknownObjectRelease();

          goto LABEL_23;
        }

        swift_unknownObjectRetain();
        [v63 setSourceItem_];

        swift_unknownObjectRelease_n();
LABEL_22:

        sub_220779010(v33, type metadata accessor for ManageWatchlistsContentMode);
LABEL_23:
        __swift_destroy_boxed_opaque_existential_1(v78);
        return v39;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_21:
    [v39 setModalPresentationStyle_];
    goto LABEL_22;
  }

  result = sub_22088C48C();
  if ((v77 & 1) == 0)
  {
    v52 = *(&v74 + 1);
    v50 = *&v74;
    v54 = v75;
    v56 = v76;
    goto LABEL_27;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_220778E70()
{
  result = qword_281288E98[0];
  if (!qword_281288E98[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281288E98);
  }

  return result;
}

uint64_t sub_220778ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220778F3C(void *a1)
{
  type metadata accessor for ManageWatchlistsContentMode(0);
  sub_22055F760();

  return sub_220778550(a1);
}

uint64_t sub_220779010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_2207790A0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_220779108()
{
  v1 = *(v0 + 273);
  if (v1 == 2)
  {
    LOBYTE(v1) = _s11TeaSettings0B0C8StocksUIE7WelcomeV7VersionV14isBrandNewUserSbvgZ_0();
    *(v0 + 273) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_220779138(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_22088F11C();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088F14C();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22077DB20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  sub_22044D56C(0, &qword_28127E7C0);
  v15 = sub_220891D0C();
  sub_22077DB7C(a1, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  sub_22077DBE0(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_22077DC44;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_40;
  v18 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2204627EC(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2204627EC(&qword_28127EA50, 255, sub_22056D204);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v10, v6, v18);
  _Block_release(v18);

  (*(v23 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v22);
}

uint64_t sub_2207794D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22089030C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22077DCA8();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 216);
    v43 = *(result + 200);
    v44 = v13;
    v14 = *(result + 248);
    v45 = *(result + 232);
    v46 = v14;
    v47 = *(result + 264);
    v42 = *(result + 184);
    if (!v43)
    {
    }

    v38 = v7;
    v39 = a2;
    v48 = *(result + 184);
    v49 = v43;
    v15 = *(result + 224);
    v50 = *(result + 208);
    v51 = v15;
    v16 = *(result + 256);
    v52 = *(result + 240);
    v53 = v16;
    v17 = *(result + 160);
    sub_22077DD10(&v42, v41);
    v18 = v17;
    v19 = sub_2208903AC();

    v20 = (v19 & 1) == 0;
    if (v19)
    {
      v21 = 0x656E696C66664FLL;
    }

    else
    {
      v21 = 0x656E696C6E4FLL;
    }

    if (v20)
    {
      v22 = 0xE600000000000000;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    if (qword_2812980C8 != -1)
    {
      swift_once();
    }

    v23 = sub_22088A84C();
    __swift_project_value_buffer(v23, qword_2812B6CD0);

    v24 = sub_22088A82C();
    v25 = sub_220891AFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v29 = v21;
      v30 = v28;
      v41[0] = v28;
      *v27 = 136315394;
      v31 = sub_2204A7B78(v29, v22, v41);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      sub_22088867C();
      v32 = sub_2204A7B78(*&aStart_0[8 * v40], 0xE500000000000000, v41);

      *(v27 + 14) = v32;
      swift_arrayDestroy();
      MEMORY[0x223D8B7F0](v30, -1, -1);
      v33 = v27;
      v4 = v37;
      MEMORY[0x223D8B7F0](v33, -1, -1);
    }

    else
    {
    }

    sub_22088867C();
    v34 = LOBYTE(v41[0]);
    sub_22077DB7C(v39, v11);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {
      sub_220779910();
      if (v34 == 1)
      {
        sub_220779980(&v48);
      }

      sub_22077DD98(&v42);
    }

    v35 = v38;
    (*(v4 + 32))(v38, v11, v3);
    sub_220779E4C(v35, &v48);
    sub_22077DD98(&v42);

    return (*(v4 + 8))(v35, v3);
  }

  return result;
}

id sub_220779910()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView);
  *(v2 + OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView) = 0;
  sub_2206F4DE8(v3);

  result = [*(v2 + OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator) setHidden_];
  *(v1 + 272) = 0;
  return result;
}

uint64_t sub_220779980(uint64_t a1)
{
  v2 = v1;
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22088A84C();
  __swift_project_value_buffer(v4, qword_2812B6CD0);
  v5 = sub_22088A82C();
  v6 = sub_220891AFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22043F000, v5, v6, "Starting welcome animation.", v7, 2u);
    MEMORY[0x223D8B7F0](v7, -1, -1);
  }

  type metadata accessor for WelcomeViewAnimator.Canceler();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  swift_beginAccess();

  MEMORY[0x223D89870](v9);
  if (*((*(v2 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  v10 = swift_endAccess();
  MEMORY[0x28223BE20](v10, v11);
  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0);
  v12 = sub_220891D0C();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22077DE34;
  *(v13 + 24) = v2;

  sub_220888E3C();

  v14 = sub_220891D0C();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22077DE78;
  *(v15 + 24) = v2;

  sub_220888E3C();

  v16 = swift_allocObject();
  *(v16 + 16) = sub_22077DE80;
  *(v16 + 24) = v2;

  v17 = sub_220888D9C();
  sub_220888E3C();

  v18 = sub_220891D0C();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v8;
  v20 = *(a1 + 48);
  *(v19 + 64) = *(a1 + 32);
  *(v19 + 80) = v20;
  *(v19 + 96) = *(a1 + 64);
  *(v19 + 112) = *(a1 + 80);
  v21 = *(a1 + 16);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v21;

  sub_22077DED8(a1, v27);
  sub_220888E4C();

  v22 = sub_220891D0C();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  v24 = *(a1 + 48);
  *(v23 + 56) = *(a1 + 32);
  *(v23 + 72) = v24;
  *(v23 + 88) = *(a1 + 64);
  *(v23 + 104) = *(a1 + 80);
  v25 = *(a1 + 16);
  *(v23 + 24) = *a1;
  *(v23 + 40) = v25;

  sub_22077DED8(a1, v27);
  sub_220888E9C();
}

void sub_220779E4C(uint64_t a1, double *a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_22089030C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - v12;
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v14 = sub_22088A84C();
  __swift_project_value_buffer(v14, qword_2812B6CD0);
  v15 = *(v6 + 16);
  v15(v13, a1, v5);
  v35 = a1;
  v15(v9, a1, v5);
  v16 = sub_22088A82C();
  v17 = sub_220891AFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v2;
    v19 = v18;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v19 = 136315394;
    v20 = sub_2208902AC();
    v22 = v21;
    v23 = *(v6 + 8);
    v23(v13, v5);
    v24 = sub_2204A7B78(v20, v22, &v37);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
    v27 = v26;
    v23(v9, v5);
    v28 = sub_2204A7B78(v25, v27, &v37);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_22043F000, v16, v17, "Rendering error view for model %s (%s", v19, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x223D8B7F0](v29, -1, -1);
    v30 = v19;
    v3 = v34;
    MEMORY[0x223D8B7F0](v30, -1, -1);
  }

  else
  {

    v31 = *(v6 + 8);
    v31(v9, v5);
    v31(v13, v5);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  sub_220590760(v35, v36, *(v3 + 16));
  *(v3 + 272) = 1;
}

uint64_t sub_22077A160(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v22 = *(a1 + 40);
  v23 = *(a1 + 24);
  sub_22077A548();
  sub_22077E49C(a1, v32);
  v7 = [v6 horizontalSizeClass];
  v8 = [v6 verticalSizeClass];
  if (v7 < 2)
  {
    goto LABEL_2;
  }

  if (v7 != 2)
  {
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  if (v8 == 2)
  {
    v10 = 0;
    v9 = (*(a1 + 8) + -768.0) * 0.00390625;
  }

  else
  {
LABEL_2:
    v9 = (*(a1 + 8) + -568.0) / 244.0;
    v10 = 1;
  }

  sub_22088867C();
  *&v25 = v4;
  *(&v25 + 1) = v5;
  *v26 = v6;
  *&v26[8] = v23;
  *&v26[24] = v22;
  v26[40] = v10;
  *&v27 = v9;
  v11 = *&v26[16];
  v33[2] = *&v26[16];
  v12 = *&v26[32];
  v33[3] = *&v26[32];
  v13 = v27;
  v33[4] = v27;
  v14 = v25;
  v33[0] = v25;
  v33[1] = *v26;
  v15 = *(v2 + 200);
  v29[0] = *(v2 + 184);
  v29[1] = v15;
  v16 = *(v2 + 248);
  v29[3] = *(v2 + 232);
  v29[4] = v16;
  v29[2] = *(v2 + 216);
  v28 = v6;
  v34 = v6;
  v30 = *(v2 + 264);
  *(v2 + 200) = *v26;
  *(v2 + 184) = v14;
  *(v2 + 264) = v6;
  *(v2 + 248) = v13;
  *(v2 + 232) = v12;
  *(v2 + 216) = v11;
  sub_22077E49C(a1, v32);
  sub_22077DED8(&v25, v32);
  sub_22077DD98(v29);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  sub_2206E5B60(v31);
  __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
  sub_2205BCB6C(v31, v33, v32);
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  sub_22058E460(v31, v10, v32, *(v2 + 16));
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v17 = sub_22088A84C();
  __swift_project_value_buffer(v17, qword_2812B6CD0);

  v18 = sub_22088A82C();
  v19 = sub_220891AFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    sub_22088867C();
    *(v20 + 4) = v24;

    _os_log_impl(&dword_22043F000, v18, v19, "Rendering for key frame %ld", v20, 0xCu);
    MEMORY[0x223D8B7F0](v20, -1, -1);
  }

  else
  {
  }

  sub_22088867C();
  if (v24)
  {
    if (v24 == 1)
    {
      if ((sub_2208903AC() & 1) != 0 || *(v2 + 272) == 1)
      {
        sub_22077A7B8(v33);
      }

      else
      {
        sub_22077AB98(v33, v31);
      }
    }
  }

  else
  {
    sub_220779980(v33);
  }

  sub_22077DF4C(&v25);
  sub_22077E138(v32);
  return sub_2206E6A14(v31);
}

uint64_t sub_22077A548()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 168);
  if (v3 >> 62)
  {
    result = sub_2208926AC();
    v4 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D8A700](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    [v6 stopAnimation_];
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  *(v1 + 168) = MEMORY[0x277D84F90];

  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v9 = sub_22088A84C();
  __swift_project_value_buffer(v9, qword_2812B6CD0);
  v10 = sub_22088A82C();
  v11 = sub_220891AFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22043F000, v10, v11, "Cancelling all outstanding cancelers.", v12, 2u);
    MEMORY[0x223D8B7F0](v12, -1, -1);
  }

  result = swift_beginAccess();
  v13 = *(v1 + 176);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_16;
    }

LABEL_23:
    *(v1 + 176) = v8;
  }

  result = sub_2208926AC();
  v14 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D8A700](j, v13);
      }

      else
      {
      }

      *(v16 + 16) = 1;
    }

    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22077A7B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22088F11C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088F14C();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v10);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v13 = sub_22088A84C();
  __swift_project_value_buffer(v13, qword_2812B6CD0);
  v14 = sub_22088A82C();
  v15 = sub_220891AFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22043F000, v14, v15, "Displaying offline message.", v16, 2u);
    MEMORY[0x223D8B7F0](v16, -1, -1);
  }

  sub_22044D56C(0, &qword_28127E7C0);
  v17 = sub_220891D0C();
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 56) = *(a1 + 32);
  *(v18 + 72) = v19;
  *(v18 + 88) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 24) = *a1;
  *(v18 + 16) = v2;
  *(v18 + 104) = *(a1 + 80);
  *(v18 + 40) = v20;
  aBlock[4] = sub_22077DF40;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_44;
  v21 = _Block_copy(aBlock);

  sub_22077DED8(a1, v24);

  sub_22088F13C();
  v24[0] = MEMORY[0x277D84F90];
  sub_2204627EC(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2204627EC(&qword_28127EA50, 255, sub_22056D204);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v12, v8, v21);
  _Block_release(v21);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v23);
}

void sub_22077AB98(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22088A84C();
  __swift_project_value_buffer(v4, qword_2812B6CD0);
  v5 = sub_22088A82C();
  v6 = sub_220891AFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22043F000, v5, v6, "Did reveal Page 1.", v7, 2u);
    MEMORY[0x223D8B7F0](v7, -1, -1);
  }

  sub_22077BF44(a1, a2);
  v8 = *MEMORY[0x277D764D8];

  UIAccessibilityPostNotification(v8, 0);
}

uint64_t sub_22077ACB4(uint64_t a1, __int128 *a2)
{
  if (sub_220779108())
  {
    return sub_22077AD40(a2);
  }

  sub_22077E3F0(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22077AD40(__int128 *a1)
{
  v2 = v1;
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22088A84C();
  __swift_project_value_buffer(v4, qword_2812B6CD0);
  v5 = sub_22088A82C();
  v6 = sub_220891AFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22043F000, v5, v6, "Starting Page 1 reveal.", v7, 2u);
    MEMORY[0x223D8B7F0](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  sub_2206E5B60(v37);
  v8 = *(a1 + 2);
  v9 = *(a1 + 56);
  v10 = *(a1 + 8);
  v11 = *(a1 + 10);
  v33 = *a1;
  *v34 = v8;
  *&v34[8] = *(a1 + 24);
  *&v34[24] = *(a1 + 40);
  v34[40] = v9;
  *&v35 = v10;
  BYTE8(v35) = 1;
  v36 = v11;
  v39[0] = v33;
  v39[1] = *v34;
  v40 = v11;
  v39[4] = v35;
  v39[3] = *&v34[32];
  v39[2] = *&v34[16];
  v12 = v8;
  v13 = v11;
  sub_2205BCB6C(v37, v39, __src);
  sub_22077DF4C(&v33);
  sub_2206E6A14(v37);
  sub_22065DB14();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  memcpy((v14 + 24), __src, 0x310uLL);

  sub_22077DFCC(__src, v32);
  v15 = sub_22077C93C();

  sub_22065DB6C();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  memcpy((v16 + 24), __src, 0x310uLL);

  sub_22077DFCC(__src, v32);
  v17 = sub_22077C93C();

  sub_22065DBC4();
  sub_22044D56C(0, &qword_27CF597F8);
  v18 = sub_220891E1C();
  swift_beginAccess();
  v19 = v18;
  MEMORY[0x223D89870]();
  if (*((v2[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  swift_endAccess();
  if (qword_27CF55958 != -1)
  {
    swift_once();
  }

  sub_2204627EC(&qword_27CF59800, v20, type metadata accessor for WelcomeViewAnimator);
  sub_220886B3C();
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  memcpy((v21 + 24), __src, 0x310uLL);

  sub_22077DFCC(__src, v32);
  v22 = sub_220891E0C();

  type metadata accessor for WelcomeViewAnimator.Canceler();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  swift_beginAccess();

  MEMORY[0x223D89870](v24);
  if (*((v2[22] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[22] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  swift_endAccess();
  sub_22077E3F0(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  sub_22077E3F0(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22089E460;
  *(v25 + 32) = v15;
  *(v25 + 40) = v17;
  *(v25 + 48) = v22;
  v32[0] = v25;

  v26 = sub_220888D9C();
  sub_22077E080();
  sub_2204627EC(&qword_27CF59810, 255, sub_22077E080);
  sub_220888E0C();

  sub_22044D56C(0, &qword_28127E7C0);
  v27 = sub_220891D0C();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v28;

  v30 = sub_220888E4C();

  sub_22077E138(__src);
  return v30;
}

uint64_t sub_22077B45C()
{
  v0 = sub_22088F17C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v12 - v7;
  if (sub_2208903AC())
  {
    sub_22077E210();
    swift_allocError();
    return swift_willThrow();
  }

  else if (sub_220779108())
  {
    sub_22088F16C();
    sub_22088F18C();
    v10 = *(v1 + 8);
    v10(v4, v0);
    v11 = sub_220888D6C();
    v10(v8, v0);
    return v11;
  }

  else
  {
    sub_22077E3F0(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }
}

uint64_t sub_22077B61C()
{
  v0 = sub_220888C5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v5 = sub_22088A84C();
  __swift_project_value_buffer(v5, qword_2812B6CD0);
  v6 = sub_22088A82C();
  v7 = sub_220891AFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22043F000, v6, v7, "Beginning pre-warming.", v8, 2u);
    MEMORY[0x223D8B7F0](v8, -1, -1);
  }

  if (qword_2812987F0 != -1)
  {
    swift_once();
  }

  v9 = sub_22088885C();
  __swift_project_value_buffer(v9, qword_2812987F8);
  (*(v1 + 104))(v4, *MEMORY[0x277D6CE40], v0);
  v10 = sub_220888B2C();
  (*(v1 + 8))(v4, v0);
  return v10;
}

uint64_t sub_22077B824(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v1 = off_28341CF78;
  type metadata accessor for WelcomeModelProvider();
  return v1();
}

void sub_22077B880(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[9];
  v46[8] = a1[8];
  v46[9] = v8;
  v47 = *(a1 + 20);
  v9 = a1[5];
  v46[4] = a1[4];
  v46[5] = v9;
  v10 = a1[7];
  v46[6] = a1[6];
  v46[7] = v10;
  v11 = a1[1];
  v46[0] = *a1;
  v46[1] = v11;
  v12 = a1[3];
  v46[2] = a1[2];
  v46[3] = v12;
  if (sub_2208903AC())
  {
    sub_22077E210();
    swift_allocError();
    swift_willThrow();
  }

  else if (*(a3 + 16))
  {
    if (qword_2812980C8 != -1)
    {
      swift_once();
    }

    v13 = sub_22088A84C();
    __swift_project_value_buffer(v13, qword_2812B6CD0);
    v14 = sub_22088A82C();
    v15 = sub_220891AFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      MEMORY[0x223D8B7F0](v16, -1, -1);
    }
  }

  else if (sub_220779108())
  {
    if (qword_2812980C8 != -1)
    {
      swift_once();
    }

    v17 = sub_22088A84C();
    __swift_project_value_buffer(v17, qword_2812B6CD0);
    v18 = sub_22088A82C();
    v19 = sub_220891AFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      MEMORY[0x223D8B7F0](v20, -1, -1);
    }

    sub_22077AB98(a4, v46);
  }

  else
  {
    v21 = a1[8];
    v22 = a1[9];
    v23 = a1[6];
    v42 = a1[7];
    v43 = v21;
    v44 = v22;
    v24 = a1[4];
    v25 = a1[5];
    v26 = a1[2];
    v38 = a1[3];
    v39 = v24;
    v40 = v25;
    v41 = v23;
    v27 = a1[1];
    v35 = *a1;
    v36 = v27;
    v45 = *(a1 + 20);
    v37 = v26;
    v28 = nullsub_1(&v35);
    v56 = v43;
    v57 = v44;
    v52 = v39;
    v53 = v40;
    v58 = v45;
    v54 = v41;
    v55 = v42;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    v51 = v38;
    MEMORY[0x28223BE20](v28, v29);
    sub_220888FBC();
    sub_22044D56C(0, &qword_28127E7C0);
    v30 = sub_220891D0C();
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    v32 = *(a4 + 48);
    *(v31 + 56) = *(a4 + 32);
    *(v31 + 72) = v32;
    *(v31 + 88) = *(a4 + 64);
    *(v31 + 104) = *(a4 + 80);
    v33 = *(a4 + 16);
    *(v31 + 24) = *a4;
    *(v31 + 40) = v33;

    sub_22077DED8(a4, &v34);
    sub_220888E3C();
  }
}

uint64_t sub_22077BC68(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22088A84C();
  __swift_project_value_buffer(v4, qword_2812B6CD0);
  v5 = sub_22088A82C();
  v6 = sub_220891AFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22043F000, v5, v6, "Offline error occurred during start animation.", v7, 2u);
    MEMORY[0x223D8B7F0](v7, -1, -1);
  }

  sub_22077AD40(a3);

  return sub_22077A7B8(a3);
}

uint64_t sub_22077BD68(uint64_t a1, double *a2)
{
  sub_22077DB20();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22089030C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208903FC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    if (qword_27CF55A60 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v7, qword_27CF6CFA8);
    (*(v8 + 16))(v11, v12, v7);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_220779E4C(v11, a2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22077BF44(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v6 = sub_22088A84C();
  __swift_project_value_buffer(v6, qword_2812B6CD0);
  v7 = sub_22088A82C();
  v8 = sub_220891AFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22043F000, v7, v8, "Starting Page 2 reveal.", v9, 2u);
    MEMORY[0x223D8B7F0](v9, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v3 + 14, v3[17]);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  *&v50 = *a1;
  v10 = v50;
  *(&v50 + 1) = v11;
  *&v51 = v12;
  *(&v51 + 1) = v13;
  *&v52 = v14;
  *(&v52 + 1) = v15;
  *&v53 = v16;
  BYTE8(v53) = v17;
  *&v54 = v18;
  BYTE8(v54) = 1;
  v55 = v19;
  v66[0] = v50;
  v66[1] = v51;
  v67 = v19;
  v66[3] = v53;
  v66[4] = v54;
  v66[2] = v52;
  v20 = v12;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  sub_2205BCB6C(a2, v66, v62);
  sub_22077DF4C(&v50);
  __swift_project_boxed_opaque_existential_1(v3 + 9, v3[12]);
  v24 = v3[2];
  sub_22058E460(a2, v17, v62, v24);
  __swift_project_boxed_opaque_existential_1(v3 + 14, v3[17]);
  *&v56 = v10;
  *(&v56 + 1) = v11;
  *&v57 = v22;
  *(&v57 + 1) = v13;
  *&v58 = v14;
  *(&v58 + 1) = v15;
  *&v59 = v16;
  BYTE8(v59) = v17;
  *&v60 = v18;
  BYTE8(v60) = 2;
  v61 = v23;
  v65 = v23;
  v64[2] = v58;
  v64[3] = v59;
  v64[4] = v60;
  v64[0] = v56;
  v64[1] = v57;
  sub_2205BCB6C(a2, v64, __src);
  sub_22077DF4C(&v56);
  sub_22065DC1C();
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  memcpy((v25 + 24), __src, 0x310uLL);

  sub_22077DFCC(__src, v49);
  v46 = sub_22077C93C();

  sub_22065DC74();
  v26 = swift_allocObject();
  *(v26 + 16) = v3;
  memcpy((v26 + 24), __src, 0x310uLL);

  sub_22077DFCC(__src, v49);
  v45 = sub_22077C93C();

  __swift_project_boxed_opaque_existential_1(v3 + 9, v3[12]);
  sub_22077E3F0(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22089B130;
  *(v27 + 32) = swift_getKeyPath();
  v28 = sub_2207E1384(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_220590100(0, v28, __src, v24);

  if (qword_27CF559D8 != -1)
  {
    swift_once();
  }

  sub_2204627EC(&qword_27CF59800, v29, type metadata accessor for WelcomeViewAnimator);
  sub_220886B3C();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22089B130;
  *(v30 + 32) = swift_getKeyPath();
  sub_2207E1384(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v44 = sub_22077CE64();

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22089B130;
  *(v31 + 32) = swift_getKeyPath();
  sub_2207E1384(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v43 = sub_22077CE64();

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22089B130;
  *(v32 + 32) = swift_getKeyPath();
  sub_2207E1384(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = sub_22077CE64();

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22089B130;
  *(v33 + 32) = swift_getKeyPath();
  sub_2207E1384(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = sub_22077CE64();

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22089B130;
  *(v34 + 32) = swift_getKeyPath();
  sub_2207E1384(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v48 = sub_22077CE64();

  type metadata accessor for WelcomeViewAnimator.Canceler();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  swift_beginAccess();

  MEMORY[0x223D89870](v36);
  if (*((v3[22] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[22] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  swift_endAccess();
  sub_22077E3F0(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2208B2DC0;
  *(v37 + 32) = v46;
  *(v37 + 40) = v45;
  *(v37 + 48) = v44;
  *(v37 + 56) = v43;
  *(v37 + 64) = v42;
  *(v37 + 72) = v47;
  *(v37 + 80) = v48;

  sub_220888E1C();

  sub_22044D56C(0, &qword_28127E7C0);
  v38 = sub_220891D0C();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = v39;

  sub_220888E4C();

  sub_22077E138(__src);
  return sub_22077E138(v62);
}

uint64_t sub_22077C93C()
{
  v1 = v0;
  sub_22044D56C(0, &qword_27CF597F8);
  v2 = sub_220891E1C();
  swift_beginAccess();
  v3 = v2;
  MEMORY[0x223D89870]();
  if (*((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  swift_endAccess();
  v4 = sub_220891E0C();

  return v4;
}

uint64_t sub_22077CA48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 72), *(a1 + 96));
  sub_22077E3F0(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B130;
  *(inited + 32) = swift_getKeyPath();
  v8 = sub_2207E1384(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_220590100(a4, v8, a2, *(a1 + 16));
}

uint64_t sub_22077CB40(__int128 *a1, uint64_t a2)
{
  v4 = a1[9];
  v38 = a1[8];
  v39 = v4;
  v40 = *(a1 + 20);
  v5 = a1[5];
  v34 = a1[4];
  v35 = v5;
  v6 = a1[7];
  v36 = a1[6];
  v37 = v6;
  v7 = a1[1];
  v30 = *a1;
  v31 = v7;
  v8 = a1[3];
  v32 = a1[2];
  v33 = v8;
  if (sub_22077E3D8(&v30) == 1)
  {
    __swift_project_boxed_opaque_existential_1((a2 + 32), *(a2 + 56));
    v9 = off_28341CF78;
    type metadata accessor for WelcomeModelProvider();
    return v9();
  }

  else
  {
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = v33;
    sub_22077E3F0(0, &qword_27CF59820, &type metadata for WelcomeModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v11 = a1[9];
    v28[8] = a1[8];
    v28[9] = v11;
    v29 = *(a1 + 20);
    v12 = a1[5];
    v28[4] = a1[4];
    v28[5] = v12;
    v13 = a1[7];
    v28[6] = a1[6];
    v28[7] = v13;
    v14 = a1[1];
    v28[0] = *a1;
    v28[1] = v14;
    v15 = a1[3];
    v28[2] = a1[2];
    v28[3] = v15;
    sub_22077E440(v28, v16);
    return sub_220888ECC();
  }
}

uint64_t sub_22077CCB8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v5;
  v20 = *(a1 + 160);
  v6 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v6;
  v7 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  v9 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v9;
  __swift_project_boxed_opaque_existential_1((a2 + 112), *(a2 + 136));
  v10 = *(a3 + 2);
  v11 = *(a3 + 56);
  v12 = *(a3 + 8);
  v13 = *(a3 + 10);
  v23 = *a3;
  *v24 = v10;
  *&v24[8] = *(a3 + 24);
  *&v24[24] = *(a3 + 40);
  v24[40] = v11;
  *&v25 = v12;
  BYTE8(v25) = 2;
  v26 = v13;
  v21[0] = v23;
  v21[1] = *v24;
  v22 = v13;
  v21[3] = *&v24[32];
  v21[4] = v25;
  v21[2] = *&v24[16];
  v14 = v10;
  v15 = v13;
  sub_2205BCB6C(v19, v21, v18);
  sub_22077DF4C(&v23);
  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  sub_22058E460(v19, v11, v18, *(a2 + 16));
  sub_22077DA74();
  sub_2208886AC();
  sub_22077E3F0(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v16 = sub_220888ECC();
  sub_22077E138(v18);
  return v16;
}

uint64_t sub_22077CE64()
{
  type metadata accessor for WelcomeViewAnimator.Canceler();
  *(swift_allocObject() + 16) = 0;
  swift_beginAccess();

  MEMORY[0x223D89870](v1);
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  v2 = swift_endAccess();
  MEMORY[0x28223BE20](v2, v3);
  sub_22077E3F0(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v4 = sub_220888F2C();

  return v4;
}

void sub_22077CFDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, const char *a7)
{
  if (qword_2812980C8 != -1)
  {
    swift_once();
  }

  v11 = sub_22088A84C();
  __swift_project_value_buffer(v11, qword_2812B6CD0);
  v12 = sub_22088A82C();
  v13 = sub_220891AFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22043F000, v12, v13, a4, v14, 2u);
    MEMORY[0x223D8B7F0](v14, -1, -1);
  }

  v15 = *(a2 + 16);
  v16 = sub_22088A82C();
  v17 = sub_220891AFC();
  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22043F000, v16, v17, a7, v19, 2u);
      MEMORY[0x223D8B7F0](v19, -1, -1);
    }
  }

  else
  {
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22043F000, v16, v17, a5, v20, 2u);
      MEMORY[0x223D8B7F0](v20, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_22077DA74();
      sub_2208886AC();
    }
  }
}

uint64_t sub_22077D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v38 = a8;
  v35 = a6;
  v36 = a7;
  v42 = sub_22088F11C();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v11);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088F14C();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088F17C();
  v40 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v35 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  sub_22044D56C(0, &qword_28127E7C0);

  v37 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v39 = *(v18 + 8);
  v39(v21, v17);
  v27 = swift_allocObject();
  v27[2] = a5;
  v27[3] = sub_2206A39A4;
  v28 = v35;
  v27[4] = v26;
  v27[5] = v28;
  v27[6] = v36;
  v29 = v38;
  memcpy(v27 + 7, v38, 0x310uLL);
  aBlock[4] = sub_22077E318;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_93;
  v30 = _Block_copy(aBlock);

  sub_22077DFCC(v29, v46);

  sub_22088F13C();
  v46[0] = MEMORY[0x277D84F90];
  sub_2204627EC(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2204627EC(&qword_28127EA50, 255, sub_22056D204);
  v32 = v41;
  v31 = v42;
  sub_2208923FC();
  v33 = v37;
  MEMORY[0x223D89E80](v25, v16, v32, v30);
  _Block_release(v30);

  (*(v45 + 8))(v32, v31);
  (*(v43 + 8))(v16, v44);
  return (v39)(v25, v40);
}

uint64_t sub_22077D6B0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  if (*(a1 + 16))
  {
    return a2();
  }

  sub_22065DCCC();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  memcpy(v12 + 4, a6, 0x310uLL);

  sub_22077DFCC(a6, v19);
  v13 = sub_22077C93C();

  sub_22065DD24();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  memcpy(v14 + 4, a6, 0x310uLL);

  sub_22077DFCC(a6, v19);
  v15 = sub_22077C93C();

  sub_22077E3F0(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  sub_22077E3F0(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22089B120;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;

  sub_220888E1C();

  sub_22044D56C(0, &qword_28127E7C0);
  v17 = sub_220891D0C();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  sub_220888E4C();
}

uint64_t sub_22077D970()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  sub_22077E4F8(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  return v0;
}

uint64_t sub_22077D9FC()
{
  sub_22077D970();

  return swift_deallocClassInstance();
}

unint64_t sub_22077DA74()
{
  result = qword_27CF597D0;
  if (!qword_27CF597D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF597D0);
  }

  return result;
}

unint64_t sub_22077DACC()
{
  result = qword_27CF597D8;
  if (!qword_27CF597D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF597D8);
  }

  return result;
}

void sub_22077DB20()
{
  if (!qword_27CF597E0)
  {
    sub_22045CEE8();
    v0 = sub_2208903EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF597E0);
    }
  }
}

uint64_t sub_22077DB7C(uint64_t a1, uint64_t a2)
{
  sub_22077DB20();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22077DBE0(uint64_t a1, uint64_t a2)
{
  sub_22077DB20();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22077DC44()
{
  sub_22077DB20();
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_2207794D0(v3, v4);
}

void sub_22077DCA8()
{
  if (!qword_27CF597E8)
  {
    sub_22077DB20();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF597E8);
    }
  }
}

uint64_t sub_22077DD10(uint64_t a1, uint64_t a2)
{
  sub_22077E3F0(0, &qword_27CF597F0, &type metadata for WelcomeViewLayoutOptions, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22077DD98(uint64_t a1)
{
  sub_22077E3F0(0, &qword_27CF597F0, &type metadata for WelcomeViewLayoutOptions, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22077E080()
{
  if (!qword_27CF59808)
  {
    sub_22077E3F0(255, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59808);
    }
  }
}

uint64_t objectdestroy_37Tm()
{

  return swift_deallocObject();
}

unint64_t sub_22077E210()
{
  result = qword_27CF59818;
  if (!qword_27CF59818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59818);
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_95Tm()
{

  return swift_deallocObject();
}

id sub_22077E384(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1((v4 + 72), *(v4 + 96));
  return sub_220590100(a1, v3, v1 + 32, *(v4 + 16));
}

uint64_t sub_22077E3D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22077E3F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22077E4F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a3)
  {
  }
}

unint64_t sub_22077E560()
{
  result = qword_27CF59828;
  if (!qword_27CF59828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59828);
  }

  return result;
}

unint64_t sub_22077E5B8()
{
  result = qword_27CF59830;
  if (!qword_27CF59830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59830);
  }

  return result;
}

uint64_t SidebarAppearance.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

unint64_t sub_22077E6EC()
{
  result = qword_27CF59838;
  if (!qword_27CF59838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59838);
  }

  return result;
}

uint64_t sub_22077E750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220483A44();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_22077E7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_220483CE8(&qword_281294C90);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_22077E838@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22088E4EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_22077E8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8, a2);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205034BC(v5, v10);
  sub_220483A44();
  v12 = *(v11 + 48);
  v13 = *a3;
  v14 = a4(0);
  (*(*(v14 - 8) + 104))(a5, v13, v14);
  return sub_2204EFAD0(&v10[v12]);
}

uint64_t sub_22077E9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - v10;
  sub_22077EB2C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (v15 + *(v16 + 56));
  sub_2205034BC(a1, v15);
  sub_2205034BC(a2, v17);
  v18 = *v15;
  sub_220483A44();
  v20 = *(v19 + 48);
  v21 = *v17;
  sub_22050381C(v15 + v20, v11);
  sub_22050381C(v17 + v20, v7);
  if (v18 == v21)
  {
    v22 = sub_2204CDC64(v11, v7);
  }

  else
  {
    v22 = 0;
  }

  sub_2204EFAD0(v7);
  sub_2204EFAD0(v11);
  return v22 & 1;
}

void sub_22077EB2C()
{
  if (!qword_281294BD8[0])
  {
    type metadata accessor for TickerModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281294BD8);
    }
  }
}

uint64_t sub_22077EB90(uint64_t a1)
{
  v3 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);
  v53 = *(v6 - 8);
  v7 = *(v53 + 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 80);
  sub_2204471FC(0, &qword_281299050, MEMORY[0x277D69810]);
  v19 = *(v18 + 48);
  v20 = sub_22088685C();
  v47 = *(v20 - 8);
  v21 = *(v47 + 16);
  v49 = a1;
  v48 = v20;
  v46 = v47 + 16;
  v45 = v21;
  (v21)(v16, a1);
  *&v16[v19] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v55 = v1;
  v22 = *(v1 + 88);
  v23 = sub_22088969C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v60 = v17;
  sub_2205A0924(v61, &v56, &unk_281298970, &unk_281298980);
  if (v57)
  {
    sub_220458198(&v56, v58);
    v24 = sub_220597454(v58);
    v52 = v25;
    v51 = v26;
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_2205A0B34(&v56, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v24 = qword_2812908F8;
    v27 = qword_281290900;
    v28 = qword_281290908;

    v52 = v27;
    v51 = v28;
    sub_2204A80F4(v27);
  }

  v57 = sub_22088731C();
  *&v56 = v22;
  v29 = MEMORY[0x277D686D0];
  v30 = v54;
  sub_220781EEC(v12, v54, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v63, v58, &unk_281296D10, &qword_281296D20);
  v31 = v53[80];
  v53 = v12;
  v32 = (v31 + 24) & ~v31;
  v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v22;
  sub_220781E80(v30, v34 + v32, &qword_281298480, v29);
  v35 = v34 + v33;
  v36 = v58[1];
  *v35 = v58[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v59;
  v37 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
  v38 = v52;
  *v37 = v24;
  v37[1] = v38;
  v37[2] = v51;
  swift_retain_n();

  sub_2204A80F4(v38);
  sub_2204549FC();
  sub_220448DD8(&unk_281297EC0, 255, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v38);
  sub_2205A0B34(v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v63, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220781F58(v53, &qword_281298480, MEMORY[0x277D686D0]);
  sub_220781A68(v16, type metadata accessor for StocksActivity);
  sub_2205A0B34(&v56, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v40 = *(result + 40);
    ObjectType = swift_getObjectType();
    v42 = v50;
    v43 = v48;
    v45(v50, v49, v48);
    (*(v47 + 56))(v42, 0, 2, v43);
    (*(v40 + 88))(v42, ObjectType, v40);
    sub_220781A68(v42, type metadata accessor for StockListSelectionModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22077F41C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v97 = a2;
  v7 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22088D1DC();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v10);
  v85 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v13);
  v86 = &v83 - v14;
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  MEMORY[0x28223BE20](v18, v19);
  v96 = &v83 - v20;
  v21 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v83 - v27;
  v29 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a3;
  v35 = sub_22088685C();
  v91 = *(v35 - 8);
  v36 = *(v91 + 16);
  v93 = a1;
  v37 = a1;
  v38 = v97;
  v92 = v35;
  v90 = v91 + 16;
  v89 = v36;
  (v36)(v33, v37);
  *&v33[*(v30 + 28)] = v38;
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 12, v4[15]);

    v39 = sub_22088B89C();
    if (!v39)
    {
      v59 = v33;
      return sub_220781A68(v59, type metadata accessor for StocksActivity.StockFeed.Series);
    }

    v40 = v39;
    v95 = v33;
    sub_220781E18(v33, v24, type metadata accessor for StocksActivity.StockFeed.Series);
    sub_2204471FC(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
    *&v24[*(v41 + 48)] = 2;
    type metadata accessor for StocksActivity.StockFeed(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    __swift_project_boxed_opaque_existential_1(v4 + 12, v4[15]);
    v42 = v40;
    v43 = sub_22088B8AC();
    if (v34 == 1)
    {

      v44 = v85;
      *v85 = v43;
      v73 = MEMORY[0x277D6E588];
    }

    else
    {
      if (v34 == 2)
      {

        v44 = v85;
        *v85 = 0;
      }

      else
      {
        v44 = v85;
        *v85 = v40;
      }

      v44[1] = v43;
      v73 = MEMORY[0x277D6E590];
    }

    v74 = v88;
    v75 = v87;
    v76 = v86;
    v87[13](v44, *v73, v88);
    v75[4](v76, v44, v74);
    sub_22088B01C();

    (v75[1])(v76, v74);
    sub_220781A68(v24, type metadata accessor for StocksActivity);
  }

  else
  {
    v87 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v45 = v4[10];
    sub_2204471FC(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
    v47 = *(v46 + 48);
    v95 = v33;
    sub_220781E18(v33, v28, type metadata accessor for StocksActivity.StockFeed.Series);
    *&v28[v47] = 0;
    type metadata accessor for StocksActivity.StockFeed(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v48 = v4[11];
    v49 = sub_22088969C();
    v50 = v96;
    (*(*(v49 - 8) + 56))(v96, 1, 1, v49);
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    v102 = v45;
    sub_2205A0924(v103, &v98, &unk_281298970, &unk_281298980);
    v88 = v4;
    v51 = v50;
    v52 = v28;
    if (v99)
    {
      sub_220458198(&v98, v100);

      v53 = sub_220597454(v100);
      v97 = v54;
      v56 = v55;
      __swift_destroy_boxed_opaque_existential_1(v100);
      v57 = v87;
      v58 = v16;
    }

    else
    {

      sub_2205A0B34(&v98, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      v57 = v87;
      v58 = v16;
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v53 = qword_2812908F8;
      v60 = qword_281290900;
      v61 = qword_281290908;

      v97 = v60;
      v56 = v61;
      sub_2204A80F4(v60);
    }

    v62 = v84;
    v99 = sub_22088731C();
    *&v98 = v48;
    v63 = MEMORY[0x277D686D0];
    sub_220781EEC(v51, v57, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2205A0924(v105, v100, &unk_281296D10, &qword_281296D20);
    v64 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v65 = (v58 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    v67 = v57;
    v68 = v66;
    *(v66 + 16) = v48;
    sub_220781E80(v67, v66 + v64, &qword_281298480, v63);
    v69 = v68 + v65;
    v70 = v100[1];
    *v69 = v100[0];
    *(v69 + 16) = v70;
    *(v69 + 32) = v101;
    v71 = (v68 + ((v65 + 47) & 0xFFFFFFFFFFFFFFF8));
    v72 = v97;
    *v71 = v53;
    v71[1] = v72;
    v71[2] = v56;
    swift_retain_n();

    sub_2204A80F4(v72);
    sub_2204549FC();
    sub_220448DD8(&unk_281297EC0, 255, sub_2204549FC);
    sub_22088E92C();

    sub_2204DA45C(v72);
    sub_2205A0B34(v103, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(v105, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_220781F58(v96, &qword_281298480, MEMORY[0x277D686D0]);
    sub_220781A68(v52, type metadata accessor for StocksActivity);
    sub_2205A0B34(&v98, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v78 = *(Strong + 40);
    ObjectType = swift_getObjectType();
    v80 = v94;
    v81 = v92;
    v89(v94, v93, v92);
    (*(v91 + 56))(v80, 0, 2, v81);
    (*(v78 + 88))(v80, ObjectType, v78);
    sub_220781A68(v80, type metadata accessor for StockListSelectionModel);
    sub_220781A68(v95, type metadata accessor for StocksActivity.StockFeed.Series);
    return swift_unknownObjectRelease();
  }

  v59 = v95;
  return sub_220781A68(v59, type metadata accessor for StocksActivity.StockFeed.Series);
}

uint64_t sub_22078008C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22088685C();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  *&v13[*(v10 + 28)] = a2;
  v15 = *(v2 + 80);
  sub_2204471FC(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
  v17 = *(v16 + 48);
  sub_220781E18(v13, v8, type metadata accessor for StocksActivity.StockFeed.Series);
  *&v8[v17] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v18 = *(v2 + 88);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v26[4] = v15;
  v26[3] = sub_22088731C();
  v26[0] = v18;
  sub_2205A0924(v27, v24, &unk_281296D10, &qword_281296D20);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = v24[1];
  *(v19 + 24) = v24[0];
  *(v19 + 40) = v20;
  *(v19 + 56) = v25;
  sub_2204549FC();
  sub_220448DD8(&unk_281297EC0, 255, sub_2204549FC);
  swift_retain_n();

  v21 = sub_22088E91C();

  sub_2205A0B34(v27, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220781A68(v8, type metadata accessor for StocksActivity);
  sub_220781A68(v13, type metadata accessor for StocksActivity.StockFeed.Series);
  sub_2205A0B34(v26, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  return v21;
}

uint64_t sub_22078040C()
{
  v1 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 80);
  sub_2206A1D94();
  v19 = *(v18 + 48);
  type metadata accessor for ForYouSectionDescriptor();
  swift_storeEnumTagMultiPayload();
  v20 = *MEMORY[0x277D6E258];
  v21 = sub_22088CC6C();
  (*(*(v21 - 8) + 104))(&v16[v19], v20, v21);
  swift_storeEnumTagMultiPayload();
  v47 = v0;
  v22 = *(v0 + 88);
  v23 = sub_22088969C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = v17;
  sub_2205A0924(v53, &v48, &unk_281298970, &unk_281298980);
  if (v49)
  {
    sub_220458198(&v48, v50);
    v24 = sub_220597454(v50);
    v45 = v25;
    v44 = v26;
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_2205A0B34(&v48, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v24 = qword_2812908F8;
    v27 = qword_281290900;
    v28 = qword_281290908;

    v45 = v27;
    v44 = v28;
    sub_2204A80F4(v27);
  }

  v49 = sub_22088731C();
  *&v48 = v22;
  v29 = MEMORY[0x277D686D0];
  sub_220781EEC(v12, v8, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v55, v50, &unk_281296D10, &qword_281296D20);
  v30 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v31 = (v6 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = v12;
  v32 = swift_allocObject();
  *(v32 + 16) = v22;
  sub_220781E80(v8, v32 + v30, &qword_281298480, v29);
  v33 = v32 + v31;
  v34 = v50[1];
  *v33 = v50[0];
  *(v33 + 16) = v34;
  *(v33 + 32) = v51;
  v35 = (v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8));
  v36 = v45;
  *v35 = v24;
  v35[1] = v36;
  v35[2] = v44;
  swift_retain_n();

  sub_2204A80F4(v36);
  sub_2204549FC();
  sub_220448DD8(&unk_281297EC0, 255, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v36);
  sub_2205A0B34(v53, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v55, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220781F58(v46, &qword_281298480, MEMORY[0x277D686D0]);
  sub_220781A68(v16, type metadata accessor for StocksActivity);
  sub_2205A0B34(&v48, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v38 = *(result + 40);
    ObjectType = swift_getObjectType();
    v40 = sub_22088685C();
    v41 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 2, v40);
    (*(v38 + 88))(v41, ObjectType, v38);
    sub_220781A68(v41, type metadata accessor for StockListSelectionModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220780C14(uint64_t a1)
{
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);
  v39 = *(v3 - 8);
  v4 = *(v39 + 8);
  MEMORY[0x28223BE20](v3 - 8, v5);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 80);
  sub_220447880();
  v16 = *(v15 + 48);
  v17 = sub_22088685C();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  *&v13[v16] = a1;
  swift_storeEnumTagMultiPayload();
  v18 = *(v1 + 88);
  v19 = sub_22088969C();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = v14;
  sub_2205A0924(v45, &v40, &unk_281298970, &unk_281298980);
  if (v41)
  {
    sub_220458198(&v40, v42);

    v20 = sub_220597454(v42);
    v38 = v21;
    v37 = v22;
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {

    sub_2205A0B34(&v40, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v20 = qword_2812908F8;
    v23 = qword_281290900;
    v24 = qword_281290908;

    v38 = v23;
    v37 = v24;
    sub_2204A80F4(v23);
  }

  v41 = sub_22088731C();
  *&v40 = v18;
  v25 = MEMORY[0x277D686D0];
  v26 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220781EEC(v9, v26, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v47, v42, &unk_281296D10, &qword_281296D20);
  v27 = v39[80];
  v39 = v9;
  v28 = (v27 + 24) & ~v27;
  v29 = (v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v18;
  sub_220781E80(v26, v30 + v28, &qword_281298480, v25);
  v31 = v30 + v29;
  v32 = v42[1];
  *v31 = v42[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v43;
  v33 = (v30 + ((v29 + 47) & 0xFFFFFFFFFFFFFFF8));
  v34 = v38;
  *v33 = v20;
  v33[1] = v34;
  v33[2] = v37;
  swift_retain_n();

  sub_2204A80F4(v34);
  sub_2204549FC();
  sub_220448DD8(&unk_281297EC0, 255, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v34);
  sub_2205A0B34(v45, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v47, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220781F58(v39, &qword_281298480, MEMORY[0x277D686D0]);
  sub_220781A68(v13, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v40, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_220781320@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088685C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220464F64(0, &qword_281297140, MEMORY[0x277D6EBA0]);
  sub_22088E10C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2206A1D94();
      v34 = *(v33 + 48);
      sub_22078040C();
      v35 = *MEMORY[0x277D6E348];
      v36 = sub_22088CD4C();
      (*(*(v36 - 8) + 104))(v39, v35, v36);
      v37 = sub_22088CC6C();
      (*(*(v37 - 8) + 8))(&v21[v34], v37);
      return sub_220781A68(v21, type metadata accessor for ForYouSectionDescriptor);
    case 2u:
      sub_220781A00(v21, v17, type metadata accessor for StocksActivity.StockFeed);
      if (qword_281298C00 != -1)
      {
        swift_once();
      }

      v40 = 3;
      sub_2208883FC();
      sub_220781E18(v17, v13, type metadata accessor for StocksActivity.StockFeed);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_220781A00(v13, v4, type metadata accessor for StocksActivity.StockFeed.Series);
        (*(v6 + 16))(v9, v4, v5);
        sub_220781A68(v4, type metadata accessor for StocksActivity.StockFeed.Series);
      }

      else
      {
        (*(v6 + 32))(v9, v13, v5);
      }

      sub_22077EB90(v9);
      (*(v6 + 8))(v9, v5);
      sub_220781A68(v17, type metadata accessor for StocksActivity.StockFeed);
      goto LABEL_18;
    case 3u:
      v28 = *v21;
      v27 = *(v21 + 1);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = swift_allocObject();
        v32[2] = v31;
        v32[3] = v28;
        v32[4] = v27;
        sub_220888CCC();
      }

      else
      {
      }

LABEL_18:
      v22 = MEMORY[0x277D6E348];
      goto LABEL_4;
    case 5u:
      v26 = sub_220884E9C();
      (*(*(v26 - 8) + 8))(v21, v26);
      goto LABEL_3;
    case 0xBu:
      sub_220447880();

      sub_220781F58(v21, &qword_281299060, MEMORY[0x277D69810]);
      goto LABEL_3;
    case 0xDu:
      goto LABEL_3;
    default:
      sub_220781A68(v21, type metadata accessor for StocksActivity);
LABEL_3:
      v22 = MEMORY[0x277D6E358];
LABEL_4:
      v23 = *v22;
      v24 = sub_22088CD4C();
      return (*(*(v24 - 8) + 104))(v39, v23, v24);
  }
}

uint64_t sub_2207818E8()
{
  MEMORY[0x223D8B910](v0 + 16);
  sub_22054B9F8(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_220781998(uint64_t a1, uint64_t a2)
{
  result = sub_220448DD8(qword_281292B70, a2, type metadata accessor for StockListRouter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220781A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220781A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220781AC8(uint64_t a1)
{
  v2 = sub_220884E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockListRouteModel();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9260];
  sub_22047A2F0(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v24 - v18;
  sub_220781E18(a1, v10, type metadata accessor for StockListRouteModel);
  sub_220781E80(v10, v19, &qword_2812994E0, v11);
  sub_220781EEC(v19, v15, &qword_2812994E0, v11);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    sub_220781F58(v19, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  else
  {
    (*(v3 + 32))(v6, v15, v2);
    v20 = [objc_opt_self() sharedApplication];
    v21 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_220448DD8(&qword_27CF57590, 255, type metadata accessor for OpenExternalURLOptionsKey);
    v22 = sub_22089125C();

    [v20 openURL:v21 options:v22 completionHandler:0];

    (*(v3 + 8))(v6, v2);
    v15 = v19;
  }

  return sub_220781F58(v15, &qword_2812994E0, MEMORY[0x277CC9260]);
}

uint64_t sub_220781E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220781E80(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22047A2F0(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220781EEC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22047A2F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220781F58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22047A2F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_12Tm()
{
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22078212C(uint64_t a1)
{
  sub_22047A2F0(0, &qword_281298480, MEMORY[0x277D686D0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_220782200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  sub_220782704();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22089022C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22089041C();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208906CC();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D23FC();
  v42 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v41 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088A84C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22048D2F4();
  sub_2208922FC();
  sub_22088A85C();
  v26 = sub_22088A82C();
  v27 = sub_220891AFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34 = v7;
    v29 = v28;
    *v28 = 0;
    _os_log_impl(&dword_22043F000, v26, v27, "Observed audio finished playing, closing player", v28, 2u);
    v7 = v34;
    MEMORY[0x223D8B7F0](v29, -1, -1);
  }

  (*(v22 + 8))(v25, v21);
  (*(v35 + 104))(v37, *MEMORY[0x277D33A68], v36);
  (*(v38 + 104))(v40, *MEMORY[0x277D33568], v39);
  (*(v7 + 104))(v10, *MEMORY[0x277D33290], v6);
  v45 = 0u;
  v46 = 0u;
  v30 = v41;
  sub_2208905CC();
  swift_getObjectType();
  sub_22088E33C();
  v31 = v44;
  v32 = v42;
  (*(v18 + 16))(v44, v30, v42);
  (*(v18 + 56))(v31, 0, 1, v32);
  sub_22088B81C();

  sub_22078275C(v31);
  return (*(v18 + 8))(v30, v32);
}

void sub_220782704()
{
  if (!qword_27CF59840)
  {
    sub_2205D23FC();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59840);
    }
  }
}

uint64_t sub_22078275C(uint64_t a1)
{
  sub_220782704();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_2207828CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v182 = a3;
  v6 = sub_220886D4C();
  v193 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v181 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088516C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 8);
  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  v189 = *a2;
  v17 = v189 - v15;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);

  v194 = sub_22067A850(v18, v19);

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  if (qword_28128FE98 != -1)
  {
    swift_once();
  }

  v20 = v17 - v16;
  v21 = qword_28128FEA0;
  v180 = v16;
  if (qword_28128FEA0)
  {
    sub_22088515C();
    v22 = sub_22088509C();
    (*(v10 + 8))(v13, v9);
    v23 = [v21 stringFromDate_];

    v24 = sub_22089136C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = sub_22067A4F4(v24, v26);

  v28 = v194;
  [v194 boundingRectWithSize:1 options:0 context:{v20, v14}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [v28 su_containsExcessiveLineHeightCharacter];
  v38 = MEMORY[0x277D768C8];
  if (v37)
  {
    [*(a2 + 48) displayScale];
    [v28 su_languageAwareOutsetsAtScale_];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
  }

  else
  {
    v40 = *MEMORY[0x277D768C8];
    v42 = *(MEMORY[0x277D768C8] + 8);
    v44 = *(MEMORY[0x277D768C8] + 16);
    v46 = *(MEMORY[0x277D768C8] + 24);
  }

  v47 = UIEdgeInsetsInsetRect_0(v30, v32, v34, v36, v40, v42, v44, v46);
  v187 = v48;
  [v27 boundingRectWithSize:0 options:0 context:{v20, v14}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  if ([v27 su_containsExcessiveLineHeightCharacter])
  {
    [*(a2 + 48) displayScale];
    [v27 su_languageAwareOutsetsAtScale_];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
  }

  else
  {
    v58 = *v38;
    v60 = v38[1];
    v62 = v38[2];
    v64 = v38[3];
  }

  v65 = v6;
  v66 = v193;
  v67 = UIEdgeInsetsInsetRect_0(v50, v52, v54, v56, v58, v60, v62, v64);
  v69 = v68;
  v70 = [v27 su_containsExcessiveLineHeightCharacter];
  v71 = v181;
  if (v70)
  {
    [*(a2 + 48) displayScale];
    [v27 su_languageAwareOutsetsAtScale_];
    v186 = v72;
    v185 = v73;
    v184 = v74;
    v183 = v75;
  }

  else
  {
    v76 = *(v38 + 1);
    v186 = *v38;
    v185 = v76;
    v77 = *(v38 + 3);
    v184 = *(v38 + 2);
    v183 = v77;
  }

  v78 = sub_220891D8C();
  [v78 ascender];
  v80 = v79;

  v81 = sub_220891D8C();
  [v81 capHeight];
  v83 = v82;

  v84 = sub_22088F0DC();
  v188 = v14;
  if ((v84 & 1) != 0 && [*(a2 + 48) horizontalSizeClass] != 1)
  {
    sub_220891A7C();
    v123 = fmax(-v122, 5.0);
    v124 = objc_opt_self();
    v125 = sub_22089002C();
    v126 = *(*&v66 + 104);
    v172 = *MEMORY[0x277D6D198];
    v171 = v126;
    v126(v71);
    v173 = v125;
    sub_22089001C();
    v128 = v127;
    v169 = *(*&v66 + 8);
    v169(v71, v65);
    v129 = *MEMORY[0x277D743F8];
    v174 = v124;
    v170 = v129;
    v130 = [v124 systemFontOfSize:v128 weight:?];
    v131 = sub_220891F4C();

    [v131 descender];
    v133 = v132;

    v134 = v123 - v133;
    v135 = sub_220891D8C();
    [v135 ascender];
    v137 = v136;

    v138 = v14 - v137 - v134;
    v178 = v15;
    v218.origin.x = v15;
    v218.origin.y = v138;
    v177 = v47;
    v218.size.width = v47;
    v218.size.height = v187;
    v219 = CGRectIntegral(v218);
    x = v219.origin.x;
    y = v219.origin.y;
    width = v219.size.width;
    height = v219.size.height;
    v220.origin.x = CGRectGetMaxX(v219) + 8.0;
    v220.origin.y = v138;
    v220.size.width = v67;
    v220.size.height = v69;
    v221 = CGRectIntegral(v220);
    v193 = v221.origin.x;
    v179 = v221.origin.y;
    v107 = v221.size.width;
    v102 = v221.size.height;
    v139 = sub_220812FFC();
    v111 = 0.0;
    v176 = v69;
    v175 = v67;
    if (v139)
    {
      if (qword_281299530 != -1)
      {
        swift_once();
      }

      type metadata accessor for ForYouMastheadModel();
      sub_22054FCC8();
      sub_220886B3C();
      v119 = 0.0;
      v120 = 0.0;
      v121 = 0.0;
      if (v202 == 1)
      {
        sub_22088A26C();
        sub_22088A23C();
        v222.size.width = v140;
        v222.size.height = v141;
        v222.origin.x = v189 - v140 - v180;
        v222.origin.y = v188 - v141 + -5.0;
        v223 = CGRectIntegral(v222);
        v111 = v223.origin.x;
        v119 = v223.origin.y;
        v120 = v223.size.width;
        v121 = v223.size.height;
      }
    }

    else
    {
      v119 = 0.0;
      v120 = 0.0;
      v121 = 0.0;
    }

    v224.origin.x = v111;
    v224.origin.y = v119;
    v224.size.width = v120;
    v224.size.height = v121;
    v230.origin.x = v193;
    v230.origin.y = v179;
    v230.size.width = v107;
    v230.size.height = v102;
    v109 = CGRectIntersectsRect(v224, v230);
    if ((v109 & 1) == 0)
    {
      v112 = v194;
      v106 = v179;
      goto LABEL_34;
    }

    sub_220891A7C();
    v143 = fmax(-v142, 5.0);
    v171(v71, v172, v65);
    sub_22089001C();
    v145 = v144;
    v169(v71, v65);
    v146 = [v174 systemFontOfSize:v145 weight:v170];
    v147 = sub_220891F4C();

    [v147 descender];
    v149 = v148;

    v150 = v143 - v149;
    v151 = sub_220891D8C();
    [v151 ascender];
    v153 = v152;

    v225.origin.y = v188 - v153 - v150;
    v154 = v178;
    v225.origin.x = v178;
    v225.size.width = v175;
    v225.size.height = v176;
    v226 = CGRectIntegral(v225);
    v155 = v226.origin.x;
    v107 = v226.size.width;
    v156 = v226.size.height;
    v106 = v226.origin.y;
    sub_2207839C4();
    v158 = v157;
    v193 = v155;
    v227.origin.x = v155;
    v102 = v156;
    v227.origin.y = v106;
    v227.size.width = v107;
    v227.size.height = v156;
    MinY = CGRectGetMinY(v227);
    v228.size.height = v187;
    v228.origin.y = MinY - v158 - v187;
    v228.origin.x = v154;
    v228.size.width = v177;
    v229 = CGRectIntegral(v228);
    x = v229.origin.x;
    y = v229.origin.y;
    width = v229.size.width;
    height = v229.size.height;
    v109 = sub_220812FFC();
    v111 = 0.0;
    if (v109)
    {
      if (qword_281299530 != -1)
      {
        swift_once();
      }

      type metadata accessor for ForYouMastheadModel();
      sub_22054FCC8();
      v109 = sub_220886B3C();
      if (v202)
      {
        goto LABEL_21;
      }
    }

LABEL_33:
    v119 = 0.0;
    v120 = 0.0;
    v121 = 0.0;
    v112 = v194;
    goto LABEL_34;
  }

  v193 = v80 - v83;
  sub_220891A7C();
  v86 = fmax(-v85, 5.0);
  v87 = objc_opt_self();
  sub_22089002C();
  (*(*&v66 + 104))(v71, *MEMORY[0x277D6D198], v65);
  sub_22089001C();
  v89 = v88;
  (*(*&v66 + 8))(v71, v65);
  v90 = [v87 systemFontOfSize:v89 weight:*MEMORY[0x277D743F8]];
  v91 = sub_220891F4C();

  [v91 descender];
  v93 = v92;

  v94 = v86 - v93;
  v95 = sub_220891D8C();
  [v95 ascender];
  v97 = v96;

  v209.origin.y = v14 - v97 - v94;
  v209.origin.x = v15;
  v209.size.width = v67;
  v209.size.height = v69;
  v210 = CGRectIntegral(v209);
  v98 = v187;
  v99 = v210.origin.y;
  v100 = v47;
  v101 = v210.size.width;
  v102 = v210.size.height;
  v103 = v210.origin.x;
  sub_2207839C4();
  v105 = v104;
  v193 = v103;
  v211.origin.x = v103;
  v106 = v99;
  v211.origin.y = v99;
  v107 = v101;
  v211.size.width = v101;
  v211.size.height = v102;
  v212.origin.y = CGRectGetMinY(v211) - v105 - v98;
  v212.origin.x = v15;
  v212.size.width = v100;
  v212.size.height = v98;
  v213 = CGRectIntegral(v212);
  x = v213.origin.x;
  y = v213.origin.y;
  width = v213.size.width;
  height = v213.size.height;
  v109 = sub_220812FFC();
  v111 = 0.0;
  if ((v109 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (qword_281299530 != -1)
  {
    swift_once();
  }

  type metadata accessor for ForYouMastheadModel();
  sub_22054FCC8();
  v109 = sub_220886B3C();
  if (v202 != 1)
  {
    goto LABEL_33;
  }

LABEL_21:
  v112 = v194;
  sub_22088A26C();
  sub_22088A23C();
  v114 = v113;
  v116 = v115;
  v117 = v189 - v113 - v180;
  v214.origin.x = v193;
  v214.origin.y = v106;
  v214.size.width = v107;
  v214.size.height = v102;
  MaxY = CGRectGetMaxY(v214);
  v215.origin.x = x;
  v215.origin.y = y;
  v215.size.width = width;
  v215.size.height = height;
  v216.origin.y = (MaxY + CGRectGetMinY(v215)) * 0.5 - v116 * 0.5;
  v216.origin.x = v117;
  v216.size.width = v114;
  v216.size.height = v116;
  v217 = CGRectIntegral(v216);
  v111 = v217.origin.x;
  v119 = v217.origin.y;
  v120 = v217.size.width;
  v121 = v217.size.height;
LABEL_34:
  MEMORY[0x28223BE20](v109, v110);
  *(&v169 - 14) = a2;
  v160 = y;
  *(&v169 - 13) = x;
  *(&v169 - 12) = v160;
  v161 = height;
  *(&v169 - 11) = width;
  *(&v169 - 10) = v161;
  *(&v169 - 9) = v193;
  *(&v169 - 8) = v106;
  *(&v169 - 7) = v107;
  *(&v169 - 6) = v102;
  *(&v169 - 5) = v111;
  *(&v169 - 4) = v119;
  *(&v169 - 3) = v120;
  *(&v169 - 2) = v121;
  sub_22088C18C();

  result = v196;
  v163 = v195;
  v202 = v195;
  v164 = v201;
  v165 = v200;
  v207 = v200;
  v208 = v201;
  v166 = v197;
  v167 = v198;
  v203 = v196;
  v204 = v197;
  v205 = v198;
  v206 = v199;
  v168 = v182;
  *(v182 + 64) = v199;
  *(v168 + 80) = v165;
  *(v168 + 96) = v164;
  *v168 = v163;
  *(v168 + 16) = result;
  *(v168 + 32) = v166;
  *(v168 + 48) = v167;
  return result;
}

double sub_220783724@<D0>(uint64_t *a1@<X1>, double *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v43 = a6;
  v8 = sub_22088ABEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v41 = a1[1];
  v13 = *MEMORY[0x277D6D320];
  v14 = *(v9 + 104);
  v14(v12, v13, v8);
  sub_22088ABDC();
  v39 = v16;
  v40 = v15;
  v37 = v18;
  v38 = v17;
  v19 = *(v9 + 8);
  v19(v12, v8);
  v14(v12, v13, v8);
  sub_22088ABDC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v19(v12, v8);
  v14(v12, v13, v8);
  sub_22088ABDC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v19(v12, v8);
  *a2 = v42;
  *(a2 + 1) = v41;
  *(a2 + 2) = v40;
  *(a2 + 3) = v39;
  *(a2 + 4) = v38;
  result = v37;
  a2[5] = v37;
  *(a2 + 6) = v21;
  *(a2 + 7) = v23;
  *(a2 + 8) = v25;
  *(a2 + 9) = v27;
  *(a2 + 10) = v29;
  *(a2 + 11) = v31;
  *(a2 + 12) = v33;
  *(a2 + 13) = v35;
  return result;
}

uint64_t sub_2207839C4()
{
  sub_220783DE0(0, &unk_281299440, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = sub_2208852BC();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2208852DC();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088521C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v20 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220783DE0(0, &qword_28127E1D0, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22089B140;
  sub_22088520C();
  sub_22088520C();
  sub_22088520C();
  v17 = sub_2207E1DF8(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22088528C();
  sub_2208852CC();
  (*(v8 + 8))(v11, v21);
  sub_22088529C();
  (*(v22 + 8))(v7, v23);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {

    return sub_220783E40(v3);
  }

  else
  {
    v19 = v20;
    (*(v13 + 32))(v20, v3, v12);
    sub_22056F7D4(v19, v17);

    return (*(v13 + 8))(v19, v12);
  }
}

void sub_220783DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22088521C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220783E40(uint64_t a1)
{
  sub_220783DE0(0, &unk_281299440, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StockFeedMastheadViewLayoutAttributes()
{
  result = qword_281281298;
  if (!qword_281281298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220783F3C()
{
  sub_22088D61C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIUserInterfaceSizeClass(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220784008@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22088D61C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_220784070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_22088F0DC() & 1) != 0 || *(v2 + *(a1 + 60)))
  {
    v5 = MEMORY[0x277D6E860];
  }

  else
  {
    v10 = *MEMORY[0x277D6E850];
    v11 = sub_22088D82C();
    (*(*(v11 - 8) + 104))(a2, v10, v11);
    v5 = MEMORY[0x277D6E858];
  }

  v6 = *v5;
  v7 = sub_22088D83C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}