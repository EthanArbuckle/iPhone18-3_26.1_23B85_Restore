void sub_5C98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_5CC0()
{
  if (qword_3A2C8 != -1)
  {
    sub_21808();
  }

  v1 = qword_3A2C0;

  return v1;
}

void sub_5D04(id a1)
{
  qword_3A2C0 = os_log_create("com.apple.Accessibility", "BRLTranslation.Apple");

  _objc_release_x1();
}

id sub_5D48()
{
  if (qword_3A2D8[0] != -1)
  {
    sub_2181C();
  }

  v1 = qword_3A2D0;

  return v1;
}

void sub_5D8C(id a1)
{
  qword_3A2D0 = os_log_create("com.apple.Accessibility", "BRLTranslation.AppleFormat");

  _objc_release_x1();
}

uint64_t sub_5F3C()
{
  *v3 = *(v0 + 16);
  *&v3[13] = *(v0 + 29);
  sub_5F88(v3, &v2);
  return *v3;
}

uint64_t sub_5FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 44) = BYTE4(a4);
  *(result + 40) = a4;
  return result;
}

uint64_t sub_6020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 44) = BYTE4(a4);
  return v4;
}

uint64_t sub_603C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (sub_20C28(*(a1 + 40) | (*(a1 + 42) << 16)))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v6 = *(a1 + 42);
    v7 = *(a1 + 40);

    sub_20F6C();
    v11 = sub_20F88(v9, v10, v8 & 0xFFFFFF, v4, v5, v7 | (v6 << 16));
    v13 = v12;
    v15 = v14;

    v16 = *(a1 + 32);
    *(a1 + 24) = v11;
    *(a1 + 32) = v13;
    *(a1 + 40) = v15;
    *(a1 + 42) = BYTE2(v15);

    v18 = (*(*a2 + 200))(v17);
    v19 = swift_beginAccess();
    *(a1 + 48) = v18;
    (*(*a2 + 192))(v19);
  }

  else
  {
    v20 = sub_132C8();
    v21 = (*(*a2 + 200))(v20);
    swift_beginAccess();
    *(a1 + 48) = v21;
  }

  return 1;
}

uint64_t sub_61E0()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_6200()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_62AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64) | (*(v0 + 66) << 16);

  return v1;
}

uint64_t sub_6304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_20F6C();
  v15 = a6 & 1;
  return (*(v6 + 128))(a1, a2, 16843009, 16843008, v12, v13, v11 & 0xFFFFFF, a5, v15);
}

uint64_t sub_63FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20F6C();
  v13 = 0;
  return (*(v4 + 128))(a1, a2, a3 & 0x101010101010101, a4 & 0x101010101, v10, v11, v9 & 0xFFFFFF, 2, v13);
}

uint64_t sub_6490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, char a9)
{
  v9 = a7;
  v15 = a7 >> 8;
  v16 = HIWORD(a7);
  result = swift_allocObject();
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = v9;
  *(result + 65) = v15;
  *(result + 66) = v16;
  *(result + 67) = a8;
  *(result + 68) = a9 & 1;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 44) = BYTE4(a4);
  *(result + 40) = a4;
  return result;
}

uint64_t sub_6548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, char a9)
{
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 66) = BYTE2(a7);
  *(v9 + 67) = a8;
  *(v9 + 68) = a9 & 1;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 44) = BYTE4(a4);
  return v9;
}

uint64_t sub_658C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*a2 + 200);
  v7 = v6();
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  if (((*(*a2 + 168))(*(v3 + 16), *(v3 + 24)) & 1) == 0)
  {
    return 0;
  }

  v25 = v6;
  v26 = v7;
  v10 = sub_13B14();
  v11 = *(*a2 + 184);
  result = v11(v8, v9);
  if (!v13)
  {
    __break(1u);
    goto LABEL_36;
  }

  v27 = a1;
  v14 = sub_141E4(result, v13);

  if ((*(v3 + 32) & 1) == 0 && ((v10 ^ 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(v3 + 34) & 1) == 0 && v14)
  {
    return 0;
  }

  if (((*(v3 + 33) | v10) & 1) == 0)
  {
    return 0;
  }

  if (((*(v3 + 35) | v14) & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 36) == 1)
  {
    swift_beginAccess();
    if (*(a1 + 61) != 1)
    {
      return 0;
    }
  }

  if (*(v3 + 42))
  {
    goto LABEL_16;
  }

  result = v11(v8, v9);
  if (!v15)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v16 = sub_142D0();

  if (v16)
  {
    return 0;
  }

LABEL_16:
  swift_beginAccess();
  *(a1 + 56) = 0;
  if (v8 == 10920162 && v9 == 0xA300000000000000 || (sub_21AA0()) && (*(v3 + 48) == 34 && *(v3 + 56) == 0xE100000000000000 || (sub_21AA0()))
  {
    swift_beginAccess();
    *(a1 + 61) = 1;
  }

  else if (v8 == 11837666 && v9 == 0xA300000000000000 || (sub_21AA0()) && (*(v3 + 48) == 34 && *(v3 + 56) == 0xE100000000000000 || (sub_21AA0()))
  {
    swift_beginAccess();
    *(a1 + 61) = 0;
  }

  v17 = (*(*a2 + 176))(v8, v9);
  v18 = *(v3 + 48);
  v19 = *(v3 + 56);
  v20 = *(v3 + 66);
  v21 = *(v3 + 64);
  v22 = (v25)(v17);
  sub_133F8(v18, v19, v21 | (v20 << 16), v26, v22);
  v23 = *(v3 + 67);
  if (v23 != 2)
  {
    v24 = v23 & 1;
    sub_7818();
    if (sub_21860())
    {
      sub_132C8();
    }

    swift_beginAccess();
    *(v27 + 48) = v26;
    swift_beginAccess();
    *(v27 + 57) = v24;
  }

  *(v27 + 56) = *(v3 + 68);
  return 1;
}

double sub_69A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 16843009;
  *(v4 + 40) = 0;
  *&result = 65793;
  *(v4 + 41) = 65793;
  return result;
}

uint64_t sub_6A00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 16843009;
  *(v2 + 40) = 0;
  *(v2 + 41) = 65793;
  return v2;
}

uint64_t sub_6A24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (*(*a2 + 168))(v5, v6);
  if (v7)
  {
    (*(*a2 + 176))(v5, v6);
    v8 = sub_132C8();
    v9 = (*(*a2 + 200))(v8);
    swift_beginAccess();
    *(a1 + 48) = v9;
  }

  return v7 & 1;
}

double sub_6B54(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 45) = a3 & 1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 16843009;
  *(v6 + 40) = 0;
  *&result = 65793;
  *(v6 + 41) = 65793;
  return result;
}

uint64_t sub_6BB8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 45) = a3 & 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = 16843009;
  *(v3 + 40) = 0;
  *(v3 + 41) = 65793;
  return v3;
}

uint64_t sub_6BE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = (*(*a2 + 168))(v6, v7);
  if (v8)
  {
    v9 = (*(*a2 + 200))();
    swift_beginAccess();
    *(a1 + 48) = v9;
    (*(*a2 + 176))(v6, v7);
    sub_132C8();
    v10 = *(v3 + 45);
    swift_beginAccess();
    *(a1 + 56) = v10;
    swift_beginAccess();
    *(a1 + 57) = 0;
    sub_786C();
    if (sub_21860())
    {
      swift_beginAccess();
      *(a1 + 60) = 1;
      swift_beginAccess();
      *(a1 + 58) = 4;
      swift_beginAccess();
      *(a1 + 59) = 4;
    }
  }

  return v8 & 1;
}

uint64_t sub_6DBC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_6E28()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return v1;
}

uint64_t sub_6F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = a7;
  v13 = a7 >> 8;
  v14 = HIWORD(a7);
  v15 = HIBYTE(a7);
  result = swift_allocObject();
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = v7;
  *(result + 65) = v13;
  *(result + 66) = v14;
  *(result + 67) = v15;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 44) = BYTE4(a4);
  *(result + 40) = a4;
  return result;
}

uint64_t sub_6FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 44) = BYTE4(a4);
  return v7;
}

uint64_t sub_6FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*(sub_78C0(&qword_39858, &qword_250F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v54 - v7;
  swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  if (((*(*a2 + 168))(v10, v11) & 1) == 0)
  {
    return 0;
  }

  v56 = v9;
  v55 = v8;
  v12 = sub_13B14();
  v13 = *(*a2 + 184);
  result = v13(v10, v11);
  if (!v15)
  {
    __break(1u);
    goto LABEL_94;
  }

  v16 = sub_141E4(result, v15);

  if ((*(v3 + 32) & 1) == 0 && ((v12 ^ 1) & 1) == 0 || (*(v3 + 34) & 1) == 0 && v16 || ((*(v3 + 33) | v12) & 1) == 0 || ((*(v3 + 35) | v16) & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 37) != 1)
  {
    goto LABEL_13;
  }

  if (sub_14394())
  {
    return 0;
  }

  result = v13(v10, v11);
  if (!v17)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v18 = sub_14544();

  if (v18)
  {
    return 0;
  }

LABEL_13:
  if (*(v3 + 38) == 1 && !sub_145CC(a2) || *(v3 + 39) == 1 && (sub_148EC() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 40) == 1)
  {
    result = v13(v10, v11);
    if (v19)
    {
      v20 = sub_149AC(result, v19);

      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_20:
  if (*(v3 + 41))
  {
LABEL_23:
    if ((*(v3 + 43) & 1) != 0 || (swift_beginAccess(), (*(a1 + 60) & 1) == 0))
    {
      if (*(v3 + 44) != 1 || (swift_beginAccess(), *(a1 + 60) == 1))
      {
        (*(*a2 + 176))(v10, v11);
        v24 = *(v3 + 48);
        v23 = *(v3 + 56);
        swift_beginAccess();
        v25 = *(a1 + 59);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v59 = v24;
            v60 = v23;
            sub_7908();
            sub_219E0();
            goto LABEL_35;
          }
        }

        else if (v25 < 2)
        {
          sub_21890();
          goto LABEL_35;
        }

LABEL_35:
        sub_20F6C();
        v54 = v27;
        v29 = v28;
        v31 = v30;
        v32 = (*(*a2 + 200))();
        sub_133F8(v54, v29, v31 & 0xFFFFFF, v56, v32);

        v33 = HIBYTE(v23) & 0xF;
        if (*(a1 + 59) <= 1u)
        {
          if (!*(a1 + 59))
          {
            goto LABEL_47;
          }

          v35 = v24 & 0xFFFFFFFFFFFFLL;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v35 = HIBYTE(v23) & 0xF;
          }

          if (!v35)
          {
            goto LABEL_47;
          }

          v59 = v24;
          v60 = v23;
          v57 = 0x1000000000000013;
          v58 = 0x8000000000023680;
          v36 = sub_21830();
          v37 = v23;
          v38 = v55;
          (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
          sub_7908();

          sub_21A10();
          v40 = v39;
          v41 = v38;
          v23 = v37;
          sub_795C(v41);

          if (v40)
          {
LABEL_47:
            swift_beginAccess();
            v42 = *(a1 + 58);
            if (v42 <= 1)
            {
              if (!*(a1 + 58) || (v24 != 32 || v23 != 0xE100000000000000) && (sub_21AA0() & 1) == 0)
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v42 == 4)
              {
LABEL_60:
                v43 = *(v3 + 64);
                if (v43 != 2)
                {
                  swift_beginAccess();
                  *(a1 + 56) = v43 & 1;
                }

                v44 = *(v3 + 65);
                if (v44 != 2)
                {
                  swift_beginAccess();
                  *(a1 + 57) = v44 & 1;
                }

                v45 = *(v3 + 66);
                if (v45 != 5)
                {
                  *(a1 + 58) = v45;
                }

                v46 = *(v3 + 67);
                if (v46 != 5)
                {
                  *(a1 + 59) = v46;
                }

                v47 = v24 & 0xFFFFFFFFFFFFLL;
                v26 = 1;
                if ((v23 & 0x2000000000000000) != 0)
                {
                  v47 = v33;
                }

                if (v47)
                {
                  swift_beginAccess();
                  *(a1 + 60) = 0;
                }

                return v26;
              }

              if (v42 == 3)
              {
                if (sub_218D0() < 1)
                {
                  goto LABEL_60;
                }
              }

              else if (v24 != 32 || v23 != 0xE100000000000000)
              {
                v48 = sub_21AA0();
                v49 = v24 == 45 && v23 == 0xE100000000000000;
                v50 = v49;
                if ((v48 & 1) == 0 && !v50 && (sub_21AA0() & 1) == 0 && (v24 != 9666786 || v23 != 0xA300000000000000))
                {
                  v51 = sub_21AA0();
                  v52 = v24 == 9732322 && v23 == 0xA300000000000000;
                  v53 = v52;
                  if ((v51 & 1) == 0 && !v53 && (sub_21AA0() & 1) == 0)
                  {
                    swift_arrayDestroy();
                    goto LABEL_60;
                  }
                }
              }
            }

            *(a1 + 58) = 4;
            goto LABEL_60;
          }
        }

        else
        {
          if (*(a1 + 59) != 3)
          {
            goto LABEL_47;
          }

          v34 = v24 & 0xFFFFFFFFFFFFLL;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v34 = HIBYTE(v23) & 0xF;
          }

          if (!v34)
          {
            goto LABEL_47;
          }
        }

        *(a1 + 59) = 4;
        goto LABEL_47;
      }
    }

    return 0;
  }

  result = v13(v10, v11);
  if (v21)
  {
    v22 = sub_147A4();

    if (v22)
    {
      return 0;
    }

    goto LABEL_23;
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_7758()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t sub_7788()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

double sub_77D4()
{
  type metadata accessor for HangulAction();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 16843009;
  *(v0 + 40) = 0;
  *&result = 65793;
  *(v0 + 41) = 65793;
  return result;
}

unint64_t sub_7818()
{
  result = qword_39848;
  if (!qword_39848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39848);
  }

  return result;
}

unint64_t sub_786C()
{
  result = qword_39850;
  if (!qword_39850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39850);
  }

  return result;
}

uint64_t sub_78C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_7908()
{
  result = qword_39860;
  if (!qword_39860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39860);
  }

  return result;
}

uint64_t sub_795C(uint64_t a1)
{
  v2 = sub_78C0(&qword_39858, &qword_250F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_79DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_79F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_7A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_7B20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_7B34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_7B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7C40(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v31 = *(v6 - 8);
  v7 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (__chkstk_darwin)();
  v10 = &v26 - v9;
  v11 = *(v5 + 80);
  v32 = *(v11 - 8);
  v12 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v14 = &v26 - v13;
  type metadata accessor for InputReader();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;

  v15[4] = sub_218D0();
  v15[5] = 15;
  v15[6] = sub_218D0();
  type metadata accessor for OutputBuilder();
  v16 = swift_allocObject();
  v16[2] = 0;
  v29 = v16 + 2;
  v16[3] = 0xE000000000000000;
  v16[4] = &_swiftEmptyArrayStorage;
  v17 = *(v5 + 96);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = *(AssociatedConformanceWitness + 24);

  v30 = v16;
  v28 = AssociatedConformanceWitness;
  v27(v19, v11, AssociatedConformanceWitness);
  v20 = *(v17 + 48);
  v21 = (v31 + 8);
  do
  {
    v20(v6, v17);
    sub_8C64(v15, v14, v10, v11, v6, v17);
    (*v21)(v10, v6);
  }

  while (v15[6] > 0);
  (*(v28 + 40))(v11);

  (*(v32 + 8))(v14, v11);
  swift_beginAccess();
  v22 = v30[2];
  v23 = v30[3];
  v24 = v30[4];

  return v22;
}

void *sub_7F60(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;

  v4[4] = sub_218D0();
  v4[5] = 15;
  v5 = sub_218D0();

  v4[6] = v5;
  return v4;
}

void *sub_8004()
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0xE000000000000000;
  result[4] = &_swiftEmptyArrayStorage;
  return result;
}

void *sub_8064(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;

  v2[4] = sub_218D0();
  v2[5] = 15;
  v3 = sub_218D0();

  v2[6] = v3;
  return v2;
}

uint64_t sub_80F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_8168(*(v2 + 40), *(v2 + 16), *(v2 + 24));
  LOBYTE(a2) = sub_89F0(a1, a2, v5, v6);

  return a2 & 1;
}

unint64_t sub_8168(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_21970();
  }

  __break(1u);
  return result;
}

uint64_t sub_81B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  result = sub_218D0();
  if (v5 >= result)
  {
    v7 = v2[2];
    v8 = v2[3];
    v9 = v2[5];
    sub_218D0();
    v10 = sub_21900();
    result = v2[5];
    if (v10 >> 14 < result >> 14)
    {
      __break(1u);
    }

    else
    {
      sub_21970();
      v11 = sub_218A0();
      v13 = v12;

      if (v11 == a1 && v13 == a2)
      {
      }

      else
      {
        v15 = sub_21AA0();

        if ((v15 & 1) == 0)
        {
          return result;
        }
      }

      v2[5] = v10;
      result = sub_218D0();
      v16 = v2[6];
      v17 = __OFSUB__(v16, result);
      v18 = v16 - result;
      if (!v17)
      {
        v2[6] = v18;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_82CC(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  if (v5 < sub_218D0())
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[5];
  sub_218D0();
  v10 = sub_21900();
  result = v2[5];
  if (v10 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_21970();
    v11 = sub_218A0();
    v13 = v12;

    if (v11 == a1 && v13 == a2)
    {
    }

    else
    {
      v15 = sub_21AA0();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    sub_8168(v10, v7, v8);
    v16 = sub_218A0();

    return v16;
  }

  return result;
}

unint64_t sub_83FC()
{
  result = v0[5];
  v2 = v0[3];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (result >> 14 != 4 * v3)
  {
    result = sub_218E0();
    v0[5] = result;
    v4 = v0[6];
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v0[6] = v6;
    }
  }

  return result;
}

uint64_t sub_8450()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_8478(unint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = v2[5];
  do
  {
    v6 = v5;
    if (v5 < 0x4000)
    {
      break;
    }

    v7 = v2[2];
    v8 = v2[3];
    v5 = sub_218F0();
    if (sub_21960() == v4 && v9 == a2)
    {

      break;
    }

    v11 = sub_21AA0();
  }

  while ((v11 & 1) == 0);
  v12 = v6 >> 14;
  v13 = v2[5];
  v14 = v2[3];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v2[2] & 0xFFFFFFFFFFFFLL;
  }

  v16 = 4 * v15;
  v17 = v13 >> 14;
  if (v13 >> 14 == 4 * v15)
  {
    v17 = 4 * v15;
  }

  else
  {
    while (sub_21960() != v4 || v18 != a2)
    {
      v19 = sub_21AA0();

      if (v19)
      {
        goto LABEL_20;
      }

      result = sub_218E0();
      v17 = result >> 14;
      if (result >> 14 == v16)
      {
        v17 = v16;
        goto LABEL_20;
      }
    }

LABEL_20:
    v12 = v6 >> 14;
  }

  if (v17 < v12)
  {
    __break(1u);
  }

  else
  {
    sub_21970();
    v20 = sub_218A0();

    return v20;
  }

  return result;
}

uint64_t sub_862C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_866C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != a4 || a2 != a5)
  {
    result = sub_21AA0();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a3 + 16);
  if (v8 != *(a6 + 16))
  {
    return 0;
  }

  if (!v8 || a3 == a6)
  {
    return 1;
  }

  v9 = (a3 + 32);
  v10 = (a6 + 32);
  while (v8)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v10++;
    result = v11 == v13;
    if (v11 != v13 || v8-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_870C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_876C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21AA0() & 1) == 0)
  {
    return 0;
  }

  return sub_870C(v2, v3);
}

void *sub_87E0()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_87FC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  sub_21910(v14);
  swift_endAccess();

  while (1)
  {
    sub_21920();
    if (!v8)
    {
      break;
    }

    v9 = *(v4 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_8B60(0, *(v9 + 2) + 1, 1, v9);
      *(v4 + 32) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_8B60((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    *&v9[8 * v12 + 32] = a3;
    *(v4 + 32) = v9;
  }
}

uint64_t sub_8924()
{
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return v1;
}

uint64_t sub_8988()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_89B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_89F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v10 = sub_219D0();
      v12 = v11;
      v13 = sub_219C0();
      v14 = sub_21920();
      if (!v15)
      {
        break;
      }

      if (v10 == v14 && v15 == v12)
      {
      }

      else
      {
        v9 = sub_21AA0();

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v13 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_21920();
    v7 = v6;

    if (v7)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

char *sub_8B60(char *result, int64_t a2, char a3, char *a4)
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
    sub_78C0(&qword_39E38, &unk_255F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_8C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a5;
  v26 = a1;
  v24 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v21 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v13 = *(AssociatedConformanceWitness + 48);
  v25 = a2;
  v14 = v13(a4, AssociatedConformanceWitness);
  for (i = 0; ; ++i)
  {
    if (i == sub_219B0())
    {
      goto LABEL_11;
    }

    v16 = sub_219A0();
    sub_21990();
    if (v16)
    {
      (*(v10 + 16))(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, AssociatedTypeWitness);
      if (__OFADD__(i, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_21A40();
    if (v21 != 8)
    {
      break;
    }

    v27 = result;
    (*(v10 + 16))(v12, &v27, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    if (__OFADD__(i, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:

      return (*(v24 + 40))(v25, v26, v23);
    }

LABEL_5:
    v17 = swift_getAssociatedConformanceWitness();
    v18 = (*(v17 + 40))(v25, v26, AssociatedTypeWitness, v17);
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    if (v18)
    {
    }
  }

  __break(1u);
  return result;
}

__n128 sub_8FE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_8FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_9040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ABTResult.string.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string);
  v2 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string + 8);

  return v1;
}

id sub_91E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_9250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ABTResult();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t static ABTKoreanTranslator.translate(_:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for ABTKoreanTranslator());

  v5 = sub_A134(a1, a2);
  v6 = (*(&stru_1A8.reloff + (swift_isaMask & *v5)))();

  return v6;
}

uint64_t sub_954C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input);
  v2 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);

  return v1;
}

uint64_t sub_9588()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_cursorIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_95CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_cursorIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9680()
{
  v1 = (v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_resultOutput);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_96D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_resultOutput);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_9798()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_resultLocations;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_97E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_resultLocations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_9898()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_inputCursor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_98DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_inputCursor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9994()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_vowelPreviousLetterEndedWith;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_99D8(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_vowelPreviousLetterEndedWith;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9A88()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isAmbiguousSingleQuotationOpen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_9ACC(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isAmbiguousSingleQuotationOpen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9B7C()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isAmbiguousDoubleQuotationOpen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_9BC0(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isAmbiguousDoubleQuotationOpen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9C70()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isNumericMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_9CB4(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isNumericMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9D64()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterDigit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_9DA8(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterDigit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9E58()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterNumericHyphen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_9E9C(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterNumericHyphen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_9F4C()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterCurrency;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_9F90(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterCurrency;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_A040()
{
  v1 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterHangul;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_A084(char a1)
{
  v3 = OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterHangul;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_A134(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_vowelPreviousLetterEndedWith] = 21;
  v3 = &v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input];
  *v3 = a1;
  v3[1] = a2;
  *&v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_cursorIndex] = 15;
  v4 = &v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_resultOutput];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_resultLocations] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_inputCursor] = 0;
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isAmbiguousSingleQuotationOpen] = 0;
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isAmbiguousDoubleQuotationOpen] = 0;
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isNumericMode] = 0;
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterDigit] = 0;
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterNumericHyphen] = 0;
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterCurrency] = 0;
  v2[OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_isPreviousLetterHangul] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ABTKoreanTranslator();
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_A220()
{
  v1 = v0;
  v2 = &swift_isaMask;
  v3 = *&stru_B8.sectname[swift_isaMask & *v0];
  v4 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input);
  v5 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  v6 = v3();
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v67 = 4 * v7;
  if (4 * v7 <= v6 >> 14)
  {
LABEL_54:
    v58 = (*&stru_B8.segname[(*v2 & *v1) + 8])();
    v60 = v59;
    v61 = (*(&stru_B8.offset + (*v2 & *v1)))();
    v62 = type metadata accessor for ABTResult();
    v63 = objc_allocWithZone(v62);
    v64 = &v63[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v64 = v58;
    v64[1] = v60;
    *&v63[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = v61;
    v69.receiver = v63;
    v69.super_class = v62;
    return objc_msgSendSuper2(&v69, "init");
  }

  v65 = v3;
  while (1)
  {
    v8 = sub_DC54();
    if (v9)
    {
      goto LABEL_20;
    }

    v10 = v8;
    v11 = v9;
    result = v3();
    if (v10 >> 14 < result >> 14)
    {
      break;
    }

    v13 = v2;
    sub_21970();
    v14 = sub_218A0();
    v16 = v15;

    type metadata accessor for EnglishTranslator();

    v17 = *sub_102B8(v14, v16);
    v18 = (*(v17 + 296))();

    result = sub_218D0();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    v19 = result;
    v66 = v10 >> 14;
    if (result)
    {
      v20 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
      v21 = *(v20 + 2);
      do
      {
        v22 = *(v20 + 3);
        if (v21 >= v22 >> 1)
        {
          v20 = sub_8B60((v22 > 1), v21 + 1, 1, v20);
        }

        *(v20 + 2) = v21 + 1;
        *&v20[8 * v21++ + 32] = 0;
        --v19;
      }

      while (v19);
    }

    else
    {
      v20 = &_swiftEmptyArrayStorage;
    }

    sub_D704(11837666, 0xA300000000000000, v20);

    v23 = *&v18[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    v24 = *&v18[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string + 8];
    v25 = *&v18[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations];

    sub_D704(v23, v24, v25);

    v26 = sub_218D0();

    v3 = v65;
    (v65)(v27);
    v28 = sub_21900();
    v2 = v13;
    (*&stru_B8.segname[(*v13 & *v1) - 8])(v28);
    result = (*&stru_108.segname[(*v13 & *v1) - 8])(v68);
    if (__OFADD__(*v29, v26))
    {
      goto LABEL_57;
    }

    *v29 += v26;
    (result)(v68, 0);
    if ((v11 & 0x100) != 0)
    {
      sub_D704(11706594, 0xA300000000000000, &off_2E568);
      (*(&stru_158.size + (*v13 & *v1)))(0);
    }

    if (v66 == v67)
    {
      goto LABEL_54;
    }

LABEL_20:
    v30 = sub_AC08();
    if (v30)
    {
      goto LABEL_37;
    }

    v3();
    v31 = sub_21960();
    if (qword_3A400 != -1)
    {
      v56 = v31;
      v57 = v32;
      swift_once();
      v31 = v56;
      v32 = v57;
    }

    v33 = qword_3A408[0];
    if (*(qword_3A408[0] + 16))
    {
      v34 = sub_EAA8(v31, v32);
      v36 = v35;

      if (v36)
      {
        v37 = (*(v33 + 56) + 16 * v34);
        v38 = *v37;
        v39 = v37[1];

        result = sub_218D0();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v40 = result;
        if (result)
        {
          v41 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
          v42 = *(v41 + 2);
          do
          {
            v43 = *(v41 + 3);
            if (v42 >= v43 >> 1)
            {
              v41 = sub_8B60((v43 > 1), v42 + 1, 1, v41);
            }

            *(v41 + 2) = v42 + 1;
            *&v41[8 * v42++ + 32] = 0;
            --v40;
          }

          while (v40);
        }

        else
        {
          v41 = &_swiftEmptyArrayStorage;
        }

        sub_D704(v38, v39, v41);

        (v3)(v46);
        v47 = sub_21900();
        (*&stru_B8.segname[(*v2 & *v1) - 8])(v47);
        result = (*&stru_108.segname[(*v2 & *v1) - 8])(v68);
        if (__OFADD__(*v48, 1))
        {
          goto LABEL_61;
        }

        ++*v48;
        (result)(v68, 0);
LABEL_37:
        v44 = 0;
        v45 = 1;
        goto LABEL_38;
      }
    }

    else
    {
    }

    v44 = sub_B138();
    v45 = v44;
LABEL_38:
    (*&stru_1A8.segname[(*v2 & *v1) - 8])(0);
    if ((v45 & 1) == 0 && (sub_CCD0() & 1) == 0)
    {
      result = sub_218D0();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      v49 = result;
      if (result)
      {
        v50 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
        v51 = *(v50 + 2);
        do
        {
          v52 = *(v50 + 3);
          if (v51 >= v52 >> 1)
          {
            v50 = sub_8B60((v52 > 1), v51 + 1, 1, v50);
          }

          *(v50 + 2) = v51 + 1;
          *&v50[8 * v51++ + 32] = 0;
          --v49;
        }

        while (v49);
      }

      else
      {
        v50 = &_swiftEmptyArrayStorage;
      }

      sub_D704(10920162, 0xA300000000000000, v50);

      (v3)(v53);
      v54 = sub_21900();
      (*&stru_B8.segname[(*v2 & *v1) - 8])(v54);
      result = (*&stru_108.segname[(*v2 & *v1) - 8])(v68);
      if (__OFADD__(*v55, 1))
      {
        goto LABEL_59;
      }

      ++*v55;
      (result)(v68, 0);
    }

    if ((v30 & 1) == 0)
    {
      (*&stru_158.segname[*v2 & *v1])(0);
      (*(&stru_158.size + (*v2 & *v1)))(0);
      (*(&stru_158.flags + (*v2 & *v1)))(0);
    }

    (*&stru_1A8.segname[(*v2 & *v1) + 16])(v44 & 1);
    if ((v44 & 1) == 0)
    {
      (*&stru_108.segname[(*v2 & *v1) + 8])(21);
    }

    if (v67 <= v3() >> 14)
    {
      goto LABEL_54;
    }
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
  return result;
}

void (*sub_AC08())(_BYTE *, void)
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input);
  v3 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  v4 = *&stru_B8.sectname[swift_isaMask & *v0];
  v4();
  v5 = sub_21960();
  v7 = v6;
  if (qword_3A3F0 != -1)
  {
    swift_once();
  }

  v8 = qword_3A3F8;
  if (!*(qword_3A3F8 + 16) || (v9 = sub_EAA8(v5, v7), (v10 & 1) == 0))
  {
LABEL_61:

    return 0;
  }

  v42 = v4;
  v11 = (*(v8 + 56) + 16 * v9);
  v40 = *v11;
  v12 = *&stru_158.segname[(swift_isaMask & *v1) - 8];
  v41 = v11[1];

  if ((v12(v13) & 1) == 0)
  {
    v14 = &unk_2C928;
    v15 = 11;
    while (--v15)
    {
      if (*(v14 - 1) != v5 || *v14 != v7)
      {
        v14 += 2;
        if ((sub_21AA0() & 1) == 0)
        {
          continue;
        }
      }

      sub_D8F0(12361954, 0xA300000000000000);
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_14:
  if (v5 != 58 || v7 != 0xE100000000000000)
  {
    v34 = sub_21AA0();
    v35 = v5 == 44 && v7 == 0xE100000000000000;
    v36 = v35;
    if ((v34 & 1) == 0 && !v36)
    {
      v37 = sub_21AA0();
      v38 = v5 == 46 && v7 == 0xE100000000000000;
      v39 = v38;
      if ((v37 & 1) == 0 && !v39 && (sub_21AA0() & 1) == 0)
      {
        swift_arrayDestroy();
LABEL_27:
        v17 = v42;
        goto LABEL_28;
      }
    }
  }

  v17 = v42;
  v42();
  v18 = sub_218E0();
  v19 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v19 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 >> 14 != 4 * v19)
  {
    v20 = sub_21960();
    v22 = v21;
    v23 = 11;
    v24 = &unk_2C928;
    while (--v23)
    {
      if (*(v24 - 1) != v20 || *v24 != v22)
      {
        v24 += 2;
        if ((sub_21AA0() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_28:
  sub_D8F0(v40, v41);

  (v17)(v26);
  v27 = sub_21900();
  (*&stru_B8.segname[(swift_isaMask & *v1) - 8])(v27);
  result = (*&stru_108.segname[(swift_isaMask & *v1) - 8])(v43);
  if (__OFADD__(*v29, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v29;
    result(v43, 0);
    (*&stru_158.segname[swift_isaMask & *v1])(1);
    v30 = &unk_2C928;
    v31 = 11;
    do
    {
      if (!--v31)
      {
        break;
      }

      if (*(v30 - 1) == v5 && *v30 == v7)
      {
        break;
      }

      v30 += 2;
    }

    while ((sub_21AA0() & 1) == 0);
    (*(&stru_158.size + (swift_isaMask & *v1)))(v31 != 0);
    if (v5 == 45 && v7 == 0xE100000000000000)
    {

      v33 = 1;
    }

    else
    {
      v33 = sub_21AA0();
    }

    (*(&stru_158.flags + (swift_isaMask & *v1)))(v33 & 1);
    return (&dword_0 + 1);
  }

  return result;
}

unint64_t sub_B138()
{
  v66 = *&stru_B8.sectname[swift_isaMask & *v0];
  v1 = v66();
  v2 = sub_DA4C(v1);
  if ((v2 & 1) == 0)
  {
    return v2 & 1;
  }

  v64 = v2;
  v3 = (*&stru_1A8.sectname[swift_isaMask & *v0])();
  if (v3)
  {
    v3 = sub_D704(8429794, 0xA300000000000000, &off_2D618);
  }

  if (((*&stru_1A8.segname[(swift_isaMask & *v0) + 8])(v3) & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input) & 0xFFFFFFFFFFFFLL;
    }

    v6 = 4 * v5;
    v7 = 7;
    v8 = &qword_2D248;
    while (1)
    {
      v10 = *(v8 - 3);
      v9 = *(v8 - 2);
      v11 = *v8;

      result = (v66)(v12);
      if (v6 < result >> 14)
      {
        __break(1u);
        goto LABEL_87;
      }

      v14 = sub_21970();
      v16 = sub_89F0(v10, v9, v14, v15);

      if (v16)
      {
        break;
      }

      v8 += 4;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    sub_D8F0(*(v8 - 1), v11);

    v43 = sub_218D0();

    (v66)(v44);
    v45 = sub_21900();
    (*&stru_B8.segname[(swift_isaMask & *v0) - 8])(v45);
    result = (*&stru_108.segname[(swift_isaMask & *v0) - 8])(v67);
    if (__OFADD__(*v46, v43))
    {
      goto LABEL_88;
    }

    *v46 += v43;
    (result)(v67, 0);
    goto LABEL_84;
  }

LABEL_11:
  v17 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input);
  v18 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  v66();
  v19 = sub_218E0();
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19 >> 14 == 4 * v20)
  {
    v65 = 0;
  }

  else
  {
    v21 = sub_21960();
    v23 = sub_B96C(v21, v22);

    v25 = v23 == 11 && (v23 & 0xFF00) != 5376;
    v65 = v25;
  }

  v26 = (*&stru_B8.sectname[swift_isaMask & *v0])();
  v27 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  if ((v27 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v28 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input) & 0xFFFFFFFFFFFFLL;
  }

  if (v26 >> 14 >= 4 * v28)
  {
    v31 = 0xE100000000000000;
    v29 = 32;
  }

  else
  {
    v66();
    v29 = sub_21960();
    v31 = v30;
  }

  v32 = sub_B96C(v29, v31);

  v34 = v32 >> 8;
  v35 = *&stru_108.segname[swift_isaMask & *v0];
  v39 = (v35)(v33) != 21 && v32 != 19 && v32 == 11 && BYTE1(v32) != 21 && (v32 & 0xFF00) == 1792;
  v40 = v35();
  v41 = BYTE1(v32);
  if (v40 == 2 || (v40 = v35(), v40 == 9) || (v40 = v35(), v40 == 13))
  {
    if (v32 == 11)
    {
      goto LABEL_44;
    }

LABEL_56:
    if (!v39)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v40 = v35();
  if (v40 != 14 || v32 != 11)
  {
    goto LABEL_56;
  }

LABEL_44:
  if (BYTE1(v32) == 21)
  {
    if (!v39)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v42 = (v32 & 0xFF00) == 0x100 || v39;
  if (v42)
  {
LABEL_57:
    v40 = sub_D704(10789090, 0xA300000000000000, &off_2D640);
  }

LABEL_58:
  v47 = HIWORD(v32);
  if (v32 - 2) < 0x11u && ((0x1E013u >> (v32 - 2)))
  {
    v48 = 1;
  }

  else
  {
    v48 = 0;
    if (v32 == 11 && BYTE1(v32) != 21 && (v32 & 0xFF00) == 0xD00)
    {
      v48 = v47 - 3 < 3;
    }
  }

  v49 = (*&stru_158.segname[(swift_isaMask & *v0) + 16])(v40);
  if (v48 && (v49 & 1) != 0)
  {
    v49 = sub_D704(8429794, 0xA300000000000000, &off_2D668);
  }

  v50 = (*&stru_B8.sectname[swift_isaMask & *v0])(v49);
  v51 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  if ((v51 & 0x2000000000000000) != 0)
  {
    v52 = HIBYTE(v51) & 0xF;
  }

  else
  {
    v52 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input) & 0xFFFFFFFFFFFFLL;
  }

  if (v50 >> 14 >= 4 * v52)
  {
    v55 = 0xE100000000000000;
    v53 = 32;
    if (!v65)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v66();
    v53 = sub_21960();
    v55 = v54;
    if (!v65)
    {
LABEL_73:
      v56 = v53;
      v57 = (*(&stru_158.reloff + (swift_isaMask & *v0)))();
      v53 = v56;
      goto LABEL_76;
    }
  }

  v57 = 1;
LABEL_76:
  v58 = sub_BB9C(v53, v55, v57 & 1);

  sub_D704(*&v58[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string], *&v58[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string + 8], *&v58[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations]);
  if (v47 != 27 || v41 == 21)
  {
    v60 = 21;
  }

  else
  {
    v60 = v34;
  }

  v61 = (*&stru_108.segname[(swift_isaMask & *v0) + 8])(v60);
  (v66)(v61);
  v62 = sub_21900();
  (*&stru_B8.segname[(swift_isaMask & *v0) - 8])(v62);
  result = (*&stru_108.segname[(swift_isaMask & *v0) - 8])(v67);
  if (!__OFADD__(*v63, 1))
  {
    ++*v63;
    (result)(v67, 0);

LABEL_84:
    v2 = v64;
    return v2 & 1;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_B96C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  sub_7908();
  v2 = sub_219F0();
  v4 = v3;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;
    v7 = 0;
    v18 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = v3 & 0xFFFFFFFFFFFFFFLL;
    v8 = 19;
    v9 = 21;
    v17 = 27;
    while (1)
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v12 = sub_21A30();
        v14 = v13;
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v20 = v6;
          v21 = v19;
          v11 = &v20 + v7;
        }

        else
        {
          v10 = v18;
          if ((v6 & 0x1000000000000000) == 0)
          {
            v10 = sub_21A70();
          }

          v11 = (v10 + v7);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        v15 = (__clz(v12 ^ 0xFF) - 24);
        if (v15 <= 2)
        {
          if (v15 != 1)
          {
            v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
            v14 = 2;
            goto LABEL_17;
          }

LABEL_16:
          v14 = 1;
          goto LABEL_17;
        }

        if (v15 == 3)
        {
          v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
          v14 = 4;
        }
      }

LABEL_17:
      if (v12 - 4371 >= 0xFFFFFFED)
      {
        v8 = sub_F7AC(v12 - 4352);
      }

      else if (v12 - 4470 >= 0xFFFFFFEB)
      {
        v9 = sub_F7BC(v12 - 4449);
      }

      else if (v12 - 4547 >= 0xFFFFFFE5)
      {
        v17 = sub_F7CC(v12 - 4520);
      }

      v7 += v14;
      if (v7 >= v5)
      {

        return (v17 << 16) | (v9 << 8) | v8;
      }
    }
  }

  return 1774867;
}

id sub_BB9C(uint64_t a1, uint64_t a2, char a3)
{
  v71 = 0;
  v72 = 0xE000000000000000;
  if (a1 == 10521837 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v8 = 0xA0E2A3A0E299A0E2;
    *(v8 + 1) = 0xA90000000000008CLL;
    *&v7[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D310;
    v56 = v7;
    v9 = &v56;
    goto LABEL_5;
  }

  if (a1 == 8631018 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v11 = objc_allocWithZone(v6);
    v12 = &v11[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v12 = 0x8EA0E2B8A0E2;
    *(v12 + 1) = 0xA600000000000000;
    *&v11[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D348;
    v57 = v11;
    v9 = &v57;
    goto LABEL_5;
  }

  if (a1 == 9419754 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v13 = objc_allocWithZone(v6);
    v14 = &v13[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v14 = 0xA0E2B8A0E2A0A0E2;
    *(v14 + 1) = 0xA90000000000008ELL;
    *&v13[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D378;
    v58 = v13;
    v9 = &v58;
    goto LABEL_5;
  }

  if (a1 == 9485290 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v15 = objc_allocWithZone(v6);
    v16 = &v15[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v16 = 0xA0E288A0E2A0A0E2;
    *(v16 + 1) = 0xAC0000008CA0E28ELL;
    *&v15[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D3B0;
    v59 = v15;
    v9 = &v59;
    goto LABEL_5;
  }

  if (a1 == 11633900 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v17 = objc_allocWithZone(v6);
    v18 = &v17[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v18 = 0xBBA0E2A0A0E2;
    *(v18 + 1) = 0xA600000000000000;
    *&v17[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D3F0;
    v60 = v17;
    v9 = &v60;
    goto LABEL_5;
  }

  if (a1 == 12422636 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v19 = objc_allocWithZone(v6);
    v20 = &v19[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v20 = 0xA0E2A0A0E2A0A0E2;
    *(v20 + 1) = 0xA9000000000000BBLL;
    *&v19[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D420;
    v61 = v19;
    v9 = &v61;
    goto LABEL_5;
  }

  if (a1 == 9806060 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v21 = objc_allocWithZone(v6);
    v22 = &v21[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v22 = 0xBBA0E2A8A0E2;
    *(v22 + 1) = 0xA600000000000000;
    *&v21[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D458;
    v62 = v21;
    v9 = &v62;
    goto LABEL_5;
  }

  v23 = a3;
  if (a1 == 10594796 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v24 = objc_allocWithZone(v6);
    v25 = &v24[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v25 = 0xA0E2A8A0E2A0A0E2;
    *(v25 + 1) = 0xA9000000000000BBLL;
    *&v24[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D488;
    v63 = v24;
    v9 = &v63;
    goto LABEL_5;
  }

  if (a1 == 11383532 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v26 = objc_allocWithZone(v6);
    v27 = &v26[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v27 = 0xBBA0E2B0A0E2;
    *(v27 + 1) = 0xA600000000000000;
    *&v26[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D4C0;
    v64 = v26;
    v9 = &v64;
    goto LABEL_5;
  }

  if (a1 == 11109868 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v28 = objc_allocWithZone(v6);
    v29 = &v28[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v29 = 0xA0E2B1A0E2A0A0E2;
    *(v29 + 1) = 0xA9000000000000B6;
    *&v28[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D4F0;
    v65 = v28;
    v9 = &v65;
    goto LABEL_5;
  }

  if (a1 == 11898604 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v30 = objc_allocWithZone(v6);
    v31 = &v30[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v31 = 0xA0E2A0A0E2A0A0E2;
    *(v31 + 1) = 0xAC000000B6A0E2B1;
    *&v30[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D528;
    v66 = v30;
    v9 = &v66;
    goto LABEL_5;
  }

  if (a1 == 9282028 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v32 = objc_allocWithZone(v6);
    v33 = &v32[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v33 = 0xA0E2B1A0E2A8A0E2;
    *(v33 + 1) = 0xA9000000000000B6;
    *&v32[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D568;
    v67 = v32;
    v9 = &v67;
    goto LABEL_5;
  }

  if (a1 == 10070764 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v34 = objc_allocWithZone(v6);
    v35 = &v34[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v35 = 0xA0E2A8A0E2A0A0E2;
    *(v35 + 1) = 0xAC000000B6A0E2B1;
    *&v34[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D5A0;
    v68 = v34;
    v9 = &v68;
    goto LABEL_5;
  }

  if (a1 == 10859500 && a2 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {
    v6 = type metadata accessor for ABTResult();
    v36 = objc_allocWithZone(v6);
    v37 = &v36[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
    *v37 = 0xA0E2B1A0E2B0A0E2;
    *(v37 + 1) = 0xA9000000000000B6;
    *&v36[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = &off_2D5E0;
    v69 = v36;
    v9 = &v69;
    goto LABEL_5;
  }

  v38 = sub_B96C(a1, a2);
  v39 = v38;
  v40 = HIWORD(v38);
  v41 = BYTE1(v38);
  if (v38 == 19 || v38 == 11)
  {
LABEL_62:
    if (v41 == 21)
    {
      goto LABEL_79;
    }

    if (v40 == 27)
    {
      goto LABEL_64;
    }

LABEL_88:
    if (v41 > 12)
    {
      switch(v41)
      {
        case 13:
          if (BYTE2(v39) <= 8u)
          {
            if (BYTE2(v39) <= 4u)
            {
              if (BYTE2(v39) == 3)
              {
                v45._countAndFlagsBits = 10199266;
                goto LABEL_205;
              }

              if (BYTE2(v39) != 4)
              {
                goto LABEL_65;
              }

              v45._countAndFlagsBits = 0x85A0E29BA0E2;
            }

            else
            {
              switch(BYTE2(v39))
              {
                case 5u:
                  v45._countAndFlagsBits = 0xB4A0E29BA0E2;
                  break;
                case 7u:
                  v45._countAndFlagsBits = 11509986;
                  goto LABEL_205;
                case 8u:
                  v45._countAndFlagsBits = 0x81A0E2AFA0E2;
                  break;
                default:
                  goto LABEL_65;
              }
            }
          }

          else if (BYTE2(v39) > 0xBu)
          {
            switch(BYTE2(v39))
            {
              case 0xCu:
                v45._countAndFlagsBits = 0xA6A0E2AFA0E2;
                break;
              case 0xDu:
                v45._countAndFlagsBits = 0xB2A0E2AFA0E2;
                break;
              case 0xEu:
                v45._countAndFlagsBits = 0xB4A0E2AFA0E2;
                break;
              default:
                goto LABEL_65;
            }
          }

          else
          {
            switch(BYTE2(v39))
            {
              case 9u:
                v45._countAndFlagsBits = 0xA2A0E2AFA0E2;
                break;
              case 0xAu:
                v45._countAndFlagsBits = 0x83A0E2AFA0E2;
                break;
              case 0xBu:
                v45._countAndFlagsBits = 0x84A0E2AFA0E2;
                break;
              default:
                goto LABEL_65;
            }
          }

          break;
        case 18:
          if (BYTE2(v39) <= 8u)
          {
            if (BYTE2(v39) <= 4u)
            {
              if (BYTE2(v39) == 3)
              {
                v45._countAndFlagsBits = 11903202;
                goto LABEL_205;
              }

              if (BYTE2(v39) != 4)
              {
                goto LABEL_65;
              }

              v45._countAndFlagsBits = 0x85A0E2B5A0E2;
            }

            else
            {
              switch(BYTE2(v39))
              {
                case 5u:
                  v45._countAndFlagsBits = 0xB4A0E2B5A0E2;
                  break;
                case 7u:
                  v45._countAndFlagsBits = 11444450;
                  goto LABEL_205;
                case 8u:
                  v45._countAndFlagsBits = 0x81A0E2AEA0E2;
                  break;
                default:
                  goto LABEL_65;
              }
            }
          }

          else if (BYTE2(v39) > 0xBu)
          {
            switch(BYTE2(v39))
            {
              case 0xCu:
                v45._countAndFlagsBits = 0xA6A0E2AEA0E2;
                break;
              case 0xDu:
                v45._countAndFlagsBits = 0xB2A0E2AEA0E2;
                break;
              case 0xEu:
                v45._countAndFlagsBits = 0xB4A0E2AEA0E2;
                break;
              default:
                goto LABEL_65;
            }
          }

          else
          {
            switch(BYTE2(v39))
            {
              case 9u:
                v45._countAndFlagsBits = 0xA2A0E2AEA0E2;
                break;
              case 0xAu:
                v45._countAndFlagsBits = 0x83A0E2AEA0E2;
                break;
              case 0xBu:
                v45._countAndFlagsBits = 0x84A0E2AEA0E2;
                break;
              default:
                goto LABEL_65;
            }
          }

          break;
        case 20:
          switch(BYTE2(v39))
          {
            case 5u:
              v45._countAndFlagsBits = 0xB4A0E29FA0E2;
              break;
            case 4u:
              v45._countAndFlagsBits = 0x85A0E29FA0E2;
              break;
            case 3u:
              v45._countAndFlagsBits = 10461410;
              goto LABEL_205;
            default:
              goto LABEL_65;
          }

          break;
        default:
          goto LABEL_65;
      }
    }

    else
    {
      switch(v41)
      {
        case 4:
          if (BYTE2(v39) > 0xEu)
          {
            goto LABEL_65;
          }

          switch(BYTE2(v39))
          {
            case 1:
              v46 = 0x81A0E29EA0E2;
              break;
            case 2:
              v46 = 0x84A0E29EA0E2;
              break;
            case 3:
              v45._countAndFlagsBits = 12493026;
              goto LABEL_205;
            case 4:
              v45._countAndFlagsBits = 0x85A0E2BEA0E2;
              goto LABEL_213;
            case 5:
              v45._countAndFlagsBits = 0xB4A0E2BEA0E2;
              goto LABEL_213;
            case 6:
              goto LABEL_65;
            case 7:
              v45._countAndFlagsBits = 10395874;
              goto LABEL_205;
            case 8:
              v45._countAndFlagsBits = 0x81A0E29EA0E2;
              goto LABEL_213;
            case 9:
              v45._countAndFlagsBits = 0xA2A0E29EA0E2;
              goto LABEL_213;
            case 0xA:
              v45._countAndFlagsBits = 0x83A0E29EA0E2;
              goto LABEL_213;
            case 0xB:
              v45._countAndFlagsBits = 0x84A0E29EA0E2;
              goto LABEL_213;
            case 0xC:
              v45._countAndFlagsBits = 0xA6A0E29EA0E2;
              goto LABEL_213;
            case 0xD:
              v45._countAndFlagsBits = 0xB2A0E29EA0E2;
              goto LABEL_213;
            case 0xE:
              v45._countAndFlagsBits = 0xB4A0E29EA0E2;
              goto LABEL_213;
            default:
              v45._countAndFlagsBits = 12165346;
              goto LABEL_205;
          }

          v45._countAndFlagsBits = v46 + 1769472;
          break;
        case 6:
          if (BYTE2(v39) > 9u)
          {
            if (BYTE2(v39) > 0xCu)
            {
              switch(BYTE2(v39))
              {
                case 0xDu:
                  v45._countAndFlagsBits = 0xB2A0E2B3A0E2;
                  break;
                case 0xEu:
                  v45._countAndFlagsBits = 0xB4A0E2B3A0E2;
                  break;
                case 0x14u:
                  v45._countAndFlagsBits = 12296418;
                  goto LABEL_205;
                default:
                  goto LABEL_65;
              }
            }

            else
            {
              switch(BYTE2(v39))
              {
                case 0xAu:
                  v45._countAndFlagsBits = 0x83A0E2B3A0E2;
                  break;
                case 0xBu:
                  v45._countAndFlagsBits = 0x84A0E2B3A0E2;
                  break;
                case 0xCu:
                  v45._countAndFlagsBits = 0xA6A0E2B3A0E2;
                  break;
                default:
                  goto LABEL_65;
              }
            }
          }

          else if (BYTE2(v39) > 6u)
          {
            switch(BYTE2(v39))
            {
              case 7u:
                v45._countAndFlagsBits = 11772130;
                goto LABEL_205;
              case 8u:
                v45._countAndFlagsBits = 0x81A0E2B3A0E2;
                break;
              case 9u:
                v45._countAndFlagsBits = 0xA2A0E2B3A0E2;
                break;
              default:
                goto LABEL_65;
            }
          }

          else
          {
            switch(BYTE2(v39))
            {
              case 3u:
                v45._countAndFlagsBits = 10592482;
                goto LABEL_205;
              case 4u:
                v45._countAndFlagsBits = 0x85A0E2A1A0E2;
                break;
              case 5u:
                v45._countAndFlagsBits = 0xB4A0E2A1A0E2;
                break;
              default:
                goto LABEL_65;
            }
          }

          break;
        case 8:
          if (BYTE2(v39) <= 2u)
          {
            if (!BYTE2(v39))
            {
              v45._countAndFlagsBits = 11378914;
              goto LABEL_205;
            }

            if (BYTE2(v39) == 1)
            {
              v45._countAndFlagsBits = 0x81A0E2ADA0E2;
            }

            else
            {
              if (BYTE2(v39) != 2)
              {
                goto LABEL_65;
              }

              v45._countAndFlagsBits = 0x84A0E2ADA0E2;
            }
          }

          else
          {
            if (BYTE2(v39) <= 4u)
            {
              if (BYTE2(v39) != 3)
              {
                if (BYTE2(v39) != 4)
                {
                  goto LABEL_65;
                }

                v45._countAndFlagsBits = 0x85A0E2B7A0E2;
                break;
              }

              v45._countAndFlagsBits = 12034274;
LABEL_205:
              v45._object = 0xA300000000000000;
LABEL_214:
              sub_21910(v45);
              goto LABEL_215;
            }

            if (BYTE2(v39) != 5)
            {
              if (BYTE2(v39) != 20)
              {
                goto LABEL_65;
              }

              v45._countAndFlagsBits = 12558562;
              goto LABEL_205;
            }

            v45._countAndFlagsBits = 0xB4A0E2B7A0E2;
          }

          break;
        default:
          goto LABEL_65;
      }
    }

LABEL_213:
    v45._object = 0xA600000000000000;
    goto LABEL_214;
  }

  if ((v38 & 0xFF00) != 0)
  {
LABEL_61:
    v73._countAndFlagsBits = sub_E2B8(v38);
    sub_21910(v73);

    goto LABEL_62;
  }

  if (v38 <= 8u)
  {
    if (v38)
    {
      if (v38 == 1)
      {
        v43._countAndFlagsBits = 0xABA0E2A0A0E2;
LABEL_74:
        v43._object = 0xA600000000000000;
LABEL_78:
        sub_21910(v43);
LABEL_79:
        if (v40 != 27)
        {
          v74._countAndFlagsBits = sub_E570(v40);
          sub_21910(v74);
        }

        goto LABEL_215;
      }

      goto LABEL_81;
    }

    v43._countAndFlagsBits = 11247842;
LABEL_77:
    v43._object = 0xA300000000000000;
    goto LABEL_78;
  }

  if (v38 == 9)
  {
    v43._countAndFlagsBits = 8888546;
    goto LABEL_77;
  }

  if (v38 == 10)
  {
    v43._countAndFlagsBits = 0x87A0E2A0A0E2;
    goto LABEL_74;
  }

LABEL_81:
  if (v40 == 27 && (v23 & 1) != 0)
  {
    goto LABEL_61;
  }

  if (v38 == 5)
  {
    v44._countAndFlagsBits = 9478370;
  }

  else
  {
    if (v38 != 14)
    {
      v42._countAndFlagsBits = sub_E2B8(v38);
      goto LABEL_66;
    }

    v44._countAndFlagsBits = 11575522;
  }

  v44._object = 0xA300000000000000;
  sub_21910(v44);
  if (v40 != 27)
  {
    goto LABEL_88;
  }

LABEL_64:
  if (v41 != 21)
  {
LABEL_65:
    v42._countAndFlagsBits = sub_E404(SBYTE1(v39));
LABEL_66:
    sub_21910(v42);

    goto LABEL_79;
  }

LABEL_215:
  v47 = v71;
  v48 = v72;
  v49 = sub_218D0();
  if (v49 < 0)
  {
    __break(1u);
    JUMPOUT(0xCC94);
  }

  v50 = v49;
  if (v49)
  {
    v51 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
    v52 = *(v51 + 2);
    do
    {
      v53 = *(v51 + 3);
      if (v52 >= v53 >> 1)
      {
        v51 = sub_8B60((v53 > 1), v52 + 1, 1, v51);
      }

      *(v51 + 2) = v52 + 1;
      *&v51[8 * v52++ + 32] = 0;
      --v50;
    }

    while (v50);
  }

  else
  {
    v51 = &_swiftEmptyArrayStorage;
  }

  v6 = type metadata accessor for ABTResult();
  v54 = objc_allocWithZone(v6);
  v55 = &v54[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_string];
  *v55 = v47;
  *(v55 + 1) = v48;
  *&v54[OBJC_IVAR____TtC22AppleBrailleTranslator9ABTResult_locations] = v51;
  v70 = v54;
  v9 = &v70;
LABEL_5:
  v9->super_class = v6;
  return [(objc_super *)v9 init];
}

uint64_t sub_CCD0()
{
  v2 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input);
  v3 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  v5 = *&stru_B8.sectname[swift_isaMask & *v0];
  v5();
  v6 = sub_21960();
  v8 = v7;
  if (v6 != 34 || v7 != 0xE100000000000000)
  {
    v1 = v6;
    if ((sub_21AA0() & 1) == 0)
    {
      v21 = v1 == 39 && v8 == 0xE100000000000000;
      if (v21 || (sub_21AA0() & 1) != 0)
      {

        if ((*(&stru_108.size + (swift_isaMask & *v0)))(v22))
        {
          v23 = 0x84A0E2B4A0E2;
        }

        else
        {
          v23 = 0xA6A0E2A0A0E2;
        }

        sub_D8F0(v23, 0xA600000000000000);
        v8 = &v59;
        v24 = (*(&stru_108.reloff + (swift_isaMask & *v0)))(&v59);
        *v25 = !*v25;
        v26 = v24(&v59, 0);
        (v5)(v26);
        v27 = sub_21900();
        (*&stru_B8.segname[(swift_isaMask & *v0) - 8])(v27);
        v3 = &v59;
        v17 = (*&stru_108.segname[(swift_isaMask & *v0) - 8])(&v59);
        v19 = *v18 + 1;
        if (!__OFADD__(*v18, 1))
        {
          goto LABEL_9;
        }

        __break(1u);
      }

      if (qword_3A3E0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_88;
    }
  }

  v11 = (*(&stru_108.flags + (swift_isaMask & *v0)))(v10);
  v12 = 2490368;
  if (v11)
  {
    v12 = 3407872;
  }

  sub_D8F0(v12 | 0x80A0E2, 0xA300000000000000);
  v8 = &v59;
  v13 = (*&stru_158.sectname[swift_isaMask & *v0])(&v59);
  *v14 = !*v14;
  v15 = v13(&v59, 0);
  (v5)(v15);
  v16 = sub_21900();
  (*&stru_B8.segname[(swift_isaMask & *v0) - 8])(v16);
  v17 = (*&stru_108.segname[(swift_isaMask & *v0) - 8])(&v59);
  v19 = *v18 + 1;
  if (__OFADD__(*v18, 1))
  {
    __break(1u);
LABEL_77:

    swift_arrayDestroy();
    while (1)
    {
      v52 = &unk_2E460;
      v53 = 18;
      do
      {
        if (!--v53)
        {
          break;
        }

        if (*(v52 - 1) == v1 && *v52 == v8)
        {
          break;
        }

        v52 += 2;
      }

      while ((sub_21AA0() & 1) == 0);

      swift_arrayDestroy();
      (*&stru_1A8.segname[(swift_isaMask & *v2) - 8])(v53 != 0);
      v8 = v58;
      sub_D8F0(v57, v58);

      (v5)(v55);
      v56 = sub_21900();
      (*&stru_B8.segname[(swift_isaMask & *v2) - 8])(v56);
      v3 = &v59;
      v17 = (*&stru_108.segname[(swift_isaMask & *v2) - 8])(&v59);
      v19 = *v18 + 1;
      if (!__OFADD__(*v18, 1))
      {
        break;
      }

      __break(1u);
LABEL_88:
      swift_once();
LABEL_22:
      v28 = qword_3B0C0;
      if (!*(qword_3B0C0 + 16))
      {
        goto LABEL_75;
      }

      v29 = sub_EAA8(v1, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_75;
      }

      v31 = (*(v28 + 56) + 16 * v29);
      v57 = *v31;
      v58 = v31[1];
      v32 = v1 == 43 && v8 == 0xE100000000000000;
      if (!v32 && (sub_21AA0() & 1) == 0 && (v1 != 38851 || v8 != 0xA200000000000000))
      {
        v34 = sub_21AA0();
        v35 = v1 == 47043 && v8 == 0xA200000000000000;
        v36 = v35;
        if ((v34 & 1) == 0 && !v36)
        {
          v37 = sub_21AA0();
          v38 = v1 == 61 && v8 == 0xE100000000000000;
          v39 = v38;
          if ((v37 & 1) == 0 && !v39)
          {
            v40 = sub_21AA0();
            v41 = v1 == 62 && v8 == 0xE100000000000000;
            v42 = v41;
            if ((v40 & 1) == 0 && !v42)
            {
              v43 = sub_21AA0();
              v44 = v1 == 60 && v8 == 0xE100000000000000;
              v45 = v44;
              if ((v43 & 1) == 0 && !v45 && (sub_21AA0() & 1) == 0)
              {
                goto LABEL_77;
              }
            }
          }
        }
      }

      v46 = swift_arrayDestroy();
      (v5)(v46);
      v47 = sub_218E0();
      if ((v5)() >= 0x4000)
      {
        v48 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v48 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v47 >> 14 != 4 * v48)
        {
          v5();
          v49 = sub_218F0();
          if (sub_DA4C(v49) & 1) != 0 && (sub_DA4C(v47))
          {

            (*&stru_1A8.segname[(swift_isaMask & *v2) - 8])(0);
            sub_D704(8429794, 0xA300000000000000, &off_2E410);
            v59 = v57;
            v60 = v58;

            v61._countAndFlagsBits = 8429794;
            v61._object = 0xA300000000000000;
            sub_21910(v61);

            sub_D8F0(v59, v60);

            (v5)(v50);
            v51 = sub_21900();
            (*&stru_B8.segname[(swift_isaMask & *v2) - 8])(v51);
            v17 = (*&stru_108.segname[(swift_isaMask & *v2) - 8])(&v59);
            v19 = *v18 + 1;
            if (!__OFADD__(*v18, 1))
            {
              break;
            }

            __break(1u);
LABEL_75:

            return 0;
          }
        }
      }
    }
  }

LABEL_9:
  *v18 = v19;
  v17(&v59, 0);
  return 1;
}

uint64_t *sub_D5BC()
{
  if (qword_3A3E0 != -1)
  {
    swift_once();
  }

  return &qword_3B0C0;
}

BOOL sub_D60C(uint64_t a1, uint64_t a2)
{
  if (qword_3A3E8 != -1)
  {
    swift_once();
  }

  v4 = (qword_3B0C8 + 40);
  v5 = *(qword_3B0C8 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    if (*(v4 - 1) == a1 && *v4 == a2)
    {
      break;
    }

    v4 += 2;
  }

  while ((sub_21AA0() & 1) == 0);
  return v5 != 0;
}

uint64_t *sub_D6B4()
{
  if (qword_3A3E8 != -1)
  {
    swift_once();
  }

  return &qword_3B0C8;
}

char *sub_D704(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = (*(&stru_B8.size + (swift_isaMask & *v3)))(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_21910(v19);
  v7(v18, 0);
  v8 = *(a3 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v18[0] = &_swiftEmptyArrayStorage;
    result = sub_F180(0, v8, 0);
    v9 = v18[0];
    v11 = *(&stru_B8.reserved2 + (swift_isaMask & *v3));
    v12 = (a3 + 32);
    while (1)
    {
      v13 = *v12++;
      result = v11(result);
      v14 = &result[v13];
      if (__OFADD__(v13, result))
      {
        break;
      }

      v18[0] = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_F180((v15 > 1), v16 + 1, 1);
        v9 = v18[0];
      }

      v9[2] = v16 + 1;
      v9[v16 + 4] = v14;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v17 = (*(&stru_B8.flags + (swift_isaMask & *v3)))(v18);
    sub_ECE4(v9);
    return v17(v18, 0);
  }

  return result;
}

uint64_t sub_D8F0(uint64_t a1, void *a2)
{
  result = sub_218D0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
      v7 = *(v6 + 2);
      do
      {
        v8 = *(v6 + 3);
        if (v7 >= v8 >> 1)
        {
          v6 = sub_8B60((v8 > 1), v7 + 1, 1, v6);
        }

        *(v6 + 2) = v7 + 1;
        *&v6[8 * v7++ + 32] = 0;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage;
    }

    sub_D704(a1, a2, v6);
  }

  return result;
}

BOOL sub_D9D8()
{
  v1 = (*&stru_B8.sectname[swift_isaMask & *v0])();
  v2 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input) & 0xFFFFFFFFFFFFLL;
  }

  return v1 >> 14 >= 4 * v3;
}

uint64_t sub_DA4C(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input) & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 14 >= 4 * v3)
  {
    return 0;
  }

  sub_21960();
  sub_7908();
  v4 = sub_21A00();
  v6 = sub_DB08(v4, v5);

  if ((v6 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    return (v6 - 44032) >> 4 < 0x30B;
  }

  return result;
}

unint64_t sub_DB08(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_F2A4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_21A30();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_21A70();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

unint64_t sub_DC54()
{
  v1 = *&stru_B8.sectname[swift_isaMask & *v0];
  v2 = v1();
  if ((sub_E05C(v2) & 1) == 0)
  {
    return 0;
  }

  v3 = v1();
  v4 = v1();
  v5 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input) & 0xFFFFFFFFFFFFLL;
  }

  v28 = 4 * v6;
  if (4 * v6 <= v3 >> 14)
  {
    v13 = 1;
  }

  else
  {
    while (1)
    {
      v27 = v4;
      v7 = sub_21960();
      v9 = v8;
      v26 = sub_DA4C(v3);
      if (v26)
      {
        break;
      }

      v10 = 11;
      v11 = &unk_2C928;
      while (--v10)
      {
        if (*(v11 - 1) != v7 || *v11 != v9)
        {
          v11 += 2;
          if ((sub_21AA0() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v3 = sub_218E0();
      v4 = v27;
      if (sub_E05C(v3))
      {
        v4 = v3;
      }

      v13 = 1;
      if (v28 <= v3 >> 14)
      {
        goto LABEL_21;
      }
    }

LABEL_20:

    v13 = v26;
  }

  do
  {
LABEL_21:
    v15 = sub_218F0();
    sub_21960();
    v16 = sub_21840();
  }

  while ((v16 & 1) != 0 && (v1)(v17) >> 14 < v15 >> 14);
  result = sub_218E0();
  if (v28 != result >> 14)
  {
    v18 = result;
    v20 = sub_21960();
    v21 = v19;
    if (v20 == 47 && v19 == 0xE100000000000000 || (sub_21AA0() & 1) != 0 || v20 == 45 && v21 == 0xE100000000000000 || (sub_21AA0() & 1) != 0 || v20 == 9535714 && v21 == 0xA300000000000000 || (sub_21AA0() & 1) != 0 || v20 == 126 && v21 == 0xE100000000000000 || (sub_21AA0() & 1) != 0)
    {

      swift_arrayDestroy();
      if (v13)
      {
        return v18;
      }
    }

    else
    {
      v22 = v13;
      swift_arrayDestroy();
      v23 = &unk_2CA48;
      v24 = 23;
      while (--v24)
      {
        if (*(v23 - 1) != v20 || *v23 != v21)
        {
          v23 += 2;
          if ((sub_21AA0() & 1) == 0)
          {
            continue;
          }
        }

        swift_arrayDestroy();
        return v18;
      }

      swift_arrayDestroy();
      if (v22)
      {
        return v18;
      }
    }

    return v18;
  }

  return result;
}

uint64_t sub_E05C(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC22AppleBrailleTranslator19ABTKoreanTranslator_input) & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 14 >= 4 * v3)
  {
    return 0;
  }

  v5 = sub_21960() == 10650850 && v4 == 0xA300000000000000;
  if (v5 || (sub_21AA0() & 1) != 0)
  {

    return 0;
  }

  sub_7908();
  v7 = sub_21A00();
  v9 = sub_DB08(v7, v8);

  if ((v9 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    result = 1;
    if ((v9 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && (v9 - 938) <= 0xFFFFFFE6)
    {
      return (v9 - 945) < 0x19;
    }
  }

  return result;
}

id ABTKoreanTranslator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_E21C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_E2B8(char a1)
{
  result = 8954082;
  switch(a1)
  {
    case 1:
      result = 0x88A0E2A0A0E2;
      break;
    case 2:
      result = 9019618;
      break;
    case 3:
      result = 9085154;
      break;
    case 4:
      result = 0x8AA0E2A0A0E2;
      break;
    case 5:
      result = 9478370;
      break;
    case 6:
      result = 9543906;
      break;
    case 7:
      result = 10002658;
      break;
    case 8:
      result = 0x98A0E2A0A0E2;
      break;
    case 9:
      result = 10526946;
      break;
    case 10:
      result = 0xA0A0E2A0A0E2;
      break;
    case 11:
      result = 10199266;
      break;
    case 12:
      result = 11051234;
      break;
    case 13:
      result = 0xA8A0E2A0A0E2;
      break;
    case 14:
      result = 11575522;
      break;
    case 15:
      result = 9150690;
      break;
    case 16:
      result = 9674978;
      break;
    case 17:
      result = 10068194;
      break;
    case 18:
      result = 10133730;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_E404(char a1)
{
  result = 10723554;
  switch(a1)
  {
    case 1:
      result = 9937122;
      break;
    case 2:
      result = 10264802;
      break;
    case 3:
      result = 0x97A0E29CA0E2;
      break;
    case 4:
      result = 9347298;
      break;
    case 5:
      result = 10330338;
      break;
    case 6:
      result = 11641058;
      break;
    case 7:
      result = 9216226;
      break;
    case 8:
      result = 10854626;
      break;
    case 9:
      result = 10985698;
      break;
    case 10:
      result = 0x97A0E2A7A0E2;
      break;
    case 11:
      result = 12427490;
      break;
    case 12:
      result = 11313378;
      break;
    case 13:
      result = 9281762;
      break;
    case 14:
      result = 9412834;
      break;
    case 15:
      result = 0x97A0E28FA0E2;
      break;
    case 16:
      result = 0x97A0E28DA0E2;
      break;
    case 17:
      result = 11116770;
      break;
    case 18:
      result = 11182306;
      break;
    case 19:
      result = 12230882;
      break;
    case 20:
      result = 9806050;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_E570(char a1)
{
  result = 8495330;
  switch(a1)
  {
    case 1:
      result = 0x81A0E281A0E2;
      break;
    case 2:
      result = 0x84A0E281A0E2;
      break;
    case 3:
      result = 9609442;
      break;
    case 4:
      result = 0x85A0E292A0E2;
      break;
    case 5:
      result = 0xB4A0E292A0E2;
      break;
    case 6:
      result = 9740514;
      break;
    case 7:
      result = 8560866;
      break;
    case 8:
      v3 = 0x81A0E281A0E2;
      goto LABEL_24;
    case 9:
      result = 0xA2A0E282A0E2;
      break;
    case 10:
      result = 0x83A0E282A0E2;
      break;
    case 11:
      v3 = 0x84A0E281A0E2;
LABEL_24:
      result = v3 + 0x10000;
      break;
    case 12:
      result = 0xA6A0E282A0E2;
      break;
    case 13:
      result = 0xB2A0E282A0E2;
      break;
    case 14:
      result = 0xB4A0E282A0E2;
      break;
    case 15:
      result = 10658018;
      break;
    case 16:
      result = 8626402;
      break;
    case 17:
      result = 0x84A0E283A0E2;
      break;
    case 18:
      result = 8691938;
      break;
    case 19:
      result = 9216226;
      break;
    case 20:
      result = 11968738;
      break;
    case 21:
      result = 8757474;
      break;
    case 22:
      result = 8823010;
      break;
    case 23:
      result = 9871586;
      break;
    case 24:
      result = 10920162;
      break;
    case 25:
      result = 11706594;
      break;
    case 26:
      result = 11837666;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_E810@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F7AC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_E848@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F7BC(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_E874()
{
  v1 = *v0;
  sub_21AB0();
  sub_21AC0(v1);
  return sub_21AD0();
}

Swift::Int sub_E8BC()
{
  v1 = *v0;
  sub_21AB0();
  sub_21AC0(v1);
  return sub_21AD0();
}

unint64_t sub_E900@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F7CC(*a1);
  *a2 = result;
  return result;
}

void sub_E948()
{
  if (qword_3A3E0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_3B0C0 + 16);
  v1 = v0 + 2;
  if (__OFADD__(v0, 2))
  {
    __break(1u);
  }

  else
  {

    v3 = sub_EBD8(0, v1, 0, &_swiftEmptyArrayStorage);

    sub_EEC4(v2);
    sub_EDD0(&off_2E590);

    qword_3B0C8 = v3;
  }
}

uint64_t sub_EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_F698(a2);
  sub_78C0(&qword_39F28, &unk_255E0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

unint64_t sub_EAA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21AB0();
  sub_218C0();
  v6 = sub_21AD0();

  return sub_EB20(a1, a2, v6);
}

unint64_t sub_EB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21AA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_EBD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_78C0(&qword_39F20, &qword_25940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_ECE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_8B60(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_EDD0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_EBD8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_EEC4(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_EBD8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_F540(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_EBD8((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_FD24();
  *v1 = v4;
  return result;
}

char *sub_F180(char *a1, int64_t a2, char a3)
{
  result = sub_F1A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_F1A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_78C0(&qword_39E38, &unk_255F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_F2A4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_F33C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_F3B0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_F33C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_F4C4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_F3B0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_21A70();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_F4C4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21940();
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
    v5 = sub_21930();
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

void *sub_F540(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_F698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_78C0(&qword_39F30, &qword_256A0);
    v3 = sub_21A90();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_EAA8(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_F7AC(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

unint64_t sub_F7BC(unint64_t result)
{
  if (result >= 0x15)
  {
    return 21;
  }

  return result;
}

unint64_t sub_F7CC(unint64_t result)
{
  if (result >= 0x1B)
  {
    return 27;
  }

  return result;
}

unint64_t sub_F7E0()
{
  result = qword_39EB8;
  if (!qword_39EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39EB8);
  }

  return result;
}

unint64_t sub_F838()
{
  result = qword_39EC0;
  if (!qword_39EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39EC0);
  }

  return result;
}

unint64_t sub_F890()
{
  result = qword_39EC8;
  if (!qword_39EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackChoseong(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackChoseong(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackJungseong(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackJungseong(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackJongseong(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackJongseong(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_FD54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_FDB8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_FE7C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_FF18()
{
  swift_beginAccess();
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_FF50(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_10034()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_10080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_10124()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_1015C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_10228(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_102B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 15;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0xE000000000000000;
  *(v4 + 80) = &_swiftEmptyArrayStorage;
  *(v4 + 88) = 0;
  *(v4 + 40) = 0;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  return v4;
}

uint64_t sub_1035C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 15;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  *(v2 + 80) = &_swiftEmptyArrayStorage;
  *(v2 + 88) = 0;
  *(v2 + 40) = 0;
  swift_beginAccess();
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  return v2;
}

uint64_t sub_103DC()
{
  v1 = v0;
  v2 = *(*v0 + 136);
  v4 = v0[2];
  v3 = v0[3];
  v5 = v2();
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  if (4 * v6 <= v5 >> 14)
  {
LABEL_53:
    type metadata accessor for ABTResult();
    v45 = (*(*v1 + 216))();
    v47 = v46;
    v48 = (*(*v1 + 240))();
    return sub_91E0(v45, v47, v48);
  }

  while (1)
  {
    v14 = sub_10A40();
    if (v14)
    {
      goto LABEL_8;
    }

    if (qword_3A898 != -1)
    {
      swift_once();
    }

    v15 = qword_3B0D8;
    if (v7 <= v2() >> 14)
    {
      v18 = 0xE100000000000000;
      v16 = 32;
      if (!*(v15 + 16))
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v2();
      v16 = sub_21960();
      v18 = v17;
      if (!*(v15 + 16))
      {
        goto LABEL_23;
      }
    }

    v19 = sub_EAA8(v16, v18);
    v21 = v20;

    if (v21)
    {
      v23 = (*(v15 + 56) + 16 * v19);
      v24 = *v23;
      v25 = v23[1];

      result = sub_218D0();
      if (result < 0)
      {
        goto LABEL_56;
      }

      v26 = result;
      if (result)
      {
        v27 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
        v28 = *(v27 + 2);
        do
        {
          v29 = *(v27 + 3);
          if (v28 >= v29 >> 1)
          {
            v27 = sub_8B60((v29 > 1), v28 + 1, 1, v27);
          }

          *(v27 + 2) = v28 + 1;
          *&v27[8 * v28++ + 32] = 0;
          --v26;
        }

        while (v26);
      }

      else
      {
        v27 = &_swiftEmptyArrayStorage;
      }

      sub_10FD4(v24, v25, v27);

      (v2)(v41);
      v42 = sub_21900();
      (*(*v1 + 144))(v42);
      result = (*(*v1 + 280))(v49);
      v13 = *v12 + 1;
      if (__OFADD__(*v12, 1))
      {
        goto LABEL_57;
      }

      goto LABEL_7;
    }

LABEL_24:
    if (v7 <= (v2)(v22) >> 14)
    {
      v32 = 0xE100000000000000;
    }

    else
    {
      v2();
      v30 = sub_21960();
      v32 = v31;
      if (v30 != 32)
      {
        goto LABEL_30;
      }
    }

    if (v32 == 0xE100000000000000)
    {
      break;
    }

LABEL_30:
    v33 = sub_21AA0();

    if (v33)
    {
      goto LABEL_31;
    }

    result = sub_218D0();
    if (result < 0)
    {
      goto LABEL_58;
    }

    v37 = result;
    if (result)
    {
      v38 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
      v39 = *(v38 + 2);
      do
      {
        v40 = *(v38 + 3);
        if (v39 >= v40 >> 1)
        {
          v38 = sub_8B60((v40 > 1), v39 + 1, 1, v38);
        }

        *(v38 + 2) = v39 + 1;
        *&v38[8 * v39++ + 32] = 0;
        --v37;
      }

      while (v37);
    }

    else
    {
      v38 = &_swiftEmptyArrayStorage;
    }

    sub_10FD4(0, 0xE000000000000000, v38);

    (v2)(v43);
    v44 = sub_21900();
    (*(*v1 + 144))(v44);
    result = (*(*v1 + 280))(v49);
    v13 = *v12 + 1;
    if (__OFADD__(*v12, 1))
    {
      goto LABEL_59;
    }

LABEL_7:
    *v12 = v13;
    v14 = (result)(v49, 0);
LABEL_8:
    if (v7 <= (v2)(v14) >> 14)
    {
      goto LABEL_53;
    }
  }

LABEL_31:
  result = sub_218D0();
  if ((result & 0x8000000000000000) == 0)
  {
    v34 = result;
    if (result)
    {
      v8 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
      v35 = *(v8 + 2);
      do
      {
        v36 = *(v8 + 3);
        if (v35 >= v36 >> 1)
        {
          v8 = sub_8B60((v36 > 1), v35 + 1, 1, v8);
        }

        *(v8 + 2) = v35 + 1;
        *&v8[8 * v35++ + 32] = 0;
        --v34;
      }

      while (v34);
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
    }

    sub_10FD4(8429794, 0xA300000000000000, v8);

    (v2)(v9);
    v10 = sub_21900();
    (*(*v1 + 144))(v10);
    result = (*(*v1 + 280))(v49);
    v13 = *v12 + 1;
    if (__OFADD__(*v12, 1))
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void (*sub_10A40())(_BYTE *, void)
{
  v1 = v0;
  v2 = *(*v0 + 136);
  v3 = v2();
  v4 = (*(*v0 + 184))();
  if ((v5 & 1) == 0 && !((v4 ^ v3) >> 14))
  {
    sub_111A0(0x84A0E2A0A0E2, 0xA600000000000000);
    v4 = (*(*v0 + 192))(0, 1);
  }

  v6 = (v2)(v4);
  v7 = sub_112E0(v6);
  v8 = *v0;
  if ((v7 & 1) == 0)
  {
    if ((*(v8 + 160))())
    {
      (*(*v0 + 168))(0);
    }

    return 0;
  }

  if (((*(v8 + 208))() & 1) == 0)
  {
    v29 = (*(*v0 + 160))();
    v30 = v2();
    if (v29)
    {
      if ((sub_113A8(v30) & 1) == 0)
      {
        sub_111A0(0x84A0E2A0A0E2, 0xA600000000000000);
        (*(*v0 + 168))(0);
      }
    }

    else
    {
      v31 = sub_11464(v30);
      if (v32)
      {
        v33 = (v2)(v31);
        if (sub_113A8(v33) & 1) != 0 && (v34 = v0[2], v35 = v0[3], v36 = sub_218E0(), (sub_113A8(v36)))
        {
          sub_111A0(0xA0A0E2A0A0E2, 0xA600000000000000);
          (*(*v0 + 168))(1);
        }

        else
        {
          v38 = v2();
          if (sub_113A8(v38))
          {
            sub_111A0(10526946, 0xA300000000000000);
          }
        }
      }

      else
      {
        v37 = v31;
        sub_111A0(0xA0E2A0A0E2A0A0E2, 0xA9000000000000A0);
        (*(*v0 + 192))(v37, 0);
      }
    }
  }

  if (qword_3A890 != -1)
  {
    swift_once();
  }

  v9 = qword_3B0D0;
  v10 = (*(*v0 + 136))();
  v11 = v0[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v10 >> 14 < 4 * v12)
  {
    v2();
    v13 = sub_21960();
    v15 = v14;
    if (*(v9 + 16))
    {
      goto LABEL_12;
    }

LABEL_21:

    return 0;
  }

  v15 = 0xE100000000000000;
  v13 = 32;
  if (!*(v9 + 16))
  {
    goto LABEL_21;
  }

LABEL_12:
  v16 = sub_EAA8(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = (*(v9 + 56) + 24 * v16);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];

  sub_10FD4(v20, v21, v22);

  v24 = v1[2];
  v25 = v1[3];
  (v2)(v23);
  v26 = sub_21900();
  (*(*v1 + 144))(v26);
  result = (*(*v1 + 280))(v39);
  if (__OFADD__(*v28, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v28;
    result(v39, 0);
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t *sub_10F34()
{
  if (qword_3A890 != -1)
  {
    swift_once();
  }

  return &qword_3B0D0;
}

uint64_t *sub_10F84()
{
  if (qword_3A898 != -1)
  {
    swift_once();
  }

  return &qword_3B0D8;
}

char *sub_10FD4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = (*(*v3 + 232))(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_21910(v19);
  v7(v18, 0);
  v8 = *(a3 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v18[0] = &_swiftEmptyArrayStorage;
    result = sub_F180(0, v8, 0);
    v9 = v18[0];
    v11 = *(*v3 + 264);
    v12 = (a3 + 32);
    while (1)
    {
      v13 = *v12++;
      result = v11(result);
      v14 = &result[v13];
      if (__OFADD__(v13, result))
      {
        break;
      }

      v18[0] = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_F180((v15 > 1), v16 + 1, 1);
        v9 = v18[0];
      }

      v9[2] = v16 + 1;
      v9[v16 + 4] = v14;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v17 = (*(*v3 + 256))(v18);
    sub_ECE4(v9);
    return v17(v18, 0);
  }

  return result;
}

uint64_t sub_111A0(uint64_t a1, void *a2)
{
  result = sub_218D0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = sub_8B60(0, 1, 1, &_swiftEmptyArrayStorage);
      v7 = *(v6 + 2);
      do
      {
        v8 = *(v6 + 3);
        if (v7 >= v8 >> 1)
        {
          v6 = sub_8B60((v8 > 1), v7 + 1, 1, v6);
        }

        *(v6 + 2) = v7 + 1;
        *&v6[8 * v7++ + 32] = 0;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage;
    }

    sub_10FD4(a1, a2, v6);
  }

  return result;
}

BOOL sub_11288()
{
  v1 = (*(*v0 + 136))();
  v2 = v0[3];
  v3 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  return v1 >> 14 >= 4 * v3;
}

uint64_t sub_112E0(unint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 14 >= 4 * v3)
  {
    return 0;
  }

  sub_21960();
  sub_7908();
  v4 = sub_21A00();
  v6 = sub_DB08(v4, v5);

  if ((v6 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    return (v6 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5 || (v6 - 938) > 0xFFFFFFE6 || (v6 - 945) < 0x19;
  }

  return result;
}

uint64_t sub_113A8(unint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 14 >= 4 * v3)
  {
    return 0;
  }

  sub_21960();
  sub_7908();
  v4 = sub_21A00();
  v6 = sub_DB08(v4, v5);

  if ((v6 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    return (v6 - 91) > 0xFFFFFFE5 || (v6 - 913) < 0x19;
  }

  return result;
}

unint64_t sub_11464(unint64_t a1)
{
  v2 = a1;
  if ((sub_113A8(a1) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = v2 >> 14;
  if (v2 >> 14 < 4 * v4)
  {
    while (1)
    {
      sub_21960();
      sub_7908();
      v7 = sub_21A00();
      v9 = sub_DB08(v7, v8);

      if ((v9 & 0x100000000) != 0)
      {
        break;
      }

      if ((v9 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && (v9 - 938) <= 0xFFFFFFE6 && (v9 - 970) < 0xFFFFFFE7)
      {
        goto LABEL_20;
      }

      sub_21960();
      v13 = sub_21A00();
      v15 = sub_DB08(v13, v14);

      if ((v15 & 0x100000000) != 0)
      {
        goto LABEL_92;
      }

      if ((v15 - 91) <= 0xFFFFFFE5 && (v15 - 938) < 0xFFFFFFE7)
      {
        return 0;
      }

      v2 = sub_218E0();
      v6 = v2 >> 14;
      if (v2 >> 14 >= v5)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_20:
  if (v6 == v5)
  {
    return 0;
  }

  v16 = v2 >> 14;
  if (v2 >> 14 < v5)
  {
    while (1)
    {
      sub_21960();
      sub_7908();
      v17 = sub_21A00();
      v19 = sub_DB08(v17, v18);

      if ((v19 & 0x100000000) != 0)
      {
        break;
      }

      if ((v19 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && (v19 - 938) <= 0xFFFFFFE6 && (v19 - 970) <= 0xFFFFFFE6)
      {
        v2 = sub_218E0();
        v16 = v2 >> 14;
        if (v2 >> 14 < v5)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_31:
  if (v16 == v5 || (sub_113A8(v2) & 1) == 0)
  {
    return 0;
  }

  for (i = v2 >> 14; v2 >> 14 < v5; i = v2 >> 14)
  {
    sub_21960();
    sub_7908();
    v23 = sub_21A00();
    v25 = sub_DB08(v23, v24);

    if ((v25 & 0x100000000) != 0)
    {
      goto LABEL_94;
    }

    if ((v25 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && (v25 - 938) <= 0xFFFFFFE6 && (v25 - 970) < 0xFFFFFFE7)
    {
      break;
    }

    sub_21960();
    v28 = sub_21A00();
    v30 = sub_DB08(v28, v29);

    if ((v30 & 0x100000000) != 0)
    {
      goto LABEL_95;
    }

    if ((v30 - 91) <= 0xFFFFFFE5 && (v30 - 938) < 0xFFFFFFE7)
    {
      return 0;
    }

    v2 = sub_218E0();
  }

  if (i == v5)
  {
    return 0;
  }

  v31 = v2 >> 14;
  if (v2 >> 14 < v5)
  {
    while (1)
    {
      sub_21960();
      sub_7908();
      v32 = sub_21A00();
      v34 = sub_DB08(v32, v33);

      if ((v34 & 0x100000000) != 0)
      {
        break;
      }

      if ((v34 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && (v34 - 938) <= 0xFFFFFFE6 && (v34 - 970) <= 0xFFFFFFE6)
      {
        v2 = sub_218E0();
        v31 = v2 >> 14;
        if (v2 >> 14 < v5)
        {
          continue;
        }
      }

      goto LABEL_60;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_60:
  if (v31 == v5)
  {
    return 0;
  }

  if ((sub_113A8(v2) & 1) == 0)
  {
    return 0;
  }

  v37 = sub_218E0();
  if ((sub_113A8(v37) & 1) == 0)
  {
    return 0;
  }

  result = sub_218E0();
  if (v5 <= result >> 14)
  {
    return result;
  }

  v38 = result;
  while (1)
  {
    v39 = result;
    sub_21960();
    sub_7908();
    v40 = sub_21A00();
    v42 = sub_DB08(v40, v41);

    if ((v42 & 0x100000000) != 0)
    {
      break;
    }

    v44 = (v42 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5 || (v42 - 938) > 0xFFFFFFE6 || (v42 - 970) >= 0xFFFFFFE7;
    if (v44 && (sub_113A8(v38) & 1) == 0)
    {
      return v39;
    }

    v45 = sub_218E0();
    sub_21960();
    v46 = sub_21A00();
    v48 = sub_DB08(v46, v47);

    if ((v48 & 0x100000000) != 0)
    {
      goto LABEL_98;
    }

    if ((v48 - 970) >= 0xFFFFFFE7 || (v48 - 938) >= 0xFFFFFFE7 || (v48 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6)
    {
      result = v45;
    }

    else
    {
      result = v39;
    }

    v38 = v45;
    if (v5 <= v45 >> 14)
    {
      return result;
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

void *sub_119FC()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[10];

  return v0;
}

uint64_t sub_11A2C()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_11A74()
{
  sub_78C0(&qword_3A110, &qword_25688);
  v0 = swift_allocObject();
  *(v0 + 32) = 97;
  *(v0 + 16) = xmmword_25600;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 8495330;
  *(v0 + 56) = 0xA300000000000000;
  *(v0 + 64) = &off_2E790;
  *(v0 + 72) = 98;
  *(v0 + 80) = 0xE100000000000000;
  *(v0 + 88) = 8626402;
  *(v0 + 96) = 0xA300000000000000;
  *(v0 + 104) = &off_2E7B8;
  *(v0 + 112) = 99;
  *(v0 + 120) = 0xE100000000000000;
  *(v0 + 128) = 9019618;
  *(v0 + 136) = 0xA300000000000000;
  *(v0 + 144) = &off_2E7E0;
  *(v0 + 152) = 100;
  *(v0 + 160) = 0xE100000000000000;
  *(v0 + 168) = 10068194;
  *(v0 + 176) = 0xA300000000000000;
  *(v0 + 184) = &off_2E808;
  *(v0 + 192) = 101;
  *(v0 + 200) = 0xE100000000000000;
  *(v0 + 208) = 9543906;
  *(v0 + 216) = 0xA300000000000000;
  *(v0 + 224) = &off_2E830;
  *(v0 + 232) = 102;
  *(v0 + 240) = 0xE100000000000000;
  *(v0 + 248) = 9150690;
  *(v0 + 256) = 0xA300000000000000;
  *(v0 + 264) = &off_2E858;
  *(v0 + 272) = 103;
  *(v0 + 280) = 0xE100000000000000;
  *(v0 + 288) = 10199266;
  *(v0 + 296) = 0xA300000000000000;
  *(v0 + 304) = &off_2E880;
  *(v0 + 312) = 104;
  *(v0 + 320) = 0xE100000000000000;
  *(v0 + 328) = 9674978;
  *(v0 + 336) = 0xA300000000000000;
  *(v0 + 344) = &off_2E8A8;
  *(v0 + 352) = 105;
  *(v0 + 360) = 0xE100000000000000;
  *(v0 + 368) = 9085154;
  *(v0 + 376) = 0xA300000000000000;
  *(v0 + 384) = &off_2E8D0;
  *(v0 + 392) = 106;
  *(v0 + 400) = 0xE100000000000000;
  *(v0 + 408) = 10133730;
  *(v0 + 416) = 0xA300000000000000;
  *(v0 + 424) = &off_2E8F8;
  *(v0 + 432) = 107;
  *(v0 + 440) = 0xE100000000000000;
  *(v0 + 448) = 8757474;
  *(v0 + 456) = 0xA300000000000000;
  *(v0 + 464) = &off_2E920;
  *(v0 + 472) = 108;
  *(v0 + 480) = 0xE100000000000000;
  *(v0 + 488) = 8888546;
  *(v0 + 496) = 0xA300000000000000;
  *(v0 + 504) = &off_2E948;
  *(v0 + 512) = 109;
  *(v0 + 520) = 0xE100000000000000;
  *(v0 + 528) = 9281762;
  *(v0 + 536) = 0xA300000000000000;
  *(v0 + 544) = &off_2E970;
  *(v0 + 552) = 110;
  *(v0 + 560) = 0xE100000000000000;
  *(v0 + 568) = 10330338;
  *(v0 + 576) = 0xA300000000000000;
  *(v0 + 584) = &off_2E998;
  *(v0 + 592) = 111;
  *(v0 + 600) = 0xE100000000000000;
  *(v0 + 608) = 9806050;
  *(v0 + 616) = 0xA300000000000000;
  *(v0 + 624) = &off_2E9C0;
  *(v0 + 632) = 112;
  *(v0 + 640) = 0xE100000000000000;
  *(v0 + 648) = 9412834;
  *(v0 + 656) = 0xA300000000000000;
  *(v0 + 664) = &off_2E9E8;
  *(v0 + 672) = 113;
  *(v0 + 680) = 0xE100000000000000;
  *(v0 + 688) = 10461410;
  *(v0 + 696) = 0xA300000000000000;
  *(v0 + 704) = &off_2EA10;
  *(v0 + 712) = 114;
  *(v0 + 720) = 0xE100000000000000;
  *(v0 + 728) = 9937122;
  *(v0 + 736) = 0xA300000000000000;
  *(v0 + 744) = &off_2EA38;
  *(v0 + 752) = 115;
  *(v0 + 760) = 0xE100000000000000;
  *(v0 + 768) = 9347298;
  *(v0 + 776) = 0xA300000000000000;
  *(v0 + 784) = &off_2EA60;
  *(v0 + 792) = 116;
  *(v0 + 800) = 0xE100000000000000;
  *(v0 + 808) = 10395874;
  *(v0 + 816) = 0xA300000000000000;
  *(v0 + 824) = &off_2EA88;
  *(v0 + 832) = 117;
  *(v0 + 840) = 0xE100000000000000;
  *(v0 + 848) = 10854626;
  *(v0 + 856) = 0xA300000000000000;
  *(v0 + 864) = &off_2EAB0;
  *(v0 + 872) = 118;
  *(v0 + 880) = 0xE100000000000000;
  *(v0 + 888) = 10985698;
  *(v0 + 896) = 0xA300000000000000;
  *(v0 + 904) = &off_2EAD8;
  *(v0 + 912) = 119;
  *(v0 + 920) = 0xE100000000000000;
  *(v0 + 928) = 12230882;
  *(v0 + 936) = 0xA300000000000000;
  *(v0 + 944) = &off_2EB00;
  *(v0 + 952) = 120;
  *(v0 + 960) = 0xE100000000000000;
  *(v0 + 968) = 11378914;
  *(v0 + 976) = 0xA300000000000000;
  *(v0 + 984) = &off_2EB28;
  *(v0 + 992) = 121;
  *(v0 + 1000) = 0xE100000000000000;
  *(v0 + 1008) = 12427490;
  *(v0 + 1016) = 0xA300000000000000;
  *(v0 + 1024) = &off_2EB50;
  *(v0 + 1032) = 122;
  *(v0 + 1040) = 0xE100000000000000;
  *(v0 + 1048) = 11903202;
  *(v0 + 1056) = 0xA300000000000000;
  *(v0 + 1064) = &off_2EB78;
  *(v0 + 1072) = 65;
  *(v0 + 1080) = 0xE100000000000000;
  *(v0 + 1088) = 8495330;
  *(v0 + 1096) = 0xA300000000000000;
  *(v0 + 1104) = &off_2EBA0;
  *(v0 + 1112) = 66;
  *(v0 + 1120) = 0xE100000000000000;
  *(v0 + 1128) = 8626402;
  *(v0 + 1136) = 0xA300000000000000;
  *(v0 + 1144) = &off_2EBC8;
  *(v0 + 1152) = 67;
  *(v0 + 1160) = 0xE100000000000000;
  *(v0 + 1168) = 9019618;
  *(v0 + 1176) = 0xA300000000000000;
  *(v0 + 1184) = &off_2EBF0;
  *(v0 + 1192) = 68;
  *(v0 + 1200) = 0xE100000000000000;
  *(v0 + 1208) = 10068194;
  *(v0 + 1216) = 0xA300000000000000;
  *(v0 + 1224) = &off_2EC18;
  *(v0 + 1232) = 69;
  *(v0 + 1240) = 0xE100000000000000;
  *(v0 + 1248) = 9543906;
  *(v0 + 1256) = 0xA300000000000000;
  *(v0 + 1264) = &off_2EC40;
  *(v0 + 1272) = 70;
  *(v0 + 1280) = 0xE100000000000000;
  *(v0 + 1288) = 9150690;
  *(v0 + 1296) = 0xA300000000000000;
  *(v0 + 1304) = &off_2EC68;
  *(v0 + 1312) = 71;
  *(v0 + 1320) = 0xE100000000000000;
  *(v0 + 1328) = 10199266;
  *(v0 + 1336) = 0xA300000000000000;
  *(v0 + 1344) = &off_2EC90;
  *(v0 + 1352) = 72;
  *(v0 + 1360) = 0xE100000000000000;
  *(v0 + 1368) = 9674978;
  *(v0 + 1376) = 0xA300000000000000;
  *(v0 + 1384) = &off_2ECB8;
  *(v0 + 1392) = 73;
  *(v0 + 1400) = 0xE100000000000000;
  *(v0 + 1408) = 9085154;
  *(v0 + 1416) = 0xA300000000000000;
  *(v0 + 1424) = &off_2ECE0;
  *(v0 + 1432) = 74;
  *(v0 + 1440) = 0xE100000000000000;
  *(v0 + 1448) = 10133730;
  *(v0 + 1456) = 0xA300000000000000;
  *(v0 + 1464) = &off_2ED08;
  *(v0 + 1472) = 75;
  *(v0 + 1480) = 0xE100000000000000;
  *(v0 + 1488) = 8757474;
  *(v0 + 1496) = 0xA300000000000000;
  *(v0 + 1504) = &off_2ED30;
  *(v0 + 1512) = 76;
  *(v0 + 1520) = 0xE100000000000000;
  *(v0 + 1528) = 8888546;
  *(v0 + 1536) = 0xA300000000000000;
  *(v0 + 1544) = &off_2ED58;
  *(v0 + 1552) = 77;
  *(v0 + 1560) = 0xE100000000000000;
  *(v0 + 1568) = 9281762;
  *(v0 + 1576) = 0xA300000000000000;
  *(v0 + 1584) = &off_2ED80;
  *(v0 + 1592) = 78;
  *(v0 + 1600) = 0xE100000000000000;
  *(v0 + 1608) = 10330338;
  *(v0 + 1616) = 0xA300000000000000;
  *(v0 + 1624) = &off_2EDA8;
  *(v0 + 1632) = 79;
  *(v0 + 1640) = 0xE100000000000000;
  *(v0 + 1648) = 9806050;
  *(v0 + 1656) = 0xA300000000000000;
  *(v0 + 1664) = &off_2EDD0;
  *(v0 + 1672) = 80;
  *(v0 + 1680) = 0xE100000000000000;
  *(v0 + 1688) = 9412834;
  *(v0 + 1696) = 0xA300000000000000;
  *(v0 + 1704) = &off_2EDF8;
  *(v0 + 1712) = 81;
  *(v0 + 1720) = 0xE100000000000000;
  *(v0 + 1728) = 10461410;
  *(v0 + 1736) = 0xA300000000000000;
  *(v0 + 1744) = &off_2EE20;
  *(v0 + 1752) = 82;
  *(v0 + 1760) = 0xE100000000000000;
  *(v0 + 1768) = 9937122;
  *(v0 + 1776) = 0xA300000000000000;
  *(v0 + 1784) = &off_2EE48;
  *(v0 + 1792) = 83;
  *(v0 + 1800) = 0xE100000000000000;
  *(v0 + 1808) = 9347298;
  *(v0 + 1816) = 0xA300000000000000;
  *(v0 + 1824) = &off_2EE70;
  *(v0 + 1832) = 84;
  *(v0 + 1840) = 0xE100000000000000;
  *(v0 + 1848) = 10395874;
  *(v0 + 1856) = 0xA300000000000000;
  *(v0 + 1864) = &off_2EE98;
  *(v0 + 1872) = 85;
  *(v0 + 1880) = 0xE100000000000000;
  *(v0 + 1888) = 10854626;
  *(v0 + 1896) = 0xA300000000000000;
  *(v0 + 1904) = &off_2EEC0;
  *(v0 + 1912) = 86;
  *(v0 + 1920) = 0xE100000000000000;
  *(v0 + 1928) = 10985698;
  *(v0 + 1936) = 0xA300000000000000;
  *(v0 + 1944) = &off_2EEE8;
  *(v0 + 1952) = 87;
  *(v0 + 1960) = 0xE100000000000000;
  *(v0 + 1968) = 12230882;
  *(v0 + 1976) = 0xA300000000000000;
  *(v0 + 1984) = &off_2EF10;
  *(v0 + 1992) = 88;
  *(v0 + 2000) = 0xE100000000000000;
  *(v0 + 2008) = 11378914;
  *(v0 + 2016) = 0xA300000000000000;
  *(v0 + 2024) = &off_2EF38;
  *(v0 + 2032) = 89;
  *(v0 + 2040) = 0xE100000000000000;
  *(v0 + 2048) = 12427490;
  *(v0 + 2056) = 0xA300000000000000;
  *(v0 + 2064) = &off_2EF60;
  *(v0 + 2072) = 90;
  *(v0 + 2080) = 0xE100000000000000;
  *(v0 + 2088) = 11903202;
  *(v0 + 2096) = 0xA300000000000000;
  *(v0 + 2104) = &off_2EF88;
  *(v0 + 2112) = 45518;
  *(v0 + 2120) = 0xA200000000000000;
  *(v0 + 2128) = 0x81A0E2A8A0E2;
  *(v0 + 2136) = 0xA600000000000000;
  *(v0 + 2144) = &off_2EFB0;
  *(v0 + 2152) = 45774;
  *(v0 + 2160) = 0xA200000000000000;
  *(v0 + 2168) = 0x83A0E2A8A0E2;
  *(v0 + 2176) = 0xA600000000000000;
  *(v0 + 2184) = &off_2EFE0;
  *(v0 + 2192) = 46030;
  *(v0 + 2200) = 0xA200000000000000;
  *(v0 + 2208) = 0x89A0E2A8A0E2;
  *(v0 + 2216) = 0xA600000000000000;
  *(v0 + 2224) = &off_2F010;
  *(v0 + 2232) = 46286;
  *(v0 + 2240) = 0xA200000000000000;
  *(v0 + 2248) = 0x99A0E2A8A0E2;
  *(v0 + 2256) = 0xA600000000000000;
  *(v0 + 2264) = &off_2F040;
  *(v0 + 2272) = 46542;
  *(v0 + 2280) = 0xA200000000000000;
  *(v0 + 2288) = 0x91A0E2A8A0E2;
  *(v0 + 2296) = 0xA600000000000000;
  *(v0 + 2304) = &off_2F070;
  *(v0 + 2312) = 46798;
  *(v0 + 2320) = 0xA200000000000000;
  *(v0 + 2328) = 0xB5A0E2A8A0E2;
  *(v0 + 2336) = 0xA600000000000000;
  *(v0 + 2344) = &off_2F0A0;
  *(v0 + 2352) = 47054;
  *(v0 + 2360) = 0xA200000000000000;
  *(v0 + 2368) = 0xB1A0E2A8A0E2;
  *(v0 + 2376) = 0xA600000000000000;
  *(v0 + 2384) = &off_2F0D0;
  *(v0 + 2392) = 47310;
  *(v0 + 2400) = 0xA200000000000000;
  *(v0 + 2408) = 0xB9A0E2A8A0E2;
  *(v0 + 2416) = 0xA600000000000000;
  *(v0 + 2424) = &off_2F100;
  *(v0 + 2432) = 47566;
  *(v0 + 2440) = 0xA200000000000000;
  *(v0 + 2448) = 0x8AA0E2A8A0E2;
  *(v0 + 2456) = 0xA600000000000000;
  *(v0 + 2464) = &off_2F130;
  *(v0 + 2472) = 47822;
  *(v0 + 2480) = 0xA200000000000000;
  *(v0 + 2488) = 0x85A0E2A8A0E2;
  *(v0 + 2496) = 0xA600000000000000;
  *(v0 + 2504) = &off_2F160;
  *(v0 + 2512) = 48078;
  *(v0 + 2520) = 0xA200000000000000;
  *(v0 + 2528) = 0x87A0E2A8A0E2;
  *(v0 + 2536) = 0xA600000000000000;
  *(v0 + 2544) = &off_2F190;
  *(v0 + 2552) = 48334;
  *(v0 + 2560) = 0xA200000000000000;
  *(v0 + 2568) = 0x8DA0E2A8A0E2;
  *(v0 + 2576) = 0xA600000000000000;
  *(v0 + 2584) = &off_2F1C0;
  *(v0 + 2592) = 48590;
  *(v0 + 2600) = 0xA200000000000000;
  *(v0 + 2608) = 0x9DA0E2A8A0E2;
  *(v0 + 2616) = 0xA600000000000000;
  *(v0 + 2624) = &off_2F1F0;
  *(v0 + 2632) = 48846;
  *(v0 + 2640) = 0xA200000000000000;
  *(v0 + 2648) = 0xADA0E2A8A0E2;
  *(v0 + 2656) = 0xA600000000000000;
  *(v0 + 2664) = &off_2F220;
  *(v0 + 2672) = 49102;
  *(v0 + 2680) = 0xA200000000000000;
  *(v0 + 2688) = 0x95A0E2A8A0E2;
  *(v0 + 2696) = 0xA600000000000000;
  *(v0 + 2704) = &off_2F250;
  *(v0 + 2712) = 32975;
  *(v0 + 2720) = 0xA200000000000000;
  *(v0 + 2728) = 0x8FA0E2A8A0E2;
  *(v0 + 2736) = 0xA600000000000000;
  *(v0 + 2744) = &off_2F280;
  *(v0 + 2752) = 33231;
  *(v0 + 2760) = 0xA200000000000000;
  *(v0 + 2768) = 0x97A0E2A8A0E2;
  *(v0 + 2776) = 0xA600000000000000;
  *(v0 + 2784) = &off_2F2B0;
  *(v0 + 2792) = 33487;
  *(v0 + 2800) = 0xA200000000000000;
  *(v0 + 2808) = 0x8EA0E2A8A0E2;
  *(v0 + 2816) = 0xA600000000000000;
  *(v0 + 2824) = &off_2F2E0;
  *(v0 + 2832) = 33743;
  *(v0 + 2840) = 0xA200000000000000;
  *(v0 + 2848) = 0x8EA0E2A8A0E2;
  *(v0 + 2856) = 0xA600000000000000;
  *(v0 + 2864) = &off_2F310;
  *(v0 + 2872) = 33999;
  *(v0 + 2880) = 0xA200000000000000;
  *(v0 + 2888) = 0x9EA0E2A8A0E2;
  *(v0 + 2896) = 0xA600000000000000;
  *(v0 + 2904) = &off_2F340;
  *(v0 + 2912) = 34255;
  *(v0 + 2920) = 0xA200000000000000;
  *(v0 + 2928) = 0xA5A0E2A8A0E2;
  *(v0 + 2936) = 0xA600000000000000;
  *(v0 + 2944) = &off_2F370;
  *(v0 + 2952) = 34511;
  *(v0 + 2960) = 0xA200000000000000;
  *(v0 + 2968) = 0x8BA0E2A8A0E2;
  *(v0 + 2976) = 0xA600000000000000;
  *(v0 + 2984) = &off_2F3A0;
  *(v0 + 2992) = 34767;
  *(v0 + 3000) = 0xA200000000000000;
  *(v0 + 3008) = 0xAFA0E2A8A0E2;
  *(v0 + 3016) = 0xA600000000000000;
  *(v0 + 3024) = &off_2F3D0;
  *(v0 + 3032) = 35023;
  *(v0 + 3040) = 0xA200000000000000;
  *(v0 + 3048) = 0xBDA0E2A8A0E2;
  *(v0 + 3056) = 0xA600000000000000;
  *(v0 + 3064) = &off_2F400;
  *(v0 + 3072) = 35279;
  *(v0 + 3080) = 0xA200000000000000;
  *(v0 + 3088) = 0xBAA0E2A8A0E2;
  *(v0 + 3096) = 0xA600000000000000;
  *(v0 + 3104) = &off_2F430;
  *(v0 + 3112) = 37326;
  *(v0 + 3120) = 0xA200000000000000;
  *(v0 + 3128) = 0x81A0E2A8A0E2;
  *(v0 + 3136) = 0xA600000000000000;
  *(v0 + 3144) = &off_2F460;
  *(v0 + 3152) = 37582;
  *(v0 + 3160) = 0xA200000000000000;
  *(v0 + 3168) = 0x83A0E2A8A0E2;
  *(v0 + 3176) = 0xA600000000000000;
  *(v0 + 3184) = &off_2F490;
  *(v0 + 3192) = 37838;
  *(v0 + 3200) = 0xA200000000000000;
  *(v0 + 3208) = 0x89A0E2A8A0E2;
  *(v0 + 3216) = 0xA600000000000000;
  *(v0 + 3224) = &off_2F4C0;
  *(v0 + 3232) = 38094;
  *(v0 + 3240) = 0xA200000000000000;
  *(v0 + 3248) = 0x99A0E2A8A0E2;
  *(v0 + 3256) = 0xA600000000000000;
  *(v0 + 3264) = &off_2F4F0;
  *(v0 + 3272) = 38350;
  *(v0 + 3280) = 0xA200000000000000;
  *(v0 + 3288) = 0x91A0E2A8A0E2;
  *(v0 + 3296) = 0xA600000000000000;
  *(v0 + 3304) = &off_2F520;
  *(v0 + 3312) = 38606;
  *(v0 + 3320) = 0xA200000000000000;
  *(v0 + 3328) = 0xB5A0E2A8A0E2;
  *(v0 + 3336) = 0xA600000000000000;
  *(v0 + 3344) = &off_2F550;
  *(v0 + 3352) = 38862;
  *(v0 + 3360) = 0xA200000000000000;
  *(v0 + 3368) = 0xB1A0E2A8A0E2;
  *(v0 + 3376) = 0xA600000000000000;
  *(v0 + 3384) = &off_2F580;
  *(v0 + 3392) = 39118;
  *(v0 + 3400) = 0xA200000000000000;
  *(v0 + 3408) = 0xB9A0E2A8A0E2;
  *(v0 + 3416) = 0xA600000000000000;
  *(v0 + 3424) = &off_2F5B0;
  *(v0 + 3432) = 39374;
  *(v0 + 3440) = 0xA200000000000000;
  *(v0 + 3448) = 0x8AA0E2A8A0E2;
  *(v0 + 3456) = 0xA600000000000000;
  *(v0 + 3464) = &off_2F5E0;
  *(v0 + 3472) = 39630;
  *(v0 + 3480) = 0xA200000000000000;
  *(v0 + 3488) = 0x85A0E2A8A0E2;
  *(v0 + 3496) = 0xA600000000000000;
  *(v0 + 3504) = &off_2F610;
  *(v0 + 3512) = 39886;
  *(v0 + 3520) = 0xA200000000000000;
  *(v0 + 3528) = 0x87A0E2A8A0E2;
  *(v0 + 3536) = 0xA600000000000000;
  *(v0 + 3544) = &off_2F640;
  *(v0 + 3552) = 40142;
  *(v0 + 3560) = 0xA200000000000000;
  *(v0 + 3568) = 0x8DA0E2A8A0E2;
  *(v0 + 3576) = 0xA600000000000000;
  *(v0 + 3584) = &off_2F670;
  *(v0 + 3592) = 40398;
  *(v0 + 3600) = 0xA200000000000000;
  *(v0 + 3608) = 0x9DA0E2A8A0E2;
  *(v0 + 3616) = 0xA600000000000000;
  *(v0 + 3624) = &off_2F6A0;
  *(v0 + 3632) = 40654;
  *(v0 + 3640) = 0xA200000000000000;
  *(v0 + 3648) = 0xADA0E2A8A0E2;
  *(v0 + 3656) = 0xA600000000000000;
  *(v0 + 3664) = &off_2F6D0;
  *(v0 + 3672) = 40910;
  *(v0 + 3680) = 0xA200000000000000;
  *(v0 + 3688) = 0x95A0E2A8A0E2;
  *(v0 + 3696) = 0xA600000000000000;
  *(v0 + 3704) = &off_2F700;
  *(v0 + 3712) = 41166;
  *(v0 + 3720) = 0xA200000000000000;
  *(v0 + 3728) = 0x8FA0E2A8A0E2;
  *(v0 + 3736) = 0xA600000000000000;
  *(v0 + 3744) = &off_2F730;
  *(v0 + 3752) = 41422;
  *(v0 + 3760) = 0xA200000000000000;
  *(v0 + 3768) = 0x97A0E2A8A0E2;
  *(v0 + 3776) = 0xA600000000000000;
  *(v0 + 3784) = &off_2F760;
  *(v0 + 3792) = 41934;
  *(v0 + 3800) = 0xA200000000000000;
  *(v0 + 3808) = 0x8EA0E2A8A0E2;
  *(v0 + 3816) = 0xA600000000000000;
  *(v0 + 3824) = &off_2F790;
  *(v0 + 3832) = 42190;
  *(v0 + 3840) = 0xA200000000000000;
  *(v0 + 3848) = 0x9EA0E2A8A0E2;
  *(v0 + 3856) = 0xA600000000000000;
  *(v0 + 3864) = &off_2F7C0;
  *(v0 + 3872) = 42446;
  *(v0 + 3880) = 0xA200000000000000;
  *(v0 + 3888) = 0xA5A0E2A8A0E2;
  *(v0 + 3896) = 0xA600000000000000;
  *(v0 + 3904) = &off_2F7F0;
  *(v0 + 3912) = 42702;
  *(v0 + 3920) = 0xA200000000000000;
  *(v0 + 3928) = 0x8BA0E2A8A0E2;
  *(v0 + 3936) = 0xA600000000000000;
  *(v0 + 3944) = &off_2F820;
  *(v0 + 3952) = 42958;
  *(v0 + 3960) = 0xA200000000000000;
  *(v0 + 3968) = 0xAFA0E2A8A0E2;
  *(v0 + 3976) = 0xA600000000000000;
  *(v0 + 3984) = &off_2F850;
  *(v0 + 3992) = 43214;
  *(v0 + 4000) = 0xA200000000000000;
  *(v0 + 4008) = 0xBDA0E2A8A0E2;
  *(v0 + 4016) = 0xA600000000000000;
  *(v0 + 4024) = &off_2F880;
  *(v0 + 4032) = 43470;
  *(v0 + 4040) = 0xA200000000000000;
  *(v0 + 4048) = 0xBAA0E2A8A0E2;
  *(v0 + 4056) = 0xA600000000000000;
  *(v0 + 4064) = &off_2F8B0;
  v1 = sub_129B0(v0);
  swift_setDeallocating();
  sub_78C0(&qword_3A118, &qword_25690);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_3B0D0 = v1;
  return result;
}

uint64_t sub_12930()
{
  v0 = sub_F698(&off_2F8E0);
  sub_78C0(&qword_39F28, &unk_255E0);
  result = swift_arrayDestroy();
  qword_3B0D8 = v0;
  return result;
}

unint64_t sub_129B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_21A90();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_EAA8(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_12ADC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40) | (*(v0 + 42) << 16);

  return v1;
}

uint64_t sub_12B40(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v7 = a3 >> 8;
  v8 = HIWORD(a3);
  swift_beginAccess();
  v9 = *(v3 + 32);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = v4;
  *(v3 + 41) = v7;
  *(v3 + 42) = v8;
}

uint64_t sub_12C38(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_12CAC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1 & 1;
  return result;
}

uint64_t sub_12D74(char a1)
{
  result = swift_beginAccess();
  *(v1 + 57) = a1 & 1;
  return result;
}

uint64_t sub_12E3C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 58) = a1;
  return result;
}

uint64_t sub_12F00(char a1)
{
  result = swift_beginAccess();
  *(v1 + 59) = a1;
  return result;
}

uint64_t sub_12FC4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 60) = a1;
  return result;
}

uint64_t sub_13088(char a1)
{
  result = swift_beginAccess();
  *(v1 + 61) = a1;
  return result;
}

uint64_t sub_13118(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_13158(a1);
  return v2;
}

uint64_t sub_13158(uint64_t a1)
{
  *(v1 + 64) = &off_2FF20;
  *(v1 + 72) = &off_300E0;
  *(v1 + 16) = a1;
  sub_20F6C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 41) = v5;
  *(v1 + 42) = v6;
  *(v1 + 48) = 0;
  *(v1 + 56) = 67371008;
  *(v1 + 60) = 0;
  return v1;
}

uint64_t sub_131D8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 48);
  v6 = *(*v2 + 152);

  v6(v3, v4, v5);

  v7 = *(v1 + 42);
  v8 = *(v1 + 40);
  sub_20F5C();
  v9 = *(v1 + 32);
  *(v1 + 24) = v10;
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  *(v1 + 41) = v13;
  *(v1 + 42) = v14;
}

uint64_t sub_132C8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_beginAccess();
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40) | (*(v0 + 42) << 16);

  v6 = sub_20C3C(v5);
  v8 = v7;

  v16._countAndFlagsBits = v6;
  v16._object = v8;
  sub_21910(v16);

  swift_beginAccess();
  (*(*v2 + 152))(v4, v3, *(v1 + 48));

  sub_20F6C();
  v9 = *(v1 + 32);
  *(v1 + 24) = v10;
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  *(v1 + 41) = v13;
  *(v1 + 42) = v14;
}

uint64_t sub_133F8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a1 && a2 == 0xE000000000000000 || (sub_21AA0()) && (swift_beginAccess(), sub_20D84(a3 & 0xFFFFFF, *(v5 + 40) | (*(v5 + 42) << 16))))
  {
    v11 = *(v5 + 24);
    v12 = *(v5 + 32);
    v13 = *(v5 + 40) | (*(v5 + 42) << 16);

    v14 = sub_20F88(a1, a2, a3 & 0xFFFFFF, v11, v12, v13);
    v16 = v15;
    v18 = v17;

    v19 = *(v5 + 32);
    *(v5 + 24) = v14;
    *(v5 + 32) = v16;
    *(v5 + 40) = v18;
    *(v5 + 42) = BYTE2(v18);
  }

  else
  {
    sub_132C8();
    swift_beginAccess();
    v21 = *(v5 + 32);
    *(v5 + 24) = a1;
    *(v5 + 32) = a2;
    *(v5 + 40) = a3;
    *(v5 + 42) = BYTE2(a3);

    swift_beginAccess();
    *(v5 + 48) = a4;
    sub_131D8();
    v22 = *(v5 + 24);
    v23 = *(v5 + 32);
    v24 = *(v5 + 40) | (*(v5 + 42) << 16);

    LOBYTE(v22) = sub_2108C(v22, v23, v24);

    if (v22)
    {
      *(v5 + 48) = a5;
    }
  }

  return result;
}

uint64_t sub_135B0()
{
  swift_beginAccess();
  if (*(v0 + 56))
  {
    return sub_1399C();
  }

  else
  {
    return sub_135F4();
  }
}

uint64_t sub_135F4()
{
  swift_beginAccess();
  if (v0[57] == 1)
  {
    if (qword_3A8F0 == -1)
    {
    }

LABEL_35:
    swift_once();
  }

  swift_beginAccess();
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[42];
  swift_beginAccess();
  if (v0[56] == 1)
  {
    if ((sub_13E44() & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (qword_3A8A0 != -1)
    {
      swift_once();
    }

    v5 = qword_3A8A8;
    v7 = qword_3A8B0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_20020(v8);
    if (qword_3A8C0 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (sub_13B5C())
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v2 == 19)
  {
    if (v3 == 21)
    {
      if (v4 == 27)
      {
        if (qword_3A8A0 != -1)
        {
          swift_once();
        }

        v5 = qword_3A8A8;
        v6 = qword_3A8C0;

        if (v6 != -1)
        {
LABEL_12:
          swift_once();
        }

LABEL_19:

        sub_20020(v9);
        if (qword_3A8D0 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }

LABEL_33:
      if (qword_3A8A0 == -1)
      {
      }

      goto LABEL_35;
    }

LABEL_28:
    if (v4 == 27)
    {
      if (qword_3A8A0 != -1)
      {
        swift_once();
      }

      v5 = qword_3A8A8;
      v13 = qword_3A8E0;

      if (v13 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v3 != 21)
  {
    goto LABEL_28;
  }

  if (v4 != 27)
  {
    goto LABEL_33;
  }

  if (qword_3A8A0 != -1)
  {
    swift_once();
  }

  v5 = qword_3A8A8;
  v12 = qword_3A8D0;

  if (v12 != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_20:

  sub_20020(v10);
  if (qword_3A8E0 != -1)
  {
LABEL_32:
    swift_once();
  }

LABEL_21:

  sub_20020(v11);
  return v5;
}

uint64_t sub_1399C()
{
  swift_beginAccess();
  if (*(v0 + 57) == 1)
  {
    if (qword_3A930 != -1)
    {
      swift_once();
    }
  }

  else
  {
    swift_beginAccess();
    v2 = *(v0 + 58);
    if (qword_3A900 != -1)
    {
      swift_once();
    }

    v3 = qword_3A908;
    v4 = qword_3A910;

    if (v4 != -1)
    {
      swift_once();
    }

    sub_20020(v5);
    if (qword_3A920 != -1)
    {
      swift_once();
    }

    sub_20020(v6);
    return v3;
  }
}

uint64_t sub_13B14()
{
  swift_beginAccess();
  if (*(v0 + 56))
  {
    v1 = sub_13E44();
  }

  else
  {
    v1 = sub_13B5C();
  }

  return v1 & 1;
}

uint64_t sub_13B5C()
{
  swift_beginAccess();
  if (!sub_20C28(*(v0 + 40) | (*(v0 + 42) << 16)))
  {
    return 0;
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40) | (*(v0 + 42) << 16);

  LOBYTE(v1) = sub_2108C(v1, v2, v3);

  if (v1)
  {
    v36 = *(**(v0 + 16) + 160);
    v5 = v36(v4);
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = 17;
      v10 = &unk_30B88;
      do
      {
        v11 = --v9 != 0;
        if (!v9)
        {
          break;
        }

        v13 = *(v10 - 1);
        v12 = *v10;

        v15 = v36(v14);
        v17 = v16;

        v18 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v18 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (!v18)
        {
          goto LABEL_33;
        }

        sub_218F0();
        v19 = sub_21960();
        v21 = v20;

        if (v13 == v19 && v12 == v21)
        {
          goto LABEL_29;
        }

        v10 += 2;
        v23 = sub_21AA0();
      }

      while ((v23 & 1) == 0);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v24 = 17;
    v25 = &unk_30B88;
    do
    {
      v11 = --v24 != 0;
      if (!v24)
      {
        break;
      }

      v26 = *(v0 + 32);
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {
        __break(1u);
LABEL_33:

        __break(1u);
        return result;
      }

      v29 = *(v25 - 1);
      v28 = *v25;

      sub_218F0();
      v30 = sub_21960();
      v32 = v31;

      if (v29 == v30 && v28 == v32)
      {
LABEL_29:

        return 1;
      }

      v25 += 2;
      v34 = sub_21AA0();
    }

    while ((v34 & 1) == 0);
  }

  return v11;
}

uint64_t sub_13E44()
{
  v1 = (*(**(v0 + 16) + 160))();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_24:

    return 1;
  }

  while (1)
  {
    v5 = sub_218F0();
    v6 = sub_21960();
    v8 = v7;
    if (v6 != 40 || v7 != 0xE100000000000000)
    {
      v10 = v6;
      if ((sub_21AA0() & 1) == 0 && (v10 != 91 || v8 != 0xE100000000000000) && (sub_21AA0() & 1) == 0 && (v10 != 123 || v8 != 0xE100000000000000) && (sub_21AA0() & 1) == 0 && (v10 != 34 || v8 != 0xE100000000000000) && (sub_21AA0() & 1) == 0 && (v10 != 39 || v8 != 0xE100000000000000) && (sub_21AA0() & 1) == 0)
      {
        break;
      }
    }

    swift_arrayDestroy();
    if (!(v5 >> 14))
    {
      goto LABEL_24;
    }
  }

  swift_arrayDestroy();
  if (v10 == 32 && v8 == 0xE100000000000000 || (sub_21AA0() & 1) != 0 || v10 == 45 && v8 == 0xE100000000000000 || (sub_21AA0() & 1) != 0 || v10 == 9666786 && v8 == 0xA300000000000000 || (sub_21AA0() & 1) != 0 || v10 == 9732322 && v8 == 0xA300000000000000 || (sub_21AA0() & 1) != 0)
  {

    swift_arrayDestroy();
    return 1;
  }

  swift_arrayDestroy();
  return 0;
}

uint64_t sub_14164(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_218F0();
  return sub_21960();
}

BOOL sub_141E4(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  if (*(v2 + 56))
  {
    return sub_20464(a1, a2);
  }

  else
  {
    v6 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = &unk_30D78;
      v8 = 19;
      do
      {
        v5 = --v8 != 0;
        if (!v8)
        {
          break;
        }

        v9 = v7 + 2;
        v11 = *(v7 - 1);
        v10 = *v7;

        v13._countAndFlagsBits = v11;
        v13._object = v10;
        LOBYTE(v11) = sub_21950(v13);

        v7 = v9;
      }

      while ((v11 & 1) == 0);
    }

    else
    {
      return 1;
    }
  }

  return v5;
}

uint64_t sub_142D0()
{

  v4._countAndFlagsBits = 8691938;
  v4._object = 0xA300000000000000;
  v0 = sub_21950(v4);

  if (v0)
  {
    return 1;
  }

  v5._countAndFlagsBits = 8823010;
  v5._object = 0xA300000000000000;
  v1 = sub_21950(v5);

  if (v1)
  {
    return 1;
  }

  v6._countAndFlagsBits = 8560866;
  v6._object = 0xA300000000000000;
  v3 = sub_21950(v6);

  return v3;
}

uint64_t sub_14394()
{
  v21 = *(**(v0 + 16) + 160);
  v1 = v21();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = 12;
  v6 = &unk_30FC8;
  do
  {
    v7 = --v5 != 0;
    if (!v5)
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;

    v11 = (v21)(v10);
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      __break(1u);
      return result;
    }

    sub_218F0();
    v15 = sub_21960();
    v17 = v16;

    if (v9 == v15 && v8 == v17)
    {

      return 1;
    }

    v6 += 2;
    v19 = sub_21AA0();
  }

  while ((v19 & 1) == 0);
  return v7;
}

BOOL sub_14544()
{
  v0 = 17;
  v1 = &unk_31098;
  do
  {
    if (!--v0)
    {
      break;
    }

    v2 = v1 + 2;
    v4 = *(v1 - 1);
    v3 = *v1;

    v6._countAndFlagsBits = v4;
    v6._object = v3;
    LOBYTE(v4) = sub_21950(v6);

    v1 = v2;
  }

  while ((v4 & 1) == 0);
  return v0 != 0;
}

BOOL sub_145CC(uint64_t a1)
{
  v1 = (*(*a1 + 216))(8429794, 0xA300000000000000);
  v3 = v2;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = v1;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        LOBYTE(v10) = sub_21A30();
        goto LABEL_28;
      }

      if ((v3 & 0x2000000000000000) != 0)
      {
        break;
      }

      v7 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v7 = sub_21A70();
      }

      v8 = (v7 + v6);
      v9 = *(v7 + v6);
      v10 = *(v7 + v6);
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      v13 = (__clz(v10 ^ 0xFF) - 24);
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          LOBYTE(v10) = v8[2];
          v11 = 3;
        }

        else
        {
          LOBYTE(v10) = v8[3];
          v11 = 4;
        }

        goto LABEL_28;
      }

      if (v13 == 1)
      {
LABEL_11:
        v11 = 1;
      }

      else
      {
        LOBYTE(v10) = v8[1];
        v11 = 2;
      }

LABEL_28:
      v15 = (v10 & 9) != 0;
      if ((v10 & 9) == 0)
      {
        v6 += v11;
        if (v6 < v4)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    v17[0] = v5;
    v17[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v12) = *(v17 + v6);
    if ((v12 & 0x80000000) == 0)
    {
      v11 = 1;
LABEL_27:
      LOBYTE(v10) = v12;
      goto LABEL_28;
    }

    v14 = __clz(~v12) - 24;
    if (v14 > 2u)
    {
      v12 = 2;
      if (v14 == 3)
      {
        v11 = 3;
      }

      else
      {
        v12 = 3;
        v11 = 4;
      }
    }

    else
    {
      v11 = v14;
      if (v14 == 1)
      {
        goto LABEL_27;
      }

      v12 = 1;
    }

    LOBYTE(v12) = *(v17 + v6 + v12);
    goto LABEL_27;
  }

  v15 = 0;
LABEL_33:

  return v15;
}

uint64_t sub_147A4()
{

  v7._countAndFlagsBits = 8495330;
  v7._object = 0xA300000000000000;
  v0 = sub_21950(v7);

  if (v0)
  {
    return 1;
  }

  v8._countAndFlagsBits = 9543906;
  v8._object = 0xA300000000000000;
  v1 = sub_21950(v8);

  if (v1)
  {
    return 1;
  }

  v9._countAndFlagsBits = 9085154;
  v9._object = 0xA300000000000000;
  v2 = sub_21950(v9);

  if (v2)
  {
    return 1;
  }

  v10._countAndFlagsBits = 9806050;
  v10._object = 0xA300000000000000;
  v3 = sub_21950(v10);

  if (v3)
  {
    return 1;
  }

  v11._countAndFlagsBits = 10854626;
  v11._object = 0xA300000000000000;
  v4 = sub_21950(v11);

  if (v4)
  {
    return 1;
  }

  v12._countAndFlagsBits = 12427490;
  v12._object = 0xA300000000000000;
  v6 = sub_21950(v12);

  return v6;
}

uint64_t sub_148EC()
{
  v1 = (*(**(v0 + 16) + 160))();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    result = sub_14164(v1, v3);
    if (v6)
    {

      v7 = sub_21850();

      return v7 & 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_149AC(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v2 + 72);
    v14 = *(v2 + 64);

    result = sub_EDD0(v5);
    v7 = (v14 + 40);
    v8 = -*(v14 + 16);
    v9 = -1;
    while (1)
    {
      v10 = v8 + v9 != -1;
      if (v8 + v9 == -1)
      {
LABEL_8:

        return v10;
      }

      if (++v9 >= *(v14 + 16))
      {
        break;
      }

      v11 = v7 + 2;
      v13 = *(v7 - 1);
      v12 = *v7;

      v15._countAndFlagsBits = v13;
      v15._object = v12;
      LOBYTE(v13) = sub_21950(v15);

      v7 = v11;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void *sub_14AAC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[9];

  return v0;
}

uint64_t sub_14AE4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_14B34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  result = sub_13158(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_14BC8()
{
  v1 = *v0;
  swift_beginAccess();
  if (*(v1 + 56))
  {
    return sub_1399C();
  }

  else
  {
    return sub_135F4();
  }
}

Swift::Int sub_14C54(char a1)
{
  sub_21AB0();
  sub_21AC0(a1 & 1);
  return sub_21AD0();
}

Swift::Int sub_14CEC(unsigned __int8 a1)
{
  sub_21AB0();
  sub_21AC0(a1);
  return sub_21AD0();
}

uint64_t sub_14D34()
{
  sub_78C0(&qword_3A258, &qword_25948);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_256B0;
  type metadata accessor for HangulExpansionAction();
  v1 = sub_5E74();
  *(v0 + 32) = sub_6304(0xA0E2ADA0E2B8A0E2, 0xA900000000000087, 38851, 0xA200000000000000, 2, v1 & 1);
  v2 = sub_5E74();
  *(v0 + 40) = sub_6304(0xA0E2ADA0E2B8A0E2, 0xAC00000087A0E2ADLL, 2546177987, 0xA400000000000000, 2, v2 & 1);
  v3 = sub_5E74();
  *(v0 + 48) = sub_6304(0xA0E2ADA0E2B8A0E2, 0xAF87A0E2ADA0E2ADLL, 0x97C397C397C3, 0xA600000000000000, 2, v3 & 1);
  v4 = sub_5E74();
  *(v0 + 56) = sub_6304(0x1000000000000012, 0x8000000000023DE0, 0x97C397C397C397C3, 0xA800000000000000, 2, v4 & 1);
  v5 = sub_5E74();
  *(v0 + 64) = sub_6304(0x1000000000000015, 0x8000000000023E00, 0x97C397C397C397C3, 0xAA000000000097C3, 2, v5 & 1);
  v6 = sub_5E74();
  *(v0 + 72) = sub_6304(0x1000000000000018, 0x8000000000023E20, 0x97C397C397C397C3, 0xAC00000097C397C3, 2, v6 & 1);
  v7 = sub_5E74();
  *(v0 + 80) = sub_6304(0x100000000000001BLL, 0x8000000000023E40, 0x97C397C397C397C3, 0xAE0097C397C397C3, 2, v7 & 1);
  v8 = sub_5E74();
  *(v0 + 88) = sub_6304(0x100000000000001ELL, 0x8000000000023E60, 0x1000000000000010, 0x8000000000023E80, 2, v8 & 1);
  v9 = sub_5E74();
  *(v0 + 96) = sub_6304(0x1000000000000021, 0x8000000000023EA0, 0x1000000000000012, 0x8000000000023ED0, 2, v9 & 1);
  v10 = sub_5E74();
  *(v0 + 104) = sub_6304(0x1000000000000024, 0x8000000000023EF0, 0x1000000000000014, 0x8000000000023F20, 2, v10 & 1);
  v11 = sub_5E74();
  *(v0 + 112) = sub_6304(0xA0E2B4A0E2B8A0E2, 0xA900000000000087, 9148386, 0xA300000000000000, 2, v11 & 1);
  v12 = sub_5E74();
  *(v0 + 120) = sub_6304(0xA0E2B4A0E2B8A0E2, 0xAC00000087A0E2B4, 9344994, 0xA300000000000000, 2, v12 & 1);
  v13 = sub_5E74();
  *(v0 + 128) = sub_6304(0xA0E2B4A0E2B8A0E2, 0xAF87A0E2B4A0E2B4, 0x97E28B97E28B97E2, 0xA90000000000008BLL, 2, v13 & 1);
  v14 = sub_5E74();
  *(v0 + 136) = sub_6304(0x1000000000000012, 0x8000000000023F40, 0x97E28B97E28B97E2, 0xAC0000008B97E28BLL, 2, v14 & 1);
  v15 = sub_5E74();
  *(v0 + 144) = sub_6304(0x1000000000000015, 0x8000000000023F60, 0x97E28B97E28B97E2, 0xAF8B97E28B97E28BLL, 2, v15 & 1);
  v16 = sub_5E74();
  *(v0 + 152) = sub_6304(0x1000000000000018, 0x8000000000023F80, 0x1000000000000012, 0x8000000000023FA0, 2, v16 & 1);
  v17 = sub_5E74();
  *(v0 + 160) = sub_6304(0x100000000000001BLL, 0x8000000000023FC0, 0x1000000000000015, 0x8000000000023FE0, 2, v17 & 1);
  v18 = sub_5E74();
  *(v0 + 168) = sub_6304(0x100000000000001ELL, 0x8000000000024000, 0x1000000000000018, 0x8000000000024020, 2, v18 & 1);
  v19 = sub_5E74();
  *(v0 + 176) = sub_6304(0x1000000000000021, 0x8000000000024040, 0x100000000000001BLL, 0x8000000000024070, 2, v19 & 1);
  v20 = sub_5E74();
  *(v0 + 184) = sub_6304(0x1000000000000024, 0x8000000000024090, 0x100000000000001ELL, 0x80000000000240C0, 2, v20 & 1);
  v21 = sub_5E74();
  *(v0 + 192) = sub_6304(0xA0E2ACA0E2B8A0E2, 0xA900000000000087, 11769570, 0xA300000000000000, 2, v21 & 1);
  v22 = sub_5E74();
  *(v0 + 200) = sub_6304(0xA0E2ACA0E2B8A0E2, 0xAC00000087A0E2ACLL, 0xB396E2B396E2, 0xA600000000000000, 2, v22 & 1);
  v23 = sub_5E74();
  *(v0 + 208) = sub_6304(0xA0E2ACA0E2B8A0E2, 0xAF87A0E2ACA0E2ACLL, 0x96E2B396E2B396E2, 0xA9000000000000B3, 2, v23 & 1);
  v24 = sub_5E74();
  *(v0 + 216) = sub_6304(0x1000000000000012, 0x80000000000240E0, 0x96E2B396E2B396E2, 0xAC000000B396E2B3, 2, v24 & 1);
  v25 = sub_5E74();
  *(v0 + 224) = sub_6304(0x1000000000000015, 0x8000000000024100, 0x96E2B396E2B396E2, 0xAFB396E2B396E2B3, 2, v25 & 1);
  v26 = sub_5E74();
  *(v0 + 232) = sub_6304(0x1000000000000018, 0x8000000000024120, 0x1000000000000012, 0x8000000000024140, 2, v26 & 1);
  v27 = sub_5E74();
  *(v0 + 240) = sub_6304(0x100000000000001BLL, 0x8000000000024160, 0x1000000000000015, 0x8000000000024180, 2, v27 & 1);
  v28 = sub_5E74();
  *(v0 + 248) = sub_6304(0x100000000000001ELL, 0x80000000000241A0, 0x1000000000000018, 0x80000000000241C0, 2, v28 & 1);
  v29 = sub_5E74();
  *(v0 + 256) = sub_6304(0x1000000000000021, 0x80000000000241E0, 0x100000000000001BLL, 0x8000000000024210, 2, v29 & 1);
  v30 = sub_5E74();
  *(v0 + 264) = sub_6304(0x1000000000000024, 0x8000000000024230, 0x100000000000001ELL, 0x8000000000024260, 2, v30 & 1);
  v31 = sub_5E74();
  *(v0 + 272) = sub_6304(0xA0E2B6A0E2B8A0E2, 0xA900000000000087, 10589922, 0xA300000000000000, 2, v31 & 1);
  v32 = sub_5E74();
  *(v0 + 280) = sub_6304(0xA0E2B6A0E2B8A0E2, 0xAC00000087A0E2B6, 0xA196E2A196E2, 0xA600000000000000, 2, v32 & 1);
  v33 = sub_5E74();
  *(v0 + 288) = sub_6304(0xA0E2B6A0E2B8A0E2, 0xAF87A0E2B6A0E2B6, 0x96E2A196E2A196E2, 0xA9000000000000A1, 2, v33 & 1);
  v34 = sub_5E74();
  *(v0 + 296) = sub_6304(0x1000000000000012, 0x8000000000024280, 0x96E2A196E2A196E2, 0xAC000000A196E2A1, 2, v34 & 1);
  v35 = sub_5E74();
  *(v0 + 304) = sub_6304(0x1000000000000015, 0x80000000000242A0, 0x96E2A196E2A196E2, 0xAFA196E2A196E2A1, 2, v35 & 1);
  v36 = sub_5E74();
  *(v0 + 312) = sub_6304(0x1000000000000018, 0x80000000000242C0, 0x1000000000000012, 0x80000000000242E0, 2, v36 & 1);
  v37 = sub_5E74();
  *(v0 + 320) = sub_6304(0x100000000000001BLL, 0x8000000000024300, 0x1000000000000015, 0x8000000000024320, 2, v37 & 1);
  v38 = sub_5E74();
  *(v0 + 328) = sub_6304(0x100000000000001ELL, 0x8000000000024340, 0x1000000000000018, 0x8000000000024360, 2, v38 & 1);
  v39 = sub_5E74();
  *(v0 + 336) = sub_6304(0x1000000000000021, 0x8000000000024380, 0x100000000000001BLL, 0x80000000000243B0, 2, v39 & 1);
  v40 = sub_5E74();
  *(v0 + 344) = sub_6304(0x1000000000000024, 0x80000000000243D0, 0x100000000000001ELL, 0x8000000000024400, 2, v40 & 1);
  v41 = sub_5E74();
  *(v0 + 352) = sub_6304(0xA0E2A2A0E2B8A0E2, 0xA900000000000087, 42, 0xE100000000000000, 2, v41 & 1);
  v42 = sub_5E74();
  *(v0 + 360) = sub_6304(0xA0E2A2A0E2B8A0E2, 0xAC00000087A0E2A2, 10794, 0xE200000000000000, 2, v42 & 1);
  v43 = sub_5E74();
  *(v0 + 368) = sub_6304(0xA0E2A2A0E2B8A0E2, 0xAF87A0E2A2A0E2A2, 2763306, 0xE300000000000000, 2, v43 & 1);
  v44 = sub_5E74();
  *(v0 + 376) = sub_6304(0x1000000000000012, 0x8000000000024420, 707406378, 0xE400000000000000, 2, v44 & 1);
  v45 = sub_5E74();
  *(v0 + 384) = sub_6304(0x1000000000000015, 0x8000000000024440, 0x2A2A2A2A2ALL, 0xE500000000000000, 2, v45 & 1);
  v46 = sub_5E74();
  *(v0 + 392) = sub_6304(0x1000000000000018, 0x8000000000024460, 0x2A2A2A2A2A2ALL, 0xE600000000000000, 2, v46 & 1);
  v47 = sub_5E74();
  *(v0 + 400) = sub_6304(0x100000000000001BLL, 0x8000000000024480, 0x2A2A2A2A2A2A2ALL, 0xE700000000000000, 2, v47 & 1);
  v48 = sub_5E74();
  *(v0 + 408) = sub_6304(0x100000000000001ELL, 0x80000000000244A0, 0x2A2A2A2A2A2A2A2ALL, 0xE800000000000000, 2, v48 & 1);
  v49 = sub_5E74();
  *(v0 + 416) = sub_6304(0x1000000000000021, 0x80000000000244C0, 0x2A2A2A2A2A2A2A2ALL, 0xE90000000000002ALL, 2, v49 & 1);
  v50 = sub_5E74();
  *(v0 + 424) = sub_6304(0x1000000000000024, 0x80000000000244F0, 0x2A2A2A2A2A2A2A2ALL, 0xEA00000000002A2ALL, 2, v50 & 1);
  v51 = sub_5E74();
  *(v0 + 432) = sub_6304(0x1000000000000027, 0x8000000000024520, 0x2A2A2A2A2A2A2A2ALL, 0xEB000000002A2A2ALL, 2, v51 & 1);
  v52 = sub_5E74();
  *(v0 + 440) = sub_6304(0x100000000000002ALL, 0x8000000000024550, 0x2A2A2A2A2A2A2A2ALL, 0xEC0000002A2A2A2ALL, 2, v52 & 1);
  v53 = sub_5E74();
  *(v0 + 448) = sub_6304(0x100000000000002DLL, 0x8000000000024580, 0x2A2A2A2A2A2A2A2ALL, 0xED00002A2A2A2A2ALL, 2, v53 & 1);
  v54 = sub_5E74();
  *(v0 + 456) = sub_6304(0x1000000000000030, 0x80000000000245B0, 0x2A2A2A2A2A2A2A2ALL, 0xEE002A2A2A2A2A2ALL, 2, v54 & 1);
  v55 = sub_5E74();
  *(v0 + 464) = sub_6304(0x1000000000000033, 0x80000000000245F0, 0x2A2A2A2A2A2A2A2ALL, 0xEF2A2A2A2A2A2A2ALL, 2, v55 & 1);
  v56 = sub_5E74();
  *(v0 + 472) = sub_6304(0x1000000000000036, 0x8000000000024630, 0xD000000000000010, 0x8000000000024670, 2, v56 & 1);
  v57 = sub_5E74();
  *(v0 + 480) = sub_6304(0x1000000000000039, 0x8000000000024690, 0xD000000000000011, 0x80000000000246D0, 2, v57 & 1);
  v58 = sub_5E74();
  *(v0 + 488) = sub_6304(0x100000000000003CLL, 0x80000000000246F0, 0xD000000000000012, 0x8000000000024730, 2, v58 & 1);
  v59 = sub_5E74();
  *(v0 + 496) = sub_6304(0x100000000000003FLL, 0x8000000000024750, 0xD000000000000013, 0x8000000000024790, 2, v59 & 1);
  v60 = sub_5E74();
  *(v0 + 504) = sub_6304(0x1000000000000042, 0x80000000000247B0, 0xD000000000000014, 0x8000000000024800, 2, v60 & 1);
  v61 = sub_5E74();
  *(v0 + 512) = sub_6304(0x1000000000000012, 0x80000000000238F0, 0xA383E28FB8EF31, 0xA700000000000000, 2, v61 & 1);
  v62 = sub_5E74();
  *(v0 + 520) = sub_6304(0x1000000000000012, 0x8000000000023910, 0xA383E28FB8EF32, 0xA700000000000000, 2, v62 & 1);
  v63 = sub_5E74();
  *(v0 + 528) = sub_6304(0x1000000000000012, 0x8000000000023930, 0xA383E28FB8EF33, 0xA700000000000000, 2, v63 & 1);
  v64 = sub_5E74();
  *(v0 + 536) = sub_6304(0x1000000000000012, 0x8000000000023950, 0xA383E28FB8EF34, 0xA700000000000000, 2, v64 & 1);
  v65 = sub_5E74();
  *(v0 + 544) = sub_6304(0x1000000000000012, 0x8000000000023970, 0xA383E28FB8EF35, 0xA700000000000000, 2, v65 & 1);
  v66 = sub_5E74();
  *(v0 + 552) = sub_6304(0x1000000000000012, 0x8000000000023990, 0xA383E28FB8EF36, 0xA700000000000000, 2, v66 & 1);
  v67 = sub_5E74();
  *(v0 + 560) = sub_6304(0x1000000000000012, 0x80000000000239B0, 0xA383E28FB8EF37, 0xA700000000000000, 2, v67 & 1);
  v68 = sub_5E74();
  *(v0 + 568) = sub_6304(0x1000000000000012, 0x80000000000239D0, 0xA383E28FB8EF38, 0xA700000000000000, 2, v68 & 1);
  v69 = sub_5E74();
  *(v0 + 576) = sub_6304(0x1000000000000012, 0x80000000000239F0, 0xA383E28FB8EF39, 0xA700000000000000, 2, v69 & 1);
  v70 = sub_5E74();
  *(v0 + 584) = sub_6304(0x1000000000000012, 0x8000000000023A10, 0xA383E28FB8EF30, 0xA700000000000000, 2, v70 & 1);
  v71 = sub_5E74();
  *(v0 + 592) = sub_6304(0xA0E281A0E2BFA0E2, 0xA9000000000000B2, 783385827, 0xA400000000000000, 2, v71 & 1);
  v72 = sub_5E74();
  *(v0 + 600) = sub_6304(0xA0E292A0E2BFA0E2, 0xA9000000000000B2, 783582435, 0xA400000000000000, 2, v72 & 1);
  v73 = sub_5E74();
  *(v0 + 608) = sub_6304(0xA0E294A0E2BFA0E2, 0xA9000000000000B2, 783779043, 0xA400000000000000, 2, v73 & 1);
  v74 = sub_5E74();
  *(v0 + 616) = sub_6304(0xA0E282A0E2BFA0E2, 0xA9000000000000B2, 783910115, 0xA400000000000000, 2, v74 & 1);
  v75 = sub_5E74();
  *(v0 + 624) = sub_6304(0xA0E2A2A0E2BFA0E2, 0xA9000000000000B2, 780240355, 0xA400000000000000, 2, v75 & 1);
  v76 = sub_5E74();
  *(v0 + 632) = sub_6304(0xA0E283A0E2BFA0E2, 0xA9000000000000B2, 780305891, 0xA400000000000000, 2, v76 & 1);
  v77 = sub_5E74();
  *(v0 + 640) = sub_6304(0xA0E284A0E2BFA0E2, 0xA9000000000000B2, 780502499, 0xA400000000000000, 2, v77 & 1);
  v78 = sub_5E74();
  *(v0 + 648) = sub_6304(0xA0E2B6A0E2BFA0E2, 0xA9000000000000B2, 780633571, 0xA400000000000000, 2, v78 & 1);
  v79 = sub_5E74();
  *(v0 + 656) = sub_6304(0xA0E285A0E2BFA0E2, 0xA9000000000000B2, 780699107, 0xA400000000000000, 2, v79 & 1);
  v80 = sub_5E74();
  *(v0 + 664) = sub_6304(0xA0E286A0E2BFA0E2, 0xA9000000000000B2, 780830179, 0xA400000000000000, 2, v80 & 1);
  v81 = sub_5E74();
  *(v0 + 672) = sub_6304(0xA0E296A0E2BFA0E2, 0xA9000000000000B2, 780895715, 0xA400000000000000, 2, v81 & 1);
  v82 = sub_5E74();
  *(v0 + 680) = sub_6304(0xA0E2A6A0E2BFA0E2, 0xA9000000000000B2, 780961251, 0xA400000000000000, 2, v82 & 1);
  v83 = sub_5E74();
  *(v0 + 688) = sub_6304(0xA0E2B2A0E2BFA0E2, 0xA9000000000000B2, 781026787, 0xA400000000000000, 2, v83 & 1);
  v84 = sub_5E74();
  *(v0 + 696) = sub_6304(0xA0E2B4A0E2BFA0E2, 0xA9000000000000B2, 781092323, 0xA400000000000000, 2, v84 & 1);
  v85 = sub_5E74();
  *(v0 + 704) = sub_6304(0x82A0E2BCA0E2, 0xA600000000000000, 10523106, 0xA300000000000000, 2, v85 & 1);
  v86 = sub_5E74();
  *(v0 + 712) = sub_6304(0x86A0E2BCA0E2, 0xA600000000000000, 10588642, 0xA300000000000000, 2, v86 & 1);
  v87 = sub_5E74();
  *(v0 + 720) = sub_6304(0x92A0E2BCA0E2, 0xA600000000000000, 10654178, 0xA300000000000000, 2, v87 & 1);
  v88 = sub_5E74();
  *(v0 + 728) = sub_6304(0xB2A0E2BCA0E2, 0xA600000000000000, 10719714, 0xA300000000000000, 2, v88 & 1);
  v89 = sub_5E74();
  *(v0 + 736) = sub_6304(0xA2A0E2BCA0E2, 0xA600000000000000, 10785250, 0xA300000000000000, 2, v89 & 1);
  v90 = sub_5E74();
  *(v0 + 744) = sub_6304(0x96A0E2BCA0E2, 0xA600000000000000, 10850786, 0xA300000000000000, 2, v90 & 1);
  v91 = sub_5E74();
  *(v0 + 752) = sub_6304(0xB6A0E2BCA0E2, 0xA600000000000000, 10916322, 0xA300000000000000, 2, v91 & 1);
  v92 = sub_5E74();
  *(v0 + 760) = sub_6304(0xA6A0E2BCA0E2, 0xA600000000000000, 10981858, 0xA300000000000000, 2, v92 & 1);
  v93 = sub_5E74();
  *(v0 + 768) = sub_6304(0x94A0E2BCA0E2, 0xA600000000000000, 11047394, 0xA300000000000000, 2, v93 & 1);
  v94 = sub_5E74();
  *(v0 + 776) = sub_6304(0x94A0E2BCA0E2, 0xA600000000000000, 11178978, 0xA300000000000000, 2, v94 & 1);
  v95 = sub_5E74();
  *(v0 + 784) = sub_6304(0x94A0E290A0E2, 0xA600000000000000, 42, 0xE100000000000000, 2, v95 & 1);
  v96 = sub_5E74();
  *(v0 + 792) = sub_6304(0x94A0E2B8A0E2, 0xA600000000000000, 12288226, 0xA300000000000000, 2, v96 & 1);
  v97 = sub_5E74();
  *(v0 + 800) = sub_6304(0xA0E288A0E2B4A0E2, 0xA9000000000000BALL, 11109090, 0xA300000000000000, 2, v97 & 1);
  v98 = sub_5E74();
  *(v0 + 808) = sub_6304(0xA0E288A0E2B4A0E2, 0xA900000000000089, 41666, 0xA200000000000000, 2, v98 & 1);
  v99 = sub_5E74();
  *(v0 + 816) = sub_6304(0xA0E288A0E2B4A0E2, 0xA900000000000099, 36, 0xE100000000000000, 2, v99 & 1);
  v100 = sub_5E74();
  *(v0 + 824) = sub_6304(0xA0E288A0E2B4A0E2, 0xA900000000000087, 41922, 0xA200000000000000, 2, v100 & 1);
  v101 = sub_5E74();
  *(v0 + 832) = sub_6304(0xA0E288A0E2B4A0E2, 0xA9000000000000BDLL, 42434, 0xA200000000000000, 2, v101 & 1);
  v102 = sub_5E74();
  *(v0 + 840) = sub_6304(0xA0E288A0E2B4A0E2, 0xA900000000000091, 11305698, 0xA300000000000000, 2, v102 & 1);
  v103 = sub_5E74();
  *(v0 + 848) = sub_6304(0xBAA0E288A0E2, 0xA600000000000000, 11109090, 0xA300000000000000, 2, v103 & 1);
  v104 = sub_5E74();
  *(v0 + 856) = sub_6304(0x89A0E288A0E2, 0xA600000000000000, 41666, 0xA200000000000000, 2, v104 & 1);
  v105 = sub_5E74();
  *(v0 + 864) = sub_6304(0x99A0E288A0E2, 0xA600000000000000, 36, 0xE100000000000000, 2, v105 & 1);
  v106 = sub_5E74();
  *(v0 + 872) = sub_6304(0x87A0E288A0E2, 0xA600000000000000, 41922, 0xA200000000000000, 2, v106 & 1);
  v107 = sub_5E74();
  *(v0 + 880) = sub_6304(0xBDA0E288A0E2, 0xA600000000000000, 42434, 0xA200000000000000, 2, v107 & 1);
  v108 = sub_5E74();
  *(v0 + 888) = sub_6304(0x91A0E288A0E2, 0xA600000000000000, 11305698, 0xA300000000000000, 2, v108 & 1);
  v109 = sub_5E74();
  *(v0 + 896) = sub_6304(0xB6A0E280A0E2, 0xA600000000000000, 10649826, 0xA300000000000000, 2, v109 & 1);
  v110 = sub_5E74();
  *(v0 + 904) = sub_6304(0xA0E28FA0E2B4A0E2, 0xA900000000000080, 37, 0xE100000000000000, 2, v110 & 1);
  v111 = sub_5E74();
  *(v0 + 912) = sub_6304(0xA0E28FA0E2B4A0E2, 0xAC00000080A0E28FLL, 28709, 0xE200000000000000, 2, v111 & 1);
  v112 = sub_5E74();
  *(v0 + 920) = sub_6304(0xA0E299A0E2B4A0E2, 0xA900000000000080, 45250, 0xA200000000000000, 2, v112 & 1);
  v113 = sub_5E74();
  *(v0 + 928) = sub_6304(0xA0E299A0E2B4A0E2, 0xAF80A0E289A0E2A0, 4436162, 0xA300000000000000, 2, v113 & 1);
  v114 = sub_5E74();
  *(v0 + 936) = sub_6304(0xA0E299A0E2B4A0E2, 0xAF80A0E28BA0E2A0, 4632770, 0xA300000000000000, 2, v114 & 1);
  v115 = sub_5E74();
  *(v0 + 944) = sub_6304(0xA0E299A0E2B4A0E2, 0xAF80A0E285A0E2A0, 4960450, 0xA300000000000000, 2, v115 & 1);
  v116 = sub_5E74();
  *(v0 + 952) = sub_6304(0xA0E2A4A0E2B4A0E2, 0xA900000000000080, 11698402, 0xA300000000000000, 2, v116 & 1);
  v117 = sub_5E74();
  *(v0 + 960) = sub_6304(0xA0E2A4A0E2B4A0E2, 0xAC00000080A0E2A4, 11763938, 0xA300000000000000, 2, v117 & 1);
  v118 = sub_5E74();
  *(v0 + 968) = sub_6304(0xA0E28FA0E2B4A0E2, 0xAC00000080A0E28DLL, 11567330, 0xA300000000000000, 2, v118 & 1);
  v119 = sub_5E74();
  *(v0 + 976) = sub_6304(0xA0E2A1A0E2B4A0E2, 0xA900000000000080, 34243, 0xA200000000000000, 2, v119 & 1);
  v120 = sub_5E74();
  *(v0 + 984) = sub_6304(0x81A0E288A0E2, 0xA600000000000000, 64, 0xE100000000000000, 2, v120 & 1);
  v121 = sub_5E74();
  *(v0 + 992) = sub_6304(0xA2A0E288A0E2, 0xA600000000000000, 94, 0xE100000000000000, 2, v121 & 1);
  v122 = sub_5E74();
  *(v0 + 1000) = sub_6304(0xB9A0E2B8A0E2, 0xA600000000000000, 35, 0xE100000000000000, 2, v122 & 1);
  v123 = sub_5E74();
  *(v0 + 1008) = sub_6304(0xA4A0E2B8A0E2, 0xA600000000000000, 95, 0xE100000000000000, 2, v123 & 1);
  v124 = sub_5E74();
  *(v0 + 1016) = sub_6304(0xA1A0E2B8A0E2, 0xA600000000000000, 92, 0xE100000000000000, 2, v124 & 1);
  v125 = sub_5E74();
  *(v0 + 1024) = sub_6304(0xB3A0E2B8A0E2, 0xA600000000000000, 124, 0xE100000000000000, 2, v125 & 1);
  v126 = sub_5E74();
  *(v0 + 1032) = sub_6304(0xA0E288A0E2B4A0E2, 0xAC000000B2A0E2AFLL, 38, 0xE100000000000000, 2, v126 & 1);
  v127 = sub_5E74();
  *(v0 + 1040) = sub_6304(0xA0E298A0E2B4A0E2, 0xAC000000B2A0E28FLL, 46786, 0xA200000000000000, 2, v127 & 1);
  v128 = sub_5E74();
  *(v0 + 1048) = sub_6304(0xA0E298A0E2B4A0E2, 0xAC000000B2A0E289, 43458, 0xA200000000000000, 2, v128 & 1);
  v129 = sub_5E74();
  *(v0 + 1056) = sub_6304(0xA0E298A0E2B4A0E2, 0xAC000000B2A0E297, 44738, 0xA200000000000000, 2, v129 & 1);
  v130 = sub_5E74();
  *(v0 + 1064) = sub_6304(0xA0E298A0E2B4A0E2, 0xAC000000B2A0E29ELL, 10650850, 0xA300000000000000, 2, v130 & 1);
  sub_20F6C();
  *(v0 + 1072) = sub_63A0(8429794, 0xA300000000000000, v132, v133, v131 & 0xFFFFFF, 2);
  v134 = sub_5E74();
  *(v0 + 1080) = sub_6304(12361954, 0xA300000000000000, 0, 0xE000000000000000, 1, v134 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v142 = v141;
  sub_20F6C();
  v144 = v143;
  v146 = v145;
  v148 = v147;
  v149 = sub_5E74();
  *(v0 + 1088) = sub_6490(v136, v138, v140 & 0x101010101010101, v142 & 0x101010101, v144, v146, v148 & 0xFFFFFF, 2, v149 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v151 = v150;
  v153 = v152;
  v155 = v154;
  v157 = v156;
  sub_20F6C();
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v164 = sub_5E74();
  *(v0 + 1096) = sub_6490(v151, v153, v155 & 0x101010101010101, v157 & 0x101010101, v159, v161, v163 & 0xFFFFFF, 2, v164 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v172 = v171;
  sub_20F6C();
  v174 = v173;
  v176 = v175;
  LODWORD(v161) = v177;
  v178 = sub_5E74();
  *(v0 + 1104) = sub_6490(v166, v168, v170 & 0x101010101010101, v172 & 0x101010101, v174, v176, v161 & 0xFFFFFF, 2, v178 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v180 = v179;
  v182 = v181;
  v184 = v183;
  v186 = v185;
  sub_20F6C();
  v188 = v187;
  v190 = v189;
  LODWORD(v161) = v191;
  v192 = sub_5E74();
  *(v0 + 1112) = sub_6490(v180, v182, v184 & 0x101010101010101, v186 & 0x101010101, v188, v190, v161 & 0xFFFFFF, 2, v192 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v194 = v193;
  v196 = v195;
  v198 = v197;
  v200 = v199;
  sub_20F6C();
  v202 = v201;
  v204 = v203;
  LODWORD(v161) = v205;
  v206 = sub_5E74();
  *(v0 + 1120) = sub_6490(v194, v196, v198 & 0x101010101010101, v200 & 0x101010101, v202, v204, v161 & 0xFFFFFF, 2, v206 & 1);
  v207 = sub_5E74();
  *(v0 + 1128) = sub_6304(0xA0E2A0A0E2A0A0E2, 0xA9000000000000A0, 11504610, 0xA300000000000000, 2, v207 & 1);
  v208 = sub_5E74();
  *(v0 + 1136) = sub_6304(0xA0E2B2A0E2B2A0E2, 0xA9000000000000B2, 10911970, 0xA300000000000000, 2, v208 & 1);
  v209 = sub_5E74();
  *(v0 + 1144) = sub_6304(0x94A0E288A0E2, 0xA600000000000000, 126, 0xE100000000000000, 2, v209 & 1);
  v210 = sub_5E74();
  *(v0 + 1152) = sub_6304(0xB2A0E2B8A0E2, 0xA600000000000000, 46, 0xE100000000000000, 2, v210 & 1);
  v211 = sub_5E74();
  *(v0 + 1160) = sub_6304(0xA6A0E2B8A0E2, 0xA600000000000000, 63, 0xE100000000000000, 2, v211 & 1);
  v212 = sub_5E74();
  *(v0 + 1168) = sub_6304(0x96A0E2B8A0E2, 0xA600000000000000, 33, 0xE100000000000000, 2, v212 & 1);
  v213 = sub_5E74();
  *(v0 + 1176) = sub_6304(0x86A0E290A0E2, 0xA600000000000000, 47042, 0xA200000000000000, 2, v213 & 1);
  v214 = sub_5E74();
  *(v0 + 1184) = sub_6304(0x8CA0E2B8A0E2, 0xA600000000000000, 47, 0xE100000000000000, 2, v214 & 1);
  v215 = sub_5E74();
  *(v0 + 1192) = sub_6304(0x86A0E2B0A0E2, 0xA600000000000000, 59, 0xE100000000000000, 2, v215 & 1);
  v216 = sub_5E74();
  *(v0 + 1200) = sub_6304(0x82A0E290A0E2, 0xA600000000000000, 58, 0xE100000000000000, 2, v216 & 1);
  v217 = sub_5E74();
  *(v0 + 1208) = sub_6304(0xB4A0E2B4A0E2, 0xA600000000000000, 8618211, 0xA300000000000000, 2, v217 & 1);
  v218 = sub_5E74();
  *(v0 + 1216) = sub_6304(0x84A0E2A0A0E2, 0xA600000000000000, 37067, 0xA200000000000000, 2, v218 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v220 = v219;
  v222 = v221;
  v224 = v223;
  v226 = v225;
  sub_20F6C();
  v228 = v227;
  v230 = v229;
  LODWORD(v161) = v231;
  v232 = sub_5E74();
  *(v0 + 1224) = sub_6490(v220, v222, v224 & 0x101010101010101, v226 & 0x101010101, v228, v230, v161 & 0xFFFFFF, 2, v232 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v234 = v233;
  v236 = v235;
  v238 = v237;
  v240 = v239;
  sub_20F6C();
  v242 = v241;
  v244 = v243;
  LODWORD(v161) = v245;
  v246 = sub_5E74();
  *(v0 + 1232) = sub_6490(v234, v236, v238 & 0x101010101010101, v240 & 0x101010101, v242, v244, v161 & 0xFFFFFF, 2, v246 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v248 = v247;
  v250 = v249;
  v252 = v251;
  v254 = v253;
  sub_20F6C();
  v256 = v255;
  v258 = v257;
  LODWORD(v161) = v259;
  v260 = sub_5E74();
  *(v0 + 1240) = sub_6490(v248, v250, v252 & 0x101010101010101, v254 & 0x101010101, v256, v258, v161 & 0xFFFFFF, 2, v260 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v262 = v261;
  v264 = v263;
  v266 = v265;
  v268 = v267;
  sub_20F6C();
  v270 = v269;
  v272 = v271;
  LODWORD(v161) = v273;
  v274 = sub_5E74();
  *(v0 + 1248) = sub_6490(v262, v264, v266 & 0x101010101010101, v268 & 0x101010101, v270, v272, v161 & 0xFFFFFF, 2, v274 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v276 = v275;
  v278 = v277;
  v280 = v279;
  v282 = v281;
  sub_20F6C();
  v284 = v283;
  v286 = v285;
  LODWORD(v161) = v287;
  v288 = sub_5E74();
  *(v0 + 1256) = sub_6490(v276, v278, v280 & 0x101010101010101, v282 & 0x101010101, v284, v286, v161 & 0xFFFFFF, 2, v288 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v290 = v289;
  v292 = v291;
  v294 = v293;
  v296 = v295;
  sub_20F6C();
  v298 = v297;
  v300 = v299;
  LODWORD(v161) = v301;
  v302 = sub_5E74();
  *(v0 + 1264) = sub_6490(v290, v292, v294 & 0x101010101010101, v296 & 0x101010101, v298, v300, v161 & 0xFFFFFF, 2, v302 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v304 = v303;
  v306 = v305;
  v308 = v307;
  v310 = v309;
  sub_20F6C();
  v312 = v311;
  v314 = v313;
  LODWORD(v161) = v315;
  v316 = sub_5E74();
  *(v0 + 1272) = sub_6490(v304, v306, v308 & 0x101010101010101, v310 & 0x101010101, v312, v314, v161 & 0xFFFFFF, 2, v316 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v318 = v317;
  v320 = v319;
  v322 = v321;
  v324 = v323;
  sub_20F6C();
  v326 = v325;
  v328 = v327;
  LODWORD(v161) = v329;
  v330 = sub_5E74();
  *(v0 + 1280) = sub_6490(v318, v320, v322 & 0x101010101010101, v324 & 0x101010101, v326, v328, v161 & 0xFFFFFF, 2, v330 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v332 = v331;
  v334 = v333;
  v336 = v335;
  v338 = v337;
  sub_20F6C();
  v340 = v339;
  v342 = v341;
  LODWORD(v161) = v343;
  v344 = sub_5E74();
  *(v0 + 1288) = sub_6490(v332, v334, v336 & 0x101010101010101, v338 & 0x101010101, v340, v342, v161 & 0xFFFFFF, 2, v344 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v346 = v345;
  v348 = v347;
  v350 = v349;
  v352 = v351;
  sub_20F6C();
  v354 = v353;
  v356 = v355;
  LODWORD(v161) = v357;
  v358 = sub_5E74();
  *(v0 + 1296) = sub_6490(v346, v348, v350 & 0x101010101010101, v352 & 0x101010101, v354, v356, v161 & 0xFFFFFF, 2, v358 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v360 = v359;
  v362 = v361;
  v364 = v363;
  v366 = v365;
  sub_20F6C();
  v368 = v367;
  v370 = v369;
  LODWORD(v161) = v371;
  v372 = sub_5E74();
  *(v0 + 1304) = sub_6490(v360, v362, v364 & 0x101010101010101, v366 & 0x101010101, v368, v370, v161 & 0xFFFFFF, 2, v372 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v374 = v373;
  v376 = v375;
  v378 = v377;
  v380 = v379;
  sub_20F6C();
  v382 = v381;
  v384 = v383;
  LODWORD(v161) = v385;
  v386 = sub_5E74();
  *(v0 + 1312) = sub_6490(v374, v376, v378 & 0x101010101010101, v380 & 0x101010101, v382, v384, v161 & 0xFFFFFF, 2, v386 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v388 = v387;
  v390 = v389;
  v392 = v391;
  v394 = v393;
  sub_20F6C();
  v396 = v395;
  v398 = v397;
  LODWORD(v161) = v399;
  v400 = sub_5E74();
  *(v0 + 1320) = sub_6490(v388, v390, v392 & 0x101010101010101, v394 & 0x101010101, v396, v398, v161 & 0xFFFFFF, 2, v400 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v402 = v401;
  v404 = v403;
  v406 = v405;
  v408 = v407;
  sub_20F6C();
  v410 = v409;
  v412 = v411;
  LODWORD(v161) = v413;
  v414 = sub_5E74();
  *(v0 + 1328) = sub_6490(v402, v404, v406 & 0x101010101010101, v408 & 0x101010101, v410, v412, v161 & 0xFFFFFF, 2, v414 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v416 = v415;
  v418 = v417;
  v420 = v419;
  v422 = v421;
  sub_20F6C();
  v424 = v423;
  v426 = v425;
  LODWORD(v161) = v427;
  v428 = sub_5E74();
  *(v0 + 1336) = sub_6490(v416, v418, v420 & 0x101010101010101, v422 & 0x101010101, v424, v426, v161 & 0xFFFFFF, 2, v428 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v430 = v429;
  v432 = v431;
  v434 = v433;
  v436 = v435;
  sub_20F6C();
  v438 = v437;
  v440 = v439;
  LODWORD(v161) = v441;
  v442 = sub_5E74();
  *(v0 + 1344) = sub_6490(v430, v432, v434 & 0x101010101010101, v436 & 0x101010101, v438, v440, v161 & 0xFFFFFF, 2, v442 & 1);
  *(v0 + 1352) = sub_6304(0xB4A0E2A6A0E2, 0xA600000000000000, 34, 0xE100000000000000, 2, 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v444 = v443;
  v446 = v445;
  v448 = v447;
  v450 = v449;
  sub_20F6C();
  v452 = v451;
  v454 = v453;
  LODWORD(v161) = v455;
  v456 = sub_5E74();
  *(v0 + 1360) = sub_6490(v444, v446, v448 & 0x101010101010101, v450 & 0x101010101, v452, v454, v161 & 0xFFFFFF, 2, v456 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v458 = v457;
  v460 = v459;
  v462 = v461;
  v464 = v463;
  sub_20F6C();
  v466 = v465;
  v468 = v467;
  LODWORD(v161) = v469;
  v470 = sub_5E74();
  *(v0 + 1368) = sub_6490(v458, v460, v462 & 0x101010101010101, v464 & 0x101010101, v466, v468, v161 & 0xFFFFFF, 2, v470 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v472 = v471;
  v474 = v473;
  v476 = v475;
  v478 = v477;
  sub_20F6C();
  v480 = v479;
  v482 = v481;
  LODWORD(v161) = v483;
  v484 = sub_5E74();
  *(v0 + 1376) = sub_6490(v472, v474, v476 & 0x101010101010101, v478 & 0x101010101, v480, v482, v161 & 0xFFFFFF, 2, v484 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v486 = v485;
  v488 = v487;
  v490 = v489;
  v492 = v491;
  sub_20F6C();
  v494 = v493;
  v496 = v495;
  LODWORD(v161) = v497;
  v498 = sub_5E74();
  *(v0 + 1384) = sub_6490(v486, v488, v490 & 0x101010101010101, v492 & 0x101010101, v494, v496, v161 & 0xFFFFFF, 2, v498 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v500 = v499;
  v502 = v501;
  v504 = v503;
  v506 = v505;
  sub_20F6C();
  v508 = v507;
  v510 = v509;
  LODWORD(v161) = v511;
  v512 = sub_5E74();
  *(v0 + 1392) = sub_6490(v500, v502, v504 & 0x101010101010101, v506 & 0x101010101, v508, v510, v161 & 0xFFFFFF, 2, v512 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v514 = v513;
  v516 = v515;
  v518 = v517;
  v520 = v519;
  sub_20F6C();
  v522 = v521;
  v524 = v523;
  LODWORD(v161) = v525;
  v526 = sub_5E74();
  result = sub_6490(v514, v516, v518 & 0x101010101010101, v520 & 0x101010101, v522, v524, v161 & 0xFFFFFF, 2, v526 & 1);
  *(v0 + 1400) = result;
  qword_3A8A8 = v0;
  return result;
}

uint64_t sub_18DE8()
{
  sub_78C0(&qword_3A258, &qword_25948);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_256C0;
  type metadata accessor for HangulExpansionAction();
  sub_20F78();
  *(v0 + 32) = sub_63A0(0x8EA0E281A0E2, 0xA600000000000000, v2, v3, v1 & 0xFFFFFF, 2);
  sub_20F78();
  *(v0 + 40) = sub_63A0(0x89A0E281A0E2, 0xA600000000000000, v5, v6, v4 & 0xFFFFFF, 2);
  sub_20F78();
  *(v0 + 48) = sub_63A0(0x92A0E281A0E2, 0xA600000000000000, v8, v9, v7 & 0xFFFFFF, 2);
  sub_20F78();
  *(v0 + 56) = sub_63A0(0xA2A0E281A0E2, 0xA600000000000000, v11, v12, v10 & 0xFFFFFF, 2);
  sub_20F78();
  *(v0 + 64) = sub_63A0(0x9DA0E281A0E2, 0xA600000000000000, v14, v15, v13 & 0xFFFFFF, 2);
  sub_20F78();
  *(v0 + 72) = sub_63A0(0xA5A0E281A0E2, 0xA600000000000000, v17, v18, v16 & 0xFFFFFF, 2);
  sub_20F78();
  result = sub_63A0(0xB1A0E281A0E2, 0xA600000000000000, v20, v21, v19 & 0xFFFFFF, 2);
  *(v0 + 80) = result;
  qword_3A8B8 = v0;
  return result;
}

uint64_t sub_1909C()
{
  sub_78C0(&qword_3A258, &qword_25948);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_256D0;
  type metadata accessor for HangulExpansionAction();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_20F6C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_5E74();
  *(v0 + 32) = sub_6490(v2, v4, v6 & 0x101010101010101, v8 & 0x101010101, v10, v12, v14 & 0xFFFFFF, 2, v15 & 1);
  type metadata accessor for HangulLanguageModeAction();
  sub_6B54(11837666, 0xA300000000000000, 1);
  *(v0 + 40) = v16;
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_20F6C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_5E74();
  *(v0 + 48) = sub_6490(v18, v20, v22 & 0x101010101010101, v24 & 0x101010101, v26, v28, v30 & 0xFFFFFF, 2, v31 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_20F6C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = sub_5E74();
  *(v0 + 56) = sub_6490(v33, v35, v37 & 0x101010101010101, v39 & 0x101010101, v41, v43, v45 & 0xFFFFFF, 2, v46 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_20F6C();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = sub_5E74();
  *(v0 + 64) = sub_6490(v48, v50, v52 & 0x101010101010101, v54 & 0x101010101, v56, v58, v60 & 0xFFFFFF, 2, v61 & 1);
  v62 = sub_5E74();
  *(v0 + 72) = sub_6304(0x81A0E2BFA0E2, 0xA600000000000000, 11633891, 0xA300000000000000, 2, v62 & 1);
  v63 = sub_5E74();
  *(v0 + 80) = sub_6304(0x92A0E2BFA0E2, 0xA600000000000000, 11830499, 0xA300000000000000, 2, v63 & 1);
  v64 = sub_5E74();
  *(v0 + 88) = sub_6304(0x94A0E2BFA0E2, 0xA600000000000000, 12027107, 0xA300000000000000, 2, v64 & 1);
  v65 = sub_5E74();
  *(v0 + 96) = sub_6304(0x82A0E2BFA0E2, 0xA600000000000000, 12158179, 0xA300000000000000, 2, v65 & 1);
  v66 = sub_5E74();
  *(v0 + 104) = sub_6304(0xA2A0E2BFA0E2, 0xA600000000000000, 8488419, 0xA300000000000000, 2, v66 & 1);
  v67 = sub_5E74();
  *(v0 + 112) = sub_6304(0x83A0E2BFA0E2, 0xA600000000000000, 8553955, 0xA300000000000000, 2, v67 & 1);
  v68 = sub_5E74();
  *(v0 + 120) = sub_6304(0x84A0E2BFA0E2, 0xA600000000000000, 8750563, 0xA300000000000000, 2, v68 & 1);
  v69 = sub_5E74();
  *(v0 + 128) = sub_6304(0xB6A0E2BFA0E2, 0xA600000000000000, 8881635, 0xA300000000000000, 2, v69 & 1);
  v70 = sub_5E74();
  *(v0 + 136) = sub_6304(0x85A0E2BFA0E2, 0xA600000000000000, 8947171, 0xA300000000000000, 2, v70 & 1);
  v71 = sub_5E74();
  *(v0 + 144) = sub_6304(0x86A0E2BFA0E2, 0xA600000000000000, 9078243, 0xA300000000000000, 2, v71 & 1);
  v72 = sub_5E74();
  *(v0 + 152) = sub_6304(0x96A0E2BFA0E2, 0xA600000000000000, 9143779, 0xA300000000000000, 2, v72 & 1);
  v73 = sub_5E74();
  *(v0 + 160) = sub_6304(0xA6A0E2BFA0E2, 0xA600000000000000, 9209315, 0xA300000000000000, 2, v73 & 1);
  v74 = sub_5E74();
  *(v0 + 168) = sub_6304(0xB2A0E2BFA0E2, 0xA600000000000000, 9274851, 0xA300000000000000, 2, v74 & 1);
  v75 = sub_5E74();
  *(v0 + 176) = sub_6304(0xB4A0E2BFA0E2, 0xA600000000000000, 9340387, 0xA300000000000000, 2, v75 & 1);
  v76 = sub_5E74();
  *(v0 + 184) = sub_6304(0xA3A0E2BFA0E2, 0xA600000000000000, 9405923, 0xA300000000000000, 2, v76 & 1);
  v77 = sub_5E74();
  *(v0 + 192) = sub_6304(0x97A0E2BFA0E2, 0xA600000000000000, 9471459, 0xA300000000000000, 2, v77 & 1);
  v78 = sub_5E74();
  *(v0 + 200) = sub_6304(0x9CA0E2BFA0E2, 0xA600000000000000, 9536995, 0xA300000000000000, 2, v78 & 1);
  v79 = sub_5E74();
  *(v0 + 208) = sub_6304(0x8EA0E2BFA0E2, 0xA600000000000000, 9668067, 0xA300000000000000, 2, v79 & 1);
  v80 = sub_5E74();
  *(v0 + 216) = sub_6304(0x9DA0E2BFA0E2, 0xA600000000000000, 9733603, 0xA300000000000000, 2, v80 & 1);
  v81 = sub_5E74();
  *(v0 + 224) = sub_6304(0xB1A0E2BFA0E2, 0xA600000000000000, 9799139, 0xA300000000000000, 2, v81 & 1);
  v82 = sub_5E74();
  *(v0 + 232) = sub_6304(0x8CA0E2BFA0E2, 0xA600000000000000, 9864675, 0xA300000000000000, 2, v82 & 1);
  v83 = sub_5E74();
  *(v0 + 240) = sub_6304(0xA5A0E2BFA0E2, 0xA600000000000000, 9930211, 0xA300000000000000, 2, v83 & 1);
  v84 = sub_5E74();
  *(v0 + 248) = sub_6304(0xA7A0E2BFA0E2, 0xA600000000000000, 9995747, 0xA300000000000000, 2, v84 & 1);
  v85 = sub_5E74();
  *(v0 + 256) = sub_6304(0xBDA0E2BFA0E2, 0xA600000000000000, 10126819, 0xA300000000000000, 2, v85 & 1);
  v86 = sub_5E74();
  *(v0 + 264) = sub_6304(0xACA0E2BFA0E2, 0xA600000000000000, 10192355, 0xA300000000000000, 2, v86 & 1);
  v87 = sub_5E74();
  *(v0 + 272) = sub_6304(0x8DA0E2BFA0E2, 0xA600000000000000, 10257891, 0xA300000000000000, 2, v87 & 1);
  v88 = sub_5E74();
  *(v0 + 280) = sub_6304(0x8FA0E2BFA0E2, 0xA600000000000000, 10323427, 0xA300000000000000, 2, v88 & 1);
  v89 = sub_5E74();
  *(v0 + 288) = sub_6304(0xA9A0E2BFA0E2, 0xA600000000000000, 10520035, 0xA300000000000000, 2, v89 & 1);
  v90 = sub_5E74();
  *(v0 + 296) = sub_6304(0xAAA0E2BFA0E2, 0xA600000000000000, 10585571, 0xA300000000000000, 2, v90 & 1);
  v91 = sub_5E74();
  *(v0 + 304) = sub_6304(0xBAA0E2BFA0E2, 0xA600000000000000, 10651107, 0xA300000000000000, 2, v91 & 1);
  v92 = sub_5E74();
  *(v0 + 312) = sub_6304(0x95A0E2BFA0E2, 0xA600000000000000, 10716643, 0xA300000000000000, 2, v92 & 1);
  v93 = sub_5E74();
  *(v0 + 320) = sub_6304(0x94A0E2A2A0E2, 0xA600000000000000, 45506, 0xA200000000000000, 2, v93 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  sub_20F6C();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = sub_5E74();
  *(v0 + 328) = sub_6490(v95, v97, v99 & 0x101010101010101, v101 & 0x101010101, v103, v105, v107 & 0xFFFFFF, 2, v108 & 1);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  sub_20F6C();
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = sub_5E74();
  *(v0 + 336) = sub_6490(v110, v112, v114 & 0x101010101010101, v116 & 0x101010101, v118, v120, v122 & 0xFFFFFF, 2, v123 & 1);
  v124 = sub_5E74();
  *(v0 + 344) = sub_6304(0xA0E292A0E2AAA0E2, 0xA900000000000095, 9733858, 0xA300000000000000, 2, v124 & 1);
  v125 = sub_5E74();
  *(v0 + 352) = sub_6304(0x92A0E2AAA0E2, 0xA600000000000000, 9471714, 0xA300000000000000, 2, v125 & 1);
  v126 = sub_5E74();
  *(v0 + 360) = sub_6304(0x95A0E292A0E2, 0xA600000000000000, 9602786, 0xA300000000000000, 2, v126 & 1);
  v127 = sub_5E74();
  *(v0 + 368) = sub_6304(0xA0E292A0E298A0E2, 0xA900000000000095, 9668322, 0xA300000000000000, 2, v127 & 1);
  v128 = sub_5E74();
  *(v0 + 376) = sub_6304(0xA0E292A0E2B0A0E2, 0xA900000000000095, 9537250, 0xA300000000000000, 2, v128 & 1);
  v129 = sub_5E74();
  *(v0 + 384) = sub_6304(0xA4A0E2A4A0E2, 0xA600000000000000, 9797858, 0xA300000000000000, 2, v129 & 1);
  v130 = sub_5E74();
  *(v0 + 392) = sub_6304(10789090, 0xA300000000000000, 45, 0xE100000000000000, 2, v130 & 1);
  sub_20F6C();
  *(v0 + 400) = sub_63A0(0xA0E2B8A0E2A0A0E2, 0xA90000000000008ELL, v132, v133, v131 & 0xFFFFFF, 2);
  sub_20F6C();
  *(v0 + 408) = sub_63A0(0x8EA0E2B8A0E2, 0xA600000000000000, v135, v136, v134 & 0xFFFFFF, 2);
  sub_20F6C();
  *(v0 + 416) = sub_63A0(0xA0E2B1A0E289A0E2, 0xA900000000000096, v138, v139, v137 & 0xFFFFFF, 2);
  sub_20F6C();
  *(v0 + 424) = sub_63A0(0x96A0E28EA0E2, 0xA600000000000000, v141, v142, v140 & 0xFFFFFF, 2);
  sub_20F6C();
  *(v0 + 432) = sub_63A0(0xA0E282A0E29AA0E2, 0xA9000000000000A6, v144, v145, v143 & 0xFFFFFF, 2);
  sub_20F6C();
  *(v0 + 440) = sub_63A0(0xA0E2A5A0E29AA0E2, 0xAC000000A6A0E282, v147, v148, v146 & 0xFFFFFF, 2);
  sub_20F6C();
  *(v0 + 448) = sub_63A0(0xA0E2AFA0E29AA0E2, 0xA9000000000000A6, v150, v151, v149 & 0xFFFFFF, 2);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 456) = sub_63FC(v154, v155, v152 & 0x101010101010101, v153 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 464) = sub_63FC(v158, v159, v156 & 0x101010101010101, v157 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 472) = sub_63FC(v162, v163, v160 & 0x101010101010101, v161 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 480) = sub_63FC(v166, v167, v164 & 0x101010101010101, v165 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 488) = sub_63FC(v170, v171, v168 & 0x101010101010101, v169 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 496) = sub_63FC(v174, v175, v172 & 0x101010101010101, v173 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 504) = sub_63FC(v178, v179, v176 & 0x101010101010101, v177 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 512) = sub_63FC(v182, v183, v180 & 0x101010101010101, v181 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 520) = sub_63FC(v186, v187, v184 & 0x101010101010101, v185 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 528) = sub_63FC(v190, v191, v188 & 0x101010101010101, v189 & 0x101010101);
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E74();
  sub_5E6C();
  sub_5E6C();
  sub_5E74();
  sub_5E7C();
  *(v0 + 536) = sub_63FC(v194, v195, v192 & 0x101010101010101, v193 & 0x101010101);
  sub_20F6C();
  *(v0 + 544) = sub_63A0(0xB2A0E2A3A0E2, 0xA600000000000000, v197, v198, v196 & 0xFFFFFF, 2);
  v199 = sub_20F40();
  *(v0 + 552) = sub_63A0(0x8CA0E289A0E2, 0xA600000000000000, v199, v201, v200 & 0xFFFFFF, 2);
  v202 = sub_20F40();
  *(v0 + 560) = sub_63A0(0xABA0E2A0A0E2, 0xA600000000000000, v202, v204, v203 & 0xFFFFFF, 2);
  v205 = sub_20F40();
  *(v0 + 568) = sub_63A0(0x87A0E2A0A0E2, 0xA600000000000000, v205, v207, v206 & 0xFFFFFF, 2);
  v208 = sub_20F40();
  *(v0 + 576) = sub_63A0(0x88A0E2A0A0E2, 0xA600000000000000, v208, v210, v209 & 0xFFFFFF, 2);
  v211 = sub_20F40();
  *(v0 + 584) = sub_63A0(0x8AA0E2A0A0E2, 0xA600000000000000, v211, v213, v212 & 0xFFFFFF, 2);
  v214 = sub_20F40();
  *(v0 + 592) = sub_63A0(0x98A0E2A0A0E2, 0xA600000000000000, v214, v216, v215 & 0xFFFFFF, 2);
  v217 = sub_20F40();
  *(v0 + 600) = sub_63A0(0xA0A0E2A0A0E2, 0xA600000000000000, v217, v219, v218 & 0xFFFFFF, 2);
  v220 = sub_20F40();
  *(v0 + 608) = sub_63A0(0xA8A0E2A0A0E2, 0xA600000000000000, v220, v222, v221 & 0xFFFFFF, 2);
  v223 = sub_20F40();
  *(v0 + 616) = sub_63A0(11247842, 0xA300000000000000, v223, v225, v224 & 0xFFFFFF, 2);
  v226 = sub_20F40();
  *(v0 + 624) = sub_63A0(8888546, 0xA300000000000000, v226, v228, v227 & 0xFFFFFF, 2);
  v229 = sub_20F40();
  *(v0 + 632) = sub_63A0(8954082, 0xA300000000000000, v229, v231, v230 & 0xFFFFFF, 2);
  v232 = sub_20F40();
  *(v0 + 640) = sub_63A0(9019618, 0xA300000000000000, v232, v234, v233 & 0xFFFFFF, 2);
  v235 = sub_20F40();
  *(v0 + 648) = sub_63A0(9085154, 0xA300000000000000, v235, v237, v236 & 0xFFFFFF, 2);
  v238 = sub_20F40();
  *(v0 + 656) = sub_63A0(9478370, 0xA300000000000000, v238, v240, v239 & 0xFFFFFF, 2);
  v241 = sub_20F40();
  *(v0 + 664) = sub_63A0(9543906, 0xA300000000000000, v241, v243, v242 & 0xFFFFFF, 2);
  v244 = sub_20F40();
  *(v0 + 672) = sub_63A0(10002658, 0xA300000000000000, v244, v246, v245 & 0xFFFFFF, 2);
  v247 = sub_20F40();
  *(v0 + 680) = sub_63A0(10526946, 0xA300000000000000, v247, v249, v248 & 0xFFFFFF, 2);
  v250 = sub_20F40();
  *(v0 + 688) = sub_63A0(11051234, 0xA300000000000000, v250, v252, v251 & 0xFFFFFF, 2);
  v253 = sub_20F40();
  *(v0 + 696) = sub_63A0(11575522, 0xA300000000000000, v253, v255, v254 & 0xFFFFFF, 2);
  v256 = sub_20F40();
  *(v0 + 704) = sub_63A0(9150690, 0xA300000000000000, v256, v258, v257 & 0xFFFFFF, 2);
  v259 = sub_20F40();
  *(v0 + 712) = sub_63A0(9674978, 0xA300000000000000, v259, v261, v260 & 0xFFFFFF, 2);
  v262 = sub_20F40();
  *(v0 + 720) = sub_63A0(10068194, 0xA300000000000000, v262, v264, v263 & 0xFFFFFF, 2);
  v265 = sub_20F40();
  result = sub_63A0(10133730, 0xA300000000000000, v265, v267, v266 & 0xFFFFFF, 2);
  *(v0 + 728) = result;
  qword_3A8C8 = v0;
  return result;
}