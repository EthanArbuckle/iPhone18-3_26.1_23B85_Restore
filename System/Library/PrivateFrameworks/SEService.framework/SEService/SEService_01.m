void sub_1C7BD1038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD2030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C7BD2B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C7BD2E68(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v7 = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
  result = 0;
  switch(v5)
  {
    case 1:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83468;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83448;
        return v9[v4];
      }

      return result;
    case 2:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C836A8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83688;
        return v9[v4];
      }

      return result;
    case 3:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83668;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83648;
        return v9[v4];
      }

      return result;
    case 4:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83508;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C834E8;
        return v9[v4];
      }

      return result;
    case 5:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83828;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 < 2)
      {
        v9 = &unk_1C7C83808;
        return v9[v4];
      }

      return result;
    case 6:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C835C8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        if (v7 == 1)
        {
          v9 = &unk_1C7C83588;
        }

        else
        {
          v9 = &unk_1C7C835A8;
        }

        return v9[v4];
      }

      return result;
    case 8:
      if (v7 < 4)
      {
        return 0;
      }

      v9 = &unk_1C7C83488;
      return v9[v4];
    case 9:
    case 10:
    case 11:
    case 12:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83368;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C83348;
      return v9[v4];
    case 13:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C836E8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C836C8;
      return v9[v4];
    case 14:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C837A8;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83768;
        }

        else
        {
          v9 = &unk_1C7C83788;
        }
      }

      return v9[v4];
    case 15:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C834C8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C834A8;
      return v9[v4];
    case 16:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83608;
        }

        else
        {
          v9 = &unk_1C7C83628;
        }
      }

      else
      {
        if (v7 < 2)
        {
          return 0;
        }

        v9 = &unk_1C7C835E8;
      }

      return v9[v4];
    case 17:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83328;
        return v9[v4];
      }

      if (v7 < 2)
      {
        return 0;
      }

      v9 = &unk_1C7C83308;
      return v9[v4];
    case 18:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83568;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83528;
        }

        else
        {
          v9 = &unk_1C7C83548;
        }
      }

      return v9[v4];
    case 19:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83728;
        }

        else
        {
          v9 = &unk_1C7C83748;
        }
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (v7 - 1 >= 2)
        {
          return result;
        }

        v9 = &unk_1C7C83708;
      }

      return v9[v4];
    case 20:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C833A8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C83388;
      return v9[v4];
    case 21:
      v10 = 1 << v7;
      if ((v10 & 6) != 0)
      {
        v9 = &unk_1C7C832C8;
      }

      else
      {
        result = 0;
        if ((v10 & 9) != 0)
        {
          return result;
        }

        v9 = &unk_1C7C832E8;
      }

      return v9[v4];
    case 22:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v11 = 65;
        if (v4 != 3)
        {
          v11 = 0;
        }

        v12 = v4 == 0;
        v13 = 27952;
        goto LABEL_91;
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return result;
      }

      if (v7 == 1)
      {
        v11 = 65;
        if (v4 != 3)
        {
          v11 = 0;
        }

        v12 = v4 == 0;
        v13 = -28772;
LABEL_91:
        v14 = v13 | 0x10000u;
        if (v12)
        {
          return v14;
        }

        else
        {
          return v11;
        }
      }

      v15 = 65;
      if (v4 != 3)
      {
        v15 = 0;
      }

      if (v4)
      {
        return v15;
      }

      else
      {
        return 105880;
      }

    case 24:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83408;
        }

        else
        {
          v9 = &unk_1C7C83428;
        }
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C833C8;
        }

        else
        {
          v9 = &unk_1C7C833E8;
        }
      }

      return v9[v4];
    case 25:
      if (v7 - 3 >= 3)
      {
        if (v7 < 2)
        {
          return 0;
        }

        v9 = &unk_1C7C837C8;
      }

      else
      {
        v9 = &unk_1C7C837E8;
      }

      return v9[v4];
    default:
      return result;
  }
}

uint64_t sub_1C7BD338C(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v7 = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
  result = 0;
  switch(v5)
  {
    case 1:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83A08;
        }

        else
        {
          v9 = &unk_1C7C83A28;
        }

        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        if (v7 == 1)
        {
          v9 = &unk_1C7C839C8;
        }

        else
        {
          v9 = &unk_1C7C839E8;
        }

        return v9[v4];
      }

      return result;
    case 2:
      if (v7 - 2 < 4)
      {
        v9 = &unk_1C7C83C88;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        v9 = &unk_1C7C83C68;
        return v9[v4];
      }

      return result;
    case 3:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83C48;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        if (v7 == 1)
        {
          v9 = &unk_1C7C83C08;
        }

        else
        {
          v9 = &unk_1C7C83C28;
        }

        return v9[v4];
      }

      return result;
    case 4:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83B08;
        }

        else
        {
          v9 = &unk_1C7C83B28;
        }

        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        if (v7 == 1)
        {
          v9 = &unk_1C7C83AC8;
        }

        else
        {
          v9 = &unk_1C7C83AE8;
        }

        return v9[v4];
      }

      return result;
    case 5:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83E08;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        if (v7 == 1)
        {
          v9 = &unk_1C7C83DC8;
        }

        else
        {
          v9 = &unk_1C7C83DE8;
        }

        return v9[v4];
      }

      return result;
    case 6:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83BC8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        if (v7 == 1)
        {
          v9 = &unk_1C7C83B88;
        }

        else
        {
          v9 = &unk_1C7C83BA8;
        }

        return v9[v4];
      }

      return result;
    case 8:
      if (v7 < 4)
      {
        return 0;
      }

      v9 = &unk_1C7C83A48;
      return v9[v4];
    case 9:
    case 10:
    case 11:
    case 12:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C83928;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C83908;
      return v9[v4];
    case 13:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83CE8;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83CA8;
        }

        else
        {
          v9 = &unk_1C7C83CC8;
        }
      }

      return v9[v4];
    case 14:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83DA8;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83D68;
        }

        else
        {
          v9 = &unk_1C7C83D88;
        }
      }

      return v9[v4];
    case 15:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83AA8;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83A68;
        }

        else
        {
          v9 = &unk_1C7C83A88;
        }
      }

      return v9[v4];
    case 16:
      if (v7 < 2)
      {
        return 0;
      }

      v9 = &unk_1C7C83BE8;
      return v9[v4];
    case 17:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C838C8;
        }

        else
        {
          v9 = &unk_1C7C838E8;
        }
      }

      else
      {
        if (v7 < 2)
        {
          return 0;
        }

        v9 = &unk_1C7C838A8;
      }

      return v9[v4];
    case 18:
      if (v7 - 2 < 4)
      {
        v9 = &unk_1C7C83B68;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return result;
      }

      v9 = &unk_1C7C83B48;
      return v9[v4];
    case 19:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83D48;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83D08;
        }

        else
        {
          v9 = &unk_1C7C83D28;
        }
      }

      return v9[v4];
    case 20:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C83988;
        }

        else
        {
          v9 = &unk_1C7C839A8;
        }
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83948;
        }

        else
        {
          v9 = &unk_1C7C83968;
        }
      }

      return v9[v4];
    case 22:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C83E68;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C83E28;
        }

        else
        {
          v9 = &unk_1C7C83E48;
        }
      }

      return v9[v4];
    default:
      return result;
  }
}

uint64_t sub_1C7BD3804(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
  result = 0;
  switch(v5)
  {
    case 1:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v10 = &unk_1C7C84188;
      }

      else
      {
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C84148;
        }

        else
        {
          v10 = &unk_1C7C84168;
        }
      }

      return v10[v4];
    case 2:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C843E8;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C843C8;
      return v10[v4];
    case 3:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C843A8;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C84388;
      return v10[v4];
    case 4:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v10 = &unk_1C7C84268;
      }

      else
      {
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C84228;
        }

        else
        {
          v10 = &unk_1C7C84248;
        }
      }

      return v10[v4];
    case 5:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v10 = &unk_1C7C84568;
      }

      else
      {
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C84528;
        }

        else
        {
          v10 = &unk_1C7C84548;
        }
      }

      return v10[v4];
    case 6:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v8 - 4 >= 2)
        {
          v10 = &unk_1C7C84308;
        }

        else
        {
          v10 = &unk_1C7C84328;
        }
      }

      else
      {
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C842C8;
        }

        else
        {
          v10 = &unk_1C7C842E8;
        }
      }

      return v10[v4];
    case 7:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v10 = &unk_1C7C840A8;
      }

      else
      {
        result = *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C84068;
        }

        else
        {
          v10 = &unk_1C7C84088;
        }
      }

      return v10[v4];
    case 8:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C841C8;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C841A8;
      return v10[v4];
    case 9:
    case 11:
      if (v8 - 3 < 3)
      {
        v10 = &unk_1C7C83FE8;
        return v10[v4];
      }

      result = *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v8 - 1 >= 2)
      {
        return result;
      }

      v10 = &unk_1C7C83FC8;
      return v10[v4];
    case 10:
      if (v8 - 3 < 3)
      {
        v10 = &unk_1C7C83FA8;
        return v10[v4];
      }

      result = *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v8 - 1 >= 2)
      {
        return result;
      }

      v10 = &unk_1C7C83F88;
      return v10[v4];
    case 12:
      if (v8 - 3 < 3)
      {
        v10 = &unk_1C7C83F68;
        return v10[v4];
      }

      result = *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v8 - 1 >= 2)
      {
        return result;
      }

      v10 = &unk_1C7C83F48;
      return v10[v4];
    case 13:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C84428;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C84408;
      return v10[v4];
    case 14:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C844C8;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C844A8;
      return v10[v4];
    case 15:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C84208;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C841E8;
      return v10[v4];
    case 16:
      if (v8 - 3 < 3)
      {
        v10 = &unk_1C7C84368;
        return v10[v4];
      }

      if (v8 < 2)
      {
        return 0;
      }

      v10 = &unk_1C7C84348;
      return v10[v4];
    case 17:
      if (v8 - 3 < 3)
      {
        v10 = &unk_1C7C83F28;
        return v10[v4];
      }

      if (v8 < 2)
      {
        return 0;
      }

      v10 = &unk_1C7C83F08;
      return v10[v4];
    case 18:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C842A8;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C84288;
      return v10[v4];
    case 19:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v10 = &unk_1C7C84488;
      }

      else
      {
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C84448;
        }

        else
        {
          v10 = &unk_1C7C84468;
        }
      }

      return v10[v4];
    case 20:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v10 = &unk_1C7C84048;
      }

      else
      {
        result = *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C84008;
        }

        else
        {
          v10 = &unk_1C7C84028;
        }
      }

      return v10[v4];
    case 21:
      v10 = &unk_1C7C83E88;
      v11 = 1 << v8;
      if ((v11 & 6) != 0)
      {
        return v10[v4];
      }

      result = 0;
      if ((v11 & 9) != 0)
      {
        return result;
      }

      v10 = &unk_1C7C83EA8;
      return v10[v4];
    case 22:
      if (v8 - 2 < 4)
      {
        v10 = &unk_1C7C845A8;
        return v10[v4];
      }

      if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
      }

      v10 = &unk_1C7C84588;
      return v10[v4];
    case 23:
      return result;
    case 24:
      if (*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v8 - 4 >= 2)
        {
          v10 = &unk_1C7C84108;
        }

        else
        {
          v10 = &unk_1C7C84128;
        }
      }

      else
      {
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        if (v8 == 1)
        {
          v10 = &unk_1C7C840C8;
        }

        else
        {
          v10 = &unk_1C7C840E8;
        }
      }

      return v10[v4];
    case 25:
      if (v8 - 3 < 3)
      {
        v10 = &unk_1C7C84508;
        return v10[v4];
      }

      if (v8 >= 2)
      {
        v10 = &unk_1C7C844E8;
        return v10[v4];
      }

      return 0;
    default:
      if (v8 - 2 >= 4)
      {
        result = *(v7 + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(v7 + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        v10 = &unk_1C7C83EC8;
      }

      else
      {
        v10 = &unk_1C7C83EE8;
      }

      return v10[v4];
  }
}

unint64_t sub_1C7BD3D70(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v7 = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
  result = 0;
  switch(v5)
  {
    case 1:
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return 0;
      }

      v9 = &unk_1C7C84808;
      return v9[v4];
    case 2:
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return 0;
      }

      v9 = &unk_1C7C849A8;
      return v9[v4];
    case 3:
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return 0;
      }

      v9 = &unk_1C7C84988;
      return v9[v4];
    case 4:
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return 0;
      }

      v9 = &unk_1C7C848C8;
      return v9[v4];
    case 5:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C84B08;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C84AE8;
      return v9[v4];
    case 6:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C84948;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C84928;
      return v9[v4];
    case 7:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C847C8;
        }

        else
        {
          v9 = &unk_1C7C847E8;
        }
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (v7 - 1 >= 2)
        {
          return result;
        }

        v9 = &unk_1C7C847A8;
      }

      return v9[v4];
    case 8:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        if (v7 - 4 >= 2)
        {
          v9 = &unk_1C7C84848;
        }

        else
        {
          v9 = &unk_1C7C84868;
        }
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (v7 - 1 >= 2)
        {
          return result;
        }

        v9 = &unk_1C7C84828;
      }

      return v9[v4];
    case 9:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C84728;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C84708;
      return v9[v4];
    case 10:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C846E8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C846C8;
      return v9[v4];
    case 11:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C84668;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C84648;
      return v9[v4];
    case 12:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C846A8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C84688;
      return v9[v4];
    case 13:
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return 0;
      }

      v9 = &unk_1C7C849C8;
      return v9[v4];
    case 14:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C84A88;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C84A48;
        }

        else
        {
          v9 = &unk_1C7C84A68;
        }
      }

      return v9[v4];
    case 15:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C848A8;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (v7 - 1 >= 2)
      {
        return result;
      }

      v9 = &unk_1C7C84888;
      return v9[v4];
    case 16:
      if (v7 < 2)
      {
        return 0;
      }

      v9 = &unk_1C7C84968;
      return v9[v4];
    case 17:
      if (v7 < 2)
      {
        return 0;
      }

      v9 = &unk_1C7C84628;
      return v9[v4];
    case 18:
      if (v7 - 2 < 4)
      {
        v9 = &unk_1C7C84908;
        return v9[v4];
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return result;
      }

      v9 = &unk_1C7C848E8;
      return v9[v4];
    case 19:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C84A28;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C849E8;
        }

        else
        {
          v9 = &unk_1C7C84A08;
        }
      }

      return v9[v4];
    case 20:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C84788;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C84748;
        }

        else
        {
          v9 = &unk_1C7C84768;
        }
      }

      return v9[v4];
    case 21:
    case 24:
      return result;
    case 22:
      if (v7 - 2 < 4)
      {
        v10 = 222;
        if (v4 != 3)
        {
          v10 = 0;
        }

        if (v4)
        {
          return v10;
        }

        else
        {
          return 6107;
        }
      }

      result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return result;
      }

      v9 = &unk_1C7C84B28;
      return v9[v4];
    case 23:
      if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
      {
        return 0;
      }

      return (v4 == 0) << 8;
    case 25:
      if (v7 - 3 < 3)
      {
        v9 = &unk_1C7C84AC8;
        return v9[v4];
      }

      if (v7 < 2)
      {
        return 0;
      }

      v9 = &unk_1C7C84AA8;
      return v9[v4];
    default:
      if (*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
      {
        v9 = &unk_1C7C84608;
      }

      else
      {
        result = *(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType);
        if (!*(*(a2 + v6) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return result;
        }

        if (v7 == 1)
        {
          v9 = &unk_1C7C845C8;
        }

        else
        {
          v9 = &unk_1C7C845E8;
        }
      }

      return v9[v4];
  }
}

uint64_t sub_1C7BD4228(char *a1, uint64_t a2)
{
  v5 = *a1;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v10 = *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      return 0;
    }

    result = 0;
    switch(v7)
    {
      case 1:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83468;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83448;
        goto LABEL_112;
      case 2:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C836A8;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83688;
        goto LABEL_112;
      case 3:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83668;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83648;
        goto LABEL_112;
      case 4:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83508;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C834E8;
        goto LABEL_112;
      case 5:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C837E8;
          goto LABEL_112;
        }

        if (v10 < 2)
        {
          return 0;
        }

        v12 = &unk_1C7C837C8;
        goto LABEL_112;
      case 6:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83828;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83808;
        goto LABEL_112;
      case 7:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C835C8;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83588;
          }

          else
          {
            v12 = &unk_1C7C835A8;
          }
        }

        goto LABEL_112;
      case 8:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C83408;
          }

          else
          {
            v12 = &unk_1C7C83428;
          }
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C833C8;
          }

          else
          {
            v12 = &unk_1C7C833E8;
          }
        }

        goto LABEL_112;
      case 10:
        if (v10 < 4)
        {
          return 0;
        }

        v12 = &unk_1C7C83488;
        goto LABEL_112;
      case 11:
      case 12:
      case 13:
      case 14:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83368;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83348;
        goto LABEL_112;
      case 15:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C836E8;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C836C8;
        goto LABEL_112;
      case 16:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C837A8;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83768;
          }

          else
          {
            v12 = &unk_1C7C83788;
          }
        }

        goto LABEL_112;
      case 17:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C834C8;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C834A8;
        goto LABEL_112;
      case 18:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C83608;
          }

          else
          {
            v12 = &unk_1C7C83628;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return 0;
          }

          v12 = &unk_1C7C835E8;
        }

        goto LABEL_112;
      case 19:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83328;
          goto LABEL_112;
        }

        if (v10 < 2)
        {
          return 0;
        }

        v12 = &unk_1C7C83308;
        goto LABEL_112;
      case 20:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83568;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83528;
          }

          else
          {
            v12 = &unk_1C7C83548;
          }
        }

        goto LABEL_112;
      case 21:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C83728;
          }

          else
          {
            v12 = &unk_1C7C83748;
          }
        }

        else
        {
          if (v10 - 1 >= 2)
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          v12 = &unk_1C7C83708;
        }

        goto LABEL_112;
      case 22:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C833A8;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83388;
        goto LABEL_112;
      case 24:
        v17 = 1 << v10;
        if ((v17 & 6) != 0)
        {
          v12 = &unk_1C7C832C8;
        }

        else
        {
          if ((v17 & 9) != 0)
          {
            return 0;
          }

          v12 = &unk_1C7C832E8;
        }

        goto LABEL_112;
      case 25:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83888;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83848;
          }

          else
          {
            v12 = &unk_1C7C83868;
          }
        }

LABEL_112:
        result = v12[v5];
        break;
      default:
        return result;
    }
  }

  else
  {
    if (!v8)
    {
      v18 = v5;
      return sub_1C7BD2E68(&v18, a2);
    }

    if (v10 < 2)
    {
      return 0;
    }

    v13 = *(a2 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
    result = sub_1C7C5C654(v7, v6);
    if (!v3)
    {
      v14 = *(result + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_packageMemory);
      if (v5 > 1u)
      {
        if (v5 == 2)
        {
          v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
        }

        else
        {
          v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        }
      }

      else if (v5)
      {
        v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
      }

      else
      {
        v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
      }

      v16 = *v15;
      swift_beginAccess();
      return *(v14 + v16);
    }
  }

  return result;
}

uint64_t sub_1C7BD47CC(char *a1, uint64_t a2)
{
  v5 = *a1;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v10 = *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      return 0;
    }

    result = 0;
    switch(v7)
    {
      case 1:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C83A08;
          }

          else
          {
            v12 = &unk_1C7C83A28;
          }
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C839C8;
          }

          else
          {
            v12 = &unk_1C7C839E8;
          }
        }

        goto LABEL_112;
      case 2:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C83C88;
          goto LABEL_112;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83C68;
        goto LABEL_112;
      case 3:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83C48;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83C08;
          }

          else
          {
            v12 = &unk_1C7C83C28;
          }
        }

        goto LABEL_112;
      case 4:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C83B08;
          }

          else
          {
            v12 = &unk_1C7C83B28;
          }
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83AC8;
          }

          else
          {
            v12 = &unk_1C7C83AE8;
          }
        }

        goto LABEL_112;
      case 6:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83E08;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83DC8;
          }

          else
          {
            v12 = &unk_1C7C83DE8;
          }
        }

        goto LABEL_112;
      case 7:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83BC8;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83B88;
          }

          else
          {
            v12 = &unk_1C7C83BA8;
          }
        }

        goto LABEL_112;
      case 10:
        if (v10 < 4)
        {
          return 0;
        }

        v12 = &unk_1C7C83A48;
        goto LABEL_112;
      case 11:
      case 12:
      case 13:
      case 14:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83928;
          goto LABEL_112;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83908;
        goto LABEL_112;
      case 15:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83CE8;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83CA8;
          }

          else
          {
            v12 = &unk_1C7C83CC8;
          }
        }

        goto LABEL_112;
      case 16:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83DA8;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83D68;
          }

          else
          {
            v12 = &unk_1C7C83D88;
          }
        }

        goto LABEL_112;
      case 17:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83AA8;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83A68;
          }

          else
          {
            v12 = &unk_1C7C83A88;
          }
        }

        goto LABEL_112;
      case 18:
        if (v10 < 2)
        {
          return 0;
        }

        v12 = &unk_1C7C83BE8;
        goto LABEL_112;
      case 19:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C838C8;
          }

          else
          {
            v12 = &unk_1C7C838E8;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return 0;
          }

          v12 = &unk_1C7C838A8;
        }

        goto LABEL_112;
      case 20:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C83B68;
          goto LABEL_112;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83B48;
        goto LABEL_112;
      case 21:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83D48;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83D08;
          }

          else
          {
            v12 = &unk_1C7C83D28;
          }
        }

        goto LABEL_112;
      case 22:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C83988;
          }

          else
          {
            v12 = &unk_1C7C839A8;
          }
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83948;
          }

          else
          {
            v12 = &unk_1C7C83968;
          }
        }

        goto LABEL_112;
      case 25:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C83E68;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C83E28;
          }

          else
          {
            v12 = &unk_1C7C83E48;
          }
        }

LABEL_112:
        result = v12[v5];
        break;
      default:
        return result;
    }
  }

  else
  {
    if (!v8)
    {
      v17 = v5;
      return sub_1C7BD338C(&v17, a2);
    }

    if (v10 < 2)
    {
      return 0;
    }

    v13 = *(a2 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
    result = sub_1C7C5C654(v7, v6);
    if (!v3)
    {
      v14 = *(result + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_containerMemory);
      if (v5 > 1u)
      {
        if (v5 == 2)
        {
          v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
        }

        else
        {
          v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        }
      }

      else if (v5)
      {
        v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
      }

      else
      {
        v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
      }

      v16 = *v15;
      swift_beginAccess();
      return *(v14 + v16);
    }
  }

  return result;
}

uint64_t sub_1C7BD4D04(char *a1, uint64_t a2)
{
  v5 = *a1;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v10 = *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      return 0;
    }

    result = 0;
    switch(v7)
    {
      case 1:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C84188;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C84148;
          }

          else
          {
            v12 = &unk_1C7C84168;
          }
        }

        goto LABEL_134;
      case 2:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C843E8;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C843C8;
        goto LABEL_134;
      case 3:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C843A8;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C84388;
        goto LABEL_134;
      case 4:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C84268;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C84228;
          }

          else
          {
            v12 = &unk_1C7C84248;
          }
        }

        goto LABEL_134;
      case 5:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C84508;
          goto LABEL_134;
        }

        if (v10 < 2)
        {
          return 0;
        }

        v12 = &unk_1C7C844E8;
        goto LABEL_134;
      case 6:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C84568;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C84528;
          }

          else
          {
            v12 = &unk_1C7C84548;
          }
        }

        goto LABEL_134;
      case 7:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C84308;
          }

          else
          {
            v12 = &unk_1C7C84328;
          }
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C842C8;
          }

          else
          {
            v12 = &unk_1C7C842E8;
          }
        }

        goto LABEL_134;
      case 8:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v10 - 4 >= 2)
          {
            v12 = &unk_1C7C84108;
          }

          else
          {
            v12 = &unk_1C7C84128;
          }
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C840C8;
          }

          else
          {
            v12 = &unk_1C7C840E8;
          }
        }

        goto LABEL_134;
      case 9:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C840A8;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C84068;
          }

          else
          {
            v12 = &unk_1C7C84088;
          }
        }

        goto LABEL_134;
      case 10:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C841C8;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C841A8;
        goto LABEL_134;
      case 11:
      case 13:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83FE8;
          goto LABEL_134;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83FC8;
        goto LABEL_134;
      case 12:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83FA8;
          goto LABEL_134;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83F88;
        goto LABEL_134;
      case 14:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83F68;
          goto LABEL_134;
        }

        if (v10 - 1 >= 2)
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C83F48;
        goto LABEL_134;
      case 15:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C84428;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C84408;
        goto LABEL_134;
      case 16:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C844C8;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C844A8;
        goto LABEL_134;
      case 17:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C84208;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C841E8;
        goto LABEL_134;
      case 18:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C84368;
          goto LABEL_134;
        }

        if (v10 < 2)
        {
          return 0;
        }

        v12 = &unk_1C7C84348;
        goto LABEL_134;
      case 19:
        if (v10 - 3 < 3)
        {
          v12 = &unk_1C7C83F28;
          goto LABEL_134;
        }

        if (v10 < 2)
        {
          return 0;
        }

        v12 = &unk_1C7C83F08;
        goto LABEL_134;
      case 20:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C842A8;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C84288;
        goto LABEL_134;
      case 21:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C84488;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C84448;
          }

          else
          {
            v12 = &unk_1C7C84468;
          }
        }

        goto LABEL_134;
      case 22:
        if (*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v12 = &unk_1C7C84048;
        }

        else
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v10 == 1)
          {
            v12 = &unk_1C7C84008;
          }

          else
          {
            v12 = &unk_1C7C84028;
          }
        }

        goto LABEL_134;
      case 23:
      case 26:
        return result;
      case 24:
        v17 = 1 << v10;
        if ((v17 & 6) != 0)
        {
          v12 = &unk_1C7C83E88;
        }

        else
        {
          if ((v17 & 9) != 0)
          {
            return 0;
          }

          v12 = &unk_1C7C83EA8;
        }

        goto LABEL_134;
      case 25:
        if (v10 - 2 < 4)
        {
          v12 = &unk_1C7C845A8;
          goto LABEL_134;
        }

        if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v12 = &unk_1C7C84588;
        goto LABEL_134;
      default:
        if (v10 - 2 >= 4)
        {
          if (!*(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v9) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          v12 = &unk_1C7C83EC8;
        }

        else
        {
          v12 = &unk_1C7C83EE8;
        }

LABEL_134:
        result = v12[v5];
        break;
    }
  }

  else
  {
    if (!v8)
    {
      v18 = v5;
      return sub_1C7BD3804(&v18, a2);
    }

    if (v10 < 2)
    {
      return 0;
    }

    v13 = *(a2 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
    result = sub_1C7C5C654(v7, v6);
    if (!v3)
    {
      v14 = *(result + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_selectableMemory);
      if (v5 > 1u)
      {
        if (v5 == 2)
        {
          v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
        }

        else
        {
          v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        }
      }

      else if (v5)
      {
        v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
      }

      else
      {
        v15 = &OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
      }

      v16 = *v15;
      swift_beginAccess();
      return *(v14 + v16);
    }
  }

  return result;
}

unint64_t sub_1C7BD5348(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *a1;
  v8 = *v2;
  v7 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v11 = *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      return 0;
    }

    result = 0;
    switch(v8)
    {
      case 1:
        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return 0;
        }

        v13 = &unk_1C7C84808;
        goto LABEL_110;
      case 2:
        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return 0;
        }

        v13 = &unk_1C7C849A8;
        goto LABEL_110;
      case 3:
        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return 0;
        }

        v13 = &unk_1C7C84988;
        goto LABEL_110;
      case 4:
        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return 0;
        }

        v13 = &unk_1C7C848C8;
        goto LABEL_110;
      case 5:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C84AC8;
          goto LABEL_110;
        }

        if (v11 < 2)
        {
          return 0;
        }

        v13 = &unk_1C7C84AA8;
        goto LABEL_110;
      case 6:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C84B08;
          goto LABEL_110;
        }

        if (v11 - 1 >= 2)
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C84AE8;
        goto LABEL_110;
      case 7:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C84948;
          goto LABEL_110;
        }

        if (v11 - 1 >= 2)
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C84928;
        goto LABEL_110;
      case 8:
      case 24:
      case 26:
        return result;
      case 9:
        if (*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v11 - 4 >= 2)
          {
            v13 = &unk_1C7C847C8;
          }

          else
          {
            v13 = &unk_1C7C847E8;
          }
        }

        else
        {
          if (v11 - 1 >= 2)
          {
            return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          v13 = &unk_1C7C847A8;
        }

        goto LABEL_110;
      case 10:
        if (*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          if (v11 - 4 >= 2)
          {
            v13 = &unk_1C7C84848;
          }

          else
          {
            v13 = &unk_1C7C84868;
          }
        }

        else
        {
          if (v11 - 1 >= 2)
          {
            return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          v13 = &unk_1C7C84828;
        }

        goto LABEL_110;
      case 11:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C84728;
          goto LABEL_110;
        }

        if (v11 - 1 >= 2)
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C84708;
        goto LABEL_110;
      case 12:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C846E8;
          goto LABEL_110;
        }

        if (v11 - 1 >= 2)
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C846C8;
        goto LABEL_110;
      case 13:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C84668;
          goto LABEL_110;
        }

        if (v11 - 1 >= 2)
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C84648;
        goto LABEL_110;
      case 14:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C846A8;
          goto LABEL_110;
        }

        if (v11 - 1 >= 2)
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C84688;
        goto LABEL_110;
      case 15:
        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return 0;
        }

        v13 = &unk_1C7C849C8;
        goto LABEL_110;
      case 16:
        if (*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v13 = &unk_1C7C84A88;
        }

        else
        {
          if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v11 == 1)
          {
            v13 = &unk_1C7C84A48;
          }

          else
          {
            v13 = &unk_1C7C84A68;
          }
        }

        goto LABEL_110;
      case 17:
        if (v11 - 3 < 3)
        {
          v13 = &unk_1C7C848A8;
          goto LABEL_110;
        }

        if (v11 - 1 >= 2)
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C84888;
        goto LABEL_110;
      case 18:
        if (v11 < 2)
        {
          return 0;
        }

        v13 = &unk_1C7C84968;
        goto LABEL_110;
      case 19:
        if (v11 < 2)
        {
          return 0;
        }

        v13 = &unk_1C7C84628;
        goto LABEL_110;
      case 20:
        if (v11 - 2 < 4)
        {
          v13 = &unk_1C7C84908;
          goto LABEL_110;
        }

        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C848E8;
        goto LABEL_110;
      case 21:
        if (*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v13 = &unk_1C7C84A28;
        }

        else
        {
          if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v11 == 1)
          {
            v13 = &unk_1C7C849E8;
          }

          else
          {
            v13 = &unk_1C7C84A08;
          }
        }

        goto LABEL_110;
      case 22:
        if (*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v13 = &unk_1C7C84788;
        }

        else
        {
          if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v11 == 1)
          {
            v13 = &unk_1C7C84748;
          }

          else
          {
            v13 = &unk_1C7C84768;
          }
        }

        goto LABEL_110;
      case 23:
        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return 0;
        }

        return (v6 == 0) << 8;
      case 25:
        if (v11 - 2 < 4)
        {
          v13 = &unk_1C7C84B48;
          goto LABEL_110;
        }

        if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
        {
          return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
        }

        v13 = &unk_1C7C84B28;
        goto LABEL_110;
      default:
        if (*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType) > 2u)
        {
          v13 = &unk_1C7C84608;
        }

        else
        {
          if (!*(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType))
          {
            return *(*(a2 + v10) + OBJC_IVAR____TtC9SEService7SEState_seType);
          }

          if (v11 == 1)
          {
            v13 = &unk_1C7C845C8;
          }

          else
          {
            v13 = &unk_1C7C845E8;
          }
        }

LABEL_110:
        result = v13[v5];
        break;
    }
  }

  else
  {
    if (!v9)
    {
      v18[1] = v8;
      v18[0] = v6;
      return sub_1C7BD3D70(v18, a2);
    }

    if (v11 < 2)
    {
      return 0;
    }

    v14 = *(a2 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
    result = sub_1C7C5C654(v8, v7);
    if (!v3)
    {
      v15 = *(result + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_personalizedMemory);
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v16 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
        }

        else
        {
          v16 = &OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        }
      }

      else if (v6)
      {
        v16 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
      }

      else
      {
        v16 = &OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
      }

      v17 = *v16;
      swift_beginAccess();
      return *(v15 + v17);
    }
  }

  return result;
}

SEService::MemoryType_optional __swiftcall MemoryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7C7D934();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MemoryType.rawValue.getter()
{
  v1 = 0x7061654870;
  v2 = 6582115;
  if (*v0 != 2)
  {
    v2 = 0x69646E4964657375;
  }

  if (*v0)
  {
    v1 = 7499619;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C7BD598C()
{
  result = qword_1EC262258;
  if (!qword_1EC262258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC262258);
  }

  return result;
}

uint64_t sub_1C7BD59E0()
{
  v1 = *v0;
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7BD5A9C()
{
  *v0;
  *v0;
  *v0;
  sub_1C7C7D364();
}

uint64_t sub_1C7BD5B44()
{
  v1 = *v0;
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

void sub_1C7BD5C08(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7061654870;
  v4 = 0xE300000000000000;
  v5 = 6582115;
  if (*v1 != 2)
  {
    v5 = 0x69646E4964657375;
    v4 = 0xEB00000000736563;
  }

  if (*v1)
  {
    v3 = 7499619;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for MemoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MemoryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C7BD5DE4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C7C7D144();
}

uint64_t sub_1C7BD5E30()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C7C7D134();
}

uint64_t sub_1C7BD5E88()
{
  sub_1C7C7DB64();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C7C7D134();
  return sub_1C7C7DB84();
}

uint64_t sub_1C7BD5EF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C7BD5F68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7BD5F88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1C7BD5FEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C7BD60A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AppletType.instanceAID.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000018;
  if (v1 != 11)
  {
    v2 = 0xD000000000000012;
  }

  if (v1 - 13 >= 0xD)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xD000000000000018;
  if (v1 != 9)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 < 9)
  {
    v4 = 0;
  }

  if (*v0 <= 0xAu)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t CredentialType.moduleAID.getter()
{
  if (*(v0 + 16) - 1 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + 16))
  {
    return *(&off_1E82D1A38 + *v0);
  }

  v2 = *v0;
  return AppletType.moduleAID.getter();
}

unint64_t CredentialType.instanceAID.getter()
{
  if (*(v0 + 16) - 1 < 2)
  {
    return 0;
  }

  v2 = *v0;
  if (*(v0 + 16))
  {
    v3 = *(v0 + 8);
    if (v2 <= 0xC)
    {
      v4 = __PAIR128__(v3, v2) < 0xB;
      if (v2 ^ 0xB | v3)
      {
        v5 = 0xD00000000000001ALL;
      }

      else
      {
        v5 = 0xD000000000000018;
      }

      if (v4)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }

    else if (v2 <= 0xE)
    {
      if (v2 ^ 0xD | v3)
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0xD000000000000018;
      }
    }

    else if (__PAIR128__((v2 >= 0xF) + v3 - 1, v2 - 15) >= 0xB)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *v0;
    return AppletType.instanceAID.getter();
  }
}

uint64_t CredentialType.referencedInstanceInternal.getter()
{
  if (*(v0 + 16) - 1 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + 16))
  {
    return *(&off_1E82D1B10 + *v0);
  }

  v2 = *v0;
  return AppletType.referencedInstanceInternal.getter();
}

uint64_t CredentialType.referencedInstanceExternal.getter()
{
  if (*(v0 + 16) - 1 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *v0;
  if (*(v0 + 16))
  {
    v3 = &unk_1E82D1BE8 + 8 * v2;
  }

  else
  {
    v3 = &qword_1E82D1CC0[v2];
  }

  return *v3;
}

uint64_t CredentialType.singleInstance.getter()
{
  if (*(v0 + 16) - 1 < 2)
  {
    return 0;
  }

  v2 = *v0;
  if (*(v0 + 16))
  {
    return (0x807920u >> v2) & 1;
  }

  v3 = 0x3801E00u >> v2;
  if (*v0 > 0x19u)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

BOOL CredentialType.isCopernicus.getter()
{
  if (*(v0 + 16))
  {
    return *(v0 + 16) == 3 && __PAIR128__((*v0 >= 0xBuLL) + *(v0 + 8) - 1, *v0 - 11) < 4;
  }

  else
  {
    v2 = &byte_1F474F5E0;
    v3 = qword_1F474F5D0;
    do
    {
      v4 = v3-- != 0;
      result = v4;
      if (!v4)
      {
        break;
      }

      v5 = *v2++;
    }

    while (v5 != *v0);
  }

  return result;
}

BOOL AppletType.isCopernicus.getter()
{
  v1 = &byte_1F474F608;
  v2 = qword_1F474F5F8;
  do
  {
    v3 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v5 = *v1++;
  }

  while (v5 != *v0);
  return v3 != 0;
}

uint64_t CredentialType.description.getter()
{
  sub_1C7BDF708(*v0, *(v0 + 8), *(v0 + 16));
  sub_1C7C7D324();
  v1 = sub_1C7C7D334();

  return v1;
}

uint64_t CredentialType.rawValue.getter()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      strcpy(v19, "eSIMProfile ");
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      v3 = sub_1C7C7CFB4();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      sub_1C7C7CFA4();
LABEL_6:
      sub_1C7BDF724();
      v6 = sub_1C7C7CF94();
      v8 = v7;

      v9 = sub_1C7C7D034();
      v11 = v10;
      sub_1C7BDF778(v6, v8);
      MEMORY[0x1CCA6B380](v9, v11);

      return v19[0];
    }

    else
    {
      result = 0x614372657473614DLL;
      v13 = *v0;
      switch(v1)
      {
        case 1:
          return 0xD000000000000010;
        case 2:
          return 0x20676E696A696542;
        case 3:
          return 0x696168676E616853;
        case 4:
          return 4342602;
        case 5:
          return 4347733;
        case 6:
          return 0x7265766F63736944;
        case 7:
          return 2019913025;
        case 8:
          return 0x7369736F6E6548;
        case 9:
          return 1634953558;
        case 10:
          return 0x6E5520616E696843;
        case 11:
          return 0x79654B656D6F48;
        case 12:
          return 0x79654B726143;
        case 13:
          return 0x7461726F70726F43;
        case 14:
          return 0x676E6152656D6F48;
        case 15:
          return 1397704019;
        case 16:
          return 0x54206164616E6143;
        case 17:
          return 0xD000000000000011;
        case 18:
          v14 = 0x206165726F4BLL;
          goto LABEL_35;
        case 19:
          v14 = 0x207369726150;
LABEL_35:
          result = v14 & 0xFFFFFFFFFFFFLL | 0x7254000000000000;
          break;
        case 20:
          result = 0x65726166694DLL;
          break;
        case 21:
          result = 0x6143694C6546;
          break;
        case 22:
          result = 0x4F4D20616E696843;
          break;
        case 23:
          result = 0xD000000000000014;
          break;
        case 24:
          result = 0x65644920494B504ALL;
          break;
        case 25:
          result = 0x72616D746867694ELL;
          break;
        case 26:
          strcpy(v19, "muirfield ");
          BYTE3(v19[1]) = 0;
          HIDWORD(v19[1]) = -369098752;
          v15 = sub_1C7C7CFB4();
          v16 = *(v15 + 48);
          v17 = *(v15 + 52);
          swift_allocObject();
          sub_1C7C7CFA4();
          goto LABEL_6;
        default:
          return result;
      }
    }
  }

  else
  {
    if (*(v0 + 16))
    {
      v18 = 0x20616E6E656956;
      MEMORY[0x1CCA6B380](v1, v0[1]);
    }

    else
    {
      v18 = 0x2074656C6C6177;
      LOBYTE(v19[0]) = *v0;
      v2 = AppletType.rawValue.getter();
      MEMORY[0x1CCA6B380](v2);
    }

    return v18;
  }

  return result;
}

uint64_t AppletType.rawValue.getter()
{
  result = 0x614372657473614DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x20676E696A696542;
      break;
    case 3:
      result = 0x696168676E616853;
      break;
    case 4:
      result = 4342602;
      break;
    case 5:
      result = 0x7265766F63736944;
      break;
    case 6:
      result = 2019913025;
      break;
    case 7:
      result = 1634953558;
      break;
    case 8:
      result = 0x6E5520616E696843;
      break;
    case 9:
      result = 0x79654B656D6F48;
      break;
    case 0xA:
      result = 0x79654B726143;
      break;
    case 0xB:
      result = 0x7461726F70726F43;
      break;
    case 0xC:
      result = 0x676E6152656D6F48;
      break;
    case 0xD:
      result = 1397704019;
      break;
    case 0xE:
      result = 0x54206164616E6143;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      v2 = 0x206165726F4BLL;
      goto LABEL_16;
    case 0x11:
      v2 = 0x207369726150;
LABEL_16:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7254000000000000;
      break;
    case 0x12:
      result = 0x65726166694DLL;
      break;
    case 0x13:
      result = 0x6143694C6546;
      break;
    case 0x14:
      result = 0x4F4D20616E696843;
      break;
    case 0x15:
      result = 0x65644920494B504ALL;
      break;
    case 0x16:
      result = 0x72616D746867694ELL;
      break;
    case 0x17:
      result = 0xD000000000000014;
      break;
    case 0x18:
      result = 0x7369736F6E6548;
      break;
    case 0x19:
      result = 4347733;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CredentialType.serialize()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_1C7C7CFB4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7BDF724();
  v7 = sub_1C7C7CF94();

  return v7;
}

uint64_t CredentialType.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v141 = a3;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262488, &qword_1C7C84CE0);
  v126 = *(v127 - 8);
  v5 = *(v126 + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v119 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v125 = &v118 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v122 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v118 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262490, &qword_1C7C84CE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v123 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v118 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262498, &unk_1C7C84CF0);
  v128 = *(v138 - 8);
  v18 = *(v128 + 64);
  v19 = MEMORY[0x1EEE9AC00](v138);
  v118 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v120 = &v118 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624A0, &unk_1C7C94B10);
  v132 = *(v133 - 8);
  v22 = *(v132 + 64);
  v23 = MEMORY[0x1EEE9AC00](v133);
  v130 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v118 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624A8, &unk_1C7C84D00);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26 - 8);
  v142 = &v118 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624B0, &unk_1C7C94B20);
  v134 = *(v29 - 8);
  v135 = v29;
  v30 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v121 = &v118 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624B8, &unk_1C7C84D10);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v118 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624C0, &unk_1C7C94B30);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v118 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624C8, &unk_1C7C84D20);
  v139 = *(v44 - 8);
  v140 = v44;
  v45 = (*(v139 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v124 = &v118 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624D0, &unk_1C7C94B40);
  sub_1C7C7D164();
  v47 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v47 = a1;
  }

  v48 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v48 = 11;
  }

  v129 = v48 | (v47 << 16);
  v143 = a1;
  v144 = a2;
  sub_1C7C7D3C4();
  sub_1C7BE66E0(&qword_1EC2624D8, &qword_1EC2624B8, &unk_1C7C84D10);
  sub_1C7C7D154();
  sub_1C7C7D174();

  v49 = *(v33 + 8);
  v49(v37, v32);
  v49(v39, v32);
  v50 = v139;
  v51 = v140;
  v52 = (*(v139 + 6))(v43, 1, v140);
  v53 = v142;
  if (v52 == 1)
  {
    sub_1C7BE48DC(v43, &qword_1EC2624C0, &unk_1C7C94B30);
    v54 = v131;
  }

  else
  {
    v55 = v124;
    (*(v50 + 4))(v124, v43, v51);
    sub_1C7C7D184();

    v56 = MEMORY[0x1CCA6B360](v148, v149, v150, v151);
    v58 = v57;

    v59._countAndFlagsBits = v56;
    v59._object = v58;
    AppletType.init(rawValue:)(v59);
    (*(v50 + 1))(v55, v51);
    v60 = v145;
    if (v145 != 26)
    {

      v73 = 0;
      v75 = 0;
      goto LABEL_42;
    }

    v54 = v131;
    v53 = v142;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624E0, &qword_1C7C84D30);
  sub_1C7C7D164();
  sub_1C7C7D3C4();
  sub_1C7BE66E0(&qword_1EC2624E8, &qword_1EC2624A0, &unk_1C7C94B10);
  v61 = v130;
  v62 = v133;
  sub_1C7C7D154();
  sub_1C7C7D174();

  v63 = *(v132 + 8);
  v63(v61, v62);
  v63(v54, v62);
  v65 = v135;
  v64 = v136;
  v66 = v134;
  v67 = v137;
  if ((*(v134 + 48))(v53, 1, v135) != 1)
  {

    v71 = v121;
    (*(v66 + 32))(v121, v53, v65);
    sub_1C7C7D184();

    v60 = MEMORY[0x1CCA6B360](v148, v149, v150, v151);
    v73 = v72;

    result = (*(v66 + 8))(v71, v65);
    v75 = 1;
LABEL_42:
    v115 = v141;
    *v141 = v60;
    v115[1] = v73;
    goto LABEL_43;
  }

  sub_1C7BE48DC(v53, &qword_1EC2624A8, &unk_1C7C84D00);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624F0, &qword_1C7C84D38);
  sub_1C7C7D164();
  sub_1C7BE48A0();
  v68 = sub_1C7BE66E0(&qword_1EC2624F8, &qword_1EC262488, &qword_1C7C84CE0);
  v69 = v122;
  v70 = v127;
  v140 = v68;
  sub_1C7C7D154();
  sub_1C7C7D174();

  v76 = *(v126 + 8);
  v76(v69, v70);
  v76(v64, v70);
  v77 = v128;
  v78 = v138;
  v79 = *(v128 + 48);
  v80 = v79(v67, 1, v138);
  v81 = v144;
  if (v80 != 1)
  {
    v84 = v120;
    (*(v77 + 32))(v120, v67, v78);
    sub_1C7C7D184();

    MEMORY[0x1CCA6B360](v148, v149, v150, v151);

    v85 = sub_1C7C7CFF4();
    v87 = v86;

    if (v87 >> 60 == 15)
    {
      if (qword_1EC262160 != -1)
      {
        swift_once();
      }

      v88 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v88, qword_1EC262470);

      v89 = sub_1C7C7D194();
      v90 = sub_1C7C7D584();

      v91 = os_log_type_enabled(v89, v90);
      v92 = v143;
      if (v91)
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v146[0] = v94;
        *v93 = 136315138;
        v95 = sub_1C7BE42F8(v92, v81, v146);

        *(v93 + 4) = v95;
        _os_log_impl(&dword_1C7B9A000, v89, v90, "format of rawValue %s wrong!", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        MEMORY[0x1CCA6C990](v94, -1, -1);
        MEMORY[0x1CCA6C990](v93, -1, -1);
      }

      else
      {
      }

      result = (*(v77 + 8))(v84, v138);
      goto LABEL_40;
    }

    v96 = sub_1C7C7CF84();
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    swift_allocObject();
    sub_1C7C7CF74();
    sub_1C7BE4974();
    sub_1C7C7CF64();
    (*(v77 + 8))(v84, v138);
    goto LABEL_41;
  }

  v139 = v79;
  sub_1C7BE48DC(v67, &qword_1EC262490, &qword_1C7C84CE8);
  sub_1C7C7D164();
  sub_1C7BE48A0();
  v82 = v119;
  v83 = v127;
  sub_1C7C7D154();
  sub_1C7C7D174();

  v76(v82, v83);
  v76(v125, v83);
  v99 = v138;
  v100 = v123;
  v101 = v139(v123, 1, v138);
  v103 = v143;
  v102 = v144;
  if (v101 != 1)
  {
    v104 = v118;
    (*(v128 + 32))(v118, v100, v99);
    sub_1C7C7D184();

    MEMORY[0x1CCA6B360](v148, v149, v150, v151);

    v85 = sub_1C7C7CFF4();
    v87 = v105;

    if (v87 >> 60 == 15)
    {
      if (qword_1EC262160 != -1)
      {
        swift_once();
      }

      v106 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v106, qword_1EC262470);

      v107 = sub_1C7C7D194();
      v108 = sub_1C7C7D584();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v146[0] = v110;
        *v109 = 136315138;
        v111 = sub_1C7BE42F8(v103, v102, v146);

        *(v109 + 4) = v111;
        _os_log_impl(&dword_1C7B9A000, v107, v108, "format of rawValue %s wrong!", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v110);
        MEMORY[0x1CCA6C990](v110, -1, -1);
        MEMORY[0x1CCA6C990](v109, -1, -1);
      }

      else
      {
      }

      result = (*(v128 + 8))(v104, v138);
      goto LABEL_40;
    }

    v112 = sub_1C7C7CF84();
    v113 = *(v112 + 48);
    v114 = *(v112 + 52);
    swift_allocObject();
    sub_1C7C7CF74();
    sub_1C7BE4974();
    sub_1C7C7CF64();
    (*(v128 + 8))(v104, v138);
LABEL_41:

    result = sub_1C7BE49C8(v85, v87);
    v60 = v146[0];
    v73 = v146[1];
    v75 = v147;
    goto LABEL_42;
  }

  sub_1C7BE48DC(v100, &qword_1EC262490, &qword_1C7C84CE8);
  if (v103 == 0x614372657473614DLL && v102 == 0xEA00000000006472 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v60 = 0;
    v73 = 0;
    v75 = 3;
    goto LABEL_42;
  }

  if (v103 == 0xD000000000000010 && 0x80000001C7C9CE70 == v102 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v73 = 0;
    v75 = 3;
    v60 = 1;
    goto LABEL_42;
  }

  if (v103 == 0x20676E696A696542 && v102 == 0xEB00000000434F4DLL || (sub_1C7C7DAA4() & 1) != 0)
  {

    v73 = 0;
    v75 = 3;
    v60 = 2;
    goto LABEL_42;
  }

  if (v103 == 0x696168676E616853 && v102 == 0xEC000000434F4D20 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v73 = 0;
    v60 = 3;
    v75 = 3;
    goto LABEL_42;
  }

  if (v103 == 4342602 && v102 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84CD0;
LABEL_56:
    v115 = v141;
    *v141 = v116;
    v75 = 3;
    goto LABEL_43;
  }

  if (v103 == 4347733 && v102 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84CC0;
    goto LABEL_56;
  }

  if (v143 == 0x7265766F63736944 && v144 == 0xE800000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84CB0;
    goto LABEL_56;
  }

  if (v143 == 2019913025 && v144 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84CA0;
    goto LABEL_56;
  }

  if (v143 == 0x7369736F6E6548 && v144 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C90;
    goto LABEL_56;
  }

  if (v143 == 1634953558 && v144 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C80;
    goto LABEL_56;
  }

  if (v143 == 0x6E5520616E696843 && v144 == 0xEF796150206E6F69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C70;
    goto LABEL_56;
  }

  if (v143 == 0x79654B656D6F48 && v144 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C60;
    goto LABEL_56;
  }

  if (v143 == 0x79654B726143 && v144 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C50;
    goto LABEL_56;
  }

  if (v143 == 0x7461726F70726F43 && v144 == 0xEC00000079654B65 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C40;
    goto LABEL_56;
  }

  if (v143 == 0x676E6152656D6F48 && v144 == 0xEE0079654B676E69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C30;
    goto LABEL_56;
  }

  if (v143 == 1397704019 && v144 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C20;
    goto LABEL_56;
  }

  if (v143 == 0x54206164616E6143 && v144 == 0xEE007469736E6172 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C10;
    goto LABEL_56;
  }

  if (v143 == 0xD000000000000011 && 0x80000001C7C9CE50 == v144 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84C00;
    goto LABEL_56;
  }

  if (v143 == 0x7254206165726F4BLL && v144 == 0xED00007469736E61 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84BF0;
    goto LABEL_56;
  }

  if (v143 == 0x7254207369726150 && v144 == 0xED00007469736E61 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84BE0;
    goto LABEL_56;
  }

  if (v143 == 0x65726166694DLL && v144 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84BD0;
    goto LABEL_56;
  }

  if (v143 == 0x6143694C6546 && v144 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84BC0;
    goto LABEL_56;
  }

  if (v143 == 0x4F4D20616E696843 && v144 == 0xE900000000000043 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84BB0;
    goto LABEL_56;
  }

  if (v143 == 0xD000000000000014 && 0x80000001C7C9CE30 == v144 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84BA0;
    goto LABEL_56;
  }

  if (v143 == 0x65644920494B504ALL && v144 == 0xED0000797469746ELL || (sub_1C7C7DAA4() & 1) != 0)
  {

    v116 = xmmword_1C7C84B90;
    goto LABEL_56;
  }

  if (v143 == 0x72616D746867694ELL && v144 == 0xE900000000000065)
  {

LABEL_141:
    v116 = xmmword_1C7C84B80;
    goto LABEL_56;
  }

  v117 = sub_1C7C7DAA4();

  if (v117)
  {
    goto LABEL_141;
  }

LABEL_40:
  v115 = v141;
  *v141 = 0;
  v115[1] = 0;
  v75 = -1;
LABEL_43:
  *(v115 + 16) = v75;
  return result;
}

SEService::AppletType_optional __swiftcall AppletType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x614372657473614DLL && rawValue._object == 0xEA00000000006472;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x80000001C7C9CE70 == object || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x20676E696A696542 && object == 0xEB00000000434F4DLL || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x696168676E616853 && object == 0xEC000000434F4D20 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 4342602 && object == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 4347733 && object == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 25;
  }

  else if (countAndFlagsBits == 0x7265766F63736944 && object == 0xE800000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 2019913025 && object == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x7369736F6E6548 && object == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 24;
  }

  else if (countAndFlagsBits == 1634953558 && object == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 7;
  }

  else if (countAndFlagsBits == 0x6E5520616E696843 && object == 0xEF796150206E6F69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 8;
  }

  else if (countAndFlagsBits == 0x79654B656D6F48 && object == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 9;
  }

  else if (countAndFlagsBits == 0x79654B726143 && object == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 10;
  }

  else if (countAndFlagsBits == 0x7461726F70726F43 && object == 0xEC00000079654B65 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 11;
  }

  else if (countAndFlagsBits == 0x676E6152656D6F48 && object == 0xEE0079654B676E69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 12;
  }

  else if (countAndFlagsBits == 1397704019 && object == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 13;
  }

  else if (countAndFlagsBits == 0x54206164616E6143 && object == 0xEE007469736E6172 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 14;
  }

  else if (countAndFlagsBits == 0xD000000000000011 && 0x80000001C7C9CE50 == object || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 15;
  }

  else if (countAndFlagsBits == 0x7254206165726F4BLL && object == 0xED00007469736E61 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 16;
  }

  else if (countAndFlagsBits == 0x7254207369726150 && object == 0xED00007469736E61 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 17;
  }

  else if (countAndFlagsBits == 0x65726166694DLL && object == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 18;
  }

  else if (countAndFlagsBits == 0x6143694C6546 && object == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 19;
  }

  else if (countAndFlagsBits == 0x4F4D20616E696843 && object == 0xE900000000000043 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 20;
  }

  else if (countAndFlagsBits == 0xD000000000000014 && 0x80000001C7C9CE30 == object || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 23;
  }

  else if (countAndFlagsBits == 0x65644920494B504ALL && object == 0xED0000797469746ELL || (sub_1C7C7DAA4() & 1) != 0)
  {

    v7 = 21;
  }

  else if (countAndFlagsBits == 0x72616D746867694ELL && object == 0xE900000000000065)
  {

    v7 = 22;
  }

  else
  {
    v8 = sub_1C7C7DAA4();

    if (v8)
    {
      v7 = 22;
    }

    else
    {
      v7 = 26;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CredentialType.init(deserialize:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C7C7CF84();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1C7C7CF74();
  sub_1C7BE4974();
  sub_1C7C7CF64();

  result = sub_1C7BDF778(a1, a2);
  *a3 = v10;
  *(a3 + 16) = v11;
  return result;
}

SEService::AppletType __swiftcall AppletType.init(moduleAID:)(Swift::String moduleAID)
{
  v14 = v1;
  v2 = sub_1C7C7D334();
  v4 = v3;

  v5 = 0;
  while (v5 != 26)
  {
    v6 = byte_1F474F638[v5 + 32];
    v17 = v6;
    v7 = AppletType.moduleAID.getter();
    v15 = v2;
    v16 = v4;
    MEMORY[0x1EEE9AC00]();
    v13 = &v15;
    v8 = sub_1C7BE424C(sub_1C7BE49DC, v12, v7);

    if ((v8 & 1) == 0)
    {
      ++v5;
      v17 = v6;
      v9 = AppletType.referencedInstanceInternal.getter();
      v15 = v2;
      v16 = v4;
      MEMORY[0x1EEE9AC00]();
      v13 = &v15;
      v10 = sub_1C7BE424C(sub_1C7BEAAF4, v12, v9);

      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v6 = 22;
LABEL_7:

  *v14 = v6;
  return result;
}

void *sub_1C7BD9570@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X2>, uint64_t a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

SEService::AppletType __swiftcall AppletType.init(instanceAID:)(Swift::String instanceAID)
{
  v11 = v1;
  v2 = 0;
  while (1)
  {
    v3 = byte_1F474F638[v2 + 32];
    v4 = sub_1C7C7D334();
    v6 = 0xE000000000000000;
    if (v3 <= 10)
    {
      break;
    }

    if ((v3 - 13) >= 0xD)
    {
      if (v3 == 11)
      {
        v9 = 0xD000000000000018;
      }

      else
      {
        v9 = 0xD000000000000012;
      }

      if (v3 == 11)
      {
        v6 = 0x80000001C7C9CDD0;
      }

      else
      {
        v6 = 0x80000001C7C9CDB0;
      }

      if (v4 != v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_15:
    v8 = sub_1C7C7DAA4();

    if (v8)
    {
      goto LABEL_27;
    }

    if (++v2 == 26)
    {
      LOBYTE(v3) = 22;
      goto LABEL_27;
    }
  }

  if (v3 < 9)
  {
    goto LABEL_13;
  }

  if (v3 == 9)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (v3 == 9)
  {
    v6 = 0x80000001C7C9CD70;
  }

  else
  {
    v6 = 0x80000001C7C9CD90;
  }

  if (v4 != v7)
  {
    goto LABEL_15;
  }

LABEL_14:
  if (v5 != v6)
  {
    goto LABEL_15;
  }

LABEL_27:

  *v11 = v3;
  return result;
}

BOOL CredentialType.isNightmare.getter()
{
  if (!*(v0 + 16))
  {
    return *v0 == 22;
  }

  return *(v0 + 16) == 3 && *v0 == 25 && *(v0 + 8) == 0;
}

uint64_t sub_1C7BD97DC(uint64_t a1)
{
  v2 = sub_1C7BE5498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9818(uint64_t a1)
{
  v2 = sub_1C7BE5498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C7BD9854(char a1)
{
  result = 0x6E6F677241;
  switch(a1)
  {
    case 1:
      result = 1852797513;
      break;
    case 2:
      result = 0x7265656E6F6950;
      break;
    case 3:
      result = 0x746962724FLL;
      break;
    case 4:
      result = 1969321292;
      break;
    case 5:
      result = 0x74697270736E7553;
      break;
    case 6:
      result = 0x6E6F6E6558;
      break;
    case 7:
      result = 1852794190;
      break;
    case 8:
      result = 0x7369736F6E6548;
      break;
    case 9:
      result = 0x6D75696C6548;
      break;
    case 10:
      result = 0x6E6F747079724BLL;
      break;
    case 11:
    case 12:
    case 14:
      result = 0x63696E7265706F43;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x6F6162756853;
      break;
    case 16:
      result = 0x6D7569646F53;
      break;
    case 17:
      result = 0x6D75696874694CLL;
      break;
    case 18:
      result = 0x727566746867694ELL;
      break;
    case 19:
      result = 0x73616C7441;
      break;
    case 20:
      result = 0x65726166694DLL;
      break;
    case 21:
      result = 0x6D6F6C616C53;
      break;
    case 22:
      result = 0x6E616873696148;
      break;
    case 23:
      result = 4412496;
      break;
    case 24:
      result = 0x6F736E6F68706C41;
      break;
    case 25:
      result = 0x72616D746867694ELL;
      break;
    case 26:
      result = 0x74656C6C6177;
      break;
    case 27:
      result = 0x616E6E656956;
      break;
    case 28:
      result = 0x666F72504D495365;
      break;
    case 29:
      result = 0x6C6569667269756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7BD9B14(uint64_t a1)
{
  v2 = sub_1C7BE5C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9B50(uint64_t a1)
{
  v2 = sub_1C7BE5C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9B8C(uint64_t a1)
{
  v2 = sub_1C7BE563C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9BC8(uint64_t a1)
{
  v2 = sub_1C7BE563C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7BE9900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7BD9C40(uint64_t a1)
{
  v2 = sub_1C7BE524C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9C7C(uint64_t a1)
{
  v2 = sub_1C7BE524C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9CB8(uint64_t a1)
{
  v2 = sub_1C7BE5834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9CF4(uint64_t a1)
{
  v2 = sub_1C7BE5834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9D30(uint64_t a1)
{
  v2 = sub_1C7BE57E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9D6C(uint64_t a1)
{
  v2 = sub_1C7BE57E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9DA8(uint64_t a1)
{
  v2 = sub_1C7BE5888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9DE4(uint64_t a1)
{
  v2 = sub_1C7BE5888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9E20(uint64_t a1)
{
  v2 = sub_1C7BE58DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9E5C(uint64_t a1)
{
  v2 = sub_1C7BE58DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6469636369 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7BD9F38(uint64_t a1)
{
  v2 = sub_1C7BE52F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9F74(uint64_t a1)
{
  v2 = sub_1C7BE52F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BD9FB0(uint64_t a1)
{
  v2 = sub_1C7BE5540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BD9FEC(uint64_t a1)
{
  v2 = sub_1C7BE5540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA028(uint64_t a1)
{
  v2 = sub_1C7BE5984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA064(uint64_t a1)
{
  v2 = sub_1C7BE5984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA0A0(uint64_t a1)
{
  v2 = sub_1C7BE59D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA0DC(uint64_t a1)
{
  v2 = sub_1C7BE59D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA118(uint64_t a1)
{
  v2 = sub_1C7BE5C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA154(uint64_t a1)
{
  v2 = sub_1C7BE5C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA190(uint64_t a1)
{
  v2 = sub_1C7BE5930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA1CC(uint64_t a1)
{
  v2 = sub_1C7BE5930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA208(uint64_t a1)
{
  v2 = sub_1C7BE56E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA244(uint64_t a1)
{
  v2 = sub_1C7BE56E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA280(uint64_t a1)
{
  v2 = sub_1C7BE5B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA2BC(uint64_t a1)
{
  v2 = sub_1C7BE5B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA2F8(uint64_t a1)
{
  v2 = sub_1C7BE55E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA334(uint64_t a1)
{
  v2 = sub_1C7BE55E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA370(uint64_t a1)
{
  v2 = sub_1C7BE52A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA3AC(uint64_t a1)
{
  v2 = sub_1C7BE52A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA3E8(uint64_t a1)
{
  v2 = sub_1C7BE5A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA424(uint64_t a1)
{
  v2 = sub_1C7BE5A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA460(uint64_t a1)
{
  v2 = sub_1C7BE5690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA49C(uint64_t a1)
{
  v2 = sub_1C7BE5690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA4D8(uint64_t a1)
{
  v2 = sub_1C7BE5444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA514(uint64_t a1)
{
  v2 = sub_1C7BE5444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA550(uint64_t a1)
{
  v2 = sub_1C7BE5B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA58C(uint64_t a1)
{
  v2 = sub_1C7BE5B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA5C8(uint64_t a1)
{
  v2 = sub_1C7BE54EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA604(uint64_t a1)
{
  v2 = sub_1C7BE54EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA640(uint64_t a1)
{
  v2 = sub_1C7BE5BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA67C(uint64_t a1)
{
  v2 = sub_1C7BE5BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA6B8(uint64_t a1)
{
  v2 = sub_1C7BE578C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA6F4(uint64_t a1)
{
  v2 = sub_1C7BE578C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA730(uint64_t a1)
{
  v2 = sub_1C7BE5594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA76C(uint64_t a1)
{
  v2 = sub_1C7BE5594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA7A8(uint64_t a1)
{
  v2 = sub_1C7BE5738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA7E4(uint64_t a1)
{
  v2 = sub_1C7BE5738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA820(uint64_t a1)
{
  v2 = sub_1C7BE5AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA85C(uint64_t a1)
{
  v2 = sub_1C7BE5AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001C7C9CFA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1C7BDA948(uint64_t a1)
{
  v2 = sub_1C7BE5348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDA984(uint64_t a1)
{
  v2 = sub_1C7BE5348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDA9C0()
{
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](0);
  return sub_1C7C7DB84();
}

uint64_t sub_1C7BDAA04()
{
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](0);
  return sub_1C7C7DB84();
}

uint64_t sub_1C7BDAA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7BDAADC(uint64_t a1)
{
  v2 = sub_1C7BE539C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDAB18(uint64_t a1)
{
  v2 = sub_1C7BE539C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDAB54(uint64_t a1)
{
  v2 = sub_1C7BE5A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDAB90(uint64_t a1)
{
  v2 = sub_1C7BE5A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CredentialType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262500, &qword_1C7C84D40);
  v199 = *(v3 - 8);
  v200 = v3;
  v4 = (*(v199 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v198 = &v122 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262508, &qword_1C7C84D48);
  v208 = *(v6 - 8);
  v209 = v6;
  v7 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v207 = &v122 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262510, &qword_1C7C84D50);
  v205 = *(v9 - 8);
  v206 = v9;
  v10 = (*(v205 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v204 = &v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262518, &qword_1C7C84D58);
  v202 = *(v12 - 8);
  v203 = v12;
  v13 = (*(v202 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v201 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262520, &qword_1C7C84D60);
  v196 = *(v15 - 8);
  v197 = v15;
  v16 = (*(v196 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v195 = &v122 - v17;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262528, &qword_1C7C84D68);
  v193 = *(v194 - 8);
  v18 = (*(v193 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v192 = &v122 - v19;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262530, &qword_1C7C84D70);
  v190 = *(v191 - 8);
  v20 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v189 = &v122 - v21;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262538, &qword_1C7C84D78);
  v187 = *(v188 - 8);
  v22 = (*(v187 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v186 = &v122 - v23;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262540, &qword_1C7C84D80);
  v184 = *(v185 - 8);
  v24 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v183 = &v122 - v25;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262548, &qword_1C7C84D88);
  v181 = *(v182 - 8);
  v26 = (*(v181 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v180 = &v122 - v27;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262550, &qword_1C7C84D90);
  v178 = *(v179 - 8);
  v28 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v177 = &v122 - v29;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262558, &qword_1C7C84D98);
  v175 = *(v176 - 8);
  v30 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v174 = &v122 - v31;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262560, &qword_1C7C84DA0);
  v172 = *(v173 - 8);
  v32 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v171 = &v122 - v33;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262568, &qword_1C7C84DA8);
  v169 = *(v170 - 8);
  v34 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v168 = &v122 - v35;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262570, &qword_1C7C84DB0);
  v166 = *(v167 - 8);
  v36 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v165 = &v122 - v37;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262578, &qword_1C7C84DB8);
  v163 = *(v164 - 8);
  v38 = (*(v163 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v162 = &v122 - v39;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262580, &qword_1C7C84DC0);
  v160 = *(v161 - 8);
  v40 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v159 = &v122 - v41;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262588, &qword_1C7C84DC8);
  v157 = *(v158 - 8);
  v42 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v156 = &v122 - v43;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262590, &qword_1C7C84DD0);
  v154 = *(v155 - 8);
  v44 = (*(v154 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v153 = &v122 - v45;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262598, &qword_1C7C84DD8);
  v151 = *(v152 - 8);
  v46 = (*(v151 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v150 = &v122 - v47;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625A0, &qword_1C7C84DE0);
  v148 = *(v149 - 8);
  v48 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v147 = &v122 - v49;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625A8, &qword_1C7C84DE8);
  v145 = *(v146 - 8);
  v50 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v144 = &v122 - v51;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625B0, &qword_1C7C84DF0);
  v142 = *(v143 - 8);
  v52 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v141 = &v122 - v53;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625B8, &qword_1C7C84DF8);
  v139 = *(v140 - 8);
  v54 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v138 = &v122 - v55;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625C0, &qword_1C7C84E00);
  v136 = *(v137 - 8);
  v56 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v135 = &v122 - v57;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625C8, &qword_1C7C84E08);
  v133 = *(v134 - 8);
  v58 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v132 = &v122 - v59;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625D0, &qword_1C7C84E10);
  v130 = *(v131 - 8);
  v60 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v129 = &v122 - v61;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625D8, &qword_1C7C84E18);
  v127 = *(v128 - 8);
  v62 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v126 = &v122 - v63;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625E0, &qword_1C7C84E20);
  v124 = *(v125 - 8);
  v64 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v66 = &v122 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625E8, &qword_1C7C84E28);
  v123 = *(v67 - 8);
  v68 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v70 = &v122 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2625F0, &qword_1C7C84E30);
  v72 = *(v71 - 8);
  v211 = v71;
  v212 = v72;
  v73 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v75 = &v122 - v74;
  v76 = v1[1];
  v213 = *v1;
  v77 = *(v1 + 16);
  v78 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7BE524C();
  v210 = v75;
  sub_1C7C7DBA4();
  if (v77 <= 1)
  {
    if (!v77)
    {
      v215 = 26;
      sub_1C7BE539C();
      v79 = v201;
      v81 = v210;
      v80 = v211;
      sub_1C7C7D9E4();
      v215 = v213;
      sub_1C7BE53F0();
      v82 = v203;
      sub_1C7C7DA44();
      (*(v202 + 8))(v79, v82);
      return (*(v212 + 8))(v81, v80);
    }

    v215 = 27;
    sub_1C7BE5348();
    v84 = v204;
    v86 = v210;
    v85 = v211;
    sub_1C7C7D9E4();
    v87 = v206;
    sub_1C7C7DA14();
    v88 = v205;
    goto LABEL_7;
  }

  if (v77 == 2)
  {
    v215 = 28;
    sub_1C7BE52F4();
    v84 = v207;
    v86 = v210;
    v85 = v211;
    sub_1C7C7D9E4();
    v87 = v209;
    sub_1C7C7DA14();
    v88 = v208;
LABEL_7:
    (*(v88 + 8))(v84, v87);
    return (*(v212 + 8))(v86, v85);
  }

  switch(v213)
  {
    case 1:
      v215 = 1;
      sub_1C7BE5C24();
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v124 + 8);
      v95 = v66;
      v96 = &v157;
      goto LABEL_36;
    case 2:
      v215 = 2;
      sub_1C7BE5BD0();
      v106 = v126;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v127 + 8);
      v95 = v106;
      v96 = &v160;
      goto LABEL_36;
    case 3:
      v215 = 3;
      sub_1C7BE5B7C();
      v108 = v129;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v130 + 8);
      v95 = v108;
      v96 = &v163;
      goto LABEL_36;
    case 4:
      v215 = 4;
      sub_1C7BE5B28();
      v99 = v132;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v133 + 8);
      v95 = v99;
      v96 = &v166;
      goto LABEL_36;
    case 5:
      v215 = 5;
      sub_1C7BE5AD4();
      v112 = v135;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v136 + 8);
      v95 = v112;
      v96 = &v169;
      goto LABEL_36;
    case 6:
      v215 = 6;
      sub_1C7BE5A80();
      v115 = v138;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v139 + 8);
      v95 = v115;
      v96 = &v172;
      goto LABEL_36;
    case 7:
      v215 = 7;
      sub_1C7BE5A2C();
      v109 = v141;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v142 + 8);
      v95 = v109;
      v96 = &v175;
      goto LABEL_36;
    case 8:
      v215 = 8;
      sub_1C7BE59D8();
      v118 = v144;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v145 + 8);
      v95 = v118;
      v96 = &v178;
      goto LABEL_36;
    case 9:
      v215 = 9;
      sub_1C7BE5984();
      v101 = v147;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v148 + 8);
      v95 = v101;
      v96 = &v181;
      goto LABEL_36;
    case 10:
      v215 = 10;
      sub_1C7BE5930();
      v117 = v150;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v151 + 8);
      v95 = v117;
      v96 = &v184;
      goto LABEL_36;
    case 11:
      v215 = 11;
      sub_1C7BE58DC();
      v98 = v153;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v154 + 8);
      v95 = v98;
      v96 = &v187;
      goto LABEL_36;
    case 12:
      v215 = 12;
      sub_1C7BE5888();
      v100 = v156;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v157 + 8);
      v95 = v100;
      v96 = &v190;
      goto LABEL_36;
    case 13:
      v215 = 13;
      sub_1C7BE5834();
      v114 = v159;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v160 + 8);
      v95 = v114;
      v96 = &v193;
      goto LABEL_36;
    case 14:
      v215 = 14;
      sub_1C7BE57E0();
      v97 = v162;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v163 + 8);
      v95 = v97;
      v96 = &v196;
      goto LABEL_36;
    case 15:
      v215 = 15;
      sub_1C7BE578C();
      v107 = v165;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v166 + 8);
      v95 = v107;
      v96 = &v199;
      goto LABEL_36;
    case 16:
      v215 = 16;
      sub_1C7BE5738();
      v91 = v168;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v169 + 8);
      v95 = v91;
      v96 = &v202;
      goto LABEL_36;
    case 17:
      v215 = 17;
      sub_1C7BE56E4();
      v110 = v171;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v172 + 8);
      v95 = v110;
      v96 = &v205;
      goto LABEL_36;
    case 18:
      v215 = 18;
      sub_1C7BE5690();
      v116 = v174;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v175 + 8);
      v95 = v116;
      v96 = &v208;
      goto LABEL_36;
    case 19:
      v215 = 19;
      sub_1C7BE563C();
      v120 = v177;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v178 + 8);
      v95 = v120;
      v96 = &v211;
      goto LABEL_36;
    case 20:
      v215 = 20;
      sub_1C7BE55E8();
      v111 = v180;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v181 + 8);
      v95 = v111;
      v96 = &v213;
      goto LABEL_36;
    case 21:
      v215 = 21;
      sub_1C7BE5594();
      v113 = v183;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v184 + 8);
      v95 = v113;
      v96 = &v214;
      goto LABEL_36;
    case 22:
      v215 = 22;
      sub_1C7BE5540();
      v119 = v186;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v187 + 8);
      v95 = v119;
      v96 = &v216;
      goto LABEL_36;
    case 23:
      v215 = 23;
      sub_1C7BE54EC();
      v121 = v189;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v94 = *(v190 + 8);
      v95 = v121;
      v96 = &v217;
LABEL_36:
      v94(v95, *(v96 - 32));
      goto LABEL_37;
    case 24:
      v215 = 24;
      sub_1C7BE5498();
      v105 = v192;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      (*(v193 + 8))(v105, v194);
      goto LABEL_37;
    case 25:
      v215 = 25;
      sub_1C7BE5444();
      v102 = v195;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v104 = v196;
      v103 = v197;
      goto LABEL_40;
    case 26:
      v215 = 29;
      sub_1C7BE52A0();
      v102 = v198;
      v93 = v210;
      v92 = v211;
      sub_1C7C7D9E4();
      v104 = v199;
      v103 = v200;
LABEL_40:
      (*(v104 + 8))(v102, v103);
LABEL_37:
      result = (*(v212 + 8))(v93, v92);
      break;
    default:
      v215 = 0;
      sub_1C7BE5C78();
      v89 = v210;
      v90 = v211;
      sub_1C7C7D9E4();
      (*(v123 + 8))(v70, v67);
      result = (*(v212 + 8))(v89, v90);
      break;
  }

  return result;
}

uint64_t CredentialType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      v6 = *v0;
      switch(v1)
      {
        case 1:
          v3 = 1;
          break;
        case 2:
          v3 = 2;
          break;
        case 3:
          v3 = 3;
          break;
        case 4:
          v3 = 4;
          break;
        case 5:
          v3 = 5;
          break;
        case 6:
          v3 = 6;
          break;
        case 7:
          v3 = 7;
          break;
        case 8:
          v3 = 8;
          break;
        case 9:
          v3 = 9;
          break;
        case 10:
          v3 = 10;
          break;
        case 11:
          v3 = 11;
          break;
        case 12:
          v3 = 12;
          break;
        case 13:
          v3 = 13;
          break;
        case 14:
          v3 = 14;
          break;
        case 15:
          v3 = 15;
          break;
        case 16:
          v3 = 16;
          break;
        case 17:
          v3 = 17;
          break;
        case 18:
          v3 = 18;
          break;
        case 19:
          v3 = 19;
          break;
        case 20:
          v3 = 20;
          break;
        case 21:
          v3 = 21;
          break;
        case 22:
          v3 = 22;
          break;
        case 23:
          v3 = 23;
          break;
        case 24:
          v3 = 24;
          break;
        case 25:
          v3 = 25;
          break;
        case 26:
          v3 = 29;
          break;
        default:
          v3 = 0;
          break;
      }

      return MEMORY[0x1CCA6BB80](v3);
    }

    v4 = 28;
  }

  else
  {
    if (!*(v0 + 16))
    {
      MEMORY[0x1CCA6BB80](26);
      v3 = v1;
      return MEMORY[0x1CCA6BB80](v3);
    }

    v4 = 27;
  }

  MEMORY[0x1CCA6BB80](v4);

  return sub_1C7C7D364();
}

uint64_t CredentialType.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1C7C7DB64();
  CredentialType.hash(into:)();
  return sub_1C7C7DB84();
}

uint64_t CredentialType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v254 = a2;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2626F8, &qword_1C7C84E38);
  v223 = *(v253 - 8);
  v3 = (*(v223 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v249 = &v162 - v4;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262700, &qword_1C7C84E40);
  v222 = *(v224 - 8);
  v5 = (*(v222 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v248 = &v162 - v6;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262708, &qword_1C7C84E48);
  v220 = *(v221 - 8);
  v7 = (*(v220 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v247 = &v162 - v8;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262710, &qword_1C7C84E50);
  v218 = *(v219 - 8);
  v9 = (*(v218 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v246 = &v162 - v10;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262718, &qword_1C7C84E58);
  v216 = *(v217 - 8);
  v11 = (*(v216 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v245 = &v162 - v12;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262720, &qword_1C7C84E60);
  v214 = *(v215 - 8);
  v13 = (*(v214 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v244 = &v162 - v14;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262728, &qword_1C7C84E68);
  v212 = *(v213 - 8);
  v15 = (*(v212 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v243 = &v162 - v16;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262730, &qword_1C7C84E70);
  v210 = *(v211 - 8);
  v17 = (*(v210 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v242 = &v162 - v18;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262738, &qword_1C7C84E78);
  v208 = *(v209 - 8);
  v19 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v241 = &v162 - v20;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262740, &qword_1C7C84E80);
  v206 = *(v207 - 8);
  v21 = (*(v206 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v240 = &v162 - v22;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262748, &qword_1C7C84E88);
  v204 = *(v205 - 8);
  v23 = (*(v204 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v239 = &v162 - v24;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262750, &qword_1C7C84E90);
  v202 = *(v203 - 8);
  v25 = (*(v202 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v238 = &v162 - v26;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262758, &qword_1C7C84E98);
  v200 = *(v201 - 8);
  v27 = (*(v200 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v237 = &v162 - v28;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262760, &qword_1C7C84EA0);
  v198 = *(v199 - 8);
  v29 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v236 = &v162 - v30;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262768, &qword_1C7C84EA8);
  v196 = *(v197 - 8);
  v31 = (*(v196 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v235 = &v162 - v32;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262770, &qword_1C7C84EB0);
  v194 = *(v195 - 8);
  v33 = (*(v194 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v234 = &v162 - v34;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262778, &qword_1C7C84EB8);
  v192 = *(v193 - 8);
  v35 = (*(v192 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v233 = &v162 - v36;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262780, &qword_1C7C84EC0);
  v190 = *(v191 - 8);
  v37 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v232 = &v162 - v38;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262788, &qword_1C7C84EC8);
  v188 = *(v189 - 8);
  v39 = (*(v188 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v231 = &v162 - v40;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262790, &qword_1C7C84ED0);
  v186 = *(v187 - 8);
  v41 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v230 = &v162 - v42;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262798, &qword_1C7C84ED8);
  v184 = *(v185 - 8);
  v43 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v229 = &v162 - v44;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627A0, &qword_1C7C84EE0);
  v182 = *(v183 - 8);
  v45 = (*(v182 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v252 = &v162 - v46;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627A8, &qword_1C7C84EE8);
  v181 = *(v180 - 8);
  v47 = (*(v181 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v251 = &v162 - v48;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627B0, &qword_1C7C84EF0);
  v178 = *(v179 - 8);
  v49 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v250 = &v162 - v50;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627B8, &qword_1C7C84EF8);
  v176 = *(v177 - 8);
  v51 = (*(v176 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v228 = &v162 - v52;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627C0, &qword_1C7C84F00);
  v174 = *(v175 - 8);
  v53 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v227 = &v162 - v54;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627C8, &qword_1C7C84F08);
  v172 = *(v173 - 8);
  v55 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v226 = &v162 - v56;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627D0, &qword_1C7C84F10);
  v170 = *(v171 - 8);
  v57 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v225 = &v162 - v58;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627D8, &qword_1C7C84F18);
  v168 = *(v169 - 8);
  v59 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v61 = &v162 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627E0, &qword_1C7C84F20);
  v167 = *(v62 - 8);
  v63 = (*(v167 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v65 = &v162 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627E8, &qword_1C7C84F28);
  v67 = *(v66 - 8);
  v68 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v70 = &v162 - v69;
  v71 = a1[3];
  v72 = a1[4];
  v256 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v71);
  sub_1C7BE524C();
  v73 = v255;
  sub_1C7C7DB94();
  if (v73)
  {
LABEL_69:
    v160 = v256;
    return __swift_destroy_boxed_opaque_existential_0Tm(v160);
  }

  v164 = v65;
  v163 = v62;
  v165 = v61;
  v75 = v250;
  v74 = v251;
  v76 = v252;
  v166 = 0;
  v78 = v253;
  v77 = v254;
  v255 = v67;
  v79 = sub_1C7C7D9D4();
  if (*(v79 + 16) != 1 || (v80 = *(v79 + 32), v80 == 30))
  {
    v86 = sub_1C7C7D7C4();
    swift_allocError();
    v87 = v66;
    v89 = v88;
    v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
    *v89 = &type metadata for CredentialType;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v86 - 8) + 104))(v89, *MEMORY[0x1E69E6AF8], v86);
    swift_willThrow();
    (*(v255 + 8))(v70, v87);
LABEL_68:
    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v162 = v79;
  switch(v80)
  {
    case 1:
      v257 = 1;
      sub_1C7BE5C24();
      v120 = v165;
      v121 = v166;
      sub_1C7C7D944();
      if (v121)
      {
        goto LABEL_67;
      }

      (*(v168 + 8))(v120, v169);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 1;
      goto LABEL_64;
    case 2:
      v257 = 2;
      sub_1C7BE5BD0();
      v113 = v225;
      v114 = v166;
      sub_1C7C7D944();
      if (v114)
      {
        goto LABEL_67;
      }

      (*(v170 + 8))(v113, v171);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 2;
      goto LABEL_64;
    case 3:
      v257 = 3;
      sub_1C7BE5B7C();
      v117 = v226;
      v118 = v166;
      sub_1C7C7D944();
      if (v118)
      {
        goto LABEL_67;
      }

      (*(v172 + 8))(v117, v173);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v83 = 3;
      v85 = 3;
      goto LABEL_64;
    case 4:
      v257 = 4;
      sub_1C7BE5B28();
      v103 = v227;
      v104 = v166;
      sub_1C7C7D944();
      if (v104)
      {
        goto LABEL_67;
      }

      (*(v174 + 8))(v103, v175);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 4;
      goto LABEL_64;
    case 5:
      v257 = 5;
      sub_1C7BE5AD4();
      v126 = v228;
      v127 = v166;
      sub_1C7C7D944();
      if (v127)
      {
        goto LABEL_67;
      }

      (*(v176 + 8))(v126, v177);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 5;
      goto LABEL_64;
    case 6:
      v257 = 6;
      sub_1C7BE5A80();
      v132 = v166;
      sub_1C7C7D944();
      if (v132)
      {
        goto LABEL_67;
      }

      (*(v178 + 8))(v75, v179);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 6;
      goto LABEL_64;
    case 7:
      v257 = 7;
      sub_1C7BE5A2C();
      v119 = v166;
      sub_1C7C7D944();
      if (v119)
      {
        goto LABEL_67;
      }

      (*(v181 + 8))(v74, v180);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 7;
      goto LABEL_64;
    case 8:
      v257 = 8;
      sub_1C7BE59D8();
      v137 = v166;
      sub_1C7C7D944();
      if (v137)
      {
        goto LABEL_67;
      }

      (*(v182 + 8))(v76, v183);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 8;
      goto LABEL_64;
    case 9:
      v257 = 9;
      sub_1C7BE5984();
      v107 = v229;
      v108 = v166;
      sub_1C7C7D944();
      if (v108)
      {
        goto LABEL_67;
      }

      (*(v184 + 8))(v107, v185);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 9;
      goto LABEL_64;
    case 10:
      v257 = 10;
      sub_1C7BE5930();
      v135 = v230;
      v136 = v166;
      sub_1C7C7D944();
      if (v136)
      {
        goto LABEL_67;
      }

      (*(v186 + 8))(v135, v187);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 10;
      goto LABEL_64;
    case 11:
      v257 = 11;
      sub_1C7BE58DC();
      v101 = v231;
      v102 = v166;
      sub_1C7C7D944();
      if (v102)
      {
        goto LABEL_67;
      }

      (*(v188 + 8))(v101, v189);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 11;
      goto LABEL_64;
    case 12:
      v257 = 12;
      sub_1C7BE5888();
      v105 = v232;
      v106 = v166;
      sub_1C7C7D944();
      if (v106)
      {
        goto LABEL_67;
      }

      (*(v190 + 8))(v105, v191);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 12;
      goto LABEL_64;
    case 13:
      v257 = 13;
      sub_1C7BE5834();
      v130 = v233;
      v131 = v166;
      sub_1C7C7D944();
      if (v131)
      {
        goto LABEL_67;
      }

      (*(v192 + 8))(v130, v193);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 13;
      goto LABEL_64;
    case 14:
      v257 = 14;
      sub_1C7BE57E0();
      v99 = v234;
      v100 = v166;
      sub_1C7C7D944();
      if (v100)
      {
        goto LABEL_67;
      }

      (*(v194 + 8))(v99, v195);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 14;
      goto LABEL_64;
    case 15:
      v257 = 15;
      sub_1C7BE578C();
      v115 = v235;
      v116 = v166;
      sub_1C7C7D944();
      if (v116)
      {
        goto LABEL_67;
      }

      (*(v196 + 8))(v115, v197);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 15;
      goto LABEL_64;
    case 16:
      v257 = 16;
      sub_1C7BE5738();
      v97 = v236;
      v98 = v166;
      sub_1C7C7D944();
      if (v98)
      {
        goto LABEL_67;
      }

      (*(v198 + 8))(v97, v199);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 16;
      goto LABEL_64;
    case 17:
      v257 = 17;
      sub_1C7BE56E4();
      v122 = v237;
      v123 = v166;
      sub_1C7C7D944();
      if (v123)
      {
        goto LABEL_67;
      }

      (*(v200 + 8))(v122, v201);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 17;
      goto LABEL_64;
    case 18:
      v257 = 18;
      sub_1C7BE5690();
      v133 = v238;
      v134 = v166;
      sub_1C7C7D944();
      if (v134)
      {
        goto LABEL_67;
      }

      (*(v202 + 8))(v133, v203);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 18;
      goto LABEL_64;
    case 19:
      v257 = 19;
      sub_1C7BE563C();
      v140 = v239;
      v141 = v166;
      sub_1C7C7D944();
      if (v141)
      {
        goto LABEL_67;
      }

      (*(v204 + 8))(v140, v205);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 19;
      goto LABEL_64;
    case 20:
      v257 = 20;
      sub_1C7BE55E8();
      v124 = v240;
      v125 = v166;
      sub_1C7C7D944();
      if (v125)
      {
        goto LABEL_67;
      }

      (*(v206 + 8))(v124, v207);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 20;
      goto LABEL_64;
    case 21:
      v257 = 21;
      sub_1C7BE5594();
      v128 = v241;
      v129 = v166;
      sub_1C7C7D944();
      if (v129)
      {
        goto LABEL_67;
      }

      (*(v208 + 8))(v128, v209);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 21;
      goto LABEL_64;
    case 22:
      v257 = 22;
      sub_1C7BE5540();
      v138 = v242;
      v139 = v166;
      sub_1C7C7D944();
      if (v139)
      {
        goto LABEL_67;
      }

      (*(v210 + 8))(v138, v211);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 22;
      goto LABEL_64;
    case 23:
      v257 = 23;
      sub_1C7BE54EC();
      v142 = v243;
      v143 = v166;
      sub_1C7C7D944();
      if (v143)
      {
        goto LABEL_67;
      }

      (*(v212 + 8))(v142, v213);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 23;
      goto LABEL_64;
    case 24:
      v257 = 24;
      sub_1C7BE5498();
      v111 = v244;
      v112 = v166;
      sub_1C7C7D944();
      if (v112)
      {
        goto LABEL_67;
      }

      (*(v214 + 8))(v111, v215);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 24;
      goto LABEL_64;
    case 25:
      v257 = 25;
      sub_1C7BE5444();
      v109 = v245;
      v110 = v166;
      sub_1C7C7D944();
      if (v110)
      {
        goto LABEL_67;
      }

      (*(v216 + 8))(v109, v217);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 25;
      goto LABEL_64;
    case 26:
      v257 = 26;
      sub_1C7BE539C();
      v152 = v246;
      v153 = v166;
      sub_1C7C7D944();
      if (v153)
      {
        goto LABEL_67;
      }

      v155 = v66;
      sub_1C7BE5D18();
      v156 = v219;
      sub_1C7C7D9B4();
      v157 = v255;
      v158 = v256;
      (*(v218 + 8))(v152, v156);
      (*(v157 + 8))(v70, v155);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 0;
      v83 = v257;
      v160 = v158;
      goto LABEL_65;
    case 27:
      v257 = 27;
      sub_1C7BE5348();
      v91 = v247;
      v92 = v166;
      sub_1C7C7D944();
      if (v92)
      {
        goto LABEL_67;
      }

      v93 = v66;
      v94 = v221;
      v95 = sub_1C7C7D984();
      v96 = v256;
      v83 = v95;
      v84 = v159;
      (*(v220 + 8))(v91, v94);
      (*(v255 + 8))(v70, v93);
      swift_unknownObjectRelease();
      v85 = 1;
      v160 = v96;
      goto LABEL_65;
    case 28:
      v257 = 28;
      sub_1C7BE52F4();
      v144 = v248;
      v145 = v166;
      sub_1C7C7D944();
      if (v145)
      {
        goto LABEL_67;
      }

      v146 = v66;
      v147 = v224;
      v148 = sub_1C7C7D984();
      v149 = v256;
      v83 = v148;
      v84 = v161;
      (*(v222 + 8))(v144, v147);
      (*(v255 + 8))(v70, v146);
      swift_unknownObjectRelease();
      v85 = 2;
      v160 = v149;
      goto LABEL_65;
    case 29:
      v257 = 29;
      sub_1C7BE52A0();
      v150 = v249;
      v151 = v166;
      sub_1C7C7D944();
      if (v151)
      {
        goto LABEL_67;
      }

      (*(v223 + 8))(v150, v78);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v84 = 0;
      v85 = 3;
      v83 = 26;
      goto LABEL_64;
    default:
      v257 = 0;
      sub_1C7BE5C78();
      v81 = v164;
      v82 = v166;
      sub_1C7C7D944();
      if (v82)
      {
LABEL_67:
        (*(v255 + 8))(v70, v66);
        goto LABEL_68;
      }

      (*(v167 + 8))(v81, v163);
      (*(v255 + 8))(v70, v66);
      swift_unknownObjectRelease();
      v83 = 0;
      v84 = 0;
      v85 = 3;
LABEL_64:
      v160 = v256;
LABEL_65:
      *v77 = v83;
      *(v77 + 8) = v84;
      *(v77 + 16) = v85;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v160);
}

uint64_t sub_1C7BDF0D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF10C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF140()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF174()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF1A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF1DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF210()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF244()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF278()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7BDF2E0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_1C7BDF708(*a2, *(a2 + 8), *(a2 + 16));
  sub_1C7C7D324();
  v5 = sub_1C7C7D334();
  v7 = v6;

  sub_1C7BDF708(v2, v3, v4);
  sub_1C7C7D324();
  v8 = sub_1C7C7D334();
  v10 = v9;

  if (v5 == v8 && v7 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_1C7C7DAA4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1C7BDF400(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_1C7BDF708(*a1, *(a1 + 8), *(a1 + 16));
  sub_1C7C7D324();
  v5 = sub_1C7C7D334();
  v7 = v6;

  sub_1C7BDF708(v2, v3, v4);
  sub_1C7C7D324();
  v8 = sub_1C7C7D334();
  v10 = v9;

  if (v5 == v8 && v7 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_1C7C7DAA4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1C7BDF520(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_1C7BDF708(*a2, *(a2 + 8), *(a2 + 16));
  sub_1C7C7D324();
  v5 = sub_1C7C7D334();
  v7 = v6;

  sub_1C7BDF708(v2, v3, v4);
  sub_1C7C7D324();
  v8 = sub_1C7C7D334();
  v10 = v9;

  if (v5 == v8 && v7 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1C7C7DAA4();
  }

  return v11 & 1;
}

uint64_t sub_1C7BDF630()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1C7C7DB64();
  CredentialType.hash(into:)();
  return sub_1C7C7DB84();
}

uint64_t sub_1C7BDF688()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1C7C7DB64();
  CredentialType.hash(into:)();
  return sub_1C7C7DB84();
}

BOOL sub_1C7BDF6D8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1C7BDF708(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_1C7BDF724()
{
  result = qword_1EC264670;
  if (!qword_1EC264670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264670);
  }

  return result;
}

uint64_t sub_1C7BDF778(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t AppletType.description.getter()
{
  v3 = *v0;
  sub_1C7C7D324();
  v1 = sub_1C7C7D334();

  return v1;
}

SEService::AppletType_optional __swiftcall AppletType.init(from:)(Swift::String from)
{
  v2 = v1;
  v3 = 0;
  while (1)
  {
    if (v3 == 26)
    {
      v4 = 26;
      goto LABEL_11;
    }

    v4 = byte_1F474F638[v3 + 32];
    sub_1C7C7D324();
    sub_1C7C7D334();

    v5 = sub_1C7C7D334();
    v7 = v6;

    if (v5 == sub_1C7C7D334() && v7 == v8)
    {
      break;
    }

    ++v3;
    v10 = sub_1C7C7DAA4();

    if (v10)
    {
      goto LABEL_11;
    }
  }

LABEL_11:

  *v2 = v4;
  return result;
}

uint64_t AppletType.init(deserialize:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1C7C7CF84();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1C7C7CF74();
  sub_1C7BE5D18();
  sub_1C7C7CF64();

  result = sub_1C7BDF778(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t AppletType.serialize()()
{
  v1 = *v0;
  v2 = sub_1C7C7CFB4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7BE53F0();
  v5 = sub_1C7C7CF94();

  return v5;
}

uint64_t static AppletType.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v12 = *a1;
  sub_1C7C7D324();
  v3 = sub_1C7C7D334();
  v5 = v4;

  sub_1C7C7D324();
  v6 = sub_1C7C7D334();
  v8 = v7;

  if (v3 == v6 && v5 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1C7C7DAA4();
  }

  return v10 & 1;
}

unint64_t sub_1C7BDFCC8(char a1)
{
  result = 0x6E6F677241;
  switch(a1)
  {
    case 1:
      result = 1852797513;
      break;
    case 2:
      result = 0x7265656E6F6950;
      break;
    case 3:
      result = 0x746962724FLL;
      break;
    case 4:
      result = 1969321292;
      break;
    case 5:
      result = 0x6E6F6E6558;
      break;
    case 6:
      result = 1852794190;
      break;
    case 7:
      result = 0x6D75696C6548;
      break;
    case 8:
      result = 0x6E6F747079724BLL;
      break;
    case 9:
    case 10:
    case 12:
      result = 0x63696E7265706F43;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6F6162756853;
      break;
    case 14:
      result = 0x6D7569646F53;
      break;
    case 15:
      result = 0x6D75696874694CLL;
      break;
    case 16:
      result = 0x727566746867694ELL;
      break;
    case 17:
      result = 0x73616C7441;
      break;
    case 18:
      result = 0x65726166694DLL;
      break;
    case 19:
      result = 0x6D6F6C616C53;
      break;
    case 20:
      result = 0x6E616873696148;
      break;
    case 21:
      result = 0x6F736E6F68706C41;
      break;
    case 22:
      result = 0x72616D746867694ELL;
      break;
    case 23:
      result = 4412496;
      break;
    case 24:
      result = 0x7369736F6E6548;
      break;
    case 25:
      result = 0x74697270736E7553;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7BDFF20(uint64_t a1)
{
  v2 = sub_1C7BE5F10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDFF5C(uint64_t a1)
{
  v2 = sub_1C7BE5F10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BDFF98(uint64_t a1)
{
  v2 = sub_1C7BE65F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BDFFD4(uint64_t a1)
{
  v2 = sub_1C7BE65F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0010(uint64_t a1)
{
  v2 = sub_1C7BE6060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE004C(uint64_t a1)
{
  v2 = sub_1C7BE6060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7BEA204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7BE00C4(uint64_t a1)
{
  v2 = sub_1C7BE5D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0100(uint64_t a1)
{
  v2 = sub_1C7BE5D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE013C(uint64_t a1)
{
  v2 = sub_1C7BE6258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0178(uint64_t a1)
{
  v2 = sub_1C7BE6258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE01B4(uint64_t a1)
{
  v2 = sub_1C7BE6204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE01F0(uint64_t a1)
{
  v2 = sub_1C7BE6204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE022C(uint64_t a1)
{
  v2 = sub_1C7BE62AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0268(uint64_t a1)
{
  v2 = sub_1C7BE62AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE02A4(uint64_t a1)
{
  v2 = sub_1C7BE6300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE02E0(uint64_t a1)
{
  v2 = sub_1C7BE6300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE031C(uint64_t a1)
{
  v2 = sub_1C7BE5F64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0358(uint64_t a1)
{
  v2 = sub_1C7BE5F64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0394(uint64_t a1)
{
  v2 = sub_1C7BE63A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE03D0(uint64_t a1)
{
  v2 = sub_1C7BE63A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE040C(uint64_t a1)
{
  v2 = sub_1C7BE5E14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0448(uint64_t a1)
{
  v2 = sub_1C7BE5E14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0484(uint64_t a1)
{
  v2 = sub_1C7BE65A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE04C0(uint64_t a1)
{
  v2 = sub_1C7BE65A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE04FC(uint64_t a1)
{
  v2 = sub_1C7BE6354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0538(uint64_t a1)
{
  v2 = sub_1C7BE6354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0574(uint64_t a1)
{
  v2 = sub_1C7BE6108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE05B0(uint64_t a1)
{
  v2 = sub_1C7BE6108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE05EC(uint64_t a1)
{
  v2 = sub_1C7BE64A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0628(uint64_t a1)
{
  v2 = sub_1C7BE64A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0664(uint64_t a1)
{
  v2 = sub_1C7BE600C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE06A0(uint64_t a1)
{
  v2 = sub_1C7BE600C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE06DC(uint64_t a1)
{
  v2 = sub_1C7BE63FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0718(uint64_t a1)
{
  v2 = sub_1C7BE63FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0754(uint64_t a1)
{
  v2 = sub_1C7BE60B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0790(uint64_t a1)
{
  v2 = sub_1C7BE60B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE07CC(uint64_t a1)
{
  v2 = sub_1C7BE5EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0808(uint64_t a1)
{
  v2 = sub_1C7BE5EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0844(uint64_t a1)
{
  v2 = sub_1C7BE64F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0880(uint64_t a1)
{
  v2 = sub_1C7BE64F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE08BC(uint64_t a1)
{
  v2 = sub_1C7BE5E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE08F8(uint64_t a1)
{
  v2 = sub_1C7BE5E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0934(uint64_t a1)
{
  v2 = sub_1C7BE654C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0970(uint64_t a1)
{
  v2 = sub_1C7BE654C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE09AC(uint64_t a1)
{
  v2 = sub_1C7BE61B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE09E8(uint64_t a1)
{
  v2 = sub_1C7BE61B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0A24(uint64_t a1)
{
  v2 = sub_1C7BE5FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0A60(uint64_t a1)
{
  v2 = sub_1C7BE5FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0A9C(uint64_t a1)
{
  v2 = sub_1C7BE615C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0AD8(uint64_t a1)
{
  v2 = sub_1C7BE615C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0B14(uint64_t a1)
{
  v2 = sub_1C7BE5DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0B50(uint64_t a1)
{
  v2 = sub_1C7BE5DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7BE0B8C(uint64_t a1)
{
  v2 = sub_1C7BE6450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7BE0BC8(uint64_t a1)
{
  v2 = sub_1C7BE6450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppletType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262800, &qword_1C7C84F38);
  v172 = *(v4 - 8);
  v173 = v4;
  v5 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v171 = &v98 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262808, &qword_1C7C84F40);
  v169 = *(v7 - 8);
  v170 = v7;
  v8 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v168 = &v98 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262810, &qword_1C7C84F48);
  v166 = *(v10 - 8);
  v167 = v10;
  v11 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v165 = &v98 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262818, &qword_1C7C84F50);
  v163 = *(v13 - 8);
  v164 = v13;
  v14 = (*(v163 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v162 = &v98 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262820, &qword_1C7C84F58);
  v160 = *(v16 - 8);
  v161 = v16;
  v17 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v159 = &v98 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262828, &qword_1C7C84F60);
  v157 = *(v19 - 8);
  v158 = v19;
  v20 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v156 = &v98 - v21;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262830, &qword_1C7C84F68);
  v154 = *(v155 - 8);
  v22 = (*(v154 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v153 = &v98 - v23;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262838, &qword_1C7C84F70);
  v151 = *(v152 - 8);
  v24 = (*(v151 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v150 = &v98 - v25;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262840, &qword_1C7C84F78);
  v148 = *(v149 - 8);
  v26 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v147 = &v98 - v27;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262848, &qword_1C7C84F80);
  v145 = *(v146 - 8);
  v28 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v144 = &v98 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262850, &qword_1C7C84F88);
  v142 = *(v143 - 8);
  v30 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v141 = &v98 - v31;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262858, &qword_1C7C84F90);
  v139 = *(v140 - 8);
  v32 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v138 = &v98 - v33;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262860, &qword_1C7C84F98);
  v136 = *(v137 - 8);
  v34 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v135 = &v98 - v35;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262868, &qword_1C7C84FA0);
  v133 = *(v134 - 8);
  v36 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v132 = &v98 - v37;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262870, &qword_1C7C84FA8);
  v130 = *(v131 - 8);
  v38 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v129 = &v98 - v39;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262878, &qword_1C7C84FB0);
  v127 = *(v128 - 8);
  v40 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v126 = &v98 - v41;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262880, &qword_1C7C84FB8);
  v124 = *(v125 - 8);
  v42 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v123 = &v98 - v43;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262888, &qword_1C7C84FC0);
  v121 = *(v122 - 8);
  v44 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v120 = &v98 - v45;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262890, &qword_1C7C84FC8);
  v118 = *(v119 - 8);
  v46 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v117 = &v98 - v47;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262898, &qword_1C7C84FD0);
  v115 = *(v116 - 8);
  v48 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v114 = &v98 - v49;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2628A0, &qword_1C7C84FD8);
  v112 = *(v113 - 8);
  v50 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v111 = &v98 - v51;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2628A8, &qword_1C7C84FE0);
  v109 = *(v110 - 8);
  v52 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v108 = &v98 - v53;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2628B0, &qword_1C7C84FE8);
  v106 = *(v107 - 8);
  v54 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v105 = &v98 - v55;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2628B8, &qword_1C7C84FF0);
  v103 = *(v104 - 8);
  v56 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v102 = &v98 - v57;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2628C0, &qword_1C7C84FF8);
  v100 = *(v101 - 8);
  v58 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v60 = &v98 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2628C8, &qword_1C7C85000);
  v99 = *(v61 - 8);
  v62 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v64 = &v98 - v63;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2628D0, &qword_1C7C85008);
  v65 = *(v175 - 8);
  v66 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v68 = &v98 - v67;
  v69 = *v2;
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7BE5D6C();
  v174 = v68;
  sub_1C7C7DBA4();
  v71 = (v65 + 8);
  switch(v69)
  {
    case 1:
      v176 = 1;
      sub_1C7BE65A0();
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v100 + 8))(v60, v101);
      goto LABEL_29;
    case 2:
      v176 = 2;
      sub_1C7BE654C();
      v86 = v102;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v103 + 8))(v86, v104);
      goto LABEL_29;
    case 3:
      v176 = 3;
      sub_1C7BE64F8();
      v88 = v105;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v106 + 8))(v88, v107);
      goto LABEL_29;
    case 4:
      v176 = 4;
      sub_1C7BE64A4();
      v80 = v108;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v109 + 8))(v80, v110);
      goto LABEL_29;
    case 5:
      v176 = 5;
      sub_1C7BE6450();
      v91 = v111;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v112 + 8))(v91, v113);
      goto LABEL_29;
    case 6:
      v176 = 6;
      sub_1C7BE63FC();
      v93 = v114;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v115 + 8))(v93, v116);
      goto LABEL_29;
    case 7:
      v176 = 7;
      sub_1C7BE63A8();
      v89 = v117;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v118 + 8))(v89, v119);
      goto LABEL_29;
    case 8:
      v176 = 8;
      sub_1C7BE6354();
      v96 = v120;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v121 + 8))(v96, v122);
      goto LABEL_29;
    case 9:
      v176 = 9;
      sub_1C7BE6300();
      v82 = v123;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v124 + 8))(v82, v125);
      goto LABEL_29;
    case 10:
      v176 = 10;
      sub_1C7BE62AC();
      v95 = v126;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v127 + 8))(v95, v128);
      goto LABEL_29;
    case 11:
      v176 = 11;
      sub_1C7BE6258();
      v79 = v129;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v130 + 8))(v79, v131);
      goto LABEL_29;
    case 12:
      v176 = 12;
      sub_1C7BE6204();
      v81 = v132;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v133 + 8))(v81, v134);
      goto LABEL_29;
    case 13:
      v176 = 13;
      sub_1C7BE61B0();
      v92 = v135;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v136 + 8))(v92, v137);
      goto LABEL_29;
    case 14:
      v176 = 14;
      sub_1C7BE615C();
      v78 = v138;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v139 + 8))(v78, v140);
      goto LABEL_29;
    case 15:
      v176 = 15;
      sub_1C7BE6108();
      v87 = v141;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v142 + 8))(v87, v143);
      goto LABEL_29;
    case 16:
      v176 = 16;
      sub_1C7BE60B4();
      v75 = v144;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v145 + 8))(v75, v146);
      goto LABEL_29;
    case 17:
      v176 = 17;
      sub_1C7BE6060();
      v90 = v147;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v148 + 8))(v90, v149);
      goto LABEL_29;
    case 18:
      v176 = 18;
      sub_1C7BE600C();
      v94 = v150;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v151 + 8))(v94, v152);
      goto LABEL_29;
    case 19:
      v176 = 19;
      sub_1C7BE5FB8();
      v97 = v153;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      (*(v154 + 8))(v97, v155);
      goto LABEL_29;
    case 20:
      v176 = 20;
      sub_1C7BE5F64();
      v83 = v156;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      v85 = v157;
      v84 = v158;
      goto LABEL_28;
    case 21:
      v176 = 21;
      sub_1C7BE5F10();
      v83 = v159;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      v85 = v160;
      v84 = v161;
      goto LABEL_28;
    case 22:
      v176 = 22;
      sub_1C7BE5EBC();
      v83 = v162;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      v85 = v163;
      v84 = v164;
      goto LABEL_28;
    case 23:
      v176 = 23;
      sub_1C7BE5E68();
      v83 = v165;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      v85 = v166;
      v84 = v167;
      goto LABEL_28;
    case 24:
      v176 = 24;
      sub_1C7BE5E14();
      v83 = v168;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      v85 = v169;
      v84 = v170;
      goto LABEL_28;
    case 25:
      v176 = 25;
      sub_1C7BE5DC0();
      v83 = v171;
      v77 = v174;
      v76 = v175;
      sub_1C7C7D9E4();
      v85 = v172;
      v84 = v173;
LABEL_28:
      (*(v85 + 8))(v83, v84);
LABEL_29:
      result = (*v71)(v77, v76);
      break;
    default:
      v176 = 0;
      sub_1C7BE65F4();
      v72 = v174;
      v73 = v175;
      sub_1C7C7D9E4();
      (*(v99 + 8))(v64, v61);
      result = (*v71)(v72, v73);
      break;
  }

  return result;
}

uint64_t AppletType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t AppletType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v212 = a2;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629B0, &qword_1C7C85010);
  v186 = *(v211 - 8);
  v3 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v207 = v131 - v4;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629B8, &qword_1C7C85018);
  v184 = *(v185 - 8);
  v5 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v206 = v131 - v6;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629C0, &qword_1C7C85020);
  v182 = *(v183 - 8);
  v7 = (*(v182 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v205 = v131 - v8;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629C8, &qword_1C7C85028);
  v180 = *(v181 - 8);
  v9 = (*(v180 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v204 = v131 - v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629D0, &qword_1C7C85030);
  v178 = *(v179 - 8);
  v11 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v203 = v131 - v12;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629D8, &qword_1C7C85038);
  v176 = *(v177 - 8);
  v13 = (*(v176 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v202 = v131 - v14;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629E0, &qword_1C7C85040);
  v174 = *(v175 - 8);
  v15 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v201 = v131 - v16;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629E8, &qword_1C7C85048);
  v172 = *(v173 - 8);
  v17 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v200 = v131 - v18;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629F0, &qword_1C7C85050);
  v170 = *(v171 - 8);
  v19 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v199 = v131 - v20;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2629F8, &qword_1C7C85058);
  v168 = *(v169 - 8);
  v21 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v198 = v131 - v22;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A00, &qword_1C7C85060);
  v166 = *(v167 - 8);
  v23 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v197 = v131 - v24;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A08, &qword_1C7C85068);
  v164 = *(v165 - 8);
  v25 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v196 = v131 - v26;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A10, &qword_1C7C85070);
  v162 = *(v163 - 8);
  v27 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v195 = v131 - v28;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A18, &qword_1C7C85078);
  v160 = *(v161 - 8);
  v29 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v194 = v131 - v30;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A20, &qword_1C7C85080);
  v158 = *(v159 - 8);
  v31 = (*(v158 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v193 = v131 - v32;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A28, &qword_1C7C85088);
  v156 = *(v157 - 8);
  v33 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v192 = v131 - v34;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A30, &qword_1C7C85090);
  v154 = *(v155 - 8);
  v35 = (*(v154 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v191 = v131 - v36;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A38, &qword_1C7C85098);
  v152 = *(v153 - 8);
  v37 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v210 = v131 - v38;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A40, &qword_1C7C850A0);
  v150 = *(v151 - 8);
  v39 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v190 = v131 - v40;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A48, &qword_1C7C850A8);
  v148 = *(v149 - 8);
  v41 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v209 = v131 - v42;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A50, &qword_1C7C850B0);
  v147 = *(v146 - 8);
  v43 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v189 = v131 - v44;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A58, &qword_1C7C850B8);
  v145 = *(v142 - 8);
  v45 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v188 = v131 - v46;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A60, &qword_1C7C850C0);
  v143 = *(v144 - 8);
  v47 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v208 = v131 - v48;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A68, &qword_1C7C850C8);
  v140 = *(v141 - 8);
  v49 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v187 = v131 - v50;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A70, &qword_1C7C850D0);
  v138 = *(v139 - 8);
  v51 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v53 = v131 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A78, &qword_1C7C850D8);
  v137 = *(v54 - 8);
  v55 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v57 = v131 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262A80, &qword_1C7C850E0);
  v59 = *(v58 - 8);
  v60 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v62 = v131 - v61;
  v64 = a1[3];
  v63 = a1[4];
  v213 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v64);
  sub_1C7BE5D6C();
  v65 = v214;
  sub_1C7C7DB94();
  if (v65)
  {
LABEL_59:
    v129 = v213;
    return __swift_destroy_boxed_opaque_existential_0Tm(v129);
  }

  v133 = v57;
  v132 = v54;
  v134 = v53;
  v67 = v208;
  v66 = v209;
  v68 = v210;
  v135 = 0;
  v70 = v211;
  v69 = v212;
  v214 = v59;
  v136 = v62;
  v71 = sub_1C7C7D9D4();
  if (*(v71 + 16) != 1 || (v72 = *(v71 + 32), v72 == 26))
  {
    v76 = sub_1C7C7D7C4();
    swift_allocError();
    v77 = v58;
    v79 = v78;
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
    *v79 = &type metadata for AppletType;
    v81 = v136;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v76 - 8) + 104))(v79, *MEMORY[0x1E69E6AF8], v76);
    swift_willThrow();
    (*(v214 + 8))(v81, v77);
LABEL_58:
    swift_unknownObjectRelease();
    goto LABEL_59;
  }

  v131[1] = v71;
  switch(v72)
  {
    case 1:
      v215 = 1;
      sub_1C7BE65A0();
      v105 = v134;
      v74 = v136;
      v106 = v135;
      sub_1C7C7D944();
      if (v106)
      {
        goto LABEL_57;
      }

      (*(v138 + 8))(v105, v139);
      goto LABEL_62;
    case 2:
      v215 = 2;
      sub_1C7BE654C();
      v98 = v187;
      v74 = v136;
      v99 = v135;
      sub_1C7C7D944();
      if (v99)
      {
        goto LABEL_57;
      }

      (*(v140 + 8))(v98, v141);
      goto LABEL_62;
    case 3:
      v215 = 3;
      sub_1C7BE64F8();
      v74 = v136;
      v102 = v135;
      sub_1C7C7D944();
      if (v102)
      {
        goto LABEL_57;
      }

      (*(v143 + 8))(v67, v144);
      goto LABEL_62;
    case 4:
      v215 = 4;
      sub_1C7BE64A4();
      v88 = v188;
      v74 = v136;
      v89 = v135;
      sub_1C7C7D944();
      if (v89)
      {
        goto LABEL_57;
      }

      (*(v145 + 8))(v88, v142);
      goto LABEL_62;
    case 5:
      v215 = 5;
      sub_1C7BE6450();
      v111 = v189;
      v74 = v136;
      v112 = v135;
      sub_1C7C7D944();
      if (v112)
      {
        goto LABEL_57;
      }

      (*(v147 + 8))(v111, v146);
      goto LABEL_62;
    case 6:
      v215 = 6;
      sub_1C7BE63FC();
      v74 = v136;
      v117 = v135;
      sub_1C7C7D944();
      if (v117)
      {
        goto LABEL_57;
      }

      (*(v148 + 8))(v66, v149);
      goto LABEL_62;
    case 7:
      v215 = 7;
      sub_1C7BE63A8();
      v103 = v190;
      v74 = v136;
      v104 = v135;
      sub_1C7C7D944();
      if (v104)
      {
        goto LABEL_57;
      }

      (*(v150 + 8))(v103, v151);
      goto LABEL_62;
    case 8:
      v215 = 8;
      sub_1C7BE6354();
      v74 = v136;
      v122 = v135;
      sub_1C7C7D944();
      if (v122)
      {
        goto LABEL_57;
      }

      (*(v152 + 8))(v68, v153);
      goto LABEL_62;
    case 9:
      v215 = 9;
      sub_1C7BE6300();
      v92 = v191;
      v74 = v136;
      v93 = v135;
      sub_1C7C7D944();
      if (v93)
      {
        goto LABEL_57;
      }

      (*(v154 + 8))(v92, v155);
      goto LABEL_62;
    case 10:
      v215 = 10;
      sub_1C7BE62AC();
      v120 = v192;
      v74 = v136;
      v121 = v135;
      sub_1C7C7D944();
      if (v121)
      {
        goto LABEL_57;
      }

      (*(v156 + 8))(v120, v157);
      goto LABEL_62;
    case 11:
      v215 = 11;
      sub_1C7BE6258();
      v86 = v193;
      v74 = v136;
      v87 = v135;
      sub_1C7C7D944();
      if (v87)
      {
        goto LABEL_57;
      }

      (*(v158 + 8))(v86, v159);
      goto LABEL_62;
    case 12:
      v215 = 12;
      sub_1C7BE6204();
      v90 = v194;
      v74 = v136;
      v91 = v135;
      sub_1C7C7D944();
      if (v91)
      {
        goto LABEL_57;
      }

      (*(v160 + 8))(v90, v161);
      goto LABEL_62;
    case 13:
      v215 = 13;
      sub_1C7BE61B0();
      v115 = v195;
      v74 = v136;
      v116 = v135;
      sub_1C7C7D944();
      if (v116)
      {
        goto LABEL_57;
      }

      (*(v162 + 8))(v115, v163);
      goto LABEL_62;
    case 14:
      v215 = 14;
      sub_1C7BE615C();
      v84 = v196;
      v74 = v136;
      v85 = v135;
      sub_1C7C7D944();
      if (v85)
      {
        goto LABEL_57;
      }

      (*(v164 + 8))(v84, v165);
      goto LABEL_62;
    case 15:
      v215 = 15;
      sub_1C7BE6108();
      v100 = v197;
      v74 = v136;
      v101 = v135;
      sub_1C7C7D944();
      if (v101)
      {
        goto LABEL_57;
      }

      (*(v166 + 8))(v100, v167);
      goto LABEL_62;
    case 16:
      v215 = 16;
      sub_1C7BE60B4();
      v82 = v198;
      v74 = v136;
      v83 = v135;
      sub_1C7C7D944();
      if (v83)
      {
        goto LABEL_57;
      }

      (*(v168 + 8))(v82, v169);
      goto LABEL_62;
    case 17:
      v215 = 17;
      sub_1C7BE6060();
      v107 = v199;
      v74 = v136;
      v108 = v135;
      sub_1C7C7D944();
      if (v108)
      {
        goto LABEL_57;
      }

      (*(v170 + 8))(v107, v171);
      goto LABEL_62;
    case 18:
      v215 = 18;
      sub_1C7BE600C();
      v118 = v200;
      v74 = v136;
      v119 = v135;
      sub_1C7C7D944();
      if (v119)
      {
        goto LABEL_57;
      }

      (*(v172 + 8))(v118, v173);
      goto LABEL_62;
    case 19:
      v215 = 19;
      sub_1C7BE5FB8();
      v125 = v201;
      v74 = v136;
      v126 = v135;
      sub_1C7C7D944();
      if (v126)
      {
        goto LABEL_57;
      }

      (*(v174 + 8))(v125, v175);
      goto LABEL_62;
    case 20:
      v215 = 20;
      sub_1C7BE5F64();
      v109 = v202;
      v74 = v136;
      v110 = v135;
      sub_1C7C7D944();
      if (v110)
      {
        goto LABEL_57;
      }

      (*(v176 + 8))(v109, v177);
      goto LABEL_62;
    case 21:
      v215 = 21;
      sub_1C7BE5F10();
      v113 = v203;
      v74 = v136;
      v114 = v135;
      sub_1C7C7D944();
      if (v114)
      {
        goto LABEL_57;
      }

      (*(v178 + 8))(v113, v179);
      goto LABEL_62;
    case 22:
      v215 = 22;
      sub_1C7BE5EBC();
      v123 = v204;
      v74 = v136;
      v124 = v135;
      sub_1C7C7D944();
      if (v124)
      {
        goto LABEL_57;
      }

      (*(v180 + 8))(v123, v181);
      goto LABEL_62;
    case 23:
      v215 = 23;
      sub_1C7BE5E68();
      v127 = v205;
      v74 = v136;
      v128 = v135;
      sub_1C7C7D944();
      if (v128)
      {
        goto LABEL_57;
      }

      (*(v182 + 8))(v127, v183);
      goto LABEL_62;
    case 24:
      v215 = 24;
      sub_1C7BE5E14();
      v96 = v206;
      v74 = v136;
      v97 = v135;
      sub_1C7C7D944();
      if (v97)
      {
        goto LABEL_57;
      }

      (*(v184 + 8))(v96, v185);
      goto LABEL_62;
    case 25:
      v215 = 25;
      sub_1C7BE5DC0();
      v94 = v207;
      v74 = v136;
      v95 = v135;
      sub_1C7C7D944();
      if (v95)
      {
        goto LABEL_57;
      }

      (*(v186 + 8))(v94, v70);
      goto LABEL_62;
    default:
      v215 = 0;
      sub_1C7BE65F4();
      v73 = v133;
      v74 = v136;
      v75 = v135;
      sub_1C7C7D944();
      if (v75)
      {
LABEL_57:
        (*(v214 + 8))(v74, v58);
        goto LABEL_58;
      }

      (*(v137 + 8))(v73, v132);
LABEL_62:
      (*(v214 + 8))(v74, v58);
      swift_unknownObjectRelease();
      v129 = v213;
      *v69 = v72;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v129);
}

uint64_t sub_1C7BE3F68(char *a1, char *a2)
{
  v2 = *a2;
  v11 = *a1;
  sub_1C7C7D324();
  v3 = sub_1C7C7D334();
  v5 = v4;

  sub_1C7C7D324();
  v6 = sub_1C7C7D334();
  v8 = v7;

  if (v3 == v6 && v5 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1C7C7DAA4();
  }

  return v9 & 1;
}

BOOL sub_1C7BE4040(char *a1, char *a2)
{
  v4 = *a1;
  v3 = *a2;
  return (sub_1C7C7D2B4() & 1) == 0;
}

BOOL sub_1C7BE4080(char *a1, char *a2)
{
  v4 = *a1;
  v3 = *a2;
  return (sub_1C7C7D2B4() & 1) == 0;
}

uint64_t sub_1C7BE40C0(char *a1, char *a2)
{
  v4 = *a1;
  v3 = *a2;
  return sub_1C7C7D2B4() & 1;
}

uint64_t _s9SEService24SEStorageManagementSheetV22ProposedCredentialTypeO12DiscriminantO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t sub_1C7BE4144()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t CredentialType.init(fromLegacy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v4 == 3 && v2 <= 0x19)
  {
    v3 = 0;
    LOBYTE(v4) = 0;
    v2 = qword_1C7C87E70[v2];
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1C7BE41C8()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC262470);
  __swift_project_value_buffer(v0, qword_1EC262470);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7BE424C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C7BE42F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C7BE43C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C7BEA9F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1C7BE43C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C7BE44D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C7C7D7D4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C7BE44D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C7BE451C(a1, a2);
  sub_1C7BE464C(&unk_1F474F610);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C7BE451C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C7BE4738(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C7C7D7D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C7C7D3A4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C7BE4738(v10, 0);
        result = sub_1C7C7D784();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C7BE464C(uint64_t result)
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

  result = sub_1C7BE47AC(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_1C7BE4738(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262E70, &unk_1C7C87E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C7BE47AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC262E70, &unk_1C7C87E40);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_1C7BE48DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C7BE4974()
{
  result = qword_1EC264000;
  if (!qword_1EC264000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264000);
  }

  return result;
}

uint64_t sub_1C7BE49C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C7BDF778(a1, a2);
  }

  return a1;
}

uint64_t sub_1C7BE49F8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C7C7DAA4() & 1;
  }
}

BOOL _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_26;
      }

      v9 = *a1;
      if (v3 != v5 || v2 != v6)
      {
        v11 = sub_1C7C7DAA4();
        sub_1C7BDF708(v5, v6, 2u);
        sub_1C7BDF708(v3, v2, 2u);
        sub_1C7BEA9D8(v3, v2, 2u);
        v12 = v5;
        v13 = v6;
        v14 = 2;
        goto LABEL_18;
      }

      sub_1C7BDF708(v9, v2, 2u);
      sub_1C7BDF708(v3, v2, 2u);
      sub_1C7BEA9D8(v3, v2, 2u);
      v20 = v3;
      v22 = v2;
      v23 = 2;
    }

    else
    {
      v18 = *a1;
      switch(v3)
      {
        case 1:
          if (v7 != 3 || v5 != 1 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v8 = 1;
          sub_1C7BEA9D8(1, 0, 3u);
          return v8;
        case 2:
          if (v7 != 3 || v5 != 2 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 2;
          goto LABEL_265;
        case 3:
          if (v7 != 3 || v5 != 3 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 3;
          goto LABEL_265;
        case 4:
          if (v7 != 3 || v5 != 4 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 4;
          goto LABEL_265;
        case 5:
          if (v7 != 3 || v5 != 5 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 5;
          goto LABEL_265;
        case 6:
          if (v7 != 3 || v5 != 6 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 6;
          goto LABEL_265;
        case 7:
          if (v7 != 3 || v5 != 7 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 7;
          goto LABEL_265;
        case 8:
          if (v7 != 3 || v5 != 8 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 8;
          goto LABEL_265;
        case 9:
          if (v7 != 3 || v5 != 9 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 9;
          goto LABEL_265;
        case 10:
          if (v7 != 3 || v5 != 10 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 10;
          goto LABEL_265;
        case 11:
          if (v7 != 3 || v5 != 11 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 11;
          goto LABEL_265;
        case 12:
          if (v7 != 3 || v5 != 12 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 12;
          goto LABEL_265;
        case 13:
          if (v7 != 3 || v5 != 13 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 13;
          goto LABEL_265;
        case 14:
          if (v7 != 3 || v5 != 14 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 14;
          goto LABEL_265;
        case 15:
          if (v7 != 3 || v5 != 15 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 15;
          goto LABEL_265;
        case 16:
          if (v7 != 3 || v5 != 16 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 16;
          goto LABEL_265;
        case 17:
          if (v7 != 3 || v5 != 17 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 17;
          goto LABEL_265;
        case 18:
          if (v7 != 3 || v5 != 18 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 18;
          goto LABEL_265;
        case 19:
          if (v7 != 3 || v5 != 19 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 19;
          goto LABEL_265;
        case 20:
          if (v7 != 3 || v5 != 20 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 20;
          goto LABEL_265;
        case 21:
          if (v7 != 3 || v5 != 21 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 21;
          goto LABEL_265;
        case 22:
          if (v7 != 3 || v5 != 22 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 22;
          goto LABEL_265;
        case 23:
          if (v7 != 3 || v5 != 23 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 23;
          goto LABEL_265;
        case 24:
          if (v7 != 3 || v5 != 24 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 24;
          goto LABEL_265;
        case 25:
          if (v7 != 3 || v5 != 25 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 25;
          goto LABEL_265;
        case 26:
          if (v7 != 3 || v5 != 26 || v6 != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 26;
          goto LABEL_265;
        default:
          if (v7 != 3 || (v6 | v5) != 0)
          {
            goto LABEL_27;
          }

          sub_1C7BEA9D8(*a1, v2, 3u);
          v20 = 0;
LABEL_265:
          v22 = 0;
          v23 = 3;
          break;
      }
    }

    sub_1C7BEA9D8(v20, v22, v23);
    return 1;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      if (v3 == v5 && v2 == v6)
      {
        v8 = 1;
        sub_1C7BDF708(*a1, v2, 1u);
        sub_1C7BDF708(v3, v2, 1u);
        sub_1C7BEA9D8(v3, v2, 1u);
        sub_1C7BEA9D8(v3, v2, 1u);
        return v8;
      }

      v16 = *a1;
      v11 = sub_1C7C7DAA4();
      sub_1C7BDF708(v5, v6, 1u);
      sub_1C7BDF708(v3, v2, 1u);
      sub_1C7BEA9D8(v3, v2, 1u);
      v12 = v5;
      v13 = v6;
      v14 = 1;
LABEL_18:
      sub_1C7BEA9D8(v12, v13, v14);
      return v11 & 1;
    }

LABEL_26:
    v21 = *(a1 + 8);

    goto LABEL_27;
  }

  if (*(a2 + 16))
  {
LABEL_27:
    sub_1C7BDF708(v5, v6, v7);
    sub_1C7BEA9D8(v3, v2, v4);
    sub_1C7BEA9D8(v5, v6, v7);
    return 0;
  }

  sub_1C7BEA9D8(*a1, v2, 0);
  sub_1C7BEA9D8(v5, v6, 0);
  return v5 == v3;
}