void sub_1D7F47C84()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v39 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v6, v7, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_5();
  v13 = *v4;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v14 = sub_1D8191E44();
  v15 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v15))
  {
    v16 = v2;
    v17 = OUTLINED_FUNCTION_55_1();
    v18 = OUTLINED_FUNCTION_61();
    v42[0] = v18;
    *v17 = 136315138;
    v19 = 0xEA00000000006E65;
    v20 = OUTLINED_FUNCTION_5_18();
    switch(v13)
    {
      case 1:
        v19 = 0xE800000000000000;
        v20 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_16_0();
        goto LABEL_7;
      case 3:
        v22 = OUTLINED_FUNCTION_44_2();
        goto LABEL_11;
      case 4:
        v21 = OUTLINED_FUNCTION_45_2();
LABEL_7:
        v20 = OUTLINED_FUNCTION_42_3(v21);
        break;
      case 5:
        v22 = OUTLINED_FUNCTION_43_4();
LABEL_11:
        v20 = v22 | 0x6C616900000000;
        break;
      case 6:
        v20 = OUTLINED_FUNCTION_18_9();
        break;
      case 7:
        v20 = OUTLINED_FUNCTION_29_4();
        break;
      default:
        break;
    }

    v23 = sub_1D7E1C3D8(v20, v19, v42);

    *(v17 + 4) = v23;
    OUTLINED_FUNCTION_36_4(&dword_1D7DFF000, v24, v25, "CardContainer willTransitionTo presentationState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    v2 = v16;
  }

  else
  {
  }

  type metadata accessor for CardViewAnimationCoordinator();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = v2 + OBJC_IVAR___TSCardContainerController_delegate;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      swift_getObjectType();
      OUTLINED_FUNCTION_50_1();
      v30 = *(v29 + 24);
      v32 = v31;
      v30(v27, &protocol witness table for CardViewAnimationCoordinator, &v40, v28, v29);
      v11 = v1;
      v1 = v38;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v39;
    }

    v34 = OUTLINED_FUNCTION_69_1();
    sub_1D7F47FDC(v34, v35);
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v36 = OUTLINED_FUNCTION_66_2();
    v37(v36);
    sub_1D818F974();
    (*(v11 + 8))(v1, v9);
    if (v41)
    {
      if (*(v41 + 32) == v27)
      {
        OUTLINED_FUNCTION_59_2();
      }
    }

    OUTLINED_FUNCTION_100();
  }

  else
  {
    OUTLINED_FUNCTION_40_2();
    __break(1u);
  }
}

void sub_1D7F47FDC(uint64_t a1, char *a2)
{
  v3 = v2;
  sub_1D7F52DC4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v17 = v16;
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - v18;
  v20 = *a2;
  v52 = a1;
  v51 = sub_1D7F50440(a1);
  if (v51)
  {
    v22 = v21;
    v55 = [objc_opt_self() areAnimationsEnabled];
    v49 = v20;
    v54 = v3;
    if (((1 << v20) & 0xDC) != 0)
    {
      v48 = v7;
      v23 = OBJC_IVAR___TSCardContainerController_cardItemStack;
      swift_beginAccess();
      (*(v53 + 16))(v19, v3 + v23, v17);
      if (v22 < 0)
      {
        __break(1u);
      }

      else
      {
        v56 = 0;
        v57 = v22;
        sub_1D7F523A4(&qword_1EDBB1FD0);
        sub_1D8191724();
        sub_1D81917B4();
        if (v62 >= v63)
        {
          v64 = v63;
          v65 = v62;
          sub_1D8191764();
          (*(v53 + 32))(&v15[*(v50 + 40)], v19, v17);
          *v15 = 0;
          *(v15 + 1) = v22;
          sub_1D7F766CC();
          sub_1D7F530BC(v15, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
          v24 = v54;
          sub_1D7F4B804(&v58);

          if (v58 - 2 >= 6)
          {
            v3 = v54;
          }

          else
          {
            swift_beginAccess();
            v25 = *(v24 + OBJC_IVAR___TSCardContainerController_rootViewController);
            LOBYTE(v56) = 0;

            ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v25, &v56, v55);

            ViewControllerTransitionManager.endTransition(viewController:)(v25);

            v3 = v24;
          }

LABEL_10:
          v27 = v49;
          if (((1 << v49) & 0xD4) == 0)
          {
            if (((1 << v49) & 0xB) == 0)
            {

              return;
            }

            v29 = OBJC_IVAR___TSCardContainerController_transitionManager;
            swift_beginAccess();
            v52 = v29;
            LOBYTE(v56) = 0;

            ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v51, &v56, v55);

            v30 = OBJC_IVAR___TSCardContainerController_cardItemStack;
            swift_beginAccess();
            (*(v53 + 16))(&v12[*(v50 + 40)], v3 + v30, v17);
            if ((v22 & 0x8000000000000000) == 0)
            {
              v56 = 0;
              v57 = v22;
              sub_1D7F523A4(&qword_1EDBB1FD0);
              sub_1D8191724();
              sub_1D81917B4();
              v31 = v48;
              if (v60 >= v61)
              {
                v58 = v61;
                v59 = v60;
                sub_1D8191764();
                *v12 = 0;
                *(v12 + 1) = v22;
                v32 = *(v31 + 36);
                *&v12[v32] = 0;
                if (v22)
                {
                  v33 = 0;
                  v34 = qword_1D81A6BD0[v27];
                  do
                  {
                    v58 = v33;
                    v56 = 0;
                    v57 = v22;
                    sub_1D8191754();
                    v35 = sub_1D81918F4();
                    v37 = *v36;

                    v35(&v56, 0);
                    sub_1D81917C4();

                    sub_1D818F154();

                    if (v34 >= qword_1D81A6BF0[v56])
                    {
                      v38 = *(v37 + 16);
                      LOBYTE(v56) = 1;

                      ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v38, &v56, v55);
                    }

                    v33 = *&v12[v32];
                  }

                  while (v33 != v22);
                }

                v39 = v12;
                goto LABEL_34;
              }

LABEL_45:
              __break(1u);
              return;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          sub_1D818F154();
          if (v27 == 2 && v56 == 5)
          {
            swift_beginAccess();
            LOBYTE(v62) = 0;
          }

          else
          {
            swift_beginAccess();
            LOBYTE(v62) = 1;
          }

          ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v51, &v62, v55);

          v40 = OBJC_IVAR___TSCardContainerController_cardItemStack;
          swift_beginAccess();
          (*(v53 + 16))(&v9[*(v50 + 40)], v3 + v40, v17);
          if ((v22 & 0x8000000000000000) == 0)
          {
            v56 = 0;
            v57 = v22;
            sub_1D7F523A4(&qword_1EDBB1FD0);
            sub_1D8191724();
            sub_1D81917B4();
            if (v60 >= v61)
            {
              v58 = v61;
              v59 = v60;
              sub_1D8191764();
              *v9 = 0;
              *(v9 + 1) = v22;
              v41 = *(v48 + 36);
              *&v9[v41] = 0;
              if (v22)
              {
                v53 = OBJC_IVAR___TSCardContainerController_transitionManager;
                swift_beginAccess();
                for (i = 0; i != v22; i = *&v9[v41])
                {
                  v61 = i;
                  v56 = 0;
                  v57 = v22;
                  sub_1D8191754();
                  v43 = sub_1D81918F4();
                  v45 = *v44;

                  v43(&v56, 0);
                  sub_1D81917C4();

                  sub_1D818F154();

                  switch(v56)
                  {
                    case 2:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                      break;
                    default:
                      v46 = *(v45 + 16);
                      LOBYTE(v56) = 0;

                      ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v46, &v56, v55);

                      break;
                  }
                }
              }

              v39 = v9;
LABEL_34:
              sub_1D7F5302C(v39);
              return;
            }

            goto LABEL_43;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    if (((1 << v20) & 3) != 0)
    {
      v48 = v7;
      swift_beginAccess();
      v26 = *(v3 + OBJC_IVAR___TSCardContainerController_rootViewController);
      LOBYTE(v56) = 1;

      ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v26, &v56, v55);

      goto LABEL_10;
    }

    v47 = v51;
  }
}

id sub_1D7F48A54(unsigned __int8 *a1, uint64_t a2, char a3)
{
  sub_1D7F4C4EC(v3, *a1);
  v7 = v6;
  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v70.origin.x = v11;
  v70.origin.y = v13;
  v70.size.width = v15;
  v70.size.height = v17;
  Height = CGRectGetHeight(v70);
  result = [v3 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = result;
  v20 = Height - v7;
  [result safeAreaInsets];
  v22 = v21;

  v23 = v20 - v22;
  if ((a3 & 1) == 0)
  {
    v24 = &v3[OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions];
    swift_beginAccess();
    v25 = *(v24 + 4);
    v26 = v24[40];
    result = [v3 view];
    if (result)
    {
      v27 = result;
      v69 = v23;
      [result bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      result = [v3 view];
      if (result)
      {
        v36 = result;
        v37 = *&a2;
        [result layoutMargins];
        v39 = v38;
        v41 = v40;

        v71.origin.x = v29;
        v71.origin.y = v31;
        v71.size.width = v33;
        v71.size.height = v35;
        v42 = CGRectGetHeight(v71);
        if (v26 >> 6)
        {
          if (v26 >> 6 == 1)
          {
            v43 = 0.0;
            if (v26)
            {
              v43 = v41;
            }

            v44 = v43 + v25;
          }

          else
          {
            v73.origin.x = v29;
            v73.origin.y = v31;
            v73.size.width = v33;
            v73.size.height = v35;
            v44 = CGRectGetHeight(v73) * v25;
          }
        }

        else
        {
          v72.origin.x = v29;
          v72.origin.y = v31;
          v72.size.width = v33;
          v72.size.height = v35;
          v45 = CGRectGetHeight(v72);
          v46 = 0.0;
          if (v26)
          {
            v46 = v39;
          }

          v44 = v45 - v25 - v46;
        }

        v47 = v42 - v44;
        if (v47 <= *&a2)
        {
          v37 = v47;
        }

        result = [v3 view];
        if (result)
        {
          v48 = result;
          [result bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v74.origin.x = v50;
          v74.origin.y = v52;
          v74.size.width = v54;
          v74.size.height = v56;
          v57 = CGRectGetHeight(v74);
          result = [v3 view];
          if (result)
          {
            v58 = result;
            v59 = v57 - v37;
            [result safeAreaInsets];
            v61 = v60;

            v62 = v59 - v61;
            v23 = v69;
            if (v62 < v69)
            {
              v23 = v62;
            }

            goto LABEL_21;
          }

LABEL_35:
          __break(1u);
          return result;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_21:
  v63 = *&v3[OBJC_IVAR___TSCardContainerController_rootViewController];
  result = [v63 additionalSafeAreaInsets];
  if (v67 != 0.0)
  {
    return [v63 setAdditionalSafeAreaInsets_];
  }

  v68 = v64 == 0.0 && v65 == v23;
  if (!v68 || v66 != 0.0)
  {
    return [v63 setAdditionalSafeAreaInsets_];
  }

  return result;
}

void sub_1D7F48D94()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v40 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v6, v7, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_5();
  v13 = *v4;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v14 = sub_1D8191E44();
  v15 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v15))
  {
    v16 = v2;
    v17 = OUTLINED_FUNCTION_55_1();
    v18 = OUTLINED_FUNCTION_61();
    v43[0] = v18;
    *v17 = 136315138;
    v19 = 0xEA00000000006E65;
    v20 = OUTLINED_FUNCTION_5_18();
    switch(v13)
    {
      case 1:
        v19 = 0xE800000000000000;
        v20 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_16_0();
        goto LABEL_7;
      case 3:
        v22 = OUTLINED_FUNCTION_44_2();
        goto LABEL_11;
      case 4:
        v21 = OUTLINED_FUNCTION_45_2();
LABEL_7:
        v20 = OUTLINED_FUNCTION_42_3(v21);
        break;
      case 5:
        v22 = OUTLINED_FUNCTION_43_4();
LABEL_11:
        v20 = v22 | 0x6C616900000000;
        break;
      case 6:
        v20 = OUTLINED_FUNCTION_18_9();
        break;
      case 7:
        v20 = OUTLINED_FUNCTION_29_4();
        break;
      default:
        break;
    }

    v23 = sub_1D7E1C3D8(v20, v19, v43);

    *(v17 + 4) = v23;
    OUTLINED_FUNCTION_36_4(&dword_1D7DFF000, v24, v25, "CardContainer didTransitionTo presentationState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    v2 = v16;
  }

  else
  {
  }

  type metadata accessor for CardViewAnimationCoordinator();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v28 = v2 + OBJC_IVAR___TSCardContainerController_delegate;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      swift_getObjectType();
      OUTLINED_FUNCTION_50_1();
      v30 = *(v29 + 40);
      v32 = v31;
      v30(v27, &protocol witness table for CardViewAnimationCoordinator, &v41, v28, v29);
      v11 = v1;
      v1 = v39;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v40;
    }

    v34 = OUTLINED_FUNCTION_69_1();
    sub_1D7F49118(v34, v35);
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v36 = OUTLINED_FUNCTION_66_2();
    v37(v36);
    sub_1D818F974();
    (*(v11 + 8))(v1, v9);
    if (v42)
    {
      v38 = *(v42 + 32);
      if (v38 == v27)
      {
        if (*(v38 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8))
        {

LABEL_25:
          OUTLINED_FUNCTION_100();
          return;
        }

        OUTLINED_FUNCTION_59_2();
      }
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_40_2();
  __break(1u);
}

void sub_1D7F49118(uint64_t a1, unsigned __int8 *a2)
{
  sub_1D7F52DC4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v34 = v2;
  v10 = sub_1D7F50440(a1);
  if (!v10)
  {
    return;
  }

  if (v9 == 5)
  {

    return;
  }

  v12 = v11;
  v13 = OBJC_IVAR___TSCardContainerController_transitionManager;
  v32 = v10;
  v14 = v34;
  swift_beginAccess();

  ViewControllerTransitionManager.endTransition(viewController:)(v32);

  v15 = *(v14 + OBJC_IVAR___TSCardContainerController_rootViewController);

  ViewControllerTransitionManager.endTransition(viewController:)(v15);

  v16 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  v18 = *(v17 + 40);
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v20 = v19;
  (*(*(v19 - 8) + 16))(&v8[v18], v14 + v16, v19);
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v35 = 0;
  v36 = v12;
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  sub_1D81917B4();
  if (v37 < v38)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v39 = v38;
  v40 = v37;
  sub_1D8191764();
  *v8 = 0;
  *(v8 + 1) = v12;
  v21 = *(v6 + 36);
  *&v8[v21] = 0;
  if (v12)
  {
    v22 = 0;
    v33 = v20;
    do
    {
      v39 = v22;
      v35 = 0;
      v36 = v12;
      sub_1D8191754();
      v23 = sub_1D81918F4();
      v25 = *v24;

      v23(&v35, 0);
      sub_1D81917C4();
      v26 = v18;
      v27 = v12;
      v28 = v13;
      v29 = *(v25 + 16);

      v30 = v29;
      ViewControllerTransitionManager.endTransition(viewController:)(v30);

      v13 = v28;
      v12 = v27;
      v18 = v26;
      v22 = *&v8[v21];
    }

    while (v22 != v12);
  }

  sub_1D7F5302C(v8);
}

uint64_t sub_1D7F494B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v4 = sub_1D8191E44();
  v5 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v5))
  {
    v6 = OUTLINED_FUNCTION_55_1();
    v7 = OUTLINED_FUNCTION_61();
    v18[0] = v7;
    *v6 = 136315138;
    v8 = 0xEA00000000006E65;
    v9 = OUTLINED_FUNCTION_5_18();
    switch(v3)
    {
      case 1:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_4_25();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_16_0();
        goto LABEL_7;
      case 3:
        v11 = OUTLINED_FUNCTION_44_2();
        goto LABEL_11;
      case 4:
        v10 = OUTLINED_FUNCTION_45_2();
LABEL_7:
        v9 = OUTLINED_FUNCTION_42_3(v10);
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_43_4();
LABEL_11:
        v9 = v11 | 0x6C616900000000;
        break;
      case 6:
        v9 = OUTLINED_FUNCTION_18_9();
        break;
      case 7:
        v9 = OUTLINED_FUNCTION_29_4();
        break;
      default:
        break;
    }

    v12 = sub_1D7E1C3D8(v9, v8, v18);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_36_4(&dword_1D7DFF000, v13, v14, "CardContainer willTransitionTo presentationState: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v16 = OUTLINED_FUNCTION_85();
    v17(v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7F4969C(uint64_t a1, double a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v7, v8, MEMORY[0x1E69D6AD8]);
  v10 = v9;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_1();
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v14 = sub_1D8191E44();
  v15 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_62_2(v15))
  {
    v16 = OUTLINED_FUNCTION_55_1();
    *v16 = 134217984;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_1D7DFF000, v14, v15, "CardContainer didDragTo y: %f", v16, 0xCu);
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v17 = OUTLINED_FUNCTION_53();
    v18(v17, a2);
    swift_unknownObjectRelease();
  }

  v19 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v12 + 16))(v3, v4 + v19, v10);
  sub_1D818F974();
  result = (*(v12 + 8))(v3, v10);
  if (v22)
  {
    v21 = *(v22 + 32);
    if (v21 == a1 && (*(v21 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8) & 1) == 0)
    {
      sub_1D7F49904(v22, &v22);
      sub_1D7F48A54(&v22, *&a2, 0);
    }
  }

  return result;
}

uint64_t sub_1D7F49904@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior;
  if ((sub_1D7E3A3F4(1, *(v3 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior)) & 1) != 0 && (, sub_1D818F154(), result = , v7 != 3))
  {
    v6 = 2;
  }

  else
  {
    result = sub_1D7E3A3F4(0, *(v3 + v4));
    if (result)
    {
      v6 = 3;
    }

    else
    {
      v6 = 8;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1D7F499B0()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v0 = OUTLINED_FUNCTION_85();
    v2 = v1(v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1D7F49A74()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v0 = OUTLINED_FUNCTION_53();
    v2 = v1(v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

id CardContainerController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CardContainerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardContainerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1D7F49D40(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___TSCardContainerController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F5312C;
}

id (*sub_1D7F49DD4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D7F49E38;
}

id sub_1D7F49E38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D7F45D78();
  }

  return result;
}

void CardContainerController.removeCard(for:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v36 = v2;
  v37 = v3;
  v35 = v4;
  v38 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v6, v7, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_2();
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v14 = v13 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_5();
  v16 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v0, v0 + v16, v9);
  v17(v1, v0, v9);
  v18 = *(v14 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v11 + 8))(v0, v9);
  while (1)
  {
    sub_1D81917B4();
    if (*(v1 + v18) == v39[0])
    {
      break;
    }

    v19 = sub_1D81918F4();
    v21 = *v20;

    (v19)(v39, 0);
    sub_1D81917C4();
    sub_1D7E0A1A8(0, &qword_1EDBB2F40);
    v22 = *(v21 + 16);
    LOBYTE(v19) = sub_1D8191CC4();

    if (v19)
    {
      sub_1D7E0A1A8(0, &qword_1EDBBE110);
      v23 = v38;
      v24 = sub_1D8191E44();
      v25 = sub_1D81919E4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_55_1();
        v27 = OUTLINED_FUNCTION_61();
        v39[0] = v27;
        *v26 = 136315138;
        v28 = sub_1D7F522C8(v23);
        if (v29)
        {
          v30 = v29;
        }

        else
        {
          v28 = 0xD00000000000001BLL;
          v30 = 0x80000001D81C98D0;
        }

        v31 = sub_1D7E1C3D8(v28, v30, v39);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_1D7DFF000, v24, v25, "Popped CardContainer %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      LOBYTE(v39[0]) = 6;
      sub_1D7F4E6A0(v21, v39, v35 & 1, v36, v37);

      break;
    }
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v1, v32, v33, v34, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

void CardContainerController.pushCard(_:to:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v13 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1D818F5F4();
  MEMORY[0x1EEE9AC00](v5);
  v12 = *v2;
  OUTLINED_FUNCTION_7_21();
  sub_1D7E342C8();
  v6 = MEMORY[0x1E69D6810];
  sub_1D7F5232C(0, &qword_1EDBB2CC0, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D81A1B70;
  sub_1D818F5E4();
  sub_1D818F5D4();
  sub_1D818F5B4();
  sub_1D7F52404(&qword_1EDBBC470, MEMORY[0x1E69D6810]);
  sub_1D7F5232C(0, &qword_1EDBB33C8, v6, MEMORY[0x1E69E62F8]);
  sub_1D7E103D8(&qword_1EDBB33C0, &qword_1EDBB33C8, v6);
  sub_1D8192004();
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 32) = v4;
  *(v8 + 40) = v13;

  v9 = v4;
  sub_1D818EF34();

  v10 = OUTLINED_FUNCTION_14_0();
  v11(v10);

  OUTLINED_FUNCTION_100();
}

void CardContainerController.setCard(at:to:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v24 = v1;
  v25 = v0;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v7, v8, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_2();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v22 = *v4;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v12 = *(v10 + 16);
    v13 = OUTLINED_FUNCTION_77_2();
    v12(v13);
    OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
    OUTLINED_FUNCTION_67();
    sub_1D8191724();
    OUTLINED_FUNCTION_67();
    sub_1D81917B4();
    v14 = OUTLINED_FUNCTION_83_0();
    v15 = *(v10 + 8);
    v16 = OUTLINED_FUNCTION_76();
    v15(v16);
    if (v14 > v6)
    {
      v17 = OUTLINED_FUNCTION_77_2();
      v12(v17);
      sub_1D818F9F4();
      v18 = OUTLINED_FUNCTION_76();
      v15(v18);
      v19 = v26;
      v20 = v22;
      if (v22 == 4)
      {
        v21 = *(v26 + 32);
        if (*(v21 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8) != 1)
        {
          if (*(v21 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_animatingPresentationState) != 4)
          {
            if (sub_1D7E3A3F4(0, *(v21 + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior)))
            {
              v20 = 3;
              goto LABEL_6;
            }

            if (sub_1D7E3A3F4(1, *(*(v26 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior)))
            {
              v20 = 2;
              goto LABEL_6;
            }

            if (sub_1D7E3A3F4(2, *(*(v26 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior)))
            {
              LOBYTE(v26) = 0;
              goto LABEL_7;
            }
          }

          if (v25)
          {
            v25(0);
          }

          goto LABEL_8;
        }

        v20 = 4;
      }

LABEL_6:
      LOBYTE(v26) = v20;
LABEL_7:
      sub_1D7F4E6A0(v19, &v26, v23 & 1, v25, v24);
LABEL_8:

      goto LABEL_11;
    }
  }

  if (v25)
  {
    v25(0);
  }

LABEL_11:
  OUTLINED_FUNCTION_100();
}

void CardContainerController.restoreCard(at:animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v4, v5, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_2();
  if (v3 < 0 || (OUTLINED_FUNCTION_7(), swift_beginAccess(), v9 = OUTLINED_FUNCTION_77_2(), v18 = v10, v10(v9), OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0), v11 = v1, OUTLINED_FUNCTION_67(), sub_1D8191724(), OUTLINED_FUNCTION_67(), sub_1D81917B4(), v12 = OUTLINED_FUNCTION_83_0(), v13 = *(v7 + 8), v14 = OUTLINED_FUNCTION_76(), v13(v14), v15 = v12 <= v3, v1 = v11, v15))
  {
    if (v1)
    {
      v1(0);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_77_2();
    v18(v16);
    sub_1D818F9F4();
    v17 = OUTLINED_FUNCTION_76();
    v13(v17);
    if (*(*(v19 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingPresentationState) == 8)
    {
      if (v11)
      {
        v11(0);
      }
    }

    else
    {
      CardContainerController.setCard(at:to:animated:completion:)();
    }
  }

  OUTLINED_FUNCTION_100();
}

Swift::Int_optional __swiftcall CardContainerController.index(ofCardWith:)(UIViewController *ofCardWith)
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v5, v6, MEMORY[0x1E69D6AD8]);
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_10();
  v12 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v10 + 16))(v2, v1 + v12, v8);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  sub_1D8191724();
  while (1)
  {
    sub_1D81917B4();
    if (v16[4] == v16[0])
    {
      break;
    }

    sub_1D81918F4();
    OUTLINED_FUNCTION_63_1();
    v2(v16, 0);
    v13 = sub_1D7F459D8(v4);

    if (v13)
    {
      break;
    }

    sub_1D81917C4();
  }

  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_100();
  result.value = v14;
  result.is_nil = v15;
  return result;
}

uint64_t sub_1D7F4AC34(void *a1)
{
  result = sub_1D7F50174(a1);
  if (result)
  {
    v2 = *(result + 32);
    v3 = &v2[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      v6 = v2;
      sub_1D818F154();
      v7[0] = v7[1];
      (*(v4 + 40))(v6, &protocol witness table for CardViewAnimationCoordinator, v7, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7F4AD68(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = sub_1D7F50174(a1);
  if (result)
  {
    v6 = *(result + 32);
    v9 = a1;
    v7 = v6;
    v8 = a1;
    sub_1D8093AEC(&v9, v7, ObjectType, a2);
  }

  return result;
}

uint64_t sub_1D7F4AE30(void *a1, uint64_t a2, void (*a3)(void **, id, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  result = sub_1D7F50174(a1);
  if (result)
  {
    v8 = *(result + 24);
    v11 = a1;
    v9 = v8;
    v10 = a1;
    a3(&v11, v9, ObjectType, a2);
  }

  return result;
}

Swift::Void __swiftcall CardContainerController.viewDidLoad()()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for CardContainerController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR___TSCardContainerController_rootViewController];
  [v0 addChildViewController_];
  v2 = OUTLINED_FUNCTION_88();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_88();
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v7, sel_setFrame_);
  v10 = OUTLINED_FUNCTION_88();
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *&v0[OBJC_IVAR___TSCardContainerController_dimmingView];
  [v10 addSubview_];

  v13 = OUTLINED_FUNCTION_88();
  if (!v13)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v12, sel_setFrame_);
  v15 = OBJC_IVAR___TSCardContainerController_dimmingColor;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  [v12 setBackgroundColor_];
  [v12 setAlpha_];
  v16 = [v0 navigationItem];
  if (sub_1D7E38C7C([v1 navigationItem]))
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31D0);
    v17 = sub_1D8191304();
  }

  else
  {
    v17 = 0;
  }

  [v16 setLeftBarButtonItems_];

  v18 = [v0 navigationItem];
  if (sub_1D7E3443C([v1 navigationItem]))
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31D0);
    v19 = sub_1D8191304();
  }

  else
  {
    v19 = 0;
  }

  [v18 setRightBarButtonItems_];
}

Swift::Void __swiftcall CardContainerController.viewWillAppear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v5, v6, v7, MEMORY[0x1E69E6CF0]);
  v34 = v8;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v10, v11, MEMORY[0x1E69D6AD8]);
  v13 = v12;
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for CardContainerController();
  v37.receiver = v1;
  v37.super_class = v19;
  v35 = v4;
  objc_msgSendSuper2(&v37, sel_viewWillAppear_, v4 & 1);
  v20 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v21 = *(v15 + 16);
  v21(v18, &v1[v20], v13);
  OUTLINED_FUNCTION_6_19(&qword_1EDBB1FD8);
  sub_1D8191164();
  sub_1D7F4B804(v36);

  if (LOBYTE(v36[0]) - 2 < 6)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    LOBYTE(v36[0]) = 0;

    v22 = OUTLINED_FUNCTION_74_2();
    ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v22, v23, v24);
  }

  v21(v18, &v1[v20], v13);
  v21(v2, v18, v13);
  v25 = *(v34 + 36);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v15 + 8))(v18, v13);
  v34 = OBJC_IVAR___TSCardContainerController_transitionManager;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  while (1)
  {
    sub_1D81917B4();
    if (*(v2 + v25) == v36[0])
    {
      break;
    }

    v26 = sub_1D81918F4();
    OUTLINED_FUNCTION_89_0();
    v26(v36, 0);
    sub_1D81917C4();

    sub_1D818F154();

    switch(LOBYTE(v36[0]))
    {
      case 2:
      case 4:
      case 5:
      case 6:
      case 7:

        break;
      default:
        LOBYTE(v36[0]) = 0;

        v27 = OUTLINED_FUNCTION_74_2();
        ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v27, v28, v29);

        break;
    }
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v2, v30, v31, v32, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F4B804@<X0>(char *a1@<X8>)
{
  v2 = sub_1D8190DB4();
  v6 = sub_1D80E734C(v2);
  sub_1D7F50CAC(&v6);
  v3 = sub_1D805B60C(v6);

  if (v3)
  {

    sub_1D818F154();

    v5 = v6;
  }

  else
  {
    v5 = 5;
  }

  *a1 = v5;
  return result;
}

Swift::Void __swiftcall CardContainerController.viewWillDisappear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_120();
  v4 = v1;
  v6 = v5;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v7, v8, MEMORY[0x1E69D6AD8]);
  v10 = v9;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  v28 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v14, v15, v16, MEMORY[0x1E69E6CF0]);
  v18 = v17 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_1();
  v30.receiver = v1;
  v30.super_class = type metadata accessor for CardContainerController();
  objc_msgSendSuper2(&v30, sel_viewWillDisappear_, v6);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v20 = *&v1[OBJC_IVAR___TSCardContainerController_rootViewController];
  LOBYTE(v29[0]) = 1;

  ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v20, v29, v6);

  v21 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v22 = *(v12 + 16);
  v22(v3, &v4[v21], v10);
  v22(v2, v3, v10);
  v23 = *(v18 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v28 + 8))(v3, v10);
  while (1)
  {
    sub_1D81917B4();
    if (*&v2[v23] == v29[0])
    {
      break;
    }

    sub_1D81918F4();
    OUTLINED_FUNCTION_63_1();
    (v2)(v29, 0);
    sub_1D81917C4();
    v24 = *(v3 + 16);
    LOBYTE(v29[0]) = 1;

    ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v24, v29, v6);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v2, v25, v26, v27, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

void sub_1D7F4BCD8()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v5 = v0;
  v7 = v6;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v8, v9, MEMORY[0x1E69D6AD8]);
  v11 = v10;
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v15, v16, v17, MEMORY[0x1E69E6CF0]);
  v19 = v18 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_10();
  v36.receiver = v5;
  v36.super_class = type metadata accessor for CardContainerController();
  objc_msgSendSuper2(&v36, *v4, v7 & 1);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v21 = *&v5[OBJC_IVAR___TSCardContainerController_rootViewController];

  ViewControllerTransitionManager.endTransition(viewController:)(v21);

  v22 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v23 = *(v13 + 16);
  v23(v2, &v5[v22], v11);
  v23(v1, v2, v11);
  v24 = *(v19 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  OUTLINED_FUNCTION_53();
  sub_1D8191724();
  v25 = OUTLINED_FUNCTION_54_1();
  v26(v25);
  while (1)
  {
    OUTLINED_FUNCTION_53();
    sub_1D81917B4();
    if (*(v1 + v24) == v35)
    {
      break;
    }

    v27 = sub_1D81918F4();
    v29 = *v28;

    v27(&v35, 0);
    sub_1D81917C4();
    v30 = *(v29 + 16);

    v31 = v30;
    ViewControllerTransitionManager.endTransition(viewController:)(v31);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v1, v32, v33, v34, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_100();
}

Swift::Void __swiftcall CardContainerController.viewWillLayoutSubviews()()
{
  OUTLINED_FUNCTION_86();
  v39 = v2;
  v40 = v3;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v4, v5, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_1_41();
  sub_1D7F52E60(0, v11, v12, v13, MEMORY[0x1E69E6CF0]);
  v15 = v14;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26();
  v38.receiver = v0;
  v38.super_class = type metadata accessor for CardContainerController();
  objc_msgSendSuper2(&v38, sel_viewWillLayoutSubviews);
  v17 = [*&v0[OBJC_IVAR___TSCardContainerController_rootViewController] view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v36 = v15;
  v19 = [v0 view];
  if (!v19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = v19;
  [v19 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v18, sel_setFrame_);
  v21 = *&v0[OBJC_IVAR___TSCardContainerController_dimmingView];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 bounds];
  OUTLINED_FUNCTION_9_0();

  OUTLINED_FUNCTION_3_2(v21, sel_setFrame_);
  v24 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v25 = *(v9 + 16);
  v25(v0, &v0[v24], v7);
  v25(v1, v0, v7);
  v26 = *(v36 + 36);
  OUTLINED_FUNCTION_3_36(&qword_1EDBB1FD0);
  sub_1D8191724();
  (*(v9 + 8))(v0, v7);
  while (1)
  {
    OUTLINED_FUNCTION_13_9();
    sub_1D81917B4();
    if (*(v1 + v26) == v37)
    {
      break;
    }

    v27 = OUTLINED_FUNCTION_57_1();
    v29 = *v28;

    v27(&v37, 0);
    OUTLINED_FUNCTION_58_1();
    v30 = *(v29 + 24);
    v31 = *(v29 + 32);
    v32 = v30;
    sub_1D8091A9C(v32);
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v1, v33, v34, v35, MEMORY[0x1E69E6CF0]);
  OUTLINED_FUNCTION_87();
}

Swift::Void __swiftcall CardContainerController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CardContainerController();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_1D818EF14();
}

Swift::Void __swiftcall CardContainerController.viewLayoutMarginsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CardContainerController();
  objc_msgSendSuper2(&v1, sel_viewLayoutMarginsDidChange);
  sub_1D7F45D78();
  sub_1D818EF14();
}

void sub_1D7F4C4EC(char *a1, unsigned __int8 *a2)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v105 - v7;
  v9 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v10(v8, &a1[v9], v5);
  v11 = sub_1D818F9A4();
  v12 = *(v6 + 8);
  v12(v8, v5);
  if (v11)
  {
    v13 = [a1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v111.origin.x = v16;
      v111.origin.y = v18;
      v111.size.width = v20;
      v111.size.height = v22;
      CGRectGetHeight(v111);
      return;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a2 - 2 < 2)
  {
    goto LABEL_7;
  }

  if (a2 == 4)
  {
    v10(v8, &a1[v9], v5);
    sub_1D818F974();
    v12(v8, v5);
    if (!__dst[0])
    {
LABEL_43:
      v93 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
      swift_beginAccess();
      memcpy(__dst, &a1[v93], 0x49uLL);
      a2 = &selRef_attemptTransitionToState_animated_;
      v94 = [a1 view];
      if (!v94)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v95 = v94;
      [v94 bounds];
      v27 = v96;
      v29 = v97;
      v31 = v98;
      v33 = v99;

      v100 = [a1 view];
      if (!v100)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v101 = v100;
      [v100 layoutMargins];
      v106 = v102;
      v38 = v103;
      v40 = v104;

      v117.origin.x = v27;
      v117.origin.y = v29;
      v117.size.width = v31;
      v117.size.height = v33;
      CGRectGetHeight(v117);
      memcpy(v109, __dst, sizeof(v109));
      v108 = 4;
      v41 = &v108;
      goto LABEL_10;
    }

    v105 = __dst[0];
    v42 = *(__dst[0] + 32);
    v43 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
    swift_beginAccess();
    v44 = *(v42 + v43);
    a2 = sub_1D7E36AB8(v44);
    sub_1D8190DB4();
    v45 = 0;
    v106 = MEMORY[0x1E69E7CC0];
    while (a2 != v45)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](v45, v44);
      }

      else
      {
        if (v45 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }
      }

      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong && (v48 = Strong[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_initialCoordinatingPresentationState], Strong, v48 != 8))
      {
        v49 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EE508C();
          v49 = v52;
        }

        v106 = v49;
        v50 = *(*&v49 + 16);
        if (v50 >= *(*&v49 + 24) >> 1)
        {
          sub_1D7EE508C();
          v106 = v53;
        }

        v51 = v106;
        *(*&v106 + 16) = v50 + 1;
        *(*&v51 + v50 + 32) = v48;
        v45 = v46;
      }

      else
      {
        ++v45;
      }
    }

LABEL_31:

    *__dst = v106;
    sub_1D8190DB4();
    sub_1D7F50D28(__dst);

    if (*(__dst[0] + 16))
    {
      a2 = *(__dst[0] + 32);

      v69 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
      swift_beginAccess();
      memcpy(__dst, &a1[v69], 0x49uLL);
      v70 = [a1 view];
      if (v70)
      {
        v71 = v70;
        [v70 bounds];
        v73 = v72;
        v75 = v74;
        v77 = v76;
        v79 = v78;

        v80 = [a1 view];
        if (v80)
        {
          v81 = v80;
          [v80 layoutMargins];
          v106 = v82;
          v84 = v83;
          v86 = v85;

          v113.origin.x = v73;
          v113.origin.y = v75;
          v113.size.width = v77;
          v113.size.height = v79;
          CGRectGetHeight(v113);
          memcpy(v109, __dst, sizeof(v109));
          v108 = a2;
          CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(&v108, v73, v75, v77, v79, v106, v84, v86);

          return;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);

      __break(1u);
      return;
    }

    goto LABEL_43;
  }

  if (a2 == 7)
  {
LABEL_7:
    v23 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
    swift_beginAccess();
    memcpy(__dst, &a1[v23], 0x49uLL);
    v24 = [a1 view];
    if (!v24)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = v24;
    [v24 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = [a1 view];
    if (!v34)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v35 = v34;
    [v34 layoutMargins];
    v106 = v36;
    v38 = v37;
    v40 = v39;

    v112.origin.x = v27;
    v112.origin.y = v29;
    v112.size.width = v31;
    v112.size.height = v33;
    CGRectGetHeight(v112);
    memcpy(v109, __dst, sizeof(v109));
    v107 = a2;
    v41 = &v107;
LABEL_10:
    CardViewLayoutOptions.cardHeight(for:in:layoutMargins:)(v41, v27, v29, v31, v33, v106, v38, v40);
    return;
  }

  sub_1D7F46828();
  v55 = sub_1D7F12E70(v54);
  v56 = sub_1D7E3A3F4(3, v55);
  a2 = &a1[OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions];
  if (v56)
  {
    swift_beginAccess();
    v57 = a2[56];
    v58 = [a1 view];
    if (!v58)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v59 = v58;
    [v58 bounds];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v68 = [a1 view];
    if (!v68)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    swift_beginAccess();
    v57 = a2[40];
    v87 = [a1 view];
    if (!v87)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    a2 = v87;
    [v87 bounds];
    v61 = v88;
    v63 = v89;
    v65 = v90;
    v67 = v91;

    v68 = [a1 view];
    if (!v68)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }
  }

  v92 = v68;

  [v92 layoutMargins];

  v114.origin.x = v61;
  v114.origin.y = v63;
  v114.size.width = v65;
  v114.size.height = v67;
  CGRectGetHeight(v114);
  if (v57 >> 6)
  {
    if (v57 >> 6 != 1)
    {
      v116.origin.x = v61;
      v116.origin.y = v63;
      v116.size.width = v65;
      v116.size.height = v67;
      CGRectGetHeight(v116);
    }
  }

  else
  {
    v115.origin.x = v61;
    v115.origin.y = v63;
    v115.size.width = v65;
    v115.size.height = v67;
    CGRectGetHeight(v115);
  }
}

Swift::Void __swiftcall CardContainerController.viewSafeAreaInsetsDidChange()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardContainerController();
  objc_msgSendSuper2(&v2, sel_viewSafeAreaInsetsDidChange);
  v1 = 8;
  sub_1D7F48A54(&v1, 0, 1);
}

void CardContainerController.collapseCards(completion:)()
{
  OUTLINED_FUNCTION_120();
  v45 = v2;
  v46 = v3;
  sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v51 = v5;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_2();
  v50 = v6;
  sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v48 = v8;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  v47 = v9;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v10, v11, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_22_8();
  sub_1D7F52E60(0, v13, &qword_1EDBB1FD0, v1, MEMORY[0x1E69E6CF0]);
  v15 = v14 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = dispatch_group_create();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v20 = OUTLINED_FUNCTION_72_2();
  v21(v20);
  OUTLINED_FUNCTION_6_19(&qword_1EDBB1FD8);
  sub_1D8191134();
  v22 = *(v15 + 44);
  v23 = sub_1D7F523A4(&qword_1EDBB1FD0);
  while (1)
  {
    OUTLINED_FUNCTION_84_0();
    if (*&v18[v22] == v54[0])
    {
      break;
    }

    v24 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_89_0();
    v25 = OUTLINED_FUNCTION_46_3();
    v24(v25);
    sub_1D81917C4();
    dispatch_group_enter(v19);
    LOBYTE(v54[0]) = 2;
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v19;
    v26 = v19;
    OUTLINED_FUNCTION_47_2();
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v18, v27, v28, v29, MEMORY[0x1E69E6CF0]);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v30 = sub_1D8191AB4();
  v31 = swift_allocObject();
  v32 = v46;
  *(v31 + 16) = v45;
  *(v31 + 24) = v32;
  OUTLINED_FUNCTION_20_8(v31);
  OUTLINED_FUNCTION_21_7(COERCE_DOUBLE(1107296256));
  v54[2] = v33;
  v54[3] = &block_descriptor_11;
  _Block_copy(v54);
  OUTLINED_FUNCTION_90_1();
  v53 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_24_5();
  sub_1D7F52404(v34, v35);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_78();
  sub_1D7F5232C(v36, v37, v38, v39);
  OUTLINED_FUNCTION_78();
  sub_1D7E103D8(v40, v41, v42);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_60_2();
  _Block_release(v23);

  v43 = OUTLINED_FUNCTION_54_1();
  v44(v43);
  (*(v48 + 8))(v0, v49);

  OUTLINED_FUNCTION_100();
}

void CardContainerController.expandCards(completion:)()
{
  OUTLINED_FUNCTION_120();
  v45 = v2;
  v46 = v3;
  sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v51 = v5;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_2();
  v50 = v6;
  sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v48 = v8;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_2();
  v47 = v9;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v10, v11, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_22_8();
  sub_1D7F52E60(0, v13, &qword_1EDBB1FD0, v1, MEMORY[0x1E69E6CF0]);
  v15 = v14 - 8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = dispatch_group_create();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v20 = OUTLINED_FUNCTION_72_2();
  v21(v20);
  OUTLINED_FUNCTION_6_19(&qword_1EDBB1FD8);
  sub_1D8191134();
  v22 = *(v15 + 44);
  v23 = sub_1D7F523A4(&qword_1EDBB1FD0);
  while (1)
  {
    OUTLINED_FUNCTION_84_0();
    if (*&v18[v22] == v54[0])
    {
      break;
    }

    v24 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_89_0();
    v25 = OUTLINED_FUNCTION_46_3();
    v24(v25);
    sub_1D81917C4();
    dispatch_group_enter(v19);
    LOBYTE(v54[0]) = 1;
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v19;
    v26 = v19;
    OUTLINED_FUNCTION_47_2();
  }

  OUTLINED_FUNCTION_1_41();
  sub_1D7F530BC(v18, v27, v28, v29, MEMORY[0x1E69E6CF0]);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v30 = sub_1D8191AB4();
  v31 = swift_allocObject();
  v32 = v46;
  *(v31 + 16) = v45;
  *(v31 + 24) = v32;
  OUTLINED_FUNCTION_20_8(v31);
  OUTLINED_FUNCTION_21_7(COERCE_DOUBLE(1107296256));
  v54[2] = v33;
  v54[3] = &block_descriptor_22_0;
  _Block_copy(v54);
  OUTLINED_FUNCTION_90_1();
  v53 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_24_5();
  sub_1D7F52404(v34, v35);
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_78();
  sub_1D7F5232C(v36, v37, v38, v39);
  OUTLINED_FUNCTION_78();
  sub_1D7E103D8(v40, v41, v42);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_60_2();
  _Block_release(v23);

  v43 = OUTLINED_FUNCTION_54_1();
  v44(v43);
  (*(v48 + 8))(v0, v49);

  OUTLINED_FUNCTION_100();
}

void sub_1D7F4D9BC(uint64_t a1, unsigned __int8 a2, void *a3, char a4)
{
  v6 = a2;
  v8 = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1D7F46398();
  v11 = v10;

  v12 = sub_1D7E3A548(v11);

  if (v8 <= 1)
  {
    v13 = swift_unknownObjectUnownedLoadStrong();
    v14 = *&v13[OBJC_IVAR___TSCardContainerController_rootViewController];

    v15 = [v14 view];
    if (!v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    [v15 setUserInteractionEnabled_];

    if (v12)
    {
      v16 = [v12 view];
      if (!v16)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v17 = v16;
      [v16 setUserInteractionEnabled_];
    }
  }

  v18 = swift_unknownObjectUnownedLoadStrong();
  [v18 addChildViewController_];

  v19 = [a3 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_35;
  }

  v20 = v19;
  v134 = v12;
  v21 = objc_allocWithZone(type metadata accessor for CardView());
  v22 = sub_1D8101AF4(v20);
  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = v22;
  v25 = [v23 view];

  if (!v25)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v145.origin.x = v27;
  v145.origin.y = v29;
  v145.size.width = v31;
  v145.size.height = v33;
  MaxY = CGRectGetMaxY(v145);
  v35 = swift_unknownObjectUnownedLoadStrong();
  v36 = [v35 view];

  if (!v36)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v36 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v146.origin.x = v38;
  v146.origin.y = v40;
  v146.size.width = v42;
  v146.size.height = v44;
  Width = CGRectGetWidth(v146);
  v46 = swift_unknownObjectUnownedLoadStrong();
  v47 = [v46 view];

  if (!v47)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v47 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v147.origin.x = v49;
  v147.origin.y = v51;
  v147.size.width = v53;
  v147.size.height = v55;
  [v24 setFrame_];

  v137 = a3;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBAFE68);
  v56 = a3;
  v135 = v24;
  v133 = a4;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v142, __dst);
    v57 = v24;
    v58 = v6;
    v59 = __dst[3];
    v60 = __dst[4];
    v61 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v62 = v60;
    v6 = v58;
    sub_1D81035A8(v61, v57, v59, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    sub_1D7E70D34(&v142, &qword_1ECA0D678, &qword_1EDBAFE68, &protocol descriptor for CardViewAppearanceProviding, sub_1D7E26648);
  }

  v137 = v56;
  sub_1D7E0631C(0, qword_1EDBB1EF0);
  v63 = v56;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v142, __dst);
    v64 = __dst[3];
    v65 = __dst[4];
    v66 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v67 = v135;
    sub_1D81033C0(v66, v135, v64, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    sub_1D7E70D34(&v142, &unk_1EDBB1EE8, qword_1EDBB1EF0, &protocol descriptor for CardViewTitleViewProviding, sub_1D7E26648);
    v67 = v135;
  }

  v132 = v6;
  LOBYTE(__dst[0]) = v6;
  sub_1D8100EAC(__dst);
  v68 = swift_unknownObjectUnownedLoadStrong();
  v69 = [v68 view];

  if (!v69)
  {
    goto LABEL_38;
  }

  [v69 addSubview_];

  v70 = swift_unknownObjectUnownedLoadStrong();
  [v63 didMoveToParentViewController_];

  v71 = swift_unknownObjectUnownedLoadStrong();
  v72 = &v71[OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions];
  swift_beginAccess();
  v73 = v72[2];
  v74 = *(v72 + 24);

  v75 = swift_unknownObjectUnownedLoadStrong();
  v76 = [v75 view];

  if (!v76)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v76 bounds];
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;

  v85 = swift_unknownObjectUnownedLoadStrong();
  v86 = [v85 view];

  if (!v86)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v86 layoutMargins];
  v88 = v87;
  v90 = v89;

  v91 = *&v67[OBJC_IVAR___TSCardView_layout];
  v148.origin.x = v78;
  v148.origin.y = v80;
  v148.size.width = v82;
  v148.size.height = v84;
  Height = CGRectGetHeight(v148);
  if (v74 >> 6)
  {
    if (v74 >> 6 == 1)
    {
      v93 = 0.0;
      if (v74)
      {
        v93 = v90;
      }

      v94 = v93 + v73;
    }

    else
    {
      v150.origin.x = v78;
      v150.origin.y = v80;
      v150.size.width = v82;
      v150.size.height = v84;
      v94 = CGRectGetHeight(v150) * v73;
    }
  }

  else
  {
    v149.origin.x = v78;
    v149.origin.y = v80;
    v149.size.width = v82;
    v149.size.height = v84;
    v95 = CGRectGetHeight(v149);
    v96 = 0.0;
    if (v74)
    {
      v96 = v88;
    }

    v94 = v95 - v73 - v96;
  }

  [v63 setAdditionalSafeAreaInsets_];
  sub_1D7F4E468(v63, __dst);
  v97 = __dst[0];
  v98 = __dst[1];
  v99 = BYTE1(__dst[1]);
  v100 = BYTE2(__dst[1]);
  v101 = __dst[2];
  v102 = swift_unknownObjectUnownedLoadStrong();
  v103 = [v102 view];

  if (!v103)
  {
    goto LABEL_41;
  }

  v104 = [v63 view];
  if (!v104)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v105 = v104;
  v106 = swift_unknownObjectUnownedLoadStrong();
  v107 = *&v106[OBJC_IVAR___TSCardContainerController_dimmingView];

  v137 = v97;
  v138 = v98;
  v139 = v99;
  v140 = v100;
  v141 = v101;
  v108 = swift_unknownObjectUnownedLoadStrong();
  v109 = OBJC_IVAR___TSCardContainerController_cardViewLayoutOptions;
  swift_beginAccess();
  memcpy(__dst, &v108[v109], 0x49uLL);

  v110 = objc_allocWithZone(type metadata accessor for CardViewAnimationCoordinator());
  v111 = v135;
  v112 = sub_1D808FE18(v103, v111, v105, v107, &v137, __dst);
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v63))
  {
    v114 = v113;
    v115 = v63;
  }

  else
  {
    v114 = 0;
  }

  *&v112[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_delegate + 8] = v114;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v116 = swift_unknownObjectUnownedLoadStrong();
  *&v112[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_parentDelegate + 8] = &protocol witness table for CardContainerController;
  swift_unknownObjectWeakAssign();

  v117 = swift_unknownObjectUnownedLoadStrong();
  v118 = OBJC_IVAR___TSCardContainerController_dimmingAlpha;
  swift_beginAccess();
  v119 = *&v117[v118];

  *&v112[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_dimmingAlpha] = v119;
  type metadata accessor for CardContainerController.CardItem();
  v120 = swift_allocObject();
  v120[2] = v63;
  v120[3] = v111;
  v120[4] = v112;
  v121 = swift_unknownObjectUnownedLoadStrong();
  swift_beginAccess();
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v122 = v111;
  v123 = v63;
  v124 = v112;
  sub_1D818F984();
  swift_endAccess();

  v125 = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(__dst[0]) = v132;
  v126 = swift_allocObject();
  *(v126 + 16) = a1;
  *(v126 + 24) = v134;
  *(v126 + 32) = v132;
  v127 = v134;

  sub_1D7F4E6A0(v120, __dst, v133 & 1, sub_1D7F53088, v126);

  v128 = swift_allocObject();
  v129 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  v130 = swift_allocObject();
  swift_weakInit();
  v131 = swift_allocObject();
  *(v131 + 16) = v128;
  *(v131 + 24) = v130;
  sub_1D818F164();

  __swift_destroy_boxed_opaque_existential_1Tm(__dst);
}

void sub_1D7F4E468(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBB0218);
  v4 = a1;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v7, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D7E70D34(v7, &qword_1EDBB0210, &qword_1EDBB0218, &protocol descriptor for CardViewBehaviorProviding, sub_1D7E26648);
    static CardViewBehavior.default.getter(a2);
  }
}

void sub_1D7F4E58C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = *&Strong[OBJC_IVAR___TSCardContainerController_rootViewController];

  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v8 setUserInteractionEnabled_];

  if (a3)
  {
    v9 = [a3 view];
    if (v9)
    {
      v10 = v9;
      [v9 setUserInteractionEnabled_];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = a4;
  sub_1D7F48A54(&v12, 0, 1);
}

uint64_t sub_1D7F4E6A0(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (a3)
  {

    return sub_1D7F4F4A4(v5, a1, v9, a4, a5);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = a1;
    *(v12 + 32) = v9;
    *(v12 + 40) = a4;
    *(v12 + 48) = a5;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1D7F5309C;
    *(v13 + 24) = v12;
    v17[4] = sub_1D7E74D6C;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1D7E74D74;
    v17[3] = &block_descriptor_68;
    v14 = _Block_copy(v17);
    v15 = v5;

    sub_1D7E19F24(a4);

    [v11 performWithoutAnimation_];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1D7F4E884(unsigned __int8 *a1)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v18 = v7;
  v12 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v13 = *(v4 + 16);
  v17 = v12;
  v13(v6, &v9[v12], v3);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  while (1)
  {
    sub_1D81917B4();
    if (v19[4] == v19[0])
    {
      (*(v4 + 8))(v6, v3);
      goto LABEL_16;
    }

    v14 = sub_1D81918F4();
    v16 = *v15;

    v14(v19, 0);

    if (v16 == v11)
    {
      break;
    }

    sub_1D81917C4();
  }

  (*(v4 + 8))(v6, v3);
  if (((1 << v18) & 0xA3) != 0)
  {
    LOBYTE(v19[0]) = 8;
LABEL_13:
    sub_1D7F48A54(v19, 0, 1);
    goto LABEL_15;
  }

  if (((1 << v18) & 0xC) != 0)
  {
    LOBYTE(v19[0]) = v18;
    goto LABEL_13;
  }

  [*(v11 + 16) willMoveToParentViewController_];
  [*(v11 + 24) removeFromSuperview];
  [*(v11 + 16) removeFromParentViewController];
  [*(v11 + 16) setAdditionalSafeAreaInsets_];
  swift_beginAccess();
  sub_1D818F994();
  swift_endAccess();

LABEL_15:
  sub_1D7F4EBE8();
LABEL_16:
}

uint64_t sub_1D7F4EBE8()
{
  sub_1D7F52DC4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  MEMORY[0x1EEE9AC00](v10);
  v46 = (&v44 - v11);
  v51 = 0u;
  v52 = 0u;
  sub_1D7F466C0(v49);
  v12 = LOBYTE(v49[0]);
  v47 = v0;
  v13 = [*(v0 + OBJC_IVAR___TSCardContainerController_rootViewController) viewIfLoaded];
  v14 = v13;
  v15 = MEMORY[0x1E69E7CA0];
  if (v12 > 1)
  {
    if (v13)
    {
      [v13 setAccessibilityElementsHidden_];
    }

    v25 = OBJC_IVAR___TSCardContainerController_cardItemStack;
    v26 = v47;
    swift_beginAccess();
    (*(v7 + 16))(v9, v26 + v25, v6);
    v27 = sub_1D80590E0();
    result = sub_1D7E36AB8(v27);
    v29 = result;
    for (i = 0; ; ++i)
    {
      if (v29 == i)
      {

        goto LABEL_26;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1DA714420](i, v27);
        v31 = result;
      }

      else
      {
        if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v31 = *(v27 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1D818F154();

      if (LOBYTE(v49[0]) < 4u)
      {

        [*(v31 + 24) setAccessibilityElementsHidden_];

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    if (v13)
    {
      [v13 setAccessibilityElementsHidden_];
    }

    v45 = &v51 + 1;
    v16 = OBJC_IVAR___TSCardContainerController_cardItemStack;
    v17 = v47;
    swift_beginAccess();
    (*(v7 + 16))(v9, v17 + v16, v6);
    v18 = v46;
    sub_1D8058DE4(1);
    sub_1D7F52F90(v18, v4);
    v19 = *(v2 + 36);
    v20 = *v18;
    *(v4 + v19) = *v18;
    v21 = v4[1];
    while (v20 != v21)
    {
      v48 = v20;
      v49[0] = *v4;
      v49[1] = v21;
      sub_1D7F523A4(&qword_1EDBB1FD0);
      sub_1D8191754();
      v22 = sub_1D81918F4();
      v24 = *v23;

      v22(v49, 0);
      sub_1D81917C4();
      [*(v24 + 24) setAccessibilityElementsHidden_];

      v20 = *(v4 + v19);
    }

    sub_1D7F5302C(v4);
    sub_1D7F530BC(v46, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
    v32 = sub_1D7F4658C();
    v33 = v32;
    if (v32)
    {
      v34 = [v32 view];

      v15 = MEMORY[0x1E69E7CA0];
      if (v34)
      {
        v33 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v34 = 0;
      v15 = MEMORY[0x1E69E7CA0];
    }

    sub_1D7E70D34(&v51, &qword_1EDBBC780, v15 + 8, MEMORY[0x1E69E6720], sub_1D7E09CC4);
    v35 = v45;
    *v45 = 0;
    v35[1] = 0;
    *&v51 = v34;
    *(&v52 + 1) = v33;
LABEL_26:
    v36 = *MEMORY[0x1E69DD8E8];
    sub_1D7E7B91C(&v51, v49);
    v37 = v50;
    if (v50)
    {
      v38 = __swift_project_boxed_opaque_existential_1(v49, v50);
      v39 = *(v37 - 8);
      v40 = MEMORY[0x1EEE9AC00](v38);
      v42 = &v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42, v40);
      v43 = sub_1D8192614();
      (*(v39 + 8))(v42, v37);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }

    else
    {
      v43 = 0;
    }

    UIAccessibilityPostNotification(v36, v43);
    swift_unknownObjectRelease();
    return sub_1D7E70D34(&v51, &qword_1EDBBC780, v15 + 8, MEMORY[0x1E69E6720], sub_1D7E09CC4);
  }

  return result;
}

Swift::Void __swiftcall CardContainerController.popCards()()
{
  OUTLINED_FUNCTION_86();
  v16 = v2;
  v17 = v3;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v4, v5, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_10();
  v11 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v12 = *(v9 + 16);
  while (1)
  {
    v12(v1, v0 + v11, v7);
    sub_1D818F974();
    v13 = OUTLINED_FUNCTION_85();
    v14(v13);
    if (!v15[0])
    {
      break;
    }

    OUTLINED_FUNCTION_3_2(*(v15[0] + 16), sel_setAdditionalSafeAreaInsets_);
    LOBYTE(v15[0]) = 6;
    sub_1D8091BF0(v15);
  }

  v15[0] = 8;
  sub_1D7F48A54(v15, 0, 1);
  sub_1D7F4EBE8();
  OUTLINED_FUNCTION_87();
}

uint64_t sub_1D7F4F4A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v73 = a4;
  v72 = a3;
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v71[-v10];
  v88 = MEMORY[0x1E69D6AE8];
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71[-v16];
  v18 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  v19 = *(v9 + 16);
  v82 = a1;
  v78 = v18;
  v20 = a1 + v18;
  v21 = v17;
  v19(v11, v20, v8);
  v77 = v9 + 16;
  v76 = v19;
  v19(v17, v11, v8);
  v79 = v13;
  v22 = *(v13 + 36);
  v23 = sub_1D7F523A4(&qword_1EDBB1FD0);
  sub_1D8191724();
  v24 = *(v9 + 8);
  v80 = v11;
  v81 = v9 + 8;
  v75 = v24;
  v24(v11, v8);
  v87 = v8;
  v88 = a2;
  v85 = v17;
  v86 = v23;
  v84 = v22;
LABEL_2:
  while (1)
  {
    sub_1D81917B4();
    if (*(v21 + v22) == *v89)
    {
      break;
    }

    v25 = sub_1D81918F4();
    v27 = *v26;

    v25(v89, 0);
    sub_1D81917C4();
    if (v27 != a2)
    {
      v28 = *(v27 + 32);
      v29 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
      swift_beginAccess();
      v30 = *(v28 + v29);
      if (v30 >> 62)
      {
        if (sub_1D81920A4())
        {
LABEL_6:
          v31 = *(a2 + 32);
          v32 = *(v27 + 32);
          v33 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
          swift_beginAccess();
          v34 = *(v32 + v33);
          *v89 = MEMORY[0x1E69E7CC0];
          v35 = sub_1D7E36AB8(v34);
          result = sub_1D8190DB4();
          for (i = 0; ; ++i)
          {
            if (v35 == i)
            {

              v41 = *v89;
              swift_beginAccess();
              sub_1D7F0A6A4(v41);
              swift_endAccess();

              v8 = v87;
              a2 = v88;
              v21 = v85;
              v22 = v84;
              goto LABEL_2;
            }

            if ((v34 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x1DA714420](i, v34);
            }

            else
            {
              if (i >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_48;
              }
            }

            if (__OFADD__(i, 1))
            {
              break;
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong || (Strong, (v39 = swift_unknownObjectWeakLoadStrong()) != 0) && (v40 = v39, v39, v40 == v31))
            {
            }

            else
            {
              sub_1D8192274();
              sub_1D81922B4();
              sub_1D81922C4();
              result = sub_1D8192284();
            }
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return result;
        }
      }

      else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }
    }
  }

  sub_1D7F530BC(v21, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v42 = v80;
  v43 = v76;
  v76(v80, (v82 + v78), v8);
  v44 = v83;
  v43(v83, v42, v8);
  v45 = *(v79 + 36);
  sub_1D8191724();
  v75(v42, v8);
  while (1)
  {
    sub_1D81917B4();
    if (*(v44 + v45) == *v89)
    {
      break;
    }

    v46 = sub_1D81918F4();
    v48 = *v47;

    v46(v89, 0);
    sub_1D81917C4();
    if (v48 == a2)
    {
LABEL_32:
    }

    else
    {
      v49 = *(v48 + 32);
      sub_1D8090AD4();

      switch(*(*(v48 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 9))
      {
        case 1:
          v50 = *(v48 + 24);
          v51 = 2;
          goto LABEL_30;
        case 2:
          v50 = *(v48 + 24);
          v89[0] = 0;
          goto LABEL_31;
        case 3:
          v52 = *(a2 + 32);
          v53 = OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_coordinatingCoordinators;
          swift_beginAccess();
          v84 = v53;
          v85 = v52;
          v54 = *&v52[v53];
          v55 = sub_1D7E36AB8(v54);
          result = sub_1D8190DB4();
          v56 = 0;
          break;
        case 4:
          v50 = *(v48 + 24);
          v51 = 4;
          goto LABEL_30;
        case 5:
          goto LABEL_32;
        default:
          v50 = *(v48 + 24);
          v51 = 3;
LABEL_30:
          v89[0] = v51;
LABEL_31:
          sub_1D8090B4C(v50, v89, 0, 0, 0.0, 0.0);
          goto LABEL_32;
      }

      while (1)
      {
        if (v55 == v56)
        {

          v60 = *(v48 + 32);

          sub_1D818F154();

          v60[OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_initialCoordinatingPresentationState] = v89[0];

          v61 = *(v48 + 32);
          type metadata accessor for CardViewAnimationCoordinator.CoordinatingCoordinator();
          swift_allocObject();
          sub_1D808F888(v61);
          v63 = v84;
          v62 = v85;
          v64 = swift_beginAccess();
          MEMORY[0x1DA713500](v64);
          sub_1D7E2893C(*((*&v62[v63] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_1D8191404();
          swift_endAccess();

          goto LABEL_45;
        }

        if ((v54 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1DA714420](v56, v54);
        }

        else
        {
          if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }
        }

        if (__OFADD__(v56, 1))
        {
          goto LABEL_49;
        }

        v57 = swift_unknownObjectWeakLoadStrong();
        if (v57)
        {
          v58 = v57;
          v59 = *(v48 + 32);

          if (v58 == v59)
          {
            break;
          }
        }

        ++v56;
      }

LABEL_45:
      a2 = v88;
      v44 = v83;
    }
  }

  sub_1D7F530BC(v44, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  sub_1D8090AD4();
  v65 = *(a2 + 24);
  v66 = v72;
  v89[0] = v72;
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = swift_allocObject();
  v69 = v73;
  v70 = v74;
  *(v68 + 16) = v73;
  *(v68 + 24) = v70;
  *(v68 + 32) = v67;
  *(v68 + 40) = v66;
  sub_1D7E19F24(v69);

  sub_1D8090B4C(v65, v89, sub_1D7F530AC, v68, 0.0, 0.0);
}

void sub_1D7F4FE40(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a2)
  {
    a2(a1 & 1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1D7F4EBE8();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = a5;
    sub_1D7F48A54(&v10, 0, 1);
  }
}

Swift::Bool __swiftcall CardContainerController.accessibilityPerformEscape()()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  OUTLINED_FUNCTION_0_51();
  sub_1D7F5232C(0, v3, v4, MEMORY[0x1E69D6AD8]);
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_1();
  v10 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v11 = *(v8 + 16);
  v11(v1, v0 + v10, v6);
  sub_1D818F974();
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_54_1();
  v12(v13);
  if (v20)
  {

    sub_1D818F154();

    v14 = *(v20 + 24);
    switch(v20)
    {
      case 2:
      case 4:
      case 5:
      case 6:
      case 7:

        break;
      default:
        v19 = *(*(v20 + 32) + OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_behavior + 8);
        v11(v1, v2 + v10, v6);
        v15 = v14;
        v16 = sub_1D818F9B4();
        v17 = OUTLINED_FUNCTION_54_1();
        v12(v17);
        result = v16 - 1;
        if (__OFSUB__(v16, 1))
        {
          __break(1u);
          return result;
        }

        CardContainerController.setCard(at:to:animated:completion:)();
        if (v19)
        {
          UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], 0);
        }

        else
        {
          CardView.focusGrabHandleForAccessibility()();
        }

        break;
    }
  }

  OUTLINED_FUNCTION_100();
  return result;
}

uint64_t sub_1D7F50174(void *a1)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-1] - v6;
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-1] - v10;
  v12 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v12, v4);
  sub_1D7F523A4(&qword_1EDBB1FD8);
  sub_1D8191134();
  v13 = *(v9 + 44);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  while (1)
  {
    sub_1D81917B4();
    if (*&v11[v13] == v19[0])
    {
      break;
    }

    v14 = sub_1D81918F4();
    v16 = *v15;

    v14(v19, 0);
    sub_1D81917C4();
    if (sub_1D7F459D8(a1))
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  sub_1D7F530BC(v11, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  return v16;
}

uint64_t sub_1D7F50440(uint64_t a1)
{
  sub_1D7F5232C(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27[-1] - v6;
  v8 = MEMORY[0x1E69D6AE0];
  sub_1D7F52E60(0, &qword_1EDBAE338, &qword_1EDBB1FD8, MEMORY[0x1E69D6AE0], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27[-1] - v10;
  sub_1D7F52E60(0, &qword_1EDBAE340, &qword_1EDBB1FD8, v8, MEMORY[0x1E69E6E40]);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27[-1] - v14;
  v16 = OBJC_IVAR___TSCardContainerController_cardItemStack;
  swift_beginAccess();
  (*(v5 + 16))(v11, v1 + v16, v4);
  (*(v5 + 32))(v7, v11, v4);
  sub_1D7F523A4(&qword_1EDBB1FD8);
  sub_1D8191134();
  v17 = *(v13 + 44);
  sub_1D7F52E60(0, &unk_1EDBAE3C8, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E6CF0]);
  v19 = *(v18 + 36);
  sub_1D7F523A4(&qword_1EDBB1FD0);
  for (i = 0; ; ++i)
  {
    sub_1D81917B4();
    if (*&v15[v19] == v27[0])
    {
      *&v15[v17] = i;
      sub_1D7F530BC(v15, &qword_1EDBAE340, &qword_1EDBB1FD8, MEMORY[0x1E69D6AE0], MEMORY[0x1E69E6E40]);
      return 0;
    }

    v21 = sub_1D81918F4();
    v23 = *v22;

    v21(v27, 0);
    result = sub_1D81917C4();
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v23 + 32) == a1)
    {
      *&v15[v17] = i + 1;
      sub_1D7F530BC(v15, &qword_1EDBAE340, &qword_1EDBB1FD8, MEMORY[0x1E69D6AE0], MEMORY[0x1E69E6E40]);
      v25 = *(v23 + 16);

      return v25;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D7F50844(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7E09CC4(0, &qword_1EDBB2C10, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1D7F50950()
{
  result = qword_1EDBB0650;
  if (!qword_1EDBB0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0650);
  }

  return result;
}

uint64_t type metadata accessor for CardContainerController()
{
  result = qword_1EDBB0630;
  if (!qword_1EDBB0630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7F50A00()
{
  OUTLINED_FUNCTION_79();
  v1 = v0;
  if (*(v0 + 16) && (sub_1D7F52D5C(), OUTLINED_FUNCTION_14(), v2 = sub_1D8192164(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_1D81927E4();
      sub_1D8190DB4();
      sub_1D8190FF4();
      v10 = sub_1D8192824();
      v11 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *(v6 + 8 * v13);
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = (*(v3 + 48) + 16 * v12);
        v17 = *v16 == v9 && v16[1] == v8;
        if (v17 || (sub_1D8192634() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v12 + 1;
      }

      *(v6 + 8 * v13) = v15 | v14;
      v18 = (*(v3 + 48) + 16 * v12);
      *v18 = v9;
      v18[1] = v8;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v21;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_80_0();
  }
}

void sub_1D7F50B90()
{
  OUTLINED_FUNCTION_79();
  v6 = v5;
  if (*(v5 + 16) && (sub_1D7E25D58(0, v2, v3, v4, MEMORY[0x1E69E6A10]), OUTLINED_FUNCTION_14(), v7 = sub_1D8192164(), (v8 = *(v6 + 16)) != 0))
  {
    OUTLINED_FUNCTION_51_2();
    while (v1 < *(v6 + 16))
    {
      OUTLINED_FUNCTION_85_1();
      MEMORY[0x1DA714A00](v0);
      sub_1D8192824();
      while (1)
      {
        OUTLINED_FUNCTION_49_1();
        if (v10)
        {
          break;
        }

        if (*(*(v7 + 48) + v9) == v0)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_39_2();
      if (v12)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v11;
LABEL_11:
      if (v1 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_80_0();
  }
}

uint64_t sub_1D7F50CAC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7E76C38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D7F50D94(v6);
  return sub_1D8192284();
}

uint64_t sub_1D7F50D28(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8120A84();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1D7F50E74(v6);
  *a1 = v2;
  return result;
}

void sub_1D7F50D94(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1D81925A4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1D7FE73D4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1D7F51114(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1D7F50F68(0, v3, 1, a1);
  }
}

uint64_t sub_1D7F50E74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D81925A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1D81913D4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1D7F5185C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D7F510A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D7F50F68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    while (2)
    {
      v13 = v5;
      v14 = a3;
      v12 = v6;
      do
      {

        sub_1D818F154();

        sub_1D818F154();

        v7 = qword_1D81A6BF0[v16];
        v8 = qword_1D81A6BF0[v15];

        if (v7 >= v8)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v9 = *v5;
        *v5 = v5[1];
        v5[1] = v9;
        --v5;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v14 + 1;
      v5 = v13 + 1;
      v6 = v12 - 1;
      if (v14 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D7F510A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = qword_1D81A6BF0[v7];
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = *(v10 - 1);
        if (v8 >= qword_1D81A6BF0[v11])
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v10 = v11;
        *--v10 = v7;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D7F51114(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_88:
      v73 = (v8 + 16);
      v74 = *(v8 + 16);
      while (v74 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = v8;
        v76 = (v8 + 16 * v74);
        v77 = *v76;
        v8 = &v73[2 * v74];
        v78 = *(v8 + 8);
        sub_1D7F51E44((*a3 + 8 * *v76), (*a3 + 8 * *v8), (*a3 + 8 * v78), v95);
        if (v5)
        {
          break;
        }

        if (v78 < v77)
        {
          goto LABEL_112;
        }

        if (v74 - 2 >= *v73)
        {
          goto LABEL_113;
        }

        *v76 = v77;
        *(v76 + 1) = v78;
        v79 = *v73 - v74;
        if (*v73 < v74)
        {
          goto LABEL_114;
        }

        v74 = *v73 - 1;
        sub_1D8120818((v8 + 16), v79, v8);
        *v73 = v74;
        v8 = v75;
      }

LABEL_96:

      return;
    }

LABEL_121:
    v8 = sub_1D8120804(v8);
    goto LABEL_88;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v7 + 1 < v6)
    {
      v88 = v6;
      v82 = v5;
      v84 = v8;
      v95 = (v7 + 1);
      v85 = v7;
      v11 = *a3 + 8 * v7 + 16;
      v8 = &OBJC_IVAR____TtC5TeaUI28CardViewAnimationCoordinator_presentationState;

      sub_1D818F154();

      sub_1D818F154();

      v89 = qword_1D81A6BF0[v98];
      v91 = qword_1D81A6BF0[v99];

      v80 = 8 * v9;
      v12 = 8 * v9 + 8;
      do
      {
        v5 = v95;
        v13 = v12;
        if (++v95 >= v88)
        {
          break;
        }

        v8 = v91 < v89;

        sub_1D818F154();

        sub_1D818F154();

        v14 = qword_1D81A6BF0[v97];
        v15 = qword_1D81A6BF0[v96];

        v11 += 8;
        v12 = v13 + 8;
      }

      while (v91 < v89 != v14 >= v15);
      if (v91 >= v89)
      {
        v5 = v82;
        v8 = v84;
        v10 = v95;
        v9 = v85;
      }

      else
      {
        v10 = v95;
        v9 = v85;
        if (v95 < v85)
        {
          goto LABEL_118;
        }

        if (v85 >= v95)
        {
          v5 = v82;
          v8 = v84;
        }

        else
        {
          v16 = v85;
          v8 = v84;
          v17 = v80;
          do
          {
            if (v16 != v5)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v19 = *(v18 + v17);
              *(v18 + v17) = *(v18 + v13);
              *(v18 + v13) = v19;
            }

            ++v16;
            v13 -= 8;
            v17 += 8;
            v20 = v16 < v5--;
          }

          while (v20);
          v5 = v82;
        }
      }
    }

    v21 = a3[1];
    if (v10 < v21)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (&v10[-v9] < a4)
      {
        break;
      }
    }

LABEL_34:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v8 = v71;
    }

    v31 = *(v8 + 16);
    v32 = v31 + 1;
    if (v31 >= *(v8 + 24) >> 1)
    {
      sub_1D7EE4840();
      v8 = v72;
    }

    *(v8 + 16) = v32;
    v33 = (v8 + 32);
    v34 = (v8 + 32 + 16 * v31);
    *v34 = v9;
    *(v34 + 1) = v10;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v95 = v10;
    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        v36 = &v33[16 * v32 - 16];
        v37 = (v8 + 16 * v32);
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_54:
          if (v41)
          {
            goto LABEL_103;
          }

          v53 = *v37;
          v52 = *(v37 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_106;
          }

          v57 = *(v36 + 1);
          v58 = v57 - *v36;
          if (__OFSUB__(v57, *v36))
          {
            goto LABEL_109;
          }

          if (__OFADD__(v55, v58))
          {
            goto LABEL_111;
          }

          if (v55 + v58 >= v40)
          {
            if (v40 < v58)
            {
              v35 = v32 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        if (v32 < 2)
        {
          goto LABEL_105;
        }

        v60 = *v37;
        v59 = *(v37 + 1);
        v48 = __OFSUB__(v59, v60);
        v55 = v59 - v60;
        v56 = v48;
LABEL_69:
        if (v56)
        {
          goto LABEL_108;
        }

        v62 = *v36;
        v61 = *(v36 + 1);
        v48 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v63 < v55)
        {
          goto LABEL_83;
        }

LABEL_76:
        if (v35 - 1 >= v32)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v67 = v8;
        v68 = &v33[16 * v35 - 16];
        v8 = *v68;
        v69 = &v33[16 * v35];
        v70 = *(v69 + 1);
        sub_1D7F51E44((*a3 + 8 * *v68), (*a3 + 8 * *v69), (*a3 + 8 * v70), v93);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v70 < v8)
        {
          goto LABEL_98;
        }

        v5 = *(v67 + 2);
        if (v35 > v5)
        {
          goto LABEL_99;
        }

        *v68 = v8;
        v68[1] = v70;
        if (v35 >= v5)
        {
          goto LABEL_100;
        }

        v32 = v5 - 1;
        sub_1D8120818(v69 + 16, v5 - 1 - v35, &v33[16 * v35]);
        v8 = v67;
        *(v67 + 2) = v5 - 1;
        v20 = v5 > 2;
        v5 = 0;
        if (!v20)
        {
          goto LABEL_83;
        }
      }

      v42 = &v33[16 * v32];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_101;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_102;
      }

      v49 = *(v37 + 1);
      v50 = v49 - *v37;
      if (__OFSUB__(v49, *v37))
      {
        goto LABEL_104;
      }

      v48 = __OFADD__(v40, v50);
      v51 = v40 + v50;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v51 >= v45)
      {
        v65 = *v36;
        v64 = *(v36 + 1);
        v48 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v40 < v66)
        {
          v35 = v32 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }

LABEL_83:
    v7 = v95;
    v6 = a3[1];
    if (v95 >= v6)
    {
      goto LABEL_86;
    }
  }

  v22 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_119;
  }

  if (v22 >= v21)
  {
    v22 = a3[1];
  }

  if (v22 < v9)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v10 == v22)
  {
    goto LABEL_34;
  }

  v83 = v5;
  v23 = *a3;
  v24 = (*a3 + 8 * v10 - 8);
  v86 = v9;
  v25 = v9 - v10;
  v90 = v22;
LABEL_27:
  v95 = v10;
  v26 = v25;
  v92 = v24;
  while (1)
  {

    sub_1D818F154();

    sub_1D818F154();

    v27 = qword_1D81A6BF0[v101];
    v28 = qword_1D81A6BF0[v100];

    if (v27 >= v28)
    {
LABEL_32:
      v10 = v95 + 1;
      v24 = v92 + 1;
      --v25;
      if (v95 + 1 == v90)
      {
        v10 = v90;
        v5 = v83;
        v9 = v86;
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    if (!v23)
    {
      break;
    }

    v29 = *v24;
    *v24 = v24[1];
    v24[1] = v29;
    --v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void sub_1D7F5185C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = qword_1D81A6BF0[*(*a3 + v8)];
        v10 = *(*a3 + v8);
        v11 = qword_1D81A6BF0[*(*a3 + v6)];
        v12 = v6 + 2;
        if (v5 <= v6 + 2)
        {
          v8 = v6 + 2;
        }

        else
        {
          v8 = v5;
        }

        while (v12 < v5)
        {
          v13 = *(*a3 + v12);
          v14 = (v9 < v11) ^ (qword_1D81A6BF0[v13] >= qword_1D81A6BF0[v10]);
          ++v12;
          v10 = v13;
          if ((v14 & 1) == 0)
          {
            v8 = v12 - 1;
            break;
          }
        }

        if (v9 < v11)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            v15 = v8 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }
            }

            while (++v16 < v15--);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = qword_1D81A6BF0[v23];
              v25 = v22;
              v26 = v21;
              do
              {
                v27 = *(v26 - 1);
                if (v24 >= qword_1D81A6BF0[v27])
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v26 = v27;
                *--v26 = v23;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v7 = v70;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1D7EE4840();
        v7 = v71;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v74;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_55:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_70:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_84;
          }

LABEL_77:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1D7F52124((*a3 + *v65), (*a3 + *v67), (*a3 + v68), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7[2];
          if (v33 > v69)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v69)
          {
            goto LABEL_93;
          }

          v30 = v69 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v69 - 1 - v33));
          v7[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_84;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_55;
      }

LABEL_84:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1D7F51D18(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1D7F51D18(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D7F52124((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D7F51E44(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1D80E75B8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_1D818F154();

      sub_1D818F154();

      v12 = qword_1D81A6BF0[v29];
      v13 = qword_1D81A6BF0[v28];

      if (v12 >= v13)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 8;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 8;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v14;
    goto LABEL_13;
  }

  sub_1D80E75B8(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
  v27 = v4;
  v25 = v7;
LABEL_15:
  v16 = v6 - 8;
  v5 -= 8;
  while (v10 > v4 && v6 > v7)
  {
    v18 = v16;

    sub_1D818F154();

    sub_1D818F154();

    v19 = qword_1D81A6BF0[v31];
    v20 = qword_1D81A6BF0[v30];

    v21 = v5 + 8;
    if (v19 < v20)
    {
      v15 = v21 == v6;
      v6 = v18;
      v7 = v25;
      v4 = v27;
      if (!v15)
      {
        *v5 = *v18;
        v6 = v18;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      *v5 = *(v10 - 1);
    }

    v5 -= 8;
    v10 -= 8;
    v7 = v25;
    v4 = v27;
    v16 = v18;
  }

LABEL_28:
  v22 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v22])
  {
    memmove(v6, v4, 8 * v22);
  }

  return 1;
}

uint64_t sub_1D7F52124(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_1D80E5E04(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }

      v12 = *v4;
      if (qword_1D81A6BF0[*v6] < qword_1D81A6BF0[v12])
      {
        break;
      }

      v15 = v4 + 1;
      if (v7 < v4 || v7 >= v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      v4 = v15;
    }

    if (v7 >= v6 && v7 < v6 + 1)
    {
      ++v6;
      v15 = v4;
      goto LABEL_20;
    }

    LOBYTE(v12) = *v6++;
    v15 = v4;
LABEL_19:
    *v7 = v12;
    goto LABEL_20;
  }

  sub_1D80E5E04(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_22:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (qword_1D81A6BF0[v18] < qword_1D81A6BF0[v19])
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_43:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_1D7F522C8(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

void sub_1D7F5232C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7F523A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_51();
    sub_1D7F5232C(255, v3, v4, MEMORY[0x1E69D6AD8]);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7F52404(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7F52494()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1D7F524CC()
{
  sub_1D7F5232C(319, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CardContainerController.cardViewAnimationCoordinator(_:willTransitionTo:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x160))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
}

uint64_t dispatch thunk of CardContainerController.cardViewAnimationCoordinator(_:didTransitionTo:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
}

_BYTE *storeEnumTagSinglePayload for CardContainerController.Event(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F52D08()
{
  result = qword_1EDBB0648;
  if (!qword_1EDBB0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0648);
  }

  return result;
}

void sub_1D7F52D5C()
{
  if (!qword_1EDBB2EC0)
  {
    v0 = sub_1D8192174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2EC0);
    }
  }
}

void sub_1D7F52DC4()
{
  if (!qword_1EDBAE3A8)
  {
    sub_1D7F52E60(255, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
    sub_1D7F52F00();
    v0 = sub_1D8192344();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE3A8);
    }
  }
}

void sub_1D7F52E60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_0_51();
    sub_1D7F5232C(255, v8, v9, MEMORY[0x1E69D6AD8]);
    sub_1D7F523A4(a3);
    v10 = OUTLINED_FUNCTION_53();
    v11 = a5(v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1D7F52F00()
{
  result = qword_1EDBAE298;
  if (!qword_1EDBAE298)
  {
    sub_1D7F52E60(255, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAE298);
  }

  return result;
}

uint64_t sub_1D7F52F90(uint64_t a1, uint64_t a2)
{
  sub_1D7F52E60(0, &qword_1EDBAE290, &qword_1EDBB1FD0, MEMORY[0x1E69D6AE8], MEMORY[0x1E69E74D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F5302C(uint64_t a1)
{
  sub_1D7F52DC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7F530BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1D7F52E60(0, a2, a3, a4, a5);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(a1);
  return a1;
}

id sub_1D7F53140(void *a1)
{
  v1 = a1;
  v2 = UIApplication.key_window.getter();

  return v2;
}

id UIApplication.key_window.getter()
{
  if (qword_1EDBBC7A8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong keyWindow];

  return v2;
}

id static UIApplication.appIsInstalled(for:)()
{
  sub_1D7F2B76C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D818E644();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E624();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1D7F2B828(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() sharedApplication];
    v9 = sub_1D818E5C4();
    v7 = [v8 canOpenURL_];

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t BlueprintPipelineRunOptions.process.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x235uLL);
  memcpy(a1, (v1 + 16), 0x235uLL);
  return sub_1D7E513F4(__dst, v4);
}

uint64_t sub_1D7F53468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 565))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_1D7F534B8(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    v5 = a2 - 0x7FFFFFFF;
    bzero(a1, 0x235uLL);
    *a1 = v5;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 565) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 565) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = a2;
    }
  }
}

double sub_1D7F5353C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 552) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 564) = 0;
    *(a1 + 560) = 0;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 128) = (a2 - 1);
  }

  return result;
}

uint64_t BlueprintViewSupplementaryData.init(kind:indexPath:index:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for BlueprintViewSupplementaryData();
  v8 = *(v7 + 20);
  v9 = sub_1D818E994();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t MultiScrollViewDelegate.addDelegate<A>(_:)(void *a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) addObject_];
  v29 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_1D7F539C4(*(*(v5 + 48) + 8 * (v12 | (v11 << 6))), *(*(v5 + 56) + (v12 | (v11 << 6))), a1, &v29);
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v28 = v29;
  v27 = *(v29 + 16);
  if (!v27)
  {
  }

  v13 = 0;
  v26 = v29 + 32;
  while (v13 < *(v28 + 16))
  {
    v14 = *(v26 + 8 * v13);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    v16 = sub_1D7E3FE88();
    if (__OFADD__(v15[2], (v17 & 1) == 0))
    {
      goto LABEL_26;
    }

    v18 = v16;
    v19 = v17;
    sub_1D7F55514();
    if (sub_1D8192374())
    {
      v20 = sub_1D7E3FE88();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      *(v15[7] + v18) = 1;
    }

    else
    {
      v15[(v18 >> 6) + 8] |= 1 << v18;
      *(v15[6] + 8 * v18) = v14;
      *(v15[7] + v18) = 1;
      v22 = v15[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      v15[2] = v24;
    }

    ++v13;
    *(v2 + v4) = v15;
    swift_endAccess();
    if (v27 == v13)
    {
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

void sub_1D7F539C4(uint64_t a1, char a2, id a3, uint64_t *a4)
{
  if ((a2 & 1) == 0)
  {
    if ([a3 respondsToSelector_])
    {
      sub_1D7EE4338();
      v6 = *(*a4 + 16);
      sub_1D7EE4564();
      v7 = *a4;
      *(v7 + 16) = v6 + 1;
      *(v7 + 8 * v6 + 32) = a1;
    }
  }
}

uint64_t MultiScrollViewDelegate.removeDelegate<A>(_:)(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) removeObject_];
  v2 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
  OUTLINED_FUNCTION_12_15();
  *(v1 + v2) = MEMORY[0x1E69E7CC8];
}

uint64_t MultiScrollViewDelegate.replaceDelegate<A>(_:withDelegate:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates);
  [v4 removeObject_];
  [v4 addObject_];
  v5 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
  OUTLINED_FUNCTION_12_15();
  *(v2 + v5) = MEMORY[0x1E69E7CC8];
}

uint64_t MultiScrollViewDelegate.responds(to:)(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (*(v5 + 16) && (v6 = sub_1D7E3FE88(), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + v6);
    }

    else
    {
      swift_endAccess();
      v8 = sub_1D7F53C0C(1u, 0, v2, v3);
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v2 + v4);
      sub_1D7E3FCC4();
      *(v2 + v4) = v9;
    }

    swift_endAccess();
    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F53C0C(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a3 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (result)
  {
    v14 = result;
    sub_1D8191C94();

    sub_1D818E574();
    if (v20)
    {
      sub_1D7E895D8(&v19, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      v16 = [v15 respondsToSelector_];
      swift_unknownObjectRelease();
      (*(v9 + 8))(v12, v8);
      if (((v16 ^ a1) & 1) == 0)
      {
        a2 = v16;
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
    }

    return (a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F53DB0(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a3 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (result)
  {
    v14 = result;
    sub_1D8191C94();

    sub_1D818E574();
    if (v20)
    {
      sub_1D7E895D8(&v19, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      if ([v15 respondsToSelector_])
      {
        v16 = [v15 scrollViewShouldScrollToTop_];
        swift_unknownObjectRelease();
        (*(v9 + 8))(v12, v8);

        if (((v16 ^ a1) & 1) == 0)
        {
          a2 = v16;
        }

        return (a2 & 1);
      }

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v8);

    return (a2 & 1);
  }

  __break(1u);
  return result;
}

id MultiScrollViewDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiScrollViewDelegate.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache] = MEMORY[0x1E69E7CC8];
  v2 = OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates;
  *&v0[v2] = [objc_opt_self() hashTableWithOptions_];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MultiScrollViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7F54124(uint64_t a1, void *a2, SEL *a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E895D8(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 *a3];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F542B0(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E895D8(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 scrollViewWillBeginZooming:a2 withView:a3];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F54448(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v11)
  {
    v12 = v11;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      sub_1D7E895D8(&v16, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      if ([v13 respondsToSelector_])
      {
        [v13 scrollViewDidEndDragging:a2 willDecelerate:a3 & 1];
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F545DC(uint64_t a1, void *a2, void *a3, double a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v13)
  {
    v14 = v13;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v19)
      {
        break;
      }

      sub_1D7E895D8(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      if ([v15 respondsToSelector_])
      {
        [v15 scrollViewDidEndZooming:a2 withView:a3 atScale:a4];
      }

      swift_unknownObjectRelease();
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F54784(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1D818E584();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(a1 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (v15)
  {
    v16 = v15;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v21)
      {
        break;
      }

      sub_1D7E895D8(&v20, &v18);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      v17 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v18);
      if ([v17 respondsToSelector_])
      {
        [v17 scrollViewWillEndDragging:a2 withVelocity:a3 targetContentOffset:{a4, a5}];
      }

      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7F54930(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1D818E584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a2 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) allObjects];
  if (result)
  {
    v12 = result;
    sub_1D8191C94();

    sub_1D818E574();
    if (v19)
    {
      sub_1D7E895D8(&v18, &v16);
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      v13 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      if ([v13 respondsToSelector_])
      {
        v14 = [v13 viewForZoomingInScrollView_];
        swift_unknownObjectRelease();
        (*(v7 + 8))(v10, v6);
        if (v14)
        {

          return v14;
        }

LABEL_8:
        v15 = a1;

        return a1;
      }

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t MultiScrollViewDelegate.debugDescription.getter()
{
  sub_1D81921A4();

  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates) description];
  v2 = sub_1D8190F14();
  v4 = v3;

  MEMORY[0x1DA713260](v2, v4);

  return 0xD000000000000027;
}

void __swiftcall MultiScrollViewDelegate.viewForZooming(in:)(UIView_optional *__return_ptr retstr, UIScrollView *in)
{
  v3 = in;

  sub_1D7F54930(0, v2, v3);
}

Swift::Bool __swiftcall MultiScrollViewDelegate.scrollViewShouldScrollToTop(_:)(UIScrollView *a1)
{
  v2 = a1;

  return sub_1D7F53DB0(0, 1u, v1, v2);
}

Swift::Void __swiftcall MultiScrollViewDelegate.scrollViewWillBeginZooming(_:with:)(UIScrollView *_, UIView_optional *with)
{
  v4 = with;
  v5 = _;
  v6 = OUTLINED_FUNCTION_14();

  sub_1D7F542B0(v6, v7, with);
}

Swift::Void __swiftcall MultiScrollViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  v3 = _;
  v4 = OUTLINED_FUNCTION_14();

  sub_1D7F54448(v4, v5, willDecelerate);
}

void MultiScrollViewDelegate.scrollViewDidEndZooming(_:with:atScale:)(void *a1, void *a2, double a3)
{
  v6 = a2;
  v7 = a1;
  v8 = OUTLINED_FUNCTION_14();

  sub_1D7F545DC(v8, v9, a2, a3);
}

void MultiScrollViewDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1;
  v8 = OUTLINED_FUNCTION_14();

  sub_1D7F54784(v8, v9, a2, a3, a4);
}

void sub_1D7F55514()
{
  if (!qword_1EDBB2E90)
  {
    sub_1D7E40268();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2E90);
    }
  }
}

void sub_1D7F55578(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  sub_1D7E895D8(v8, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_7_22();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1D7F555BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  sub_1D818F824();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a4);
  OUTLINED_FUNCTION_7_22();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v11;
  }
}

void sub_1D7F55638(unint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  sub_1D8192364();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  sub_1D7E895D8(a3, (*(a4 + 56) + 32 * a1));
  OUTLINED_FUNCTION_7_22();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

void sub_1D7F5575C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  *(v5[6] + v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v10);
  }
}

void sub_1D7F557C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  OUTLINED_FUNCTION_0_52(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1D7E2BA20(a4, v12 + *(*(v14 - 8) + 72) * a1, a7);
  OUTLINED_FUNCTION_7_22();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }
}

void sub_1D7F55844(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v12);
  }
}

void sub_1D7F55880(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_3_37(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * v3) = v5;
  *(v4[7] + 8 * v3) = v6;
  v7 = v4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_15(v4, v9);
  }
}

void sub_1D7F558C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_1_42(a1, a2, a3, a4, a5);
  v7 = (v6 + 24 * v5);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  OUTLINED_FUNCTION_13_10(v5, v13, v9, v11, v12);
  if (v16)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_20(v14, v15);
  }
}

void sub_1D7F55904(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v6 = (v5[6] + 24 * v4);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v10 = (v5[7] + 16 * v4);
  *v10 = v11;
  v10[1] = v12;
  v13 = v5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v15);
  }
}

uint64_t sub_1D7F5594C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_3_37(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t FastScrollingComparison.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F55A5C()
{
  result = qword_1ECA0DFB0;
  if (!qword_1ECA0DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DFB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FastScrollingComparison(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t ImageCache.fetchImage(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1D7EA6B0C(v4, v1, v2, v3);
}

uint64_t sub_1D7F55BF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7F588D4;

  return ImageCacheType.fetchImage(for:expires:)(a1, a2, a3, a4);
}

uint64_t sub_1D7F55CAC(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 32) = a1;
  *(v3 + 16) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D7F55CD4, 0, 0);
}

uint64_t sub_1D7F55CD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v2;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  *v4 = v0;
  v4[1] = sub_1D7F55DDC;
  OUTLINED_FUNCTION_5_20();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D7F55DDC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_1D7F55EF0;
  }

  else
  {

    v6 = sub_1D7F55EE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D7F55EF0()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageCacheType.fetchImage(for:expires:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D7F55F78, 0, 0);
}

uint64_t sub_1D7F55F78()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  *v5 = v0;
  v5[1] = sub_1D7F56088;
  OUTLINED_FUNCTION_5_20();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D7F56088()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {
    v6 = sub_1D7F5619C;
  }

  else
  {

    v6 = sub_1D7F56194;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D7F5619C()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7F561FC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  sub_1D7F58718();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_project_boxed_opaque_existential_1(a3, v15);
  sub_1D7EA78F0(v17, a4, 0, sub_1D7F587A8, v14, a2, v15, v16);
}

uint64_t sub_1D7F5636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  sub_1D7F58718();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  (*(a6 + 16))(a3, a4, 0, sub_1D7F588D0, v16, v19, a6);
}

uint64_t sub_1D7F564E8(void *a1, id a2)
{
  if (a1)
  {
    sub_1D7F58718();
    v3 = a1;
    return sub_1D81914F4();
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1D7F58628();
      swift_allocError();
      *v6 = 0;
    }

    sub_1D7F58718();
    return sub_1D81914E4();
  }
}

id sub_1D7F565BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  sub_1D7E279E4(0xD00000000000001DLL, 0x80000001D81C9EE0, v0);
  [v0 setQualityOfService_];
  result = [v0 setMaxConcurrentOperationCount_];
  qword_1EDBBC1F0 = v0;
  return result;
}

uint64_t ImageCache.deinit()
{
  ImageCache.cancelAllRunningOperations()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  swift_unknownObjectRelease();

  return v0;
}

Swift::Void __swiftcall ImageCache.cancelAllRunningOperations()()
{
  sub_1D818EDB4();
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = sub_1D7E36AB8(v1);
  sub_1D8190DB4();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      swift_beginAccess();
      sub_1D7E1A888(0, &qword_1EDBB33B8, sub_1D7F58098, MEMORY[0x1E69E62F8]);
      sub_1D7E1CF48(&unk_1EDBBC438, sub_1D7F58098);
      sub_1D8191344();
      swift_endAccess();
      sub_1D818EDC4();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA714420](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v4 = sub_1D818F8D4();
    [v4 cancel];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t ImageCache.__deallocating_deinit()
{
  ImageCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t ImageCache.fetchImage(_:completion:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_7_23();

  return sub_1D7F58100(v1, v2, v3, v4, v5, v6);
}

Swift::Void __swiftcall ImageCache.cacheImageToDisk(cacheIdentifier:)(Swift::String cacheIdentifier)
{
  v2 = v1;
  object = cacheIdentifier._object;
  countAndFlagsBits = cacheIdentifier._countAndFlagsBits;
  if (qword_1EDBB1880 != -1)
  {
    swift_once();
  }

  sub_1D81919B4();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D819FAB0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D7E13BF4();
  *(v5 + 64) = v7;
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;
  sub_1D8190DB4();
  sub_1D818FD44();

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  v9 = MemoryImageCache.image(for:)(v8);
  if (v9)
  {
    v10 = v9;
    sub_1D81919B4();
    sub_1D818FD44();
    v11 = *(v2 + 96);
    v13 = sub_1D8190EE4();
    [v11 cache:v10 forKey:v13 immediately:1];
  }

  else
  {
    sub_1D81919C4();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D819FAB0;
    *(v12 + 56) = v6;
    *(v12 + 64) = v7;
    *(v12 + 32) = countAndFlagsBits;
    *(v12 + 40) = object;
    sub_1D8190DB4();
    sub_1D818FD44();
  }
}

uint64_t ImageCache.fetchImage(_:expires:interestToken:completion:)()
{
  OUTLINED_FUNCTION_8_3();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_4_26();

  return sub_1D7EA78F0(v1, v2, v3, v4, v5, v6, v7, v8);
}

char *sub_1D7F56CC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_8();
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1D7E0E768(a2, v13);
  v10 = swift_allocObject();
  sub_1D7E05450(v13, v10 + 16);
  *(v10 + 56) = a4;
  *(v10 + 64) = a5;
  *(v10 + 72) = v9;
  *(v10 + 80) = a3;
  sub_1D8190DB4();

  v11 = sub_1D7F56DBC(a2, a3, sub_1D7EBB608, v10);

  return v11;
}

char *sub_1D7F56DBC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1D7E0E768(a1, v20);
  sub_1D7E0E768(v5 + 16, v22);
  sub_1D7E0E768(v5 + 56, v21);
  v9 = *(v5 + 96);
  objc_allocWithZone(type metadata accessor for ImageCacheOperation());
  swift_unknownObjectRetain();
  v10 = sub_1D7F574B8(v20, a2, v22, v21, v9);
  v11 = &v10[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_imageCompletionBlock];
  v12 = *&v10[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_imageCompletionBlock];
  *v11 = a3;
  *(v11 + 1) = a4;

  sub_1D7E0E10C(v12);
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v20[4] = sub_1D7EBB50C;
  v20[5] = v14;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1D7E64940;
  v20[3] = &block_descriptor_60;
  v15 = _Block_copy(v20);

  v16 = v10;

  sub_1D7E19F24(sub_1D7EBB50C);

  [v16 setCompletionBlock_];
  _Block_release(v15);

  sub_1D818EDB4();
  sub_1D7F58098(0);
  swift_allocObject();
  v17 = v16;
  sub_1D818F8F4();
  v18 = swift_beginAccess();
  MEMORY[0x1DA713500](v18);
  sub_1D7E2893C(*((*(v5 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  swift_endAccess();
  sub_1D818EDC4();
  if (qword_1EDBBC1E8 != -1)
  {
    swift_once();
  }

  [qword_1EDBBC1F0 addOperation_];
  return v17;
}

uint64_t ImageCache.setImage(_:for:expires:)(void *a1, uint64_t a2, char a3)
{
  sub_1D7E0E768(a2, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  sub_1D7E05450(v9, v6 + 32);
  *(v6 + 72) = a3;

  v7 = a1;
  sub_1D818FD04();
}

uint64_t sub_1D7F57114(uint64_t a1, UIImage a2, void *a3, Swift::Bool a4)
{
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v9;
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  MemoryImageCache.cache(image:for:expires:)(a2, v11, a4);
}

uint64_t sub_1D7F571B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_7_23();

  return sub_1D7F58100(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1D7F57208(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7F572C4;

  return sub_1D7F55CAC(a1, a2);
}

uint64_t sub_1D7F572C4()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_9_12();
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t ImageCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

char *sub_1D7F574B8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1D818EE64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image] = 0;
  *&v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error] = 0;
  v16 = &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_imageCompletionBlock];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_creationTime;
  *&v6[v17] = CACurrentMediaTime();
  v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_canceled] = 0;
  sub_1D7E0E768(a1, &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request]);
  v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_expires] = a2;
  v49 = a3;
  sub_1D7E0E768(a3, &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_downloader]);
  v48 = a4;
  sub_1D7E0E768(a4, &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor]);
  *&v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_underlyingCache] = a5;
  v50 = 0;
  v51 = 0xE000000000000000;
  v47 = a5;
  swift_unknownObjectRetain();
  sub_1D81921A4();

  v50 = 0xD000000000000015;
  v51 = 0x80000001D81C9F00;
  sub_1D818EE54();
  v18 = sub_1D818EE44();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x1DA713260](v18, v20);

  MEMORY[0x1DA713260](62, 0xE100000000000000);
  v21 = v51;
  v22 = &v6[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription];
  *v22 = v50;
  v22[1] = v21;
  v23 = type metadata accessor for ImageCacheOperation();
  v55.receiver = v6;
  v55.super_class = v23;
  v24 = objc_msgSendSuper2(&v55, sel_init);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = *(v26 + 16);
  v28 = v24;
  v29 = v27(v25, v26);
  sub_1D7E279E4(v29, v30, v28);
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D819FAC0;
  v33 = *&v28[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription];
  v32 = *&v28[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8];
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D7E13BF4();
  *(v31 + 64) = v34;
  *(v31 + 32) = v33;
  *(v31 + 40) = v32;
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v37 = *(v35 + 8);
  sub_1D8190DB4();
  v38 = v37(v36, v35);
  sub_1D7F1E6C0(v38, &v50);

  if (!v51)
  {
    sub_1D7F25CC8(&v50);
    v44 = (v31 + 72);
    *(v31 + 96) = MEMORY[0x1E69E6158];
    *(v31 + 104) = v34;
    goto LABEL_5;
  }

  v39 = v53;
  v40 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v41 = (*(v40 + 32))(v39, v40);
  v43 = v42;
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v44 = (v31 + 72);
  *(v31 + 96) = MEMORY[0x1E69E6158];
  *(v31 + 104) = v34;
  if (!v43)
  {
LABEL_5:
    *v44 = 0x3E656E6F6E3CLL;
    v43 = 0xE600000000000000;
    goto LABEL_6;
  }

  *v44 = v41;
LABEL_6:
  *(v31 + 80) = v43;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v45 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v28;
}

id sub_1D7F5796C()
{
  v1 = v0;
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D819FAB0;
  v4 = *&v0[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription];
  v3 = *&v0[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D7E13BF4();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  sub_1D8190DB4();
  v5 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for ImageCacheOperation();
  return objc_msgSendSuper2(&v7, sel_cancel);
}

id sub_1D7F57B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageCacheOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F57B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, atomic_ullong *a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = sub_1D7F57D0C(result, a2, a3, a4);
    sub_1D7E1A888(0, &qword_1EDBBC428, type metadata accessor for ImageCacheInterestToken, MEMORY[0x1E69D6A90]);
    swift_allocObject();

    v16 = sub_1D818F8F4();
    swift_beginAccess();

    sub_1D7EE43A4();
    v17 = *(*(v15 + 32) + 16);
    sub_1D7EE45D0();
    v18 = *(v15 + 32);
    *(v18 + 16) = v17 + 1;
    v19 = (v18 + 24 * v17);
    v19[4] = a6;
    v19[5] = a7;
    v19[6] = v16;
    *(v15 + 32) = v18;
    swift_endAccess();
    v20 = swift_allocObject();
    swift_weakInit();

    sub_1D80B7C7C(a8, v20);
  }

  return result;
}

uint64_t sub_1D7F57D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  v8 = sub_1D7E886A4(a2, a3, *(a1 + 24));
  if (v8)
  {
    v9 = v8;
    result = swift_endAccess();
    v11 = v9[3];
    do
    {
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      v12 = v11;
      atomic_compare_exchange_strong_explicit(v9 + 3, &v12, v11 + 1, memory_order_relaxed, memory_order_relaxed);
      v13 = v12 == v11;
      v11 = v12;
    }

    while (!v13);
    if (v12)
    {
      return v9;
    }

    swift_beginAccess();
    sub_1D7EBBF70();
    swift_endAccess();
  }

  else
  {
    v14 = swift_endAccess();
  }

  v15 = a4(v14);
  sub_1D7E1A888(0, qword_1EDBB8998, sub_1D7E1A8EC, type metadata accessor for ImageCacheFetchDeduper.Request);
  v9 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  v9[3] = 1;
  v9[4] = v16;
  v9[2] = v15;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 24);
  sub_1D7EF6090();
  *(a1 + 24) = v17;
  swift_endAccess();
  return v9;
}

void sub_1D7F57ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_120();
  v46 = v21;
  v47 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v45 = v31;
  OUTLINED_FUNCTION_2();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_2();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v43 = v42 - v41;
  v44 = swift_allocObject();
  (*(v39 + 16))(v43, v30, v24);
  (*(v33 + 16))(v37, v28, v26);
  sub_1D7E1C8D8(v45, v43, v37, v44, v46, v26, v24, v47, a21);
  (*(v33 + 8))(v28, v26);
  (*(v39 + 8))(v30, v24);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F58100(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1D7EA78F0(v14, 1, 0, a2, a3, a4, a5, a6);
  return (*(v11 + 8))(v14, a5);
}

unint64_t sub_1D7F58228()
{
  result = qword_1EDBBB0D8[0];
  if (!qword_1EDBBB0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBBB0D8);
  }

  return result;
}

uint64_t dispatch thunk of ImageCacheType.fetchImage(for:expires:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7F583D4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D7F583D4()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_9_12();
  v3 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

_BYTE *storeEnumTagSinglePayload for ImageCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F58628()
{
  result = qword_1EDBBB0D0;
  if (!qword_1EDBBB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBB0D0);
  }

  return result;
}

uint64_t sub_1D7F5867C(uint64_t a1)
{
  sub_1D7EBB4A4(0, &qword_1EDBB0B98, &qword_1EDBB9400, &protocol descriptor for AssetDataProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F58718()
{
  if (!qword_1ECA0E010)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB2F60);
    sub_1D7E0631C(255, &qword_1EDBB2BC0);
    v0 = sub_1D8191504();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0E010);
    }
  }
}

uint64_t objectdestroy_29Tm()
{
  sub_1D7F58718();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D7F5884C(void *a1, void *a2)
{
  sub_1D7F58718();

  return sub_1D7F564E8(a1, a2);
}

uint64_t BlueprintInfiniteScrollBuilder.__allocating_init(infiniteScrollProvider:trigger:idleTrigger:)(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  BlueprintInfiniteScrollBuilder.init(infiniteScrollProvider:trigger:idleTrigger:)(a1, a2, a3);
  return v6;
}

uint64_t BlueprintInfiniteScrollBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1D7EB8B0C(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t BlueprintInfiniteScrollBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1D7EB8B0C(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

void BlueprintInfiniteScrollBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_70();
  v196 = v30;
  v33 = v32;
  v35 = v34;
  v212 = v36;
  v208 = v37;
  v204 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_9();
  v214 = v38;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v40);
  v203 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v205 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_0(v44 - v43);
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v200 = v45;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v47);
  v198 = v48;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v207 = v49;
  v211 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v206 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23();
  v210 = v52;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v53);
  v209 = &v165 - v54;
  OUTLINED_FUNCTION_66_3();
  v55 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_21_8();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_48_3();
  v57 = sub_1D81923F4();
  OUTLINED_FUNCTION_25_6(v57, &v204);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v59);
  v173 = WitnessTable;
  v213 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v199 = v60;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_94();
  v215 = v62;
  v216 = v35;
  v174 = v35;
  v217 = v33;
  v218 = a29;
  v181 = a29;
  v195 = a30;
  v219 = a30;
  v170 = type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  v188 = v63;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v65);
  v187 = *(v55 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v67);
  v185 = v55;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v179 = v68;
  v178 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v202 = v69;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_23();
  v177 = v71;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_14_1(&v165 - v73);
  OUTLINED_FUNCTION_66_3();
  v74 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_18_10();
  v75 = swift_getWitnessTable();
  OUTLINED_FUNCTION_48_3();
  v76 = sub_1D81923F4();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_48_3();
  v201 = v75;
  v180 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v165 = v78;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v80);
  v81 = type metadata accessor for BlueprintInfiniteScroll();
  v166 = swift_allocBox();
  v83 = v82;
  v84 = v212;
  LOBYTE(v75) = *(v212 + 565);
  OUTLINED_FUNCTION_58_2();
  v86 = *(v85 + 80);
  v87 = *(v85 + 88);
  v191 = v81[5];
  sub_1D818E8A4();
  v190 = v81[6];
  *&v83[v190] = MEMORY[0x1E69E7CC0];
  v189 = v81[7];
  *&v83[v189] = MEMORY[0x1E69E7CD0];
  *v83 = v75;
  v88 = v81[8];
  v192 = v83;
  v89 = &v83[v88];
  *v89 = v86;
  v89[8] = v87;
  v90 = *(v84 + 1);
  v186 = v76;
  if (v90)
  {
    if (v90 == 1)
    {
      v91 = (v212 + 64);
    }

    else
    {
      v91 = (v212 + 96);
    }
  }

  else
  {
    v91 = (v212 + 16);
  }

  v92 = v195;
  v93 = v194;
  v94 = v207;
  v95 = v179;
  v96 = v214;
  v97 = v206;
  v98 = *v91;
  MEMORY[0x1DA7133A0](v74, v201);
  sub_1D81923C4();
  v175 = v202 + 32;
  v172 = (v187 + 32);
  v171 = v181 + 8;
  v99 = (v97 + 4);
  v206 = (v200 + 32);
  v202 = v96 + 8;
  v201 = v205 + 8;
  v200 += 8;
  v169 = v199 + 8;
  v168 = v188 + 1;
  v167 = v187 + 8;
  v205 = v92 + 8;
  v199 = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4C14000000000000;
  v100 = 0.0;
  v187 = v33;
  v101 = v193;
  v188 = v99;
LABEL_7:
  v102 = v177;
  sub_1D81923D4();
  OUTLINED_FUNCTION_22();
  v103 = v176;
  v104(v176, v102, v178);
  if (__swift_getEnumTagSinglePayload(v103, 1, v95) == 1)
  {
    (*(v165 + 8))(v182, v180);
    v162 = v196;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v163 = swift_allocObject();
    v164 = v166;
    *(v163 + 16) = v162;
    *(v163 + 24) = v164;
    OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_72();
    return;
  }

  v214 = *v103;
  (*v172)(v184, v103 + *(v95 + 48), v185);
  v105 = v174;
  v216 = v174;
  v217 = v33;
  v106 = v181;
  v218 = v181;
  v219 = v92;
  v208 = type metadata accessor for BlueprintLayout();
  BlueprintLayout.subscript.getter(v214, v208);
  v107 = *(v106 + 8);
  v108 = v105;
  v109 = v198;
  v110 = v106;
  v111 = v197;
  v100 = v100 + v107(*&v108, v110);
  MEMORY[0x1DA7133A0](v185, v173);
  sub_1D81923C4();
  while (1)
  {
    v112 = v210;
    sub_1D81923D4();
    v113 = v209;
    (*v99)(v209, v112, v211);
    if (__swift_getEnumTagSinglePayload(v113, 1, v94) == 1)
    {
      OUTLINED_FUNCTION_22();
      v159(v215, v213);
      OUTLINED_FUNCTION_22();
      v160(v183, v170);
      OUTLINED_FUNCTION_22();
      v161(v184, v185);
      v95 = v179;
      goto LABEL_7;
    }

    v114 = v113;
    v115 = *v113;
    (*v206)(v111, &v114[*(v94 + 48)], COERCE_DOUBLE(*&v109));
    MEMORY[0x1DA710B60](v115, v214);
    BlueprintLayout.subscript.getter(v101, v208);
    if ((BlueprintItem.isExpandable.getter() & 1) == 0)
    {
      OUTLINED_FUNCTION_40_3();
      v137 = (*v136)(v33, v92);
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_58_2();
    v117 = *(v116 + 56);
    v118 = *(v116 + 72);
    if (!v118)
    {
      v109 = OUTLINED_FUNCTION_68_3(v117);
      v111 = v123 == v124;
      v138 = OUTLINED_FUNCTION_11_15();
      (v94)(v138);
      BlueprintItem.identifier.getter();
      OUTLINED_FUNCTION_3_38();
      if (v31 <= -9.22337204e18)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_46_4();
      if (!v123)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_2_42();
      if (v140)
      {
        goto LABEL_62;
      }

      if (v139 <= -9.22337204e18)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_36_5();
      if (!v123)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_45_3();
      if (v123 != v124)
      {
        goto LABEL_70;
      }

      v92 = v141;
      v93 = v142;
      v216 = v109;
      v217 = v111;
      OUTLINED_FUNCTION_0_53();
      sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v143);
      v101 = v144;
      sub_1D7EB88FC();
      sub_1D8190DB4();
      OUTLINED_FUNCTION_27_6();
      sub_1D818E834();
      sub_1D7EB8AA0();
      OUTLINED_FUNCTION_73_2();
      OUTLINED_FUNCTION_15_11();
      OUTLINED_FUNCTION_27_6();
      sub_1D7E91548(v145, v92, v93);

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_53_2();
      v99 = v188;
      goto LABEL_51;
    }

    if (v118 == 1)
    {
      OUTLINED_FUNCTION_58_2();
      v120 = *(v119 + 64);

      v122 = v117(v121);
      v109 = OUTLINED_FUNCTION_68_3(v122);
      v111 = v123 == v124;
      v125 = OUTLINED_FUNCTION_11_15();
      (v94)(v125);
      OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_3_38();
      if (v31 <= -9.22337204e18)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_46_4();
      if (!v123)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_42();
      if (v127)
      {
        goto LABEL_61;
      }

      if (v126 <= -9.22337204e18)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_36_5();
      if (!v123)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_45_3();
      if (v123 != v124)
      {
        goto LABEL_72;
      }

      v93 = v128;
      v92 = v129;
      v216 = v109;
      v217 = v111;
      OUTLINED_FUNCTION_0_53();
      sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v130);
      sub_1D7EB88FC();
      v186 = v117;
      sub_1D8190DB4();
      v131 = v192;
      sub_1D818E834();
      v132 = v190;
      sub_1D7EB8AA0();
      v133 = *(*&v131[v132] + 16);
      sub_1D7EB8AF4();
      v134 = *&v131[v132];
      *(v134 + 16) = v133 + 1;
      v135 = v134 + 48 * v133;
      v33 = v187;
      *(v135 + 32) = v93;
      *(v135 + 40) = v92;
      *(v135 + 48) = 0;
      *(v135 + 56) = v100;
      *(v135 + 64) = v109;
      *(v135 + 72) = v111;
      *&v131[v132] = v134;
      v99 = v188;
      sub_1D7E91548(&v216, v93, v92);
      sub_1D7EB8B0C(v186, v120, 1);

      OUTLINED_FUNCTION_31_5();
      v101 = v193;
      goto LABEL_50;
    }

    v146 = OUTLINED_FUNCTION_11_15();
    v147 = v100 - (v98 - (v94)(v146));
    v31 = v147 < 0.0 ? 0.0 : v147;
    v109 = v147;
    v111 = v147 >= 0.0;
    (v94)(v33, v92);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_3_38();
    if (v31 <= -9.22337204e18)
    {
      break;
    }

    OUTLINED_FUNCTION_46_4();
    if (!v123)
    {
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_2_42();
    if (v149)
    {
      goto LABEL_63;
    }

    if (v148 <= -9.22337204e18)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_36_5();
    if (!v123)
    {
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_45_3();
    if (v123 != v124)
    {
      goto LABEL_71;
    }

    v92 = v150;
    v93 = v151;
    v216 = v109;
    v217 = v111;
    OUTLINED_FUNCTION_0_53();
    sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v152);
    v101 = v153;
    sub_1D7EB88FC();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_27_6();
    v33 = v187;
    sub_1D818E834();
    sub_1D7EB8AA0();
    OUTLINED_FUNCTION_73_2();
    OUTLINED_FUNCTION_15_11();
    v99 = v188;
    OUTLINED_FUNCTION_27_6();
    sub_1D7E91548(v154, v92, v93);

    OUTLINED_FUNCTION_31_5();
LABEL_50:
    OUTLINED_FUNCTION_53_2();
LABEL_51:
    v137 = (v94)(v33, v92);
LABEL_52:
    v155 = v137;
    OUTLINED_FUNCTION_22();
    v156(v93, v204);
    OUTLINED_FUNCTION_22();
    v157(v101, v203);
    OUTLINED_FUNCTION_22();
    v158(v111, *&v109);
    v100 = v100 + v155;
    v94 = v207;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
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
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI30BlueprintInfiniteScrollBuilderC7TriggerO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

BOOL sub_1D7F59B18(double *a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D81927D4();
  OUTLINED_FUNCTION_34_4();
  while (1)
  {
    v11 = v7 & v9;
    v12 = (v10 << (v7 & v9)) & *(v8 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = *(*(v6 + 48) + 8 * v11);
    if (v13 == a2)
    {
      goto LABEL_6;
    }

    v7 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  sub_1D7F5B95C(v11, isUniquelyReferenced_nonNull_native, a2);
  *v3 = v16;
  v13 = a2;
LABEL_6:
  result = v12 == 0;
  *a1 = v13;
  return result;
}

BOOL sub_1D7F59BF8(uint64_t *a1, uint64_t a2)
{
  v6 = *v2;
  sub_1D81927D4();
  OUTLINED_FUNCTION_34_4();
  while (1)
  {
    OUTLINED_FUNCTION_49_2();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_28_5();
  v11 = sub_1D7F5BA74(a2, v3, v10);
  OUTLINED_FUNCTION_56_3(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1D7F59C9C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1D8190DB4();
    OUTLINED_FUNCTION_159();
    v8 = sub_1D81920B4();

    if (v8)
    {

      type metadata accessor for BlueprintInfiniteScrollRequest();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = sub_1D81920A4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1D7F5A534(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1D7F5AB98();
    }

    sub_1D7F5B798(v17, v16);

    *v3 = v16;
  }

  else
  {
    sub_1D81927E4();
    sub_1D8190FF4();
    sub_1D8192824();
    OUTLINED_FUNCTION_59_3();
    v12 = ~v11;
    while (1)
    {
      v13 = v10 & v12;
      if (((*(v6 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
      {
        break;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = *(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24);
      if (v15 || (sub_1D8192634() & 1) != 0)
      {

        *a1 = *(*(v6 + 48) + 8 * v13);

        return 0;
      }

      v10 = v13 + 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;

    sub_1D7F5BB78(v19, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
  }

  *a1 = a2;
  return 1;
}

BOOL sub_1D7F59EA4(_BYTE *a1, uint64_t a2)
{
  v6 = *v2;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a2);
  sub_1D8192824();
  OUTLINED_FUNCTION_34_4();
  while (1)
  {
    OUTLINED_FUNCTION_49_2();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_28_5();
  v11 = sub_1D7F5BCD8(a2, v3, v10);
  OUTLINED_FUNCTION_56_3(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1D7F59F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v26 = v2;
  v11 = *v2;
  OUTLINED_FUNCTION_19_9();
  sub_1D7F5DEF4(v12, v13);
  v30 = a2;
  sub_1D8190E54();
  v28 = v11;
  v29 = v11 + 56;
  OUTLINED_FUNCTION_59_3();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    v18 = (1 << (v14 & v16)) & *(v29 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v30, v4);
      v31 = *v26;
      sub_1D7F5BE10(v10, v17, isUniquelyReferenced_nonNull_native);
      *v26 = v31;
      (*(v6 + 32))(a1, v30, v4);
      return v18 == 0;
    }

    v19 = *(v6 + 72) * v17;
    v20 = *(v6 + 16);
    v20(v10, *(v28 + 48) + v19, v4);
    OUTLINED_FUNCTION_19_9();
    sub_1D7F5DEF4(&qword_1EDBBC6B0, v21);
    v22 = sub_1D8190ED4();
    v23 = *(v6 + 8);
    v23(v10, v4);
    if (v22)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v23(v30, v4);
  v20(a1, *(v28 + 48) + v19, v4);
  return v18 == 0;
}

uint64_t sub_1D7F5A1F8(double *a1, double *a2)
{
  v5 = *v2;
  sub_1D81927E4();
  sub_1D811B984();
  v6 = sub_1D8192824();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (*(v5 + 48) + 48 * v8);
      v11 = v10[1];
      if (*v10 == *a2 && v11 == a2[1])
      {
        v13 = v10[2];
        if (v13 == a2[2])
        {
          v14 = v10[3];
          v15 = v10[4];
          v16 = v10[5];
          v17 = v14 == a2[3] && v15 == a2[4];
          if (v17 && v16 == a2[5])
          {
            break;
          }
        }
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    result = 0;
    *a1 = *v10;
    a1[1] = v11;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v15;
    a1[5] = v16;
  }

  else
  {
LABEL_17:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_28_5();
    v20 = sub_1D7F5C09C(a2, v8, v19);
    OUTLINED_FUNCTION_56_3(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31);
    v28 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v28;
    *(a1 + 2) = *(a2 + 2);
    return 1;
  }

  return result;
}

uint64_t sub_1D7F5A338(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = *v4;
  sub_1D81927E4();
  if ((a4 & 0x80) == 0)
  {
    MEMORY[0x1DA714A00](0);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }

LABEL_10:
    MEMORY[0x1DA714A20](v10);
    goto LABEL_11;
  }

  MEMORY[0x1DA714A00](1);
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](a2);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_10;
  }

  MEMORY[0x1DA714A00]((a2 | a3) != 0);
LABEL_11:
  v11 = sub_1D8192824();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_1D7F5C240(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    result = 1;
    goto LABEL_35;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(v9 + 48) + 24 * v13;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    if ((v18 & 0x80000000) == 0)
    {
      break;
    }

    if ((a4 & 0x80) != 0)
    {
      if (v18)
      {
        if (*&v17 | *&v16)
        {
          if ((a4 & ((a2 | a3) != 0)) != 0)
          {
            goto LABEL_32;
          }
        }

        else if ((a4 & ((a2 | a3) == 0)) != 0)
        {
          goto LABEL_32;
        }
      }

      else if ((a4 & 1) == 0 && *&v17 == a2 && v16 == *&a3)
      {
        result = 0;
        goto LABEL_33;
      }
    }

LABEL_18:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if ((a4 & 0x80) != 0 || v17 != *&a2)
  {
    goto LABEL_18;
  }

LABEL_32:
  result = 0;
  *&a2 = v17;
LABEL_33:
  *&a3 = v16;
  a4 = v18;
LABEL_35:
  *a1 = *&a2;
  *(a1 + 8) = *&a3;
  *(a1 + 16) = a4;
  return result;
}

uint64_t sub_1D7F5A534(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D7F5DFD0();
    v2 = sub_1D8192154();
    v14 = v2;
    sub_1D8192064();
    while (1)
    {
      if (!sub_1D81920D4())
      {

        return v2;
      }

      type metadata accessor for BlueprintInfiniteScrollRequest();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D7F5AB98();
      }

      v2 = v14;
      sub_1D81927E4();
      sub_1D8190FF4();
      result = sub_1D8192824();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D7F5A700()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7EAF54C(0, &qword_1ECA0E030, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  result = sub_1D8192144();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1D7E2CB98(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1D81927D4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D7F5A954()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7EAF54C(0, &qword_1EDBB2EB8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  result = sub_1D8192144();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1D7E2CB98(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1D81927D4();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D7F5AB98()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5DFD0();
  result = sub_1D8192144();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1D7E2CB98(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1D81927E4();
    sub_1D8190FF4();
    result = sub_1D8192824();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D7F5ADD8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1EDBAE3F0, sub_1D7F14D74);
  result = sub_1D8192144();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1D7E2CB98(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_1D81927E4();
    MEMORY[0x1DA714A00](v15);
    result = sub_1D8192824();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D7F5B03C()
{
  v1 = v0;
  v35 = sub_1D818E994();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1D7F5DF3C();
  result = sub_1D8192144();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1D7E2CB98(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_1D7F5DEF4(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
    result = sub_1D8190E54();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D7F5B388()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1ECA0E020, sub_1D7F5DEA0);
  result = sub_1D8192144();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

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
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_1D7E2CB98(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 48 * (v12 | (v5 << 6)));
    v26 = *v15;
    v27 = v15[1];
    v28 = v15[2];
    sub_1D81927E4();
    sub_1D811B984();
    result = sub_1D8192824();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = (*(v4 + 48) + 48 * v19);
    *v24 = v26;
    v24[1] = v27;
    v24[2] = v28;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1D7F5B610()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7F5E064(0, &qword_1ECA0E018, sub_1D7F14CC8);
  result = sub_1D8192144();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1D7F5B83C(*v14, *(v14 + 8), *(v14 + 16), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v2 + 48) + 24 * (v11 | (v5 << 6));
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v2 + 32);
    if (v15 >= 64)
    {
      sub_1D7E2CB98(0, (v15 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v15;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D7F5B798(uint64_t a1, uint64_t a2)
{
  sub_1D81927E4();
  sub_1D8190FF4();
  sub_1D8192824();
  result = sub_1D8192044();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D7F5B83C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1D81927E4();
  if ((a3 & 0x80) == 0)
  {
    MEMORY[0x1DA714A00](0);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

LABEL_10:
    MEMORY[0x1DA714A20](v8);
    goto LABEL_11;
  }

  MEMORY[0x1DA714A00](1);
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1DA714A00](2);
    MEMORY[0x1DA714A00](a1);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  MEMORY[0x1DA714A00]((a1 | a2) != 0);
LABEL_11:
  sub_1D8192824();
  result = sub_1D8192044();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v10 = *(a4 + 48) + 24 * result;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

uint64_t sub_1D7F5B95C(uint64_t result, char a2, double a3)
{
  v4 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1D7F5A700();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1D7F5CF70();
LABEL_10:
      v12 = *v3;
      result = sub_1D81927D4();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v4 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * v4) == a3)
        {
          goto LABEL_15;
        }

        result = v4 + 1;
      }
    }

    result = sub_1D7F5C57C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (v4 >> 6) + 56) |= 1 << v4;
  *(*(v8 + 48) + 8 * v4) = a3;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1D8192704();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}