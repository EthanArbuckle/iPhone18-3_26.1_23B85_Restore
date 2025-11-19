uint64_t sub_1BD9AAC78(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v19[0] = a3;
  v19[1] = a4;
  v10 = a5 & 1;
  v20 = a5 & 1;
  sub_1BD509500(a6, &v21);
  sub_1BD9AC8D4(a3, a4, v10);
  if ([a1 state] < 3)
  {
    if (!a2)
    {
      sub_1BD0DE19C(v19, &v15, &qword_1EBD5A8E8);
      v12 = v15;
      v13 = v16;
      v14 = v17;
      sub_1BD9AA4F4(v15, v16, v17, v18);
      sub_1BD20DE9C(v12, v13, v14);
      sub_1BD0DE53C(v19, &qword_1EBD5A8E8);
      return sub_1BD9AC7A0(v18);
    }

    if (a2 != 1)
    {
      sub_1BD9AA200();
    }
  }

  return sub_1BD0DE53C(v19, &qword_1EBD5A8E8);
}

uint64_t sub_1BD9AADAC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

LABEL_16:
    v18 = 0;
    return v18 & 1;
  }

  v5 = v4;
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {

LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v7 = v6;
  if (([v5 gestureCollector:v3 recognizerShouldBegin:a1] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v8 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v9 = *&v3[v8];
  if (!*(v9 + 16) || (v10 = sub_1BD149084(v7), (v11 & 1) == 0))
  {
    memset(v48, 0, sizeof(v48));
    sub_1BD0DE19C(v48, &v42, &qword_1EBD5A8E0);
    if (v46)
    {
      sub_1BD0DE204(&v42, v47, &qword_1EBD5A8E8);
      sub_1BD0DE19C(v47, &v42, &qword_1EBD5A8E8);
      v20 = v42;
      v21 = v43;
      v22 = v44;
      sub_1BE048C84();
      sub_1BD20DE9C(v20, v21, v22);
      sub_1BD1B6150(&v45, v38);
      v23 = v39;
      if (v39 == a1)
      {
        v24 = 2;
      }

      else
      {
        v23 = v40;
        if (v40 == a1)
        {
          v24 = 0;
        }

        else
        {
          v23 = v41;
          if (v41 != a1)
          {
            goto LABEL_31;
          }

          v24 = 1;
        }
      }

      v25 = v23;
      sub_1BD0DE19C(v47, &v42, &qword_1EBD5A8E8);
      v27 = v42;
      v26 = v43;
      v28 = v44;
      v18 = sub_1BD9AA82C(a1, v24, v42, v43, v44, &v45);
      swift_unknownObjectRelease();
      sub_1BD20DE9C(v27, v26, v28);
      sub_1BD585394(a1, v24);

      swift_unknownObjectRelease();
      v29 = v38;
LABEL_30:
      sub_1BD9AC7A0(v29);
      sub_1BD0DE53C(v47, &qword_1EBD5A8E8);
      sub_1BD0DE53C(v48, &qword_1EBD5A8E0);
      sub_1BD9AC7A0(&v45);
      return v18 & 1;
    }

    goto LABEL_23;
  }

  v12 = *(v9 + 36);
  *&v48[0] = v10;
  *(&v48[0] + 1) = v12;
  LOBYTE(v48[1]) = 0;
  sub_1BD9AA474(v38, v10, v12, 0, v9);
  sub_1BD1B6150(v38, &v48[1] + 8);
  sub_1BD0DE19C(v48, &v42, &qword_1EBD5A8E0);
  if (!v46)
  {
LABEL_23:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BD0DE53C(v48, &qword_1EBD5A8E0);
    sub_1BD0DE53C(&v42, &qword_1EBD5A8E0);
    goto LABEL_16;
  }

  sub_1BD0DE204(&v42, v47, &qword_1EBD5A8E8);
  sub_1BD0DE19C(v47, &v42, &qword_1EBD5A8E8);
  v13 = v42;
  v14 = v43;
  v15 = v44;
  sub_1BE048C84();
  sub_1BD20DE9C(v13, v14, v15);
  sub_1BD1B6150(&v45, v34);
  v16 = v35;
  if (v35 == a1)
  {
    v17 = 2;
    goto LABEL_29;
  }

  v16 = v36;
  if (v36 == a1)
  {
    v17 = 0;
    goto LABEL_29;
  }

  v16 = v37;
  if (v37 == a1)
  {
    v17 = 1;
LABEL_29:
    v30 = v16;
    sub_1BD0DE19C(v47, &v42, &qword_1EBD5A8E8);
    v32 = v42;
    v31 = v43;
    v33 = v44;
    v18 = sub_1BD9AA82C(a1, v17, v42, v43, v44, &v45);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BD20DE9C(v32, v31, v33);
    sub_1BD585394(a1, v17);

    v29 = v34;
    goto LABEL_30;
  }

LABEL_31:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD9AB2B0(void *a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v7 = Strong;
  v8 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v9 = *&v5[v8];
  if (*(v9 + 16))
  {
    v10 = sub_1BD149084(v7);
    if (v11)
    {
      v12 = *(v9 + 36);
      v51[0] = v10;
      v51[1] = v12;
      LOBYTE(v51[2]) = 0;
      sub_1BD9AA474(v42, v10, v12, 0, v9);
      sub_1BD1B6150(v42, &v51[3]);
      sub_1BD0DE19C(v51, &v46, &qword_1EBD5A8E0);
      if (v49)
      {
        sub_1BD0DE204(&v46, v50, &qword_1EBD5A8E8);
        sub_1BD0DE19C(v50, &v46, &qword_1EBD5A8E8);
        v13 = v46;
        v14 = v47;
        sub_1BE048C84();
        sub_1BD20DE9C(v13, *(&v13 + 1), v14);
        sub_1BD1B6150(&v48, v32);
        v15 = v33;
        if (v33 == a1)
        {
          v16 = 2;
        }

        else
        {
          v15 = v34;
          if (v34 != a1)
          {
            v15 = v35;
            if (v35 == a1)
            {
              v16 = 1;
              goto LABEL_31;
            }

LABEL_50:
            result = sub_1BE053994();
            __break(1u);
            return result;
          }

          v16 = 0;
        }

LABEL_31:
        v26 = v15;

        swift_unknownObjectRelease();
        sub_1BD0DE19C(v50, &v46, &qword_1EBD5A8E8);
        v36 = v46;
        v37 = v47;
        sub_1BD509500(&v48, &v38);
        v27 = v39;
        if (v39 == a2)
        {
          v23 = 2;
        }

        else
        {
          v27 = v40;
          if (v40 == a2)
          {
            v23 = 0;
          }

          else
          {
            v27 = v41;
            if (v41 != a2)
            {
              v22 = 0;
              v23 = 255;
LABEL_39:
              sub_1BD0DE53C(&v36, &qword_1EBD5A8E8);
              v25 = v32;
              goto LABEL_40;
            }

            v23 = 1;
          }
        }

        v28 = v27;
        v22 = a2;
        goto LABEL_39;
      }

      goto LABEL_16;
    }
  }

  memset(v51, 0, 64);
  sub_1BD0DE19C(v51, &v46, &qword_1EBD5A8E0);
  if (!v49)
  {
LABEL_16:

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v51, &qword_1EBD5A8E0);
    sub_1BD0DE53C(&v46, &qword_1EBD5A8E0);
    return 0;
  }

  sub_1BD0DE204(&v46, v50, &qword_1EBD5A8E8);
  sub_1BD0DE19C(v50, &v46, &qword_1EBD5A8E8);
  v17 = v46;
  v18 = v47;
  sub_1BE048C84();
  sub_1BD20DE9C(v17, *(&v17 + 1), v18);
  sub_1BD1B6150(&v48, v42);
  v19 = v43;
  if (v43 == a1)
  {
    v16 = 2;
  }

  else
  {
    v19 = v44;
    if (v44 == a1)
    {
      v16 = 0;
    }

    else
    {
      v19 = v45;
      if (v45 != a1)
      {
        goto LABEL_50;
      }

      v16 = 1;
    }
  }

  v20 = v19;

  swift_unknownObjectRelease();
  sub_1BD0DE19C(v50, &v46, &qword_1EBD5A8E8);
  v36 = v46;
  v37 = v47;
  sub_1BD509500(&v48, &v38);
  v21 = v39;
  if (v39 == a2)
  {
    v23 = 2;
LABEL_28:
    v24 = v21;
    v22 = a2;
    goto LABEL_29;
  }

  v21 = v40;
  if (v40 == a2)
  {
    v23 = 0;
    goto LABEL_28;
  }

  v21 = v41;
  if (v41 == a2)
  {
    v23 = 1;
    goto LABEL_28;
  }

  v22 = 0;
  v23 = 255;
LABEL_29:
  sub_1BD0DE53C(&v36, &qword_1EBD5A8E8);
  v25 = v42;
LABEL_40:
  sub_1BD9AC7A0(v25);
  sub_1BD0DE53C(v50, &qword_1EBD5A8E8);
  sub_1BD0DE53C(v51, &qword_1EBD5A8E0);
  if (v23 == 255)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      sub_1BD585394(a1, v30);

      v29 = 0;
    }

    else
    {
      sub_1BD585394(a1, 0);
      v31 = *&v5[OBJC_IVAR___PKPassViewGestureCollector_groupStackView + 8];

      v29 = v31 == a2;
    }
  }

  else
  {
    sub_1BD585394(v22, v23);
    sub_1BD585394(a1, v16);

    v29 = 1;
  }

  sub_1BD9AC7A0(&v48);
  return v29;
}

uint64_t sub_1BD9AB824(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (!*(v7 + 16) || (v8 = sub_1BD149084(v5), (v9 & 1) == 0))
  {
    memset(v38, 0, 64);
    sub_1BD0DE19C(v38, &v33, &qword_1EBD5A8E0);
    if (v36)
    {
      sub_1BD0DE204(&v33, v37, &qword_1EBD5A8E8);
      sub_1BD0DE19C(v37, &v33, &qword_1EBD5A8E8);
      v15 = v33;
      v16 = v34;
      sub_1BE048C84();
      sub_1BD20DE9C(v15, *(&v15 + 1), v16);
      sub_1BD1B6150(&v35, v29);
      v17 = v30;
      if (v30 == a1)
      {
        v14 = 2;
      }

      else
      {
        v17 = v31;
        if (v31 == a1)
        {
          v14 = 0;
        }

        else
        {
          v17 = v32;
          if (v32 != a1)
          {
            goto LABEL_25;
          }

          v14 = 1;
        }
      }

      v18 = v17;

      swift_unknownObjectRelease();
      v19 = v29;
LABEL_23:
      sub_1BD9AC7A0(v19);
      sub_1BD0DE53C(v38, &qword_1EBD5A8E0);
      sub_1BD585394(a1, v14);
      sub_1BD0DE204(v37, &v33, &qword_1EBD5A8E8);
      v26 = v33;
      v27 = v34;
      sub_1BD509500(&v35, &v28);
      sub_1BD0DE53C(&v26, &qword_1EBD5A8E8);
      sub_1BD9AC7A0(&v35);
      return 0;
    }

    goto LABEL_16;
  }

  v10 = *(v7 + 36);
  v38[0] = v8;
  v38[1] = v10;
  LOBYTE(v38[2]) = 0;
  sub_1BD9AA474(v29, v8, v10, 0, v7);
  sub_1BD1B6150(v29, &v38[3]);
  sub_1BD0DE19C(v38, &v33, &qword_1EBD5A8E0);
  if (!v36)
  {
LABEL_16:

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v38, &qword_1EBD5A8E0);
    sub_1BD0DE53C(&v33, &qword_1EBD5A8E0);
    return 0;
  }

  sub_1BD0DE204(&v33, v37, &qword_1EBD5A8E8);
  sub_1BD0DE19C(v37, &v33, &qword_1EBD5A8E8);
  v11 = v33;
  v12 = v34;
  sub_1BE048C84();
  sub_1BD20DE9C(v11, *(&v11 + 1), v12);
  sub_1BD1B6150(&v35, v22);
  v13 = v23;
  if (v23 == a1)
  {
    v14 = 2;
    goto LABEL_22;
  }

  v13 = v24;
  if (v24 == a1)
  {
    v14 = 0;
    goto LABEL_22;
  }

  v13 = v25;
  if (v25 == a1)
  {
    v14 = 1;
LABEL_22:
    v20 = v13;

    swift_unknownObjectRelease();
    v19 = v22;
    goto LABEL_23;
  }

LABEL_25:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD9ABC18(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

    return 1;
  }

  v5 = v4;
  v6 = OBJC_IVAR___PKPassViewGestureCollector_groups;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (!*(v7 + 16) || (v8 = sub_1BD149084(v5), (v9 & 1) == 0))
  {
    memset(v39, 0, 64);
    sub_1BD0DE19C(v39, &v34, &qword_1EBD5A8E0);
    v11 = v37 == 0;
    if (v37)
    {
      sub_1BD0DE204(&v34, v38, &qword_1EBD5A8E8);
      sub_1BD0DE19C(v38, &v34, &qword_1EBD5A8E8);
      v16 = v34;
      v17 = v35;
      sub_1BE048C84();
      sub_1BD20DE9C(v16, *(&v16 + 1), v17);
      sub_1BD1B6150(&v36, v30);
      v18 = v31;
      if (v31 == a1)
      {
        v15 = 2;
      }

      else
      {
        v18 = v32;
        if (v32 == a1)
        {
          v15 = 0;
        }

        else
        {
          v18 = v33;
          if (v33 != a1)
          {
            goto LABEL_26;
          }

          v15 = 1;
        }
      }

      v19 = v18;

      swift_unknownObjectRelease();
      v20 = v30;
LABEL_24:
      sub_1BD9AC7A0(v20);
      sub_1BD0DE53C(v39, &qword_1EBD5A8E0);
      sub_1BD585394(a1, v15);
      sub_1BD0DE204(v38, &v34, &qword_1EBD5A8E8);
      v27 = v34;
      v28 = v35;
      sub_1BD509500(&v36, &v29);
      sub_1BD0DE53C(&v27, &qword_1EBD5A8E8);
      sub_1BD9AC7A0(&v36);
      return v11;
    }

    goto LABEL_17;
  }

  v10 = *(v7 + 36);
  v39[0] = v8;
  v39[1] = v10;
  LOBYTE(v39[2]) = 0;
  sub_1BD9AA474(v30, v8, v10, 0, v7);
  sub_1BD1B6150(v30, &v39[3]);
  sub_1BD0DE19C(v39, &v34, &qword_1EBD5A8E0);
  v11 = v37 == 0;
  if (!v37)
  {
LABEL_17:

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v39, &qword_1EBD5A8E0);
    sub_1BD0DE53C(&v34, &qword_1EBD5A8E0);
    return v11;
  }

  sub_1BD0DE204(&v34, v38, &qword_1EBD5A8E8);
  sub_1BD0DE19C(v38, &v34, &qword_1EBD5A8E8);
  v12 = v34;
  v13 = v35;
  sub_1BE048C84();
  sub_1BD20DE9C(v12, *(&v12 + 1), v13);
  sub_1BD1B6150(&v36, v23);
  v14 = v24;
  if (v24 == a1)
  {
    v15 = 2;
    goto LABEL_23;
  }

  v14 = v25;
  if (v25 == a1)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v14 = v26;
  if (v26 == a1)
  {
    v15 = 1;
LABEL_23:
    v21 = v14;

    swift_unknownObjectRelease();
    v20 = v23;
    goto LABEL_24;
  }

LABEL_26:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD9AC020(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {

      return;
    }

    v5 = v4;
    v6 = OBJC_IVAR___PKPassViewGestureCollector_groups;
    swift_beginAccess();
    v7 = *&v3[v6];
    if (*(v7 + 16) && (v8 = sub_1BD149084(v5), (v9 & 1) != 0))
    {
      v10 = *(v7 + 36);
      *&v44[0] = v8;
      *(&v44[0] + 1) = v10;
      LOBYTE(v44[1]) = 0;
      sub_1BD9AA474(v34, v8, v10, 0, v7);
      sub_1BD1B6150(v34, &v44[1] + 8);
      sub_1BD0DE19C(v44, &v38, &qword_1EBD5A8E0);
      if (v42)
      {
        sub_1BD0DE204(&v38, v43, &qword_1EBD5A8E8);
        sub_1BD0DE19C(v43, &v38, &qword_1EBD5A8E8);
        v11 = v38;
        v12 = v39;
        v13 = v40;
        sub_1BE048C84();
        sub_1BD20DE9C(v11, v12, v13);
        sub_1BD1B6150(&v41, v30);
        v14 = v31;
        if (v31 == a1)
        {
          v15 = 2;
          goto LABEL_22;
        }

        v14 = v32;
        if (v32 == a1)
        {
          v15 = 0;
          goto LABEL_22;
        }

        v14 = v33;
        if (v33 == a1)
        {
          v15 = 1;
LABEL_22:
          v26 = v14;
          sub_1BD0DE19C(v43, &v38, &qword_1EBD5A8E8);
          v27 = v38;
          v28 = v39;
          v29 = v40;
          sub_1BD9AAC78(a1, v15, v38, v39, v40, &v41);
          swift_unknownObjectRelease();
          sub_1BD20DE9C(v27, v28, v29);
          sub_1BD585394(a1, v15);

          v25 = v30;
          goto LABEL_23;
        }

LABEL_25:
        sub_1BE053994();
        __break(1u);
        return;
      }
    }

    else
    {
      memset(v44, 0, sizeof(v44));
      sub_1BD0DE19C(v44, &v38, &qword_1EBD5A8E0);
      if (v42)
      {
        sub_1BD0DE204(&v38, v43, &qword_1EBD5A8E8);
        sub_1BD0DE19C(v43, &v38, &qword_1EBD5A8E8);
        v16 = v38;
        v17 = v39;
        v18 = v40;
        sub_1BE048C84();
        sub_1BD20DE9C(v16, v17, v18);
        sub_1BD1B6150(&v41, v34);
        v19 = v35;
        if (v35 == a1)
        {
          v20 = 2;
        }

        else
        {
          v19 = v36;
          if (v36 == a1)
          {
            v20 = 0;
          }

          else
          {
            v19 = v37;
            if (v37 != a1)
            {
              goto LABEL_25;
            }

            v20 = 1;
          }
        }

        v21 = v19;
        sub_1BD0DE19C(v43, &v38, &qword_1EBD5A8E8);
        v22 = v38;
        v23 = v39;
        v24 = v40;
        sub_1BD9AAC78(a1, v20, v38, v39, v40, &v41);
        sub_1BD20DE9C(v22, v23, v24);
        sub_1BD585394(a1, v20);

        swift_unknownObjectRelease();
        v25 = v34;
LABEL_23:
        sub_1BD9AC7A0(v25);
        sub_1BD0DE53C(v43, &qword_1EBD5A8E8);
        sub_1BD0DE53C(v44, &qword_1EBD5A8E0);
        sub_1BD9AC7A0(&v41);
        return;
      }
    }

    swift_unknownObjectRelease();
    sub_1BD0DE53C(v44, &qword_1EBD5A8E0);
    sub_1BD0DE53C(&v38, &qword_1EBD5A8E0);
  }
}

uint64_t sub_1BD9AC564(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = *&a1[*a5];
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = v7(v8, v9);

  return v11 & 1;
}

unint64_t type metadata accessor for PKPassViewGestureCollector()
{
  result = qword_1EBD5A868;
  if (!qword_1EBD5A868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD5A868);
  }

  return result;
}

uint64_t sub_1BD9AC7D0(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1BD508850();
    *v4 = v9;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 8 * a2);
    sub_1BD1B6150(*(v9 + 56) + 40 * a2, a1);
    sub_1BD505F38(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BD9AC8D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BE048C84();
  }

  return result;
}

char *PeerPaymentGroupedPaymentsViewController.__allocating_init(request:transactionSourceCollection:context:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BD9ACE4C(a1, a2, a3);

  return v8;
}

char *PeerPaymentGroupedPaymentsViewController.init(request:transactionSourceCollection:context:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BD9ACE4C(a1, a2, a3);

  return v5;
}

Swift::Void __swiftcall PeerPaymentGroupedPaymentsViewController.loadView()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = *&v0[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
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

Swift::Void __swiftcall PeerPaymentGroupedPaymentsViewController.viewWillLayoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC];
    if (v11)
    {
      v12 = [v11 view];
    }

    else
    {
      v12 = 0;
    }

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id PeerPaymentGroupedPaymentsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PeerPaymentGroupedPaymentsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BD9ACE4C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = (v29 - v17);
  *&v4[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC] = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0, v16);
  *v18 = 0x4040000000000000;
  v20 = *(v10 + 32);
  *(v18 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(type metadata accessor for PeerPaymentGroupedPaymentsModel(0));
  v21 = v19;
  PeerPaymentGroupedPaymentsModel.init(request:transactionSourceCollection:context:)(a1, a2, a3);
  v29[1] = v22;
  sub_1BE051694();
  v23 = v29[3];
  v18[1] = v29[2];
  v18[2] = v23;
  sub_1BD27A628(v18, v13);
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5A8F8));
  v25 = sub_1BE04F894();
  v26 = *&v21[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC];
  *&v21[OBJC_IVAR___PKPeerPaymentGroupedPaymentsViewController_hostingVC] = v25;
  v27 = v25;

  [v21 addChildViewController_];
  sub_1BD9AD098(v18);
  return v21;
}

uint64_t sub_1BD9AD098(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupedPaymentsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *NearbyEntryCollectionViewHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for NearbyEntryCollectionViewHeaderView();
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView;
  v12 = *&v10[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 tertiarySystemBackgroundColor];
  [v15 setBackgroundColor_];

  [v14 addSubview_];
  return v14;
}

id _s9PassKitUI031NearbyEntryCollectionViewHeaderG0C5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *NearbyPeerPaymentEntryCollectionViewCell.init(frame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v15 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v16 = type metadata accessor for NearbyPeerPaymentEntryCollectionViewCell();
  v32.receiver = v4;
  v32.super_class = v16;
  v17 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  Width = CGRectGetWidth(v33);
  sub_1BD9ADAC8(Width);
  v19 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView;
  [*&v17[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView] setContentMode_];
  v20 = [v17 contentView];
  [v20 addSubview_];

  v21 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel;
  v22 = *&v17[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel];
  (*(v10 + 104))(v13, *MEMORY[0x1E69B8050], v9);
  v23 = v22;
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    sub_1BE04B6F4();

    (*(v10 + 8))(v13, v9);
    v26 = sub_1BE052404();

    [v23 setText_];

    [*&v17[v21] setTextAlignment_];
    v27 = *MEMORY[0x1E69DDD28];
    v28 = *MEMORY[0x1E69DDC58];
    v29 = *&v17[v21];
    v30 = PKFontForDefaultDesign(v27, v28);
    [v29 setFont_];

    [*&v17[v21] setNumberOfLines_];
    v31 = [v17 contentView];

    [v31 addSubview_];
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9AD898()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for NearbyPeerPaymentEntryCollectionViewCell();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v0 bounds];
  v3 = v2;
  [v0 bounds];
  v5 = v4;
  [*&v0[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView] setFrame_];
  [v0 bounds];
  v6 = CGRectGetWidth(v16);
  [v0 bounds];
  Height = CGRectGetHeight(v17);
  v8 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel];
  [v8 sizeThatFits_];
  v10 = v9;
  [v0 bounds];
  v12 = v11;
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = Width;
  v18.size.height = Width;
  return [v8 setFrame_];
}

uint64_t sub_1BD9ADAC8(double a1)
{
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051F64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = PKUIScreenScale();
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F88], v11);
  v17 = sub_1BE052D84();
  (*(v12 + 8))(v15, v11);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  aBlock[4] = sub_1BD9AE5C4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_232;
  v20 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v6, v20);
  _Block_release(v20);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v23);
}

void sub_1BD9ADE60(uint64_t a1, double a2, double a3)
{
  v43 = a1;
  v5 = sub_1BE051F54();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v41 - v14;
  v16 = sub_1BE04AA64();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  v18 = sub_1BE052404();
  v19 = 0;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v19 = sub_1BE04A9C4();
    (*(v17 + 8))(v15, v16);
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69A89B0]) initWithSymbolName:v18 bundleURL:v19];

  v21 = [objc_allocWithZone(MEMORY[0x1E69A8968]) initWithSystemColor_];
  v22 = [objc_allocWithZone(MEMORY[0x1E69A8968]) initWithSystemColor_];
  v23 = [objc_allocWithZone(MEMORY[0x1E69A8970]) init];
  [v23 setSize_];
  [v23 setScale_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
  v24 = swift_allocObject();
  v49 = xmmword_1BE0B69E0;
  *(v24 + 16) = xmmword_1BE0B69E0;
  v25 = sub_1BD0E5E8C(0, &qword_1EBD5A918);
  *(v24 + 56) = v25;
  *(v24 + 32) = v21;
  v26 = v21;
  v27 = sub_1BE052724();

  [v23 setSymbolColors_];

  v28 = swift_allocObject();
  *(v28 + 16) = v49;
  *(v28 + 56) = v25;
  *(v28 + 32) = v22;
  v29 = v22;
  v30 = sub_1BE052724();

  [v23 setEnclosureColors_];

  *&v49 = v20;
  v31 = [v20 imageForGraphicSymbolDescriptor_];
  if (v31)
  {
    v32 = v31;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v33 = sub_1BE052D54();
    v42 = v29;
    v34 = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = v43;
    *(v35 + 24) = v32;
    aBlock[4] = sub_1BD9AE5D0;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_12_9;
    v36 = _Block_copy(aBlock);
    sub_1BE048964();
    v37 = v32;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    v38 = v44;
    v39 = v26;
    v40 = v48;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v11, v38, v36);

    _Block_release(v36);
    (*(v47 + 8))(v38, v40);
    (*(v45 + 8))(v11, v46);
  }

  else
  {
  }
}

void sub_1BD9AE43C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView);

    v6 = [a2 CGImage];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

      [v5 setImage_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD9AE528(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD9AE674()
{
  v0 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v0, v1);
  sub_1BE052E94();
  return v3;
}

void sub_1BD9AE878(BOOL *a1@<X8>)
{
  sub_1BE049EC4();
  v3 = sub_1BE049EA4();
  v4 = sub_1BE052EA4();

  if (!v1)
  {
    *a1 = v4 > 0;
  }
}

id sub_1BD9AE900()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKMerchantTokenDataStorageWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BD9AEA34(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v19.receiver = v1;
  v19.super_class = type metadata accessor for NearbyPeerPaymentStateLabelsView();
  v5 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = *&v5[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
    v8 = *MEMORY[0x1E69DDDC0];
    v9 = *MEMORY[0x1E69DDC20];
    v10 = *MEMORY[0x1E69DB980];
    v11 = v5;
    v12 = PKFontForDefaultDesign(v8, v9, 0x8000, 0, v10);
    [v7 setFont_];

    v13 = objc_opt_self();
    v14 = [v13 labelColor];
    [v7 setTextColor_];

    [v7 setTextAlignment_];
    [v7 setNumberOfLines_];
    [v7 setAccessibilityIdentifier_];
    [v11 addSubview_];
    v15 = *&v11[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v9, 0x8000, 0);
    [v15 setFont_];

    v17 = [v13 secondaryLabelColor];
    [v15 setTextColor_];

    [v15 setTextAlignment_];
    [v15 setNumberOfLines_];
    [v15 setAccessibilityIdentifier_];
    [v11 addSubview_];
  }

  return v6;
}

id sub_1BD9AECEC()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  v2 = *MEMORY[0x1E69DDC20];
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC20], 0x8000, 0, *MEMORY[0x1E69DB980]);
  [v1 setFont_];

  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v1 setTextColor_];

  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  [v1 setAccessibilityIdentifier_];
  [v0 addSubview_];
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v2, 0x8000, 0);
  [v6 setFont_];

  v8 = [v4 secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setTextAlignment_];
  [v6 setNumberOfLines_];
  [v6 setAccessibilityIdentifier_];

  return [v0 addSubview_];
}

void sub_1BD9AEEF0()
{
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = v0;
  v23.super_class = type metadata accessor for NearbyPeerPaymentStateLabelsView();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  [v0 bounds];
  [v9 sizeThatFits_];
  v13 = v12;
  PKSizeAlignedInRect();
  [v9 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v21, 0, sizeof(v21));
  v25.origin.x = v2;
  v25.origin.y = v4;
  v25.size.width = v6;
  v25.size.height = v8;
  CGRectDivide(v25, &slice, &v21, v13 + 4.0, CGRectMinYEdge);
  origin = v21.origin;
  size = v21.size;
  v16 = *&v0[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  [v0 bounds];
  [v16 sizeThatFits_];
  v20 = v19;
  PKSizeAlignedInRect();
  [v16 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v21, 0, sizeof(v21));
  v26.origin = origin;
  v26.size = size;
  CGRectDivide(v26, &slice, &v21, v20, CGRectMinYEdge);
}

id sub_1BD9AF1C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *&v4[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
  v7 = sub_1BE052404();
  [v6 setText_];

  v8 = *&v4[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
  if (a4)
  {
    a4 = sub_1BE052404();
  }

  [v8 setText_];

  return [v4 setNeedsLayout];
}

id NearbyPeerPaymentStateLabelsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentStateLabelsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentStateLabelsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9AF408()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A960);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - v2;
  v4 = sub_1BE04B7D4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B7EF0], v4, v7);
  sub_1BE052434();
  (*(v5 + 16))(v3, v9, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_1BE04B804();
  return (*(v5 + 8))(v9, v4);
}

id sub_1BD9AF5C4(char a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  v22 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v33 - v21;
  if (!a1)
  {
    (*(v3 + 104))(&v33 - v21, *MEMORY[0x1E69B8050], v2, v22);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 == 1)
  {
    v24 = PKUseWLAN();
    v25 = *MEMORY[0x1E69B8050];
    v26 = *(v3 + 104);
    if (!v24)
    {
      v26(v14, v25, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v28 = result;
        v29 = sub_1BE04B6F4();
        v23 = v14;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v26(v18, v25, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      v23 = v18;
LABEL_15:

      (*(v3 + 8))(v23, v2);
      return v29;
    }

    goto LABEL_17;
  }

  v30 = PKUseWLAN();
  v31 = *MEMORY[0x1E69B8050];
  v32 = *(v3 + 104);
  if (v30)
  {
    v32(v10, v31, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      v23 = v10;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v32(v6, v31, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04B6F4();
    v23 = v6;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_1BD9AF964(char a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  v22 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v33 - v21;
  if (!a1)
  {
    (*(v3 + 104))(&v33 - v21, *MEMORY[0x1E69B8050], v2, v22);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      goto LABEL_15;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 == 1)
  {
    v24 = PKUseWLAN();
    v25 = *MEMORY[0x1E69B8050];
    v26 = *(v3 + 104);
    if (!v24)
    {
      v26(v14, v25, v2);
      result = PKPassKitBundle();
      if (result)
      {
        v28 = result;
        v29 = sub_1BE04B6F4();
        v23 = v14;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v26(v18, v25, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      v23 = v18;
LABEL_15:

      (*(v3 + 8))(v23, v2);
      return v29;
    }

    goto LABEL_17;
  }

  v30 = PKUseWLAN();
  v31 = *MEMORY[0x1E69B8050];
  v32 = *(v3 + 104);
  if (v30)
  {
    v32(v10, v31, v2);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();
      v23 = v10;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v32(v6, v31, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04B6F4();
    v23 = v6;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BD9AFD1C()
{
  swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();

  return *(v0 + 24);
}

uint64_t sub_1BD9AFD8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1BD9AFE04(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD9B0EC4();
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD9AFEE4()
{
  swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();

  return *(v0 + 25);
}

uint64_t sub_1BD9AFF54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1BD9AFFCC(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD9B0EC4();
    sub_1BE04B584();
  }

  return result;
}

uint64_t sub_1BD9B00AC()
{
  swift_getKeyPath();
  sub_1BD9B0EC4();
  sub_1BE04B594();

  return *(v0 + 26);
}

uint64_t sub_1BD9B011C(uint64_t result)
{
  v2 = *(v1 + 26);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v4);
      sub_1BD9B0EC4();
      sub_1BE04B584();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 26) = result;
  return result;
}

uint64_t sub_1BD9B0214()
{
  v1 = v0;
  v35 = sub_1BE04D214();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() nearFieldSharingEnabled];
  v7 = v6;
  if (v6 == *(v1 + 24))
  {
    *(v1 + 24) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    *(&v33 - 2) = v1;
    *(&v33 - 8) = v7;
    v37 = v1;
    sub_1BD9B0EC4();
    sub_1BE04B584();
  }

  v10 = [*(v1 + 16) powerOn];
  v11 = v10;
  if (v10 == *(v1 + 25))
  {
    *(v1 + 25) = v10;
  }

  else
  {
    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12, v13);
    *(&v33 - 2) = v1;
    *(&v33 - 8) = v11;
    v37 = v1;
    sub_1BD9B0EC4();
    sub_1BE04B584();
  }

  swift_getKeyPath();
  v37 = v1;
  sub_1BD9B0EC4();
  sub_1BE04B594();

  v14 = *(v1 + 24);
  swift_getKeyPath();
  v37 = v1;
  sub_1BE04B594();

  if (*(v1 + 25))
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  if (*(v1 + 25))
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v1 + 26);
  if (v18 == 3)
  {
    if ((v14 & *(v1 + 25)) != 1)
    {
LABEL_18:
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19, v20);
      *(&v33 - 2) = v1;
      *(&v33 - 8) = v17;
      v37 = v1;
      sub_1BE04B584();

      goto LABEL_21;
    }
  }

  else if (v18 != v17)
  {
    goto LABEL_18;
  }

  *(v1 + 26) = v17;
LABEL_21:
  sub_1BE04D094();
  sub_1BE048964();
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C54();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315394;
    swift_getKeyPath();
    v34 = v5;
    v25 = v2;
    v36 = v1;
    sub_1BE04B594();

    if (*(v1 + 24))
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (*(v1 + 24))
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_1BD123690(v26, v27, &v37);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    swift_getKeyPath();
    v36 = v1;
    sub_1BE04B594();

    if (*(v1 + 25))
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (*(v1 + 25))
    {
      v30 = 0xE400000000000000;
    }

    else
    {
      v30 = 0xE500000000000000;
    }

    v31 = sub_1BD123690(v29, v30, &v37);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_1BD026000, v21, v22, "NearbyPeerPayment: AirDrop settings checked. bringingNearbyEnabled: %s; wifiEnabled: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);

    return (*(v25 + 8))(v34, v35);
  }

  else
  {

    return (*(v2 + 8))(v5, v35);
  }
}

void sub_1BD9B0774()
{
  v1 = v0;
  v29[1] = *MEMORY[0x1E69E9840];
  v28[0] = sub_1BE04D214();
  v2 = *(v28[0] - 8);
  MEMORY[0x1EEE9AC00](v28[0], v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() setNearFieldSharingEnabled_];
  if (*(v0 + 24) == 1)
  {
    *(v0 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    v28[-2] = v0;
    LOBYTE(v28[-1]) = 1;
    v29[0] = v0;
    sub_1BD9B0EC4();
    sub_1BE04B584();
  }

  v8 = *(v0 + 16);
  v29[0] = 0;
  v9 = [v8 setPower:1 error:{v29, v28[0]}];
  v10 = v29[0];
  if (v9)
  {
    if (v1[25] == 1)
    {
      v1[25] = 1;
      v11 = v10;
    }

    else
    {
      v23 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v23, v24);
      v28[-2] = v1;
      LOBYTE(v28[-1]) = 1;
      v29[0] = v1;
      sub_1BD9B0EC4();
      v25 = v10;
      sub_1BE04B584();
    }
  }

  else
  {
    v12 = v29[0];
    v13 = sub_1BE04A854();

    swift_willThrow();
    sub_1BE04D094();
    v14 = v13;
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1BD026000, v15, v16, "NearbyPeerPayment: Error enabling Wi-Fi: %@", v17, 0xCu);
      sub_1BD1E236C(v18);
      MEMORY[0x1BFB45F20](v18, -1, -1);
      MEMORY[0x1BFB45F20](v17, -1, -1);
    }

    (*(v2 + 8))(v5, v28[0]);
    if (v1[25])
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21, v22);
      v28[-2] = v1;
      LOBYTE(v28[-1]) = 0;
      v29[0] = v1;
      sub_1BD9B0EC4();
      sub_1BE04B584();
    }

    else
    {

      v1[25] = 0;
    }
  }

  if (v1[26] != 3)
  {
    v26 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v26, v27);
    v28[-2] = v1;
    LOBYTE(v28[-1]) = 3;
    v29[0] = v1;
    sub_1BD9B0EC4();
    sub_1BE04B584();
  }
}

uint64_t sub_1BD9B0C58()
{
  v1 = OBJC_IVAR____TtC9PassKitUI19AirDropRequirements___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirDropRequirements()
{
  result = qword_1EBD5A940;
  if (!qword_1EBD5A940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD9B0D50()
{
  result = sub_1BE04B5D4();
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

unint64_t sub_1BD9B0E18()
{
  result = qword_1EBD5A950;
  if (!qword_1EBD5A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A950);
  }

  return result;
}

unint64_t sub_1BD9B0E70()
{
  result = qword_1EBD5A958;
  if (!qword_1EBD5A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A958);
  }

  return result;
}

unint64_t sub_1BD9B0EC4()
{
  result = qword_1EBD5A450;
  if (!qword_1EBD5A450)
  {
    type metadata accessor for AirDropRequirements();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5A450);
  }

  return result;
}

uint64_t sub_1BD9B0F44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AA30);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v21 - v12;
  if ([*v1 isAppAvailable] && (type metadata accessor for FinanceKitTransactionFoundInMailView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8), sub_1BE051A74(), v14 = v22, swift_getKeyPath(), v22 = v14, sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel), sub_1BE04B594(), , v15 = *(v14 + 16), sub_1BE048C84(), , v16 = *(v15 + 16), v17 = , v16))
  {
    v21 = &v21;
    MEMORY[0x1EEE9AC00](v17, v18);
    *(&v21 - 2) = v2;
    sub_1BD9B1E5C(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AA40);
    sub_1BD0DE43C();
    sub_1BD9B5538(&qword_1EBD5AA50, &unk_1EBD5AA40, &unk_1BE10A648, sub_1BD9B53F4);
    sub_1BE051A24();
    (*(v9 + 32))(a1, v13, v8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v9 + 56))(a1, v19, 1, v8);
}

uint64_t sub_1BD9B1248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinanceKitTransactionFoundInMailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  sub_1BD9B13E0();
  sub_1BD9B61E0(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionFoundInMailView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD9B6270(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FinanceKitTransactionFoundInMailView);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AA60) + 36));
  *v10 = sub_1BD9B5C68;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  LOBYTE(v9) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AA40);
  v20 = a2 + *(result + 36);
  *v20 = v9;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_1BD9B13E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAC8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = *(v0 + 16);
  *&v27[0] = *(v0 + 8);
  *(&v27[0] + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAC0);
  sub_1BE0516A4();
  v12 = v28;
  swift_getKeyPath();
  *&v27[0] = v12;
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v13 = v12[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive];

  if (v13 == 1)
  {
    v14 = *v1;
    LOBYTE(v27[0]) = 1;
    objc_allocWithZone(type metadata accessor for ShieldModel());
    v15 = v14;
    v16 = sub_1BD653D84(v14, v27);

    sub_1BE051CD4();
    sub_1BE04E5E4();
    v17 = sub_1BE0501E4();
    sub_1BE04E1F4();
    LOBYTE(v28) = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *v10 = v16;
    v10[24] = 0;
    *(v10 + 40) = xmmword_1BE0CB9B0;
    v18 = v27[1];
    *(v10 + 56) = v27[0];
    *(v10 + 4) = PKEdgeInsetsMake;
    *(v10 + 72) = v18;
    *(v10 + 88) = v27[2];
    v10[104] = v17;
    *(v10 + 14) = v19;
    *(v10 + 15) = v20;
    *(v10 + 16) = v21;
    *(v10 + 17) = v22;
    v10[144] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AA80);
    sub_1BD9B5538(&qword_1EBD5AA78, &qword_1EBD5AA80, &unk_1BE10A668, sub_1BD9B55BC);
    sub_1BD9B5674();
    return sub_1BE04F9A4();
  }

  else
  {
    type metadata accessor for FinanceKitTransactionFoundInMailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5A9D8);
    sub_1BE051A74();
    v24 = *&v27[0];
    swift_getKeyPath();
    *&v27[0] = v24;
    sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel);
    sub_1BE04B594();

    v25 = *(v24 + 16);
    sub_1BE048C84();

    *&v27[0] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAD8);
    type metadata accessor for FinanceKitFoundInMailRowView();
    sub_1BD0DE4F4(&qword_1EBD5AAE0, &qword_1EBD5AAD8);
    sub_1BD9B5728(&qword_1EBD5AAB8, type metadata accessor for FinanceKitFoundInMailRowView);
    sub_1BD9B5728(&qword_1EBD5AAE8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel);
    sub_1BE0519D4();
    (*(v3 + 16))(v10, v6, v2);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AA80);
    sub_1BD9B5538(&qword_1EBD5AA78, &qword_1EBD5AA80, &unk_1BE10A668, sub_1BD9B55BC);
    sub_1BD9B5674();
    sub_1BE04F9A4();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BD9B1970(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitTransactionFoundInMailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD9B61E0(a1, v6, type metadata accessor for FinanceKitTransactionFoundInMailView);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1BD9B6270(v6, v14 + v13, type metadata accessor for FinanceKitTransactionFoundInMailView);
  sub_1BD122C00(0, 0, v10, &unk_1BE10A6C8, v14);
}

uint64_t sub_1BD9B1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1BE0528A4();
  v4[6] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD9B1BDC, v6, v5);
}

uint64_t sub_1BD9B1BDC()
{
  v1 = v0[5];
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAC0);
  sub_1BE0516A4();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1BD9B1CA0;

  return sub_1BD9B45A0();
}

uint64_t sub_1BD9B1CA0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1BD9B1DE0, v4, v3);
}

uint64_t sub_1BD9B1DE0()
{
  v1 = *(v0 + 40);

  v2 = (v1 + *(type metadata accessor for FinanceKitTransactionFoundInMailView(0) + 28));
  (*v2)();
  v3 = *(v0 + 8);

  return v3();
}

id sub_1BD9B1E5C@<X0>(uint64_t a1@<X8>)
{
  v36[0] = a1;
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v6, *MEMORY[0x1E69B80D8], v1, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v2 + 8))(v6, v1);
    v36[4] = v9;
    v36[5] = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    sub_1BE051464();
    v16 = sub_1BE050564();
    v18 = v17;
    v20 = v19;

    sub_1BD0DDF10(v12, v14, v8 & 1);

    sub_1BE0503E4();
    v21 = sub_1BE0505F4();
    v23 = v22;
    LOBYTE(v14) = v24;

    sub_1BD0DDF10(v16, v18, v20 & 1);

    sub_1BE0503A4();
    v25 = sub_1BE050544();
    v27 = v26;
    LOBYTE(v9) = v28;
    v30 = v29;
    sub_1BD0DDF10(v21, v23, v14 & 1);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
    v32 = v36[0];
    v33 = (v36[0] + *(v31 + 36));
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v35 = sub_1BE0505C4();
    (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
    result = swift_getKeyPath();
    *v33 = result;
    *v32 = v25;
    *(v32 + 8) = v27;
    *(v32 + 16) = v9 & 1;
    *(v32 + 24) = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD9B2148@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD9B61E0(a1, v8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel);
  v32 = *v8;
  v9 = *(v8 + 3);
  v31 = *(v8 + 2);
  v10 = type metadata accessor for FinanceKitFoundInMailRowView();
  v11 = v10[6];
  v12 = v5[8];
  v13 = sub_1BE04AF64();
  v14 = *(v13 - 8);
  (*(v14 + 32))(a2 + v11, &v8[v12], v13);
  (*(v14 + 56))(a2 + v11, 0, 1, v13);
  v15 = &v8[v5[9]];
  v16 = *v15;
  v17 = *(v15 + 1);
  v18 = &v8[v5[10]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v5[12];
  v22 = &v8[v5[11]];
  v23 = *v22;
  v24 = *(v22 + 1);
  sub_1BD226B4C(&v8[v21], a2 + v10[10]);
  result = *&v32;
  *a2 = v32;
  *(a2 + 16) = v31;
  *(a2 + 24) = v9;
  v26 = (a2 + v10[7]);
  *v26 = v16;
  v26[1] = v17;
  v27 = (a2 + v10[8]);
  *v27 = v19;
  v27[1] = v20;
  v28 = (a2 + v10[9]);
  *v28 = v23;
  v28[1] = v24;
  v29 = (a2 + v10[11]);
  *v29 = sub_1BD9B5770;
  v29[1] = 0;
  return result;
}

uint64_t sub_1BD9B2314()
{
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD9B23B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + 16);
  return sub_1BE048C84();
}

uint64_t sub_1BD9B2464(uint64_t a1)
{
  v3 = sub_1BE048C84();
  v4 = sub_1BD400F90(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD9B5728(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD9B25B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AAF8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v37 - v6);
  v8 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE049514();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v47 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v37 - v18;
  sub_1BE04B5C4();
  v20 = sub_1BE049D14();
  v21 = *(v20 + 16);
  if (v21)
  {
    v37 = a1;
    v38 = v2;
    v23 = *(v13 + 16);
    v22 = v13 + 16;
    v45 = v7;
    v46 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v39 = v20;
    v25 = v20 + v24;
    v26 = *(v22 + 56);
    v43 = (v22 - 8);
    v44 = v26;
    v41 = v9;
    v27 = (v9 + 48);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v8;
    v42 = v8;
    v40 = v22;
    do
    {
      v30 = v46;
      v46(v19, v25, v12);
      v31 = v47;
      v30(v47, v19, v12);
      v32 = v45;
      sub_1BD9B29A0(v31, v45);
      (*v43)(v19, v12);
      if ((*v27)(v32, 1, v29) == 1)
      {
        sub_1BD0DE53C(v32, &qword_1EBD5AAF8);
      }

      else
      {
        sub_1BD9B6270(v32, v48, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1BD1D99C4(0, v28[2] + 1, 1, v28);
        }

        v34 = v28[2];
        v33 = v28[3];
        if (v34 >= v33 >> 1)
        {
          v28 = sub_1BD1D99C4(v33 > 1, v34 + 1, 1, v28);
        }

        v28[2] = v34 + 1;
        sub_1BD9B6270(v48, v28 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel);
        v29 = v42;
      }

      v25 += v44;
      --v21;
    }

    while (v21);

    a1 = v37;
    v2 = v38;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v35 = sub_1BE049D24();
  (*(*(v35 - 8) + 8))(a1, v35);
  *(v2 + 16) = v28;
  return v2;
}

uint64_t sub_1BD9B29A0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v119 - v6;
  v129 = sub_1BE04AF64();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v8);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1BE04BD74();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v11);
  v123 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v119 - v15;
  v147 = sub_1BE049484();
  v16 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v17);
  v146 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v145 = &v119 - v21;
  v22 = sub_1BE0494A4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v126 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v143 = &v119 - v28;
  v29 = sub_1BE0494E4();
  v31 = v30;
  v32 = *(sub_1BE0494B4() + 16);

  v131 = v10;
  if (v32)
  {
    v122 = v7;
    v130 = a2;

    v134 = a1;
    v33 = sub_1BE0494B4();
    v34 = *(v33 + 56);
    v133 = (v33 + 56);
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v132 = (v35 + 63) >> 6;
    v142 = v23 + 2;
    v140 = *MEMORY[0x1E69677C0];
    v138 = (v16 + 8);
    v139 = (v16 + 104);
    v141 = v23 + 1;
    v148 = v33;
    sub_1BE048C84();
    v38 = 0;
    v39 = v23;
    v144 = v22;
    v137 = v23;
    while (v37)
    {
      v40 = v38;
LABEL_12:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v39[9];
      v44 = *(v148 + 48) + v43 * (v42 | (v40 << 6));
      v32 = v143;
      v135 = v39[2];
      v136 = v43;
      v135(v143, v44, v22);
      v45 = v145;
      sub_1BE049494();
      v46 = *v139;
      v47 = v146;
      v48 = v147;
      (*v139)(v146, v140, v147);
      v49 = sub_1BD9B5728(&qword_1EBD5AB00, MEMORY[0x1E69677C8]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v50 = *v138;
      v51 = v47;
      v22 = v144;
      (*v138)(v51, v48);
      v52 = v45;
      v39 = v137;
      v50(v52, v48);
      v53 = v39[1];
      v53(v32, v22);
      if (v149 == v150)
      {
        v121 = v50;
        v132 = v49;
        v133 = v46;

        v54 = sub_1BE0494B4();
        v55 = v54 + 56;
        v56 = 1 << *(v54 + 32);
        v57 = -1;
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        v58 = v57 & *(v54 + 56);
        v59 = (v56 + 63) >> 6;
        v148 = v54;
        sub_1BE048C84();
        v60 = 0;
        v119 = MEMORY[0x1E69E7CC0];
        v61 = v126;
        v62 = v136;
        v137 = v55;
LABEL_16:
        v63 = v60;
        a2 = v130;
        v32 = v127;
        while (v58)
        {
          v60 = v63;
LABEL_24:
          v64 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v65 = v144;
          v135(v61, *(v148 + 48) + (v64 | (v60 << 6)) * v62, v144);
          v66 = sub_1BE049474();
          if (v67)
          {
            v143 = v67;
            v120 = v66;
            v68 = v145;
            sub_1BE049494();
            v69 = v146;
            v70 = v147;
            (v133)(v146, v140, v147);
            sub_1BE0526E4();
            sub_1BE0526E4();
            v71 = v69;
            v72 = v121;
            v121(v71, v70);
            v72(v68, v70);
            if (v149 == v150)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v62 = v136;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v119 = sub_1BD03B038(0, *(v119 + 2) + 1, 1, v119);
              }

              v61 = v126;
              v75 = *(v119 + 2);
              v74 = *(v119 + 3);
              if (v75 >= v74 >> 1)
              {
                v119 = sub_1BD03B038((v74 > 1), v75 + 1, 1, v119);
              }

              v53(v61, v144);
              v76 = v119;
              *(v119 + 2) = v75 + 1;
              v77 = &v76[16 * v75];
              v78 = v143;
              *(v77 + 4) = v120;
              *(v77 + 5) = v78;
              v55 = v137;
              goto LABEL_16;
            }

            v53(v61, v144);

            v63 = v60;
            v32 = v127;
            a2 = v130;
          }

          else
          {
            v53(v61, v65);
            v63 = v60;
          }

          v62 = v136;
          v55 = v137;
        }

        while (1)
        {
          v60 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_43;
          }

          if (v60 >= v59)
          {

            v101 = v119;
            if (*(v119 + 2))
            {
              v102 = v124;
              v103 = *(v124 + 104);
              LODWORD(v148) = *MEMORY[0x1E69B8090];
              v104 = v125;
              v147 = v103;
              v103(v32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
              v105 = swift_allocObject();
              *(v105 + 16) = xmmword_1BE0B69E0;
              v149 = v101;
              sub_1BE048C84();
              sub_1BD5A9C58(&v149);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
              sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0);
              v106 = sub_1BE0522E4();
              v108 = v107;

              *(v105 + 56) = MEMORY[0x1E69E6158];
              *(v105 + 64) = sub_1BD110550();
              *(v105 + 32) = v106;
              *(v105 + 40) = v108;
              v109 = sub_1BE04B714();
              v111 = v110;

              v102[1](v32, v104);
              a2 = v130;
              v112 = v104;
              v32 = v102;
              v113 = v148;
              v114 = v147;
            }

            else
            {

              v109 = 0;
              v111 = 0;
              v113 = *MEMORY[0x1E69B8090];
              v32 = v124;
              v114 = *(v124 + 104);
              v112 = v125;
            }

            v115 = v123;
            v114(v123, v113, v112);
            v116 = PKPassKitBundle();
            if (v116)
            {
              v117 = v116;
              v147 = v111;
              v148 = v109;
              v29 = sub_1BE04B6F4();
              v31 = v118;

              (v32)[1](v115, v112);
              v7 = v122;
              a1 = v134;
              goto LABEL_34;
            }

            goto LABEL_44;
          }

          v58 = *(v55 + 8 * v60);
          ++v63;
          if (v58)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v41 = v134;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v132)
      {
        v79 = sub_1BE049514();
        (*(*(v79 - 8) + 8))(v41, v79);

        v80 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
        return (*(*(v80 - 8) + 56))(v130, 1, 1, v80);
      }

      v37 = v133[v40];
      ++v38;
      if (v37)
      {
        v38 = v40;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);

    __break(1u);
  }

  else
  {
    v147 = 0;
    v148 = 0;
LABEL_34:
    v82 = sub_1BE049504();
    v145 = v83;
    v146 = v82;
    v84 = sub_1BE0494D4();
    v143 = v85;
    v144 = v84;
    sub_1BE0494F4();
    v86 = sub_1BE0494C4();
    if (!v87)
    {
      v86 = sub_1BE0494D4();
    }

    v88 = v86;
    v89 = v87;
    sub_1BE049464();
    v90 = sub_1BE049514();
    (*(*(v90 - 8) + 8))(a1, v90);
    v91 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
    v92 = (a2 + v91[8]);
    v93 = (a2 + v91[9]);
    v94 = v7;
    v95 = v91[10];
    v96 = sub_1BE04AA64();
    (*(*(v96 - 8) + 56))(a2 + v95, 1, 1, v96);
    v97 = v145;
    *a2 = v146;
    a2[1] = v97;
    v98 = v143;
    a2[2] = v144;
    a2[3] = v98;
    v99 = (a2 + v91[7]);
    *v99 = v88;
    v99[1] = v89;
    *v92 = v29;
    v92[1] = v31;
    v100 = v147;
    *v93 = v148;
    v93[1] = v100;
    (*(v128 + 32))(a2 + v91[6], v131, v129);
    sub_1BD4E30B0(v94, a2 + v95);
    return (*(*(v91 - 1) + 56))(a2, 0, 1, v91);
  }

  return result;
}

uint64_t sub_1BD9B3650()
{

  v1 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView9ViewModel___observationRegistrar;
  v2 = sub_1BE04B5D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD9B371C()
{
  result = sub_1BE04B5D4();
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

uint64_t sub_1BD9B37F8()
{
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  sub_1BE048964();
  return v1;
}

uint64_t sub_1BD9B38B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v5 = *(v3 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1BD1839E8;
  a2[1] = v6;
  return sub_1BE048964();
}

uint64_t sub_1BD9B3998(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE048964();
  sub_1BE04B584();
}

id sub_1BD9B3AB4()
{
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v1 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);

  return v1;
}

id sub_1BD9B3B6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  *a2 = v4;

  return v4;
}

void sub_1BD9B3C2C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  sub_1BE04BE74();
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD9B3DA4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  return *(v2 + *a2);
}

uint64_t sub_1BD9B3E44@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1BD9B3F20(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
    sub_1BE04B584();
  }

  return result;
}

_BYTE *sub_1BD9B4024(void *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive] = 0;
  v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive] = 0;
  sub_1BE04B5C4();
  sub_1BE04BE74();
  *&v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator] = sub_1BE04BE14();
  v7 = &v3[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh];
  *v7 = a2;
  v7[1] = a3;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0);
  sub_1BE048964();
  v8 = objc_msgSendSuper2(&v20, sel_init);
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  v9 = v8;
  sub_1BE04B594();

  v10 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator;
  v11 = *&v9[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator];
  v12 = sub_1BE04BE54() & 1;

  if (v12 == v9[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive])
  {
    v9[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive] = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    sub_1BE04B584();
  }

  swift_getKeyPath();
  sub_1BE04B594();

  v15 = *&v9[v10];
  v16 = v9;
  v17 = v15;
  sub_1BE04BE34();

  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v16 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];

  [v18 addObserver:v16 selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  return v16;
}

id sub_1BD9B4310()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v1 = *&v0[OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator];
  v2 = v5;
  sub_1BE04BE44();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD9B45C0()
{
  v1 = v0[6];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver___observationRegistrar;
  v0[2] = v1;
  v0[7] = v2;
  v0[8] = sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[6];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[3] = v5;
    sub_1BE04B584();
    v0[9] = 0;

    swift_getKeyPath();
    v0[4] = v5;
    sub_1BE04B594();

    v7 = *(v5 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
    v0[10] = v7;
    v7;
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_1BD9B4810;

    return MEMORY[0x1EEE23E78]();
  }
}

uint64_t sub_1BD9B4810(char a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9B492C, 0, 0);
}

uint64_t sub_1BD9B492C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  if (v1 == *(v2 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive))
  {
    *(v2 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = v1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 40) = v2;
    sub_1BE04B584();
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_1BD9B4AF8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v2 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  v3 = sub_1BE04BE54();

  if (v3)
  {
    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) == 1)
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v5);
      sub_1BE04B584();
    }

    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
    {
      v6 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v6, v7);
      sub_1BE04B584();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
    }
  }
}

uint64_t sub_1BD9B4D48()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  sub_1BE04B594();

  v2 = *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  v3 = sub_1BE04BE54();

  if (v3)
  {
    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) == 1)
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v5);
      sub_1BE04B584();
    }

    if (*(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
    {
      v6 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v6, v7);
      sub_1BE04B584();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
    }
  }

  swift_getKeyPath();
  sub_1BE04B594();

  v8 = *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  v9 = sub_1BE048964();
  v8(v9);
}

uint64_t sub_1BD9B5020()
{
  result = sub_1BE04B5D4();
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

void sub_1BD9B5120()
{
  sub_1BD0E5E8C(319, &qword_1EBD5A9F8);
  if (v0 <= 0x3F)
  {
    sub_1BD9B5244(319, &qword_1EBD5AA00, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1BD9B5244(319, &unk_1EBD5AA08, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, MEMORY[0x1E6981AA0]);
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD9B5244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD9B52F0()
{
  sub_1BE04AF64();
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      sub_1BD9B5244(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD9B53F4()
{
  result = qword_1EBD5AA58;
  if (!qword_1EBD5AA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AA60);
    sub_1BD9B5480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AA58);
  }

  return result;
}

unint64_t sub_1BD9B5480()
{
  result = qword_1EBD5AA68;
  if (!qword_1EBD5AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AA70);
    sub_1BD9B5538(&qword_1EBD5AA78, &qword_1EBD5AA80, &unk_1BE10A668, sub_1BD9B55BC);
    sub_1BD9B5674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AA68);
  }

  return result;
}

uint64_t sub_1BD9B5538(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD9B55BC()
{
  result = qword_1EBD5AA88;
  if (!qword_1EBD5AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AA90);
    sub_1BD0DE4F4(&qword_1EBD5AA98, &qword_1EBD5AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AA88);
  }

  return result;
}

unint64_t sub_1BD9B5674()
{
  result = qword_1EBD5AAA8;
  if (!qword_1EBD5AAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AAB0);
    sub_1BD9B5728(&qword_1EBD5AAB8, type metadata accessor for FinanceKitFoundInMailRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AAA8);
  }

  return result;
}

uint64_t sub_1BD9B5728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD9B5770()
{
  v32 = sub_1BE051F54();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v0);
  v31 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BE051FA4();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FC4();
  v30 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v29 - v13;
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 acquireAssertion];

  v17 = [objc_opt_self() sharedApplication];
  v18 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD9B5728(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
  v19 = sub_1BE052224();

  [v17 openURL:v18 options:v19 completionHandler:0];

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v20 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v21 = v7 + 8;
  v22 = *(v7 + 8);
  v29[1] = v21;
  v22(v10, v6);
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  aBlock[4] = sub_1BD9B6248;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_233;
  v24 = _Block_copy(aBlock);
  v25 = v16;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9B5728(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  v26 = v31;
  v27 = v32;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v14, v5, v26, v24);
  _Block_release(v24);

  (*(v35 + 8))(v26, v27);
  (*(v33 + 8))(v5, v34);
  return (v22)(v14, v30);
}

uint64_t sub_1BD9B5C68()
{
  v1 = *(type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD9B1970(v2);
}

uint64_t sub_1BD9B5CC8(uint64_t a1)
{
  v4 = *(type metadata accessor for FinanceKitTransactionFoundInMailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD9B1B44(a1, v6, v7, v1 + v5);
}

BOOL sub_1BD9B5DB8(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel.MailItemViewModel(0);
  if ((sub_1BE04AED4() & 1) == 0)
  {
    return 0;
  }

  v18 = v17[7];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if ((v19 != *v21 || v20 != v21[1]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v22 = v17[8];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = v17[9];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v17[10];
  v33 = *(v13 + 48);
  sub_1BD38F438(a1 + v32, v16);
  sub_1BD38F438(a2 + v32, &v16[v33]);
  v34 = *(v5 + 48);
  if (v34(v16, 1, v4) == 1)
  {
    if (v34(&v16[v33], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD3CF70);
      return 1;
    }

    goto LABEL_30;
  }

  sub_1BD38F438(v16, v12);
  if (v34(&v16[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_30:
    sub_1BD0DE53C(v16, &qword_1EBD44E78);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v33], v4);
  sub_1BD9B5728(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0]);
  v36 = sub_1BE052334();
  v37 = *(v5 + 8);
  v37(v8, v4);
  v37(v12, v4);
  sub_1BD0DE53C(v16, &unk_1EBD3CF70);
  return (v36 & 1) != 0;
}

uint64_t sub_1BD9B61E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD9B6270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD9B62F0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__onRefresh);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1BE048964();
}

void sub_1BD9B633C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator) = v2;
  v4 = v2;
}

void sub_1BD9B637C()
{
  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v2);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
    sub_1BE04B584();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 0;
  }

  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
  {
    v3 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v3, v4);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
    sub_1BE04B584();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
  }
}

void sub_1BD9B6564()
{
  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) == 1)
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__mailShieldActive) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v2);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
    sub_1BE04B584();
  }

  if (*(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive))
  {
    v3 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v3, v4);
    sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
    sub_1BE04B584();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCheckActive) = 0;
  }
}

unint64_t sub_1BD9B6754()
{
  result = qword_1EBD5AB08;
  if (!qword_1EBD5AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB10);
    sub_1BD9B67D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB08);
  }

  return result;
}

unint64_t sub_1BD9B67D8()
{
  result = qword_1EBD5AB18;
  if (!qword_1EBD5AB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5AA30);
    sub_1BD0DE43C();
    sub_1BD9B5538(&qword_1EBD5AA50, &unk_1EBD5AA40, &unk_1BE10A648, sub_1BD9B53F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB18);
  }

  return result;
}

uint64_t sub_1BD9B68CC(uint64_t a1, int a2, uint64_t a3)
{
  v145 = a3;
  v144 = a2;
  v149 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v147 = v3;
  v148 = v4;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v143 = &v142 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v142 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v142 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v142 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v142 - v36;
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v142 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v45 = &v142 - v44;
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v51 = MEMORY[0x1EEE9AC00](v49, v50);
  v142 = (&v142 - v52);
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v56 = &v142 - v55;
  v58 = MEMORY[0x1EEE9AC00](v54, v57);
  v60 = &v142 - v59;
  v62 = MEMORY[0x1EEE9AC00](v58, v61);
  v64 = &v142 - v63;
  MEMORY[0x1EEE9AC00](v62, v65);
  v76 = &v142 - v75;
  result = 0;
  switch(v149)
  {
    case 1:
      v94 = v147;
      v93 = v148;
      v19 = v70;
      (*(v148 + 13))(v70, *MEMORY[0x1E69B8068], v147);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_92;
      }

      v95 = result;
      goto LABEL_61;
    case 3:
      if (v145 == 3)
      {
        v94 = v147;
        v93 = v148;
        v19 = v67;
        (*(v148 + 13))(v67, *MEMORY[0x1E69B8068], v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_105;
        }

        v95 = result;
        goto LABEL_61;
      }

      v94 = v147;
      v93 = v148;
      if (v145 == 2)
      {
        v19 = v68;
        (*(v148 + 13))(v68, *MEMORY[0x1E69B8068], v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_104;
        }

        v95 = result;
LABEL_61:
        v88 = sub_1BE04B6F4();

        v93[1](v19, v94);
        return v88;
      }

      return sub_1BD9B7954();
    case 4:
    case 14:
      return result;
    case 6:
      v94 = v147;
      v93 = v148;
      v19 = v143;
      (*(v148 + 13))(v143, *MEMORY[0x1E69B8068], v147);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_88;
      }

      v95 = result;
      goto LABEL_61;
    case 7:
      v94 = v147;
      v93 = v148;
      v19 = v71;
      (*(v148 + 13))(v71, *MEMORY[0x1E69B8068], v147);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_89;
      }

      v95 = result;
      goto LABEL_61;
    case 8:
      goto LABEL_33;
    case 9:
      if (v144 == 1)
      {
        return 32;
      }

      v122 = v147;
      v121 = v148;
      (*(v148 + 13))(v45, *MEMORY[0x1E69B8068], v147);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_98;
      }

      v123 = result;
      v92 = sub_1BE04B6F4();

      v121[1](v45, v122);
      return v92;
    case 10:
      result = [*(v146 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_90;
      }

      v96 = result;
      v80 = [result localizedAuthorizingTitle];

      if (v80)
      {
        goto LABEL_51;
      }

      v98 = v147;
      v97 = v148;
      (*(v148 + 13))(v41, *MEMORY[0x1E69B8068], v147);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_102;
      }

      v99 = result;
      v88 = sub_1BE04B6F4();

      v97[1](v41, v98);
      return v88;
    case 11:
      v100 = v66;
      v101 = v73;
      v60 = v72;
      v102 = v146;
      result = [*(v146 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_91;
      }

      v103 = result;
      v80 = [result localizedAuthorizingTitle];

      if (v80)
      {
        goto LABEL_51;
      }

      result = [*(v102 + 264) paymentRequest];
      v104 = v147;
      v56 = v148;
      if (!result)
      {
        goto LABEL_103;
      }

      v105 = result;
      v106 = [result requestType];

      if (v106 != 12)
      {
        result = [*(v102 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_109;
        }

        v134 = result;
        v135 = [result requestType];

        v136 = *MEMORY[0x1E69B8068];
        v137 = *(v56 + 13);
        if (v135 != 10)
        {
          v107 = v60;
          v137(v60, v136, v104);
          result = PKPassKitBundle();
          if (!result)
          {
            goto LABEL_112;
          }

          goto LABEL_80;
        }

        v107 = v101;
        v137(v101, v136, v104);
        result = PKPassKitBundle();
        if (result)
        {
LABEL_78:
          v133 = result;
          goto LABEL_81;
        }

        __break(1u);
LABEL_75:
        result = [*(v102 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_111;
        }

        v138 = result;
        v139 = [result v107[315]];

        if (v139 == 10)
        {
          v107 = v101;
          (*(v56 + 13))(v101, *MEMORY[0x1E69B8068], v104);
          result = PKPassKitBundle();
          if (!result)
          {
            goto LABEL_113;
          }

          goto LABEL_78;
        }

        result = [*(v102 + 264) paymentRequest];
        if (!result)
        {
LABEL_114:
          __break(1u);
          return result;
        }

        v141 = result;
        v80 = [result localizedPhysicalButtonConfirmationTitle];

        if (v80)
        {
LABEL_51:
          v120 = sub_1BE052434();

          return v120;
        }

        v107 = v60;
        (*(v56 + 13))(v60, *MEMORY[0x1E69B8068], v104);
        result = PKPassKitBundle();
        if (!result)
        {
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
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

LABEL_80:
        v133 = result;
        goto LABEL_81;
      }

      v107 = v100;
      (*(v56 + 13))(v100, *MEMORY[0x1E69B8068], v104);
      result = PKPassKitBundle();
      if (result)
      {
LABEL_70:
        v133 = result;
LABEL_81:
        v140 = sub_1BE04B6F4();

        (*(v56 + 1))(v107, v104);
        return v140;
      }

      __break(1u);
LABEL_33:
      v102 = v146;
      if (*(v146 + 225) != 1)
      {
        v101 = v69;
        v60 = v74;
        result = [*(v146 + 264) paymentRequest];
        v56 = v148;
        if (!result)
        {
          goto LABEL_97;
        }

        v119 = result;
        v80 = [result localizedAuthorizingTitle];

        if (v80)
        {
          goto LABEL_51;
        }

        result = [*(v102 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_108;
        }

        v131 = result;
        v107 = &selRef_recurringPaymentMemo;
        v132 = [result requestType];

        v104 = v147;
        if (v132 == 12)
        {
          v107 = v142;
          (*(v56 + 13))(v142, *MEMORY[0x1E69B8068], v147);
          result = PKPassKitBundle();
          if (!result)
          {
            goto LABEL_110;
          }

          goto LABEL_70;
        }

        goto LABEL_75;
      }

      IsAvailable = PKSystemApertureIsAvailable();
      v109 = *MEMORY[0x1E69B8068];
      v110 = v148;
      v111 = *(v148 + 13);
      if (IsAvailable)
      {
        v112 = v147;
        v111(v60, v109, v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_106;
        }

        v113 = result;
        v88 = sub_1BE04B6F4();

        v110[1](v60, v112);
      }

      else
      {
        v129 = v147;
        v111(v56, v109, v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_107;
        }

        v130 = result;
        v88 = sub_1BE04B6F4();

        v110[1](v56, v129);
      }

      return v88;
    case 12:
      v94 = v147;
      v93 = v148;
      (*(v148 + 13))(v19, *MEMORY[0x1E69B8068], v147);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_93;
      }

      v95 = result;
      goto LABEL_61;
    case 13:
      return sub_1BD9B7C04();
    case 15:
      v114 = [*(v146 + 264) selectedPaymentOffer];
      if (v114)
      {

        v116 = v147;
        v115 = v148;
        (*(v148 + 13))(v37, *MEMORY[0x1E69B8078], v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_96;
        }

        v117 = result;
        v92 = sub_1BE04B6F4();

        v115[1](v37, v116);
      }

      else
      {
        v127 = v147;
        v126 = v148;
        (*(v148 + 13))(v33, *MEMORY[0x1E69B8078], v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_101;
        }

        v128 = result;
        v92 = sub_1BE04B6F4();

        v126[1](v33, v127);
      }

      return v92;
    case 16:
      v90 = v147;
      v89 = v148;
      (*(v148 + 13))(v29, *MEMORY[0x1E69B8078], v147);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_87;
      }

      v91 = result;
      v92 = sub_1BE04B6F4();

      v89[1](v29, v90);
      return v92;
    default:
      v78 = v146;
      if (*(v146 + 60) != 1)
      {
        goto LABEL_8;
      }

      if (*(v146 + 62) != 1)
      {
        goto LABEL_6;
      }

      result = [*(v146 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_95;
      }

      v79 = result;
      v80 = [result localizedUnboundBiometricMessage];

      if (v80)
      {
        goto LABEL_51;
      }

LABEL_6:
      result = [*(v78 + 264) paymentRequest];
      if (!result)
      {
        goto LABEL_86;
      }

      v81 = result;
      v80 = [result localizedBiometricRetryMessage];

      if (v80)
      {
        goto LABEL_51;
      }

LABEL_8:
      if (*(v78 + 225) != 1)
      {
        result = [*(v78 + 264) paymentRequest];
        if (!result)
        {
          goto LABEL_94;
        }

        v118 = result;
        v80 = [result localizedPhysicalButtonConfirmationTitle];

        if (!v80)
        {
          return sub_1BD9B8A8C([*(v78 + 264) confirmationStyle]);
        }

        goto LABEL_51;
      }

      v82 = PKSystemApertureIsAvailable();
      v83 = *MEMORY[0x1E69B8068];
      v84 = v148;
      v85 = *(v148 + 13);
      if (v82)
      {
        v86 = v147;
        v85(v76, v83, v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_99;
        }

        v87 = result;
        v88 = sub_1BE04B6F4();

        v84[1](v76, v86);
      }

      else
      {
        v124 = v147;
        v85(v64, v83, v147);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_100;
        }

        v125 = result;
        v88 = sub_1BE04B6F4();

        v84[1](v64, v124);
      }

      return v88;
  }
}

id sub_1BD9B7954()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C884();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v19 - v13;
  sub_1BE04C794();
  (*(v7 + 104))(v11, *MEMORY[0x1E69BC9B8], v6);
  sub_1BD70C564();
  sub_1BE0526E4();
  sub_1BE0526E4();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v14, v6);
  if (v19[1] == v19[0])
  {
    return sub_1BD9B7FD4();
  }

  if (*(v0 + 92) == 1)
  {
    return sub_1BD9B9130([*(v0 + 264) confirmationStyle]);
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E69B8068], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();

    (*(v2 + 8))(v5, v1);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD9B7C04()
{
  v1 = v0;
  v41 = sub_1BE04BD74();
  v2 = *(v41 - 8);
  v4 = MEMORY[0x1EEE9AC00](v41, v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v40 - v8;
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 248);
  if (v15 <= 0x13)
  {
    v16 = *(v0 + 256);
    if (((1 << v15) & 0x8C008) != 0 && v16 != 0)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = v16;
        v21 = sub_1BD9B81A4(v19);
      }

      else
      {
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (!v23)
        {
          goto LABEL_11;
        }

        v24 = v23;
        v25 = v16;
        v21 = sub_1BD9B87A4(v24);
      }

      v26 = v21;
      v27 = v22;

      if (v27)
      {
        return v26;
      }
    }
  }

LABEL_11:
  sub_1BE04D084();
  v28 = sub_1BE04D204();
  v29 = sub_1BE052C34();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1BD026000, v28, v29, "Requested localized error message, but no error available.", v30, 2u);
    MEMORY[0x1BFB45F20](v30, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  result = [*(v1 + 264) paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = result;
  v33 = [result requestType];

  v34 = *MEMORY[0x1E69B8068];
  v35 = *(v2 + 104);
  if (v33 == 10)
  {
    v36 = v41;
    v35(v9, v34, v41);
    result = PKPassKitBundle();
    if (result)
    {
      v37 = result;
      v26 = sub_1BE04B6F4();

      (*(v2 + 8))(v9, v36);
      return v26;
    }

    goto LABEL_21;
  }

  v38 = v41;
  v35(v6, v34, v41);
  result = PKPassKitBundle();
  if (result)
  {
    v39 = result;
    v26 = sub_1BE04B6F4();

    (*(v2 + 8))(v6, v38);
    return v26;
  }

LABEL_22:
  __break(1u);
  return result;
}

id sub_1BD9B7FD4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = *MEMORY[0x1E69B8068];
  v11 = *(v2 + 104);
  if (*(v0 + 88) == 1)
  {
    v11(&v15 - v8, v10, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v9, v1);
      return v14;
    }

    __break(1u);
  }

  else
  {
    v11(v6, v10, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      v9 = v6;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id sub_1BD9B81A4(void *a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v47 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v47 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v47 - v22;
  v24 = [a1 status] - 5;
  result = [a1 error];
  v26 = result;
  if (v24 <= 3)
  {
    if (result)
    {
      v27 = [result localizedFailureReason];

      if (!v27)
      {
        return 0;
      }

      v28 = sub_1BE052434();

      return v28;
    }

    __break(1u);
    goto LABEL_31;
  }

  v48 = v4;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = sub_1BD9B89AC(result);

  v30 = v29;
  v31 = sub_1BD938BD4();

  if (v31 > 0xDu)
  {
    goto LABEL_20;
  }

  if (((1 << v31) & 0x3F9C) != 0)
  {
    v32 = [v30 localizedFailureReason];
    if (v32)
    {
      v33 = v32;
      v28 = sub_1BE052434();
    }

    else
    {

      return 0;
    }

    return v28;
  }

  if (v31 == 5)
  {
    v39 = v48;
    (*(v48 + 104))(v23, *MEMORY[0x1E69B8068], v3);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v40 = result;
    v28 = sub_1BE04B6F4();

    (*(v39 + 8))(v23, v3);
    return v28;
  }

  if (v31 != 6)
  {
LABEL_20:
    if (v31)
    {
      result = [*(v1 + 264) paymentRequest];
      if (!result)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v41 = result;
      [result shippingType];

      v45 = v48;
      (*(v48 + 104))(v12, *MEMORY[0x1E69B8068], v3);
      result = PKPassKitBundle();
      if (!result)
      {
        goto LABEL_38;
      }

      v46 = result;
      v28 = sub_1BE04B6F4();

      (*(v45 + 8))(v12, v3);
    }

    else
    {
      v42 = v48;
      (*(v48 + 104))(v8, *MEMORY[0x1E69B8068], v3);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v43 = result;
      v28 = sub_1BE04B6F4();

      (*(v42 + 8))(v8, v3);
    }

    return v28;
  }

  result = [*(v1 + 264) paymentRequest];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = result;
  v35 = [result requestType];

  v36 = *MEMORY[0x1E69B8068];
  v37 = *(v48 + 104);
  if (v35 == 10)
  {
    v37(v20, v36, v3);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v38 = result;
    v28 = sub_1BE04B6F4();

    (*(v48 + 8))(v20, v3);
    return v28;
  }

  v37(v16, v36, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v44 = result;
    v28 = sub_1BE04B6F4();

    (*(v48 + 8))(v16, v3);
    return v28;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_1BD9B87A4(void *a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 error];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 localizedFailureReason];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE052434();

    return v12;
  }

  result = [*(v1 + 264) paymentRequest];
  if (result)
  {
    v14 = result;
    v15 = [result localizedErrorMessage];

    if (v15)
    {
      v12 = sub_1BE052434();

      return v12;
    }

    (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v12 = sub_1BE04B6F4();

      (*(v4 + 8))(v7, v3);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD9B89AC(void *a1)
{
  v1 = [a1 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  v2 = sub_1BE052744();

  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = v3;

    v5 = sub_1BE04A844();
    v6 = sub_1BD9B89AC();

    return v6;
  }

  else
  {

    return a1;
  }
}

id sub_1BD9B8A8C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v49 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v49 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v49 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v49 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v49 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v49 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v49 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v42 = &v49 - v39;
  v44 = *(v43 + 104);
  v49 = v43;
  v50 = v38;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v44(v32, *MEMORY[0x1E69B8068], v40);
        result = PKPassKitBundle();
        if (result)
        {
          v46 = result;
          v47 = sub_1BE04B6F4();
          v42 = v32;
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      v44(v28, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v28;
        goto LABEL_32;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v44(&v49 - v39, *MEMORY[0x1E69B8068], v40);
        result = PKPassKitBundle();
        if (result)
        {
          v46 = result;
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      if (a1 != 2)
      {
        goto LABEL_30;
      }

      v44(v36, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v36;
LABEL_32:

        (*(v49 + 8))(v42, v50);
        return v47;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v44(v24, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v24;
        goto LABEL_32;
      }

      goto LABEL_40;
    }

    v44(v20, *MEMORY[0x1E69B8068], v40);
    result = PKPassKitBundle();
    if (result)
    {
      v46 = result;
      v47 = sub_1BE04B6F4();
      v42 = v20;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  switch(a1)
  {
    case 7:
      v44(v16, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v16;
        goto LABEL_32;
      }

      goto LABEL_38;
    case 8:
      v44(v12, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v48 = result;
        v47 = sub_1BE04B6F4();
        v42 = v12;
        v46 = v48;
        goto LABEL_32;
      }

      goto LABEL_41;
    case 9:
      v42 = v41;
      v44(v41, *MEMORY[0x1E69B80E0], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
LABEL_21:
        v47 = sub_1BE04B6F4();
        goto LABEL_32;
      }

      goto LABEL_39;
  }

LABEL_30:
  v44(v6, *MEMORY[0x1E69B8068], v40);
  result = PKPassKitBundle();
  if (result)
  {
    v46 = result;
    v47 = sub_1BE04B6F4();
    v42 = v6;
    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
  return result;
}

id sub_1BD9B9130(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v49 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v49 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v49 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v49 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v49 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v49 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v49 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v42 = &v49 - v39;
  v44 = *(v43 + 104);
  v49 = v43;
  v50 = v38;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v44(v32, *MEMORY[0x1E69B8068], v40);
        result = PKPassKitBundle();
        if (result)
        {
          v46 = result;
          v47 = sub_1BE04B6F4();
          v42 = v32;
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      v44(v28, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v28;
        goto LABEL_32;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v44(&v49 - v39, *MEMORY[0x1E69B8068], v40);
        result = PKPassKitBundle();
        if (result)
        {
          v46 = result;
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      if (a1 != 2)
      {
        goto LABEL_30;
      }

      v44(v36, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v36;
LABEL_32:

        (*(v49 + 8))(v42, v50);
        return v47;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v44(v24, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v24;
        goto LABEL_32;
      }

      goto LABEL_40;
    }

    v44(v20, *MEMORY[0x1E69B8068], v40);
    result = PKPassKitBundle();
    if (result)
    {
      v46 = result;
      v47 = sub_1BE04B6F4();
      v42 = v20;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  switch(a1)
  {
    case 7:
      v44(v16, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
        v47 = sub_1BE04B6F4();
        v42 = v16;
        goto LABEL_32;
      }

      goto LABEL_38;
    case 8:
      v44(v12, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v48 = result;
        v47 = sub_1BE04B6F4();
        v42 = v12;
        v46 = v48;
        goto LABEL_32;
      }

      goto LABEL_41;
    case 9:
      v42 = v41;
      v44(v41, *MEMORY[0x1E69B80E0], v40);
      result = PKPassKitBundle();
      if (result)
      {
        v46 = result;
LABEL_21:
        v47 = sub_1BE04B6F4();
        goto LABEL_32;
      }

      goto LABEL_39;
  }

LABEL_30:
  v44(v6, *MEMORY[0x1E69B8068], v40);
  result = PKPassKitBundle();
  if (result)
  {
    v46 = result;
    v47 = sub_1BE04B6F4();
    v42 = v6;
    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_1BD9B97D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1BD126964;
    v5[3] = &block_descriptor_234;
    v4 = _Block_copy(v5);
    sub_1BE048964();
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

char *NearbyPeerPaymentSenderViewController.__allocating_init(userInfo:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD9BD508(a1, a2, a3, a4, a5);

  return v12;
}

char *NearbyPeerPaymentSenderViewController.init(userInfo:screenEdgeSwipeAction:dismissAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1BD9BD508(a1, a2, a3, a4, a5);

  return v5;
}

void sub_1BD9B9A64()
{
  v1 = v0;
  v2 = sub_1BE04C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v35 - v9;
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring;
  if (*(v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring) == 1)
  {
    v37 = v2;
    sub_1BE04D094();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v16;
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "NearbyPeerPayment: should restart device monitoring due to lock state changing", v19, 2u);
      v21 = v20;
      v16 = v36;
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v22 = v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v22, &v41);
    v23 = v42;
    v24 = v43;
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    (v24[4])(v23, v24);
    sub_1BD0EE8CC(v22, v38);
    v25 = v39;
    v26 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v27 = (*(v26 + 40))(v25, v26);
    v28 = v37;
    (*(v3 + 16))(v6, v10, v37);
    v29 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
    swift_allocObject();
    v30 = sub_1BD1258D4(v6, v27);
    sub_1BD116BC8();

    (*(v3 + 8))(v10, v28);
    __swift_destroy_boxed_opaque_existential_0(v38);
    __swift_destroy_boxed_opaque_existential_0(&v41);
    v42 = v29;
    v43 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;
    *&v41 = v30;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0(v22);
    sub_1BD043990(&v41, v22);
    v31 = *(v22 + 24);
    v32 = *(v22 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v22, v31);
    v33 = *(v32 + 56);
    v34 = swift_unknownObjectRetain();
    v33(v34, &protocol witness table for NearbyPeerPaymentSenderViewController, v31, v32);
    swift_endAccess();
    *(v1 + v16) = 0;
  }
}

void sub_1BD9B9E54(char a1)
{
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_currentLockState;
  v15 = v1[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_currentLockState];
  v16 = a1 & 1;
  if (v15 != (a1 & 1))
  {
    if (!(a1 & 1 | ((v15 & 1) == 0)))
    {
      v45 = v11;
      sub_1BE04D094();
      v44 = v1;
      v17 = v1;
      v18 = sub_1BE04D204();
      v19 = sub_1BE052C54();

      v43 = v19;
      v20 = os_log_type_enabled(v18, v19);
      v21 = &qword_1EBD5A000;
      if (v20)
      {
        v22 = swift_slowAlloc();
        v40 = v22;
        v41 = swift_slowAlloc();
        v46 = v41;
        *v22 = 136315138;
        v23 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
        swift_beginAccess();
        sub_1BD0EE8CC(&v17[v23], v47);
        v42 = v17;
        v24 = v4;
        v39 = v18;
        v25 = v48;
        v26 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        (*(v26 + 8))(v25, v26);
        __swift_destroy_boxed_opaque_existential_0(v47);
        sub_1BD9BE4B0(&unk_1EBD39960, MEMORY[0x1E69695A8]);
        v27 = sub_1BE053B24();
        v29 = v28;
        (*(v24 + 8))(v7, v3);
        v17 = v42;
        v30 = sub_1BD123690(v27, v29, &v46);

        v32 = v39;
        v31 = v40;
        *(v40 + 1) = v30;
        v21 = &qword_1EBD5A000;
        _os_log_impl(&dword_1BD026000, v32, v43, "NearbyPeerPayment: device discovery status changed due to lock state. Invalidate monitorID: %s and mark for restart", v31, 0xCu);
        v33 = v41;
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x1BFB45F20](v33, -1, -1);
        MEMORY[0x1BFB45F20](v31, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v13, v45);
      v17[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring] = 1;
      v34 = &v17[v21[357]];
      swift_beginAccess();
      v35 = *(v34 + 24);
      v36 = *(v34 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      (*(v36 + 56))(0, 0, v35, v36);
      swift_endAccess();
      sub_1BD0EE8CC(v34, v47);
      v37 = v48;
      v38 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v38 + 80))(v37, v38);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v1 = v44;
    }

    v1[v14] = v16;
  }
}

void sub_1BD9BA254()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyPeerPaymentButtonsView.Style(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for NearbyPeerPaymentSenderViewController();
  v34.receiver = v0;
  v34.super_class = v6;
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v7 = *(*&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView] + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_buttonsView);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v7;
  sub_1BE04AFD4();
  v10 = type metadata accessor for NearbyPeerPaymentButtonsView.Action(0);
  v11 = &v5[*(v10 + 20)];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v5[*(v10 + 24)];
  *v12 = sub_1BD9BE104;
  v12[1] = v8;
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC9PassKitUI28NearbyPeerPaymentButtonsView_style;
  swift_beginAccess();
  sub_1BD3BE2EC(v5, v9 + v13);
  swift_endAccess();
  sub_1BD3BB48C();

  sub_1BD97C9D4(v5);
  v14 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels];
  [v14 setAlpha_];
  v15 = [v1 view];
  if (!v15)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  [v15 addSubview_];

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1BD9BCA40(&v31);
  sub_1BD11326C(&v31);
  v17 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(&v1[v17], &v31);
  v18 = *(&v32 + 1);
  v19 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  LOBYTE(v17) = (*(v19 + 72))(v18, v19);
  __swift_destroy_boxed_opaque_existential_0(&v31);
  if ((v17 & 1) == 0)
  {
LABEL_5:
    v23 = *&v1[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
    type metadata accessor for NearbyPeerPaymentSenderVFXViewController();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
      swift_beginAccess();
      *(v25 + 8) = &protocol witness table for NearbyPeerPaymentSenderViewController;
      swift_unknownObjectWeakAssign();
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v26 = v23;
      NearbyPeerPaymentSenderVFXViewController.setState(_:completion:)(&v31, PKEdgeInsetsMake, 0);

      sub_1BD11326C(&v31);
    }

    v27 = [objc_allocWithZone(MEMORY[0x1E69B8F40]) init];
    [v27 setEndpoint_];
    [v27 setQuoteRequestDestination_];
    v28 = [objc_opt_self() sharedService];
    if (v28)
    {
      v29 = v28;
      [v28 prewarmDeviceScoreForAttributes_];

      return;
    }

    goto LABEL_10;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_debugViewTapped];
  v21 = [v1 view];
  if (v21)
  {
    v22 = v21;
    [v21 addGestureRecognizer_];

    goto LABEL_5;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1BD9BA640()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1BD9BB6BC();
    v2 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
    swift_beginAccess();
    sub_1BD0EE8CC(v1 + v2, v16);
    v3 = v17;
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v4 + 16))(v15, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v6 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    v7 = sub_1BE052434();
    v8 = MEMORY[0x1E69BA440];
    *(inited + 40) = v7;
    *(inited + 48) = v9;
    v10 = *v8;
    *(inited + 56) = *v8;
    *(inited + 64) = sub_1BE052434();
    *(inited + 72) = v11;
    v12 = v6;
    v13 = v10;
    v14 = sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v15, v14);

    sub_1BD11326C(v15);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

uint64_t sub_1BD9BA890(char a1, SEL *a2)
{
  v19.receiver = v2;
  v19.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  objc_msgSendSuper2(&v19, *a2, a1 & 1);
  v5 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v2 + v5, v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v7 + 16))(v15, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  v9 = MEMORY[0x1E69BA680];
  *(inited + 16) = xmmword_1BE0B69E0;
  v10 = *v9;
  *(inited + 32) = *v9;
  *(inited + 40) = sub_1BE052434();
  *(inited + 48) = v11;
  v12 = v10;
  v13 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
  _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v15, v13);

  sub_1BD11326C(v15);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

id sub_1BD9BAA40()
{
  v32 = *MEMORY[0x1E69E9840];
  v30.receiver = v0;
  v30.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  objc_msgSendSuper2(&v30, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (qword_1EBD36BE8 != -1)
  {
    swift_once();
  }

  v11 = *&qword_1EBD43A60;
  memset(&slice, 0, sizeof(slice));
  memset(&v29, 0, sizeof(v29));
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  CGRectDivide(v33, &slice, &v29, *&qword_1EBD43A60, CGRectMinXEdge);
  v34 = v29;
  memset(&slice, 0, sizeof(slice));
  memset(&v29, 0, sizeof(v29));
  CGRectDivide(v34, &slice, &v29, v11, CGRectMaxXEdge);
  origin = v29.origin;
  size = v29.size;
  v14 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels];
  [v14 sizeThatFits_];
  v16 = v15;
  memset(&slice, 0, sizeof(slice));
  v17 = (size.height - (v15 + 60.0 + 16.0)) * 0.5;
  memset(&v29, 0, sizeof(v29));
  v35.origin = origin;
  v35.size = size;
  CGRectDivide(v35, &slice, &v29, v17, CGRectMinYEdge);
  v36 = v29;
  memset(&slice, 0, sizeof(slice));
  memset(&v29, 0, sizeof(v29));
  CGRectDivide(v36, &slice, &v29, v17, CGRectMaxYEdge);
  v18 = v29.origin;
  v19 = v29.size;
  PKSizeAlignedInRect();
  [v14 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v29, 0, sizeof(v29));
  v37.origin = v18;
  v37.size = v19;
  CGRectDivide(v37, &slice, &v29, v16 + 16.0, CGRectMaxYEdge);
  PKSizeAlignedInRect();
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v24 = *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  MidX = CGRectGetMidX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MidY = CGRectGetMidY(v39);
  v27 = v24 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
  swift_beginAccess();
  *v27 = MidX;
  *(v27 + 8) = MidY;
  *(v27 + 16) = 0;
  return sub_1BD632A40(MidX, MidY);
}

id sub_1BD9BAE20(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31[-v10 - 8];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31[-v14 - 8];
  sub_1BD113234(a1, v31);
  if ((v32 - 1) < 5)
  {
    (*(v4 + 104))(v11, *MEMORY[0x1E69B8050], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B69E0;
    v17 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
    swift_beginAccess();
    v18 = *(v1 + v17);
    if (v18 && (v19 = [v18 minimalFormattedStringValue]) != 0)
    {
      v20 = v19;
      v21 = sub_1BE052434();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1BD110550();
    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v23)
    {
      v25 = v23;
    }

    *(v16 + 32) = v24;
    *(v16 + 40) = v25;
    v26 = sub_1BE04B714();

    (*(v4 + 8))(v11, v3);
    return v26;
  }

  if (v32 == 6)
  {
    (*(v4 + 104))(v7, *MEMORY[0x1E69B8050], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v29 = result;
      v26 = sub_1BE04B6F4();

      (*(v4 + 8))(v7, v3);
      return v26;
    }

    __break(1u);
  }

  else
  {
    if (v32)
    {
      sub_1BD11326C(v31);
      return 0;
    }

    (*(v4 + 104))(v15, *MEMORY[0x1E69B8050], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v26 = sub_1BE04B6F4();

      (*(v4 + 8))(v15, v3);
      return v26;
    }
  }

  __break(1u);
  return result;
}

id sub_1BD9BB180(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49[-v18];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49[-v22];
  sub_1BD113234(a1, v53);
  if (v54 <= 3)
  {
    if (v54 < 2)
    {
      (*(v4 + 104))(v23, *MEMORY[0x1E69B8050], v3);
      result = PKPassKitBundle();
      if (result)
      {
        v35 = result;
        v25 = sub_1BE04B6F4();

        (*(v4 + 8))(v23, v3);
        return v25;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if ((v54 - 2) < 2)
    {
      (*(v4 + 104))(v19, *MEMORY[0x1E69B8050], v3);
      result = PKPassKitBundle();
      if (result)
      {
        v24 = result;
        v25 = sub_1BE04B6F4();

        (*(v4 + 8))(v19, v3);
        return v25;
      }

      goto LABEL_36;
    }

LABEL_17:
    sub_1BD11326C(v53);
    return 0;
  }

  if (v54 == 4)
  {
    (*(v4 + 104))(v15, *MEMORY[0x1E69B8050], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v25 = sub_1BE04B6F4();

      (*(v4 + 8))(v15, v3);
      return v25;
    }

    goto LABEL_37;
  }

  if (v54 != 5)
  {
    if (v54 == 6)
    {
      (*(v4 + 104))(v7, *MEMORY[0x1E69B8050], v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1BE0B6CA0;
      v27 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
      swift_beginAccess();
      v28 = *(v1 + v27);
      if (v28 && (v29 = [v28 minimalFormattedStringValue]) != 0)
      {
        v30 = v29;
        v31 = sub_1BE052434();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      v38 = MEMORY[0x1E69E6158];
      *(v26 + 56) = MEMORY[0x1E69E6158];
      v39 = sub_1BD110550();
      *(v26 + 64) = v39;
      if (v33)
      {
        v40 = v31;
      }

      else
      {
        v40 = 0;
      }

      if (v33)
      {
        v41 = v33;
      }

      else
      {
        v41 = 0xE000000000000000;
      }

      *(v26 + 32) = v40;
      *(v26 + 40) = v41;
      v42 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
      swift_beginAccess();
      sub_1BD0EE8CC(v1 + v42, v50);
      v43 = v51;
      v44 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v45 = (*(v44 + 24))(v43, v44);
      *(v26 + 96) = v38;
      *(v26 + 104) = v39;
      if (v46)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0;
      }

      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      *(v26 + 72) = v47;
      *(v26 + 80) = v48;
      __swift_destroy_boxed_opaque_existential_0(v50);
      v25 = sub_1BE04B714();

      (*(v4 + 8))(v7, v3);
      return v25;
    }

    goto LABEL_17;
  }

  (*(v4 + 104))(v11, *MEMORY[0x1E69B8050], v3);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v25 = sub_1BE04B6F4();

    (*(v4 + 8))(v11, v3);
    return v25;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BD9BB6BC()
{
  v0 = sub_1BE051F54();
  v27 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FC4();
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v22 - v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v18 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v23 = *(v9 + 8);
  v23(v12, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD267104;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1BD267328;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_95;
  v20 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD9BE4B0(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v16, v7, v3, v20);
  _Block_release(v20);

  (*(v27 + 8))(v3, v0);
  (*(v25 + 8))(v7, v26);
  return (v23)(v16, v24);
}

void sub_1BD9BBAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v51 - v8;
  v10 = sub_1BE04B824();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04C4C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a3;
  sub_1BD113234(a3, &v67);
  if (*(&v68 + 1) > 6uLL)
  {
    v54 = v19;
    v55 = v16;
    v30 = v15;
    v52 = v9;
    v53 = v11;
    sub_1BD043990(&v67, v66);
    v31 = *&v4[OBJC_IVAR___PKNearbyPeerPaymentViewController_errorView];
    sub_1BD0EE8CC(v66, v65);
    v32 = OBJC_IVAR____TtC9PassKitUI26NearbyPeerPaymentErrorView_error;
    swift_beginAccess();
    sub_1BD266DC0(v65, v31 + v32);
    swift_endAccess();
    sub_1BD97A1FC();
    sub_1BD0DE53C(v65, &qword_1EBD3F678);
    v56 = v4;
    v33 = [v4 view];
    if (!v33)
    {
      goto LABEL_46;
    }

    v34 = v33;
    [v33 addSubview_];

    sub_1BD0EE8CC(v66, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F6D0);
    v35 = swift_dynamicCast();
    v36 = v14;
    v38 = v54;
    v37 = v55;
    if (v35)
    {
      v39 = v30;
      sub_1BD043990(&v59, v65);
      v40 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
      v41 = v56;
      swift_beginAccess();
      sub_1BD0EE8CC(&v41[v40], v62);
      v42 = v63;
      v43 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v43 + 32))(v42, v43);
      sub_1BE04C454();
      (*(v37 + 8))(v38, v39);
      sub_1BE04B8B4();

      __swift_destroy_boxed_opaque_existential_0(v65);
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      sub_1BD0DE53C(&v59, &unk_1EBD47840);
    }

    v24 = v58;
    sub_1BD0EE8CC(v66, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F6E0);
    if (swift_dynamicCast())
    {
      sub_1BD043990(&v59, v65);
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      v44 = v52;
      sub_1BE04B854();
      v45 = v53;
      if ((*(v53 + 48))(v44, 1, v10) == 1)
      {
        __swift_destroy_boxed_opaque_existential_0(v66);
        sub_1BD0DE53C(v44, &unk_1EBD3F6C0);
      }

      else
      {
        (*(v45 + 32))(v36, v44, v10);
        _s9PassKitUI9AnalyticsO27trackNearbyPeerPaymentError13analyticsInfoy0aB4Core0fgH0O0dK0V_tFZ_0();
        (*(v45 + 8))(v36, v10);
        __swift_destroy_boxed_opaque_existential_0(v66);
      }

      __swift_destroy_boxed_opaque_existential_0(v65);
      v26 = v56;
      v27 = v57;
      v24 = v58;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v66);
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      sub_1BD0DE53C(&v59, &qword_1EBD3F6E8);
      v26 = v56;
      v27 = v57;
    }
  }

  else
  {
    if (((1 << SBYTE8(v68)) & 0x4B) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      v21 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v22;
      v23 = v21;
      v24 = v58;
      v25 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      v26 = v4;
      sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
      v27 = v57;
      _s9PassKitUI9AnalyticsO30trackNearbyPeerPaymentSendFlow5state4withyAA0fgH11SenderStateO_SDySo14PKAnalyticsKeyaSSGtFZ_0(v57, v25);

      goto LABEL_18;
    }

    v26 = v4;
    if (((1 << SBYTE8(v68)) & 0x30) != 0)
    {
      v27 = v57;
      sub_1BD9BCA40(v57);
      v28 = [v4 view];
      v24 = v58;
      if (v28)
      {
        v29 = v28;
        [v28 setNeedsLayout];

        goto LABEL_18;
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    sub_1BD11326C(&v67);
    v27 = v57;
    v24 = v58;
  }

LABEL_18:
  sub_1BD113234(v24, &v67);
  sub_1BD113234(v27, &v70);
  if (*(&v68 + 1) <= 2)
  {
    if (*(&v68 + 1))
    {
      if (*(&v68 + 1) == 1)
      {
        if (v71 == 1)
        {
LABEL_43:
          sub_1BD11326C(&v67);
          return;
        }
      }

      else if (*(&v68 + 1) == 2 && v71 == 2)
      {
        goto LABEL_43;
      }
    }

    else if (!v71)
    {
      goto LABEL_43;
    }
  }

  else if (*(&v68 + 1) > 4)
  {
    if (*(&v68 + 1) == 5)
    {
      if (v71 == 5)
      {
        goto LABEL_43;
      }
    }

    else if (*(&v68 + 1) == 6 && v71 == 6)
    {
      goto LABEL_43;
    }
  }

  else if (*(&v68 + 1) == 3)
  {
    if (v71 == 3)
    {
      goto LABEL_43;
    }
  }

  else if (v71 == 4)
  {
    goto LABEL_43;
  }

  sub_1BD0DE53C(&v67, &qword_1EBD398E0);
  sub_1BD113234(v24, &v67);
  if (*(&v68 + 1) >= 6uLL)
  {
    if (*(&v68 + 1) == 6)
    {
      return;
    }

    goto LABEL_43;
  }

  sub_1BD11326C(&v67);
  v46 = *&v26[OBJC_IVAR___PKNearbyPeerPaymentViewController_vfxViewController];
  type metadata accessor for NearbyPeerPaymentSenderVFXViewController();
  if (swift_dynamicCastClass())
  {
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BD113234(v27, &v67);
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = v68;
    *(v48 + 24) = v67;
    *(v48 + 40) = v49;
    *(v48 + 56) = v69;
    v50 = v46;
    sub_1BE048964();
    NearbyPeerPaymentSenderVFXViewController.setState(_:completion:)(v27, sub_1BD9BE10C, v48);
  }
}

void sub_1BD9BC2C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD113234(a2, v8);
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = xmmword_1BE0B8E10;
    if (v9 == 6)
    {
      sub_1BD11326C(v8);
      v5 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
      swift_beginAccess();
      sub_1BD0EE8CC(v4 + v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      LOBYTE(v5) = (*(v7 + 72))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v8);
      if ((v5 & 1) == 0)
      {
        sub_1BD9BB6BC();
      }
    }

    else
    {

      sub_1BD0DE53C(v8, &qword_1EBD398E0);
    }
  }
}

uint64_t sub_1BD9BC3E8(uint64_t a1, void *a2)
{
  sub_1BD38EACC(a2);
  v4 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v2 + v4, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 96))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1BD9BC590(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D54();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052FB4();
}

uint64_t sub_1BD9BC6A4(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PKNearbyPeerPaymentViewController_scrollView);

    [v5 setContentSize_];
  }

  return a2();
}

uint64_t sub_1BD9BC774(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

uint64_t sub_1BD9BC8E8(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D04();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

uint64_t sub_1BD9BCA40(uint64_t a1)
{
  sub_1BD9BAE20(a1);
  sub_1BD9BB180(a1);
  sub_1BD113234(a1, v30);
  if ((v31 - 2) >= 5)
  {
    if (v31 == 1)
    {
      v20 = *(*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView);
      v21 = *&v20[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
      v22 = v20;
      v23 = sub_1BE052404();

      [v21 setText_];

      v24 = *&v22[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
      v25 = sub_1BE052404();
      [v24 setText_];

      [v22 setNeedsLayout];
    }

    else
    {
      if (v31)
      {

        return sub_1BD11326C(v30);
      }

      v9 = *(*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) + OBJC_IVAR____TtC9PassKitUI27NearbyPeerPaymentFooterView_stateLabelsView);
      v10 = *&v9[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
      v11 = v9;
      v12 = sub_1BE052404();

      [v10 setText_];

      v13 = *&v11[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
      v14 = sub_1BE052404();
      [v13 setText_];

      [v11 setNeedsLayout];

      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = xmmword_1BE0B8DF0;
      sub_1BD9BAE20(&v26);
      sub_1BD11326C(&v26);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = xmmword_1BE0B8DF0;
      sub_1BD9BB180(&v26);
      sub_1BD11326C(&v26);
      v15 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels);
      v16 = *&v15[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
      v17 = sub_1BE052404();

      [v16 setText_];

      v18 = *&v15[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
      v19 = sub_1BE052404();
      [v18 setText_];

      [v15 setNeedsLayout];
    }
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels);
    v4 = *&v3[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_titleLabel];
    v5 = sub_1BE052404();

    [v4 setText_];

    v6 = *&v3[OBJC_IVAR____TtC9PassKitUI32NearbyPeerPaymentStateLabelsView_subtitleLabel];
    v7 = sub_1BE052404();
    [v6 setText_];

    [v3 setNeedsLayout];
  }
}

id sub_1BD9BCDEC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

uint64_t sub_1BD9BCE3C()
{
  v1 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 80))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void sub_1BD9BCFD0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor);

  v1 = *(v0 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels);
}

id NearbyPeerPaymentSenderViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentSenderViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD9BD0E8(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D54();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052FB4();
}

uint64_t sub_1BD9BD230(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

uint64_t sub_1BD9BD3A4(uint64_t a1, uint64_t a2)
{
  sub_1BD0E5E8C(0, &qword_1EBD3F5A0);
  sub_1BE051D04();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE052FB4();
}

char *sub_1BD9BD508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v93 = a3;
  v94 = a4;
  v92 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v88 - v11;
  v13 = sub_1BE04C4C4();
  v100 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v90 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v88 - v18;
  v20 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_lockStateMonitor;
  type metadata accessor for LockStateMonitor();
  swift_allocObject();
  v21 = sub_1BD4DA4FC();
  v91 = v20;
  *(v5 + v20) = v21;
  *(v5 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_restartMonitoring) = 0;
  v22 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_spinnerStateLabels;
  *(v5 + v22) = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentStateLabelsView()) init];
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v23 = sub_1BD148F70(0xD000000000000012, 0x80000001BE12B060);
  if ((v24 & 1) == 0)
  {
    goto LABEL_26;
  }

  v95 = a5;
  v25 = *(*(a1 + 56) + 8 * v23);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_26:
    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000006BLL, 0x80000001BE1456D0);
    v86 = sub_1BE052254();
    MEMORY[0x1BFB3F610](v86);

    while (1)
    {
LABEL_29:
      sub_1BE053994();
      __break(1u);
    }
  }

  v26 = MEMORY[0x1BFB37B30]();
  v28 = v27;
  sub_1BE04A1B4();
  swift_allocObject();
  sub_1BE04A1A4();
  sub_1BD9BE4B0(&qword_1EBD478C8, MEMORY[0x1E69B82C0]);
  v96 = v28;
  v97 = v26;
  sub_1BE04A194();

  if (!*(a1 + 16))
  {
LABEL_28:
    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000068, 0x80000001BE145780);
    v87 = sub_1BE052254();
    MEMORY[0x1BFB3F610](v87);

    goto LABEL_29;
  }

  sub_1BD148F70(0x74736F486975, 0xE600000000000000);
  v98 = v12;
  v99 = v25;
  if ((v29 & 1) == 0)
  {
LABEL_10:
    if (*(a1 + 16))
    {
      sub_1BD148F70(0x516465646F636E65, 0xEC00000065746F75);
      if (v36)
      {
        v89 = v19;
        swift_unknownObjectRetain();
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          sub_1BD0E5E8C(0, &qword_1EBD4B1B8);
          sub_1BD0E5E8C(0, &qword_1EBD39A30);
          v39 = MEMORY[0x1BFB37B30](v38);
          v41 = v40;
          v42 = sub_1BE052CB4();
          sub_1BD1245AC(v39, v41);
          if (v42)
          {

            v35 = v100;
            v43 = v90;
            v19 = v89;
            (*(v100 + 16))(v90, v89, v13);
            v44 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
            swift_allocObject();
            v45 = v42;
            v46 = sub_1BD1258D4(v43, v45);

            sub_1BD116BC8();
            v102 = v44;
            v103 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;

LABEL_15:
            swift_unknownObjectRelease();
            *&v101 = v46;
            sub_1BD043990(&v101, v6 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor);
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
      }
    }

    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v31 = [v30 unsignedIntegerValue];
  swift_unknownObjectRelease();
  if (v31 != 1)
  {
    if (v31)
    {
      goto LABEL_29;
    }

    if (*(a1 + 16))
    {
      sub_1BD148F70(0x516465646F636E65, 0xEC00000065746F75);
      if (v75)
      {
        v89 = v19;
        swift_unknownObjectRetain();
        objc_opt_self();
        v76 = swift_dynamicCastObjCClass();
        if (v76)
        {
          v77 = v76;
          sub_1BD0E5E8C(0, &qword_1EBD4B1B8);
          sub_1BD0E5E8C(0, &qword_1EBD39A30);
          v78 = MEMORY[0x1BFB37B30](v77);
          v80 = v79;
          v81 = sub_1BE052CB4();
          sub_1BD1245AC(v78, v80);
          if (v81)
          {

            v35 = v100;
            v82 = v90;
            v83 = v89;
            (*(v100 + 16))(v90, v89, v13);
            v84 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
            swift_allocObject();
            v85 = v81;
            v46 = sub_1BD1258D4(v82, v85);

            sub_1BD116BC8();
            v102 = v84;
            v103 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;

            v19 = v83;
            goto LABEL_15;
          }
        }

        swift_unknownObjectRelease();
      }
    }

    goto LABEL_28;
  }

  v32 = type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor(0);
  swift_allocObject();
  MockNearbyPeerPaymentDiscoveryMonitor.init()();
  v33 = (v5 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor);
  v33[3] = v32;
  v33[4] = &protocol witness table for MockNearbyPeerPaymentDiscoveryMonitor;
  *v33 = v34;
  v35 = v100;
LABEL_16:
  v47 = v13;
  sub_1BE048964();
  v48 = sub_1BD4DA364();

  *(v6 + OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_currentLockState) = v48 & 1;
  v49 = v93;
  sub_1BE048964();
  v50 = v95;
  sub_1BE048964();
  v51 = NearbyPeerPaymentViewController.init(context:screenEdgeSwipeAction:dismissAction:)(1, v92, v49, v94, v50);
  v52 = sub_1BE04C3F4();
  v53 = OBJC_IVAR___PKNearbyPeerPaymentViewController_amount;
  swift_beginAccess();
  v54 = *&v51[v53];
  *&v51[v53] = v52;
  v55 = v52;

  sub_1BD38D490();
  v56 = sub_1BE04C4A4();
  v57 = v19;
  v59 = v58;
  v60 = *&v51[OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView];
  v61 = sub_1BE04C4A4();
  v63 = v62;
  v64 = *(v35 + 56);
  v65 = v35;
  v66 = v98;
  v64(v98, 1, 1, v47);
  sub_1BD28D16C(v61, v63, v66);

  sub_1BD0DE53C(v66, &unk_1EBD476F0);
  v67 = &v51[OBJC_IVAR___PKNearbyPeerPaymentViewController_memo];
  swift_beginAccess();
  *v67 = v56;
  v67[1] = v59;

  v68 = &v51[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor];
  swift_beginAccess();
  v69 = *(v68 + 24);
  v70 = *(v68 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v71 = *(v70 + 56);
  v72 = v51;
  v71(v51, &protocol witness table for NearbyPeerPaymentSenderViewController, v69, v70);
  swift_endAccess();
  *(*&v72[OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_lockStateMonitor] + 24) = &off_1F3BCA100;
  swift_unknownObjectWeakAssign();
  v73 = [objc_opt_self() defaultCenter];
  [v73 addObserver:v72 selector:sel_applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  sub_1BD1245AC(v97, v96);
  swift_unknownObjectRelease();
  (*(v65 + 8))(v57, v47);
  return v72;
}

id sub_1BD9BE42C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_metadataView) setAlpha_];
  [*(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_footerView) setAlpha_];
  v2 = *(v1 + OBJC_IVAR___PKNearbyPeerPaymentViewController_divider);

  return [v2 setAlpha_];
}

uint64_t sub_1BD9BE4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD9BE558@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v94 = sub_1BE04FFC4();
  v95 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v3);
  v93 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB48);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v5);
  v92 = &v88 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB50);
  v99 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v7);
  v97 = &v88 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB58);
  MEMORY[0x1EEE9AC00](v108, v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v88 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v88 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AB60);
  MEMORY[0x1EEE9AC00](v106, v20);
  v107 = &v88 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v22);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v88 - v27;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8);
  MEMORY[0x1EEE9AC00](v104, v29);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v88 - v34;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48950);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v36);
  v38 = &v88 - v37;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D0);
  MEMORY[0x1EEE9AC00](v105, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v116 = *(v2 + 16);
  v47 = *(&v116 + 1);
  if (*(&v116 + 1))
  {
    v97 = v46;
    v98 = v45;
    v99 = (&v88 - v44);
    v48 = v116;
    v110 = *v2;
    v49 = *v2;
    v50 = *(v2 + 64);
    v113 = *(v2 + 48);
    v114 = v50;
    v115 = v49;
    sub_1BE048C84();
    sub_1BD206260(&v110, &v111);
    sub_1BD1BCE40(&v116, &v111);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
    sub_1BE051914();
    v113 = __PAIR128__(v47, v48);
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE051E24();
    v51 = v2;
    if (*(v2 + 32))
    {
      v52 = sub_1BE051224();
    }

    else
    {
      v52 = sub_1BE051264();
    }

    v59 = v52;
    KeyPath = swift_getKeyPath();
    (*(v102 + 32))(v35, v28, v103);
    v61 = v104;
    v62 = &v35[*(v104 + 36)];
    *v62 = KeyPath;
    v62[1] = v59;
    v63 = sub_1BD4F0E9C();
    MEMORY[0x1BFB3DDE0](1, v61, v63);
    sub_1BD9BF1C0(v35);
    v113 = v110;
    *&v111 = v61;
    *(&v111 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    v64 = v97;
    v65 = v101;
    sub_1BE050C34();
    sub_1BD1BCDE4(&v110);
    v100[1](v38, v65);
    v66 = *(v51 + 64);
    v113 = *(v51 + 48);
    v114 = v66;
    MEMORY[0x1BFB3E970](&v111, v96);
    v113 = v111;
    v67 = v98;
    sub_1BE04EB94();

    sub_1BD0DE53C(v64, &qword_1EBD488D0);
    sub_1BE052434();
    v68 = v99;
    sub_1BE04EBB4();

    sub_1BD0DE53C(v67, &qword_1EBD488D0);
    sub_1BD0DE19C(v68, v107, &qword_1EBD488D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F0DA4();
    sub_1BD9BF270();
    sub_1BE04F9A4();
    v69 = v68;
    v70 = &qword_1EBD488D0;
  }

  else
  {
    v53 = v91;
    v90 = v11;
    v100 = v15;
    v101 = v19;
    v54 = *v2;
    v55 = *(v2 + 48);
    v114 = *(v2 + 64);
    v115 = v54;
    v56 = *(v2 + 64);
    v111 = *(v2 + 48);
    v112 = v56;
    v113 = v55;
    swift_bridgeObjectRetain_n();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
    sub_1BE051914();
    v111 = v115;
    sub_1BD0DDEBC();
    sub_1BE051E14();
    v57 = *(v2 + 32);
    v88 = v2;
    if (v57)
    {
      v58 = sub_1BE051224();
    }

    else
    {
      v58 = sub_1BE051264();
    }

    v71 = v58;
    v72 = v53;
    v73 = v93;
    v74 = swift_getKeyPath();
    (*(v102 + 32))(v31, v24, v103);
    v75 = v104;
    v76 = &v31[*(v104 + 36)];
    *v76 = v74;
    v76[1] = v71;
    sub_1BE04FFB4();
    v77 = sub_1BD4F0E9C();
    v78 = sub_1BD9BF228(&qword_1EBD5AB68, MEMORY[0x1E697CA80]);
    v79 = v92;
    v80 = v94;
    sub_1BE050AF4();
    (*(v95 + 8))(v73, v80);
    sub_1BD9BF1C0(v31);
    *&v111 = v75;
    *(&v111 + 1) = v80;
    *&v112 = v77;
    *(&v112 + 1) = v78;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v82 = v97;
    v83 = v98;
    MEMORY[0x1BFB3DDE0](1, v98, OpaqueTypeConformance2);
    (*(v96 + 8))(v79, v83);
    v111 = v115;
    *&v110 = v83;
    *(&v110 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v84 = v90;
    sub_1BE050C34();
    sub_1BD1BCDE4(&v115);
    v99[1](v82, v72);
    v111 = v113;
    v112 = v114;
    MEMORY[0x1BFB3E970](&v110, v89);
    v111 = v110;
    v85 = v100;
    sub_1BE04EB94();

    sub_1BD0DE53C(v84, &qword_1EBD5AB58);
    sub_1BE052434();
    v86 = v101;
    sub_1BE04EBB4();

    sub_1BD0DE53C(v85, &qword_1EBD5AB58);
    sub_1BD0DE19C(v86, v107, &qword_1EBD5AB58);
    swift_storeEnumTagMultiPayload();
    sub_1BD4F0DA4();
    sub_1BD9BF270();
    sub_1BE04F9A4();
    v69 = v86;
    v70 = &qword_1EBD5AB58;
  }

  return sub_1BD0DE53C(v69, v70);
}

uint64_t sub_1BD9BF1C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9BF228(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD9BF270()
{
  result = qword_1EBD5AB70;
  if (!qword_1EBD5AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD488D8);
    sub_1BE04FFC4();
    sub_1BD4F0E9C();
    sub_1BD9BF228(&qword_1EBD5AB68, MEMORY[0x1E697CA80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD9BF228(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB70);
  }

  return result;
}

unint64_t sub_1BD9BF3FC()
{
  result = qword_1EBD5AB78;
  if (!qword_1EBD5AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5AB80);
    sub_1BD4F0DA4();
    sub_1BD9BF270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB78);
  }

  return result;
}

id sub_1BD9BF498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(PKBarcodeStickerView) initWithBarcode:a2 validityState:a3];
  if (!v3)
  {
    v3 = [objc_allocWithZone(PKBarcodeStickerView) init];
  }

  v4 = v3;
  [v4 pkui:1 setExcludedFromScreenCapture:1 andBroadcasting:?];
  [v4 setOverrideUserInterfaceStyle_];
  [v4 setAccessibilityIgnoresInvertColors_];

  return v4;
}

uint64_t sub_1BD9BF560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9BF6A8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD9BF5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9BF6A8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD9BF628()
{
  sub_1BD9BF6A8();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD9BF654()
{
  result = qword_1EBD5AB88;
  if (!qword_1EBD5AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB88);
  }

  return result;
}

unint64_t sub_1BD9BF6A8()
{
  result = qword_1EBD5AB90;
  if (!qword_1EBD5AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB90);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EqualWidthHStack(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BD9BF738(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  result = sub_1BE052B04();
  if (v17 != v16)
  {
    sub_1BD9BF8BC(a5, a1, a2 & 1, a3, a4 & 1, a7, a8 & 1);
    sub_1BE052AD4();
    sub_1BE052B04();
    result = sub_1BE052AF4();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1BE052AD4();
      sub_1BE052B04();
      return sub_1BE052AF4();
    }
  }

  return result;
}

uint64_t sub_1BD9BF8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = a7;
  v32 = a6;
  v35 = a3;
  v34 = a2;
  v8 = sub_1BE04E724();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABA0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - v16;
  v18 = sub_1BE04E854();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  v19 = *(v14 + 44);
  sub_1BD5A7878();
  v36 = a1;
  sub_1BE052AD4();
  v20 = (v9 + 16);
  v21 = (v9 + 8);
  v22 = 0.0;
  v23 = 0.0;
  while (1)
  {
    sub_1BE052B04();
    if (*&v17[v19] == v38[0])
    {
      break;
    }

    v24 = sub_1BE052B34();
    (*v20)(v12);
    v24(v38, 0);
    sub_1BE052B14();
    sub_1BE04EDA4();
    LOBYTE(v38[0]) = v25 & 1;
    v37 = v26 & 1;
    sub_1BE04E6F4();
    v28 = v27;
    v30 = v29;
    (*v21)(v12, v8);
    if (v28 > v23)
    {
      v23 = v28;
    }

    if (v30 > v22)
    {
      v22 = v30;
    }
  }

  sub_1BD9BFFC4(v17);
  sub_1BE052AD4();
  sub_1BE052B04();
  result = sub_1BE052AF4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1BE052AD4();
    sub_1BE052B04();
    return sub_1BE052AF4();
  }

  return result;
}

uint64_t sub_1BD9BFC00(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, char a12)
{
  v40 = a3;
  v41 = a11;
  v21 = sub_1BE04E724();
  v39 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  result = sub_1BE052B04();
  if (v43 == v42)
  {
    return result;
  }

  v26 = a2 & 1;
  LOBYTE(v43) = a2 & 1;
  LOBYTE(v42) = a4 & 1;
  v27 = v41;
  sub_1BD9BF8BC(a5, a1, v26, v40, a4 & 1, v41, a12 & 1);
  v29 = v28;
  v44.origin.x = a6;
  v44.origin.y = a7;
  v44.size.width = a8;
  v44.size.height = a9;
  MinX = CGRectGetMinX(v44);
  sub_1BE052AD4();
  sub_1BE052B04();
  v31 = v42;
  result = v43;
  if (v42 < v43)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v43 == v42)
  {
    return result;
  }

  if (v43 >= v42)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = *&v27;
  v33 = MinX + v29 * 0.5;
  v34 = (v39 + 8);
  v35 = v32;
  if (a12)
  {
    v35 = 0.0;
  }

  v36 = v35 + v29;
  do
  {
    v37 = result + 1;
    sub_1BE04E864();
    v45.origin.x = a6;
    v45.origin.y = a7;
    v45.size.width = a8;
    v45.size.height = a9;
    CGRectGetMidY(v45);
    sub_1BE051EA4();
    LOBYTE(v43) = 0;
    LOBYTE(v42) = 0;
    sub_1BE04E704();
    (*v34)(v24, v21);
    v33 = v36 + v33;
    result = v37;
  }

  while (v31 != v37);
  return result;
}

void (*sub_1BD9BFEE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE04E0F4();
  return sub_1BD122AB4;
}

unint64_t sub_1BD9BFF70()
{
  result = qword_1EBD5AB98;
  if (!qword_1EBD5AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5AB98);
  }

  return result;
}

uint64_t sub_1BD9BFFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD9C0030()
{
  result = qword_1EBD5ABA8;
  if (!qword_1EBD5ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABA8);
  }

  return result;
}

uint64_t sub_1BD9C0084(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD1337F4;

  return sub_1BD5417D4(1, 0, 0);
}

uint64_t sub_1BD9C0150()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB818);
  __swift_project_value_buffer(v9, qword_1EBDAB818);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD9C0364()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABE0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABD8);
  __swift_allocate_value_buffer(v2, qword_1EBDAB830);
  __swift_project_value_buffer(v2, qword_1EBDAB830);
  sub_1BD035EBC();
  sub_1BE048DA4();
  sub_1BE048D94();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABE8);
  sub_1BE048D84();

  sub_1BE048D94();
  return sub_1BE048DB4();
}

uint64_t sub_1BD9C04D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB818);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD9C0578(uint64_t a1)
{
  v2 = sub_1BD9C0A94();

  return MEMORY[0x1EEDB2E78](a1, v2);
}

uint64_t sub_1BD9C05B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AC00);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AC08);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABE8);
  sub_1BE048CC4();

  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD9C0744(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1BD9C0A94();
  v6 = sub_1BD9C0AE8();
  v7 = sub_1BD1CCCE8();
  *v4 = v2;
  v4[1] = sub_1BD519558;

  return MEMORY[0x1EEDB3C90](a2, v5, v6, v7);
}

uint64_t sub_1BD9C0810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD0354E0();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9C0838@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36FF0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5ABD8);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB830);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD9C08F0()
{
  result = qword_1EBD5ABC0;
  if (!qword_1EBD5ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABC0);
  }

  return result;
}

uint64_t sub_1BD9C0948(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v8[2] = a1[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_1BD0303B8(v8, v7);
  sub_1BE048884();
  return sub_1BD030458(v8);
}

void (*sub_1BD9C09AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

unint64_t sub_1BD9C0A30()
{
  result = qword_1EBD5ABC8;
  if (!qword_1EBD5ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5ABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABC8);
  }

  return result;
}

unint64_t sub_1BD9C0A94()
{
  result = qword_1EBD5ABF0;
  if (!qword_1EBD5ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABF0);
  }

  return result;
}

unint64_t sub_1BD9C0AE8()
{
  result = qword_1EBD5ABF8;
  if (!qword_1EBD5ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5ABF8);
  }

  return result;
}

void sub_1BD9C0B40(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product);
  v5 = type metadata accessor for ProvisioningMultiCredentialFlowSection();
  v6 = objc_allocWithZone(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_foregroundCredentialsToProvision] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_backgroundPendingProvisionings] = v7;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_isPreflightingBackgroundPendingProvisioningsInProcess] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_blockingFlowItem] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_provisionedPassesGroups] = v7;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__hasRemainingCredentialsToProvision] = &type metadata for HasRemainingCredentialsToProvision;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection__isCardsOnFileProvisioning] = &type metadata for IsCardsOnFileProvisioning;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_identifier];
  *v8 = 0xD00000000000001ALL;
  v8[1] = 0x80000001BE1228D0;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_context] = v3;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_credentials] = a1;
  *&v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_product] = v4;
  v6[OBJC_IVAR____TtC9PassKitUI38ProvisioningMultiCredentialFlowSection_allowManualEntry] = 0;
  v14.receiver = v6;
  v14.super_class = v5;
  sub_1BE048964();
  sub_1BE048C84();
  v9 = v4;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BCA500, v10, &off_1F3BA3CD0, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1BD9C0DEC()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  sub_1BE04BA54();
  v7 = *(v3 + 8);
  v7(v6, v2);
  sub_1BE052434();
  v8 = sub_1BE04BB74();

  v9 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v10 = sub_1BE04B9A4();
  v7(v6, v2);
  v11 = *&v1[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product];
  v12 = v1[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry];
  v13 = objc_allocWithZone(PKPaymentSetupCredentialsViewController);
  sub_1BD71D990();
  sub_1BE048C84();
  v14 = v8;
  v15 = sub_1BE052724();

  v16 = [v13 initWithProvisioningController:v9 context:v10 credentials:v15 product:v11 allowsManualEntry:v12 reporter:v14];

  v55 = v14;
  [v16 setFlowDelegate_];
  KeyPath = swift_getKeyPath();
  v58 = sub_1BD187580(v1, KeyPath) & 1;
  v59 = v18;
  v60 = v19;
  sub_1BD4F8958();
  v20 = v59;
  v21 = *(v59 + 16);
  v56 = v16;
  if (v21 && (sub_1BE053D04(), sub_1BE052524(), v22 = sub_1BE053D64(), v23 = -1 << *(v20 + 32), v24 = v22 & ~v23, ((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
  {
    v25 = ~v23;
    v26 = 2;
    while (1)
    {
      v27 = *(*(v20 + 48) + v24);
      if (v27 != 1 && v27 != 2)
      {
        break;
      }

      v28 = sub_1BE053B84();

      if (v28)
      {
        goto LABEL_11;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_11:
    v29 = v60;
    if (*(v60 + 16) && (sub_1BE053D04(), sub_1BE052524(), v30 = sub_1BE053D64(), v31 = -1 << *(v29 + 32), v32 = v30 & ~v31, ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = *(*(v29 + 48) + v32);
        if (v34 != 1 && v34 != 2)
        {
          break;
        }

        v35 = sub_1BE053B84();

        if (v35)
        {
          v16 = v56;
          v26 = 2;
          goto LABEL_20;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v26 = 2;
    }

    else
    {
LABEL_18:
      v26 = 1;
    }

LABEL_19:
    v16 = v56;
  }

  else
  {
    v26 = 2;
  }

LABEL_20:
  v36 = v58;
  v37 = v60;
  v38 = v1;
  sub_1BD12F790(v36, v20, v37, v38, KeyPath);

  [v16 setShowPrivacyDisclosure_];
  v39 = swift_getKeyPath();
  v54 = sub_1BD187580(v38, v39);
  v41 = v40;
  v43 = v42;
  sub_1BE053D04();
  sub_1BE052524();
  v44 = sub_1BE053D64();
  v45 = -1 << *(v43 + 32);
  v46 = v44 & ~v45;
  if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v45;
    while (1)
    {
      v48 = *(*(v43 + 48) + v46);
      if (v48 != 1 && v48 != 2)
      {
        break;
      }

      v49 = sub_1BE053B84();

      if (v49)
      {
        goto LABEL_27;
      }

      v46 = (v46 + 1) & v47;
      if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v43;
    sub_1BD2A9690(0, v46, isUniquelyReferenced_nonNull_native);
    v43 = v57;
  }

LABEL_27:
  v51 = v38;
  sub_1BD12F790(v54 & 1, v41, v43, v51, v39);

  return v56;
}

uint64_t sub_1BD9C1444()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9C1480(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9C1638()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry);
    v4 = type metadata accessor for PaymentSetupProductManualEntryFlowSection();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod;
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod] = 0;
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v7 = &v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier];
    *v7 = 0xD00000000000001DLL;
    v7[1] = 0x80000001BE12CB20;
    v8 = v2;
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context] = sub_1BE04BC14();
    *&v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product] = v8;
    v9 = *&v5[v6];
    *&v5[v6] = 0;
    v10 = v8;

    v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry] = v3;
    v5[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedTransferCard] = 0;
    v19.receiver = v5;
    v19.super_class = v4;
    v11 = objc_msgSendSuper2(&v19, sel_init);

    v12 = &off_1F3B9F388;
  }

  else
  {
    v13 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v14 = sub_1BE048964();
    v11 = sub_1BD87126C(v14, 1, 0);
    v12 = &off_1F3BC0AB0;
  }

  v15 = v1 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BCA500, v11, v12, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD9C1820()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

char *sub_1BD9C18D0(void (*a1)(void, void, void, void), uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v117 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v107 = v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AE98);
  v8 = *(v7 - 8);
  v105 = v7;
  v106 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v104 = v94 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v115 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v11);
  v100 = v94 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D250);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v13);
  v101 = v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D240);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v119 = v94 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AEA8);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v18);
  v20 = v94 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AEB0);
  v99 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v21);
  v98 = v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = v94 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE90);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = v94 - v31;
  v33 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource__messages;
  v34 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BD10);
  sub_1BE04D874();
  (*(v29 + 32))(&v3[v33], v32, v28);
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_localMessages] = v34;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessages] = v34;
  v35 = MEMORY[0x1E69E7CD0];
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessagePendingDismissalIds] = MEMORY[0x1E69E7CD0];
  v36 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateLocalMessagePublisher;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5AEB8);
  swift_allocObject();
  *&v3[v36] = sub_1BE04D834();
  v38 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateEngagementMessagePublisher;
  v111 = v37;
  swift_allocObject();
  *&v3[v38] = sub_1BE04D834();
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_cancellables] = v35;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_iconSize] = vdupq_n_s64(0x4046800000000000uLL);
  v39 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider;
  *&v3[v39] = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v40 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService;
  *&v3[v40] = [objc_opt_self() sharedInstance];
  v41 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService;
  *&v3[v41] = [objc_opt_self() sharedInstance];
  v42 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentActionSheet];
  *v42 = 0;
  v42[1] = 0;
  v43 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource__presentContactSupport;
  LOBYTE(v121) = 0;
  sub_1BE04D874();
  v44 = *(v24 + 32);
  v109 = v23;
  v44(&v3[v43], v27, v23);
  v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_rdfiTransferCompleted] = 0;
  v45 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_presentDestinationWithConfiguration];
  *v45 = 0;
  v45[1] = 0;
  v46 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountStatus];
  strcpy(&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountStatus], "accountStatus");
  *(v46 + 7) = -4864;
  v47 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierFCCStepUpCompletion];
  *v47 = 0xD000000000000013;
  v47[1] = 0x80000001BE146380;
  v48 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountAPYUpdate];
  *v48 = 0xD000000000000010;
  v48[1] = 0x80000001BE1463A0;
  v49 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierSavingsInterest];
  *v49 = 0x4973676E69766173;
  v49[1] = 0xEF7473657265746ELL;
  v50 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAddBeneficiary];
  strcpy(&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAddBeneficiary], "addBeneficiary");
  v50[15] = -18;
  v51 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierAccountNegativeBalance];
  *v51 = 0xD000000000000016;
  v51[1] = 0x80000001BE1463C0;
  v52 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierTransferCash];
  *v52 = 0xD000000000000013;
  v52[1] = 0x80000001BE1463E0;
  v53 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierHold];
  strcpy(&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierHold], "savingsHold-");
  v53[13] = 0;
  *(v53 + 7) = -5120;
  v54 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierCompleteBankVerification];
  *v54 = 0xD000000000000019;
  v54[1] = 0x80000001BE146400;
  v55 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierExpiredBankVerification];
  *v55 = 0xD000000000000018;
  v55[1] = 0x80000001BE146420;
  v56 = &v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_messageIdentifierTriggerBankVerification];
  *v56 = 0xD000000000000017;
  v56[1] = 0x80000001BE146440;
  v57 = v117;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel] = v117;
  *&v3[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_fccStepUpModel] = v114;
  v122.receiver = v3;
  v122.super_class = ObjectType;
  v58 = v57;
  sub_1BE048964();
  v59 = objc_msgSendSuper2(&v122, sel_init);
  v60 = *&v59[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService];
  if (v60)
  {
    [v60 addObserver_];
  }

  v61 = *&v59[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider];
  if (v61)
  {
    [v61 addDelegate_];
  }

  v62 = *&v59[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService];
  if (v62)
  {
    [v62 registerObserver_];
  }

  v95 = v58;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD30);
  sub_1BE04D884();
  swift_endAccess();
  v112 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v63 = sub_1BE052D54();
  v121 = v63;
  v116 = sub_1BE052D14();
  v64 = *(v116 - 8);
  v117 = *(v64 + 56);
  ObjectType = (v64 + 56);
  v65 = v119;
  v117(v119, 1, 1, v116);
  v94[1] = MEMORY[0x1E695C068];
  sub_1BD0DE4F4(&unk_1EBD5AEC8, &qword_1EBD5AEA8);
  v66 = sub_1BD9D1640();
  v67 = v98;
  v68 = v97;
  v113 = v66;
  sub_1BE04D924();
  sub_1BD0DE53C(v65, &unk_1EBD4D240);

  (*(v96 + 8))(v20, v68);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = MEMORY[0x1E695BE98];
  sub_1BD0DE4F4(&qword_1EBD5AED8, &qword_1EBD5AEB0);
  v69 = v59;
  v70 = v108;
  sub_1BE04D954();

  (*(v99 + 8))(v67, v70);
  v108 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_cancellables;
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  swift_beginAccess();
  v71 = v100;
  sub_1BE04D884();
  swift_endAccess();
  v72 = sub_1BE052D54();
  v121 = v72;
  v117(v65, 1, 1, v116);
  v99 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
  v73 = v101;
  v74 = v110;
  sub_1BE04D924();
  sub_1BD0DE53C(v65, &unk_1EBD4D240);

  v75 = *(v115 + 8);
  v115 += 8;
  v98 = v75;
  (v75)(v71, v74);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = sub_1BD0DE4F4(&qword_1EBD4D258, &qword_1EBD4D250);
  v76 = v103;
  sub_1BE04D954();

  v102 = *(v102 + 8);
  (v102)(v73, v76);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  swift_beginAccess();
  sub_1BE04D884();
  swift_endAccess();
  v77 = sub_1BE052D54();
  v121 = v77;
  v78 = v119;
  v117(v119, 1, 1, v116);
  v79 = v110;
  sub_1BE04D924();
  sub_1BD0DE53C(v78, &unk_1EBD4D240);

  (v98)(v71, v79);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE04D954();

  (v102)(v73, v76);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  v121 = *&v69[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateLocalMessagePublisher];
  sub_1BE048964();
  v80 = sub_1BE052D54();
  v120 = v80;
  v81 = v119;
  v117(v119, 1, 1, v116);
  v115 = sub_1BD0DE4F4(&qword_1EBD5AEE0, &unk_1EBD5AEB8);
  v82 = v104;
  sub_1BE04D924();
  sub_1BD0DE53C(v81, &unk_1EBD4D240);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v110 = sub_1BD0DE4F4(&qword_1EBD5AEE8, &unk_1EBD5AE98);
  v83 = v105;
  sub_1BE04D954();

  v109 = *(v106 + 8);
  v109(v82, v83);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  v121 = *&v69[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_updateEngagementMessagePublisher];
  sub_1BE048964();
  v84 = sub_1BE052D54();
  v120 = v84;
  v85 = v119;
  v117(v119, 1, 1, v116);
  sub_1BE04D924();
  sub_1BD0DE53C(v85, &unk_1EBD4D240);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1BE04D954();

  v109(v82, v83);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();

  v86 = sub_1BE0528D4();
  v87 = *(*(v86 - 8) + 56);
  v88 = v107;
  v87(v107, 1, 1, v86);
  v89 = swift_allocObject();
  v89[2] = 0;
  v89[3] = 0;
  v89[4] = v69;
  v90 = v69;
  sub_1BD122C00(0, 0, v88, &unk_1BE10B350, v89);

  v87(v88, 1, 1, v86);
  v91 = swift_allocObject();
  v91[2] = 0;
  v91[3] = 0;
  v91[4] = v90;
  v92 = v90;
  sub_1BD122C00(0, 0, v88, &unk_1BE10B358, v91);

  return v92;
}

uint64_t sub_1BD9C2BA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1BE0528D4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1BD122C00(0, 0, v3, &unk_1BE10B370, v7);
  }

  return result;
}

uint64_t sub_1BD9C2CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE0528D4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_1BD122C00(0, 0, v8, a4, v12);
  }

  return result;
}

uint64_t sub_1BD9C2DDC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_localMessages) = v1;
    sub_1BE048C84();

    sub_1BE048C84();
    v3 = sub_1BE048C84();
    sub_1BDA7B020(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD9C2EB4(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v32 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_32;
    }

    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v30 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessagePendingDismissalIds;
    swift_beginAccess();
    if (v4)
    {
      v5 = 0;
      v6 = v1 & 0xC000000000000001;
      v7 = v1 & 0xFFFFFFFFFFFFFF8;
      v27 = v1;
      v28 = v1 & 0xFFFFFFFFFFFFFF8;
      v31 = v1 + 32;
      v29 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x1BFB40900](v5, v27);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_31;
          }

          v8 = *(v31 + 8 * v5);
        }

        v9 = v8;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v4 = sub_1BE053704();
          goto LABEL_4;
        }

        v11 = [v8 identifier];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1BE052434();
          v15 = v14;

          v16 = *(v3 + v30);
          if (*(v16 + 16))
          {
            v17 = v4;
            v18 = v3;
            sub_1BE053D04();
            sub_1BE048C84();
            sub_1BE052524();
            v19 = sub_1BE053D64();
            v1 = v16 + 56;
            v20 = -1 << *(v16 + 32);
            v21 = v19 & ~v20;
            if ((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
            {
              v22 = ~v20;
              while (1)
              {
                v23 = (*(v16 + 48) + 16 * v21);
                v24 = *v23 == v13 && v23[1] == v15;
                if (v24 || (sub_1BE053B84() & 1) != 0)
                {
                  break;
                }

                v21 = (v21 + 1) & v22;
                if (((*(v1 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              v3 = v18;
              v4 = v17;
              v7 = v28;
              v6 = v29;
              goto LABEL_8;
            }

LABEL_23:

            v3 = v18;
            v4 = v17;
            v7 = v28;
            v6 = v29;
          }

          else
          {
          }
        }

        v1 = &v32;
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
LABEL_8:
        if (v5 == v4)
        {
          v25 = v32;
          goto LABEL_28;
        }
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *(v3 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_engagementMessages) = v25;

    sub_1BE048C84();
    v26 = sub_1BE048C84();
    sub_1BDA7B020(v26);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1BE04D8C4();
  }

  return result;
}

id sub_1BD9C31C4()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_discoveryService];
  if (v2)
  {
    [v2 removeObserver_];
  }

  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_transactionProvider];
  if (v3)
  {
    [v3 removeDelegate_];
  }

  v4 = *&v0[OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService];
  if (v4)
  {
    [v4 unregisterObserver_];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1BD9C3530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = MEMORY[0x1E69E7CC0];
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1BD9C35D0;

  return sub_1BD9C401C();
}

uint64_t sub_1BD9C35D0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C36D0, 0, 0);
}

uint64_t sub_1BD9C36D0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    sub_1BDA7B020(v1);
  }

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1BD9C3770;

  return sub_1BD9C4B38();
}

uint64_t sub_1BD9C3770(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C3870, 0, 0);
}

uint64_t sub_1BD9C3870()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9C5D1C();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v6 = v0[8];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9C6474();
  if (v8)
  {
    v9 = v8;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  if (v4)
  {
    v11 = v0[8];
    v10 = v0[9];
    v0[3] = v0[2];
    sub_1BE048964();
    sub_1BE04D824();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_1BD9C3B28;

    return sub_1BD9C6B5C();
  }
}

uint64_t sub_1BD9C3B28(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C3C28, 0, 0);
}

uint64_t sub_1BD9C3C28()
{
  v1 = v0[11];
  if (v1)
  {
    sub_1BDA7B020(v1);
  }

  sub_1BD9C7E58();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1BD9C3D38;

  return sub_1BD9C8680();
}

uint64_t sub_1BD9C3D38(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C3E38, 0, 0);
}

uint64_t sub_1BD9C3E38()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9CA53C();
  if (v3)
  {
    v4 = v3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  sub_1BD9CAAF8();
  if (v5)
  {
    v6 = v5;
    MEMORY[0x1BFB3F7A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
  }

  v8 = v0[8];
  v7 = v0[9];
  v0[3] = v0[2];
  sub_1BE048964();
  sub_1BE04D824();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD9C401C()
{
  v1[20] = v0;
  v2 = sub_1BE04BD74();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C4144, 0, 0);
}

uint64_t sub_1BD9C4144()
{
  v1 = v0[20];
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountService);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_1BE04D8B4();

    v5 = v0[19];
    v6 = [v5 accountIdentifier];
    v0[28] = v6;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD9C435C;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AE68);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD9CCB8C;
    v0[13] = &block_descriptor_196_0;
    v0[14] = v7;
    [v2 accountHoldsForAccountIdentifier:v6 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_1BD9C435C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1BD9C4AA0;
  }

  else
  {
    v2 = sub_1BD9C446C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1BD9C446C()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    goto LABEL_29;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v51 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      v57 = MEMORY[0x1E69E7CC0];
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (sub_1BE053704() <= 0)
  {
LABEL_28:

LABEL_29:
    v42 = 0;
    goto LABEL_30;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v51 = sub_1BE053704();
  if (!v51)
  {
LABEL_22:

LABEL_30:

    v43 = *(v0 + 8);

    v43(v42);
    return;
  }

LABEL_5:
  v3 = 0;
  v50 = v1 & 0xC000000000000001;
  v4 = *(v0 + 176);
  v44 = (*(v0 + 208) + 8);
  v45 = v2;
  v46 = v1;
  v49 = (v4 + 104);
  v47 = (v4 + 8);
  v48 = *MEMORY[0x1E69B80E0];
  while (1)
  {
    if (v50)
    {
      v5 = MEMORY[0x1BFB40900](v3, v1);
    }

    else
    {
      if (v3 >= *(v2 + 16))
      {
        goto LABEL_24;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v54 = v3 + 1;
    v7 = [objc_allocWithZone(PKDashboardPassMessage) init];
    v56 = v6;
    v8 = [v6 identifier];
    v9 = sub_1BE052434();
    v11 = v10;

    v12 = v7;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v9, v11);

    v13 = sub_1BE052404();

    [v7 setIdentifier_];

    v14 = PKPassKitUIBundle();
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v16 = sub_1BE052404();
    v17 = sub_1BE052404();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      v19 = *(v0 + 216);
      v20 = *(v0 + 200);
      sub_1BE04A9F4();

      v21 = sub_1BE04A9C4();
      (*v44)(v19, v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = PKUIScreenScale();
    v23 = PKUIImageFromPDF(v21, 45.0, 45.0, v22);

    if (!v23)
    {
      goto LABEL_36;
    }

    v24 = *(v0 + 192);
    v25 = *(v0 + 168);
    [v7 setImage_];

    v26 = *v49;
    (*v49)(v24, v48, v25);
    v27 = PKPassKitBundle();
    v55 = v12;
    if (!v27)
    {
      goto LABEL_34;
    }

    v28 = v27;
    v29 = *(v0 + 192);
    v53 = *(v0 + 184);
    v30 = *(v0 + 168);
    sub_1BE04B6F4();

    v52 = *v47;
    (*v47)(v29, v30);
    v31 = sub_1BE052404();

    [v12 setTitle_];

    v26(v53, v48, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BE0B69E0;
    v33 = [v56 currencyAmount];
    v34 = [v33 formattedStringValue];

    if (!v34)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      break;
    }

    v35 = *(v0 + 184);
    v36 = *(v0 + 168);
    v37 = sub_1BE052434();
    v39 = v38;

    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1BD110550();
    *(v32 + 32) = v37;
    *(v32 + 40) = v39;
    sub_1BE04B714();

    v52(v35, v36);
    v40 = sub_1BE052404();

    [v55 setMessage_];

    v41 = v55;
    MEMORY[0x1BFB3F7A0]();
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    ++v3;
    v2 = v45;
    v1 = v46;
    if (v54 == v51)
    {
      v42 = v57;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1BD9C4AA0()
{
  v1 = v0[28];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_1BD9C4B38()
{
  v1[9] = v0;
  v2 = sub_1BE04BD74();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = sub_1BE04AA64();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C4C9C, 0, 0);
}

void sub_1BD9C4C9C()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1BE04D8B4();

  v3 = *(v0 + 64);
  *(v0 + 176) = v3;
  v4 = [v3 savingsDetails];
  if (!v4)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  v6 = [v4 fccStepUpRequired];

  if (!v6 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE048964(), sub_1BE04D8B4(), , , , (*(v0 + 256) & 1) != 0) || [v3 state] == 4 || (v7 = objc_msgSend(v3, sel_transactionSourceIdentifier)) == 0)
  {

    v11 = 0;
LABEL_13:

    v27 = *(v0 + 8);

    v27(0, v11);
    return;
  }

  v8 = v7;
  v55 = sub_1BE052434();
  v10 = v9;

  *(v0 + 184) = v10;
  v11 = [objc_allocWithZone(PKDashboardPassMessage) init];
  *(v0 + 192) = v11;
  v12 = sub_1BE052404();
  [v11 setIdentifier_];

  [v11 setActionOnDismiss_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  [v11 setShowSpinner_];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_1BD9D1508;
  *(v0 + 56) = v13;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1BD198918;
  *(v0 + 40) = &block_descriptor_178_2;
  v14 = _Block_copy((v0 + 16));

  [v11 setActionOnButtonPress_];
  _Block_release(v14);
  v15 = [v3 savingsDetails];
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = v15;
  v17 = [v15 fccStepUpDetails];

  if (v17)
  {
    if ([v17 thresholdExceeded])
    {
      v18 = PKPassKitUIBundle();
      if (v18)
      {
        v19 = v18;
        v20 = sub_1BE052404();
        v21 = sub_1BE052404();
        v22 = [v19 URLForResource:v20 withExtension:v21];

        if (v22)
        {
          v23 = *(v0 + 168);
          v25 = *(v0 + 144);
          v24 = *(v0 + 152);
          sub_1BE04A9F4();

          v26 = sub_1BE04A9C4();
          (*(v24 + 8))(v23, v25);
        }

        else
        {
          v26 = 0;
        }

        v29 = PKUIScreenScale();
        v30 = PKUIImageFromPDF(v26, 45.0, 45.0, v29);

        if (v30)
        {
          v51 = v17;
          v31 = *(v0 + 136);
          v32 = *(v0 + 88);

          [v11 setImage_];

          v54 = *MEMORY[0x1E69B80E0];
          v53 = *(v32 + 104);
          v53(v31);
          v33 = PKPassKitBundle();
          if (v33)
          {
            v34 = v33;
            v36 = *(v0 + 128);
            v35 = *(v0 + 136);
            v38 = *(v0 + 80);
            v37 = *(v0 + 88);
            sub_1BE04B6F4();

            v52 = *(v37 + 8);
            v52(v35, v38);
            v39 = sub_1BE052404();

            [v11 setTitle_];

            (v53)(v36, v54, v38);
            v40 = PKPassKitBundle();
            if (v40)
            {
              v41 = v40;
              v43 = *(v0 + 120);
              v42 = *(v0 + 128);
              v44 = *(v0 + 80);
              sub_1BE04B6F4();

              v52(v42, v44);
              v45 = sub_1BE052404();

              [v11 setMessage_];

              (v53)(v43, v54, v44);
              v46 = PKPassKitBundle();
              if (v46)
              {
                v47 = v46;
                v48 = *(v0 + 120);
                v49 = *(v0 + 80);
                sub_1BE04B6F4();

                v52(v48, v49);
                v50 = sub_1BE052404();

                [v11 setButtonTitle_];

                goto LABEL_13;
              }

LABEL_32:
              __break(1u);
              return;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  v28 = swift_task_alloc();
  *(v0 + 200) = v28;
  *v28 = v0;
  v28[1] = sub_1BD9C549C;

  sub_1BD9CCBA0(v55, v10);
}

uint64_t sub_1BD9C549C(char a1)
{
  *(*v1 + 258) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD9C559C, 0, 0);
}

uint64_t sub_1BD9C559C()
{
  if (*(v0 + 258) == 1)
  {
    *(v0 + 208) = objc_opt_self();
    *(v0 + 216) = sub_1BE0528A4();
    *(v0 + 224) = sub_1BE052894();
    v2 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD9C5710, v2, v1);
  }

  else
  {
    v3 = *(v0 + 176);

    v4 = *(v0 + 8);

    return v4(0, 0);
  }
}

uint64_t sub_1BD9C5710()
{
  v1 = *(v0 + 208);

  *(v0 + 232) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1BD9C5798, 0, 0);
}

uint64_t sub_1BD9C5798()
{
  *(v0 + 240) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD9C5824, v2, v1);
}

uint64_t sub_1BD9C5824()
{
  v1 = *(v0 + 232);

  *(v0 + 248) = [v1 userInterfaceLayoutDirection];

  return MEMORY[0x1EEE6DFA0](sub_1BD9C58A4, 0, 0);
}

void sub_1BD9C58A4()
{
  v1 = PKPassKitUIBundle();
  if (!v1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_1BE052404();
  v4 = sub_1BE052404();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (v5)
  {
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    sub_1BE04A9F4();

    v9 = sub_1BE04A9C4();
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = PKUIScreenScale();
  v11 = PKUIImageFromPDF(v9, 45.0, 45.0, v10);

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v0[24];
  v13 = v0[14];
  v14 = v0[11];

  [v12 setImage_];

  v40 = *MEMORY[0x1E69B80E0];
  v39 = *(v14 + 104);
  v39(v13);
  v15 = PKPassKitBundle();
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = v0[24];
  v19 = v0[13];
  v18 = v0[14];
  v21 = v0[10];
  v20 = v0[11];
  sub_1BE04B6F4();

  v38 = *(v20 + 8);
  v38(v18, v21);
  v22 = sub_1BE052404();

  [v17 setTitle_];

  (v39)(v19, v40, v21);
  v23 = PKPassKitBundle();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = v0[24];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[10];
  sub_1BE04B6F4();

  v38(v26, v28);
  v29 = sub_1BE052404();

  [v25 setMessage_];

  (v39)(v27, v40, v28);
  v30 = PKPassKitBundle();
  if (!v30)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = v0[24];
  v33 = v0[22];
  v34 = v0[12];
  v35 = v0[10];
  sub_1BE04B6F4();

  v38(v34, v35);
  v36 = sub_1BE052404();

  [v32 setButtonTitle_];

  v37 = v0[1];

  v37(v32, 0);
}

void sub_1BD9C5D1C()
{
  v57 = sub_1BE04BD74();
  v1 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57, v2);
  v55 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v56 = v50 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v50 - v9;
  v11 = sub_1BE04AA64();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_1BE04D8B4();

  v17 = aBlock;
  v18 = [objc_allocWithZone(PKDashboardPassMessage) init];
  v19 = [v17 state];
  if (v19 == 3)
  {
    v51 = v17;
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = sub_1BD9D14F8;
    v63 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_1BD198918;
    v61 = &block_descriptor_167_0;
    v22 = _Block_copy(&aBlock);

    v24 = "DASHBOARD_LOCKED_TITLE";
    v25 = 0xD000000000000020;
    v52 = 0xD000000000000016;
    v53 = "VE_BALANCE_MESSAGE";
  }

  else
  {
    if (v19 != 2)
    {

      return;
    }

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v17;
    v62 = sub_1BD9D1500;
    v63 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_1BD198918;
    v61 = &block_descriptor_174_0;
    v22 = _Block_copy(&aBlock);
    v51 = v17;
    v23 = v17;

    v52 = 0xD00000000000001ALL;
    v53 = "BankConnectAlertFlowItem";
    v24 = "DASHBOARD_RESTRICTED_TITLE";
    v25 = 0xD000000000000024;
  }

  [v18 setActionOnButtonPress_];
  _Block_release(v22);
  v27 = sub_1BE052404();
  [v18 setIdentifier_];

  v28 = PKPassKitUIBundle();
  if (!v28)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v50[1] = v25;
  v50[2] = v24;
  v30 = sub_1BE052404();
  v31 = sub_1BE052404();
  v32 = [v29 URLForResource:v30 withExtension:v31];

  if (v32)
  {
    sub_1BE04A9F4();

    v33 = sub_1BE04A9C4();
    (*(v54 + 8))(v14, v11);
  }

  else
  {
    v33 = 0;
  }

  v34 = v57;
  v35 = PKUIScreenScale();
  v36 = PKUIImageFromPDF(v33, 45.0, 45.0, v35);

  if (!v36)
  {
    goto LABEL_16;
  }

  [v18 setImage_];

  v37 = *MEMORY[0x1E69B80E0];
  v57 = *(v1 + 104);
  (v57)(v10, v37, v34);
  v38 = PKPassKitBundle();
  if (!v38)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = v38;
  sub_1BE04B6F4();

  v40 = *(v1 + 8);
  v40(v10, v34);
  v41 = sub_1BE052404();

  [v18 setTitle_];

  v42 = v56;
  LODWORD(v54) = v37;
  (v57)(v56, v37, v34);
  v43 = PKPassKitBundle();
  if (!v43)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v44 = v43;
  sub_1BE04B6F4();

  v40(v42, v34);
  v45 = sub_1BE052404();

  [v18 setMessage_];

  v46 = v55;
  (v57)(v55, v54, v34);
  v47 = PKPassKitBundle();
  if (v47)
  {
    v48 = v47;
    sub_1BE04B6F4();

    v40(v46, v34);
    v49 = sub_1BE052404();

    [v18 setButtonTitle_];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1BD9C6474()
{
  v1 = sub_1BE04AA64();
  v57 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BE04BD74();
  v59 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v58 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v52[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v52[-v14];
  v16 = OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel;
  v17 = *(v0 + OBJC_IVAR____TtC9PassKitUI29SavingsDashboardMessageSource_accountModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v17;
  sub_1BE04D8B4();

  v19 = aBlock[0];
  if (aBlock[0])
  {
    v20 = [aBlock[0] currentBalance];

    if (v20)
    {
      if (![v20 pk_isNegativeNumber])
      {

        return;
      }

      v56 = v20;
      v21 = *(v0 + v16);
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v21;
      sub_1BE04D8B4();

      v23 = aBlock[0];
      v24 = [aBlock[0] supportsOneTimeDeposit];

      if (v24)
      {
        v25 = [objc_allocWithZone(PKDashboardPassMessage) init];
        v26 = sub_1BE052404();
        [v25 setIdentifier_];

        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1BD9D14F0;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD198918;
        aBlock[3] = &block_descriptor_158_0;
        v28 = _Block_copy(aBlock);

        [v25 setActionOnButtonPress_];
        _Block_release(v28);
        v29 = v59;
        v30 = *(v59 + 104);
        v53 = *MEMORY[0x1E69B80E0];
        v54 = v59 + 104;
        v55 = v30;
        v30(v15);
        v31 = PKPassKitBundle();
        if (v31)
        {
          v32 = v31;
          sub_1BE04B6F4();

          v59 = *(v29 + 8);
          (v59)(v15, v5);
          v33 = sub_1BE052404();

          [v25 setButtonTitle_];

          v34 = PKPassKitUIBundle();
          if (v34)
          {
            v35 = v34;
            v36 = sub_1BE052404();
            v37 = sub_1BE052404();
            v38 = [v35 URLForResource:v36 withExtension:v37];

            if (v38)
            {
              sub_1BE04A9F4();

              v39 = sub_1BE04A9C4();
              (*(v57 + 8))(v4, v1);
            }

            else
            {
              v39 = 0;
            }

            v40 = v55;
            v41 = v53;
            v42 = PKUIScreenScale();
            v43 = PKUIImageFromPDF(v39, 45.0, 45.0, v42);

            if (v43)
            {
              [v25 setImage_];

              v40(v11, v41, v5);
              v44 = PKPassKitBundle();
              if (v44)
              {
                v45 = v44;
                sub_1BE04B6F4();

                v46 = v59;
                (v59)(v11, v5);
                v47 = sub_1BE052404();

                [v25 setTitle_];

                v48 = v58;
                v55(v58, v41, v5);
                v49 = PKPassKitBundle();
                if (v49)
                {
                  v50 = v49;
                  sub_1BE04B6F4();

                  v46(v48, v5);
                  v51 = sub_1BE052404();

                  [v25 setMessage_];

                  return;
                }

                goto LABEL_21;
              }

LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              return;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_19;
      }
    }
  }
}