uint64_t sub_100197088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1001970B0, 0, 0);
}

uint64_t sub_1001970B0()
{
  v0[8] = os_transaction_create();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10019715C;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_100197338(v6, v7, v4, v5, v2, v3);
}

uint64_t sub_10019715C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1001972D4;
  }

  else
  {
    v3 = sub_100197270;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100197270()
{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001972D4()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100197338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v10 = sub_1001CFD60();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = *(*(sub_100011AC0(&qword_1002292B0, &unk_1001D6420) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v14 = sub_1001D08A0();
  v6[16] = v14;
  v15 = *(v14 - 8);
  v6[17] = v15;
  v16 = *(v15 + 64) + 15;
  v6[18] = swift_task_alloc();
  v17 = type metadata accessor for ThimbledEvent();
  v6[19] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v19 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v6[21] = v19;
  v20 = *(v19 - 8);
  v6[22] = v20;
  v21 = *(v20 + 64) + 15;
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001975AC, 0, 0);
}

uint64_t sub_1001975AC()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v68 = v3;
  v77 = *(v0 + 136);
  v78 = *(v0 + 128);
  v74 = *(v0 + 120);
  v76 = *(v0 + 40);
  v70 = *(v0 + 152);
  v72 = *(v0 + 32);
  v5 = *(v0 + 24);
  *(v0 + 192) = *(**(v0 + 16) + 328);
  swift_storeEnumTagMultiPayload();
  *(v0 + 200) = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  v7 = *(v2 + 8);
  v6 = (v2 + 8);
  *(v0 + 208) = v7;
  *(v0 + 216) = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v8 = (v4 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
  v9 = *(v5 + *(*v5 + 368));
  v10 = *(*v9 + 320);
  v11 = sub_1001CFDA0();
  *(v0 + 224) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  *(v0 + 232) = v13;
  *(v0 + 240) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v67 = v9;
  v13(v4, v9 + v10, v11);
  v14 = *(v72 + 88);
  *v8 = *(v72 + 80);
  v8[1] = v14;
  swift_storeEnumTagMultiPayload();

  sub_1001D1BC0();
  v7(v1, v68);
  sub_100096A60(v74);
  if ((*(v77 + 48))(v74, 1, v78) != 1)
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 16);
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
    v18 = *(v17 + *(*v17 + 320));
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v19 = *(v18 + 16);
    v20 = v18 + qword_10022F7E8;
    os_unfair_lock_lock((v18 + qword_10022F7E8));
    v21 = swift_task_alloc();
    *(v21 + 16) = v16;
    *(v21 + 24) = v18;
    v22 = (v20 + 8);
    v23 = sub_10005E7D8(sub_10005EE28, v21);
    v24 = *(*(v20 + 8) + 16);
    if (v24 < v23)
    {
      __break(1u);
      goto LABEL_24;
    }

    v25 = *(v0 + 144);
    sub_10005B55C(v23, v24);

    v26 = *(v20 + 8);
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    v28 = sub_10005E334(sub_1001AB9D8, v27, v26);
    v30 = v29;

    LOBYTE(v76) = v30;
    if ((v30 & 1) == 0)
    {
      v6 = (v0 + 80);
      v40 = *(v0 + 80);
      v41 = *(v0 + 136);
      v73 = *(v0 + 128);
      v75 = *(v0 + 144);
      v42 = *(v0 + 104);
      v43 = *(v0 + 88);
      v44 = *(v0 + 96);
      v69 = *(v0 + 56);
      v71 = *(v0 + 112);
      sub_10019B278(v28, v43);
      sub_100011F00(v43, &unk_100230260, &qword_1001D3660);
      (*(v42 + 16))(v40, v71, v44);
      (*(v41 + 16))(v40 + *(v69 + 52), v75, v73);
LABEL_14:
      v22 = *(v20 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8) = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_15:
        v47 = v22[2];
        v46 = v22[3];
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v22 = sub_1000095F0(v46 > 1, v48, 1, v22);
          v49 = *v6;
          *(v20 + 8) = v22;
          v48 = v47 + 1;
        }

        else
        {
          v49 = *v6;
        }

        v51 = *(v0 + 136);
        v50 = *(v0 + 144);
        v52 = *(v0 + 128);
        v53 = *(v0 + 104);
        v54 = *(v0 + 112);
        v55 = *(v0 + 96);
        v56 = *(v0 + 64);
        v22[2] = v48;
        sub_1000DBEF4(v49, *(v20 + 8) + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v47, &unk_100230260, &qword_1001D3660);
        os_unfair_lock_unlock(v20);
        sub_10019B3BC(v54);
        (*(v53 + 8))(v54, v55);
        (*(v51 + 8))(v50, v52);
        v15 = v76;
        goto LABEL_18;
      }

LABEL_24:
      v64 = v22[2];

      v65 = sub_1000095F0(0, v64 + 1, 1, v22);
      v66 = *(v20 + 8);
      *(v20 + 8) = v65;

      v22 = *(v20 + 8);
      goto LABEL_15;
    }

    v32 = *(*(v20 + 8) + 16);
    v33 = v32 - v19;
    if (v32 < v19)
    {
      goto LABEL_12;
    }

    if (__OFSUB__(v32, v19))
    {
      __break(1u);
    }

    else
    {
      v34 = v33 + 1;
      if (!__OFADD__(v33, 1))
      {
        if (v33 != -1)
        {
          if ((v34 & 0x8000000000000000) == 0)
          {
            if (v32 >= v34)
            {
              sub_10005B55C(0, v34);
              goto LABEL_12;
            }

LABEL_29:
            __break(1u);
            return result;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_12:
        v6 = (v0 + 72);
        v35 = *(v0 + 72);
        v37 = *(v0 + 136);
        v36 = *(v0 + 144);
        v38 = *(v0 + 128);
        v39 = *(v0 + 56);
        (*(*(v0 + 104) + 16))(v35, *(v0 + 112), *(v0 + 96));
        (*(v37 + 16))(v35 + *(v39 + 52), v36, v38);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_100011F00(*(v0 + 120), &qword_1002292B0, &unk_1001D6420);
  v15 = 0;
LABEL_18:
  *(v0 + 264) = v15 & 1;
  sub_1001D0170();
  sub_1001D1840();

  v57 = os_variant_allows_internal_security_policies();

  if (v57)
  {
    v58 = *(v0 + 48);
    v59 = *(v0 + 16) + *(**(v0 + 16) + 344);
    os_unfair_lock_lock(v59);

    v60 = *(v59 + 8);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v59 + 8);
    *(v59 + 8) = 0x8000000000000000;
    sub_10001B4EC(v67, v58, v61);
    *(v59 + 8) = v79;
    os_unfair_lock_unlock(v59);
  }

  v62 = swift_task_alloc();
  *(v0 + 248) = v62;
  *v62 = v0;
  v62[1] = sub_100197C48;
  v63 = *(v0 + 24);

  return sub_10016B800();
}

uint64_t sub_100197C48()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_100197FF4;
  }

  else
  {
    v3 = sub_100197D5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100197D5C()
{
  if (*(v0 + 264) == 1)
  {
    v1 = *(v0 + 16) + qword_100243510;
    v2 = sub_1001D0E50();
    v3 = sub_1001D1E00();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "need to prefetch attestations for this workload", v4, 2u);
    }

    v38 = *(v0 + 208);
    v40 = *(v0 + 216);
    v5 = *(v0 + 192);
    v6 = *(v0 + 184);
    v7 = *(v0 + 160);
    v34 = *(v0 + 200);
    v36 = *(v0 + 168);
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 40);
    v12 = *(v0 + 16);

    (*(v9 + 16))(v7, v11, v10);
    swift_storeEnumTagMultiPayload();
    sub_1001D1BC0();
    v38(v6, v36);
  }

  v24 = *(v0 + 232);
  v25 = *(v0 + 240);
  v13 = *(v0 + 224);
  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  v14 = *(v0 + 184);
  v27 = *(v0 + 192);
  v28 = *(v0 + 200);
  v15 = *(v0 + 160);
  v29 = *(v0 + 168);
  v26 = *(v0 + 152);
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v32 = *(v0 + 144);
  v33 = *(v0 + 120);
  v35 = *(v0 + 112);
  v37 = *(v0 + 88);
  v39 = *(v0 + 80);
  v41 = *(v0 + 72);
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v20 = *(v0 + 16);
  v21 = *(sub_100011AC0(&unk_1002301B0, &unk_1001E1610) + 48);
  v24(v15, v18, v13);
  (*(v16 + 16))(v15 + v21, v19, v17);
  swift_storeEnumTagMultiPayload();
  sub_1001D1BC0();
  v30(v14, v29);
  sub_1001980CC(v20, v18);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100197FF4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  sub_1001980CC(*(v0 + 16), *(v0 + 48));

  v9 = *(v0 + 8);
  v10 = *(v0 + 256);

  return v9();
}

void sub_1001980CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v58 - v7;
  v68 = sub_1001CFD60();
  v9 = *(v68 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v68, v11);
  v67 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001D0720();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v17, v20);
  v66 = &v58 - v22;
  v24 = __chkstk_darwin(v21, v23);
  v65 = &v58 - v25;
  __chkstk_darwin(v24, v26);
  v69 = &v58 - v27;
  sub_1001D0170();
  sub_1001D1840();

  v28 = os_variant_allows_internal_security_policies();

  if (v28)
  {
    v59 = v19;
    v29 = a1 + *(*a1 + 344);
    os_unfair_lock_lock(v29);
    sub_1001A3024(v29 + 1, a2, a1);
    os_unfair_lock_unlock(v29);
    os_unfair_lock_lock(v29);
    v58 = v29;
    v30 = *(v29 + 2);
    v64 = (v29 + 16);
    v32 = (v30 + 24);
    v31 = *(v30 + 3);
    if (v31)
    {
      v62 = (v9 + 8);
      v63 = v14 + 16;
      v60 = (v14 + 56);
      v61 = (v14 + 8);
      while (1)
      {
        v35 = v31 - 1;
        if (__OFSUB__(v31, 1))
        {
          break;
        }

        if (v35 < 0)
        {
          goto LABEL_24;
        }

        if (v35 >= v31)
        {
          goto LABEL_25;
        }

        v36 = v8;
        v37 = *(v30 + 4) + v35;
        v38 = *(v30 + 2);
        if (v37 < v38)
        {
          v38 = 0;
        }

        v39 = (*(v14 + 80) + 40) & ~*(v14 + 80);
        v40 = *(v14 + 72);
        v41 = v66;
        (*(v14 + 16))(v66, &v30[v39 + (v37 - v38) * v40], v13);
        v42 = *(v14 + 32);
        v43 = v65;
        v42(v65, v41, v13);
        v42(v69, v43, v13);
        v44 = v67;
        sub_1001D0710();
        sub_1001CFD00();
        v46 = v45;
        (*v62)(v44, v68);
        if (v46 >= -300.0)
        {
          (*v61)(v69, v13);
          goto LABEL_21;
        }

        if (*v32)
        {
          v34 = v64;
          v47 = *v64;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001190FC();
          }

          v50 = *v34;
          v51 = *(*v34 + 3);
          v52 = __OFSUB__(v51, 1);
          v53 = v51 - 1;
          if (v52)
          {
            goto LABEL_26;
          }

          v54 = *(v50 + 4) + v53;
          v55 = *(v50 + 2);
          if (v54 < v55)
          {
            v55 = 0;
          }

          v42(v49, &v50[v39 + (v54 - v55) * v40], v13);
          v56 = *(v50 + 3);
          v52 = __OFSUB__(v56, 1);
          v57 = v56 - 1;
          if (v52)
          {
            goto LABEL_27;
          }

          *(v50 + 3) = v57;
          (*v61)(v69, v13);
          v8 = v36;
          v42(v36, v49, v13);
          v33 = 0;
        }

        else
        {
          (*v61)(v69, v13);
          v33 = 1;
          v8 = v36;
          v34 = v64;
        }

        (*v60)(v8, v33, 1, v13);
        sub_100011F00(v8, &qword_100228AF0, &qword_1001E1630);
        v30 = *v34;
        v32 = (*v34 + 24);
        v31 = *v32;
        if (!*v32)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    else
    {
LABEL_21:
      os_unfair_lock_unlock(v58);
    }
  }
}

uint64_t sub_1001985C8(uint64_t a1)
{
  v66 = a1;
  v1 = sub_1001D02F0();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  __chkstk_darwin(v1, v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001D0E60();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5, v7);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D1810();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1001D0720();
  v13 = *(v64 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v64, v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1001D06E0();
  v65 = *(v63 - 8);
  v18 = *(v65 + 64);
  __chkstk_darwin(v63, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001CF7E0();
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = *(v23 + 64);
  __chkstk_darwin(v22, v26);
  v27 = sub_1001CF820();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_1001CF810();
  sub_100011AC0(&qword_10022FCB8, &qword_1001E1648);
  v30 = *(v23 + 72);
  v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001D5410;
  sub_1001CF7D0();
  sub_1001CF7C0();
  v67 = v32;
  sub_1001B0458(&qword_10022FCC0, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100011AC0(&qword_10022FCC8, &qword_1001E1650);
  sub_100024B78(&qword_10022FCD0, &qword_10022FCC8, &qword_1001E1650);
  v33 = v63;
  sub_1001D1FA0();
  sub_1001CF7F0();
  (*(v13 + 16))(v17, v66, v64);
  sub_1001D06F0();
  sub_1001B0458(&qword_10022FCD8, &type metadata accessor for TrustedRequestLogEntry);
  v38 = sub_1001CF800();
  v40 = v39;
  v42 = v60;
  v41 = v61;
  v43 = v62;
  v44 = v59;
  (*(v65 + 8))(v21, v33);
  sub_1001D1800();
  v45 = sub_1001D17F0();
  if (v46)
  {
    v47 = v46;
    v48 = v45;
    v49 = v43;
    (*(v41 + 104))(v42, enum case for TC2LogCategory.requestLog(_:), v43);
    v50 = v44;
    sub_1001D08B0();
    (*(v41 + 8))(v42, v49);

    v51 = sub_1001D0E50();
    v52 = sub_1001D1E00();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v67 = v54;
      *v53 = 136315138;
      v55 = sub_1000954E0(v48, v47, &v67);

      *(v53 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s", v53, 0xCu);
      sub_100011CF0(v54);
    }

    else
    {
    }

    sub_100011E48(v38, v40);

    return (*(v56 + 8))(v50, v57);
  }

  else
  {
    sub_100011E48(v38, v40);
    v34 = sub_1001D0E50();
    v35 = sub_1001D1DE0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "unable to encode and log request", v36, 2u);
    }
  }
}

void sub_100198CF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001CFBE0().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100198D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  v10 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v9[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v9[18] = swift_task_alloc();
  v12 = *(*(type metadata accessor for NWConnectionWrapper.State(0) - 8) + 64) + 15;
  v9[19] = swift_task_alloc();
  v13 = sub_1001CFDA0();
  v9[20] = v13;
  v14 = *(v13 - 8);
  v9[21] = v14;
  v15 = *(v14 + 64) + 15;
  v9[22] = swift_task_alloc();
  v16 = sub_1001D02F0();
  v9[23] = v16;
  v17 = *(v16 - 8);
  v9[24] = v17;
  v18 = *(v17 + 64) + 15;
  v9[25] = swift_task_alloc();
  v19 = sub_1001D0E60();
  v9[26] = v19;
  v20 = *(v19 - 8);
  v9[27] = v20;
  v21 = *(v20 + 64) + 15;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();

  return _swift_task_switch(sub_100198F58, 0, 0);
}

uint64_t sub_100198F58()
{
  v1 = *(*(v0 + 128) + 16);
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_100198FEC;

  return sub_10013F08C(v2);
}

uint64_t sub_100198FEC()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1001998D0;
  }

  else
  {
    v3 = sub_100199100;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100199100()
{
  v73 = v0;
  v1 = v0[16];
  v2 = v0[9];
  sub_1001D11A0();
  v3 = *(v1 + 8);

  v4 = sub_1001D1110();
  v0[33] = v4;
  if (v4)
  {
    v61 = v0[30];
    v5 = v0[27];
    v54 = v0[29];
    v6 = v0[25];
    v8 = v0[23];
    v7 = v0[24];
    v63 = v0[22];
    v64 = v0[26];
    v68 = v0[21];
    v66 = v0[20];
    v57 = v0[19];
    v69 = v0[16];
    v62 = v0[11];
    v55 = v0[10];
    v70 = v4;
    sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
    v9 = swift_allocObject();
    v0[34] = v9;
    *(v9 + 16) = 0;
    *(v9 + 24) = &_swiftEmptyArrayStorage;
    *(v9 + 32) = 0;
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v0[35] = sub_1001D1E40();
    v10 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v11 = enum case for TC2LogCategory.network(_:);
    v12 = *(v7 + 104);

    v60 = v11;
    v59 = v12;
    v12(v6, v11, v8);
    sub_1001D08B0();
    v58 = *(v7 + 8);
    v58(v6, v8);
    v13 = *(v5 + 16);
    v13(v54, v61, v64);
    (*(v68 + 16))(v63, v69 + v10, v66);
    v14 = type metadata accessor for NWConnectionWrapper(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    v0[36] = v17;
    v18 = (v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    v19 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    (*(*(v19 - 8) + 56))(v57, 1, 2, v19);
    *v18 = 0;
    v20 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    v21 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
    bzero(v18 + v20, *(*(v21 - 8) + 64));
    sub_1001B0368(v57, v18 + v20, type metadata accessor for NWConnectionWrapper.State);
    *(v17 + 16) = v70;
    v56 = v13;
    v13((v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v54, v64);
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);

    v71 = sub_1001D23A0();
    v72 = v22;
    v75._countAndFlagsBits = 1130045498;
    v75._object = 0xE400000000000000;
    sub_1001D18B0(v75);
    v0[6] = sub_1001D1000();
    v76._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v76);

    v77._countAndFlagsBits = 2629725;
    v77._object = 0xE300000000000000;
    sub_1001D18B0(v77);
    v78._countAndFlagsBits = v55;
    v78._object = v62;
    sub_1001D18B0(v78);
    v79._countAndFlagsBits = 41;
    v79._object = 0xE100000000000000;
    sub_1001D18B0(v79);
    v23 = v72;
    v24 = (v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
    *v24 = v71;
    v24[1] = v23;
    *(v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = v9;
    v25 = *(v17 + 16);

    sub_1001D10B0();
    (*(v68 + 8))(v63, v66);
    v26 = *(v5 + 8);
    v0[37] = v26;
    v0[38] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v54, v64);
    v0[39] = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

    v27 = sub_1001D0E50();
    v28 = sub_1001D1DD0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v71 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1000954E0(*(v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v17 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v71);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s start", v29, 0xCu);
      sub_100011CF0(v30);
    }

    v31 = v0[30];
    v32 = v0[28];
    v34 = v0[25];
    v33 = v0[26];
    v35 = v0[23];
    v65 = v0[20];
    v37 = v0[17];
    v36 = v0[18];
    v67 = *(v0 + 5);
    v38 = *(v17 + 16);
    sub_1001D1170();
    v56(v36 + *(v37 + 20), v31, v33);
    v39 = *(v37 + 24);
    sub_100011AC0(qword_100227990, &unk_1001D34D0);
    v40 = swift_allocObject();
    *(v40 + 20) = 0;
    *(v40 + 16) = 0;
    *(v36 + v39) = v40;
    *v36 = v17;

    v59(v34, v60, v35);
    sub_1001D08B0();
    v58(v34, v35);
    v71 = sub_1001D23A0();
    v72 = v41;
    v80._countAndFlagsBits = 1130045498;
    v80._object = 0xE400000000000000;
    sub_1001D18B0(v80);
    v0[7] = sub_1001D1000();
    v81._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v81);

    v82._countAndFlagsBits = 2629725;
    v82._object = 0xE300000000000000;
    sub_1001D18B0(v82);
    sub_1001D18B0(v67);
    v83._countAndFlagsBits = 41;
    v83._object = 0xE100000000000000;
    sub_1001D18B0(v83);
    v42 = v72;
    v0[40] = v71;
    v0[41] = v42;
    v43 = swift_task_alloc();
    v0[42] = v43;
    *v43 = v0;
    v43[1] = sub_10019998C;

    return sub_10013F08C(v43);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
    v47 = v0[29];
    v46 = v0[30];
    v48 = v0[28];
    v49 = v0[25];
    v50 = v0[22];
    v52 = v0[18];
    v51 = v0[19];

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_1001998D0()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10019998C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);

    v5 = sub_100199CB8;
  }

  else
  {
    v5 = sub_100199AA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100199AA8()
{
  v5 = (v0[12] + *v0[12]);
  v1 = *(v0[12] + 4);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_100199B94;
  v3 = v0[13];

  return v5();
}

uint64_t sub_100199B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 352);
  v11 = *v5;
  v6[45] = a1;
  v6[46] = a2;
  v6[47] = a3;
  v6[48] = a4;
  v6[49] = v4;

  if (v4)
  {
    v8 = v6[41];

    v9 = sub_10019A52C;
  }

  else
  {
    v9 = sub_100199ED8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100199CB8()
{
  v29 = v0;
  v27 = *(v0 + 344);
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 144);
  (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
  sub_1001AFB98(v4, type metadata accessor for NWAsyncConnection.Inbound);

  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000954E0(*(v7 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v7 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v28);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s cancel", v8, 0xCu);
    sub_100011CF0(v9);
  }

  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v15 = *(v0 + 240);
  v16 = *(v0 + 208);
  v17 = *(*(v0 + 288) + 16);
  sub_1001D1180();

  v11(v15, v16);

  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 176);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100199ED8()
{
  v82 = v0;
  v1 = (v0 + 360);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 328);
  v5 = *(v0 + 224);
  sub_100012038(*(v0 + 360), *(v0 + 368));
  sub_100012038(v2, v3);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1DD0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 384);
  if (!v8)
  {
    v17 = *(v0 + 376);
    sub_100011E48(*(v0 + 360), *(v0 + 368));
    sub_100011E48(v17, v9);
    goto LABEL_24;
  }

  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v81[0] = v13;
  *v12 = 136315650;
  result = sub_1000954E0(v11, v10, v81);
  *(v12 + 4) = result;
  *(v12 + 12) = 2048;
  v15 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = *(v0 + 390);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v18 = *(*(v0 + 376) + 16);
  v19 = *(*(v0 + 376) + 24);
  v20 = __OFSUB__(v19, v18);
  v16 = v19 - v18;
  if (v20)
  {
    __break(1u);
LABEL_10:
    v21 = *(v0 + 376);
    v22 = *(v0 + 380);
    v20 = __OFSUB__(v22, v21);
    LODWORD(v16) = v22 - v21;
    if (v20)
    {
      __break(1u);
      goto LABEL_37;
    }

    v16 = v16;
  }

LABEL_13:
  v23 = *(v0 + 368);
  *(v12 + 14) = v16;
  *(v12 + 22) = 2048;
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v26 = *(*v1 + 16);
    v27 = *(*v1 + 24);
    v20 = __OFSUB__(v27, v26);
    v25 = v27 - v26;
    if (!v20)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v28 = *(v0 + 364);
    LODWORD(v25) = v28 - *v1;
    if (!__OFSUB__(v28, *v1))
    {
      v25 = v25;
      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  if (v24)
  {
    goto LABEL_20;
  }

  v25 = BYTE6(v23);
LABEL_23:
  v30 = *(v0 + 376);
  v29 = *(v0 + 384);
  v31 = *(v0 + 360);
  *(v12 + 24) = v25;
  sub_100011E48(v31, v23);
  sub_100011E48(v30, v29);
  _os_log_impl(&_mh_execute_header, v6, v7, "%s updating obliviousHTTPConnection aeadNonce.count=%ld, aeadKey.count=%ld", v12, 0x20u);
  sub_100011CF0(v13);

LABEL_24:

  v32 = *(v0 + 264);
  v33 = *v1;
  *(v0 + 16) = *(v0 + 376);
  *(v0 + 32) = v33;
  if (sub_1001D1130())
  {
    v34 = *(v0 + 328);
    v35 = *(v0 + 224);

    v36 = sub_1001D0E50();
    v37 = sub_1001D1DD0();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 328);
    if (v38)
    {
      v40 = *(v0 + 320);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v81[0] = v42;
      *v41 = 136315138;
      v43 = sub_1000954E0(v40, v39, v81);

      *(v41 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s did update obliviousHTTPConnection", v41, 0xCu);
      sub_100011CF0(v42);
    }

    else
    {
    }

    v80 = (*(v0 + 112) + **(v0 + 112));
    v75 = *(*(v0 + 112) + 4);
    v76 = swift_task_alloc();
    *(v0 + 400) = v76;
    *v76 = v0;
    v76[1] = sub_10019A74C;
    v77 = *(v0 + 144);
    v78 = *(v0 + 120);
    v79 = *(v0 + 64);

    return v80(v79, v77);
  }

  else
  {
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v47 = *(v0 + 360);
    v46 = *(v0 + 368);
    v48 = *(v0 + 328);

    sub_100141174();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    sub_100011E48(v47, v46);
    sub_100011E48(v45, v44);
    v50 = *(v0 + 304);
    v51 = *(v0 + 312);
    v52 = *(v0 + 288);
    v53 = *(v0 + 144);
    (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
    sub_1001AFB98(v53, type metadata accessor for NWAsyncConnection.Inbound);

    v54 = sub_1001D0E50();
    v55 = sub_1001D1E00();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 288);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_1000954E0(*(v56 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v56 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v81);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s cancel", v57, 0xCu);
      sub_100011CF0(v58);
    }

    v60 = *(v0 + 296);
    v59 = *(v0 + 304);
    v61 = *(v0 + 280);
    v63 = *(v0 + 264);
    v62 = *(v0 + 272);
    v64 = *(v0 + 240);
    v65 = *(v0 + 208);
    v66 = *(*(v0 + 288) + 16);
    sub_1001D1180();

    v60(v64, v65);

    v68 = *(v0 + 232);
    v67 = *(v0 + 240);
    v69 = *(v0 + 224);
    v70 = *(v0 + 200);
    v71 = *(v0 + 176);
    v73 = *(v0 + 144);
    v72 = *(v0 + 152);

    v74 = *(v0 + 8);

    return v74();
  }
}

uint64_t sub_10019A52C()
{
  v29 = v0;
  v27 = *(v0 + 392);
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 144);
  (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
  sub_1001AFB98(v4, type metadata accessor for NWAsyncConnection.Inbound);

  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000954E0(*(v7 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v7 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v28);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s cancel", v8, 0xCu);
    sub_100011CF0(v9);
  }

  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v15 = *(v0 + 240);
  v16 = *(v0 + 208);
  v17 = *(*(v0 + 288) + 16);
  sub_1001D1180();

  v11(v15, v16);

  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 176);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10019A74C()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_10019AAA0;
  }

  else
  {
    v3 = sub_10019A860;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019A860()
{
  v32 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[18];
  sub_100011E48(v0[45], v0[46]);
  sub_100011E48(v1, v2);
  v6(v7, v8);
  sub_1001AFB98(v9, type metadata accessor for NWAsyncConnection.Inbound);

  v10 = sub_1001D0E50();
  v11 = sub_1001D1E00();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[36];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000954E0(*(v12 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v12 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v31);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s cancel", v13, 0xCu);
    sub_100011CF0(v14);
  }

  v15 = v0[37];
  v16 = v0[38];
  v17 = v0[35];
  v19 = v0[33];
  v18 = v0[34];
  v20 = v0[30];
  v25 = v0[29];
  v26 = v0[28];
  v21 = v0[26];
  v27 = v0[25];
  v28 = v0[22];
  v29 = v0[19];
  v30 = v0[18];
  v22 = *(v0[36] + 16);
  sub_1001D1180();

  v15(v20, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10019AAA0()
{
  v31 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  sub_100011E48(*(v0 + 360), *(v0 + 368));
  sub_100011E48(v1, v2);
  v29 = *(v0 + 408);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 144);
  (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
  sub_1001AFB98(v6, type metadata accessor for NWAsyncConnection.Inbound);

  v7 = sub_1001D0E50();
  v8 = sub_1001D1E00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 288);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000954E0(*(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v30);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s cancel", v10, 0xCu);
    sub_100011CF0(v11);
  }

  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v14 = *(v0 + 280);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 240);
  v18 = *(v0 + 208);
  v19 = *(*(v0 + 288) + 16);
  sub_1001D1180();

  v13(v17, v18);

  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = *(v0 + 200);
  v24 = *(v0 + 176);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10019ACD8(uint64_t a1)
{
  v53 = a1;
  v2 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v43 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_100011AC0(&qword_10022F170, &unk_1001E18C0);
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v54, v8);
  v10 = &v39[-v9];
  v51 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v11 = *(*(v51 - 8) + 64);
  v13 = __chkstk_darwin(v51, v12);
  v50 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v15);
  v17 = &v39[-v16];
  v18 = sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18, v20);
  v22 = &v39[-v21];
  sub_10001208C(v1, &v39[-v21], &qword_10022F158, &qword_1001E06C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100011F00(v22, &qword_10022F158, &qword_1001E06C0);
    return v24 != 1;
  }

  v40 = EnumCaseMultiPayload;
  v41 = v18;
  v42 = v1;
  v49 = v10;
  result = sub_100011F00(v1, &qword_10022F158, &qword_1001E06C0);
  v26 = *v22;
  if (v26 >> 62)
  {
    goto LABEL_18;
  }

  v52 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
LABEL_19:

    sub_10001208C(v53, v42, &qword_10022F188, &qword_1001E06F0);
    swift_storeEnumTagMultiPayload();
    v24 = v40;
    return v24 != 1;
  }

  while (v52 >= 1)
  {
    v27 = 0;
    v28 = (v6 + 48);
    v47 = (v6 + 16);
    v48 = v26 & 0xFFFFFFFFFFFFFF8;
    v45 = v26 & 0xC000000000000001;
    v46 = (v6 + 8);
    v6 = v26 & 0xC000000000000001;
    v44 = v26;
    while (v6)
    {
      v32 = sub_1001D2040();
LABEL_13:
      sub_10001208C(v53, v17, &qword_10022F188, &qword_1001E06F0);
      v33 = (v32 + *(*v32 + 88));
      os_unfair_lock_lock(v33);
      v34 = *(sub_100011AC0(&qword_10022F160, &qword_1001E06C8) + 28);
      if (!(*v28)(v33 + v34, 1, v54))
      {
        v35 = v33 + v34;
        v36 = v49;
        v37 = v54;
        (*v47)(v49, v35, v54);
        v38 = v50;
        sub_10001208C(v17, v50, &qword_10022F188, &qword_1001E06F0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = *v38;
          sub_100011AC0(&qword_100227A58, &qword_1001D3600);
          v30 = swift_allocError();
          *v31 = v29;
          v55 = v30;
          sub_1001D1A90();
        }

        else
        {
          sub_1001B0368(v38, v43, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
          sub_1001D1AA0();
        }

        (*v46)(v36, v37);
        v26 = v44;
        v6 = v45;
      }

      ++v27;
      os_unfair_lock_unlock(v33);

      sub_100011F00(v17, &qword_10022F188, &qword_1001E06F0);
      if (v52 == v27)
      {
        goto LABEL_19;
      }
    }

    if (v27 < *(v48 + 16))
    {
      v32 = *(v26 + 8 * v27 + 32);

      goto LABEL_13;
    }

    __break(1u);
LABEL_18:
    result = sub_1001D2190();
    v52 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10019B1C8()
{
  sub_1001D08A0();
  v0 = *(sub_100011AC0(&unk_100230260, &qword_1001D3660) + 52);
  sub_1001B0458(&qword_100229508, &type metadata accessor for Workload);
  return sub_1001D1790() & 1;
}

size_t sub_10019B278@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005E7C4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(sub_100011AC0(&unk_100230260, &qword_1001D3660) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1000DBEF4(v11, a2, &unk_100230260, &qword_1001D3660);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_10019B3BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v27 - v7;
  v9 = sub_1001CFB10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(v2 + qword_10022F7D8, v8, &unk_100230170, &unk_1001E0D90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &unk_100230170, &unk_1001E0D90);
    v15 = sub_1001D0E50();
    v16 = sub_1001D1DC0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "declining to persist lrucache without location", v17, 2u);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v18 = v2 + qword_10022F7E8;
    os_unfair_lock_lock((v2 + qword_10022F7E8));
    __chkstk_darwin(v19, v20);
    v27[-2] = a1;
    v27[-1] = v2;
    v21 = sub_10005E7D8(sub_1001B057C, &v27[-4]);
    v22 = *(*(v18 + 8) + 16);
    if (v22 < v21)
    {
      __break(1u);
    }

    else
    {
      sub_10005B55C(v21, v22);
      v23 = *(v2 + qword_10022F7F0);
      v27[0] = *(v18 + 8);

      sub_100011AC0(&qword_10022FC90, &unk_1001E1620);
      sub_1001AB9F8();
      v24 = sub_1001CF940();
      v26 = v25;

      sub_1001CFC20();
      sub_100011E48(v24, v26);
      os_unfair_lock_unlock(v18);
      (*(v10 + 8))(v14, v9);
    }
  }
}

uint64_t sub_10019B804()
{
  v1 = v0;
  v2 = sub_100011AC0(&unk_1002300C0, &qword_1001E1538);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v30 - v9;
  v11 = sub_1001D20D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v30 - v19;
  v21 = *(*v0 + 104);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  v22 = *(*v1 + 112);
  swift_beginAccess();
  sub_10001208C(v1 + v22, v10, &unk_1002300C0, &qword_1001E1538);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100011F00(v10, &unk_1002300C0, &qword_1001E1538);
    (*(v12 + 32))(v7, v20, v11);
  }

  else
  {
    v30 = *(v12 + 32);
    v31 = v7;
    v30(v17, v10, v11);
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
    sub_1001D2110();
    v23 = (v1 + *(*v1 + 120));
    v24 = *v23;
    v25 = v23[1];
    v26 = sub_1001D2620();
    v27 = *(v12 + 8);
    v27(v17, v11);
    if ((v26 & 1) == 0)
    {
      v27(v20, v11);
      return 0;
    }

    v7 = v31;
    v30(v31, v20, v11);
  }

  v28 = 1;
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10001BAC8(v7, v1 + v22, &unk_1002300C0, &qword_1001E1538);
  swift_endAccess();
  return v28;
}

uint64_t sub_10019BB9C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return v7(a1);
}

uint64_t sub_10019BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v8 = sub_1001D20F0();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v7[11] = *(v9 + 64);
  v7[12] = swift_task_alloc();
  v10 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_10019BD9C, 0, 0);
}

uint64_t sub_10019BD9C()
{
  v1 = v0[13];
  v2 = v0[10];
  v19 = v0[12];
  v20 = v0[11];
  v21 = v0[7];
  v22 = v0[8];
  v17 = v0[6];
  v18 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_1001D1BA0();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;

  sub_10019C66C(v1, &unk_1001E1C10, v8);
  sub_100011F00(v1, &qword_100229350, &unk_1001D6BA0);
  v7(v1, 1, 1, v6);
  (*(v2 + 16))(v19, v17, v18);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v2 + 32))(v10 + v9, v19, v18);
  v11 = (v10 + ((v20 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v21;
  v11[1] = v22;
  sub_10019C66C(v1, &unk_1001E1C20, v10);
  sub_100011F00(v1, &qword_100229350, &unk_1001D6BA0);
  v12 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = sub_100011AC0(&qword_10022FF08, &qword_1001E1C28);
  v0[15] = v14;
  *v13 = v0;
  v13[1] = sub_10019C01C;
  v15 = v0[3];

  return ThrowingTaskGroup.next(isolation:)(v0 + 19, 0, 0, v14);
}

uint64_t sub_10019C01C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10019C1E4;
  }

  else
  {
    v3 = sub_10019C130;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019C130()
{
  if (*(v0 + 152))
  {
    __break(1u);
  }

  else
  {
    v1 = **(v0 + 24);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    sub_1001D1C70();
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);

    v4 = *(v0 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10019C1E4()
{
  *(v0 + 16) = *(v0 + 128);
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    v1 = **(v0 + 24);
    sub_1001D1C70();
    v2 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_10019C350;
    v4 = *(v0 + 120);
    v5 = *(v0 + 24);

    return ThrowingTaskGroup.next(isolation:)(v0 + 153, 0, 0, v4);
  }

  else
  {
    v6 = *(v0 + 128);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10019C350()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);

    v5 = sub_10019C4F4;
  }

  else
  {
    v5 = sub_10019C46C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10019C46C()
{
  if (*(v0 + 153))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 128);

    v2 = *(v0 + 16);

    v4 = *(v0 + 96);
    v3 = *(v0 + 104);

    v5 = *(v0 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10019C4F4()
{
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[2];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10019C574(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10005B61C;

  return v9(a1);
}

uint64_t sub_10019C66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = v21 - v10;
  sub_10001208C(a1, v21 - v10, &qword_100229350, &unk_1001D6BA0);
  v12 = sub_1001D1BA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100011F00(v11, &qword_100229350, &unk_1001D6BA0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1001D1A70();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1001D1B90();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_10019C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10019C928;

  return sub_10019CAC8(a5, a6, 0, 0, 1);
}

uint64_t sub_10019C928()
{
  v2 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1001B0618;
  }

  else
  {
    v3 = sub_10019CA40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019CA40()
{
  sub_1001B02DC();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1001D20D0();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10019CBC8, 0, 0);
}

uint64_t sub_10019CBC8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1001D20F0();
  v7 = sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2100();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10019CD58;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10019CD58()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10019CF14, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10019CF14()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_10019CF80(void (*a1)(uint64_t, uint64_t))
{
  v3 = swift_isaMask & *v1;
  v4 = sub_1001D02E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10019D1AC(0) & 1) == 0 && (sub_10019D1AC(5u) & 1) == 0)
  {
    return (a1)(0, 0xE000000000000000);
  }

  v10 = &v1[*((swift_isaMask & *v1) + 0x78)];
  v20 = a1;
  v11 = *(v10 + 3);
  v12 = *(v10 + 4);
  sub_100024DC8(v10, v11);
  v13 = *((swift_isaMask & *v1) + 0x80);
  v19 = *(v3 + 80);
  v22 = v19;
  v14 = sub_10003B47C(v21);
  (*(*(v19 - 8) + 16))(v14, &v1[v13]);
  Configuration.environment(systemInfo:)(v21, v11, v12, v9);
  sub_100011CF0(v21);
  v15 = sub_1001D02B0();
  v17 = v16;
  (*(v5 + 8))(v9, v4);
  v20(v15, v17);
}

uint64_t sub_10019D1AC(unsigned __int8 a1)
{
  v3 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  v4 = sub_1001D17A0();

  v5 = [v3 valueForEntitlement:v4];

  if (!v5)
  {
    v19 = v1 + *((swift_isaMask & *v1) + 0x60);
    v20 = sub_1001D0E50();
    v21 = sub_1001D1E00();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51[0] = v23;
      *v22 = 136315138;
      v24 = 0xD000000000000036;
      if (a1 == 4)
      {
        v25 = "ecloudcompute.knownRateLimits";
      }

      else
      {
        v24 = 0xD00000000000002FLL;
        v25 = "ndleIdentifierOverride";
      }

      if (a1 == 3)
      {
        v24 = 0xD00000000000002DLL;
      }

      v26 = "ecloudcompute.admin";
      if (a1 == 3)
      {
        v25 = "ecloudcompute.prefetchRequest";
      }

      if (a1 == 1)
      {
        v27 = 0xD000000000000026;
      }

      else
      {
        v27 = 0xD00000000000002DLL;
      }

      if (a1 != 1)
      {
        v26 = "ecloudcompute.requests";
      }

      if (!a1)
      {
        v27 = 0xD000000000000023;
        v26 = "";
      }

      if (a1 <= 2u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v24;
      }

      if (a1 <= 2u)
      {
        v29 = v26;
      }

      else
      {
        v29 = v25;
      }

      v30 = sub_1000954E0(v28, v29 | 0x8000000000000000, v51);

      *(v22 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "entitlement not present: %s", v22, 0xCu);
      sub_100011CF0(v23);
    }

    return 0;
  }

  sub_1001D1F90();
  swift_unknownObjectRelease();
  sub_100089F9C(v51, v50);
  if (!swift_dynamicCast())
  {
    sub_1001AA890(v50, v49);
    v31 = *((swift_isaMask & *v1) + 0x60);
    sub_100089F9C(v49, v48);
    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = 0xD000000000000036;
      if (a1 == 4)
      {
        v36 = "ecloudcompute.knownRateLimits";
      }

      else
      {
        v35 = 0xD00000000000002FLL;
        v36 = "ndleIdentifierOverride";
      }

      if (a1 == 3)
      {
        v35 = 0xD00000000000002DLL;
      }

      v37 = "ecloudcompute.admin";
      if (a1 == 3)
      {
        v36 = "ecloudcompute.prefetchRequest";
      }

      if (a1 == 1)
      {
        v38 = 0xD000000000000026;
      }

      else
      {
        v38 = 0xD00000000000002DLL;
      }

      if (a1 != 1)
      {
        v37 = "ecloudcompute.requests";
      }

      if (!a1)
      {
        v38 = 0xD000000000000023;
        v37 = "";
      }

      if (a1 <= 2u)
      {
        v39 = v38;
      }

      else
      {
        v39 = v35;
      }

      if (a1 <= 2u)
      {
        v40 = v37;
      }

      else
      {
        v40 = v36;
      }

      v41 = sub_1000954E0(v39, v40 | 0x8000000000000000, &v47);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2080;
      sub_100024DC8(v48, v48[3]);
      swift_getDynamicType();
      v42 = sub_1001D2660();
      v44 = v43;
      sub_100011CF0(v48);
      v45 = sub_1000954E0(v42, v44, &v47);

      *(v34 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v32, v33, "entitlement is wrong type: %s = %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100011CF0(v48);
    }

    sub_100011CF0(v49);
    sub_100011CF0(v51);
    return 0;
  }

  v6 = LOBYTE(v48[0]);
  v7 = v1 + *((swift_isaMask & *v1) + 0x60);
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v49[0] = v11;
    *v10 = 136315394;
    v12 = 0xD000000000000036;
    if (a1 == 4)
    {
      v13 = "ecloudcompute.knownRateLimits";
    }

    else
    {
      v12 = 0xD00000000000002FLL;
      v13 = "ndleIdentifierOverride";
    }

    if (a1 == 3)
    {
      v12 = 0xD00000000000002DLL;
    }

    v14 = "ecloudcompute.admin";
    if (a1 == 3)
    {
      v13 = "ecloudcompute.prefetchRequest";
    }

    if (a1 == 1)
    {
      v15 = 0xD000000000000026;
    }

    else
    {
      v15 = 0xD00000000000002DLL;
    }

    if (a1 != 1)
    {
      v14 = "ecloudcompute.requests";
    }

    if (!a1)
    {
      v15 = 0xD000000000000023;
      v14 = "";
    }

    if (a1 <= 2u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v12;
    }

    if (a1 <= 2u)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    v18 = sub_1000954E0(v16, v17 | 0x8000000000000000, v49);

    *(v10 + 4) = v18;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "entitlement observed: %s = %{BOOL}d", v10, 0x12u);
    sub_100011CF0(v11);
  }

  sub_100011CF0(v51);
  sub_100011CF0(v50);
  return v6;
}

void sub_10019D7A8(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v4 = a1;
  sub_10019CF80(sub_1001B0620);
  _Block_release(v5);
}

uint64_t sub_10019D818(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t))
{
  sub_1001D2030(17);

  v13[0] = 0x64656C626D696874;
  v13[1] = 0xEF203A6F68634520;
  v15._countAndFlagsBits = a1;
  v15._object = a2;
  sub_1001D18B0(v15);
  v7 = *((swift_isaMask & *v3) + 0x60);

  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000954E0(a1, a2, v13);
    _os_log_impl(&_mh_execute_header, v8, v9, "echo: %s", v10, 0xCu);
    sub_100011CF0(v11);
  }

  a3(0x64656C626D696874, 0xEF203A6F68634520);
}

uint64_t sub_10019D9D8(void *a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = sub_1001D17D0();
  v8 = v7;
  v9 = a1;
  sub_10019D818(v6, v8, sub_1001B0508);
  _Block_release(v5);
}

uint64_t sub_10019DA6C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, NSObject *a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void, unint64_t), uint64_t a12)
{
  v28 = a8;
  v26 = a6;
  v27 = a7;
  v25 = a5;
  v29 = a12;
  v30 = a11;
  v16 = sub_1001D0200();
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  sub_10019DCB4(a1, a2, a3, a4, v25, v26, v27, v28, a9, a10, v21);
  v23 = swift_unknownObjectRetain();
  v30(v23, 0, 0xF000000000000000);
  return swift_unknownObjectRelease_n();
}

void sub_10019DCB4(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, unint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, NSObject *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a7;
  v12 = v11;
  v48 = a5;
  v49 = a6;
  v46 = a3;
  v47 = a4;
  v53 = a2;
  v15 = sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v40 - v18;
  v20 = sub_1001D08A0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10019D1AC(1u) & 1) == 0)
  {
    goto LABEL_6;
  }

  v42 = v25;
  v43 = a1;
  v41 = a8;
  v44 = v21;
  v45 = a11;
  v26 = *(v11 + *((swift_isaMask & *v11) + 0x70));
  [v26 auditToken];
  v27 = sub_10019E6F8();
  v29 = v28;
  v30 = sub_10019D1AC(4u);
  [v26 auditToken];
  if (v29)
  {
    v31 = (v12 + *((swift_isaMask & *v12) + 0x68));
    v32 = sub_100024DC8(v31, v31[3]);
    v33 = *v32;
    v34 = *v32 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_structuredRequestFactoriesBySetup;
    os_unfair_lock_lock(v34);
    v35 = v51;
    sub_1001BE3D4((v34 + 8), v27, v29, v30 & 1, v33, &v52);
    if (v35)
    {
      os_unfair_lock_unlock(v34);
      __break(1u);
    }

    else
    {

      os_unfair_lock_unlock(v34);
      sub_100012038(v43, v53);
      sub_1001B0458(&qword_10022FC50, &type metadata accessor for Workload);
      sub_1001B0458(&qword_10022FC58, &type metadata accessor for Workload);
      sub_1001D07C0();
      v36 = v44;
      if ((*(v44 + 48))(v19, 1, v20) == 1)
      {
        sub_100011F00(v19, &qword_1002292B0, &unk_1001D6420);
        sub_1001D01F0();
        sub_1001D0200();
        sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
        swift_willThrowTypedImpl();
      }

      else
      {
        v37 = v42;
        (*(v36 + 32))(v42, v19, v20);
        LOBYTE(v52) = 1;
        if (sub_100193F70(v46, v37, v47, v48, v49, v50, v41, a9, a10, &_mh_execute_header))
        {
          v38 = (v12 + *((swift_isaMask & *v12) + 0x90));
          os_unfair_lock_lock(v38);

          sub_1001D19B0();
          if (*((*&v38[2]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v38[2]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((*&v38[2]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1001D19F0();
          }

          sub_1001D1A20();
          os_unfair_lock_unlock(v38);

          (*(v36 + 8))(v42, v20);
        }

        else
        {
          sub_1001D01F0();
          sub_1001D0200();
          sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
          swift_willThrowTypedImpl();

          (*(v36 + 8))(v37, v20);
        }
      }
    }
  }

  else
  {
LABEL_6:
    sub_1001D01F0();
    sub_1001D0200();
    sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_10019E354(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, NSObject *a7, void *a8, const void *a9)
{
  v16 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v53 = &v49 - v19;
  v20 = sub_1001CFDA0();
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _Block_copy(a9);
  v25 = a3;
  v26 = a4;
  v58 = a1;
  v27 = a5;
  v51 = a6;
  v28 = a6;
  v50 = a7;
  v29 = a7;
  v49 = a8;
  v30 = a8;
  v31 = sub_1001CFC00();
  v55 = v32;
  v56 = v31;

  v54 = v24;
  sub_1001CFD80();

  if (v27)
  {
    v33 = sub_1001D17D0();
    v52 = v34;

    v35 = v53;
    if (v28)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = 0;
    v52 = 0;
    v35 = v53;
    if (v28)
    {
LABEL_3:
      v36 = sub_1001D17D0();
      v51 = v37;

      if (v29)
      {
        goto LABEL_4;
      }

LABEL_8:
      v50 = 0;
      v39 = 0;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_9:
      v40 = 1;
      goto LABEL_10;
    }
  }

  v36 = 0;
  v51 = 0;
  if (!v29)
  {
    goto LABEL_8;
  }

LABEL_4:
  v50 = sub_1001D17D0();
  v39 = v38;

  if (!v30)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1001CFD80();

  v40 = 0;
LABEL_10:
  v41 = v59;
  (*(v59 + 56))(v35, v40, 1, v60);
  v42 = swift_allocObject();
  *(v42 + 16) = v57;
  v48 = v39;
  v43 = v56;
  v45 = v54;
  v44 = v55;
  v46 = v58;
  sub_10019DA6C(v56, v55, v54, v33, v52, v36, v51, v50, v48, v35, sub_1001AB4D8, v42);

  sub_100011E48(v43, v44);

  sub_100011F00(v35, &qword_1002288B0, &qword_1001D5FC0);
  return (*(v41 + 8))(v45, v60);
}

void sub_10019E67C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001CFBE0().super.isa;
  }

  v7 = isa;
  (*(a4 + 16))(a4, a1);
}

uint64_t sub_10019E6F8()
{
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v6 = v0 + *((swift_isaMask & *v0) + 0x60);
    v2 = sub_1001D0E50();
    v3 = sub_1001D1DE0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "could not retain client bundle identifier";
      goto LABEL_6;
    }
  }

  else
  {
    v1 = v0 + *((swift_isaMask & *v0) + 0x60);
    v2 = sub_1001D0E50();
    v3 = sub_1001D1DE0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "could not get client bundle identifier";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);
    }
  }

  return 0;
}

uint64_t sub_10019E8BC(uint64_t (*a1)(uint64_t, unint64_t))
{
  v3 = sub_1001D07A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(0, 0xF000000000000000);
  }

  v9 = (v1 + *((swift_isaMask & *v1) + 0x68));
  v10 = *sub_100024DC8(v9, v9[3]) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_structuredRequestFactoriesBySetup;
  os_unfair_lock_lock(v10);
  sub_1001BAFA0((v10 + 8), &v16);
  os_unfair_lock_unlock(v10);
  sub_1001D0790();
  sub_1001B0458(&qword_10022FC40, &type metadata accessor for TC2TrustedRequestFactoriesMetadata);
  sub_1001B0458(&qword_10022FC48, &type metadata accessor for TC2TrustedRequestFactoriesMetadata);
  v11 = sub_1001D07B0();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  a1(v11, v13);
  return sub_100011E48(v11, v13);
}

uint64_t sub_10019EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, unint64_t), uint64_t a5)
{
  v11 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v20 - v14;
  if ((sub_10019D1AC(2u) & 1) == 0)
  {
    return a4(0, 0xF000000000000000);
  }

  v16 = sub_1001D1BA0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v5;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v18 = v5;

  sub_10015C9F4(0, 0, v15, &unk_1001E1588, v17);
}

uint64_t sub_10019EC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_10019EC98, 0, 0);
}

uint64_t sub_10019EC98()
{
  v1 = (v0[2] + *((swift_isaMask & *v0[2]) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10019ED68;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_100075244(v6, v4, v5);
}

uint64_t sub_10019ED68(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v6 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return _swift_task_switch(sub_10019EE68, 0, 0);
}

uint64_t sub_10019EE68()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  (*(v0 + 48))(v2, v1);
  sub_10002683C(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10019EEEC(void *a1, int a2, int a3, int a4, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = sub_1001D17D0();
  v9 = v8;
  v10 = sub_1001D1700();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = a1;
  sub_10019EAFC(v7, v9, v10, sub_1001B0614, v11);
}

uint64_t sub_10019EFD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t (*a9)(void), uint64_t a10)
{
  v62 = a6;
  v63 = a7;
  v64 = a3;
  v65 = a4;
  v66 = a2;
  v61 = a1;
  v13 = a9;
  v14 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v54[-v17];
  v19 = type metadata accessor for ThimbledEvent();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v54[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v60 = *(v24 - 8);
  v25 = *(v60 + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v54[-v27];
  if (sub_10019D1AC(2u))
  {
    v58 = a10;
    v59 = a9;
    [*(v10 + *((swift_isaMask & *v10) + 0x70)) auditToken];
    v29 = sub_10019E6F8();
    v31 = v30;
    v32 = sub_10019D1AC(4u);
    if (!v31)
    {
      return (v59)(v32);
    }

    if ((v32 & (a5 != 0)) == 1)
    {

      v31 = a5;
    }

    else
    {
      v65 = v29;
    }

    v34 = v66;
    v13 = v59;
    if ((a8 & 1) == 0)
    {
      v45 = sub_1001D1BA0();
      (*(*(v45 - 8) + 56))(v18, 1, 1, v45);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v47 = v61;
      v46[4] = v10;
      v46[5] = v47;
      v46[6] = v34;
      v48 = v65;
      v46[7] = v64;
      v46[8] = v48;
      v49 = v62;
      v46[9] = v31;
      v46[10] = v49;
      v46[11] = v63;
      v46[12] = v13;
      v46[13] = v58;

      v50 = v10;

      sub_10015C9F4(0, 0, v18, &unk_1001E1570, v46);
    }

    v35 = (v10 + *((swift_isaMask & *v10) + 0x68));
    v36 = *sub_100024DC8(v35, v35[3]);

    v37 = v64;

    v57 = v36;
    v38 = sub_1001D0E50();
    v39 = sub_1001D1E00();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v67 = v56;
      *v40 = 136315394;
      v55 = v39;
      v41 = v61;
      *(v40 + 4) = sub_1000954E0(v61, v66, &v67);
      *(v40 + 12) = 2080;
      v42 = sub_1001D1710();
      v44 = sub_1000954E0(v42, v43, &v67);

      *(v40 + 14) = v44;
      v37 = v64;
      _os_log_impl(&_mh_execute_header, v38, v55, "event stream prewarm workloadType=%s workloadParameters=%s", v40, 0x16u);
      swift_arrayDestroy();
      v13 = v59;

      v34 = v66;
    }

    else
    {

      v41 = v61;
    }

    *v23 = v41;
    v23[1] = v34;
    v51 = v65;
    v23[2] = v37;
    v23[3] = v51;
    v52 = v62;
    v53 = v63;
    v23[4] = v31;
    v23[5] = v52;
    v23[6] = v53;
    swift_storeEnumTagMultiPayload();

    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();
    (*(v60 + 8))(v28, v24);
  }

  return v13();
}

uint64_t sub_10019F530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(sub_10019F570, 0, 0);
}

uint64_t sub_10019F570()
{
  v1 = (v0[2] + *((swift_isaMask & *v0[2]) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10019F648;
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_100073C9C(v10, v8, v9, v6, v7, v4, v5);
}

uint64_t sub_10019F648(uint64_t a1, unint64_t a2)
{
  v5 = *(*v2 + 96);
  v7 = *v2;

  sub_10002683C(a1, a2);

  return _swift_task_switch(sub_10019F758, 0, 0);
}

uint64_t sub_10019F758()
{
  v1 = *(v0 + 88);
  (*(v0 + 80))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019F7BC(void *a1, int a2, int a3, int a4, uint64_t a5, int a6, char a7, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1001D17D0();
  v13 = v12;
  v14 = sub_1001D1700();
  if (a5)
  {
    v15 = sub_1001D17D0();
    a5 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_1001D17D0();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  v21 = a1;
  sub_10019EFD8(v11, v13, v14, v15, a5, v17, v19, a7, sub_1001B061C, v20);
}

uint64_t sub_10019F914(uint64_t (*a1)(void *), uint64_t a2)
{
  v5 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v14 - v8;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(&_swiftEmptyArrayStorage);
  }

  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;
  v12 = v2;

  sub_10015C9F4(0, 0, v9, &unk_1001E1558, v11);
}

uint64_t sub_10019FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10019FA7C, 0, 0);
}

uint64_t sub_10019FA7C()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10019FB40;

  return sub_1001CD194();
}

uint64_t sub_10019FB40(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10019FC40, 0, 0);
}

uint64_t sub_10019FC40()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 48));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019FD1C(void (*a1)(void), uint64_t a2, void (*a3)(void))
{
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return (a1)(&_swiftEmptyArrayStorage);
  }

  v6 = (v3 + *((swift_isaMask & *v3) + 0x68));
  v7 = *sub_100024DC8(v6, v6[3]);
  a3();
  a1();
}

uint64_t sub_10019FE10(void *a1, int a2, void *aBlock, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  sub_10019FD1C(a5, v10, a6);
}

uint64_t sub_10019FEA4(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v14 - v8;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(0);
  }

  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;
  v12 = v2;

  sub_10015C9F4(0, 0, v9, &unk_1001E1548, v11);
}

uint64_t sub_10019FFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A0008, 0, 0);
}

uint64_t sub_1001A0008()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1001A00CC;

  return sub_1001CE534();
}

uint64_t sub_1001A00CC(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1001A01CC, 0, 0);
}

uint64_t sub_1001A01CC()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 48));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A0268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void, unint64_t), uint64_t a7)
{
  v15 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v32 - v18;
  if ((sub_10019D1AC(3u) & 1) == 0)
  {
    return a6(0, 0xF000000000000000);
  }

  v20 = sub_10019D1AC(4u);
  v33 = a6;
  if (v20)
  {
    v21 = a2;
    if (a2)
    {
LABEL_11:
      v28 = sub_1001D1BA0();
      (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = a5 & 1;
      *(v29 + 40) = v7;
      *(v29 + 48) = a1;
      *(v29 + 56) = v21;
      *(v29 + 64) = a3;
      v30 = v33;
      *(v29 + 72) = a4;
      *(v29 + 80) = v30;
      *(v29 + 88) = a7;

      v31 = v7;
      sub_10015C9F4(0, 0, v19, &unk_1001E1528, v29);
    }

LABEL_10:
    [*(v7 + *((swift_isaMask & *v7) + 0x70)) auditToken];
    a1 = sub_10019E6F8();
    v21 = v27;
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v23 = v7 + *((swift_isaMask & *v7) + 0x60);
  v24 = sub_1001D0E50();
  v25 = sub_1001D1E00();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "attempt to set bundleIdentifierOverride without entitlement rejected", v26, 2u);
  }

  return v33(0, 0xF000000000000000);
}

uint64_t sub_1001A0514(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 184) = a4;
  v9 = sub_1001CFD60();
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1001A05F0, 0, 0);
}

uint64_t sub_1001A05F0()
{
  v1 = *(v0 + 184);
  v2 = (*(v0 + 48) + *((swift_isaMask & **(v0 + 48)) + 0x68));
  v3 = sub_100024DC8(v2, v2[3]);
  *(v0 + 128) = v3;
  if (v1 == 1)
  {
    v4 = *(v0 + 120);
    v5 = *(*v3 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v0 + 136) = v5;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v6 = sub_1001A06F8;
    v7 = v5;
  }

  else
  {
    v7 = *(*(v0 + 48) + *((swift_isaMask & **(v0 + 48)) + 0x88));
    *(v0 + 152) = v7;
    v6 = sub_1001A09BC;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1001A06F8()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  swift_beginAccess();
  v9 = sub_1000EA074(v2, v8, v7, v6, v5);
  swift_endAccess();
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  v0[18] = sub_1000FC050(sub_1000FCE6C, v10, v9);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1001A0830, 0, 0);
}

uint64_t sub_1001A0830()
{
  *(v0 + 40) = *(v0 + 144);
  sub_100011AC0(&qword_10022CB18, &qword_1001E1530);
  sub_100024B78(&qword_10022CB20, &qword_10022CB18, &qword_1001E1530);
  sub_1001AAF48(&qword_10022CB28, &qword_10022CB30);
  sub_1001AAF48(&qword_10022CB38, &qword_10022CB40);
  v1 = sub_1001D07B0();
  v3 = v2;

  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  (*(v0 + 88))(v1, v3);
  sub_10002683C(v1, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001A09BC()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = sub_10019B804();
  v4 = *v2;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1001A0A74;
  v6 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v8 = v0[8];

  return sub_1000FC254(v9, v8, v6, v7, v3 & 1);
}

uint64_t sub_1001A0A74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v6 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = a2;

  return _swift_task_switch(sub_1001A0B74, 0, 0);
}

uint64_t sub_1001A0B74()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  (*(v0 + 88))(v2, v1);
  sub_10002683C(v2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001A0C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void, unint64_t), uint64_t a7)
{
  v15 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v24 - v18;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a6(0, 0xF000000000000000);
  }

  v20 = sub_1001D1BA0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v7;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = a4;
  *(v21 + 72) = a5 & 1;
  *(v21 + 80) = a6;
  *(v21 + 88) = a7;

  v22 = v7;

  sub_10015C9F4(0, 0, v19, &unk_1001E1518, v21);
}

uint64_t sub_1001A0DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 96) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(sub_1001A0E18, 0, 0);
}

uint64_t sub_1001A0E18()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1001A0EEC;
  v4 = *(v0 + 96);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);

  return sub_1000FC254(v8, v7, v5, v6, v4);
}

uint64_t sub_1001A0EEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v6 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_1001A0FEC, 0, 0);
}

uint64_t sub_1001A0FEC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  (*(v0 + 56))(v2, v1);
  sub_10002683C(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A10C0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, int a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a3)
  {
    v15 = sub_1001D17D0();
    a3 = v16;
    if (a4)
    {
LABEL_3:
      v17 = sub_1001D17D0();
      a4 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = a1;
  a9(v15, a3, v17, a4, a5, a8, v19);
}

uint64_t sub_1001A11CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), double a9, double a10, double a11, uint64_t a12)
{
  v36 = a5;
  v23 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = &v35 - v26;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a8();
  }

  v28 = sub_1001D1BA0();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v29 = swift_allocObject();
  v30 = a7;
  v31 = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v12;
  *(v29 + 40) = a1;
  *(v29 + 48) = a2;
  *(v29 + 56) = a3;
  v32 = v36;
  *(v29 + 64) = a4;
  *(v29 + 72) = v32;
  *(v29 + 80) = a6;
  *(v29 + 88) = v30;
  *(v29 + 96) = a9;
  *(v29 + 104) = a10;
  *(v29 + 112) = a11;
  *(v29 + 120) = a8;
  *(v29 + 128) = a12;

  v33 = v12;

  sub_10015C9F4(0, 0, v27, &unk_1001E1500, v31);
}

uint64_t sub_1001A1388(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 128) = v29;
  *(v11 + 136) = v30;
  *(v11 + 112) = a2;
  *(v11 + 120) = a3;
  *(v11 + 104) = a1;
  *(v11 + 96) = v28;
  *(v11 + 80) = v27;
  *(v11 + 64) = a10;
  *(v11 + 72) = a11;
  *(v11 + 48) = a8;
  *(v11 + 56) = a9;
  *(v11 + 40) = a7;
  v12 = type metadata accessor for RateLimitConfiguration(0);
  *(v11 + 144) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v11 + 152) = swift_task_alloc();
  v14 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  *(v11 + 160) = v14;
  v15 = *(v14 - 8);
  *(v11 + 168) = v15;
  v16 = *(v15 + 64) + 15;
  *(v11 + 176) = swift_task_alloc();
  *(v11 + 184) = swift_task_alloc();
  *(v11 + 192) = swift_task_alloc();
  v17 = sub_1001D05B0();
  *(v11 + 200) = v17;
  v18 = *(v17 - 8);
  *(v11 + 208) = v18;
  v19 = *(v18 + 64) + 15;
  *(v11 + 216) = swift_task_alloc();
  v20 = sub_1001CFD60();
  *(v11 + 224) = v20;
  v21 = *(v20 - 8);
  *(v11 + 232) = v21;
  v22 = *(v21 + 64) + 15;
  *(v11 + 240) = swift_task_alloc();
  v23 = type metadata accessor for RateLimitTimingDetails(0);
  *(v11 + 248) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v11 + 256) = swift_task_alloc();
  *(v11 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_1001A15BC, 0, 0);
}

uint64_t sub_1001A15BC()
{
  v46 = *(v0 + 248);
  v40 = *(v0 + 256);
  v41 = *(v0 + 240);
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v42 = *(v0 + 160);
  v43 = *(v0 + 184);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v38 = *(v0 + 168);
  v39 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = (*(v0 + 40) + *((swift_isaMask & **(v0 + 40)) + 0x68));
  v12 = sub_100024DC8(v11, v11[3]);
  v13 = *v12;
  *(v0 + 272) = *v12;

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v49 = v13;
  (*(v2 + 16))(v1, v13 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config, v3);
  *v40 = v39;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  sub_1001D0510();
  sub_1001D0210();
  v14 = *(v38 + 8);
  v14(v4, v42);
  if (*(v0 + 16) < v7)
  {
    v7 = *(v0 + 16);
  }

  *(v40 + 8) = v7;
  sub_1001D04A0();
  sub_1001D0210();
  v14(v43, v42);
  *(v0 + 24);
  v15 = v40 + *(v46 + 24);
  sub_1001CFCE0();
  if (v5 == 0.0)
  {
    v16 = *(v0 + 232);
    v47 = *(v0 + 240);
    v17 = *(v0 + 216);
    v44 = *(v0 + 224);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 176);
    v21 = *(v0 + 160);
    sub_1001D0490();
    sub_1001D0210();
    v14(v20, v21);
    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(v47, v44);
    v22 = *(v0 + 32);
  }

  else
  {
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    v25 = *(v0 + 224);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v24 + 8))(v23, v25);
    v22 = *(v0 + 120);
  }

  v26 = *(v0 + 256);
  v27 = *(v0 + 264);
  v29 = *(v0 + 144);
  v28 = *(v0 + 152);
  v31 = *(v0 + 80);
  v30 = *(v0 + 88);
  v32 = 1.0;
  if (v22 <= 1.0)
  {
    v32 = v22;
  }

  v33 = v22 < 0.0;
  v34 = 0.0;
  if (!v33)
  {
    v34 = v32;
  }

  v45 = *(v0 + 64);
  v48 = *(v0 + 48);
  *(v26 + *(*(v0 + 248) + 28)) = v7 * v34;
  sub_1001B0368(v26, v27, type metadata accessor for RateLimitTimingDetails);
  sub_1001AFCB4(v27, v28 + *(v29 + 20), type metadata accessor for RateLimitTimingDetails);
  *v28 = v48;
  *(v28 + 16) = v45;
  *(v28 + 32) = v31;
  *(v28 + 40) = v30;
  *(v28 + 48) = &_swiftEmptyArrayStorage;
  v35 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter;
  *(v0 + 280) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter;
  v36 = *(v49 + v35);
  *(v0 + 288) = v36;

  return _swift_task_switch(sub_1001A1980, v36, 0);
}

uint64_t sub_1001A1980()
{
  v1 = *(v0 + 288);
  sub_1000EE0E8(*(v0 + 152));

  return _swift_task_switch(sub_1001A19EC, 0, 0);
}

uint64_t sub_1001A19EC()
{
  v1 = *(v0[34] + v0[35]);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_1001A1A80;

  return sub_1000ED278();
}

uint64_t sub_1001A1A80()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_1001A1B7C, 0, 0);
}

uint64_t sub_1001A1B7C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v12 = v0[22];
  v8 = v0[16];
  v7 = v0[17];
  sub_1001AFB98(v0[19], type metadata accessor for RateLimitConfiguration);
  v9 = sub_1001AFB98(v1, type metadata accessor for RateLimitTimingDetails);
  v8(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001A1C94(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, double a8, double a9, double a10)
{
  v18 = _Block_copy(aBlock);
  if (a3)
  {
    v19 = sub_1001D17D0();
    a3 = v20;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v19 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = sub_1001D17D0();
  a4 = v22;
  if (a5)
  {
LABEL_4:
    v23 = sub_1001D17D0();
    a5 = v24;
    goto LABEL_8;
  }

LABEL_7:
  v23 = 0;
LABEL_8:
  v25 = a1;
  v26 = swift_allocObject();
  *(v26 + 16) = v18;
  sub_1001A11CC(v19, a3, v21, a4, v23, a5, a6, sub_1001B061C, a8, a9, a10, v26);
}

uint64_t sub_1001A1E04(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v14 - v8;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1();
  }

  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;
  v12 = v2;

  sub_10015C9F4(0, 0, v9, &unk_1001E14F0, v11);
}

uint64_t sub_1001A1F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A1F64, 0, 0);
}

uint64_t sub_1001A1F64()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  v2 = *(*sub_100024DC8(v1, v1[3]) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1001A2038;

  return sub_1000F203C();
}

uint64_t sub_1001A2038()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_1001A2134, 0, 0);
}

uint64_t sub_1001A2134()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A21CC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1001A2260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A2284, 0, 0);
}

uint64_t sub_1001A2284()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1001A2348;

  return sub_100109090();
}

uint64_t sub_1001A2348(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_1001B0598, 0, 0);
}

uint64_t sub_1001A2484(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t (*a5)(void, unint64_t), uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  sub_1001A2520(a5, v12, a6, a7);
}

uint64_t sub_1001A2520(uint64_t (*a1)(void, unint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v17 - v11;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(0, 0xC000000000000000);
  }

  v13 = sub_1001D1BA0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v4;

  sub_10015C9F4(0, 0, v12, a4, v14);
}

uint64_t sub_1001A2658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A267C, 0, 0);
}

uint64_t sub_1001A267C()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1001A2740;

  return sub_10010BA44();
}

uint64_t sub_1001A2740(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_1001A2840, 0, 0);
}

uint64_t sub_1001A2840()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  (*(v0 + 24))(v2, v1);
  sub_100011E48(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A2900(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, unint64_t), uint64_t a4)
{
  v9 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v18 - v12;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a3(0, 0xC000000000000000);
  }

  v14 = sub_1001D1BA0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;
  v16 = v4;
  sub_100012038(a1, a2);

  sub_10015C9F4(0, 0, v13, &unk_1001E14A8, v15);
}

uint64_t sub_1001A2A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1001A2A8C, 0, 0);
}

uint64_t sub_1001A2A8C()
{
  v1 = (v0[2] + *((swift_isaMask & *v0[2]) + 0x68));
  v2 = *sub_100024DC8(v1, v1[3]);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1001A2B58;
  v5 = v0[3];
  v4 = v0[4];

  return sub_10010BDB4(v5, v4);
}

uint64_t sub_1001A2B58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v6 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return _swift_task_switch(sub_1001A2C58, 0, 0);
}

uint64_t sub_1001A2C58()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  (*(v0 + 40))(v2, v1);
  sub_100011E48(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

void sub_1001A2CDC(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = a3;
  v12 = a1;
  v8 = sub_1001CFC00();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_1001A2900(v8, v10, sub_1001AA65C, v11);

  sub_100011E48(v8, v10);
}

void sub_1001A2DB4(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_1001AA5F4();
}

id sub_1001A2DF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A2E2C(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *a1) + 0x60);
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  sub_100011CF0(&a1[*((swift_isaMask & *a1) + 0x68)]);

  sub_100011CF0(&a1[*((swift_isaMask & *a1) + 0x78)]);
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x80)]);
  v6 = *&a1[*((swift_isaMask & *a1) + 0x88)];

  return sub_100011F00(&a1[*((swift_isaMask & *a1) + 0x90) + 8], &qword_10022FF68, &unk_1001E1CA8);
}

char *sub_1001A2FF4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022FC38, &unk_1001E1490);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1001A3024(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v152 = a3;
  v143 = sub_1001CFD60();
  v147 = *(v143 - 8);
  v7 = *(v147 + 64);
  v9 = __chkstk_darwin(v143, v8);
  v142 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v141 = v126 - v12;
  v13 = sub_100011AC0(&unk_10022FCA8, &unk_1001E1638);
  v138 = *(v13 - 8);
  v14 = *(v138 + 64);
  __chkstk_darwin(v13, v15);
  v146 = v126 - v16;
  v17 = sub_100011AC0(&unk_10022FCB0, &unk_1001E1640);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v145 = v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v144 = (v126 - v23);
  v24 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v137 = (v126 - v27);
  v28 = sub_1001D0720();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v28, v31);
  v34 = v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v32, v35);
  v133 = v126 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v132 = v126 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v139 = v126 - v43;
  __chkstk_darwin(v42, v44);
  v46 = v126 - v45;
  v47 = *a1;
  result = sub_100006598(a2);
  if ((v49 & 1) == 0)
  {
    return result;
  }

  v140 = v13;
  v134 = v29;
  v50 = result;
  v51 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *a1;
  v151 = *a1;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_56:
    sub_1000110EC();
    v53 = v151;
  }

  v54 = *(v53 + 48);
  v55 = sub_1001CFDA0();
  (*(*(v55 - 8) + 8))(v54 + *(*(v55 - 8) + 72) * v50, v55);
  v56 = *(*(v53 + 56) + 8 * v50);
  sub_10001A494(v50, v53);
  *a1 = v53;
  sub_1001B8A00(v46);
  sub_1001985C8(v46);
  v59 = a1[1];
  v58 = (a1 + 1);
  v57 = v59;
  v60 = *(v59 + 3);
  v129 = v4;
  if (v60 >= 5)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    v85 = v134;
    if ((result & 1) == 0)
    {
      result = sub_1001190FC();
    }

    v86 = *v58;
    v87 = *(*v58 + 3);
    v88 = __OFSUB__(v87, 1);
    v89 = v87 - 1;
    if (v88)
    {
      __break(1u);
    }

    else
    {
      v90 = *(v85 + 32);
      v91 = *(v86 + 4) + v89;
      v92 = *(v86 + 2);
      if (v91 < v92)
      {
        v92 = 0;
      }

      v93 = &v86[((*(v85 + 80) + 40) & ~*(v85 + 80)) + (v91 - v92) * *(v85 + 72)];
      v94 = v139;
      result = v90(v139, v93, v28);
      v95 = *(v86 + 3);
      v88 = __OFSUB__(v95, 1);
      v96 = v95 - 1;
      if (!v88)
      {
        *(v86 + 3) = v96;
        v97 = v94;
        v98 = v34;
        v99 = v56;
        v100 = v137;
        v90(v137, v97, v28);
        v61 = v134;
        (*(v134 + 56))(v100, 0, 1, v28);
        v101 = v100;
        v56 = v99;
        v34 = v98;
        sub_100011F00(v101, &qword_100228AF0, &qword_1001E1630);
        v57 = v86;
        v60 = *(v86 + 3);
        if (v60)
        {
          goto LABEL_5;
        }

LABEL_25:
        v102 = *v58;
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v104 = *v58;
        if (*(*v58 + 2) < 1 || (v103 & 1) == 0)
        {
          sub_1000F7E00(v103, 1, 0);
          v104 = *v58;
        }

        sub_1000F82AC(v104 + 2, &v104[(*(v61 + 80) + 40) & ~*(v61 + 80)], v46);

        return (*(v61 + 8))(v46, v28);
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v61 = v134;
  if (!v60)
  {
    goto LABEL_25;
  }

LABEL_5:
  v136 = v34;
  v126[1] = v56;
  v127 = v58;
  v62 = *(v57 + 4);
  v63 = v62 + v60;
  if (*(v57 + 2) >= v63)
  {
    v64 = v63;
  }

  else
  {
    v64 = *(v57 + 2);
  }

  v131 = (*(v61 + 80) + 40) & ~*(v61 + 80);
  v139 = (v138 + 56);
  v130 = (v61 + 16);
  v148 = v57;
  v149 = v62;
  v150 = v64;
  v152 = (v61 + 32);
  v135 = (v147 + 8);
  v137 = (v61 + 8);
  v138 += 48;
  v128 = v57;

  v147 = 0;
  v34 = v141;
  while (1)
  {
    v4 = v140;
    v50 = v146;
    if (v62 == v64)
    {
      if ((sub_1000FA2C0(v65) & 1) == 0)
      {
        v74 = 1;
        v73 = v145;
        goto LABEL_15;
      }

      v62 = v149;
    }

    v149 = v62 + 1;
    v66 = v134;
    v67 = v133;
    (*(v134 + 16))(v133, &v148[v131 + *(v134 + 72) * v62], v28);
    v68 = *(v66 + 32);
    v69 = v132;
    v70 = v67;
    a1 = v152;
    v68(v132, v70, v28);
    v71 = *(v4 + 48);
    v72 = v147;
    *v50 = v147;
    v68(v50 + v71, v69, v28);
    v147 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    v73 = v145;
    sub_1000DBEF4(v50, v145, &unk_10022FCA8, &unk_1001E1638);
    v74 = 0;
LABEL_15:
    (*v139)(v73, v74, 1, v4);
    v75 = v73;
    v76 = v144;
    sub_1000DBEF4(v75, v144, &unk_10022FCB0, &unk_1001E1640);
    if ((*v138)(v76, 1, v4) == 1)
    {
      v105 = v28;

      v106 = *(v128 + 3);
      v107 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_59;
      }

      v108 = v127;
      v109 = *v127;
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v111 = *v108;
      if (*(*v108 + 16) < v107 || (v110 & 1) == 0)
      {
        sub_1000F7E00(v110, v107, 0);
        v111 = *v108;
      }

      sub_1000F82AC((v111 + 16), v111 + v131, v46);

      return (*v137)(v46, v105);
    }

    v77 = *v76;
    v78 = v136;
    (*v152)(v136, v76 + *(v4 + 48), v28);
    v79 = v46;
    sub_1001D0710();
    v80 = v142;
    sub_1001D0710();
    v81 = sub_1001CFCC0();
    v82 = *v135;
    v83 = v80;
    v84 = v143;
    (*v135)(v83, v143);
    result = (v82)(v34, v84);
    if (v81)
    {
      break;
    }

    v65 = (*v137)(v78, v28);
    v62 = v149;
    v64 = v150;
    v46 = v79;
  }

  if (v77 < 0)
  {
    goto LABEL_60;
  }

  v112 = *(v128 + 3);
  v113 = v127;
  v114 = v136;
  if (v112 >= v77)
  {
    v115 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      goto LABEL_62;
    }

    v116 = v28;
    v117 = *v127;
    result = swift_isUniquelyReferenced_nonNull_native();
    v118 = *v113;
    if (*(*v113 + 16) < v115 || (result & 1) == 0)
    {
      result = sub_1000F7E00(result, v115, 0);
      v118 = *v113;
    }

    v119 = v118 + v131;
    if (v77)
    {
      if (v77 == v118[3])
      {
        sub_1001A3AF4(v79, v118 + 2, v119);
        goto LABEL_52;
      }

LABEL_47:

      sub_1001A3CFC(1uLL, v77, v118 + 2, v119, &v151);
      result = v151;
      if (!v151)
      {
        goto LABEL_65;
      }

      (*v130)(v151, v79, v116);
    }

    else
    {
      v120 = v118[4];
      if (v120)
      {
        v121 = v120 - 1;
        if (__OFSUB__(v120, 1))
        {
          __break(1u);
          goto LABEL_47;
        }
      }

      else
      {
        v122 = v118[2];
        v121 = v122 - 1;
        if (__OFSUB__(v122, 1))
        {
          goto LABEL_64;
        }
      }

      result = (*(v134 + 16))(v119 + v121 * *(v134 + 72), v79, v116);
      v118[4] = v121;
      v123 = v118[3];
      v88 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v88)
      {
        goto LABEL_63;
      }

      v118[3] = v124;
LABEL_52:
    }

    v125 = *v137;
    (*v137)(v114, v116);

    return v125(v79, v116);
  }

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
  return result;
}

uint64_t sub_1001A3AF4(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *a2);
      if (v5 < *a2 || (v5 -= *a2, !v9))
      {
LABEL_9:
        v10 = sub_1001D0720();
        result = (*(*(v10 - 8) + 16))(a3 + *(*(v10 - 8) + 72) * v5, v8, v10);
        v11 = a2[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          a2[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *a2);
      v5 += *a2;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t *sub_1001A3BB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1001A6F0C(v9, a2, a3, a4, a5);
    v11 = v10;

    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

unint64_t sub_1001A3C70(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A3CFC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a3[1];
  v9 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    __break(1u);
    goto LABEL_167;
  }

  v12 = result;
  v13 = a3[2];
  if (v9 <= a2)
  {
    goto LABEL_10;
  }

  v6 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v14 = v13 - result;
  if (__OFADD__(v13, v6))
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v6 < 0)
  {
LABEL_25:
    v8 = *a3;
    if (v14 < 0)
    {
      v15 = __OFADD__(v14, v8);
      v14 += v8;
      if (v15)
      {
        goto LABEL_184;
      }
    }

LABEL_27:
    v19 = v13 + a2;
    if (v13 + a2 >= v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = 0;
    }

    v9 = v19 - v20;
    v21 = v19 - v20 + v6;
    if (!__OFADD__(v19 - v20, v6))
    {
      if (v6 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v8);
      if (v21 < v8)
      {
        goto LABEL_49;
      }

      v21 -= v8;
      if (!v22)
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v8 = *a3;
  v15 = __OFSUB__(v14, *a3);
  if (v14 < *a3)
  {
    goto LABEL_27;
  }

  v14 -= *a3;
  if (!v15)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v5 = v13 + v8;
  if (__OFADD__(v13, v8))
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v16 = __OFSUB__(v5, *a3);
    if (v5 < *a3)
    {
      goto LABEL_18;
    }

    v5 -= *a3;
    if (!v16)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v5 < 0)
  {
    v15 = __OFADD__(v5, *a3);
    v5 += *a3;
    if (v15)
    {
      goto LABEL_183;
    }
  }

LABEL_18:
  v15 = __OFADD__(v8, result);
  v17 = v8 + result;
  if (v15)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v14 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v8 = *a3;
    v18 = __OFSUB__(v14, *a3);
    if (v14 < *a3)
    {
      goto LABEL_38;
    }

    v14 -= *a3;
    if (!v18)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v8 = *a3;
  if (v14 < 0)
  {
    v15 = __OFADD__(v14, v8);
    v14 += v8;
    if (v15)
    {
      goto LABEL_185;
    }
  }

LABEL_38:
  v23 = v13 + a2;
  if (v13 + a2 >= v8)
  {
    v24 = v8;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v13 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_173;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v13, v8);
    if (v13 < v8)
    {
      goto LABEL_75;
    }

    v13 -= v8;
    if (!v25)
    {
      goto LABEL_75;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v15 = __OFADD__(v21, v8);
      v21 += v8;
      if (v15)
      {
        goto LABEL_186;
      }
    }

LABEL_49:
    if (v9 <= 0)
    {
      v26 = v8;
    }

    else
    {
      v26 = v9;
    }

    if (v21 <= 0)
    {
      v27 = v8;
    }

    else
    {
      v27 = v21;
    }

    if (v26 >= v13)
    {
      if (v27 < v14)
      {
        v31 = v8 - v14;
        if (__OFSUB__(v8, v14))
        {
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        if (v31 <= 0)
        {
          goto LABEL_127;
        }

        v32 = *(*(sub_1001D0720() - 8) + 72);
        result = a4 + v32 * v14;
        if (v32 * v14 >= v32 * v13 && result < a4 + v32 * v13 + v32 * v31)
        {
          if (v32 * v14 == v32 * v13)
          {
            goto LABEL_127;
          }

          goto LABEL_72;
        }

        goto LABEL_126;
      }

      if (a2 <= 0)
      {
        goto LABEL_133;
      }

      v40 = *(*(sub_1001D0720() - 8) + 72);
      result = a4 + v40 * v14;
      if (v40 * v14 >= v40 * v13 && result < a4 + v40 * v13 + v40 * a2)
      {
        if (v40 * v14 == v40 * v13)
        {
LABEL_133:
          a3[2] = v14;
          v50 = a3[1];
          v15 = __OFADD__(v50, v12);
          v51 = v50 + v12;
          if (!v15)
          {
            a3[1] = v51;
            if (v9 <= 0)
            {
              v52 = *a3;
            }

            else
            {
              v52 = v9;
            }

LABEL_165:
            result = sub_1001A4500(v21, v52, a3, a4, v61);
            v59 = v62;
            v60 = v61[1];
            *a5 = v61[0];
            *(a5 + 16) = v60;
            *(a5 + 32) = v59;
            return result;
          }

          goto LABEL_174;
        }

LABEL_131:
        result = swift_arrayInitWithTakeBackToFront();
        goto LABEL_133;
      }
    }

    else
    {
      v28 = v8 - v13;
      v29 = __OFSUB__(v8, v13);
      if (v27 < v14)
      {
        if (v29)
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        if (v28 > 0)
        {
          v30 = *(*(sub_1001D0720() - 8) + 72);
          result = a4 + v30 * v14;
          if (v30 * v14 < v30 * v13 || result >= a4 + v30 * v13 + v30 * v28)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 * v14 != v30 * v13)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v12 < 1)
        {
          goto LABEL_127;
        }

        v43 = *a3 + v6;
        result = sub_1001D0720();
        v44 = *(*(result - 8) + 72);
        v45 = v44 * v43;
        if (((v44 * v43) & 0x8000000000000000) == 0 && v45 < v44 * v12)
        {
          if (v45)
          {
LABEL_72:
            result = swift_arrayInitWithTakeBackToFront();
          }

LABEL_127:
          if (v21 < 1)
          {
            goto LABEL_133;
          }

          result = sub_1001D0720();
          v49 = *(*(result - 8) + 72);
          if (v49 * v12 <= 0 && a4 + v49 * v12 + v49 * v21 > a4)
          {
            if (!(v49 * v12))
            {
              goto LABEL_133;
            }

            goto LABEL_131;
          }

          goto LABEL_132;
        }

LABEL_126:
        result = swift_arrayInitWithTakeFrontToBack();
        goto LABEL_127;
      }

      if (v29)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v28 > 0)
      {
        v38 = *(*(sub_1001D0720() - 8) + 72);
        result = a4 + v38 * v14;
        if (v38 * v14 < v38 * v13 || result >= a4 + v38 * v13 + v38 * v28)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v38 * v14 != v38 * v13)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }
      }

      if (v9 < 1)
      {
        goto LABEL_133;
      }

      v46 = *a3 + v6;
      result = sub_1001D0720();
      v47 = *(*(result - 8) + 72);
      v48 = v47 * v46;
      if (((v47 * v46) & 0x8000000000000000) == 0 && v48 < v47 * v9)
      {
        if (!v48)
        {
          goto LABEL_133;
        }

        goto LABEL_131;
      }
    }

LABEL_132:
    result = swift_arrayInitWithTakeFrontToBack();
    goto LABEL_133;
  }

  if (v13 < 0)
  {
    v15 = __OFADD__(v13, v8);
    v13 += v8;
    if (v15)
    {
      goto LABEL_187;
    }
  }

LABEL_75:
  if (v5 <= 0)
  {
    v33 = v8;
  }

  else
  {
    v33 = v5;
  }

  if (v14 <= 0)
  {
    v34 = v8;
  }

  else
  {
    v34 = v14;
  }

  if (v33 >= v21)
  {
    if (v34 >= v13)
    {
      if (v9 <= 0)
      {
        goto LABEL_161;
      }

      goto LABEL_156;
    }

    if (__OFSUB__(0, result))
    {
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    if (v14 <= 0)
    {
      goto LABEL_149;
    }

    v5 = v8 - result;
    result = sub_1001D0720();
    v37 = *(*(result - 8) + 72);
    if (v37 * v5 <= 0 && a4 + v37 * v5 + v37 * v14 > a4)
    {
      if (v37 * v5)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_149;
    }

LABEL_148:
    result = swift_arrayInitWithTakeFrontToBack();
LABEL_149:
    v15 = __OFSUB__(v9, v14);
    v9 -= v14;
    if (!v15)
    {
      goto LABEL_155;
    }

    __break(1u);
    goto LABEL_152;
  }

  if (v34 >= v13)
  {
    if (v5 > 0)
    {
      result = sub_1001D0720();
      v41 = *(*(result - 8) + 72);
      v42 = v41 * v12;
      if (v41 * v12 < 0 || v42 >= v41 * v5)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v42)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }
    }

    v9 = *a3 - v21;
    if (!__OFSUB__(*a3, v21))
    {
      goto LABEL_155;
    }

    __break(1u);
    goto LABEL_148;
  }

  if (v5 > 0)
  {
    result = sub_1001D0720();
    v35 = *(*(result - 8) + 72);
    v36 = v35 * v12;
    if (v35 * v12 < 0 || v36 >= v35 * v5)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v36)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }
  }

  if (__OFSUB__(0, v12))
  {
    goto LABEL_180;
  }

  if (v12 >= 1)
  {
    v53 = *a3 - v12;
    result = sub_1001D0720();
    v54 = *(*(result - 8) + 72);
    if (v54 * v53 <= 0 && a4 + v54 * v53 + v54 * v12 > a4)
    {
      if (v54 * v53)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_153;
    }

LABEL_152:
    result = swift_arrayInitWithTakeFrontToBack();
  }

LABEL_153:
  v55 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v9 = v55 - v5;
  if (!__OFSUB__(v55, v5))
  {
LABEL_155:
    if (v9 < 1)
    {
      goto LABEL_161;
    }

LABEL_156:
    v56 = *(*(sub_1001D0720() - 8) + 72);
    result = a4 + v56 * v13;
    if (v56 * v13 < v56 * v21 || result >= a4 + v56 * v21 + v56 * v9)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 * v13 != v56 * v21)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

LABEL_161:
    v57 = a3[1];
    v15 = __OFADD__(v57, v12);
    v58 = v57 + v12;
    if (!v15)
    {
      a3[1] = v58;
      if (v13 <= 0)
      {
        v52 = *a3;
      }

      else
      {
        v52 = v13;
      }

      goto LABEL_165;
    }

    goto LABEL_175;
  }

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
  return result;
}

uint64_t sub_1001A4500@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v7 = result;
  if (result >= a2)
  {
    v12 = *a3 - result;
    if (!__OFSUB__(*a3, result))
    {
      v14 = a2 == 0;
      if (a2)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v15 = sub_1001D0720();
      v16 = *(v15 - 8);
      result = v15 - 8;
      v10 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = sub_1001D0720();
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v12 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      v13 = 0;
      v6 = 0;
      v14 = 1;
LABEL_9:
      *a5 = a4 + *(v10 + 72) * v7;
      *(a5 + 8) = v12;
      *(a5 + 16) = v13;
      *(a5 + 24) = v6;
      *(a5 + 32) = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A45F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000130E0;

  return sub_10016EC78(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_1001A46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  *(v8 + 16) = a1;
  v11 = *a8;
  v12 = swift_task_alloc();
  *(v8 + 24) = v12;
  *v12 = v8;
  v12[1] = sub_1001A47C4;

  return sub_1001705AC(a2, a3, a4, a5, a6, a7, v11, v19);
}

uint64_t sub_1001A47C4(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1001A48E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = *v18;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1001B0610;

  return sub_1001A7578(a4, a5, a6, a7, a8, v13, v19, v20);
}

uint64_t sub_1001A49E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1001A4AAC;

  return sub_1001A84F0(a4, a5, a6, a7, a8);
}

uint64_t sub_1001A4AAC(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1001A4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1001A4C80;

  return sub_10017498C(2, a5, a6);
}

uint64_t sub_1001A4C80()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1001A4DC0;
  }

  else
  {
    v3 = sub_1001A4D94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A4D94()
{
  if (*(v0 + 32))
  {
    v1 = 65;
  }

  else
  {
    v1 = 64;
  }

  *(*(v0 + 16) + 8) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1001A4DC0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = 65;
  }

  else
  {
    v3 = 64;
  }

  *v2 = v1;
  *(v2 + 8) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1001A4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a1;
  v14 = swift_task_alloc();
  *(v8 + 40) = v14;
  *v14 = v8;
  v14[1] = sub_1001A4ECC;

  return sub_100174E98(v8 + 16, a4, a5, a6, a7, a8, v17);
}

uint64_t sub_1001A4ECC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1001A5014;
  }

  else
  {
    v3 = sub_1001A4FE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A4FE0()
{
  v1 = *(v0 + 32);
  if (*(v0 + 48))
  {
    v2 = 97;
  }

  else
  {
    v2 = 96;
  }

  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1001A5014()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = 97;
  }

  else
  {
    v3 = 96;
  }

  *v2 = v1;
  *(v2 + 8) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1001A5044(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = sub_100024DC8(a4, a4[3]);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1001B0610;

  return sub_1001ACFBC(v7, a5);
}

uint64_t sub_1001A50F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D20D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001D10E0();
  v20[3] = v10;
  v20[4] = &off_10021DF88;
  v11 = sub_10003B47C(v20);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  v12 = *(*a2 + 184);
  v13 = *(*a2 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v9, v4);
  v14 = v19[3];
  v15 = v19[4];
  v16 = (a2 + *(*a2 + 144));
  os_unfair_lock_lock(v16);
  v17 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10015DD28(v16 + *(v17 + 28), v14, v15, v20);
  os_unfair_lock_unlock(v16);
  return sub_100011CF0(v20);
}

uint64_t sub_1001A5348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1001B059C;

  return sub_100184730(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001A5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 33) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  return _swift_task_switch(sub_1001A5474, 0, 0);
}

uint64_t sub_1001A5474()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 33);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  *(v6 + 56) = v7;
  *(v6 + 72) = v8;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  v10 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  v12 = sub_100011AC0(&qword_10022FDC0, &qword_1001E18A8);
  *v11 = v0;
  v11[1] = sub_1001A55BC;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 16, &unk_1001E1938, v6, sub_1001AE40C, v9, 0, 0, v12);
}

uint64_t sub_1001A55BC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);
    v8 = *(v2 + 40);

    v9 = *(v2 + 32);
    *v8 = *(v2 + 16);
    *(v8 + 16) = v9;
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1001A570C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_1001A5800;

  return v6(v2 + 16);
}

uint64_t sub_1001A5800()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v4 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v4;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1001A591C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1001A5A10;

  return sub_100187310(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1001A5A10(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3 & 1;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_1001A5B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_1001A5C34;

  return sub_100187BA4(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001A5C34(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v11 = *v3;

  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1001A5D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1001A5E24;

  return sub_100188594(a4, a5, a6, a7, a8);
}

uint64_t sub_1001A5E24(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001A5F24, 0, 0);
}

uint64_t sub_1001A5F24()
{
  v1 = *(v0 + 16);
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_1001A5F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1001B059C;

  return sub_1001A9B60(a4, a5, a6, a7, a8, v17, v18, v19);
}

uint64_t sub_1001A6040(void *a1, uint64_t a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1001A6064, 0, 0);
}

uint64_t sub_1001A6064()
{
  v1 = v0[3];
  v2 = qword_100243500;
  v3 = (v1 + *(type metadata accessor for TrustedRequestConfiguration() + 128) + v2);
  v4 = *v3;
  v5 = v3[1];
  sub_1001D1090();
  v6 = sub_1001D1060();
  v0[4] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1001A61DC;

  return (sub_100138CDC)(v4, v5, v6, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1001A61DC()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(v4 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008F93C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1001A632C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1001A6420;

  return v6(v2 + 16);
}

uint64_t sub_1001A6420()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1001A6554(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_10005B61C;

  return sub_100173F34(v9, a5, a6);
}

uint64_t sub_1001A6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10005B61C;

  return sub_10017EFD4(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_1001A66E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t *a9)
{
  v15 = *a9;
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_10005B61C;

  return sub_10017F804(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1001A67F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10005B61C;

  return sub_1001766D8(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_1001A68C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  *(v3 + 56) = *(a2 + 24);
  return _swift_task_switch(sub_1001A68F8, 0, 0);
}

uint64_t sub_1001A68F8()
{
  v1 = *(v0 + 24);
  v2 = sub_1001A8C38(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 16);
  *v3 = v2;
  v3[1] = v4;
  sub_100089C38(v2, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001A6990(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_1001D0F80();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[2] = *a2;

  return _swift_task_switch(sub_1001A6A60, 0, 0);
}

uint64_t sub_1001A6A60()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_1001D1090();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1001D1080();
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1001A6BDC;
  v8 = v0[3];
  v7 = v0[4];

  return (sub_100138CDC)(v8, v7, v5, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1001A6BDC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001A6D40, 0, 0);
  }

  else
  {
    v5 = v4[8];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1001A6D40()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

Swift::Int sub_1001A6DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100229518, &qword_1001D67D8);
    v3 = sub_1001D2000();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1001D2580();

      sub_1001D1880();
      result = sub_1001D25C0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1001D2470();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1001A6F0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = 0;
  v5 = a4;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v37 = *(*a5 + 392);
  v11 = (v8 + 63) >> 6;
  v41 = a4 + 56;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_13:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(a3 + 56) + 16 * v15 + 8);
    if (*(v5 + 16))
    {
      v20 = *(v5 + 40);
      sub_1001D2580();

      sub_1001D1880();
      v21 = sub_1001D25C0();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      if (((*(v41 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_24;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = (*(a4 + 48) + 16 * v23);
        v26 = *v25 == v18 && v25[1] == v17;
        if (v26 || (sub_1001D2470() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v41 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v33 = __OFADD__(v38++, 1);
      v10 = v40;
      v5 = a4;
      if (v33)
      {
        __break(1u);
LABEL_29:
        sub_1000F2F48(a1, a2, v38, a3);
        return;
      }
    }

    else
    {
      v27 = v16[1];

LABEL_24:

      v28 = sub_1001D0E50();
      v29 = sub_1001D1DE0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v30 = 136315394;
        sub_1001CFDA0();
        v35 = v29;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v43 = sub_1001D23A0();
        v44 = v31;
        v46._countAndFlagsBits = 58;
        v46._object = 0xE100000000000000;
        sub_1001D18B0(v46);
        v32 = sub_1000954E0(v43, v44, &v45);

        *(v30 + 4) = v32;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_1000954E0(v18, v17, &v45);
        _os_log_impl(&_mh_execute_header, v28, v35, "%s found workload parameter not in allow list: %s", v30, 0x16u);
        swift_arrayDestroy();
      }

      v10 = v40;
      v5 = a4;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_29;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_1001A735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  swift_bridgeObjectRetain_n();
  v11 = swift_retain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_1001A3BB8(v16, v9, a1, a2, a3);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v11, v12);
  bzero(&v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_1001A6F0C((&v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v14 = v13;

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:

  return v14;
}

uint64_t sub_1001A7578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v23;
  v8[12] = v24;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v12 = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest(0);
  v8[16] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v14 = *(*(sub_1001D0F60() - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v15 = sub_1001D0F80();
  v8[19] = v15;
  v16 = *(v15 - 8);
  v8[20] = v16;
  v17 = *(v16 + 64) + 15;
  v8[21] = swift_task_alloc();
  v18 = sub_1001D0ED0();
  v8[22] = v18;
  v19 = *(v18 - 8);
  v8[23] = v19;
  v20 = *(v19 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001A777C, 0, 0);
}

uint64_t sub_1001A777C()
{
  v1 = v0[3];
  sub_100172AC4(v0[4], v0[5], v0[6], v0[25]);
  v2 = v0[24];
  v3 = v0[23];
  v19 = v0[22];
  v20 = v0[25];
  v4 = v0[18];
  v23 = v0[17];
  v24 = v0[16];
  v21 = v0[21];
  v22 = v0[6];
  v5 = v0[3];
  v0[2] = v0[8];
  sub_1001D0F50();
  v6 = v5 + qword_100243500;
  v7 = type metadata accessor for TrustedRequestConfiguration();
  v8 = (v6 + *(v7 + 68));
  v10 = *v8;
  v9 = v8[1];
  v11 = (v6 + *(v7 + 72));
  v12 = *v11;
  v13 = v11[1];
  (*(v3 + 16))(v2, v20, v19);

  sub_1001D0F70();
  v14 = swift_task_alloc();
  *(v14 + 16) = v5;
  *(v14 + 24) = v22;
  sub_1001B0458(&qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  sub_1001D0B50();

  v0[26] = sub_1001A89CC(v23, 0, 1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest, &qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  v0[27] = v15;
  v16 = swift_task_alloc();
  v0[28] = v16;
  *v16 = v0;
  v16[1] = sub_1001A7AA4;
  v17 = v0[3];

  return sub_100175B14();
}

uint64_t sub_1001A7AA4()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_1001A7BA0, 0, 0);
}

uint64_t sub_1001A7BA0()
{
  v8 = *(v0 + 208);
  v1 = *(v0 + 168);
  v2 = *(v0 + 24);
  v3 = *(v2 + *(*v2 + 368));
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v0 + 16;
  *(v4 + 32) = v8;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_1001A7CB8;
  v6 = *(v0 + 200);

  return sub_10015E234(sub_10015E234, v6, &unk_1001E1B18);
}

uint64_t sub_1001A7CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);

  if (v0)
  {
    v6 = sub_1001A8194;
  }

  else
  {
    v6 = sub_1001A7DEC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001A7DEC()
{
  v1 = v0[10];
  os_unfair_lock_lock((v1 + 16));
  if ((*(v1 + 33) & 1) == 0)
  {
    v2 = *(v1 + 24);
    v23 = *(v1 + 32);
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    v24 = v1;
    if (v2 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1001D2190())
    {
      v5 = 0;
      v6 = v0[14];
      v28 = (v6 + 48);
      v29 = v2 & 0xC000000000000001;
      v25 = (v6 + 8);
      v26 = (v6 + 16);
      v27 = v3;
      while (v29)
      {
        v7 = sub_1001D2040();
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        v9 = v0[13];
        v10 = (v7 + *(*v7 + 88));
        os_unfair_lock_lock(v10);
        v11 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
        if (!(*v28)(v10 + v11, 1, v9))
        {
          v12 = v0[15];
          v13 = v2;
          v14 = v0[13];
          (*v26)(v12, v10 + v11, v14);
          sub_1001D1AA0();
          v15 = v14;
          v2 = v13;
          v3 = v27;
          (*v25)(v12, v15);
        }

        os_unfair_lock_unlock(v10);

        ++v5;
        if (v8 == i)
        {
          goto LABEL_16;
        }
      }

      if (v5 >= *(v3 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(v2 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    sub_1001AFB84(v2, v23, 0, sub_1001428C4);
    v1 = v24;
    *(v24 + 24) = 0;
    *(v24 + 32) = 256;
  }

  os_unfair_lock_unlock((v1 + 16));
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_1001A8080;
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[7];
  v21 = v0[3];

  return sub_100176AEC(v20, v19, v17, v18);
}

uint64_t sub_1001A8080()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1001A83D4;
  }

  else
  {
    v3 = sub_1001A82B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A8194()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[3];
  sub_100011E48(v0[26], v0[27]);
  sub_1001AFB98(v4, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  (*(v2 + 8))(v1, v3);
  sub_100176514(v5);
  v6 = v0[31];
  (*(v0[23] + 8))(v0[25], v0[22]);
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];

  v13 = v0[1];

  return v13(v6, 1);
}

uint64_t sub_1001A82B0()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[3];
  sub_100011E48(v0[26], v0[27]);
  sub_1001AFB98(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  (*(v5 + 8))(v4, v6);
  sub_100176514(v8);
  (*(v3 + 8))(v1, v2);
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[21];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001A83D4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[3];
  sub_100011E48(v0[26], v0[27]);
  sub_1001AFB98(v4, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  (*(v2 + 8))(v1, v3);
  sub_100176514(v5);
  v6 = v0[33];
  (*(v0[23] + 8))(v0[25], v0[22]);
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];

  v13 = v0[1];

  return v13(v6, 1);
}

uint64_t sub_1001A84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1001A8588;

  return sub_10013F08C(v6);
}

uint64_t sub_1001A8588()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1001A897C;
  }

  else
  {
    v3 = sub_1001A869C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001A869C()
{
  v1 = *(v0 + 48);
  v2 = qword_100243500;
  v3 = type metadata accessor for TrustedRequestConfiguration();
  v10 = *(v0 + 32);
  v4 = (v10 + *(v3 + 128) + v2);
  v5 = *v4;
  v6 = v4[1];
  *(v0 + 16) = 1;
  v12._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v12);

  *(v0 + 72) = 0xE600000000000000;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v10;
  *(v7 + 32) = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1001A8828;
  v9 = *(v0 + 24);

  JUMPOUT(0x10013A2CCLL);
}

uint64_t sub_1001A8828()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v5 = sub_1001A89B0;
  }

  else
  {
    v5 = sub_1001A8998;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001A89CC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_1001B0458(a5, a6);
  v12 = a1;
  v13 = sub_1001D0B00();
  if (!v6)
  {
    v15 = v13;
    v16 = v14;
    v37 = v13;
    v38 = v14;
    if ((a3 & 1) == 0)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v17 = sub_1001A3C70(a2 + 1);
      v18 = sub_1001583E0(v17);
      if (v19 >> 60 != 15)
      {
        v20 = v18;
        v21 = v19;
        sub_1001CFC30();
        sub_10002683C(v20, v21);
        v15 = v37;
        v16 = v38;
      }
    }

    v22 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_21;
      }

      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (!v26)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v22)
    {
      v34 = (v16 >> 24) & 0xFF000000;
      v36 = xmmword_1001D3A00;
      v23 = BYTE6(v16);
      goto LABEL_24;
    }

    LODWORD(v27) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v27 = v27;
LABEL_15:
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v27))
    {
      v34 = bswap32(v27);
      v36 = xmmword_1001D3A00;
      if (v22 != 2)
      {
        LODWORD(v23) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_32;
        }

        v23 = v23;
        goto LABEL_24;
      }

      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      v26 = __OFSUB__(v28, v29);
      v23 = v28 - v29;
      if (!v26)
      {
LABEL_24:
        if (!__OFADD__(v23, 4))
        {
          sub_1001CFBA0(v23 + 4);
          v35[3] = &type metadata for UnsafeRawBufferPointer;
          v35[4] = &protocol witness table for UnsafeRawBufferPointer;
          v35[0] = &v34;
          v35[1] = v35;
          v30 = sub_100024DC8(v35, &type metadata for UnsafeRawBufferPointer);
          v32 = *v30;
          v31 = v30[1];
          sub_1001CFBB0();
          sub_100011CF0(v35);
          sub_1001CFC30();
          v12 = v36;
          sub_100011E48(v15, v16);
          return v12;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_21:
      v23 = 0;
      v34 = 0;
      v36 = xmmword_1001D3A00;
      goto LABEL_24;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return v12;
}

uint64_t sub_1001A8C38(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = v5;
  v108 = a4;
  v10 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v99 = &v92[-v13];
  v14 = sub_1001D0ED0();
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  v17 = __chkstk_darwin(v14, v16);
  v96 = &v92[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17, v19);
  v100 = &v92[-v21];
  __chkstk_darwin(v20, v22);
  v97 = &v92[-v23];
  v24 = sub_100011AC0(&qword_1002295C0, &qword_1001D6910);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v110 = &v92[-v27];
  v28 = sub_1001D0FF0();
  v109 = *(v28 - 8);
  v29 = *(v109 + 64);
  v31 = __chkstk_darwin(v28, v30);
  v101 = &v92[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31, v33);
  v105 = &v92[-v34];
  v35 = *(*v4 + 392);
  sub_100089C38(a1, a2);

  sub_100089C38(a1, a2);

  sub_100089C38(a1, a2);

  sub_100089C38(a1, a2);

  v104 = v35;
  v36 = sub_1001D0E50();
  v37 = sub_1001D1E00();

  v38 = os_log_type_enabled(v36, v37);
  v106 = v4;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v98 = v28;
    v40 = v39;
    v95 = swift_slowAlloc();
    v113 = v95;
    *v40 = 136315906;
    sub_1001CFDA0();
    v107 = v5;
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v111 = sub_1001D23A0();
    v112 = v41;
    v114._countAndFlagsBits = 2629690;
    v114._object = 0xE300000000000000;
    sub_1001D18B0(v114);
    v115._countAndFlagsBits = 1953460082;
    v115._object = 0xE400000000000000;
    sub_1001D18B0(v115);
    v116._countAndFlagsBits = 41;
    v116._object = 0xE100000000000000;
    sub_1001D18B0(v116);
    v42 = sub_1000954E0(v111, v112, &v113);

    *(v40 + 4) = v42;
    *(v40 + 12) = 2080;
    v111 = a1;
    v112 = a2;
    sub_100089C38(a1, a2);
    sub_100011AC0(qword_100229648, &unk_1001D6B30);
    v43 = sub_1001D1820();
    v45 = sub_1000954E0(v43, v44, &v113);

    *(v40 + 14) = v45;
    *(v40 + 22) = 1024;
    sub_10002683C(a1, a2);

    *(v40 + 24) = a3 != 0;
    v6 = v107;
    sub_10002683C(a1, a2);

    *(v40 + 28) = 1024;
    sub_10002683C(a1, a2);

    *(v40 + 30) = v108 & 1;
    sub_10002683C(a1, a2);

    _os_log_impl(&_mh_execute_header, v36, v37, "%s received content: %s, contentContextPresent: %{BOOL}d, isComplete: %{BOOL}d", v40, 0x22u);
    swift_arrayDestroy();

    v28 = v98;

    v46 = v110;
    if (!a3)
    {
      return a1;
    }

LABEL_5:

    sub_1001D1050();
    v47 = v109;
    if ((*(v109 + 48))(v46, 1, v28) == 1)
    {

      sub_100011F00(v46, &qword_1002295C0, &qword_1001D6910);
      return a1;
    }

    v94 = a1;
    v95 = a2;
    v48 = v105;
    (*(v47 + 32))(v105, v46, v28);
    v49 = v101;
    (*(v47 + 16))(v101, v48, v28);
    v50 = v106;

    v51 = v47;
    v52 = sub_1001D0E50();
    v53 = sub_1001D1DC0();

    v54 = os_log_type_enabled(v52, v53);
    v107 = v6;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v113 = v98;
      *v55 = 136315394;
      v93 = v53;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v111 = sub_1001D23A0();
      v112 = v56;
      v117._countAndFlagsBits = 2629690;
      v117._object = 0xE300000000000000;
      sub_1001D18B0(v117);
      v118._countAndFlagsBits = 1953460082;
      v118._object = 0xE400000000000000;
      sub_1001D18B0(v118);
      v119._countAndFlagsBits = 41;
      v119._object = 0xE100000000000000;
      sub_1001D18B0(v119);
      v57 = sub_1000954E0(v111, v112, &v113);

      *(v55 + 4) = v57;
      *(v55 + 12) = 2080;
      v58 = v97;
      v59 = v101;
      sub_1001D0F90();
      v60 = HTTPFields.loggingDescription.getter();
      v62 = v61;
      (*(v102 + 8))(v58, v103);
      v110 = *(v51 + 8);
      (v110)(v59, v28);
      v63 = sub_1000954E0(v60, v62, &v113);

      *(v55 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v52, v93, "%s received headers\n%s", v55, 0x16u);
      swift_arrayDestroy();
      v50 = v106;
    }

    else
    {

      v110 = *(v51 + 8);
      (v110)(v49, v28);
    }

    sub_1001D12A0();
    sub_1001D1250();
    v64 = sub_1001D1070();

    v66 = v102;
    v65 = v103;
    v67 = v100;
    if (v64)
    {
      sub_1001D1290();
      if (swift_dynamicCastClass())
      {
        v68 = v99;
        sub_1001D1280();

        if ((*(v66 + 48))(v68, 1, v65) != 1)
        {
          (*(v66 + 32))(v67, v68, v65);
          (*(v66 + 16))(v96, v67, v65);

          v69 = sub_1001D0E50();
          v70 = sub_1001D1DC0();

          if (os_log_type_enabled(v69, v70))
          {
            a1 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v113 = v104;
            *a1 = 136315394;
            sub_1001CFDA0();
            sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
            v71 = v50;
            v111 = sub_1001D23A0();
            v112 = v72;
            v120._countAndFlagsBits = 2629690;
            v120._object = 0xE300000000000000;
            sub_1001D18B0(v120);
            v121._countAndFlagsBits = 1953460082;
            v121._object = 0xE400000000000000;
            sub_1001D18B0(v121);
            v122._countAndFlagsBits = 41;
            v122._object = 0xE100000000000000;
            sub_1001D18B0(v122);
            v73 = sub_1000954E0(v111, v112, &v113);

            *(a1 + 4) = v73;
            *(a1 + 12) = 2080;
            v74 = v96;
            v75 = HTTPFields.loggingDescription.getter();
            v77 = v76;
            LODWORD(v101) = v70;
            v102 = *(v102 + 8);
            (v102)(v74, v103);
            v78 = sub_1000954E0(v75, v77, &v113);

            *(a1 + 14) = v78;
            _os_log_impl(&_mh_execute_header, v69, v101, "%s received trailers\n%s", a1, 0x16u);
            swift_arrayDestroy();

            (v102)(v100, v103);
          }

          else
          {
            v90 = v67;
            v71 = v50;

            v91 = *(v66 + 8);
            a1 = v66 + 8;
            v91(v96, v65);
            v91(v90, v65);
          }

          goto LABEL_21;
        }

LABEL_17:
        sub_100011F00(v68, &unk_100230110, &unk_1001D6520);

        v79 = sub_1001D0E50();
        a1 = sub_1001D1DC0();

        if (os_log_type_enabled(v79, a1))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v98 = v28;
          v82 = v81;
          v113 = v81;
          *v80 = 136315138;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
          v71 = v50;
          v111 = sub_1001D23A0();
          v112 = v83;
          v123._countAndFlagsBits = 2629690;
          v123._object = 0xE300000000000000;
          sub_1001D18B0(v123);
          v124._countAndFlagsBits = 1953460082;
          v124._object = 0xE400000000000000;
          sub_1001D18B0(v124);
          v125._countAndFlagsBits = 41;
          v125._object = 0xE100000000000000;
          sub_1001D18B0(v125);
          v84 = sub_1000954E0(v111, v112, &v113);

          *(v80 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v79, a1, "%s received no trailers", v80, 0xCu);
          sub_100011CF0(v82);
          v28 = v98;
        }

        else
        {
          v71 = v50;
        }

LABEL_21:
        v85 = v107;
        v86 = v105;
        if (v108)
        {
          sub_10017BD24(v105, a3);
          if (v85)
          {
            (v110)(v86, v28);

            return a1;
          }

          (v110)(v86, v28);
        }

        else
        {
          sub_10017DA48(v105, a3);
          if (v85)
          {
            v87 = *(v71 + *(*v71 + 368));
            swift_errorRetain();
            sub_10015F120(v86, v85);

            swift_willThrow();

            (v110)(v86, v28);
            return a1;
          }

          v88 = *(v71 + *(*v71 + 368));
          sub_10015F120(v86, 0);

          (v110)(v86, v28);
        }

        return v94;
      }
    }

    v68 = v99;
    (*(v66 + 56))(v99, 1, 1, v65);
    goto LABEL_17;
  }

  sub_10002683C(a1, a2);

  sub_10002683C(a1, a2);

  sub_10002683C(a1, a2);

  sub_10002683C(a1, a2);

  v46 = v110;
  if (a3)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_1001A9AA8(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = *result;
    if (*result > 2)
    {
      if (v1 == 4)
      {
        v3 = 23;
      }

      else
      {
        v3 = 24;
      }

      if (v1 == 3)
      {
        v2 = 22;
      }

      else
      {
        v2 = v3;
      }
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      if (v1 == 1)
      {
        v2 = 20;
      }

      else
      {
        v2 = 21;
      }
    }
  }

  else
  {
    v2 = 19;
  }

  sub_100089BE4();
  swift_allocError();
  *v4 = v2;
  *(v4 + 1) = 23;
  *(v4 + 8) = &_swiftEmptyArrayStorage;
  return swift_willThrow();
}

uint64_t sub_1001A9B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v18;
  *(v8 + 288) = v19;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 392) = a4;
  *(v8 + 232) = a2;
  *(v8 + 240) = a3;
  *(v8 + 224) = a1;
  v9 = sub_100011AC0(&qword_10022FE00, &qword_1001E19B8);
  *(v8 + 296) = v9;
  v10 = *(v9 - 8);
  *(v8 + 304) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v12 = type metadata accessor for ValidatedAttestationOrAttestation();
  *(v8 + 320) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v14 = type metadata accessor for ValidatedAttestation();
  *(v8 + 336) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_1001A9CB4, 0, 0);
}

uint64_t sub_1001A9CB4()
{
  v36 = v0;
  v1 = *(v0 + 320);
  sub_1001AFCB4(*(v0 + 224), *(v0 + 328), type metadata accessor for ValidatedAttestationOrAttestation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 328);
    v3 = *(v0 + 232);
    v4 = v2[1];
    *(v0 + 16) = *v2;
    *(v0 + 32) = v4;
    v5 = v2[5];
    v7 = v2[2];
    v6 = v2[3];
    *(v0 + 80) = v2[4];
    *(v0 + 96) = v5;
    *(v0 + 48) = v7;
    *(v0 + 64) = v6;
    v8 = *(*v3 + 392);

    v9 = sub_1001D0E50();
    v10 = sub_1001D1E00();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 232);
      v32 = *(v0 + 240);
      v12 = *(v0 + 392);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v13 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v34 = sub_1001D23A0();
      v35 = v15;
      v38._countAndFlagsBits = 2629690;
      v38._object = 0xE300000000000000;
      sub_1001D18B0(v38);
      v39._countAndFlagsBits = sub_10016B71C(v32, v12);
      sub_1001D18B0(v39);

      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      sub_1001D18B0(v40);
      v16 = sub_1000954E0(v34, v35, &v33);

      *(v13 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s verifying attestation", v13, 0xCu);
      sub_100011CF0(v14);
    }

    v17 = *(*(v0 + 232) + *(**(v0 + 232) + 368));
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    sub_100089C90(v0 + 16, v0 + 112);
    v20 = swift_task_alloc();
    *(v0 + 376) = v20;
    *v20 = v0;
    v20[1] = sub_1001AA2EC;
    v21 = *(v0 + 344);
    v22 = *(v0 + 232);

    return sub_10011DBD4(v21, v18, v19, v17, v22, v0 + 16);
  }

  else
  {
    sub_1001B0368(*(v0 + 328), *(v0 + 352), type metadata accessor for ValidatedAttestation);
    v24 = swift_task_alloc();
    *(v0 + 360) = v24;
    *v24 = v0;
    v24[1] = sub_1001AA05C;
    v25 = *(v0 + 352);
    v26 = *(v0 + 280);
    v27 = *(v0 + 288);
    v28 = *(v0 + 264);
    v29 = *(v0 + 272);
    v30 = *(v0 + 256);
    v31 = *(v0 + 232);

    return sub_100188DE8(v25, v30, v28, v29, v26, v27);
  }
}

uint64_t sub_1001AA05C()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1001AA228;
  }

  else
  {
    v3 = sub_1001AA170;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001AA170()
{
  sub_1001AFB98(v0[44], type metadata accessor for ValidatedAttestation);
  v1 = v0[46] != 0;
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v5 = v0[39];

  v6 = v0[1];

  return v6(1, v1);
}

uint64_t sub_1001AA228()
{
  v1 = v0[46];
  sub_1001AFB98(v0[44], type metadata accessor for ValidatedAttestation);
  v2 = v0[46] != 0;
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[41];
  v6 = v0[39];

  v7 = v0[1];

  return v7(v1, v2);
}

uint64_t sub_1001AA2EC()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_1001AA558;
  }

  else
  {
    v3 = sub_1001AA400;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001AA400()
{
  v1 = v0[44];
  v2 = v0[42];
  sub_1001B0368(v0[43], v1, type metadata accessor for ValidatedAttestation);
  v3 = (v1 + *(v2 + 32));
  v4 = v3[1];
  if (v4)
  {
    v0[26] = *v3;
    v6 = v0[38];
    v5 = v0[39];
    v7 = v0[37];
    v8 = v0[31];
    v0[27] = v4;

    sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
    sub_1001D1BC0();
    sub_10005AF88((v0 + 2));
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    sub_10005AF88((v0 + 2));
  }

  v9 = swift_task_alloc();
  v0[45] = v9;
  *v9 = v0;
  v9[1] = sub_1001AA05C;
  v10 = v0[44];
  v11 = v0[35];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[34];
  v15 = v0[32];
  v16 = v0[29];

  return sub_100188DE8(v10, v15, v13, v14, v11, v12);
}

uint64_t sub_1001AA558()
{
  v1 = v0[48];
  sub_10005AF88((v0 + 2));
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v5 = v0[39];

  v6 = v0[1];

  return v6(v1, 0);
}

uint64_t sub_1001AA624()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AA674()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_100011E48(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001AA6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10005B61C;

  return sub_1001A2A64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AA7A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_100059300(a1, v5);
}

uint64_t sub_1001AA858()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_1001AA890(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1001AA8A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A2658(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AA96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A2260(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AAA44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A1F40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AAB0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 128);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1001AAB6C(uint64_t a1)
{
  v18 = *(v1 + 24);
  v19 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v17 = *(v1 + 72);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v12 = *(v1 + 112);
  v14 = *(v1 + 120);
  v13 = *(v1 + 128);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1000130E0;

  return sub_1001A1388(v10, v11, v12, a1, v19, v18, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AAC98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001AACF0(uint64_t a1)
{
  v16 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  return sub_1001A0DDC(a1, v16, v14, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AADF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001AAE48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  return sub_1001A0514(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AAF48(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_10022CB18, &qword_1001E1530);
    sub_1001B0458(a2, &type metadata accessor for TrustedCloudComputeRateLimit);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001AAFE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_10019FFE4(a1, v4, v5, v6, v7, v8);
}

void sub_1001AB0B0()
{
  v1 = *(v0 + 16);
  isa = sub_1001D19C0().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_1001AB110()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001AB158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_10019FA58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AB220()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001AB288(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  return sub_10019F530(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AB394()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001AB3EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  return sub_10019EC68(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1001AB4E0()
{
  v1 = type metadata accessor for TrustedRequestConfiguration();
  v2 = *(*(v1 - 1) + 80);
  v32 = *(*(v1 - 1) + 64);
  v35 = sub_1001D08A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 80);
  v31 = *(v3 + 64);
  v5 = sub_1001CFDA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v33 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  v34 = (v2 + 48) & ~v2;
  v11 = &v0[v34];
  v12 = *&v0[v34 + 40];

  v13 = *&v0[v34 + 88];

  v14 = v1[16];
  v15 = sub_1001CFB10();
  (*(*(v15 - 8) + 8))(&v0[v34 + v14], v15);
  v16 = *&v0[v34 + 8 + v1[17]];

  v17 = *&v0[v34 + 8 + v1[18]];

  v18 = *&v0[v34 + 8 + v1[20]];

  v19 = *&v0[v34 + 8 + v1[21]];

  v20 = *&v0[v34 + 8 + v1[22]];

  v21 = *&v0[v34 + 8 + v1[25]];

  v22 = *&v0[v34 + 8 + v1[26]];

  v23 = *&v0[v34 + 8 + v1[27]];

  v24 = *&v0[v34 + 8 + v1[28]];

  v25 = v1[29];
  if (!(*(v6 + 48))(&v0[v34 + v25], 1, v5))
  {
    (*(v6 + 8))(&v11[v25], v5);
  }

  v26 = v2 | v4 | v7;
  v27 = (v34 + v32 + v4) & ~v4;
  v28 = (v27 + v31 + v7) & ~v7;
  v29 = *&v11[v1[30] + 8];

  sub_100011E48(*&v11[v1[32]], *&v11[v1[32] + 8]);
  (*(v3 + 8))(&v0[v27], v35);
  (*(v6 + 8))(&v0[v28], v5);

  return _swift_deallocObject(v0, v28 + v33, v26 | 7);
}

uint64_t sub_1001AB810(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TrustedRequestConfiguration() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1001D08A0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1001CFDA0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10005B61C;

  return sub_100197088(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_1001AB9F8()
{
  result = qword_10022FC98;
  if (!qword_10022FC98)
  {
    sub_100011DF4(&qword_10022FC90, &unk_1001E1620);
    sub_100024B78(&qword_10022FCA0, &unk_100230260, &qword_1001D3660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FC98);
  }

  return result;
}

uint64_t sub_1001ABAA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_10016BFF4(a1, v1);
}

unint64_t sub_1001ABB44()
{
  result = qword_10022FCE8;
  if (!qword_10022FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FCE8);
  }

  return result;
}

unint64_t sub_1001ABB9C(unint64_t result)
{
  if (!(result >> 62))
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1001ABBAC(unint64_t result)
{
  if (result >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1001ABBDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000130E0;

  return sub_1001A45F0(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_1001ABCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001ABCD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_10016FFB0(a1, v1);
}

uint64_t sub_1001ABD70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_100170200(a1, v5);
}

uint64_t sub_1001ABE28(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1001ABE34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);
  v10 = *(v0 + 96);
  v8 = *(v0 + 112);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10005B61C;

  JUMPOUT(0x1001A46C0);
}

uint64_t sub_1001ABF58()
{
  v1 = (type metadata accessor for NWAsyncConnection.Inbound(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v24 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v24 + v6 + 8) & ~v6;
  v25 = v2 | v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 4);

  sub_100011E48(*(v0 + 5), *(v0 + 6));
  sub_100011E48(*(v0 + 7), *(v0 + 8));
  sub_100011E48(*(v0 + 9), *(v0 + 10));
  v13 = *(v0 + 12);

  v14 = &v0[v3];
  v15 = *v14;

  v16 = v1[7];
  v17 = sub_1001D0E60();
  (*(*(v17 - 8) + 8))(&v14[v16], v17);
  v18 = *&v14[v1[8]];

  v19 = *&v0[v24];

  (*(v5 + 8))(&v0[v7], v4);
  v20 = *&v0[v8];

  v21 = *&v0[v9];

  v22 = *&v0[v10];

  return _swift_deallocObject(v0, v10 + 8, v25 | 7);
}

void sub_1001AC174()
{
  v2 = v1;
  v3 = *(type metadata accessor for NWAsyncConnection.Inbound(0) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 104) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100011AC0(&qword_10022FD28, &qword_1001E1718) - 8);
  v6 = (*(v5 + 64) + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = v0[3];
  v16 = v0[2];
  v8 = v0[12];
  v13 = v0[11];
  v14 = v0[4];
  v9 = *(v0 + v6);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  JUMPOUT(0x1001A48E8);
}

uint64_t sub_1001AC368()
{
  v1 = (type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = v0 + v3;

  v10 = *(v9 + 8);

  v11 = *(v9 + 16);

  v12 = v1[9];
  v13 = sub_1001CFDA0();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = *(v0 + v4);

  v15 = *(v0 + v5);

  v16 = v0 + v6;
  sub_100011E48(*(v0 + v6), *(v0 + v6 + 8));
  sub_100011E48(*(v16 + 16), *(v16 + 24));
  sub_100011E48(*(v16 + 32), *(v16 + 40));

  return _swift_deallocObject(v0, v6 + 48, v2 | 7);
}

uint64_t sub_1001AC4C0(uint64_t a1)
{
  v3 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10005B61C;

  return sub_1001A49E4(a1, v8, v9, v11, v1 + v4, v10, v12, v1 + v7);
}

uint64_t sub_1001AC624()
{
  v1 = sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v9 + v7 + 8) & ~v9;
  v22 = *(*v8 + 64);
  v11 = v3 | v9;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v14 = *(v0 + v5);

  v15 = *(v0 + v6);

  v16 = *(v0 + v7);

  v17 = *(v0 + v10 + 8);

  v18 = *(v0 + v10 + 16);

  v19 = v8[9];
  v20 = sub_1001CFDA0();
  (*(*(v20 - 8) + 8))(v0 + v10 + v19, v20);

  return _swift_deallocObject(v0, v10 + v22, v11 | 7);
}

void sub_1001AC808()
{
  v2 = *(sub_100011AC0(&qword_10022FD30, &qword_1001E1720) - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v7 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);
  v8 = v0[3];
  v14 = v0[2];
  v9 = v0[4];
  v10 = *(v0 + v3);
  v11 = *(v0 + v4);
  v12 = *(v0 + v5);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_10005B61C;

  JUMPOUT(0x1001A4DF0);
}

uint64_t sub_1001AC9C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100011CF0(v0 + 4);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001ACA10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_1001A5044(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_1001ACADC(uint64_t result, char a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1001ACAF0(result, a2);
  }

  return result;
}

uint64_t sub_1001ACAF0(uint64_t result, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    return sub_100142304(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1001ACB00(uint64_t result, char a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1001ACB14(result, a2);
  }

  return result;
}

uint64_t sub_1001ACB14(uint64_t result, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    return sub_1001428C0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1001ACB24()
{
  v1 = (type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *&v0[v3 + 8];

  v9 = *&v0[v3 + 16];

  v10 = v1[9];
  v11 = sub_1001CFDA0();
  (*(*(v11 - 8) + 8))(&v0[v3 + v10], v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001ACC34(uint64_t a1)
{
  v4 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_1001A4BCC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1001ACD44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001ACDD4;

  return sub_10012A0A4();
}

uint64_t sub_1001ACDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  v12 = *v4;

  v10 = *(v12 + 8);

  return v10(a1, a2, a3, a4);
}

uint64_t sub_1001ACEF8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10005B61C;

  return sub_1001903D8(a1, a2, v6, v7, v8);
}

uint64_t sub_1001ACFBC(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_1001D10E0();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v2[13] = v7;
  v2[5] = v7;
  v2[6] = &off_100221910;
  v8 = sub_10003B47C(v2 + 2);
  sub_1001AFCB4(a1, v8, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  return _swift_task_switch(sub_1001AD0D8, 0, 0);
}

uint64_t sub_1001AD0D8()
{
  v1 = sub_100024DC8(v0 + 2, v0[5])[2];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1001AD174;

  return sub_10013F08C(v2);
}

uint64_t sub_1001AD174()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1001AD4EC;
  }

  else
  {
    v3 = sub_1001AD288;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001AD288()
{
  v0[16] = *(v0[7] + *(*v0[7] + 368));
  sub_10015DAB8();
  sub_100024DC8(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1001AD3D8;
  v2 = v0[12];
  v3 = v0[13];

  return (sub_10013D828)(v2, v3, &off_100221910);
}

uint64_t sub_1001AD3D8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1001AD8D0;
  }

  else
  {
    v3 = sub_1001AD5AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001AD4EC()
{
  v1 = *(v0[7] + *(*v0[7] + 368));
  sub_10015DE10(v0[15]);

  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  sub_100011CF0(v0 + 2);

  v5 = v0[1];

  return v5(0, 128);
}

uint64_t sub_1001AD5AC()
{
  v36 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  sub_1001A50F0(v2, v0[16]);
  v6 = *(*v5 + 392);
  v7 = *(v4 + 16);
  v7(v1, v2, v3);

  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  if (v10)
  {
    v32 = v0[9];
    v13 = v0[7];
    v30 = v0[10];
    v31 = v0[8];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v34 = sub_1001D23A0();
    v35 = v15;
    v38._countAndFlagsBits = 58;
    v38._object = 0xE100000000000000;
    sub_1001D18B0(v38);
    v16 = sub_1000954E0(v34, v35, &v33);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    v7(v30, v12, v31);
    v17 = sub_1001D1830();
    v19 = v18;
    v20 = *(v32 + 8);
    v20(v12, v31);
    v21 = sub_1000954E0(v17, v19, &v33);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %s", v14, 0x16u);
    swift_arrayDestroy();

    v20(v11, v31);
  }

  else
  {
    v22 = v0[8];
    v23 = v0[9];

    v24 = *(v23 + 8);
    v24(v12, v22);
    v24(v11, v22);
  }

  v25 = v0[11];
  v26 = v0[12];
  v27 = v0[10];
  sub_100011CF0(v0 + 2);

  v28 = v0[1];

  return v28(0, 128);
}

uint64_t sub_1001AD8D0()
{
  v1 = *(v0[7] + *(*v0[7] + 368));
  sub_10015DE10(v0[18]);

  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  sub_100011CF0(v0 + 2);

  v5 = v0[1];

  return v5(0, 128);
}

uint64_t sub_1001AD990()
{
  v1 = sub_100011AC0(&qword_10022FDB8, &qword_1001E1888);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001ADA38()
{
  v2 = *(sub_100011AC0(&qword_10022FDB8, &qword_1001E1888) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_100184120(v0 + v3, v4);
}

void sub_1001ADB48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10005B61C;

  JUMPOUT(0x1001A5348);
}

unint64_t sub_1001ADC54(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001ADC70(a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1001ADC70(unint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_1001ADC7C(a1);
  }
}

unint64_t sub_1001ADC7C(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1001ADC8C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001ADCA8(a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1001ADCA8(unint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return sub_1001ADCB4(a1);
  }
}

unint64_t sub_1001ADCB4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1001ADCC4()
{
  v1 = *(type metadata accessor for ValidatedAttestationOrAttestation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v43 = *(v6 + 64);
  v44 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8 = *(*(v44 - 8) + 80);
  v45 = *(*(v44 - 8) + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + v3 + 8);

  v14 = *(v0 + v3 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    if (v14 >> 60 != 15)
    {
      sub_100011E48(v11[2], v14);
    }

    v15 = v11[5];

    v16 = v11[7];

    v17 = v11[9];

    v18 = v11 + 11;
  }

  else
  {
    v42 = v4;
    if (v14 >> 60 != 15)
    {
      sub_100011E48(v11[2], v14);
    }

    v19 = v11[5];

    v20 = v11[7];

    v21 = v11[9];

    v22 = v11[11];

    sub_100011E48(v11[13], v11[14]);
    v23 = type metadata accessor for ValidatedAttestation();
    v24 = v23[7];
    v25 = sub_1001CFD60();
    (*(*(v25 - 8) + 8))(v11 + v24, v25);
    v26 = *(v11 + v23[8] + 8);

    v18 = (v11 + v23[9] + 8);
    v4 = v42;
  }

  v27 = *v18;

  v28 = v2 | v7 | v8;
  v29 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + v7 + 8) & ~v7;
  v31 = (v43 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + v8 + 8) & ~v8;
  v34 = *(v0 + v29);

  (*(v6 + 8))(v0 + v30, v5);
  v35 = *(v0 + v31);

  v36 = *(v0 + v32);

  v37 = *(v0 + v33 + 8);

  v38 = *(v0 + v33 + 16);

  v39 = *(v44 + 28);
  v40 = sub_1001CFDA0();
  (*(*(v40 - 8) + 8))(v0 + v33 + v39, v40);

  return _swift_deallocObject(v0, v33 + v45, v28 | 7);
}

void sub_1001AE028()
{
  v2 = v1;
  v3 = *(type metadata accessor for ValidatedAttestationOrAttestation() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 49) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100011AC0(&qword_10022FDB0, &qword_1001E1880) - 8);
  v6 = (*(v5 + 64) + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v16 = *(v0 + 24);
  v17 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v18 = *(v0 + v4);
  v12 = *(v0 + v6);
  v13 = *(v0 + v7);
  v14 = *(v0 + 48);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10005B61C;

  JUMPOUT(0x1001A5434);
}

uint64_t sub_1001AE258(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_1001A570C(a1, v5);
}

void sub_1001AE310()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v10 = *(v0 + 48);
  v11 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 32);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10005B61C;

  JUMPOUT(0x1001A591CLL);
}

void sub_1001AE44C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v10 = *(v0 + 64);
  v7 = *(v0 + 80);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10005B61C;

  JUMPOUT(0x1001A5B38);
}

uint64_t sub_1001AE55C()
{
  v1 = *(type metadata accessor for ValidatedAttestationOrAttestation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v44 = *(v6 + 64);
  v45 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8 = *(*(v45 - 8) + 80);
  v46 = *(*(v45 - 8) + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + v3 + 8);

  v13 = *(v0 + v3 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    if (v13 >> 60 != 15)
    {
      sub_100011E48(v10[2], v13);
    }

    v14 = v10[5];

    v15 = v10[7];

    v16 = v10[9];

    v17 = v10 + 11;
  }

  else
  {
    v43 = v4;
    if (v13 >> 60 != 15)
    {
      sub_100011E48(v10[2], v13);
    }

    v18 = v10[5];

    v19 = v10[7];

    v20 = v10[9];

    v21 = v10[11];

    sub_100011E48(v10[13], v10[14]);
    v22 = type metadata accessor for ValidatedAttestation();
    v23 = v22[7];
    v24 = sub_1001CFD60();
    (*(*(v24 - 8) + 8))(v10 + v23, v24);
    v25 = *(v10 + v22[8] + 8);

    v17 = (v10 + v22[9] + 8);
    v4 = v43;
  }

  v26 = *v17;

  v27 = v2 | v7 | v8;
  v28 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 9) & ~v7;
  v30 = (((v44 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v8 + v32 + 8) & ~v8;
  v34 = *(v0 + v28);

  (*(v6 + 8))(v0 + v29, v5);
  v35 = *(v0 + v30);

  v36 = *(v0 + v31);

  v37 = *(v0 + v32);

  v38 = *(v0 + v33 + 8);

  v39 = *(v0 + v33 + 16);

  v40 = *(v45 + 28);
  v41 = sub_1001CFDA0();
  (*(*(v41 - 8) + 8))(v0 + v33 + v40, v41);

  return _swift_deallocObject(v0, v33 + v46, v27 | 7);
}

void sub_1001AE8D8()
{
  v1 = *(type metadata accessor for ValidatedAttestationOrAttestation() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_100011AC0(&qword_10022FDB0, &qword_1001E1880) - 8);
  v5 = (*(v4 + 64) + ((v3 + *(v4 + 80) + 9) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v10 = (*(v9 + 80) + v8 + 8) & ~*(v9 + 80);
  v20 = *(v0 + 24);
  v21 = *(v0 + 16);
  v19 = *(v0 + v2);
  v11 = v0 + v3;
  v12 = *(v0 + v5);
  v13 = *(v0 + v6);
  v14 = *(v0 + v7);
  v15 = *(v0 + v8);
  v16 = *(v0 + v3);
  v17 = *(v11 + 8);
  v18 = swift_task_alloc();
  *(v22 + 16) = v18;
  *v18 = v22;
  v18[1] = sub_10005B61C;

  JUMPOUT(0x1001A5F48);
}

uint64_t sub_1001AEB2C()
{
  v1 = *(type metadata accessor for ValidatedAttestationOrAttestation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + v3 + 8);

  v10 = *(v0 + v3 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    if (v10 >> 60 != 15)
    {
      sub_100011E48(v7[2], v10);
    }

    v11 = v7[5];

    v12 = v7[7];

    v13 = v7[9];

    v14 = v7 + 11;
  }

  else
  {
    if (v10 >> 60 != 15)
    {
      sub_100011E48(v7[2], v10);
    }

    v15 = v7[5];

    v16 = v7[7];

    v17 = v7[9];

    v18 = v7[11];

    sub_100011E48(v7[13], v7[14]);
    v19 = type metadata accessor for ValidatedAttestation();
    v20 = v19[7];
    v21 = sub_1001CFD60();
    (*(*(v21 - 8) + 8))(v7 + v20, v21);
    v22 = *(v7 + v19[8] + 8);

    v14 = (v7 + v19[9] + 8);
  }

  v23 = *v14;

  v24 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v24);

  return _swift_deallocObject(v0, v25 + 9, v2 | 7);
}

uint64_t sub_1001AED04(uint64_t a1)
{
  v3 = *(type metadata accessor for ValidatedAttestationOrAttestation() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10005B61C;

  return sub_1001A5D5C(a1, v7, v8, v9, v1 + v4, v10, v11, v12);
}

uint64_t sub_1001AEE68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_1001150B4(a1, v4, v5, v6);
}

uint64_t sub_1001AEF28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_1001A632C(a1, v5);
}

uint64_t sub_1001AEFE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005B61C;

  return sub_1001A6040(v2, v3);
}

uint64_t sub_1001AF08C()
{
  v1 = sub_100011AC0(&qword_10022FE20, &qword_1001E19F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001AF15C()
{
  v2 = *(sub_100011AC0(&qword_10022FE20, &qword_1001E19F0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_10018FBD4(v4, v0 + v3);
}

uint64_t sub_1001AF240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 61;
  if ((a4 >> 61) <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return result;
      }
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
      }

      else if (v4 == 4)
      {
      }

      return result;
    }
  }
}

unint64_t sub_1001AF304()
{
  result = qword_10022FE38;
  if (!qword_10022FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FE38);
  }

  return result;
}

void sub_1001AF358(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100012038(a3, a4);
  }
}

void sub_1001AF3A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100011E48(a3, a4);
  }
}

unint64_t sub_1001AF3F0()
{
  result = qword_10022FE58;
  if (!qword_10022FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FE58);
  }

  return result;
}

unint64_t sub_1001AF444(unint64_t result)
{
  v2 = result >> 62;
  if ((result >> 62) <= 1)
  {
    if (v2)
    {
    }

LABEL_7:
  }

  if (v2 == 2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001AF4B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10005B61C;

  return sub_1001A6554(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1001AF5A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_1001A6608(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1001AF684()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v9 = *(v0 + 48);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10005B61C;

  JUMPOUT(0x1001A66E8);
}

uint64_t sub_1001AF798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005B61C;

  return sub_10015CCF4(a1, v4, v5, v7, v6);
}

uint64_t sub_1001AF874(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
  }

  return result;
}

uint64_t sub_1001AF91C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_1001A632C(a1, v5);
}

uint64_t sub_1001AF9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A67F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AFACC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10005B61C;

  return sub_1001A68C0(a1, a2, v2);
}

uint64_t sub_1001AFB84(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  if (a3)
  {
    return a4(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1001AFB98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AFBF8()
{
  result = qword_10022FEC8;
  if (!qword_10022FEC8)
  {
    sub_100011DF4(&qword_10022FEA0, &qword_1001E1B88);
    sub_1001B0458(&qword_10022FED0, &type metadata accessor for RopesResponseMetadata.ErrorCode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FEC8);
  }

  return result;
}

uint64_t sub_1001AFCB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001AFD1C()
{
  result = qword_10022FEE8;
  if (!qword_10022FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FEE8);
  }

  return result;
}

uint64_t sub_1001AFD70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005B61C;

  return sub_1001A6990(a1, v4, v5, v7, v6);
}

uint64_t sub_1001AFE4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_10019BB9C(a1, v5);
}

uint64_t sub_1001AFF04(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10005B61C;

  return sub_10019BC94(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AFFDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B001C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005B61C;

  return sub_10019C574(a1, v4, v5, v7);
}

uint64_t sub_1001B00DC()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001B01AC(uint64_t a1)
{
  v4 = *(sub_1001D20F0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10005B61C;

  return sub_10019C85C(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1001B02DC()
{
  result = qword_10022FF10;
  if (!qword_10022FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FF10);
  }

  return result;
}

uint64_t sub_1001B0368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B03D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_1001B0458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B04A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001B0520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + 16);
  v5 = a3();
  (*(v4 + 16))(v4, v5);
}

__n128 sub_1001B062C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001B0648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001B0690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B06F4(uint64_t a1)
{
  result = sub_1001CFD60();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_1001D0E60();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1001B0808(uint64_t a1, void *a2)
{
  sub_1001CFC80();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  isa = sub_1001D1CE0().super.super.isa;
  v5 = sub_1001D17A0();
  [a2 setValue:isa forKey:v5];
}

uint64_t *sub_1001B08D8()
{
  v1 = *v0;
  v2 = qword_10022FF70;
  v3 = sub_1001CFD60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  v4 = *(*v0 + 120);
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001B09EC()
{
  sub_1001B08D8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001B0A40(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v7 = sub_1001D02F0();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  __chkstk_darwin(v7, v9);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100011AC0(&unk_1002302E0, &qword_1001E2220);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v42 - v14;
  v16 = sub_1001CFE60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001CFDE0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v5 + 312) = 58;
  *(v5 + 320) = 0xE100000000000000;
  v28 = *(*v5 + 152);
  (*(v23 + 104))(v27, enum case for Calendar.Identifier.gregorian(_:), v22);
  sub_1001CFDF0();
  (*(v23 + 8))(v27, v22);
  sub_1001CFE50();
  result = (*(v17 + 48))(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    sub_1001CFE20();
    v30 = *(*v5 + 160);
    v32 = v42;
    v31 = v43;
    v33 = v44;
    (*(v43 + 104))(v42, enum case for TC2LogCategory.metricReporter(_:), v44);
    sub_1001D08B0();
    (*(v31 + 8))(v32, v33);
    v34 = a4[8];
    v35 = a4[10];
    *(v5 + 264) = a4[9];
    *(v5 + 280) = v35;
    v36 = a4[6];
    *(v5 + 232) = a4[7];
    *(v5 + 248) = v34;
    v37 = a4[2];
    *(v5 + 168) = a4[3];
    v38 = a4[5];
    *(v5 + 184) = a4[4];
    *(v5 + 200) = v38;
    *(v5 + 216) = v36;
    v39 = a4[1];
    *(v5 + 120) = *a4;
    *(v5 + 136) = v39;
    v40 = v46;
    *(v5 + 112) = v45;
    v41 = v47;
    *(v5 + 296) = v40;
    *(v5 + 304) = v41;
    *(v5 + 152) = v37;
    return v5;
  }

  return result;
}