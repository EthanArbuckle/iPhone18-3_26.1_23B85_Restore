uint64_t sub_230D41368(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 128) = *(a2 + 16);
  *(v4 + 144) = v5;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  v7 = *(a2 + 8);
  *(v4 + 112) = *a2;
  *(v4 + 120) = v7;
  *(v4 + 160) = v6;
  *(v4 + 176) = *(a3 + 4);
  return MEMORY[0x2822009F8](sub_230D413A8, v3, 0);
}

uint64_t sub_230D413A8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    *(v0 + 192) = v1;
    *(v0 + 200) = v2;
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_230D417E4;
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v18 = *(v0 + 104);

    JUMPOUT(0x230D71ACCLL);
  }

  *(v0 + 216) = 1;
  v15 = swift_task_alloc();
  *(v0 + 184) = v15;
  *v15 = v0;
  v15[1] = sub_230D41588;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 216), 0, 0);
}

uint64_t sub_230D41588()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D41698, v2, 0);
}

void sub_230D41698()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 192) = v3;
  *(v0 + 200) = v6;
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 120);
  *(v0 + 16) = v1;
  v14 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v12, v10, v9);
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_230D417E4;
  v16 = *(v0 + 128);
  v17 = *(v0 + 136);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);
  v22 = *(v0 + 104);

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D417E4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_230D41918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_230D41940, a6, 0);
}

const char *sub_230D41940()
{
  v26 = v0;
  v1 = *(v0 + 56);
  sub_230E68950();
  v2 = sub_230D40A38();
  if (*(v2 + 16) && (v3 = sub_230DA41A0(*(v0 + 24), *(v0 + 32)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 48);
    v6 = (*(v2 + 56) + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];

    strcpy(v25, "DELETE FROM  ");
    HIWORD(v25[1]) = -4864;

    MEMORY[0x23191DA00](v8, v7);
    v10 = v25[0];
    v11 = v25[1];
    v23 = v25[0];
    v24 = v25[1];
    if (v5)
    {
      v12 = *(v0 + 40);
      strcpy(v25, " WHERE ");
      v25[1] = 0xE700000000000000;
      MEMORY[0x23191DA00](v12, v5);
      MEMORY[0x23191DA00](v25[0], 0xE700000000000000);

      v10 = v23;
      v11 = v24;
    }

    else
    {
    }

    v14 = *(v0 + 56);
    v15 = sub_230D3D1E0(v10, v11);

    if (sqlite3_step(v15) != 101)
    {
      v22 = *(v0 + 56);
      return sub_230D43970();
    }

    v18 = *(v0 + 56);
    v19 = *(v0 + 16);

    v20 = sqlite3_changes(*(v18 + 112));
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000030, 0x8000000230E81800);
    *(v0 + 64) = v20;
    v21 = sub_230E69890();
    MEMORY[0x23191DA00](v21);

    MEMORY[0x23191DA00](0x7364726F63657220, 0xE800000000000000);
    sub_230E68950();

    *v19 = v20;
    sqlite3_finalize(v15);
    v16 = *(v0 + 8);
  }

  else
  {

    sub_230D0D224();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    swift_willThrow();
    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_230D41CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 112) = *a2;
  *(v4 + 120) = *(a2 + 8);
  *(v4 + 136) = *(a2 + 24);
  v5 = *(a3 + 16);
  *(v4 + 144) = *a3;
  *(v4 + 160) = v5;
  *(v4 + 176) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D41CE8, v3, 0);
}

uint64_t sub_230D41CE8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    *(v0 + 192) = v1;
    *(v0 + 200) = v2;
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_230D45220;
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);
    v19 = *(v0 + 104);

    JUMPOUT(0x230D70398);
  }

  *(v0 + 216) = 3;
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_230D41ED4;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 216), 0, 0);
}

uint64_t sub_230D41ED4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D41FE4, v2, 0);
}

void sub_230D41FE4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 192) = v3;
  *(v0 + 200) = v6;
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  *(v0 + 16) = v1;
  v15 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v12, v10, v9);
  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  *v16 = v0;
  v16[1] = sub_230D45220;
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  v23 = *(v0 + 104);

  JUMPOUT(0x230D70398);
}

uint64_t sub_230D4213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  return MEMORY[0x2822009F8](sub_230D42164, a6, 0);
}

uint64_t sub_230D42164()
{
  v94 = v0;
  v1 = *(v0 + 320);
  sub_230E68950();
  v2 = sub_230D40A38();
  if (!*(v2 + 16) || (v3 = sub_230DA41A0(*(v0 + 288), *(v0 + 296)), (v4 & 1) == 0))
  {

    sub_230D0D224();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    swift_willThrow();
LABEL_5:
    v14 = *(v0 + 8);
    goto LABEL_6;
  }

  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v2 + 56) + 24 * v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);

  v91 = v8;
  v92 = v9;
  v93 = v10;
  v11 = sub_230D42D70(v6);
  v16 = sub_230D3D1E0(v11, v12);
  v17 = *(v0 + 304);
  v91 = v8;
  v92 = v9;
  v93 = v10;
  sub_230D4372C();
  v19 = v18;
  v85 = *(v17 + 16);
  if (!v85)
  {
LABEL_54:
    v55 = *(v0 + 280);

    v91 = 0;
    v92 = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000032, 0x8000000230E81750);
    *(v0 + 16) = v85;
    v56 = sub_230E69890();
    MEMORY[0x23191DA00](v56);

    MEMORY[0x23191DA00](0x7364726F63657220, 0xE800000000000000);
    sub_230E68950();

    *v55 = v85;
    sqlite3_finalize(v16);
    v14 = *(v0 + 8);
LABEL_6:

    return v14();
  }

  v20 = 0;
  v21 = *(v0 + 304) + 32;
  v22 = v18 + 56;
  pStmt = v16;
  v81 = v21;
  while (1)
  {
    v82 = v20;
    v23 = *(v21 + 8 * v20);

    sqlite3_clear_bindings(v16);
    v91 = v10;

    sub_230D4434C(&v91);
    result = v91;
    v86 = *(v91 + 2);
    if (v86)
    {
      break;
    }

LABEL_52:

    if (sqlite3_step(v16) != 101)
    {
      v71 = *(v0 + 320);
      return sub_230D43970();
    }

    v20 = v82 + 1;

    sqlite3_reset(v16);
    v21 = v81;
    if (v82 + 1 == v85)
    {
      goto LABEL_54;
    }
  }

  v24 = 0;
  v89 = v91 + 32;
  v90 = v23;
  v88 = v91;
  while (1)
  {
    if (v24 >= *(result + 16))
    {
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
      goto LABEL_76;
    }

    v25 = &v89[88 * v24];
    v26 = *v25;
    *(v0 + 120) = *(v25 + 1);
    *(v0 + 104) = v26;
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = *(v25 + 4);
    *(v0 + 184) = *(v25 + 40);
    *(v0 + 168) = v29;
    *(v0 + 152) = v28;
    *(v0 + 136) = v27;
    v30 = v24 + 1;
    result = memmove((v0 + 16), v25, 0x52uLL);
    v31 = *(v0 + 16);
    v32 = *(v0 + 24);
    if (!*(v23 + 16))
    {
      if (v24 > 0x7FFFFFFE)
      {
        goto LABEL_71;
      }

      sub_230D2C310(v0 + 104, v0 + 192);

      goto LABEL_29;
    }

    sub_230D2C310(v0 + 104, v0 + 192);

    result = sub_230DA41A0(v31, v32);
    if ((v33 & 1) == 0)
    {
      break;
    }

    if (v24 > 0x7FFFFFFE)
    {
      goto LABEL_73;
    }

    v34 = *(v90 + 56) + 24 * result;
    v36 = *v34;
    v35 = *(v34 + 8);
    v37 = *(v34 + 16);
    v84 = v35;
    v83 = *(v34 + 16);
    if (*(v0 + 32) > 1u)
    {
      if (*(v0 + 32) == 2)
      {
        if (v37 != 2)
        {
          v72 = *v34;
          v73 = *(v34 + 16);
          sub_230D0DCD8(v36, v35, v37);

          v91 = 0;
          v92 = 0xE000000000000000;
          v74 = v35;
          sub_230E69540();

          v76 = 0x8000000230E816D0;
          v77 = 0xD000000000000022;
          goto LABEL_69;
        }

        sub_230D0DCD8(v36, v35, 2);

        if (v35)
        {
          goto LABEL_49;
        }

        v16 = pStmt;
        v38 = v36;
        v42 = sqlite3_bind_int64(pStmt, v30, v36);
      }

      else
      {
        if (v37 != 3)
        {
          v72 = *v34;
          v73 = *(v34 + 16);
          sub_230D0DCD8(v36, v35, v37);

          v91 = 0;
          v92 = 0xE000000000000000;
          v74 = v35;
          sub_230E69540();

          v75 = "Expected text value for column ";
          goto LABEL_67;
        }

        sub_230D0DCD8(v36, v35, 3);

        if (!v35)
        {
          goto LABEL_49;
        }

        v50 = sub_230E69030();
        v51 = v35;
        v52 = v50;
        v38 = v36;
        sub_230D0F474(v36, v51, 3);
        v53 = [v52 UTF8String];
        v54 = v52;
        v16 = pStmt;
        v42 = sqlite3_bind_text(pStmt, v30, v53, -1, 0);
      }
    }

    else
    {
      if (!*(v0 + 32))
      {
        if (*(v34 + 16))
        {
          v72 = *v34;
          v73 = *(v34 + 16);
          sub_230D0DCD8(v36, v35, v37);

          v91 = 0;
          v92 = 0xE000000000000000;
          v74 = v35;
          sub_230E69540();

          v75 = "Expected blob value for column ";
LABEL_67:
          v76 = (v75 - 32) | 0x8000000000000000;
          v77 = 0xD00000000000001FLL;
LABEL_69:
          v91 = v77;
          v92 = v76;
          MEMORY[0x23191DA00](v31, v32);

          v78 = v91;
          v79 = v92;
          sub_230D0D224();
          swift_allocError();
          *v80 = v78;
          *(v80 + 8) = v79;
          *(v80 + 16) = 1;
          swift_willThrow();
          sub_230D0F474(v72, v74, v73);
          goto LABEL_56;
        }

        sub_230D0DCD8(v36, v35, 0);
        sub_230D0DCF8(v36, v35);

        if (v35 >> 60 != 15)
        {
          v38 = v36;
          v39 = sub_230E68880();
          v40 = [v39 bytes];
          result = [v39 length];
          v16 = pStmt;
          if (result < 0xFFFFFFFF80000000)
          {
            goto LABEL_74;
          }

          if (result > 0x7FFFFFFF)
          {
            goto LABEL_75;
          }

          v41 = sqlite3_bind_blob(pStmt, v30, v40, result, 0);
          sub_230D0F474(v38, v84, 0);

          v42 = v41;
          goto LABEL_50;
        }

LABEL_49:
        v38 = v36;
        v16 = pStmt;
        v42 = sqlite3_bind_null(pStmt, v30);
        goto LABEL_50;
      }

      if (v37 != 1)
      {
        v72 = *v34;
        v73 = *(v34 + 16);
        sub_230D0DCD8(v36, v35, v37);

        v91 = 0;
        v92 = 0xE000000000000000;
        v74 = v35;
        sub_230E69540();

        v76 = 0x8000000230E81700;
        v77 = 0xD000000000000021;
        goto LABEL_69;
      }

      sub_230D0DCD8(v36, v35, 1);

      if (v35)
      {
        goto LABEL_49;
      }

      v38 = v36;
      v16 = pStmt;
      v42 = sqlite3_bind_double(pStmt, v30, *&v36);
    }

LABEL_50:
    v23 = v90;
    if (v42)
    {
      v66 = *(v0 + 320);

      result = sqlite3_errmsg(*(v66 + 112));
      if (result)
      {
        v67 = sub_230E69120();
        v69 = v68;
        sub_230D0D224();
        swift_allocError();
        *v70 = v67;
        *(v70 + 8) = v69;
        *(v70 + 16) = 2;
        swift_willThrow();
        sub_230D0F474(v38, v84, v83);
        goto LABEL_62;
      }

      goto LABEL_77;
    }

    sub_230D0F474(v38, v84, v83);
LABEL_14:
    sub_230D2C348(v0 + 16);
    v24 = v30;
    result = v88;
    if (v30 == v86)
    {
      goto LABEL_52;
    }
  }

  if (v24 > 0x7FFFFFFE)
  {
    goto LABEL_72;
  }

LABEL_29:
  if (*(v19 + 16))
  {
    v43 = *(v19 + 40);
    sub_230E699B0();
    sub_230E69100();
    v44 = sub_230E699D0();
    v45 = -1 << *(v19 + 32);
    v46 = v44 & ~v45;
    if ((*(v22 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
    {
      v47 = ~v45;
      while (1)
      {
        v48 = (*(v19 + 48) + 16 * v46);
        v49 = *v48 == v31 && v48[1] == v32;
        if (v49 || (sub_230E698C0() & 1) != 0)
        {
          break;
        }

        v46 = (v46 + 1) & v47;
        if (((*(v22 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v91 = 0;
      v92 = 0xE000000000000000;
      sub_230E69540();

      v91 = 0xD000000000000022;
      v92 = 0x8000000230E81680;
      MEMORY[0x23191DA00](v31, v32);

      v57 = v91;
      v58 = v92;
      sub_230D0D224();
      swift_allocError();
      *v59 = v57;
      *(v59 + 8) = v58;
      *(v59 + 16) = 1;
      swift_willThrow();
LABEL_56:
      sub_230D2C348(v0 + 16);
      v60 = pStmt;
LABEL_57:
      sqlite3_finalize(v60);
      goto LABEL_5;
    }
  }

LABEL_13:

  v16 = pStmt;
  v23 = v90;
  if (!sqlite3_bind_null(pStmt, v30))
  {
    goto LABEL_14;
  }

  v61 = *(v0 + 320);

  result = sqlite3_errmsg(*(v61 + 112));
  if (result)
  {
    v62 = sub_230E69120();
    v64 = v63;
    sub_230D0D224();
    swift_allocError();
    *v65 = v62;
    *(v65 + 8) = v64;
    *(v65 + 16) = 2;
    swift_willThrow();
LABEL_62:
    sub_230D2C348(v0 + 16);
    v60 = v16;
    goto LABEL_57;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_230D42D70(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *&v110 = v1[2];

  sub_230D4434C(&v110);
  v101 = v4;
  v102 = v3;
  v5 = v110;
  v6 = *(v110 + 16);
  v7 = MEMORY[0x277D84F90];
  v106 = v110;
  if (v6)
  {
    *&v110 = MEMORY[0x277D84F90];
    sub_230D48880(0, v6, 0);
    v7 = v110;
    v8 = (v5 + 40);
    v9 = v6;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      *&v110 = v7;
      v12 = *(v7 + 16);
      v13 = *(v7 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_230D48880((v13 > 1), v12 + 1, 1);
        v7 = v110;
      }

      *(v7 + 16) = v12 + 1;
      v14 = v7 + 16 * v12;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += 11;
      --v9;
    }

    while (v9);
  }

  *&v110 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v97 = sub_230E68FF0();
  v98 = v15;

  *&v110 = sub_230D45184(0x3F, 0xE100000000000000, v6);
  v99 = sub_230E68FF0();
  v100 = v16;

  v17 = *(v106 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v19 = 0;
  v20 = v106 + 32;
  v21 = v17 - 1;
  v22 = MEMORY[0x277D84F90];
LABEL_8:
  v23 = v20 + 88 * v19;
  v24 = v19;
  while (v24 < *(v106 + 16))
  {
    v26 = *(v23 + 48);
    v25 = *(v23 + 64);
    v27 = *(v23 + 80);
    v112 = *(v23 + 32);
    v28 = *(v23 + 16);
    v110 = *v23;
    v111 = v28;
    v115 = v27;
    v113 = v26;
    v114 = v25;
    v19 = v24 + 1;
    if (BYTE11(v112))
    {
      v29 = v21;
      sub_230D2C310(&v110, v109);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_230D488A0(0, v22[2] + 1, 1);
      }

      v21 = v29;
      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        sub_230D488A0((v30 > 1), v31 + 1, 1);
        v21 = v29;
      }

      v22[2] = v31 + 1;
      v32 = &v22[11 * v31];
      v33 = v111;
      *(v32 + 2) = v110;
      *(v32 + 3) = v33;
      v34 = v112;
      v35 = v113;
      v36 = v114;
      *(v32 + 56) = v115;
      *(v32 + 5) = v35;
      *(v32 + 6) = v36;
      *(v32 + 4) = v34;
      v18 = MEMORY[0x277D84F90];
      if (v21 == v24)
      {
LABEL_20:
        v37 = v22[2];
        if (v37)
        {
          *&v110 = v18;
          sub_230D48880(0, v37, 0);
          v38 = v110;
          v39 = v22 + 5;
          do
          {
            v40 = *(v39 - 1);
            v41 = *v39;
            *&v110 = v38;
            v43 = *(v38 + 16);
            v42 = *(v38 + 24);

            if (v43 >= v42 >> 1)
            {
              sub_230D48880((v42 > 1), v43 + 1, 1);
              v38 = v110;
            }

            *(v38 + 16) = v43 + 1;
            v44 = v38 + 16 * v43;
            *(v44 + 32) = v40;
            *(v44 + 40) = v41;
            v39 += 11;
            --v37;
          }

          while (v37);

          *&v110 = v38;
          v96 = sub_230E68FF0();
          v46 = v45;

          v47 = v106;
          v48 = *(v106 + 16);
          v49 = MEMORY[0x277D84F90];
          if (v48)
          {
            v50 = 0;
            v51 = v106 + 32;
            v52 = v48 - 1;
            v53 = MEMORY[0x277D84F90];
            do
            {
              v54 = (v51 + 88 * v50);
              v20 = v50;
              while (1)
              {
                if (v20 >= *(v47 + 16))
                {
                  goto LABEL_69;
                }

                v56 = v54[3];
                v55 = v54[4];
                v57 = *(v54 + 40);
                v112 = v54[2];
                v58 = v54[1];
                v110 = *v54;
                v111 = v58;
                v115 = v57;
                v113 = v56;
                v114 = v55;
                v50 = v20 + 1;
                if ((BYTE11(v112) & 1) == 0)
                {
                  break;
                }

                v54 = (v54 + 88);
                ++v20;
                if (v48 == v50)
                {
                  goto LABEL_40;
                }
              }

              v104 = v51;
              v59 = v52;
              sub_230D2C310(&v110, v109);
              v108 = v53;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_230D488A0(0, *(v53 + 16) + 1, 1);
              }

              v52 = v59;
              v60 = v53;
              v61 = *(v53 + 16);
              v62 = *(v60 + 24);
              if (v61 >= v62 >> 1)
              {
                sub_230D488A0((v62 > 1), v61 + 1, 1);
                v52 = v59;
                v60 = v108;
              }

              *(v60 + 16) = v61 + 1;
              v63 = v60 + 88 * v61;
              v64 = v111;
              *(v63 + 32) = v110;
              *(v63 + 48) = v64;
              v65 = v112;
              v66 = v113;
              v67 = v114;
              *(v63 + 112) = v115;
              *(v63 + 80) = v66;
              *(v63 + 96) = v67;
              *(v63 + 64) = v65;
              v53 = v60;
              v51 = v104;
              v47 = v106;
            }

            while (v52 != v20);
          }

          else
          {
            v53 = MEMORY[0x277D84F90];
          }

LABEL_40:

          v20 = *(v53 + 16);
          if (v20)
          {
            v95 = v46;
            sub_230D48880(0, v20, 0);
            if (*(v53 + 16))
            {
              v68 = 0;
              v69 = v49;
              v103 = v53 + 32;
              v105 = v20;
              v70 = a1 + 56;
              v71 = 1;
              v107 = v53;
              while (1)
              {
                v72 = (v103 + 88 * v68);
                v68 = v71;
                v73 = v72[1];
                v110 = *v72;
                v111 = v73;
                v74 = v72[2];
                v75 = v72[3];
                v76 = v72[4];
                v115 = *(v72 + 40);
                v113 = v75;
                v114 = v76;
                v112 = v74;
                v77 = v110;
                if (a1)
                {
                  if (!*(a1 + 16))
                  {
                    sub_230D2C310(&v110, v109);
LABEL_56:
                    v109[0] = v77;

                    v85 = 2112800;
                    v86 = 0xE300000000000000;
                    goto LABEL_59;
                  }

                  v78 = *(a1 + 40);
                  sub_230E699B0();
                  sub_230D2C310(&v110, v109);
                  sub_230E69100();
                  v79 = sub_230E699D0();
                  v80 = -1 << *(a1 + 32);
                  v81 = v79 & ~v80;
                  if (((*(v70 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  v82 = ~v80;
                  while (1)
                  {
                    v83 = (*(a1 + 48) + 16 * v81);
                    v84 = *v83 == v77 && v83[1] == *(&v77 + 1);
                    if (v84 || (sub_230E698C0() & 1) != 0)
                    {
                      break;
                    }

                    v81 = (v81 + 1) & v82;
                    if (((*(v70 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  *&v109[0] = 0;
                  *(&v109[0] + 1) = 0xE000000000000000;
                  sub_230E69540();
                }

                else
                {
                  sub_230D2C310(&v110, v109);
                  sub_230E69540();
                }

                v109[0] = v77;
                v85 = 0x756C637865203D20;
                v86 = 0xEC0000002E646564;
LABEL_59:
                MEMORY[0x23191DA00](v85, v86);
                MEMORY[0x23191DA00](v77, *(&v77 + 1));
                sub_230D2C348(&v110);
                v20 = *(&v109[0] + 1);
                v87 = *&v109[0];
                v89 = *(v69 + 16);
                v88 = *(v69 + 24);
                if (v89 >= v88 >> 1)
                {
                  sub_230D48880((v88 > 1), v89 + 1, 1);
                }

                *(v69 + 16) = v89 + 1;
                v90 = v69 + 16 * v89;
                *(v90 + 32) = v87;
                *(v90 + 40) = v20;
                if (v68 == v105)
                {

                  *&v109[0] = v69;
                  v91 = sub_230E68FF0();
                  v93 = v92;

                  *&v109[0] = 0;
                  *(&v109[0] + 1) = 0xE000000000000000;
                  sub_230E69540();
                  MEMORY[0x23191DA00](0x4920545245534E49, 0xEC000000204F544ELL);
                  MEMORY[0x23191DA00](v101, v102);
                  MEMORY[0x23191DA00](10272, 0xE200000000000000);
                  MEMORY[0x23191DA00](v97, v98);

                  MEMORY[0x23191DA00](0x5345554C41562029, 0xEA00000000002820);
                  MEMORY[0x23191DA00](v99, v100);

                  MEMORY[0x23191DA00](0x4E4F43204E4F2029, 0xEE00285443494C46);
                  MEMORY[0x23191DA00](v96, v95);

                  MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E81790);
                  MEMORY[0x23191DA00](v91, v93);

                  return *&v109[0];
                }

                v71 = v68 + 1;
                if (v68 >= *(v107 + 16))
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_68;
          }

          *&v110 = 0;
          *(&v110 + 1) = 0xE000000000000000;
          sub_230E69540();

          *&v110 = 0xD000000000000016;
          *(&v110 + 1) = 0x8000000230E817B0;
        }

        else
        {

          *&v110 = 0;
          *(&v110 + 1) = 0xE000000000000000;
          sub_230E69540();

          strcpy(&v110, "INSERT INTO ");
          BYTE13(v110) = 0;
          HIWORD(v110) = -5120;
        }

        MEMORY[0x23191DA00](v101, v102);
        MEMORY[0x23191DA00](10272, 0xE200000000000000);
        MEMORY[0x23191DA00](v97, v98);

        MEMORY[0x23191DA00](0x5345554C41562029, 0xEA00000000002820);
        MEMORY[0x23191DA00](v99, v100);

        MEMORY[0x23191DA00](41, 0xE100000000000000);
        return v110;
      }

      goto LABEL_8;
    }

    v23 += 88;
    ++v24;
    if (v17 == v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  MEMORY[0x23191E910](v20);

  __break(1u);
  return result;
}

void sub_230D4372C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v1 + 16);
      v8 = (v5 + 88 * v4);
      v9 = v4;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          return;
        }

        v11 = v8[3];
        v10 = v8[4];
        v12 = *(v8 + 40);
        v34 = v8[2];
        v13 = v8[1];
        v32 = *v8;
        v33 = v13;
        v37 = v12;
        v35 = v11;
        v36 = v10;
        v4 = v9 + 1;
        if ((BYTE9(v34) & 1) == 0)
        {
          break;
        }

        v8 = (v8 + 88);
        ++v9;
        if (v2 == v4)
        {
          goto LABEL_15;
        }
      }

      v30 = v5;
      sub_230D2C310(&v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_230D488A0(0, v6[2] + 1, 1);
        v6 = v38;
      }

      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_230D488A0((v15 > 1), v16 + 1, 1);
        v6 = v38;
      }

      v6[2] = v16 + 1;
      v17 = &v6[11 * v16];
      v18 = v33;
      *(v17 + 2) = v32;
      *(v17 + 3) = v18;
      v19 = v34;
      v20 = v35;
      v21 = v36;
      *(v17 + 56) = v37;
      *(v17 + 5) = v20;
      *(v17 + 6) = v21;
      *(v17 + 4) = v19;
      v5 = v30;
    }

    while (v2 - 1 != v9);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v22 = v6[2];
  if (v22)
  {
    *&v32 = v3;
    sub_230D48880(0, v22, 0);
    v23 = v32;
    v24 = v6 + 5;
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      *&v32 = v23;
      v27 = *(v23 + 16);
      v28 = *(v23 + 24);

      if (v27 >= v28 >> 1)
      {
        sub_230D48880((v28 > 1), v27 + 1, 1);
        v23 = v32;
      }

      *(v23 + 16) = v27 + 1;
      v29 = v23 + 16 * v27;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v24 += 11;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  sub_230D0ABEC(v23);
}

const char *sub_230D43970()
{
  v1 = *(v0 + 112);
  result = sqlite3_errmsg(v1);
  if (result)
  {
    v3 = sub_230E69120();
    v5 = v4;
    v6 = sqlite3_errcode(v1);
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E811F0);
    v7 = sub_230E69890();
    MEMORY[0x23191DA00](v7);

    MEMORY[0x23191DA00](0x67617373656D202CLL, 0xEB00000000203A65);
    MEMORY[0x23191DA00](v3, v5);
    sub_230E68950();

    if (v6 == 19)
    {
      sub_230E68950();
      sub_230D0D278();
      if (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E81410;
        v10 = 0xD000000000000021;
      }

      else if (sub_230E69490() & 1) != 0 || (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E813E0;
        v10 = 0xD00000000000002BLL;
      }

      else if (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E813C0;
        v10 = 0xD00000000000001ELL;
      }

      else if (sub_230E69490())
      {
        sub_230E69540();

        v9 = 0x8000000230E813A0;
        v10 = 0xD00000000000001BLL;
      }

      else
      {
        sub_230E69540();

        v9 = 0x8000000230E81380;
        v10 = 0xD000000000000015;
      }

      v12 = v10;
      v13 = v9;
      MEMORY[0x23191DA00](v3, v5);

      v3 = v12;
      v5 = v13;
      v8 = 5;
    }

    else
    {
      sub_230E68950();
      if (v6 == 8)
      {
        sub_230E69540();
        MEMORY[0x23191DA00](0xD000000000000038, 0x8000000230E81480);
        MEMORY[0x23191DA00](v3, v5);

        v3 = 0;
        v5 = 0xE000000000000000;
        v8 = 6;
      }

      else
      {
        v8 = 2;
      }
    }

    sub_230D0D224();
    swift_allocError();
    *v11 = v3;
    *(v11 + 8) = v5;
    *(v11 + 16) = v8;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_230D43E04(uint64_t a1)
{
  result = sub_230D43E2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_230D43E2C()
{
  result = qword_27DB5B0B0;
  if (!qword_27DB5B0B0)
  {
    type metadata accessor for SQLDatabaseClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0B0);
  }

  return result;
}

uint64_t type metadata accessor for SQLDatabaseClient()
{
  result = qword_281566638;
  if (!qword_281566638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230D43ED8()
{
  result = type metadata accessor for SQLDatabaseConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SQLDatabaseClient.fetchFromDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_230D1BF00;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of SQLDatabaseClient.deleteFromDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_230D1D2F8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of SQLDatabaseClient.upsertIntoDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_230D1D2F8;

  return v12(a1, a2, a3);
}

uint64_t sub_230D4434C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_230D450F4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_230D4441C(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_230D443B8()
{
  result = qword_281565F50;
  if (!qword_281565F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D8F0, &unk_230E70E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F50);
  }

  return result;
}

uint64_t sub_230D4441C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230E69880();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_230E69270();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_230D44640(v7, v8, a1, v4);
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
    return sub_230D44514(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_230D44514(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 88);
      v12 = *v10 == *(v10 - 88) && *(v10 + 8) == *(v10 - 80);
      if (v12 || (result = sub_230E698C0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 88;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v21 = *(v10 + 80);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 40);
      *(v10 + 32) = *(v10 - 56);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 24);
      *(v10 + 80) = *(v10 - 8);
      v14 = *(v10 - 72);
      *v10 = *v11;
      *(v10 + 16) = v14;
      *(v10 - 56) = v18;
      *(v10 - 40) = v19;
      *(v10 - 24) = v20;
      *(v10 - 8) = v21;
      v10 -= 88;
      *v11 = v16;
      v11[1] = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_230D44640(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  __dst = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_230D44FDC(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (1)
      {
        v88 = *v6;
        if (!*v6)
        {
          goto LABEL_143;
        }

        v89 = &v9[16 * v87];
        v6 = *v89;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_230D44CB8((v88 + 88 * *v89), (v88 + 88 * *v90), (v88 + 88 * v91), __dst);
        if (v5)
        {
        }

        if (v91 < v6)
        {
          goto LABEL_131;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_132;
        }

        *v89 = v6;
        *(v89 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_133;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        v6 = a3;
        if (v87 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 88 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 88 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_230E698C0();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 88 * v10 + 96);
        v18 = v17;
        do
        {
          result = v17[10];
          v20 = v18[11];
          v18 += 11;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_230E698C0();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v22 = 88 * v8 - 88;
          v23 = v10;
          v24 = 88 * v10;
          v25 = v8;
          v94 = v23;
          do
          {
            if (v23 != --v25)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v26 = v27 + v22;
              v103 = *(v27 + v24 + 32);
              v105 = *(v27 + v24 + 48);
              v107 = *(v27 + v24 + 64);
              v109 = *(v27 + v24 + 80);
              v99 = *(v27 + v24);
              v101 = *(v27 + v24 + 16);
              result = memmove((v27 + v24), (v27 + v22), 0x58uLL);
              *(v26 + 32) = v103;
              *(v26 + 48) = v105;
              *(v26 + 64) = v107;
              *(v26 + 80) = v109;
              *v26 = v99;
              *(v26 + 16) = v101;
            }

            ++v23;
            v22 -= 88;
            v24 += 88;
          }

          while (v23 < v25);
          v10 = v94;
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_230D44FF0(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_230D44FF0((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *__dst;
    if (!*__dst)
    {
      goto LABEL_144;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_76:
          if (v48)
          {
            goto LABEL_122;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_125;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_129;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_90:
        if (v66)
        {
          goto LABEL_124;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_127;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_97:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_230D44CB8((*v6 + 88 * v83), (*v6 + 88 * *&v9[16 * v44 + 32]), (*v6 + 88 * v84), v43);
        if (v5)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_230D44FDC(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_230D44F50(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_120;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_121;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_123;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_126;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_130;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  v93 = v5;
  if (v10 + a4 >= v28)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v5)
  {
LABEL_55:
    v5 = v93;
    goto LABEL_56;
  }

  v29 = *v6;
  v30 = *v6 + 88 * v8;
  v95 = v10;
  v31 = v10 - v8;
LABEL_44:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 88);
    v35 = *v33 == *(v33 - 88) && *(v33 + 8) == *(v33 - 80);
    if (v35 || (result = sub_230E698C0(), (result & 1) == 0))
    {
LABEL_43:
      ++v8;
      v30 += 88;
      --v31;
      if (v8 != v5)
      {
        goto LABEL_44;
      }

      v8 = v5;
      v6 = a3;
      v10 = v95;
      goto LABEL_55;
    }

    if (!v29)
    {
      break;
    }

    v104 = *(v33 + 32);
    v106 = *(v33 + 48);
    v108 = *(v33 + 64);
    v110 = *(v33 + 80);
    v100 = *v33;
    v102 = *(v33 + 16);
    v36 = *(v33 - 40);
    *(v33 + 32) = *(v33 - 56);
    *(v33 + 48) = v36;
    *(v33 + 64) = *(v33 - 24);
    *(v33 + 80) = *(v33 - 8);
    v37 = *(v33 - 72);
    *v33 = *v34;
    *(v33 + 16) = v37;
    *(v33 - 56) = v104;
    *(v33 - 40) = v106;
    *(v33 - 24) = v108;
    *(v33 - 8) = v110;
    v33 -= 88;
    *v34 = v100;
    v34[1] = v102;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_230D44CB8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 < v11)
  {
    v12 = 88 * v9;
    if (__dst != __src || &__src[v12] <= __dst)
    {
      memmove(__dst, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 88 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v14 || (sub_230E698C0() & 1) == 0)
      {
        break;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 88;
      if (!v14)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 88;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v15 = v4;
    v14 = v7 == v4;
    v4 += 88;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v15, 0x58uLL);
    goto LABEL_17;
  }

  v16 = 88 * v11;
  if (__dst != a2 || &a2[v16] <= __dst)
  {
    memmove(__dst, a2, 88 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 88 && v6 > v7)
  {
    do
    {
      v17 = v6 - 88;
      v5 -= 88;
      v18 = v13;
      while (1)
      {
        v19 = *(v18 - 11);
        v20 = *(v18 - 10);
        v18 -= 88;
        v21 = v19 == *(v6 - 11) && v20 == *(v6 - 10);
        if (!v21 && (sub_230E698C0() & 1) != 0)
        {
          break;
        }

        if (v5 + 88 != v13)
        {
          memmove(v5, v18, 0x58uLL);
        }

        v5 -= 88;
        v13 = v18;
        if (v18 <= v4)
        {
          v13 = v18;
          goto LABEL_41;
        }
      }

      if (v5 + 88 != v6)
      {
        memmove(v5, v6 - 88, 0x58uLL);
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 88;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v22 = 88 * ((v13 - v4) / 88);
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_230D44F50(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_230D44FDC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_230D44FF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0B8, &qword_230E6E838);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_230D45184(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_230E69270();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t type metadata accessor for CreateVectorDatabaseResponse()
{
  result = qword_281566158;
  if (!qword_281566158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230D452A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0D0, &qword_230E6E968);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v17 = *(v1 + 16);
  v16 = v1[3];
  v11 = *(v1 + 32);
  v14 = *(v1 + 33);
  v15 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45ADC();

  sub_230E69A50();
  v18 = v9;
  v19 = v10;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  sub_230D45B84();
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_230D45444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0C0, &qword_230E6E960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45ADC();
  sub_230E69A30();
  if (!v2)
  {
    sub_230D45B30();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    v12 = v18[2];
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    *a2 = v18[1];
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 33) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D455D4(uint64_t a1)
{
  v2 = sub_230D45ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D45610(uint64_t a1)
{
  v2 = sub_230D45ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D4567C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_230E68860();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0D8, &qword_230E6E970);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  VectorDatabaseResponse = type metadata accessor for CreateVectorDatabaseResponse();
  v14 = *(*(VectorDatabaseResponse - 8) + 64);
  MEMORY[0x28223BE20](VectorDatabaseResponse - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45BD8();
  v19 = v26;
  sub_230E69A30();
  if (!v19)
  {
    v20 = v24;
    sub_230D09088(&qword_27DB5A680);
    sub_230E69760();
    (*(v8 + 8))(v12, v7);
    (*(v20 + 32))(v17, v25, v3);
    sub_230D45C2C(v17, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D458E8(uint64_t a1)
{
  v2 = sub_230D45BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D45924(uint64_t a1)
{
  v2 = sub_230D45BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D45978(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B0E8, &qword_230E6E978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D45BD8();
  sub_230E69A50();
  sub_230E68860();
  sub_230D09088(&qword_2815668A8);
  sub_230E69850();
  return (*(v3 + 8))(v7, v2);
}

unint64_t sub_230D45ADC()
{
  result = qword_27DB5B0C8;
  if (!qword_27DB5B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0C8);
  }

  return result;
}

unint64_t sub_230D45B30()
{
  result = qword_27DB5D7F0;
  if (!qword_27DB5D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D7F0);
  }

  return result;
}

unint64_t sub_230D45B84()
{
  result = qword_281566190;
  if (!qword_281566190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566190);
  }

  return result;
}

unint64_t sub_230D45BD8()
{
  result = qword_27DB5B0E0;
  if (!qword_27DB5B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0E0);
  }

  return result;
}

uint64_t sub_230D45C2C(uint64_t a1, uint64_t a2)
{
  VectorDatabaseResponse = type metadata accessor for CreateVectorDatabaseResponse();
  (*(*(VectorDatabaseResponse - 8) + 32))(a2, a1, VectorDatabaseResponse);
  return a2;
}

unint64_t sub_230D45CB4()
{
  result = qword_27DB5B0F0;
  if (!qword_27DB5B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0F0);
  }

  return result;
}

unint64_t sub_230D45D0C()
{
  result = qword_27DB5B0F8;
  if (!qword_27DB5B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B0F8);
  }

  return result;
}

unint64_t sub_230D45D64()
{
  result = qword_27DB5B100;
  if (!qword_27DB5B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B100);
  }

  return result;
}

unint64_t sub_230D45DBC()
{
  result = qword_27DB5B108;
  if (!qword_27DB5B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B108);
  }

  return result;
}

unint64_t sub_230D45E14()
{
  result = qword_27DB5B110;
  if (!qword_27DB5B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B110);
  }

  return result;
}

unint64_t sub_230D45E6C()
{
  result = qword_27DB5B118;
  if (!qword_27DB5B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B118);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseRequest.identifiers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_230D45F24(uint64_t a1)
{
  v2 = sub_230D46584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D45F60(uint64_t a1)
{
  v2 = sub_230D46584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D45F9C()
{
  if (*v0)
  {
    result = 0x6369666963657073;
  }

  else
  {
    result = 7105633;
  }

  *v0;
  return result;
}

uint64_t sub_230D45FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230D460AC(uint64_t a1)
{
  v2 = sub_230D464DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D460E8(uint64_t a1)
{
  v2 = sub_230D464DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D46124(uint64_t a1)
{
  v2 = sub_230D46530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D46160(uint64_t a1)
{
  v2 = sub_230D46530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromVectorDatabaseRequest.Identifiers.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B120, &qword_230E6EBA0);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B128, &qword_230E6EBA8);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B130, &unk_230E6EBB0);
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v29, v15);
  v17 = &v24 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D464DC();
  sub_230E69A50();
  if (v18)
  {
    v32 = 1;
    sub_230D46530();
    v20 = v29;
    sub_230E697A0();
    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D46AD4(&qword_27DB5B148);
    v21 = v28;
    sub_230E69850();
    (*(v27 + 8))(v7, v21);
    return (*(v13 + 8))(v17, v20);
  }

  else
  {
    v31 = 0;
    sub_230D46584();
    v23 = v29;
    sub_230E697A0();
    (*(v25 + 8))(v12, v26);
    return (*(v13 + 8))(v17, v23);
  }
}

unint64_t sub_230D464DC()
{
  result = qword_27DB5B138;
  if (!qword_27DB5B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B138);
  }

  return result;
}

unint64_t sub_230D46530()
{
  result = qword_27DB5B140;
  if (!qword_27DB5B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B140);
  }

  return result;
}

unint64_t sub_230D46584()
{
  result = qword_27DB5B150;
  if (!qword_27DB5B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B150);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseRequest.Identifiers.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B158, &qword_230E6EBC0);
  v36 = *(v34 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v34, v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B160, &qword_230E6EBC8);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B168, &unk_230E6EBD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_230D464DC();
  v20 = v38;
  sub_230E69A30();
  if (!v20)
  {
    v33 = v7;
    v38 = v13;
    v21 = v37;
    v22 = sub_230E69780();
    v23 = (2 * *(v22 + 16)) | 1;
    v40 = v22;
    v41 = v22 + 32;
    v42 = 0;
    v43 = v23;
    v24 = sub_230D089CC();
    if (v24 == 2 || v42 != v43 >> 1)
    {
      v27 = sub_230E69580();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950) + 48);
      *v29 = &type metadata for DeleteFromVectorDatabaseRequest.Identifiers;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v38 + 8))(v17, v12);
      swift_unknownObjectRelease();
    }

    else if (v24)
    {
      LOBYTE(v44) = 1;
      sub_230D46530();
      v25 = v6;
      sub_230E69690();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
      sub_230D46AD4(&qword_27DB5B170);
      v26 = v34;
      sub_230E69760();
      (*(v36 + 8))(v25, v26);
      (*(v38 + 8))(v17, v12);
      swift_unknownObjectRelease();
      *v21 = v44;
    }

    else
    {
      LOBYTE(v44) = 0;
      sub_230D46584();
      sub_230E69690();
      (*(v35 + 8))(v11, v33);
      (*(v38 + 8))(v17, v12);
      swift_unknownObjectRelease();
      *v21 = 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_230D46AD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D8F0, &unk_230E70E80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D46B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D46C28(uint64_t a1)
{
  v2 = sub_230D46E00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D46C64(uint64_t a1)
{
  v2 = sub_230D46E00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromVectorDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B178, &qword_230E6EBE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D46E00();

  sub_230E69A50();
  v12[1] = v9;
  sub_230D46E54();
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D46E00()
{
  result = qword_27DB5B180;
  if (!qword_27DB5B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B180);
  }

  return result;
}

unint64_t sub_230D46E54()
{
  result = qword_27DB5B188;
  if (!qword_27DB5B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B188);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B190, &qword_230E6EBE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D46E00();
  sub_230E69A30();
  if (!v2)
  {
    sub_230D47014();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D47014()
{
  result = qword_27DB5B198;
  if (!qword_27DB5B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B198);
  }

  return result;
}

uint64_t sub_230D470D0(uint64_t a1)
{
  v2 = sub_230D47280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4710C(uint64_t a1)
{
  v2 = sub_230D47280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromVectorDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B1A0, &qword_230E6EBF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D47280();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D47280()
{
  result = qword_27DB5B1A8;
  if (!qword_27DB5B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1A8);
  }

  return result;
}

uint64_t DeleteFromVectorDatabaseResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B1B0, &qword_230E6EBF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D47280();
  sub_230E69A30();
  if (!v2)
  {
    v12 = sub_230E69770();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D47440(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B1A0, &qword_230E6EBF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D47280();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_230D47578(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_230D475D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_230D47634(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_230D47684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_230D476D8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_230D476F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_230D47784()
{
  result = qword_27DB5B1B8;
  if (!qword_27DB5B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1B8);
  }

  return result;
}

unint64_t sub_230D477DC()
{
  result = qword_27DB5B1C0;
  if (!qword_27DB5B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1C0);
  }

  return result;
}

unint64_t sub_230D47834()
{
  result = qword_27DB5B1C8;
  if (!qword_27DB5B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1C8);
  }

  return result;
}

unint64_t sub_230D4788C()
{
  result = qword_27DB5B1D0;
  if (!qword_27DB5B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1D0);
  }

  return result;
}

unint64_t sub_230D478E4()
{
  result = qword_27DB5B1D8;
  if (!qword_27DB5B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1D8);
  }

  return result;
}

unint64_t sub_230D4793C()
{
  result = qword_27DB5B1E0;
  if (!qword_27DB5B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1E0);
  }

  return result;
}

unint64_t sub_230D47994()
{
  result = qword_27DB5B1E8;
  if (!qword_27DB5B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1E8);
  }

  return result;
}

unint64_t sub_230D479EC()
{
  result = qword_27DB5B1F0;
  if (!qword_27DB5B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1F0);
  }

  return result;
}

unint64_t sub_230D47A44()
{
  result = qword_27DB5B1F8;
  if (!qword_27DB5B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B1F8);
  }

  return result;
}

unint64_t sub_230D47A9C()
{
  result = qword_27DB5B200;
  if (!qword_27DB5B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B200);
  }

  return result;
}

unint64_t sub_230D47AF4()
{
  result = qword_27DB5B208;
  if (!qword_27DB5B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B208);
  }

  return result;
}

unint64_t sub_230D47B4C()
{
  result = qword_27DB5B210;
  if (!qword_27DB5B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B210);
  }

  return result;
}

unint64_t sub_230D47BA4()
{
  result = qword_27DB5B218;
  if (!qword_27DB5B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B218);
  }

  return result;
}

unint64_t sub_230D47BFC()
{
  result = qword_27DB5B220;
  if (!qword_27DB5B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B220);
  }

  return result;
}

uint64_t InsertIntoVectorDatabaseRequest.vectors.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t InsertIntoVectorDatabaseRequest.init(vectors:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B228, &qword_230E6F2B0);
  result = sub_230E69620();
  v4 = result;
  v5 = 0;
  v6 = *(a1 + 64);
  v33 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v36 = a1;
  v37 = result + 64;
  v34 = v10;
  v35 = result;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = *(*(a1 + 56) + 8 * v14);
      v18 = *(v17 + 16);
      if (v18)
      {
        v39 = *v15;
        v40 = v14;
        v41 = v9;
        v42 = MEMORY[0x277D84F90];
        v38 = v15[1];

        sub_230D488E0(0, v18, 0);
        v19 = v42;
        v20 = 32;
        do
        {
          v21 = *(v17 + v20);

          v22 = sub_230E69230();
          v24 = v23;

          v26 = *(v42 + 16);
          v25 = *(v42 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_230D488E0((v25 > 1), v26 + 1, 1);
          }

          *(v42 + 16) = v26 + 1;
          v27 = v42 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
          v20 += 8;
          --v18;
        }

        while (v18);

        v4 = v35;
        a1 = v36;
        v10 = v34;
        v14 = v40;
        v9 = v41;
        result = v38;
        v16 = v39;
      }

      else
      {

        v19 = MEMORY[0x277D84F90];
      }

      *(v37 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v28 = (v4[6] + 16 * v14);
      *v28 = v16;
      v28[1] = result;
      *(v4[7] + 8 * v14) = v19;
      v29 = v4[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v4[2] = v31;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        *a2 = v4;
        return result;
      }

      v13 = *(v33 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230D47F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F74636576 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D47FA4(uint64_t a1)
{
  v2 = sub_230D48900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D47FE0(uint64_t a1)
{
  v2 = sub_230D48900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertIntoVectorDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B230, &qword_230E6F2B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48900();

  sub_230E69A50();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B240, &qword_230E6F2C0);
  sub_230D48954();
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

uint64_t InsertIntoVectorDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B260, &qword_230E6F2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48900();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B240, &qword_230E6F2C0);
    sub_230D48A10();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D4839C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465747265736E69 && a2 == 0xED0000746E756F43)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D4842C(uint64_t a1)
{
  v2 = sub_230D48B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D48468(uint64_t a1)
{
  v2 = sub_230D48B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertIntoVectorDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B278, &qword_230E6F2D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48B44();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

uint64_t InsertIntoVectorDatabaseResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B288, &qword_230E6F2E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48B44();
  sub_230E69A30();
  if (!v2)
  {
    v12 = sub_230E69770();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D48748(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B278, &qword_230E6F2D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D48B44();
  sub_230E69A50();
  sub_230E69860();
  return (*(v4 + 8))(v8, v3);
}

char *sub_230D48880(char *a1, int64_t a2, char a3)
{
  result = sub_230D49254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D488A0(char *a1, int64_t a2, char a3)
{
  result = sub_230D49130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D488C0(char *a1, int64_t a2, char a3)
{
  result = sub_230D49360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D488E0(char *a1, int64_t a2, char a3)
{
  result = sub_230D49488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_230D48900()
{
  result = qword_27DB5B238;
  if (!qword_27DB5B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B238);
  }

  return result;
}

unint64_t sub_230D48954()
{
  result = qword_27DB5B248;
  if (!qword_27DB5B248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B240, &qword_230E6F2C0);
    sub_230D48ACC(&qword_27DB5B250, sub_230D2C474);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B248);
  }

  return result;
}

unint64_t sub_230D48A10()
{
  result = qword_27DB5B268;
  if (!qword_27DB5B268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B240, &qword_230E6F2C0);
    sub_230D48ACC(&qword_27DB5B270, sub_230D2C420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B268);
  }

  return result;
}

uint64_t sub_230D48ACC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B258, &qword_230E6F2C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D48B44()
{
  result = qword_27DB5B280;
  if (!qword_27DB5B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B280);
  }

  return result;
}

unint64_t sub_230D48BDC()
{
  result = qword_27DB5B290;
  if (!qword_27DB5B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B290);
  }

  return result;
}

unint64_t sub_230D48C34()
{
  result = qword_27DB5B298;
  if (!qword_27DB5B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B298);
  }

  return result;
}

unint64_t sub_230D48C8C()
{
  result = qword_27DB5B2A0;
  if (!qword_27DB5B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2A0);
  }

  return result;
}

unint64_t sub_230D48CE4()
{
  result = qword_27DB5B2A8;
  if (!qword_27DB5B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2A8);
  }

  return result;
}

unint64_t sub_230D48D3C()
{
  result = qword_27DB5B2B0;
  if (!qword_27DB5B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2B0);
  }

  return result;
}

unint64_t sub_230D48D94()
{
  result = qword_27DB5B2B8;
  if (!qword_27DB5B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B2B8);
  }

  return result;
}

size_t sub_230D48DE8(size_t a1, int64_t a2, char a3)
{
  result = sub_230D49594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D48E08(void *a1, int64_t a2, char a3)
{
  result = sub_230D4976C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48E28(char *a1, int64_t a2, char a3)
{
  result = sub_230D498A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48E48(char *a1, int64_t a2, char a3)
{
  result = sub_230D499A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D48E68(void *a1, int64_t a2, char a3)
{
  result = sub_230D49AA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D48E88(void *a1, int64_t a2, char a3)
{
  result = sub_230D49BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48EA8(char *a1, int64_t a2, char a3)
{
  result = sub_230D49D10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48EC8(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A6FC(a1, a2, a3, *v3, &qword_27DB5B320, &qword_230E6F6A0);
  *v3 = result;
  return result;
}

char *sub_230D48F00(char *a1, int64_t a2, char a3)
{
  result = sub_230D49F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48F20(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A20C(a1, a2, a3, *v3, &qword_27DB5B3A8, &qword_230E6F728);
  *v3 = result;
  return result;
}

char *sub_230D48F58(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A498(a1, a2, a3, *v3, &qword_27DB5B390, &qword_230E6F710);
  *v3 = result;
  return result;
}

char *sub_230D48F90(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A498(a1, a2, a3, *v3, &qword_27DB5B378, &qword_230E6F6F8);
  *v3 = result;
  return result;
}

char *sub_230D48FC8(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D48FE8(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A20C(a1, a2, a3, *v3, &qword_27DB5B358, &qword_230E6F6D8);
  *v3 = result;
  return result;
}

char *sub_230D49020(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A498(a1, a2, a3, *v3, &qword_27DB5B340, &qword_230E6F6C0);
  *v3 = result;
  return result;
}

char *sub_230D49058(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A6FC(a1, a2, a3, *v3, &qword_27DB5B338, &qword_230E6F6B8);
  *v3 = result;
  return result;
}

char *sub_230D49090(char *a1, int64_t a2, char a3)
{
  result = sub_230D4A808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D490B0(void *a1, int64_t a2, char a3)
{
  result = sub_230D4A914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D490D0(char *a1, int64_t a2, char a3)
{
  result = sub_230D4AA5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_230D490F0(void *a1, int64_t a2, char a3)
{
  result = sub_230D4AB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D49110(char *a1, int64_t a2, char a3)
{
  result = sub_230D4ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_230D49130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49254(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_230D49360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3D8, &unk_230E6F760);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_230D49594(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3D0, &qword_230E6F758);
  v10 = *(sub_230E68B80() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_230E68B80() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_230D4976C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3C0, &qword_230E6F748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3C8, &qword_230E6F750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D498A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2E0, &qword_230E6F660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_230D499A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2D8, &qword_230E6F658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_230D49AA8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC20, &qword_230E6C230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D49BDC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49D10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2D0, &qword_230E6F650);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_230D49E20(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B328, &qword_230E6F6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B330, &qword_230E6F6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D49F54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2F8, &qword_230E6F678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4A0EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B370, &qword_230E6F6F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4A20C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_230D4A350(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_230D4A498(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_230D4A5C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_230D4A6FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_230D4A808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B310, &qword_230E6F690);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D4A914(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B300, &qword_230E6F680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4AA5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B318, &qword_230E6F698);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230D4AB7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2E8, &qword_230E6F668);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2F0, &qword_230E6F670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230D4ACB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C8, &unk_230E6F640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t SearchVectorDatabaseRequest.vector.getter()
{
  v1 = *v0;
  sub_230D0DD0C(*v0, *(v0 + 8));
  return v1;
}

uint64_t SearchVectorDatabaseRequest.vector.setter(uint64_t a1, uint64_t a2)
{
  result = sub_230D0F4A8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SearchVectorDatabaseRequest.limit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SearchVectorDatabaseRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SearchVectorDatabaseRequest.init(vector:limit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t SearchVectorDatabaseRequest.init(vector:limit:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_230E69230();
  v8 = v7;

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  return result;
}

uint64_t sub_230D4AEE0()
{
  if (*v0)
  {
    result = 0x74696D696CLL;
  }

  else
  {
    result = 0x726F74636576;
  }

  *v0;
  return result;
}

uint64_t sub_230D4AF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F74636576 && a2 == 0xE600000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230D4AFE8(uint64_t a1)
{
  v2 = sub_230D4B20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4B024(uint64_t a1)
{
  v2 = sub_230D4B20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchVectorDatabaseRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3E0, &qword_230E6F770);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v13 = *(v1 + 16);
  v17 = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D0DD0C(v9, v10);
  sub_230D4B20C();
  sub_230E69A50();
  v15 = v9;
  v16 = v10;
  v18 = 0;
  sub_230D2C474();
  sub_230E69850();
  sub_230D0F4A8(v15, v16);
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_230E697D0();
  }

  return (*(v14 + 8))(v8, v4);
}

unint64_t sub_230D4B20C()
{
  result = qword_27DB5B3E8;
  if (!qword_27DB5B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B3E8);
  }

  return result;
}

uint64_t SearchVectorDatabaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3F0, &qword_230E6F778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4B20C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_230D2C420();
  sub_230E69760();
  v13 = v19[0];
  v12 = v19[1];
  LOBYTE(v19[0]) = 1;
  v14 = sub_230E696E0();
  v15 = v10;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v17 & 1;
  sub_230D0DD0C(v13, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_230D0F4A8(v13, v12);
}

uint64_t SearchVectorDatabaseResponse.results.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_230D4B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D4B594(uint64_t a1)
{
  v2 = sub_230D4B780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4B5D0(uint64_t a1)
{
  v2 = sub_230D4B780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchVectorDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3F8, &qword_230E6F780);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4B780();

  sub_230E69A50();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B408, &qword_230E6F788);
  sub_230D4B7D4();
  sub_230E69850();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_230D4B780()
{
  result = qword_27DB5B400;
  if (!qword_27DB5B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B400);
  }

  return result;
}

unint64_t sub_230D4B7D4()
{
  result = qword_27DB5B410;
  if (!qword_27DB5B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B408, &qword_230E6F788);
    sub_230D4BAB4(&qword_27DB5B418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B410);
  }

  return result;
}

uint64_t SearchVectorDatabaseResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B428, &qword_230E6F798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4B780();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B408, &qword_230E6F788);
    sub_230D4BA04();
    sub_230E69760();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D4BA04()
{
  result = qword_27DB5B430;
  if (!qword_27DB5B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B408, &qword_230E6F788);
    sub_230D4BAB4(&qword_27DB5B438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B430);
  }

  return result;
}

uint64_t sub_230D4BAB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B420, &qword_230E6F790);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D4BB50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 25))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_230D4BBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_230D4BC3C()
{
  result = qword_27DB5B440;
  if (!qword_27DB5B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B440);
  }

  return result;
}

unint64_t sub_230D4BC94()
{
  result = qword_27DB5B448;
  if (!qword_27DB5B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B448);
  }

  return result;
}

unint64_t sub_230D4BCEC()
{
  result = qword_27DB5B450;
  if (!qword_27DB5B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B450);
  }

  return result;
}

unint64_t sub_230D4BD44()
{
  result = qword_27DB5B458;
  if (!qword_27DB5B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B458);
  }

  return result;
}

unint64_t sub_230D4BD9C()
{
  result = qword_27DB5B460;
  if (!qword_27DB5B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B460);
  }

  return result;
}

unint64_t sub_230D4BDF4()
{
  result = qword_27DB5B468;
  if (!qword_27DB5B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B468);
  }

  return result;
}

ServicesIntelligence::VectorDatabaseDistanceMetric_optional __swiftcall VectorDatabaseDistanceMetric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VectorDatabaseDistanceMetric.rawValue.getter()
{
  v1 = 7630692;
  if (*v0 != 1)
  {
    v1 = 12908;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E69736F63;
  }
}

uint64_t sub_230D4BEE8()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D4BF74()
{
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230D4BFEC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D4C080(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 7630692;
  if (v2 != 1)
  {
    v5 = 12908;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E69736F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_230D4C178(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7630692;
  if (v2 != 1)
  {
    v4 = 12908;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E69736F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7630692;
  if (*a2 != 1)
  {
    v8 = 12908;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E69736F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

ServicesIntelligence::VectorDatabaseFieldType_optional __swiftcall VectorDatabaseFieldType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t VectorDatabaseFieldType.rawValue.getter()
{
  if (*v0)
  {
    return 0x323374616F6C66;
  }

  else
  {
    return 0x363174616F6C66;
  }
}

uint64_t sub_230D4C2E8()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D4C360()
{
  *v0;
  sub_230E69100();
}

uint64_t sub_230D4C3BC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D4C430@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_230E69680();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_230D4C490(uint64_t *a1@<X8>)
{
  v2 = 0x363174616F6C66;
  if (*v1)
  {
    v2 = 0x323374616F6C66;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_230D4C578(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x323374616F6C66;
  }

  else
  {
    v2 = 0x363174616F6C66;
  }

  if (*a2)
  {
    v3 = 0x323374616F6C66;
  }

  else
  {
    v3 = 0x363174616F6C66;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_230E698C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t VectorDatabaseConfiguration.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VectorDatabaseConfiguration.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VectorDatabaseConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B470, &qword_230E6FB60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4CAA8();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v12 = sub_230E69720();
  v14 = v13;
  v21 = v12;
  v28 = 1;
  sub_230D0D17C();
  sub_230E69760();
  v15 = v29;
  v27 = 2;
  v16 = sub_230E69750();
  v19 = v15;
  v20 = v16;
  v25 = 3;
  sub_230D4CAFC();
  sub_230E69760();
  LOBYTE(v15) = v26;
  v23 = 4;
  sub_230D4CB50();
  sub_230E69760();
  v18 = v24;
  v22 = 5;
  sub_230D0D1D0();
  sub_230E69700();
  (*(v6 + 8))(v10, v5);
  *a2 = v21;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v15;
  *(a2 + 33) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D4CAA8()
{
  result = qword_2815661A8;
  if (!qword_2815661A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661A8);
  }

  return result;
}

unint64_t sub_230D4CAFC()
{
  result = qword_27DB5B478;
  if (!qword_27DB5B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B478);
  }

  return result;
}

unint64_t sub_230D4CB50()
{
  result = qword_27DB5B480;
  if (!qword_27DB5B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B480);
  }

  return result;
}

uint64_t VectorDatabaseConfiguration.init(name:domain:dimension:distanceMetric:fieldType:dataClass:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = v8;
  *(a7 + 33) = v9;
  return result;
}

uint64_t sub_230D4CBCC()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65636E6174736964;
  v4 = 0x707954646C656966;
  if (v1 != 4)
  {
    v4 = 0x73616C4361746164;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69616D6F64;
  if (v1 != 1)
  {
    v5 = 0x6F69736E656D6964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230D4CC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D4DBF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D4CCB4(uint64_t a1)
{
  v2 = sub_230D4CAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D4CCF0(uint64_t a1)
{
  v2 = sub_230D4CAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VectorDatabaseConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B488, &qword_230E6FB68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v21 = *(v1 + 16);
  v20 = v1[3];
  v11 = *(v1 + 32);
  v18 = *(v1 + 33);
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D4CAA8();
  sub_230E69A50();
  v31 = 0;
  v13 = v22;
  sub_230E69810();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    v30 = v21;
    v29 = 1;
    sub_230D0D0D4();
    sub_230E69850();
    v28 = 2;
    sub_230E69840();
    v27 = v15;
    v26 = 3;
    sub_230D4D784();
    sub_230E69850();
    v25 = v14;
    v24 = 4;
    sub_230D4D7D8();
    sub_230E69850();
    v23 = 5;
    sub_230D0D128();
    sub_230E69850();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t VectorDatabaseConfiguration.path.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v74 = *MEMORY[0x277D85DE8];
  v67 = sub_230E687F0();
  v65 = *(v67 - 8);
  v2 = *(v65 + 8);
  MEMORY[0x28223BE20](v67, v3);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230E68860();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v57 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = v57 - v17;
  v19 = *(v1 + 8);
  v66 = *v1;
  v68 = v19;
  v20 = *(v1 + 16);
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  v23 = v71;
  sub_230DA3FDC();

  v24 = v23;
  if (v23)
  {
    goto LABEL_30;
  }

  v57[1] = 0;
  v61 = v11;
  v62 = v21;
  v63 = v15;
  v64 = v6;
  v25 = v65;
  v26 = v18;
  if (v20 > 4)
  {
    v35 = 0x6E6F6D6D6F63;
    v28 = 0xE800000000000000;
    v36 = 0x65676175676E616CLL;
    if (v20 != 8)
    {
      v36 = 0x7974697275636573;
      v28 = 0xE800000000000000;
    }

    if (v20 == 7)
    {
      v28 = 0xE600000000000000;
    }

    else
    {
      v35 = v36;
    }

    v37 = 0x7374736163646F70;
    v32 = 0xE500000000000000;
    if (v20 == 5)
    {
      v32 = 0xE800000000000000;
    }

    else
    {
      v37 = 0x6F65646976;
    }

    v33 = v20 <= 6;
    if (v20 <= 6)
    {
      v34 = v37;
    }

    else
    {
      v34 = v35;
    }
  }

  else
  {
    v27 = 0x6C616E7265746E69;
    v28 = 0xE500000000000000;
    v29 = 0x736B6F6F62;
    v30 = 0xE700000000000000;
    v31 = 0x7373656E746966;
    if (v20 != 3)
    {
      v31 = 0x636973756DLL;
      v30 = 0xE500000000000000;
    }

    if (v20 != 2)
    {
      v29 = v31;
      v28 = v30;
    }

    v32 = 0xE400000000000000;
    if (v20)
    {
      v27 = 1936748641;
    }

    else
    {
      v32 = 0xE800000000000000;
    }

    v33 = v20 <= 1;
    if (v20 <= 1)
    {
      v34 = v27;
    }

    else
    {
      v34 = v29;
    }
  }

  if (v33)
  {
    v28 = v32;
  }

  v57[2] = v28;
  v72 = v34;
  v73 = v28;
  LODWORD(v71) = *MEMORY[0x277CC91D8];
  v38 = *(v65 + 13);
  v39 = v67;
  v38(v5);
  v40 = v38;
  v58 = v38;
  v41 = sub_230D0D278();
  v42 = v61;
  v60 = v41;
  v65 = v26;
  sub_230E68840();
  v43 = *(v25 + 1);
  v43(v5, v39);
  v59 = v43;

  v72 = 0x6144726F74636556;
  v73 = 0xEF73657361626174;
  (v40)(v5, v71, v39);
  v44 = v63;
  sub_230E68840();
  v43(v5, v39);
  v45 = *(v69 + 8);
  v45(v42, v64);
  v72 = v66;
  v73 = v68;
  (v58)(v5, v71, v39);

  v46 = v70;
  sub_230E68840();
  v47 = v45;
  v48 = v39;
  v49 = v64;
  v59(v5, v48);

  v45(v44, v49);
  v50 = [v62 defaultManager];
  v51 = sub_230E68800();
  v72 = 0;
  LOBYTE(v42) = [v50 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:&v72];

  if ((v42 & 1) == 0)
  {
    v54 = v72;
    v24 = sub_230E687E0();

    swift_willThrow();
    v47(v46, v49);
    v47(v65, v49);
LABEL_30:
    sub_230D0D224();
    swift_allocError();
    *v55 = 0;
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    swift_willThrow();
    result = MEMORY[0x23191E910](v24);
    goto LABEL_31;
  }

  v52 = v72;
  result = (v45)(v65, v49);
LABEL_31:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s20ServicesIntelligence27VectorDatabaseConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_230E698C0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v10 = sub_230D0B544(v2, v6);
  v11 = 0;
  if ((v10 & 1) == 0 || v3 != v7)
  {
    return v11 & 1;
  }

  v12 = 0xE300000000000000;
  v13 = 7630692;
  if (v4 != 1)
  {
    v13 = 12908;
    v12 = 0xE200000000000000;
  }

  if (v4)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x656E69736F63;
  }

  if (v4)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  v16 = 0xE300000000000000;
  v17 = 7630692;
  if (v8 != 1)
  {
    v17 = 12908;
    v16 = 0xE200000000000000;
  }

  if (v8)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x656E69736F63;
  }

  if (v8)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE600000000000000;
  }

  if (v14 != v18 || v15 != v19)
  {
    v20 = sub_230E698C0();

    if (v20)
    {
      goto LABEL_26;
    }

LABEL_34:
    v11 = 0;
    return v11 & 1;
  }

LABEL_26:
  if (v5)
  {
    v21 = 0x323374616F6C66;
  }

  else
  {
    v21 = 0x363174616F6C66;
  }

  if (v9)
  {
    v22 = 0x323374616F6C66;
  }

  else
  {
    v22 = 0x363174616F6C66;
  }

  if (v21 == v22)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  swift_bridgeObjectRelease_n();
  return v11 & 1;
}

unint64_t sub_230D4D784()
{
  result = qword_2815660F8[0];
  if (!qword_2815660F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815660F8);
  }

  return result;
}

unint64_t sub_230D4D7D8()
{
  result = qword_281566488;
  if (!qword_281566488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566488);
  }

  return result;
}

unint64_t sub_230D4D830()
{
  result = qword_27DB5B490;
  if (!qword_27DB5B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B490);
  }

  return result;
}

unint64_t sub_230D4D888()
{
  result = qword_27DB5B498;
  if (!qword_27DB5B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B498);
  }

  return result;
}

unint64_t sub_230D4D8DC(void *a1)
{
  a1[1] = sub_230D45B30();
  a1[2] = sub_230D45B84();
  result = sub_230D4D914();
  a1[3] = result;
  return result;
}

unint64_t sub_230D4D914()
{
  result = qword_27DB5B4A0;
  if (!qword_27DB5B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B4A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VectorDatabaseConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VectorDatabaseConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_230D4DAEC()
{
  result = qword_27DB5B4A8;
  if (!qword_27DB5B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B4A8);
  }

  return result;
}

unint64_t sub_230D4DB44()
{
  result = qword_281566198;
  if (!qword_281566198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566198);
  }

  return result;
}

unint64_t sub_230D4DB9C()
{
  result = qword_2815661A0;
  if (!qword_2815661A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661A0);
  }

  return result;
}

uint64_t sub_230D4DBF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xE90000000000006ELL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xEE0063697274654DLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954646C656966 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73616C4361746164 && a2 == 0xE900000000000073)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_230D4DDF8()
{
  result = qword_281566480;
  if (!qword_281566480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566480);
  }

  return result;
}

unint64_t sub_230D4DE4C()
{
  result = qword_2815660F0;
  if (!qword_2815660F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660F0);
  }

  return result;
}

uint64_t ServicesIntelligenceProvider.getVectorDatabaseClient(domain:name:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 112) = a2;
  v8 = sub_230E68D80();
  *(v5 + 136) = v8;
  v9 = *(v8 - 8);
  *(v5 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 653) = *a1;
  v11 = *(a4 + 16);
  *(v5 + 160) = *a4;
  *(v5 + 176) = v11;
  *(v5 + 192) = *(a4 + 32);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D4DFB8, v4, 0);
}

uint64_t sub_230D4DFB8()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    *(v0 + 208) = v1;
    *(v0 + 216) = v2;
    v6 = *(v0 + 152);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    v34 = v3 >> 8;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1);
    sub_230E68D70();

    v9 = sub_230E68D60();
    v10 = sub_230E693E0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v11 = 136315650;
      *(v11 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80610, v35);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_230D7E620(v4, v1, v35);
      *(v11 + 22) = 2080;
      v12 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v12);

      v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v35);

      *(v11 + 24) = v13;
      _os_log_impl(&dword_230D02000, v9, v10, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v33, -1, -1);
      MEMORY[0x23191EAE0](v11, -1, -1);
    }

    if (v3 & 1) != 0 && ((v14 = RequestType.rawValue.getter(), v16 = v15, , LOBYTE(v14) = sub_230D33FDC(v14, v16, v2), , , (v14) || v34 >= 2u))
    {
      sub_230E68950();
      *(v0 + 224) = CFAbsoluteTimeGetCurrent();
      *(v0 + 272) = 0u;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0u;
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 416) = 0u;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0u;
      *(v0 + 608) = 0u;
      *(v0 + 624) = 0u;
      *(v0 + 640) = 0;
      *(v0 + 644) = 93;
      v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
      *(v0 + 648) = v22;
      v23 = 0.0;
      if (!v22)
      {
        v24 = *(v0 + 320);
        v25 = *(v0 + 392);
        v26 = __CFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          __break(1u);
        }

        v23 = vcvtd_n_f64_u64(v27, 0x14uLL);
      }

      *(v0 + 248) = v23;
      *(v0 + 104) = 0;
      v17 = swift_task_alloc();
      *(v0 + 256) = v17;
      *v17 = v0;
      v18 = sub_230D4EA98;
    }

    else
    {
      v17 = swift_task_alloc();
      *(v0 + 232) = v17;
      *v17 = v0;
      v18 = sub_230D2F8C8;
    }

    v17[1] = v18;
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 112);
    v31 = *(v0 + 653);
    v32 = *MEMORY[0x277D85DE8];

    return sub_230D4EE84(v0 + 96, v31, v30, v28, v29, v0 + 16);
  }

  else
  {
    *(v0 + 652) = 17;
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_230D4E4C0;
    v20 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230D4E4C0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230D4E5FC, v2, 0);
}

uint64_t sub_230D4E5FC()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = *(v0 + 56);
  v1 = v0 + 16;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v1 + 192) = v3;
  *(v1 + 200) = v6;
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 136);
  v12 = *(v1 + 144);
  v13 = *(v1 + 104);
  v14 = *(v1 + 112);
  v39 = v2;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  v40 = v4;
  *(v1 + 24) = v4;
  v38 = v5;
  *(v1 + 25) = v5;
  *(v1 + 32) = v6;

  sub_230D0585C(v12, v10, v9);
  sub_230E68D70();

  v15 = sub_230E68D60();
  v16 = sub_230E693E0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80610, v42);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_230D7E620(v39, v3, v42);
    *(v17 + 22) = 2080;
    v19 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v19);

    v20 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v42);

    *(v17 + 24) = v20;
    _os_log_impl(&dword_230D02000, v15, v16, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v18, -1, -1);
    MEMORY[0x23191EAE0](v17, -1, -1);

    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v40)
    {
LABEL_7:
      v24 = swift_task_alloc();
      *(v41 + 232) = v24;
      *v24 = v41;
      v24[1] = sub_230D2F8C8;
      v25 = *(v41 + 120);
      v26 = *(v41 + 128);
      v27 = *(v41 + 112);
      v28 = *(v41 + 653);
      goto LABEL_12;
    }
  }

  v21 = RequestType.rawValue.getter();
  v23 = v22;

  LOBYTE(v21) = sub_230D33FDC(v21, v23, v6);

  if ((v21 & 1) == 0 && v38 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v41 + 224) = CFAbsoluteTimeGetCurrent();
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 528) = 0u;
  *(v1 + 544) = 0u;
  *(v1 + 560) = 0u;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 0u;
  *(v1 + 608) = 0u;
  *(v1 + 624) = 0;
  *(v41 + 644) = 93;
  v29 = task_info(*MEMORY[0x277D85F48], 0x16u, (v1 + 256), (v1 + 628));
  *(v41 + 648) = v29;
  v30 = 0.0;
  if (!v29)
  {
    v31 = *(v41 + 320);
    v32 = *(v41 + 392);
    v33 = __CFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      __break(1u);
    }

    v30 = vcvtd_n_f64_u64(v34, 0x14uLL);
  }

  *(v41 + 248) = v30;
  *(v41 + 104) = 0;
  v35 = swift_task_alloc();
  *(v41 + 256) = v35;
  *v35 = v41;
  v35[1] = sub_230D4EA98;
  v25 = *(v41 + 120);
  v26 = *(v41 + 128);
  v27 = *(v41 + 112);
  v28 = *(v41 + 653);
LABEL_12:
  v36 = *MEMORY[0x277D85DE8];

  return sub_230D4EE84(v1 + 80, v28, v27, v25, v26, v1);
}

uint64_t sub_230D4EA98()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_230D4ED20;
  }

  else
  {
    v6 = sub_230D4EBF0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D4EBF0()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  sub_230D37054(17, *(v0 + 248), *(v0 + 648) != 0, v0 + 16, (v0 + 104), *(v0 + 224));
  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 152);
  v11 = *(v0 + 96);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12(v11);
}

uint64_t sub_230D4ED20()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v15 = *(v0 + 128);
  v7 = *(v0 + 120);
  v8 = *(v0 + 648) != 0;
  *(v0 + 104) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D37054(17, v2, v8, v0 + 16, (v0 + 104), v3);
  MEMORY[0x23191E910](v1);
  (*(v5 + 8))(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v10 = *(v0 + 264);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230D4EE84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = a6;
  *(v6 + 232) = a3;
  *(v6 + 240) = a4;
  *(v6 + 170) = a2;
  *(v6 + 224) = a1;
  *(v6 + 171) = *a6;
  *(v6 + 264) = *(a6 + 8);
  *(v6 + 172) = *(a6 + 24);
  *(v6 + 280) = *(a6 + 32);
  return MEMORY[0x2822009F8](sub_230D4EED4, a5, 0);
}

uint64_t sub_230D4EED4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  swift_beginAccess();
  v3 = *(v2 + 128);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v7 = *(v0 + 170);

    v8 = sub_230DB4B4C(v7, v6, v5, 1);
    if (v9)
    {
      v10 = v8;
      v11 = *(v0 + 240);

      v12 = *(*(v3 + 56) + 8 * v10);

      **(v0 + 224) = v12;
      v13 = *(v0 + 8);

      return v13();
    }
  }

  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 248);
  v20 = *(v0 + 172) & 1 | (*(v0 + 173) << 8);
  *(v0 + 16) = *(v0 + 171);
  *(v0 + 24) = v17;
  *(v0 + 32) = v16;
  *(v0 + 40) = v20;
  *(v0 + 48) = v15;
  sub_230D1CDE0(v18, v0 + 56);
  sub_230D1CDE0(v18, v0 + 96);

  v21 = swift_task_alloc();
  *(v0 + 288) = v21;
  *v21 = v0;
  v21[1] = sub_230D4F0A0;
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);

  return (sub_230D6F7D0)(39, v22);
}

uint64_t sub_230D4F0A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v7 = *(v3 + 256);
  v8 = *(v3 + 248);
  sub_230D1CE3C(v7);
  if (v1)
  {
    v9 = sub_230D4F3CC;
  }

  else
  {
    v9 = sub_230D4F1F0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_230D4F1F0()
{
  sub_230D1CE3C(*(v0 + 256));
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_230D4F2A0;
  v2 = *(v0 + 296);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 170);

  return sub_230D4FE00(v0 + 136, v5, v3, v4, 1, v2, v0 + 16);
}

uint64_t sub_230D4F2A0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {
    v6 = sub_230D4F604;
  }

  else
  {
    v6 = sub_230D4F43C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D4F3CC()
{
  v1 = v0[30];
  sub_230D1CE3C(v0[32]);

  v2 = v0[38];
  v3 = v0[1];

  return v3();
}

uint64_t sub_230D4F43C()
{
  v26 = v0;
  v1 = *(v0 + 144);
  if (!v1)
  {
    v9 = *(v0 + 296);
    v10 = *(v0 + 240);

    sub_230D0D224();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    swift_willThrow();

    goto LABEL_5;
  }

  v2 = *(v0 + 320);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v22[0] = *(v0 + 136);
  v22[1] = v1;
  v23 = v5;
  v24 = v4;
  v25 = v3 & 0x1FF;
  type metadata accessor for VectorDatabaseClient();
  swift_allocObject();
  v6 = sub_230D50744(v22);
  if (v2)
  {
    v7 = *(v0 + 296);
    v8 = *(v0 + 240);

LABEL_5:
    v12 = *(v0 + 8);
    goto LABEL_7;
  }

  v13 = v6;
  v14 = *(v0 + 296);
  v15 = *(v0 + 240);
  v16 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = *(v0 + 170);
  swift_beginAccess();

  v19 = *(v16 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *(v16 + 128);
  *(v16 + 128) = 0x8000000000000000;
  sub_230E1BAF0(v13, v18, v17, v15, 1, isUniquelyReferenced_nonNull_native);

  *(v16 + 128) = v22[0];
  swift_endAccess();

  **(v0 + 224) = v13;
  v12 = *(v0 + 8);
LABEL_7:

  return v12();
}

uint64_t sub_230D4F604()
{
  v1 = v0[37];
  v2 = v0[30];

  v3 = v0[40];
  v4 = v0[1];

  return v4();
}

uint64_t ServicesIntelligenceProvider.getVectorDatabaseClient(name:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  v5 = *(a3 + 16);
  *(v4 + 80) = *a3;
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D4F6A8, v3, 0);
}

uint64_t sub_230D4F6A8()
{
  sub_230DCB5D4((v0 + 136));
  v1 = *(v0 + 112);
  *(v0 + 137) = *(v0 + 136);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_230D313D0;
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  return ServicesIntelligenceProvider.getVectorDatabaseClient(domain:name:requestContext:)((v0 + 137), v6, v4, v0 + 16);
}

uint64_t sub_230D4F7B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 432) = a6;
  *(v7 + 440) = a7;
  *(v7 + 130) = a5;
  *(v7 + 416) = a3;
  *(v7 + 424) = a4;
  *(v7 + 129) = a2;
  *(v7 + 408) = a1;
  *(v7 + 448) = type metadata accessor for SQLDatabaseConfiguration();

  return MEMORY[0x2822009F8](sub_230D4F838, 0, 0);
}

uint64_t sub_230D4F838()
{
  v17 = v0;
  v1 = *(v0 + 440);
  LOBYTE(v14[0]) = *(v0 + 129);
  v14[1] = *(v0 + 416);
  v14[2] = *(v0 + 424);
  v15 = *(v0 + 130);
  v2 = DatabaseIdentifier.stringRepresentation()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_230E6B3B0;
  *(v3 + 32) = 0x6144616D65686373;
  *(v3 + 40) = 0xEA00000000006174;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  sub_230E69540();

  strcpy(v14, "identifier = '");
  HIBYTE(v14[1]) = -18;
  MEMORY[0x23191DA00](v2._countAndFlagsBits, v2._object);

  MEMORY[0x23191DA00](39, 0xE100000000000000);
  v4 = v14[0];
  v5 = v14[1];
  LOBYTE(v14[0]) = 1;
  v16 = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000230E81B30;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 128) = 1;
  v6 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v6;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = 1;
  v7 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v7;
  v8 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 16);
  *(v0 + 360) = *v1;
  *(v0 + 376) = v10;
  *(v0 + 392) = v9;
  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  *v11 = v0;
  v11[1] = sub_230D4FA94;
  v12 = *(v0 + 432);

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230D4FA94()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v6 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_230D4FD9C;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230D4FBB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230D4FBB0()
{
  v1 = v0[50];
  if (!*(v1 + 16))
  {
    v9 = v0[50];
LABEL_8:

    goto LABEL_9;
  }

  v2 = *(v1 + 32);

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_230DA41A0(0x6144616D65686373, 0xEA00000000006174);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 56) + 24 * v3;
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_230D0DCD8(*v5, v6, *(v5 + 16));

  if (v8)
  {
    sub_230D0F474(v7, v6, v8);
LABEL_9:
    v10 = 1;
LABEL_10:
    (*(*(v0[56] - 8) + 56))(v0[51], v10, 1);
    v11 = v0[1];
    goto LABEL_11;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v13 = v0[58];
  v14 = v0[56];
  v15 = v0[51];
  v16 = sub_230E686C0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_230E686B0();
  sub_230D503C4();
  sub_230E686A0();
  if (!v13)
  {
    sub_230D0F474(v7, v6, 0);

    v10 = 0;
    goto LABEL_10;
  }

  sub_230D0F474(v7, v6, 0);
  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_230D4FD9C()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 464);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230D4FE00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 432) = a6;
  *(v7 + 440) = a7;
  *(v7 + 130) = a5;
  *(v7 + 416) = a3;
  *(v7 + 424) = a4;
  *(v7 + 129) = a2;
  *(v7 + 408) = a1;
  return MEMORY[0x2822009F8](sub_230D4FE30, 0, 0);
}

uint64_t sub_230D4FE30()
{
  v17 = v0;
  v1 = *(v0 + 440);
  LOBYTE(v14[0]) = *(v0 + 129);
  v14[1] = *(v0 + 416);
  v14[2] = *(v0 + 424);
  v15 = *(v0 + 130);
  v2 = DatabaseIdentifier.stringRepresentation()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_230E6B3B0;
  *(v3 + 32) = 0x6144616D65686373;
  *(v3 + 40) = 0xEA00000000006174;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  sub_230E69540();

  strcpy(v14, "identifier = '");
  HIBYTE(v14[1]) = -18;
  MEMORY[0x23191DA00](v2._countAndFlagsBits, v2._object);

  MEMORY[0x23191DA00](39, 0xE100000000000000);
  v4 = v14[0];
  v5 = v14[1];
  LOBYTE(v14[0]) = 1;
  v16 = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000230E81B30;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 128) = 1;
  v6 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v6;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = 1;
  v7 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v7;
  v8 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 16);
  *(v0 + 360) = *v1;
  *(v0 + 376) = v10;
  *(v0 + 392) = v9;
  v11 = swift_task_alloc();
  *(v0 + 448) = v11;
  *v11 = v0;
  v11[1] = sub_230D5008C;
  v12 = *(v0 + 432);

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230D5008C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v6 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = sub_230D50360;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230D501A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230D501A8()
{
  v1 = v0[50];
  if (!*(v1 + 16))
  {
    v9 = v0[50];
LABEL_8:

    goto LABEL_9;
  }

  v2 = *(v1 + 32);

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_230DA41A0(0x6144616D65686373, 0xEA00000000006174);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 56) + 24 * v3;
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_230D0DCD8(*v5, v6, *(v5 + 16));

  if (v8)
  {
    sub_230D0F474(v7, v6, v8);
LABEL_9:
    v10 = v0[51];
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
LABEL_10:
    v11 = v0[1];
    goto LABEL_11;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v13 = v0[57];
  v14 = v0[51];
  v15 = sub_230E686C0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_230E686B0();
  sub_230D45B30();
  sub_230E686A0();
  if (!v13)
  {
    sub_230D0F474(v7, v6, 0);

    goto LABEL_10;
  }

  sub_230D0F474(v7, v6, 0);
  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_230D50360()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 456);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_230D503C4()
{
  result = qword_27DB5AC40;
  if (!qword_27DB5AC40)
  {
    type metadata accessor for SQLDatabaseConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC40);
  }

  return result;
}

uint64_t sub_230D5041C(uint64_t a1)
{
  v37 = sub_230E68B80();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37, v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v36 = v7;
  v31[1] = v1;
  v40 = MEMORY[0x277D84F90];
  sub_230D48DE8(0, v8, 0);
  v9 = v40;
  v10 = -1 << *(a1 + 32);
  v38 = a1 + 64;
  result = sub_230E694B0();
  v12 = result;
  v13 = 0;
  v39 = *(a1 + 36);
  v34 = v3 + 32;
  v35 = v3;
  v32 = a1 + 72;
  v33 = v8;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v38 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v17 = (*(a1 + 48) + 16 * v12);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(a1 + 56) + 8 * v12);

    v21 = v36;
    sub_230E68B70();
    v40 = v9;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_230D48DE8(v22 > 1, v23 + 1, 1);
      v9 = v40;
    }

    *(v9 + 16) = v23 + 1;
    result = (*(v35 + 32))(v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v21, v37);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    v24 = *(v38 + 8 * v16);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v15 = v33;
    }

    else
    {
      v26 = v16 << 6;
      v27 = v16 + 1;
      v15 = v33;
      v28 = (v32 + 8 * v16);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_230D52C58(v12, v39, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_230D52C58(v12, v39, 0);
    }

LABEL_4:
    ++v13;
    v12 = v14;
    if (v13 == v15)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_230D50744(uint64_t *a1)
{
  v2 = v1;
  v41 = sub_230E68B60();
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v41, v5);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_230E68B20();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_230E68860();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_230E68B10();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v37 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = a1[1];
  v22 = *(a1 + 16);
  v23 = a1[3];
  v24 = *(a1 + 32);
  v25 = *(a1 + 33);
  swift_defaultActor_initialize();
  v43 = v21;
  v44 = v21;
  v45 = v20;
  v38 = v22;
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v26 = v50;
  VectorDatabaseConfiguration.path.getter(v15);
  v50 = v26;
  if (v26)
  {

    type metadata accessor for VectorDatabaseClient();
    swift_defaultActor_destroy();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = *(v36 + 104);
    LODWORD(v36) = v24;
    v27(v40, **(&unk_2788F3428 + v24), v7);
    v28 = MEMORY[0x277D78218];
    if (!v25)
    {
      v28 = MEMORY[0x277D78210];
    }

    (*(v39 + 104))(v42, *v28, v41);
    sub_230E68B00();
    v29 = sub_230E68AF0();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_230E68A90();
    v33 = v43;
    *(v2 + 112) = v32;
    *(v2 + 120) = v33;
    *(v2 + 128) = v20;
    *(v2 + 136) = v38;
    *(v2 + 144) = v23;
    *(v2 + 152) = v36;
    *(v2 + 153) = v25;
    v44 = 0;
    v45 = 0xE000000000000000;

    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E81E10);
    MEMORY[0x23191DA00](v33, v20);

    sub_230E68950();
  }

  return v2;
}

uint64_t sub_230D50B48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 120) = *a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 112) = *a2;
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D50B84, v3, 0);
}

uint64_t sub_230D50B84()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    *(v0 + 168) = v1;
    *(v0 + 176) = v2;
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_230D50F88;
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return sub_230D73C94(v11, 11, v0 + 16, v9, v9, v10);
  }

  else
  {
    *(v0 + 192) = 11;
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_230D50D44;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 192), 0, 0);
  }
}

uint64_t sub_230D50D44()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D50E54, v2, 0);
}

uint64_t sub_230D50E54()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 168) = v3;
  *(v0 + 176) = v6;
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  *(v0 + 16) = v1;
  v13 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v12, v10, v9);
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_230D50F88;
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v17 = *(v0 + 96);

  return sub_230D73C94(v17, 11, v0 + 16, v15, v15, v16);
}

uint64_t sub_230D50F88()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_230D510BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_230D510DC, a2, 0);
}

uint64_t sub_230D510DC()
{
  v1 = v0[5];
  v2 = *(v0[4] + 112);
  if (v1)
  {
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000034, 0x8000000230E81D50);
    v0[2] = *(v1 + 16);
    v3 = sub_230E69890();
    MEMORY[0x23191DA00](v3);

    MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
    sub_230E68950();

    v4 = sub_230E68AA0();
  }

  else
  {
    sub_230E68950();
    v4 = sub_230E68A80();
    sub_230E68AE0();
  }

  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E81D90);
  v0[2] = v4;
  v5 = sub_230E69890();
  MEMORY[0x23191DA00](v5);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  v6 = v0[3];
  sub_230E68950();

  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_230D5139C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 120) = *a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 112) = *a2;
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D513D8, v3, 0);
}

uint64_t sub_230D513D8()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    *(v0 + 168) = v1;
    *(v0 + 176) = v2;
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_230D52C64;
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return sub_230D747EC(v11, 12, v0 + 16, v9, v10, v9);
  }

  else
  {
    *(v0 + 192) = 12;
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_230D51598;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 192), 0, 0);
  }
}

uint64_t sub_230D51598()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D516A8, v2, 0);
}

uint64_t sub_230D516A8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 168) = v3;
  *(v0 + 176) = v6;
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  *(v0 + 16) = v1;
  v13 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v12, v10, v9);
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_230D52C64;
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v17 = *(v0 + 96);

  return sub_230D747EC(v17, 12, v0 + 16, v15, v16, v15);
}

uint64_t sub_230D517DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_230D51800, a3, 0);
}

uint64_t sub_230D51800()
{
  v1 = v0[4];
  v2 = *(v0[5] + 112);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000035, 0x8000000230E81C10);
  v0[2] = *(v1 + 16);
  v3 = sub_230E69890();
  MEMORY[0x23191DA00](v3);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  sub_230E68950();

  v4 = sub_230D5041C(v1);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000032, 0x8000000230E81C50);
  v0[2] = *(v4 + 16);
  v5 = sub_230E69890();
  MEMORY[0x23191DA00](v5);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  sub_230E68950();

  v6 = sub_230E68AB0();

  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000034, 0x8000000230E81C90);
  v0[2] = v6;
  v7 = sub_230E69890();
  MEMORY[0x23191DA00](v7);

  MEMORY[0x23191DA00](0x73656972746E6520, 0xE800000000000000);
  sub_230E68950();

  sub_230E68950();
  sub_230E68AD0();
  v9 = v0[3];
  sub_230E68950();
  *v9 = v6;
  v10 = v0[1];

  return v10();
}

uint64_t sub_230D51B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = *a2;
  v5 = *(a3 + 16);
  *(v4 + 136) = *a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 128) = *(a2 + 16);
  *(v4 + 209) = *(a2 + 24);
  *(v4 + 152) = v5;
  *(v4 + 168) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D51B5C, v3, 0);
}

uint64_t sub_230D51B5C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    *(v0 + 184) = v1;
    *(v0 + 192) = v2;
    v6 = *(v0 + 209);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    sub_230D0DD0C(v7, v8);

    sub_230D0585C(v4, v5, v1);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_230D51F94;
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);
    v18 = *(v0 + 104);

    JUMPOUT(0x230D75344);
  }

  *(v0 + 208) = 13;
  v15 = swift_task_alloc();
  *(v0 + 176) = v15;
  *v15 = v0;
  v15[1] = sub_230D51D38;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 208), 0, 0);
}

uint64_t sub_230D51D38()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230D51E48, v2, 0);
}

void sub_230D51E48()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 184) = v3;
  *(v0 + 192) = v6;
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 136);
  v12 = *(v0 + 209);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  *(v0 + 16) = v1;
  v15 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0DD0C(v13, v14);

  sub_230D0585C(v11, v10, v9);
  v16 = swift_task_alloc();
  *(v0 + 200) = v16;
  *v16 = v0;
  v16[1] = sub_230D51F94;
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 96);
  v22 = *(v0 + 104);

  JUMPOUT(0x230D75344);
}

uint64_t sub_230D51F94()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_230D520C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  *(v6 + 96) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v8 = sub_230E68B50();
  *(v6 + 72) = v8;
  v9 = *(v8 - 8);
  *(v6 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D52198, a6, 0);
}

uint64_t sub_230D52198()
{
  if (*(v0 + 96))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 56);
  }

  v2 = *(*(v0 + 64) + 112);
  v3 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000038, 0x8000000230E81BA0);
  if (v1 < 1)
  {
    v5 = 0;
  }

  else
  {
    sub_230E69540();

    *(v0 + 24) = v1;
    v4 = sub_230E69890();
    MEMORY[0x23191DA00](v4);

    MEMORY[0x23191DA00](0x73746C7573657220, 0xE800000000000000);
    v5 = 0x206F74207075;
    v3 = 0xE600000000000000;
  }

  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  MEMORY[0x23191DA00](v5, v3);

  sub_230E68950();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B3D8, &unk_230E6F760);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_230E6B3B0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  sub_230D0DD0C(v7, v6);
  if (v1 < 1)
  {
    sub_230E68A80();
  }

  else
  {
    v9 = *(v0 + 56);
  }

  v10 = sub_230E68AC0();

  if (!*(v10 + 16))
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v12 = *(v10 + 32);

  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000002DLL, 0x8000000230E81BE0);
  *(v0 + 16) = *(v12 + 16);
  v13 = sub_230E69890();
  MEMORY[0x23191DA00](v13);

  MEMORY[0x23191DA00](0x73746C7573657220, 0xE800000000000000);
  v14 = MEMORY[0x277D84F90];
  sub_230E68950();

  result = sub_230D0DE84(v14);
  v15 = result;
  v47 = *(v12 + 16);
  if (!v47)
  {
LABEL_31:
    v41 = *(v0 + 88);
    v42 = *(v0 + 32);

    *v42 = v15;

    v43 = *(v0 + 8);

    return v43();
  }

  v16 = 0;
  v17 = *(v0 + 80);
  v45 = v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v46 = v17;
  v44 = (v17 + 8);
  while (1)
  {
    if (v16 >= *(v12 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v18 = v12;
    (*(v46 + 16))(*(v0 + 88), v45 + *(v46 + 72) * v16, *(v0 + 72));
    v19 = sub_230E68B30();
    v21 = v20;
    sub_230E68B40();
    v23 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_230DA41A0(v19, v21);
    v27 = v15[2];
    v28 = (v25 & 1) == 0;
    result = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_38;
    }

    v29 = v25;
    if (v15[3] < result)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v25)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_230DB9CAC();
      if (v29)
      {
LABEL_20:

        goto LABEL_24;
      }
    }

LABEL_22:
    v15[(v26 >> 6) + 8] |= 1 << v26;
    v31 = (v15[6] + 16 * v26);
    *v31 = v19;
    v31[1] = v21;
    *(v15[7] + 8 * v26) = MEMORY[0x277D84F90];
    v32 = v15[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_39;
    }

    v15[2] = v34;
LABEL_24:
    v35 = v15[7];
    v36 = *(v35 + 8 * v26);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v35 + 8 * v26) = v36;
    if ((v37 & 1) == 0)
    {
      v36 = sub_230E4A0DC(0, *(v36 + 2) + 1, 1, v36);
      *(v35 + 8 * v26) = v36;
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      *(v35 + 8 * v26) = sub_230E4A0DC((v38 > 1), v39 + 1, 1, v36);
    }

    ++v16;
    result = (*v44)(*(v0 + 88), *(v0 + 72));
    v40 = *(v35 + 8 * v26);
    *(v40 + 16) = v39 + 1;
    *(v40 + 8 * v39 + 32) = v23;
    v12 = v18;
    if (v47 == v16)
    {
      goto LABEL_31;
    }
  }

  sub_230DB674C(result, isUniquelyReferenced_nonNull_native);
  result = sub_230DA41A0(v19, v21);
  if ((v29 & 1) == (v30 & 1))
  {
    v26 = result;
    if (v29)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  return sub_230E69950();
}

uint64_t VectorDatabaseClient.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VectorDatabaseClient.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_230D527EC(uint64_t a1)
{
  result = sub_230D52814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_230D52814()
{
  result = qword_27DB5B4B0;
  if (!qword_27DB5B4B0)
  {
    type metadata accessor for VectorDatabaseClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B4B0);
  }

  return result;
}

uint64_t dispatch thunk of VectorDatabaseClient.deleteFromDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_230D1BF00;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of VectorDatabaseClient.insertIntoDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_230D1D2F8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of VectorDatabaseClient.searchDatabase(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_230D1D2F8;

  return v12(a1, a2, a3);
}

uint64_t sub_230D52C58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_230D52C68(uint64_t a1)
{
  v2 = sub_230D53D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52CA4(uint64_t a1)
{
  v2 = sub_230D53D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52CE0(uint64_t a1)
{
  v2 = sub_230D53CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52D1C(uint64_t a1)
{
  v2 = sub_230D53CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52D58()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000014;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6146737365636361;
    v3 = 0xD000000000000011;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x7475706E49646162;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_230D52E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D559EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D52EAC(uint64_t a1)
{
  v2 = sub_230D53AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52EE8(uint64_t a1)
{
  v2 = sub_230D53AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52F24(uint64_t a1)
{
  v2 = sub_230D53C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D52F60(uint64_t a1)
{
  v2 = sub_230D53C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D52F9C(uint64_t a1)
{
  v2 = sub_230D53B4C();

  return MEMORY[0x2821FE718](a1, v2);
}