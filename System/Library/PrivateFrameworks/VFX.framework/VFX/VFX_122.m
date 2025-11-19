uint64_t sub_1AFA74218(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v83 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B252C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B24F0(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v55 - v25;
  sub_1AF85B3D4(a2, v77);
  if (!v82)
  {
    goto LABEL_18;
  }

  if (v82 != 1)
  {
    sub_1AFA9DE3C(a1);

    sub_1AF449D40(v77, v76);
    sub_1AF0D5A54(v76, &v70);
    swift_dynamicCast();
    v73 = v11;
    v74 = &off_1F250F310;
    v44 = sub_1AF585714(&v70);
    sub_1AFA9DE0C(a1, v44);
    v75 = 1;
    sub_1AF8259D0(&v70, v66, v67);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
    goto LABEL_18;
  }

  v56 = v22;
  v57 = v14;
  v58 = a2;
  v59 = v7;
  v61 = a1;
  sub_1AFA9DE3C(a1);
  v27 = v78;
  v62 = v79;
  v60 = v80;
  sub_1AF449D40(v77, v76);
  sub_1AF449D40(&v81, v69);
  v28 = MEMORY[0x1E69E7CC0];
  *v26 = MEMORY[0x1E69E7CC0];
  *(v26 + 1) = 0;
  *(v26 + 2) = 0xE000000000000000;
  v26[24] = 3;
  *(v26 + 4) = &unk_1F2503080;
  *(v26 + 20) = 0;
  *(v26 + 6) = 0;
  *(v26 + 7) = 0;
  v29 = *(v15 + 44);
  v30 = type metadata accessor for ScriptIndex();
  (*(*(v30 - 8) + 56))(&v26[v29], 1, 1, v30);
  v31 = &v26[v11[9]];
  *v31 = 0;
  v31[8] = 1;
  v26[v11[10]] = 0;
  *&v26[v11[11]] = 0;
  v32 = &v26[v11[12]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  *&v26[v11[13]] = v28;
  v33 = v19[9];
  v34 = v19[10];
  v35 = v19[11];
  *&v26[v19[12]] = 0;
  v26[v19[13]] = 0;
  v36 = &v26[v19[14]];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v26[v19[15]];
  *v37 = 0;
  v37[1] = 0;
  sub_1AF0D5A54(v76, &v70);
  sub_1AFA9DE3C(v26);
  swift_dynamicCast();
  *&v26[v33] = v27;
  *&v26[v35] = v60;
  *&v26[v34] = v62;
  v38 = *v37;
  v62 = v27;

  sub_1AF919DAC(v38);
  sub_1AF0D5A54(v69, &v70);
  swift_dynamicCast();
  sub_1AFA9DE0C(v26, v61);
  if (v64)
  {
    v39 = v65;
    v40 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v41 = v67;
    v42 = v57;
    if (v40)
    {
      v43 = *(v40 + 80);
      swift_unknownObjectWeakLoadStrong();
      v40 = *(v40 + 56);
    }

    else
    {
      v43 = 0;
    }

    v64 = v43;
    v72 = 0;
    swift_unknownObjectUnownedInit();
    v70 = v39;
    v72 = v40;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v73) = v43;
    v47 = v56;
    sub_1AFA9E3C8(v26, v56, sub_1AF5B24F0);
    v48 = v63;
    sub_1AFA9E3C8(v47, v63, type metadata accessor for GraphScript);
    sub_1AFA9E8FC(v47, sub_1AF5B24F0);
    sub_1AF5AE678(v48, v41);
    sub_1AFA9E8FC(v48, type metadata accessor for GraphScript);
    sub_1AFA9DE0C(v26, v42);
    sub_1AF5AE808(v42, v41);
    sub_1AFA9DE3C(v42);
    sub_1AFA9E3C8(v26, v47, sub_1AF5B24F0);
    sub_1AF5AE998(v47, v41);
    v45 = v65;
    sub_1AFA9E8FC(v47, sub_1AF5B24F0);
    sub_1AF579490(&v70);
    v46 = v66;
    if (v64)
    {
      v49 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v49 ^ 1);
    }
  }

  else
  {
    v41 = v67;
    v45 = v65;
    sub_1AFBFDED4(v26, v67);
    v46 = v66;
  }

  v73 = v19;
  v74 = &off_1F2558F90;
  v50 = sub_1AF585714(&v70);
  sub_1AFA9E3C8(v26, v50, sub_1AF5B24F0);
  v75 = 0;
  sub_1AF8259D0(&v70, v46, v41);
  v51 = sub_1AF3CB520(v41);
  if (v51)
  {
    sub_1AFD08440(v45, v51, v52);
  }

  sub_1AF0D5A54(v69, &v70);
  if (swift_dynamicCast())
  {
    v53 = v68;

    v70 = MEMORY[0x1E69E7CC0];
    v71 = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C(v45, v53);

    sub_1AFBFE174(v70, v71, v41);
LABEL_16:

    goto LABEL_17;
  }

  sub_1AF0D5A54(v69, &v70);
  if (swift_dynamicCast())
  {
    goto LABEL_16;
  }

LABEL_17:
  a2 = v58;
  sub_1AF678B44(v41);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v69);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
  sub_1AFA9E8FC(v26, sub_1AF5B24F0);
LABEL_18:
  result = sub_1AF85B3D4(a2, v77);
  if (v82)
  {
    return sub_1AFA9C0C8(v77);
  }

  return result;
}

uint64_t sub_1AFA74A24(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v41 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v42 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v43);
        if (v44 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for GraphScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B252C(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v43);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v42 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA74218(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF45730);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v43);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for GraphScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA74E78(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v492) = a6;
  v490 = a2;
  v491 = a5;
  v486 = a4;
  v497 = 0;
  v506 = type metadata accessor for GraphScript(0);
  v487 = *(v506 - 8);
  MEMORY[0x1EEE9AC00](v506, v13);
  v483 = v14;
  v499 = &v462 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v466 = &v462 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v479 = &v462 - v20;
  v21 = sub_1AFDFC4F8();
  v482 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v488 = &v462 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v485 = &v462 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v494 = &v462 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = *(a1 + 16);

  v508 = a8;

  v489 = a9;

  dispatch_group_enter(a3);
  v32 = *(a7 + 184);
  v592[0] = *(a7 + 168);
  v592[1] = v32;
  v593 = *(a7 + 25);
  v493 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v478 = v31;
  sub_1AF6B06C0(v31, v592, 0x200000000, v551);
  v517 = a1;
  v518 = a3;
  v507 = v30;
  v500 = a7;
  v505 = v21;
  if (*&v551[0])
  {
    if (v555 < 1)
    {
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 0;
    }

    else if (*(&v553 + 1))
    {
      v33 = *(&v552 + 1);
      v34 = *(&v554 + 1);
      v35 = *(&v552 + 1) + 48 * *(&v553 + 1);
      sub_1AF5B252C(0);
      v511 = v36;
      v531 = v552;
      v532 = v553;
      v533 = v554;
      v534 = v555;
      v529 = v551[0];
      v530 = v551[1];
      sub_1AF5DD298(&v529, &v598);
      v515 = v34;
      v496 = v35;
      do
      {
        v37 = *(v33 + 40);
        v38 = *(v37 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v38);
        os_unfair_lock_lock(*(v37 + 344));
        v39 = *(v37 + 24);

        v600 = 0;
        v598 = 0u;
        v599 = 0u;
        memset(v574, 0, 40);
        v40 = sub_1AF65A4B4(v39, v511, &off_1F250F310, 0, 0, &v598, v574);

        sub_1AFA9E8FC(v574, sub_1AF5C4448);
        sub_1AFA9E8FC(&v598, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v40);
        }

        else
        {
          v510 = v33;
          v42 = *(v37 + 232);
          v41 = *(v37 + 240);
          v43 = *(v37 + 120);
          v501 = *(v37 + 28);
          v44 = *(v37 + 32);
          v516 = *(v37 + 16);
          v45 = *(v37 + 40);
          v46 = v45[200];
          v47 = *(v516[11] + 8 * v40 + 32);

          if ((v46 & 1) != 0 || *(v47 + 200) == 1)
          {
            *(v516 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v45 = *(v37 + 40);
          }

          v48 = v45[212];
          LODWORD(v509) = v43;
          LODWORD(v502) = v40;
          if (v48)
          {
            LODWORD(v504) = 0;
          }

          else
          {
            LODWORD(v504) = *(v47 + 212);
          }

          LODWORD(v503) = v45[208];
          v514 = *(v37 + 128);
          v49 = *(v37 + 256);
          v50 = v41;
          v51 = v497;
          sub_1AF5B4FCC(v45, v42, v50, 0, v37);
          v497 = v51;
          v512 = *(v37 + 256);
          v513 = v49;
          v52 = v512 - v49;
          if (v512 == v49)
          {
            v53 = 0;
          }

          else
          {
            v53 = v49;
          }

          *&v574[0] = v53;
          v54 = *(*(v37 + 40) + 24);
          v55 = *(v54 + 16);
          if (v55)
          {
            LODWORD(v498) = v44;
            v56 = v54 + 32;

            v57 = 0;
            v58 = v47;
            do
            {
              v59 = v56 + 40 * v57;
              if ((*(v59 + 32) & 1) == 0)
              {
                v60 = *(v58 + 24);
                v61 = *(v60 + 16);
                if (v61)
                {
                  v62 = (v60 + 32);
                  while (*v62 != *v59)
                  {
                    v62 += 5;
                    if (!--v61)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  sub_1AF640BC8();
                  v58 = v47;
                }
              }

              ++v57;
            }

            while (v57 != v55);

            LOBYTE(v44) = v498;
          }

          if (*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v37 + 72) * v52);
          }

          if (*(v37 + 184))
          {
            v63 = 0;
          }

          else
          {
            v63 = *(v37 + 168);
          }

          *&v569[0] = 0;

          DWORD2(v599) = -1;
          v600 = v513;
          v601 = v512;
          v602 = v513;
          v603 = v512;
          *&v598 = v513;
          *(&v598 + 1) = v512;
          *&v599 = v63;
          if (v52 < 1)
          {
          }

          else
          {
            *&v498 = &v462;

            v64 = v47;

            v65 = v509;
            v66 = v504;
            v67 = v501;
            v68 = v502;
            v69 = v503;
            v70 = v514;
            do
            {

              LOBYTE(v561) = v44;
              LOBYTE(v461) = v69;
              sub_1AF626158(v68, v67 | (v44 << 32), v65, v516, &v598, v67 | (v44 << 32), v37, v64, 0, 0, 0, 0, v574, v70, v569, v461, v68, v66, v515);
            }

            while ((*(&v598 + 1) - v598) > 0);
          }

          v71 = *(v37 + 192);
          v30 = v507;
          v33 = v510;
          if (v71)
          {
            v72 = *(v37 + 208);
            v73 = v513;
            v74 = v512;
            sub_1AF75D364(v513, v512, v71);
            sub_1AF75D364(v73, v74, v72);
          }

          v35 = v496;
        }

        v33 += 48;
        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v37 + 376));
      }

      while (v33 != v35);
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
      a7 = v500;
    }

    else
    {
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
    }
  }

  else
  {
    v75 = 0;
  }

  v76 = a7[4];
  v590[0] = a7[3];
  v590[1] = v76;
  v591 = *(a7 + 10);
  sub_1AF6B06C0(v478, v590, 0x200000000, v556);
  if (*&v556[0])
  {
    if (v560 >= 1 && *(&v558 + 1))
    {
      v77 = *(&v557 + 1);
      v78 = *(&v559 + 1);
      v79 = *(&v557 + 1) + 48 * *(&v558 + 1);
      sub_1AF5B24F0(0);
      v511 = v80;
      v531 = v557;
      v532 = v558;
      v533 = v559;
      v534 = v560;
      v529 = v556[0];
      v530 = v556[1];
      sub_1AF5DD298(&v529, &v598);
      v515 = v78;
      v496 = v79;
      do
      {
        v81 = *(v77 + 40);
        v82 = *(v81 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v82);
        os_unfair_lock_lock(*(v81 + 344));
        v83 = *(v81 + 24);

        v600 = 0;
        v598 = 0u;
        v599 = 0u;
        memset(v574, 0, 40);
        v84 = sub_1AF65A4B4(v83, 0, 0, v511, &off_1F2558F90, &v598, v574);

        sub_1AFA9E8FC(v574, sub_1AF5C4448);
        sub_1AFA9E8FC(&v598, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v84);
        }

        else
        {
          v510 = v77;
          v86 = *(v81 + 232);
          v85 = *(v81 + 240);
          v87 = *(v81 + 120);
          v501 = *(v81 + 28);
          v88 = *(v81 + 32);
          v516 = *(v81 + 16);
          v89 = *(v81 + 40);
          v90 = v89[200];
          v91 = *(v516[11] + 8 * v84 + 32);

          if ((v90 & 1) != 0 || *(v91 + 200) == 1)
          {
            *(v516 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v89 = *(v81 + 40);
          }

          v92 = v89[212];
          LODWORD(v509) = v87;
          LODWORD(v502) = v84;
          if (v92)
          {
            LODWORD(v504) = 0;
          }

          else
          {
            LODWORD(v504) = *(v91 + 212);
          }

          LODWORD(v503) = v89[208];
          v514 = *(v81 + 128);
          v93 = *(v81 + 256);
          v94 = v85;
          v95 = v497;
          sub_1AF5B4FCC(v89, v86, v94, 0, v81);
          v497 = v95;
          v512 = *(v81 + 256);
          v513 = v93;
          v96 = v512 - v93;
          if (v512 == v93)
          {
            v97 = 0;
          }

          else
          {
            v97 = v93;
          }

          *&v574[0] = v97;
          v98 = *(*(v81 + 40) + 24);
          v99 = *(v98 + 16);
          if (v99)
          {
            LODWORD(v498) = v88;
            v100 = v98 + 32;

            v101 = 0;
            v102 = v91;
            do
            {
              v103 = v100 + 40 * v101;
              if ((*(v103 + 32) & 1) == 0)
              {
                v104 = *(v102 + 24);
                v105 = *(v104 + 16);
                if (v105)
                {
                  v106 = (v104 + 32);
                  while (*v106 != *v103)
                  {
                    v106 += 5;
                    if (!--v105)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                else
                {
LABEL_63:
                  sub_1AF640BC8();
                  v102 = v91;
                }
              }

              ++v101;
            }

            while (v101 != v99);

            LOBYTE(v88) = v498;
          }

          if (*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v81 + 72) * v96);
          }

          if (*(v81 + 184))
          {
            v107 = 0;
          }

          else
          {
            v107 = *(v81 + 168);
          }

          *&v569[0] = 0;

          DWORD2(v599) = -1;
          v600 = v513;
          v601 = v512;
          v602 = v513;
          v603 = v512;
          *&v598 = v513;
          *(&v598 + 1) = v512;
          *&v599 = v107;
          if (v96 < 1)
          {
          }

          else
          {
            *&v498 = &v462;

            v108 = v91;

            v109 = v509;
            v110 = v504;
            v111 = v501;
            v112 = v502;
            v113 = v503;
            v114 = v514;
            do
            {

              LOBYTE(v561) = v88;
              LOBYTE(v461) = v113;
              sub_1AF626158(v112, v111 | (v88 << 32), v109, v516, &v598, v111 | (v88 << 32), v81, v108, 0, 0, 0, 0, v574, v114, v569, v461, v112, v110, v515);
            }

            while ((*(&v598 + 1) - v598) > 0);
          }

          v115 = *(v81 + 192);
          v30 = v507;
          v77 = v510;
          if (v115)
          {
            v116 = *(v81 + 208);
            v117 = v513;
            v118 = v512;
            sub_1AF75D364(v513, v512, v115);
            sub_1AF75D364(v117, v118, v116);
          }

          v79 = v496;
        }

        v77 += 48;
        os_unfair_lock_unlock(*(v81 + 344));
        os_unfair_lock_unlock(*(v81 + 376));
      }

      while (v77 != v79);
      sub_1AFA9BF94(v556, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v556, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
      a7 = v500;
    }

    else
    {
      sub_1AFA9BF94(v556, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
    }
  }

  LODWORD(v496) = v75;
  v119 = *(a7 + 104);
  v588[0] = *(a7 + 88);
  v588[1] = v119;
  v589 = *(a7 + 15);
  sub_1AF6B06C0(v478, v588, 0x200000000, &v561);
  if (v561)
  {
    v511 = v568;
    v120 = v497;
    if (v568 >= 1)
    {
      v510 = v565;
      if (v565)
      {
        v121 = 0;
        v509 = v564;
        v504 = v566;
        v122 = *(&v566->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v515 = v567[4];
        v516 = v567;
        v578 = v561;
        v579 = v562;
        v580 = v563;
        LODWORD(v503) = v122;
        do
        {
          v497 = v120;
          v514 = v121;
          v123 = &v509[12 * v121];
          v124 = *v123;
          v125 = v123[1];
          v126 = v123[2];
          v127 = *(v123 + 2);
          v128 = *(v123 + 3);
          v130 = *(v123 + 4);
          v129 = *(v123 + 5);
          if (v122)
          {
            v131 = *(v129 + 376);

            os_unfair_lock_lock(v131);
            os_unfair_lock_lock(*(v129 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v515);
          v132 = v516;
          v133 = *(v516 + 4);
          v596[0] = *(v516 + 3);
          v596[1] = v133;
          v597 = v516[10];
          v134 = *(*(*(*(v129 + 40) + 16) + 32) + 16) + 1;
          v132[6] = ecs_stack_allocator_allocate(v516[4], 48 * v134, 8);
          v132[7] = v134;
          v132[9] = 0;
          v132[10] = 0;
          v132[8] = 0;
          LOBYTE(v529) = 1;
          *&v598 = v504;
          *(&v598 + 1) = v129;
          *&v599 = v132;
          *(&v599 + 1) = v126;
          v600 = (v125 - v124 + v126);
          v601 = v511;
          v602 = v124;
          v603 = v125;
          v604 = 0;
          v605 = 0;
          v606 = 1;
          v607 = v127;
          v608 = v128;
          v609 = v130;
          v135 = v497;
          v136 = sub_1AF706F30(v129, &v598);
          v137 = v607;
          v513 = v135;
          if (v607)
          {
            v138 = v609;
            if (v609)
            {
              v512 = v599;
              v139 = (v136 + 8);
              do
              {
                v137 += 8;
                v140 = *(v139 - 1);
                v141 = *v139;

                sub_1AFD08440(v142, v140, v141);

                sub_1AF6FD09C(0);
                v144 = *(*(v129 + 40) + 16);
                v145 = *(v144 + 128);
                if (*(v145 + 16))
                {
                  v146 = v143;
                  v147 = sub_1AF449CB8(v143);
                  if ((v148 & 1) != 0 && *(*(v144 + 24) + 16 * *(*(v145 + 56) + 8 * v147) + 32) == v146)
                  {
                    *&v529 = v146;
                    *(&v529 + 1) = &off_1F2559388;
                    BYTE8(v531) = 1;
                    MEMORY[0x1EEE9AC00](v147, v148);
                    v461 = v129;

                    sub_1AF63023C(0, v129, sub_1AFA9EC24);

                    sub_1AF635250(&v529);
                  }
                }

                v139 += 2;
                --v138;
              }

              while (v138);
            }
          }

          else
          {
            v149 = v602;
            v150 = v603;
            if (v602 != v603)
            {
              v151 = (v136 + 16 * v602 + 8);
              do
              {
                v152 = *(v151 - 1);
                v153 = *v151;

                sub_1AFD08440(v154, v152, v153);

                sub_1AF6FD09C(0);
                v156 = *(*(v129 + 40) + 16);
                v157 = *(v156 + 128);
                if (*(v157 + 16))
                {
                  v158 = v155;
                  v159 = sub_1AF449CB8(v155);
                  if ((v160 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v159) + 32) == v158)
                  {
                    *&v529 = v158;
                    *(&v529 + 1) = &off_1F2559388;
                    BYTE8(v531) = 1;
                    MEMORY[0x1EEE9AC00](v159, v160);
                    v461 = v129;

                    sub_1AF63023C(0, v129, sub_1AFA9EC24);

                    sub_1AF635250(&v529);
                  }
                }

                ++v149;
                v151 += 2;
              }

              while (v150 != v149);
            }
          }

          v120 = v513;
          sub_1AF630994(v516, &v578, v596);
          sub_1AF62D29C(v129);
          ecs_stack_allocator_pop_snapshot(v515);
          v122 = v503;
          if (v503)
          {
            os_unfair_lock_unlock(*(v129 + 344));
            os_unfair_lock_unlock(*(v129 + 376));
          }

          v121 = v514 + 1;
        }

        while (v514 + 1 != v510);
      }
    }

    sub_1AFA9BF94(&v561, &qword_1ED725EA0, &type metadata for QueryResult);
    v30 = v507;
  }

  else
  {
    v120 = v497;
  }

  v161 = v500[9];
  v586[0] = v500[8];
  v586[1] = v161;
  v587 = *(v500 + 20);
  sub_1AF6B06C0(v478, v586, 0x200000000, v569);
  if (*&v569[0])
  {
    v162 = v573;
    if (v573 >= 1 && *(&v571 + 1))
    {
      v484 = v573;
      v163 = *(&v570 + 1);
      v515 = *(&v572 + 1);
      v164 = *(&v570 + 1) + 48 * *(&v571 + 1);
      sub_1AF5B252C(0);
      v511 = v165;
      v531 = v570;
      v532 = v571;
      v533 = v572;
      v534 = v573;
      v529 = v569[0];
      v530 = v569[1];
      sub_1AF5DD298(&v529, v574);
      v495 = v164;
      do
      {
        v166 = *(v163 + 40);
        v167 = *(v166 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v167);
        os_unfair_lock_lock(*(v166 + 344));
        v168 = *(v166 + 24);

        memset(v574, 0, 40);
        *&v547 = 0;
        v546 = 0u;
        v545 = 0u;
        v169 = sub_1AF65A4B4(v168, 0, 0, v511, &off_1F250F310, v574, &v545);

        sub_1AFA9E8FC(&v545, sub_1AF5C4448);
        sub_1AFA9E8FC(v574, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v169);
        }

        else
        {
          v510 = v163;
          v497 = v120;
          v171 = *(v166 + 232);
          v170 = *(v166 + 240);
          LODWORD(v509) = *(v166 + 120);
          v502 = *(v166 + 28);
          v172 = *(v166 + 32);
          v173 = *(v166 + 16);
          v174 = *(v166 + 40);
          v175 = v174[200];

          if ((v175 & 1) != 0 || *(v176 + 200) == 1)
          {
            *(v173 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v174 = *(v166 + 40);
          }

          v177 = v174[212];
          v178 = v176;
          v516 = v173;
          LODWORD(v503) = v169;
          if (v177)
          {
            LODWORD(v504) = 0;
          }

          else
          {
            LODWORD(v504) = *(v176 + 212);
          }

          v179 = v174[208];
          v514 = *(v166 + 128);
          v180 = *(v166 + 256);
          v181 = v170;
          v182 = v497;
          sub_1AF5B4FCC(v174, v171, v181, 0, v166);
          v497 = v182;
          v512 = *(v166 + 256);
          v513 = v180;
          v183 = v512 - v180;
          if (v512 == v180)
          {
            v184 = 0;
          }

          else
          {
            v184 = v180;
          }

          *&v545 = v184;
          v185 = *(*(v166 + 40) + 24);
          v186 = *(v185 + 16);
          if (v186)
          {
            LODWORD(v498) = v172;
            LODWORD(v501) = v179;
            v187 = v185 + 32;

            v188 = 0;
            v189 = v183;
            v190 = v178;
            do
            {
              v191 = v187 + 40 * v188;
              if ((*(v191 + 32) & 1) == 0)
              {
                v192 = *(v190 + 24);
                v193 = *(v192 + 16);
                if (v193)
                {
                  v194 = (v192 + 32);
                  while (*v194 != *v191)
                  {
                    v194 += 5;
                    if (!--v193)
                    {
                      goto LABEL_132;
                    }
                  }
                }

                else
                {
LABEL_132:
                  sub_1AF640BC8();
                  v190 = v178;
                  v189 = v183;
                }
              }

              ++v188;
            }

            while (v188 != v186);
            v183 = v189;

            LOBYTE(v179) = v501;
            LOBYTE(v172) = v498;
          }

          if (*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v166 + 72) * v183);
          }

          if (*(v166 + 184))
          {
            v195 = 0;
          }

          else
          {
            v195 = *(v166 + 168);
          }

          *&v524 = 0;

          *&v574[1] = v195;
          DWORD2(v574[1]) = -1;
          *&v574[2] = v513;
          *(&v574[2] + 1) = v512;
          *&v575 = v513;
          *(&v575 + 1) = v512;
          *&v574[0] = v513;
          *(&v574[0] + 1) = v512;
          if (v183 < 1)
          {
          }

          else
          {
            v501 = &v462;

            v196 = v178;

            v197 = v509;
            v198 = v502;
            v199 = v503;
            v200 = v179;
            v201 = v504;
            v202 = v514;
            do
            {

              LOBYTE(v519) = v172;
              LOBYTE(v461) = v200;
              sub_1AF626158(v199, v198 | (v172 << 32), v197, v516, v574, v198 | (v172 << 32), v166, v196, 0, 0, 0, 0, &v545, v202, &v524, v461, v199, v201, v515);
            }

            while ((*(&v574[0] + 1) - *&v574[0]) > 0);
          }

          v203 = *(v166 + 192);
          v30 = v507;
          v120 = v497;
          if (v203)
          {
            v204 = *(v166 + 208);
            v206 = v512;
            v205 = v513;
            sub_1AF75D364(v513, v512, v203);
            sub_1AF75D364(v205, v206, v204);
          }

          v163 = v510;
          v164 = v495;
        }

        v163 += 48;
        os_unfair_lock_unlock(*(v166 + 344));
        os_unfair_lock_unlock(*(v166 + 376));
      }

      while (v163 != v164);
      sub_1AFA9BF94(v569, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v569, &qword_1ED725EA0, &type metadata for QueryResult);
      v162 = v484;
    }

    else
    {
      sub_1AFA9BF94(v569, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v207 = v496;
    if (v162 > 0)
    {
      v207 = 1;
    }

    LODWORD(v496) = v207;
  }

  if (v490)
  {
    sub_1AFA61FF8(v517, v490, sub_1AFD2C06C);
    LODWORD(v496) = v496 | v208;
  }

  if (v491)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v210 = v517;
  v211 = sub_1AFA74A24(v517, v492 & 1);

  v212 = *(v210 + 16);

  v497 = v120;
  if (v212)
  {
    v484 = sub_1AF8BB88C();
    v495 = v213;
  }

  else
  {
    v484 = 0;
    v495 = 0xE000000000000000;
  }

  v214 = v496 | v211;
  v215 = v500[14];
  v584[0] = v500[13];
  v584[1] = v215;
  v585 = *(v500 + 30);
  sub_1AF6B06C0(v478, v584, 0x200000000, v574);
  v216 = *&v574[0];
  if (!*&v574[0])
  {

    if ((v214 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  if (v577 <= 0 || (v465 = *(&v575 + 1)) == 0)
  {

    sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v214 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  v464 = *(&v574[2] + 1);
  v471 = *(&v576 + 1);
  v470 = *(*(&v576 + 1) + 32);
  v469 = *(v576 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B252C(0);
  v218 = v217;
  v581 = v216;
  v582 = *(v574 + 8);
  v583 = *(&v574[1] + 8);
  v501 = (v478 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v547 = v574[2];
  v548 = v575;
  v549 = v576;
  v550 = v577;
  v545 = v574[0];
  v546 = v574[1];
  sub_1AF5DD298(&v545, &v529);
  v219 = 0;
  v509 = v218;
  v463 = v218 - 8;
  v496 = (v482 + 2);
  v476 = (v482 + 4);
  v467 = (v482 + 6);
  v483 += 7;
  v473 = &v525;
  v481 = (v482 + 7);
  ++v482;
  v472 = &v530;
  v474 = xmmword_1AFE21110;
  v498 = xmmword_1AFE72020;
LABEL_172:
  v468 = v219;
  v220 = (v464 + 48 * v219);
  v221 = *v220;
  v503 = v220[1];
  v222 = *(v220 + 3);
  v511 = *(v220 + 2);
  v223 = *(v220 + 4);
  v224 = *(v220 + 5);
  if (v469)
  {
    v225 = *(v224 + 376);

    os_unfair_lock_lock(v225);
    os_unfair_lock_lock(*(v224 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v470);
  v226 = v471;
  v227 = *(v471 + 4);
  v594[0] = *(v471 + 3);
  v594[1] = v227;
  v595 = v471[10];
  v228 = *(*(*(*(v224 + 40) + 16) + 32) + 16) + 1;
  v226[6] = ecs_stack_allocator_allocate(v471[4], 48 * v228, 8);
  v226[7] = v228;
  v226[9] = 0;
  v226[10] = 0;
  v226[8] = 0;
  v229 = v511;
  v515 = sub_1AF64B110(v506, &off_1F255B548, v511, v222, v223, v226);
  v516 = sub_1AF64B110(v509, &off_1F250F310, v229, v222, v223, v226);
  if (v229)
  {
    if (!v223)
    {
      goto LABEL_315;
    }

    v503 = *(v487 + 72);
    v502 = *(*v463 + 72);
    v480 = v224;
    while (1)
    {
      v232 = *v511;
      v510 = v223;
      ++v511;

      if (*(v224 + 184))
      {
        goto LABEL_324;
      }

      v234 = *(*(v224 + 168) + 4 * v232);
      v235 = *(*(v233 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v234 + 8);

      v236 = v234 == -1 && v235 == 0;
      if (v236 || (v234 & 0x80000000) != 0 || v501[1] <= v234)
      {
        break;
      }

      v237 = *v501 + 12 * v234;
      if (v235 != -1 && *(v237 + 8) != v235)
      {
        break;
      }

      v239 = *(*(*(v478 + 88) + 8 * *(v237 + 6) + 32) + 16);
      v240 = *(v239 + 128);
      if (!*(v240 + 16))
      {
        break;
      }

      v241 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v242 & 1) == 0 || *(*(v239 + 24) + 16 * *(*(v240 + 56) + 8 * v241) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_181:
      v516 = (v516 + v502);
      v515 += v503;
      v223 = v510 - 1;
      if (v510 == 1)
      {
        goto LABEL_314;
      }
    }

    dispatch_group_enter(v518);
    v243 = *(v224 + 64);
    v244 = *(v224 + 80);
    v539 = *(v224 + 112);
    v246 = *(v224 + 80);
    v245 = *(v224 + 96);
    v537 = v244;
    v538 = v245;
    v247 = *(v224 + 64);
    v535 = *(v224 + 48);
    v536 = v243;
    v248 = *(v224 + 96);
    v531 = v246;
    v532 = v248;
    LOBYTE(v533) = *(v224 + 112);
    v529 = *(v224 + 48);
    v530 = v247;
    v249 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v251 = v250;
    v542 = v531;
    v543 = v532;
    v544 = v533;
    v541 = v530;
    v540 = v529;

    sub_1AF5DD36C(&v535, &v524);
    sub_1AF5DD3C8(&v540);
    if (v251)
    {

      v513 = 0;
      v252 = 0;
      v253 = 0;
    }

    else
    {
      v254 = *(v224 + 128);

      v255 = (v254 + v249 + 24 * v232);
      v513 = *v255;
      v252 = *(v255 + 1);
      v253 = *(v255 + 2);
    }

    if (*(v224 + 184))
    {
      goto LABEL_324;
    }

    v512 = v252;
    v257 = *(*(v224 + 168) + 4 * v232);
    v258 = *(*(v256 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v257 + 8);

    v259 = swift_allocObject();
    v259[2] = sub_1AFA9EC2C;
    v259[3] = v30;
    v514 = v259;
    v260 = v517;
    v259[4] = v518;
    v261 = *(v260 + 16);

    if (v261)
    {
      v262 = *(v261 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v263 = v518;

      if ((v262 & 1) == 0 || *(v517 + 3048) != 1)
      {
        sub_1AF81F330();
        v264 = swift_allocError();
        v265 = v264;
        *v266 = v498;
        if (!*(v508 + 16))
        {
          v267 = v489;
          v268 = *(v489 + 72);
          v269 = v264;
          os_unfair_lock_lock(v268);
          v270 = *(v508 + 16);
          *(v508 + 16) = v265;
          v271 = v265;

          os_unfair_lock_unlock(*(v267 + 72));
        }

        dispatch_group_leave(v263);

        goto LABEL_207;
      }
    }

    else
    {
      swift_retain_n();
      v272 = v518;
    }

    v273 = sub_1AFAA6314();
    v274 = v517;
    v275 = v516 + v509[9];
    v276 = *v275;
    LOBYTE(v275) = v275[8];
    v504 = v273;
    v277 = v275 | (v273 != v276);
    os_unfair_lock_lock(*(v517 + 72));
    v278 = *(v274 + 80);
    if (*(v278 + 16) && (v279 = sub_1AF41ACD4(v506, v257 | (v258 << 32)), (v280 & 1) != 0))
    {
      sub_1AF85B3D4(*(v278 + 56) + 96 * v279, &v529);
      if (BYTE8(v534) != 255)
      {
        sub_1AF85B3D4(&v529, &v524);
        sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v523 + 9) = *(v528 + 9);
        v521 = v526;
        v522 = v527;
        v523[0] = v528[0];
        v519 = v524;
        v520 = v525;
        if (!BYTE8(v528[1]))
        {
          v326 = v519;
          v327 = (v519 != v504) | v277;
          os_unfair_lock_unlock(*(v517 + 72));
          if (v327)
          {
            if (v326 == v504)
            {
              v263 = v518;
              dispatch_group_leave(v518);
LABEL_207:

              v30 = v507;
LABEL_179:

              v231 = v512;
              v230 = v513;
LABEL_180:
              sub_1AF487074(v230, v231);
              goto LABEL_181;
            }

LABEL_217:
            v491 = v257;
            v493 = v253;
            v281 = v509;
            v492 = swift_allocBox();
            v283 = v282;
            sub_1AFA5C124(v282);
            v284 = v283 + *(v281 + 36);
            v285 = v504;
            *v284 = v504;
            *(v284 + 8) = 0;
            sub_1AFA9DE54(v515, v283, type metadata accessor for GraphScript);
            sub_1AFA9DE54(v283, v516, sub_1AF5B252C);
            v286 = v517;
            os_unfair_lock_lock(*(v517 + 72));
            *&v529 = v285;
            BYTE8(v534) = 0;
            sub_1AF825824(&v529, v506, v257 | (v258 << 32));
            os_unfair_lock_unlock(*(v286 + 72));
            v287 = *(v286 + 16);

            if (v287)
            {
              v288 = v479;
              v289 = v505;
              (*v496)(v479, v287 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v505);

              (*v481)(v288, 0, 1, v289);
              v290 = v494;
              (*v476)(v494, v288, v289);
            }

            else
            {
              v291 = v479;
              (*v481)(v479, 1, 1, v505);
              v290 = v494;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v292 = sub_1AFDFC538();
              sub_1AF477C68(v292, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v467)(v291, 1, v505) != 1)
              {
                sub_1AFA9C470(v291, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v490 = v258;
            v293 = sub_1AFDFC538();
            sub_1AF477C68(v293, qword_1ED73B608);
            v294 = sub_1AFDFC528();
            v295 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v296 = swift_slowAlloc();
              *v296 = 0;
              v297 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v294, v295, v297, "buildScript", "", v296, 2u);
              MEMORY[0x1B271DEA0](v296, -1, -1);
            }

            (*v496)(v485, v290, v505);
            sub_1AFDFC578();
            swift_allocObject();
            v298 = sub_1AFDFC568();
            sub_1AFA9E3C8(v515, v499, type metadata accessor for GraphScript);
            v299 = (*(v487 + 80) + 400) & ~*(v487 + 80);
            v300 = (v483 + v299) & 0xFFFFFFFFFFFFFFF8;
            v301 = (v300 + 23) & 0xFFFFFFFFFFFFFFF8;
            v302 = (v301 + 27) & 0xFFFFFFFFFFFFFFF8;
            v303 = swift_allocObject();
            v304 = v506;
            *(v303 + 16) = v517;
            *(v303 + 24) = v304;
            v306 = v490;
            v305 = v491;
            *(v303 + 32) = v491;
            *(v303 + 36) = v306;
            *(v303 + 40) = v504;
            *(v303 + 48) = sub_1AFA9EC20;
            *(v303 + 56) = v514;
            *(v303 + 64) = v298;
            v504 = v298;
            memcpy((v303 + 72), v500, 0x148uLL);
            sub_1AFA9E320(v499, v303 + v299, type metadata accessor for GraphScript);
            v307 = (v303 + v300);
            v308 = v495;
            *v307 = v484;
            v307[1] = v308;
            v309 = (v303 + v301);
            v310 = v512;
            v311 = v513;
            *v309 = v513;
            v309[1] = v310;
            v309[2] = v493;
            v312 = (v303 + v302);
            *v312 = v305;
            v312[1] = v306;
            *(v303 + ((v302 + 15) & 0xFFFFFFFFFFFFFFF8)) = v492;
            if ((v486 & 1) == 0)
            {
              v490 = *(v517 + 32);
              v320 = swift_allocObject();
              *(v320 + 16) = sub_1AFA9EB88;
              *(v320 + 24) = v303;
              v321 = v320;
              v491 = v320;
              v322 = swift_allocObject();
              *(v322 + 16) = sub_1AFA9EB90;
              *(v322 + 24) = v321;
              *&v526 = sub_1AF6D25EC;
              *(&v526 + 1) = v322;
              *&v524 = MEMORY[0x1E69E9820];
              *(&v524 + 1) = 1107296256;
              *&v525 = sub_1AF6F662C;
              *(&v525 + 1) = &unk_1F255AE78;
              v323 = _Block_copy(&v524);
              v513 = v311;
              v324 = v323;

              sub_1AFA9C054(v500, &v529, &unk_1EB633F60, type metadata accessor for GraphScript);

              v325 = v512;
              sub_1AF487F80(v311, v512);

              dispatch_sync(v490, v324);
              _Block_release(v324);

              (*v482)(v494, v505);
              swift_isEscapingClosureAtFileLocation();

              v30 = v507;

              sub_1AF487074(v513, v325);
              v224 = v480;
              goto LABEL_181;
            }

            v490 = *(v517 + 40);
            v313 = swift_allocObject();
            *(v313 + 16) = sub_1AFA9EB88;
            *(v313 + 24) = v303;
            v491 = v313;

            sub_1AFA9C054(v500, &v529, &unk_1EB633F60, type metadata accessor for GraphScript);

            sub_1AF487F80(v311, v310);
            v314 = qword_1ED730EA0;

            v224 = v480;
            if (v314 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v315 = qword_1ED73B8A0;
            v316 = swift_allocObject();
            v317 = v491;
            *(v316 + 16) = sub_1AFA9EB90;
            *(v316 + 24) = v317;
            v318 = swift_allocObject();
            v318[2] = v315;
            v318[3] = sub_1AF6CC3F0;
            v318[4] = v316;
            *&v531 = sub_1AFA9EC30;
            *(&v531 + 1) = v318;
            *&v529 = MEMORY[0x1E69E9820];
            *(&v529 + 1) = 1107296256;
            *&v530 = sub_1AFCDA044;
            *(&v530 + 1) = &unk_1F255AF18;
            v319 = _Block_copy(&v529);
            swift_retain_n();

            [v490 addOperationWithBlock:v319];
            _Block_release(v319);

            (*v482)(v494, v505);

            v30 = v507;

            v231 = v512;
            v230 = v513;
            goto LABEL_180;
          }

LABEL_237:
          v328 = v518;
          v329 = v516;
          sub_1AFA9DE54(v515, v516, type metadata accessor for GraphScript);
          v330 = v329[6];
          v331 = v509;
          if (v330)
          {
            v332 = v516;
            v333 = v516[1];
            v334 = v516[2];

            v335 = sub_1AF458B0C(v333, v334);
            v330(*(v332 + v331[13]), v335);

            sub_1AF0FB8EC(v330);
          }

          if (*(v516 + v331[10]) == 1)
          {
            v336 = *(v516 + v331[11]);
            v337 = v336;
          }

          else
          {
            sub_1AF81F330();
            v336 = swift_allocError();
            *v338 = v474;
          }

          v30 = v507;
          if (!*(v508 + 16) && v336)
          {
            v339 = v489;
            v340 = *(v489 + 72);
            v341 = v336;
            os_unfair_lock_lock(v340);
            v342 = *(v508 + 16);
            *(v508 + 16) = v336;
            v343 = v336;

            os_unfair_lock_unlock(*(v339 + 72));
          }

          dispatch_group_leave(v328);

          goto LABEL_179;
        }

        sub_1AFA9C0C8(&v519);
LABEL_216:
        os_unfair_lock_unlock(*(v517 + 72));
        if (v277)
        {
          goto LABEL_217;
        }

        goto LABEL_237;
      }
    }

    else
    {
      *&v534 = 0;
      v532 = 0u;
      v533 = 0u;
      v530 = 0u;
      v531 = 0u;
      v529 = 0u;
      BYTE8(v534) = -1;
    }

    sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_216;
  }

  if (v221 == v503)
  {
    goto LABEL_315;
  }

  v344 = *(v487 + 72);
  v493 = *(*v463 + 72);
  v516 = (v516 + v493 * v221);
  v514 = 24 * v221;
  v515 += v344 * v221;
  v475 = v344;
  while (1)
  {

    if (*(v224 + 184))
    {
      break;
    }

    v349 = *(*(v224 + 168) + 4 * v221);
    v350 = *(*(v348 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v349 + 8);

    v351 = v349 == -1 && v350 == 0;
    if (!v351 && (v349 & 0x80000000) == 0 && v501[1] > v349)
    {
      v352 = *v501 + 12 * v349;
      if (v350 == -1 || *(v352 + 8) == v350)
      {
        v354 = *(*(*(v478 + 88) + 8 * *(v352 + 6) + 32) + 16);
        v355 = *(v354 + 128);
        if (*(v355 + 16))
        {
          v356 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v357 & 1) != 0 && *(*(v354 + 24) + 16 * *(*(v355 + 56) + 8 * v356) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_249;
          }
        }
      }
    }

    dispatch_group_enter(v518);
    v358 = *(v224 + 64);
    v359 = *(v224 + 80);
    v539 = *(v224 + 112);
    v361 = *(v224 + 80);
    v360 = *(v224 + 96);
    v537 = v359;
    v538 = v360;
    v362 = *(v224 + 64);
    v535 = *(v224 + 48);
    v536 = v358;
    v363 = *(v224 + 96);
    v531 = v361;
    v532 = v363;
    LOBYTE(v533) = *(v224 + 112);
    v529 = *(v224 + 48);
    v530 = v362;
    v364 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v366 = v365;
    v542 = v531;
    v543 = v532;
    v544 = v533;
    v541 = v530;
    v540 = v529;

    sub_1AF5DD36C(&v535, &v524);
    sub_1AF5DD3C8(&v540);
    if (v366)
    {

      v513 = 0;
      v367 = 0;
      v368 = 0;
    }

    else
    {
      v369 = *(v224 + 128);

      v370 = (v369 + v514 + v364);
      v513 = *v370;
      v367 = *(v370 + 1);
      v368 = *(v370 + 2);
    }

    v511 = v367;

    if (*(v224 + 184))
    {
      break;
    }

    v512 = v368;
    v372 = *(v224 + 168);
    v510 = v221;
    v373 = *(v372 + 4 * v221);
    v504 = *(*(v371 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v373 + 8);

    v374 = swift_allocObject();
    v374[2] = sub_1AFA9EC2C;
    v374[3] = v30;
    v375 = v517;
    v374[4] = v518;
    v376 = *(v375 + 16);

    if (v376)
    {
      v377 = *(v376 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v378 = v518;

      if ((v377 & 1) == 0 || *(v517 + 3048) != 1)
      {
        sub_1AF81F330();
        v379 = swift_allocError();
        v380 = v379;
        *v381 = v498;
        if (!*(v508 + 16))
        {
          v382 = v489;
          v383 = *(v489 + 72);
          v384 = v379;
          os_unfair_lock_lock(v383);
          v385 = *(v508 + 16);
          *(v508 + 16) = v380;
          v386 = v380;

          v344 = v475;
          os_unfair_lock_unlock(*(v382 + 72));
        }

        dispatch_group_leave(v378);

        goto LABEL_275;
      }
    }

    else
    {
      swift_retain_n();
      v387 = v518;
    }

    v388 = v373;
    v389 = sub_1AFAA6314();
    v390 = v517;
    v391 = v516 + v509[9];
    v392 = *v391;
    LOBYTE(v391) = v391[8];
    v502 = v389;
    v393 = v391 | (v389 != v392);
    os_unfair_lock_lock(*(v517 + 72));
    v394 = *(v390 + 80);
    if (!*(v394 + 16) || (v395 = sub_1AF41ACD4(v506, v373 | (v504 << 32)), (v396 & 1) == 0))
    {
      *&v534 = 0;
      v532 = 0u;
      v533 = 0u;
      v530 = 0u;
      v531 = 0u;
      v529 = 0u;
      BYTE8(v534) = -1;
LABEL_283:
      sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_284:
      v397 = v517;
      os_unfair_lock_unlock(*(v517 + 72));
      if ((v393 & 1) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_285;
    }

    sub_1AF85B3D4(*(v394 + 56) + 96 * v395, &v529);
    if (BYTE8(v534) == 255)
    {
      goto LABEL_283;
    }

    sub_1AF85B3D4(&v529, &v524);
    sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v523 + 9) = *(v528 + 9);
    v521 = v526;
    v522 = v527;
    v523[0] = v528[0];
    v519 = v524;
    v520 = v525;
    if (BYTE8(v528[1]))
    {
      sub_1AFA9C0C8(&v519);
      goto LABEL_284;
    }

    v440 = v519;
    v441 = (v519 != v502) | v393;
    v397 = v517;
    os_unfair_lock_unlock(*(v517 + 72));
    if ((v441 & 1) == 0)
    {
LABEL_306:
      v443 = v516;
      sub_1AFA9DE54(v515, v516, type metadata accessor for GraphScript);
      v444 = v443[6];
      v445 = v509;
      if (v444)
      {
        v446 = v443[1];
        v447 = v516[2];

        v448 = v447;
        v443 = v516;
        v449 = sub_1AF458B0C(v446, v448);
        v444(*(v443 + v445[13]), v449);

        sub_1AF0FB8EC(v444);
      }

      if (*(v443 + v445[10]) == 1)
      {
        v450 = *(v443 + v445[11]);
        v451 = v450;
      }

      else
      {
        sub_1AF81F330();
        v450 = swift_allocError();
        *v452 = v474;
      }

      v30 = v507;
      if (*(v508 + 16) || !v450)
      {
        v345 = v344;
      }

      else
      {
        v345 = v344;
        v453 = v489;
        v454 = *(v489 + 72);
        v455 = v450;
        os_unfair_lock_lock(v454);
        v456 = *(v508 + 16);
        *(v508 + 16) = v450;
        v457 = v450;

        os_unfair_lock_unlock(*(v453 + 72));
      }

      v221 = v510;
      v346 = v511;
      v347 = v518;
      dispatch_group_leave(v518);

      sub_1AF487074(v513, v346);
      v344 = v345;
      goto LABEL_249;
    }

    if (v440 == v502)
    {
      v442 = v518;
      dispatch_group_leave(v518);

      v30 = v507;
LABEL_275:

      goto LABEL_301;
    }

LABEL_285:
    v490 = v373;
    v398 = v509;
    v399 = swift_allocBox();
    v401 = v400;
    sub_1AFA5C124(v400);
    v402 = v401 + *(v398 + 36);
    v403 = v502;
    *v402 = v502;
    *(v402 + 8) = 0;
    sub_1AFA9DE54(v515, v401, type metadata accessor for GraphScript);
    sub_1AFA9DE54(v401, v516, sub_1AF5B252C);
    os_unfair_lock_lock(*(v397 + 72));
    *&v529 = v403;
    BYTE8(v534) = 0;
    sub_1AF825824(&v529, v506, v388 | (v504 << 32));
    os_unfair_lock_unlock(*(v397 + 72));
    v404 = *(v397 + 16);

    if (v404)
    {
      v405 = v466;
      v406 = v505;
      (*v496)(v466, v404 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v505);

      (*v481)(v405, 0, 1, v406);
      (*v476)(v488, v405, v406);
    }

    else
    {
      v407 = v466;
      (*v481)(v466, 1, 1, v505);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v408 = sub_1AFDFC538();
      sub_1AF477C68(v408, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v467)(v407, 1, v505) != 1)
      {
        sub_1AFA9C470(v407, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v491 = v399;
    v492 = v374;
    v409 = sub_1AFDFC538();
    sub_1AF477C68(v409, qword_1ED73B608);
    v410 = sub_1AFDFC528();
    v411 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v412 = swift_slowAlloc();
      *v412 = 0;
      v413 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v410, v411, v413, "buildScript", "", v412, 2u);
      MEMORY[0x1B271DEA0](v412, -1, -1);
    }

    (*v496)(v485, v488, v505);
    sub_1AFDFC578();
    swift_allocObject();
    v414 = sub_1AFDFC568();
    sub_1AFA9E3C8(v515, v499, type metadata accessor for GraphScript);
    v415 = (*(v487 + 80) + 400) & ~*(v487 + 80);
    v416 = (v483 + v415) & 0xFFFFFFFFFFFFFFF8;
    v417 = (v416 + 23) & 0xFFFFFFFFFFFFFFF8;
    v418 = (v417 + 27) & 0xFFFFFFFFFFFFFFF8;
    v477 = (v418 + 15) & 0xFFFFFFFFFFFFFFF8;
    v419 = swift_allocObject();
    v420 = v506;
    *(v419 + 16) = v517;
    *(v419 + 24) = v420;
    v421 = v490;
    v422 = v504;
    *(v419 + 32) = v490;
    *(v419 + 36) = v422;
    *(v419 + 40) = v502;
    *(v419 + 48) = sub_1AFA9EC20;
    *(v419 + 56) = v492;
    *(v419 + 64) = v414;
    v502 = v414;
    memcpy((v419 + 72), v500, 0x148uLL);
    sub_1AFA9E320(v499, v419 + v415, type metadata accessor for GraphScript);
    v423 = (v419 + v416);
    v424 = v495;
    *v423 = v484;
    v423[1] = v424;
    v425 = (v419 + v417);
    v426 = v512;
    v427 = v513;
    v428 = v511;
    *v425 = v513;
    v425[1] = v428;
    v425[2] = v426;
    v429 = (v419 + v418);
    *v429 = v421;
    v429[1] = v422;
    *(v419 + v477) = v491;
    if ((v486 & 1) == 0)
    {
      v504 = *(v517 + 32);
      v436 = swift_allocObject();
      *(v436 + 16) = sub_1AFA9DAA4;
      *(v436 + 24) = v419;
      v437 = swift_allocObject();
      *(v437 + 16) = sub_1AFA9EB90;
      *(v437 + 24) = v436;
      *&v526 = sub_1AF6D25EC;
      *(&v526 + 1) = v437;
      *&v524 = MEMORY[0x1E69E9820];
      *(&v524 + 1) = 1107296256;
      *&v525 = sub_1AF6F662C;
      *(&v525 + 1) = &unk_1F255AD10;
      v438 = _Block_copy(&v524);
      v513 = v427;
      v439 = v438;
      v490 = *(&v526 + 1);

      sub_1AFA9C054(v500, &v529, &unk_1EB633F60, type metadata accessor for GraphScript);

      sub_1AF487F80(v427, v428);

      dispatch_sync(v504, v439);
      _Block_release(v439);

      (*v482)(v488, v505);
      swift_isEscapingClosureAtFileLocation();

      v30 = v507;

      sub_1AF487074(v513, v428);
      v221 = v510;
      v344 = v475;
      goto LABEL_249;
    }

    v504 = *(v517 + 40);
    v430 = swift_allocObject();
    *(v430 + 16) = sub_1AFA9DAA4;
    *(v430 + 24) = v419;

    sub_1AFA9C054(v500, &v529, &unk_1EB633F60, type metadata accessor for GraphScript);

    sub_1AF487F80(v427, v428);
    v431 = qword_1ED730EA0;

    v344 = v475;
    if (v431 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v432 = qword_1ED73B8A0;
    v433 = swift_allocObject();
    *(v433 + 16) = sub_1AFA9EB90;
    *(v433 + 24) = v430;
    v434 = swift_allocObject();
    v434[2] = v432;
    v434[3] = sub_1AF6CC3F0;
    v434[4] = v433;
    *&v531 = sub_1AFA9EC30;
    *(&v531 + 1) = v434;
    *&v529 = MEMORY[0x1E69E9820];
    *(&v529 + 1) = 1107296256;
    *&v530 = sub_1AFCDA044;
    *(&v530 + 1) = &unk_1F255ADB0;
    v435 = _Block_copy(&v529);
    swift_retain_n();

    [v504 addOperationWithBlock:v435];
    _Block_release(v435);

    (*v482)(v488, v505);

    v30 = v507;

LABEL_301:

    sub_1AF487074(v513, v511);
    v221 = v510;
LABEL_249:
    ++v221;
    v516 = (v516 + v493);
    v514 += 24;
    v515 += v344;
    if (v503 == v221)
    {
LABEL_314:
      v214 = 1;
LABEL_315:
      v458 = v497;
      sub_1AF630994(v471, &v581, v594);
      v497 = v458;
      sub_1AF62D29C(v224);
      ecs_stack_allocator_pop_snapshot(v470);
      if (v469)
      {
        os_unfair_lock_unlock(*(v224 + 344));
        os_unfair_lock_unlock(*(v224 + 376));
      }

      v219 = v468 + 1;
      if (v468 + 1 != v465)
      {
        goto LABEL_172;
      }

      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v214 & 1) == 0)
      {
LABEL_319:
        dispatch_group_leave(v518);
      }

LABEL_318:

      sub_1AFA62400(v459);

      goto LABEL_319;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA78940(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v83 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B24B4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SimpleScript(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2478(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v55 - v25;
  sub_1AF85B3D4(a2, v77);
  if (!v82)
  {
    goto LABEL_18;
  }

  if (v82 != 1)
  {
    sub_1AFA9DA8C(a1);

    sub_1AF449D40(v77, v76);
    sub_1AF0D5A54(v76, &v70);
    swift_dynamicCast();
    v73 = v11;
    v74 = &off_1F250F310;
    v44 = sub_1AF585714(&v70);
    sub_1AFA9DA5C(a1, v44);
    v75 = 1;
    sub_1AF8259D0(&v70, v66, v67);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
    goto LABEL_18;
  }

  v56 = v22;
  v57 = v14;
  v58 = a2;
  v59 = v7;
  v61 = a1;
  sub_1AFA9DA8C(a1);
  v27 = v78;
  v62 = v79;
  v60 = v80;
  sub_1AF449D40(v77, v76);
  sub_1AF449D40(&v81, v69);
  v28 = MEMORY[0x1E69E7CC0];
  *v26 = MEMORY[0x1E69E7CC0];
  *(v26 + 1) = 0;
  *(v26 + 2) = 0xE000000000000000;
  *(v26 + 3) = &unk_1F25030B0;
  v26[32] = 3;
  *(v26 + 5) = 0;
  *(v26 + 6) = 0;
  v26[56] = 0;
  v29 = *(v15 + 40);
  v30 = type metadata accessor for ScriptIndex();
  (*(*(v30 - 8) + 56))(&v26[v29], 1, 1, v30);
  v31 = &v26[v11[9]];
  *v31 = 0;
  v31[8] = 1;
  v26[v11[10]] = 0;
  *&v26[v11[11]] = 0;
  v32 = &v26[v11[12]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  *&v26[v11[13]] = v28;
  v33 = v19[9];
  v34 = v19[10];
  v35 = v19[11];
  *&v26[v19[12]] = 0;
  v26[v19[13]] = 0;
  v36 = &v26[v19[14]];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v26[v19[15]];
  *v37 = 0;
  v37[1] = 0;
  sub_1AF0D5A54(v76, &v70);
  sub_1AFA9DA8C(v26);
  swift_dynamicCast();
  *&v26[v33] = v27;
  *&v26[v35] = v60;
  *&v26[v34] = v62;
  v38 = *v37;
  v62 = v27;

  sub_1AF919DAC(v38);
  sub_1AF0D5A54(v69, &v70);
  swift_dynamicCast();
  sub_1AFA9DA5C(v26, v61);
  if (v64)
  {
    v39 = v65;
    v40 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v41 = v67;
    v42 = v57;
    if (v40)
    {
      v43 = *(v40 + 80);
      swift_unknownObjectWeakLoadStrong();
      v40 = *(v40 + 56);
    }

    else
    {
      v43 = 0;
    }

    v64 = v43;
    v72 = 0;
    swift_unknownObjectUnownedInit();
    v70 = v39;
    v72 = v40;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v73) = v43;
    v47 = v56;
    sub_1AFA9E3C8(v26, v56, sub_1AF5B2478);
    v48 = v63;
    sub_1AFA9E3C8(v47, v63, type metadata accessor for SimpleScript);
    sub_1AFA9E8FC(v47, sub_1AF5B2478);
    sub_1AF5AE1C8(v48, v41);
    sub_1AFA9E8FC(v48, type metadata accessor for SimpleScript);
    sub_1AFA9DA5C(v26, v42);
    sub_1AF5AE358(v42, v41);
    sub_1AFA9DA8C(v42);
    sub_1AFA9E3C8(v26, v47, sub_1AF5B2478);
    sub_1AF5AE4E8(v47, v41);
    v45 = v65;
    sub_1AFA9E8FC(v47, sub_1AF5B2478);
    sub_1AF579490(&v70);
    v46 = v66;
    if (v64)
    {
      v49 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v49 ^ 1);
    }
  }

  else
  {
    v41 = v67;
    v45 = v65;
    sub_1AFBFDEBC(v26, v67);
    v46 = v66;
  }

  v73 = v19;
  v74 = &off_1F2558F90;
  v50 = sub_1AF585714(&v70);
  sub_1AFA9E3C8(v26, v50, sub_1AF5B2478);
  v75 = 0;
  sub_1AF8259D0(&v70, v46, v41);
  v51 = sub_1AF3CB4F8(v41);
  if (v51)
  {
    sub_1AFD08440(v45, v51, v52);
  }

  sub_1AF0D5A54(v69, &v70);
  if (swift_dynamicCast())
  {
    v53 = v68;

    v70 = MEMORY[0x1E69E7CC0];
    v71 = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C(v45, v53);

    sub_1AFBFE12C(v70, v71, v41);
LABEL_16:

    goto LABEL_17;
  }

  sub_1AF0D5A54(v69, &v70);
  if (swift_dynamicCast())
  {
    goto LABEL_16;
  }

LABEL_17:
  a2 = v58;
  sub_1AF678B44(v41);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v69);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v76);
  sub_1AFA9E8FC(v26, sub_1AF5B2478);
LABEL_18:
  result = sub_1AF85B3D4(a2, v77);
  if (v82)
  {
    return sub_1AFA9C0C8(v77);
  }

  return result;
}

uint64_t sub_1AFA79148(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v41 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v42 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v43);
        if (v44 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for SimpleScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B24B4(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v43);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v42 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA78940(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45700);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v43);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for SimpleScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA7959C(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v492) = a6;
  v490 = a2;
  v491 = a5;
  v486 = a4;
  v497 = 0;
  v506 = type metadata accessor for SimpleScript(0);
  v487 = *(v506 - 8);
  MEMORY[0x1EEE9AC00](v506, v13);
  v483 = v14;
  v499 = &v462 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v466 = &v462 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v479 = &v462 - v20;
  v21 = sub_1AFDFC4F8();
  v482 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v488 = &v462 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v485 = &v462 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v494 = &v462 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = *(a1 + 16);

  v508 = a8;

  v489 = a9;

  dispatch_group_enter(a3);
  v32 = *(a7 + 184);
  v592[0] = *(a7 + 168);
  v592[1] = v32;
  v593 = *(a7 + 25);
  v493 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v478 = v31;
  sub_1AF6B06C0(v31, v592, 0x200000000, v551);
  v517 = a1;
  v518 = a3;
  v507 = v30;
  v500 = a7;
  v505 = v21;
  if (*&v551[0])
  {
    if (v555 < 1)
    {
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 0;
    }

    else if (*(&v553 + 1))
    {
      v33 = *(&v552 + 1);
      v34 = *(&v554 + 1);
      v35 = *(&v552 + 1) + 48 * *(&v553 + 1);
      sub_1AF5B24B4(0);
      v511 = v36;
      v531 = v552;
      v532 = v553;
      v533 = v554;
      v534 = v555;
      v529 = v551[0];
      v530 = v551[1];
      sub_1AF5DD298(&v529, &v598);
      v515 = v34;
      v496 = v35;
      do
      {
        v37 = *(v33 + 40);
        v38 = *(v37 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v38);
        os_unfair_lock_lock(*(v37 + 344));
        v39 = *(v37 + 24);

        v600 = 0;
        v598 = 0u;
        v599 = 0u;
        memset(v574, 0, 40);
        v40 = sub_1AF65A4B4(v39, v511, &off_1F250F310, 0, 0, &v598, v574);

        sub_1AFA9E8FC(v574, sub_1AF5C4448);
        sub_1AFA9E8FC(&v598, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v40);
        }

        else
        {
          v510 = v33;
          v42 = *(v37 + 232);
          v41 = *(v37 + 240);
          v43 = *(v37 + 120);
          v501 = *(v37 + 28);
          v44 = *(v37 + 32);
          v516 = *(v37 + 16);
          v45 = *(v37 + 40);
          v46 = v45[200];
          v47 = *(v516[11] + 8 * v40 + 32);

          if ((v46 & 1) != 0 || *(v47 + 200) == 1)
          {
            *(v516 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v45 = *(v37 + 40);
          }

          v48 = v45[212];
          LODWORD(v509) = v43;
          LODWORD(v502) = v40;
          if (v48)
          {
            LODWORD(v504) = 0;
          }

          else
          {
            LODWORD(v504) = *(v47 + 212);
          }

          LODWORD(v503) = v45[208];
          v514 = *(v37 + 128);
          v49 = *(v37 + 256);
          v50 = v41;
          v51 = v497;
          sub_1AF5B4FCC(v45, v42, v50, 0, v37);
          v497 = v51;
          v512 = *(v37 + 256);
          v513 = v49;
          v52 = v512 - v49;
          if (v512 == v49)
          {
            v53 = 0;
          }

          else
          {
            v53 = v49;
          }

          *&v574[0] = v53;
          v54 = *(*(v37 + 40) + 24);
          v55 = *(v54 + 16);
          if (v55)
          {
            LODWORD(v498) = v44;
            v56 = v54 + 32;

            v57 = 0;
            v58 = v47;
            do
            {
              v59 = v56 + 40 * v57;
              if ((*(v59 + 32) & 1) == 0)
              {
                v60 = *(v58 + 24);
                v61 = *(v60 + 16);
                if (v61)
                {
                  v62 = (v60 + 32);
                  while (*v62 != *v59)
                  {
                    v62 += 5;
                    if (!--v61)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  sub_1AF640BC8();
                  v58 = v47;
                }
              }

              ++v57;
            }

            while (v57 != v55);

            LOBYTE(v44) = v498;
          }

          if (*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v37 + 72) * v52);
          }

          if (*(v37 + 184))
          {
            v63 = 0;
          }

          else
          {
            v63 = *(v37 + 168);
          }

          *&v569[0] = 0;

          DWORD2(v599) = -1;
          v600 = v513;
          v601 = v512;
          v602 = v513;
          v603 = v512;
          *&v598 = v513;
          *(&v598 + 1) = v512;
          *&v599 = v63;
          if (v52 < 1)
          {
          }

          else
          {
            *&v498 = &v462;

            v64 = v47;

            v65 = v509;
            v66 = v504;
            v67 = v501;
            v68 = v502;
            v69 = v503;
            v70 = v514;
            do
            {

              LOBYTE(v561) = v44;
              LOBYTE(v461) = v69;
              sub_1AF626158(v68, v67 | (v44 << 32), v65, v516, &v598, v67 | (v44 << 32), v37, v64, 0, 0, 0, 0, v574, v70, v569, v461, v68, v66, v515);
            }

            while ((*(&v598 + 1) - v598) > 0);
          }

          v71 = *(v37 + 192);
          v30 = v507;
          v33 = v510;
          if (v71)
          {
            v72 = *(v37 + 208);
            v73 = v513;
            v74 = v512;
            sub_1AF75D364(v513, v512, v71);
            sub_1AF75D364(v73, v74, v72);
          }

          v35 = v496;
        }

        v33 += 48;
        os_unfair_lock_unlock(*(v37 + 344));
        os_unfair_lock_unlock(*(v37 + 376));
      }

      while (v33 != v35);
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
      a7 = v500;
    }

    else
    {
      sub_1AFA9BF94(v551, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
    }
  }

  else
  {
    v75 = 0;
  }

  v76 = a7[4];
  v590[0] = a7[3];
  v590[1] = v76;
  v591 = *(a7 + 10);
  sub_1AF6B06C0(v478, v590, 0x200000000, v556);
  if (*&v556[0])
  {
    if (v560 >= 1 && *(&v558 + 1))
    {
      v77 = *(&v557 + 1);
      v78 = *(&v559 + 1);
      v79 = *(&v557 + 1) + 48 * *(&v558 + 1);
      sub_1AF5B2478(0);
      v511 = v80;
      v531 = v557;
      v532 = v558;
      v533 = v559;
      v534 = v560;
      v529 = v556[0];
      v530 = v556[1];
      sub_1AF5DD298(&v529, &v598);
      v515 = v78;
      v496 = v79;
      do
      {
        v81 = *(v77 + 40);
        v82 = *(v81 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v82);
        os_unfair_lock_lock(*(v81 + 344));
        v83 = *(v81 + 24);

        v600 = 0;
        v598 = 0u;
        v599 = 0u;
        memset(v574, 0, 40);
        v84 = sub_1AF65A4B4(v83, 0, 0, v511, &off_1F2558F90, &v598, v574);

        sub_1AFA9E8FC(v574, sub_1AF5C4448);
        sub_1AFA9E8FC(&v598, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v84);
        }

        else
        {
          v510 = v77;
          v86 = *(v81 + 232);
          v85 = *(v81 + 240);
          v87 = *(v81 + 120);
          v501 = *(v81 + 28);
          v88 = *(v81 + 32);
          v516 = *(v81 + 16);
          v89 = *(v81 + 40);
          v90 = v89[200];
          v91 = *(v516[11] + 8 * v84 + 32);

          if ((v90 & 1) != 0 || *(v91 + 200) == 1)
          {
            *(v516 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v89 = *(v81 + 40);
          }

          v92 = v89[212];
          LODWORD(v509) = v87;
          LODWORD(v502) = v84;
          if (v92)
          {
            LODWORD(v504) = 0;
          }

          else
          {
            LODWORD(v504) = *(v91 + 212);
          }

          LODWORD(v503) = v89[208];
          v514 = *(v81 + 128);
          v93 = *(v81 + 256);
          v94 = v85;
          v95 = v497;
          sub_1AF5B4FCC(v89, v86, v94, 0, v81);
          v497 = v95;
          v512 = *(v81 + 256);
          v513 = v93;
          v96 = v512 - v93;
          if (v512 == v93)
          {
            v97 = 0;
          }

          else
          {
            v97 = v93;
          }

          *&v574[0] = v97;
          v98 = *(*(v81 + 40) + 24);
          v99 = *(v98 + 16);
          if (v99)
          {
            LODWORD(v498) = v88;
            v100 = v98 + 32;

            v101 = 0;
            v102 = v91;
            do
            {
              v103 = v100 + 40 * v101;
              if ((*(v103 + 32) & 1) == 0)
              {
                v104 = *(v102 + 24);
                v105 = *(v104 + 16);
                if (v105)
                {
                  v106 = (v104 + 32);
                  while (*v106 != *v103)
                  {
                    v106 += 5;
                    if (!--v105)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                else
                {
LABEL_63:
                  sub_1AF640BC8();
                  v102 = v91;
                }
              }

              ++v101;
            }

            while (v101 != v99);

            LOBYTE(v88) = v498;
          }

          if (*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v81 + 72) * v96);
          }

          if (*(v81 + 184))
          {
            v107 = 0;
          }

          else
          {
            v107 = *(v81 + 168);
          }

          *&v569[0] = 0;

          DWORD2(v599) = -1;
          v600 = v513;
          v601 = v512;
          v602 = v513;
          v603 = v512;
          *&v598 = v513;
          *(&v598 + 1) = v512;
          *&v599 = v107;
          if (v96 < 1)
          {
          }

          else
          {
            *&v498 = &v462;

            v108 = v91;

            v109 = v509;
            v110 = v504;
            v111 = v501;
            v112 = v502;
            v113 = v503;
            v114 = v514;
            do
            {

              LOBYTE(v561) = v88;
              LOBYTE(v461) = v113;
              sub_1AF626158(v112, v111 | (v88 << 32), v109, v516, &v598, v111 | (v88 << 32), v81, v108, 0, 0, 0, 0, v574, v114, v569, v461, v112, v110, v515);
            }

            while ((*(&v598 + 1) - v598) > 0);
          }

          v115 = *(v81 + 192);
          v30 = v507;
          v77 = v510;
          if (v115)
          {
            v116 = *(v81 + 208);
            v117 = v513;
            v118 = v512;
            sub_1AF75D364(v513, v512, v115);
            sub_1AF75D364(v117, v118, v116);
          }

          v79 = v496;
        }

        v77 += 48;
        os_unfair_lock_unlock(*(v81 + 344));
        os_unfair_lock_unlock(*(v81 + 376));
      }

      while (v77 != v79);
      sub_1AFA9BF94(v556, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v556, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
      a7 = v500;
    }

    else
    {
      sub_1AFA9BF94(v556, &qword_1ED725EA0, &type metadata for QueryResult);
      v75 = 1;
    }
  }

  LODWORD(v496) = v75;
  v119 = *(a7 + 104);
  v588[0] = *(a7 + 88);
  v588[1] = v119;
  v589 = *(a7 + 15);
  sub_1AF6B06C0(v478, v588, 0x200000000, &v561);
  if (v561)
  {
    v511 = v568;
    v120 = v497;
    if (v568 >= 1)
    {
      v510 = v565;
      if (v565)
      {
        v121 = 0;
        v509 = v564;
        v504 = v566;
        v122 = *(&v566->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v515 = v567[4];
        v516 = v567;
        v578 = v561;
        v579 = v562;
        v580 = v563;
        LODWORD(v503) = v122;
        do
        {
          v497 = v120;
          v514 = v121;
          v123 = &v509[12 * v121];
          v124 = *v123;
          v125 = v123[1];
          v126 = v123[2];
          v127 = *(v123 + 2);
          v128 = *(v123 + 3);
          v130 = *(v123 + 4);
          v129 = *(v123 + 5);
          if (v122)
          {
            v131 = *(v129 + 376);

            os_unfair_lock_lock(v131);
            os_unfair_lock_lock(*(v129 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v515);
          v132 = v516;
          v133 = *(v516 + 4);
          v596[0] = *(v516 + 3);
          v596[1] = v133;
          v597 = v516[10];
          v134 = *(*(*(*(v129 + 40) + 16) + 32) + 16) + 1;
          v132[6] = ecs_stack_allocator_allocate(v516[4], 48 * v134, 8);
          v132[7] = v134;
          v132[9] = 0;
          v132[10] = 0;
          v132[8] = 0;
          LOBYTE(v529) = 1;
          *&v598 = v504;
          *(&v598 + 1) = v129;
          *&v599 = v132;
          *(&v599 + 1) = v126;
          v600 = (v125 - v124 + v126);
          v601 = v511;
          v602 = v124;
          v603 = v125;
          v604 = 0;
          v605 = 0;
          v606 = 1;
          v607 = v127;
          v608 = v128;
          v609 = v130;
          v135 = v497;
          v136 = sub_1AF706EF4(v129, &v598);
          v137 = v607;
          v513 = v135;
          if (v607)
          {
            v138 = v609;
            if (v609)
            {
              v512 = v599;
              v139 = (v136 + 8);
              do
              {
                v137 += 8;
                v140 = *(v139 - 1);
                v141 = *v139;

                sub_1AFD08440(v142, v140, v141);

                sub_1AF6FCF90(0);
                v144 = *(*(v129 + 40) + 16);
                v145 = *(v144 + 128);
                if (*(v145 + 16))
                {
                  v146 = v143;
                  v147 = sub_1AF449CB8(v143);
                  if ((v148 & 1) != 0 && *(*(v144 + 24) + 16 * *(*(v145 + 56) + 8 * v147) + 32) == v146)
                  {
                    *&v529 = v146;
                    *(&v529 + 1) = &off_1F2559388;
                    BYTE8(v531) = 1;
                    MEMORY[0x1EEE9AC00](v147, v148);
                    v461 = v129;

                    sub_1AF63023C(0, v129, sub_1AFA9EC24);

                    sub_1AF635250(&v529);
                  }
                }

                v139 += 2;
                --v138;
              }

              while (v138);
            }
          }

          else
          {
            v149 = v602;
            v150 = v603;
            if (v602 != v603)
            {
              v151 = (v136 + 16 * v602 + 8);
              do
              {
                v152 = *(v151 - 1);
                v153 = *v151;

                sub_1AFD08440(v154, v152, v153);

                sub_1AF6FCF90(0);
                v156 = *(*(v129 + 40) + 16);
                v157 = *(v156 + 128);
                if (*(v157 + 16))
                {
                  v158 = v155;
                  v159 = sub_1AF449CB8(v155);
                  if ((v160 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v159) + 32) == v158)
                  {
                    *&v529 = v158;
                    *(&v529 + 1) = &off_1F2559388;
                    BYTE8(v531) = 1;
                    MEMORY[0x1EEE9AC00](v159, v160);
                    v461 = v129;

                    sub_1AF63023C(0, v129, sub_1AFA9EC24);

                    sub_1AF635250(&v529);
                  }
                }

                ++v149;
                v151 += 2;
              }

              while (v150 != v149);
            }
          }

          v120 = v513;
          sub_1AF630994(v516, &v578, v596);
          sub_1AF62D29C(v129);
          ecs_stack_allocator_pop_snapshot(v515);
          v122 = v503;
          if (v503)
          {
            os_unfair_lock_unlock(*(v129 + 344));
            os_unfair_lock_unlock(*(v129 + 376));
          }

          v121 = v514 + 1;
        }

        while (v514 + 1 != v510);
      }
    }

    sub_1AFA9BF94(&v561, &qword_1ED725EA0, &type metadata for QueryResult);
    v30 = v507;
  }

  else
  {
    v120 = v497;
  }

  v161 = v500[9];
  v586[0] = v500[8];
  v586[1] = v161;
  v587 = *(v500 + 20);
  sub_1AF6B06C0(v478, v586, 0x200000000, v569);
  if (*&v569[0])
  {
    v162 = v573;
    if (v573 >= 1 && *(&v571 + 1))
    {
      v484 = v573;
      v163 = *(&v570 + 1);
      v515 = *(&v572 + 1);
      v164 = *(&v570 + 1) + 48 * *(&v571 + 1);
      sub_1AF5B24B4(0);
      v511 = v165;
      v531 = v570;
      v532 = v571;
      v533 = v572;
      v534 = v573;
      v529 = v569[0];
      v530 = v569[1];
      sub_1AF5DD298(&v529, v574);
      v495 = v164;
      do
      {
        v166 = *(v163 + 40);
        v167 = *(v166 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v167);
        os_unfair_lock_lock(*(v166 + 344));
        v168 = *(v166 + 24);

        memset(v574, 0, 40);
        *&v547 = 0;
        v546 = 0u;
        v545 = 0u;
        v169 = sub_1AF65A4B4(v168, 0, 0, v511, &off_1F250F310, v574, &v545);

        sub_1AFA9E8FC(&v545, sub_1AF5C4448);
        sub_1AFA9E8FC(v574, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v169);
        }

        else
        {
          v510 = v163;
          v497 = v120;
          v171 = *(v166 + 232);
          v170 = *(v166 + 240);
          LODWORD(v509) = *(v166 + 120);
          v502 = *(v166 + 28);
          v172 = *(v166 + 32);
          v173 = *(v166 + 16);
          v174 = *(v166 + 40);
          v175 = v174[200];

          if ((v175 & 1) != 0 || *(v176 + 200) == 1)
          {
            *(v173 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v174 = *(v166 + 40);
          }

          v177 = v174[212];
          v178 = v176;
          v516 = v173;
          LODWORD(v503) = v169;
          if (v177)
          {
            LODWORD(v504) = 0;
          }

          else
          {
            LODWORD(v504) = *(v176 + 212);
          }

          v179 = v174[208];
          v514 = *(v166 + 128);
          v180 = *(v166 + 256);
          v181 = v170;
          v182 = v497;
          sub_1AF5B4FCC(v174, v171, v181, 0, v166);
          v497 = v182;
          v512 = *(v166 + 256);
          v513 = v180;
          v183 = v512 - v180;
          if (v512 == v180)
          {
            v184 = 0;
          }

          else
          {
            v184 = v180;
          }

          *&v545 = v184;
          v185 = *(*(v166 + 40) + 24);
          v186 = *(v185 + 16);
          if (v186)
          {
            LODWORD(v498) = v172;
            LODWORD(v501) = v179;
            v187 = v185 + 32;

            v188 = 0;
            v189 = v183;
            v190 = v178;
            do
            {
              v191 = v187 + 40 * v188;
              if ((*(v191 + 32) & 1) == 0)
              {
                v192 = *(v190 + 24);
                v193 = *(v192 + 16);
                if (v193)
                {
                  v194 = (v192 + 32);
                  while (*v194 != *v191)
                  {
                    v194 += 5;
                    if (!--v193)
                    {
                      goto LABEL_132;
                    }
                  }
                }

                else
                {
LABEL_132:
                  sub_1AF640BC8();
                  v190 = v178;
                  v189 = v183;
                }
              }

              ++v188;
            }

            while (v188 != v186);
            v183 = v189;

            LOBYTE(v179) = v501;
            LOBYTE(v172) = v498;
          }

          if (*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v516 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v166 + 72) * v183);
          }

          if (*(v166 + 184))
          {
            v195 = 0;
          }

          else
          {
            v195 = *(v166 + 168);
          }

          *&v524 = 0;

          *&v574[1] = v195;
          DWORD2(v574[1]) = -1;
          *&v574[2] = v513;
          *(&v574[2] + 1) = v512;
          *&v575 = v513;
          *(&v575 + 1) = v512;
          *&v574[0] = v513;
          *(&v574[0] + 1) = v512;
          if (v183 < 1)
          {
          }

          else
          {
            v501 = &v462;

            v196 = v178;

            v197 = v509;
            v198 = v502;
            v199 = v503;
            v200 = v179;
            v201 = v504;
            v202 = v514;
            do
            {

              LOBYTE(v519) = v172;
              LOBYTE(v461) = v200;
              sub_1AF626158(v199, v198 | (v172 << 32), v197, v516, v574, v198 | (v172 << 32), v166, v196, 0, 0, 0, 0, &v545, v202, &v524, v461, v199, v201, v515);
            }

            while ((*(&v574[0] + 1) - *&v574[0]) > 0);
          }

          v203 = *(v166 + 192);
          v30 = v507;
          v120 = v497;
          if (v203)
          {
            v204 = *(v166 + 208);
            v206 = v512;
            v205 = v513;
            sub_1AF75D364(v513, v512, v203);
            sub_1AF75D364(v205, v206, v204);
          }

          v163 = v510;
          v164 = v495;
        }

        v163 += 48;
        os_unfair_lock_unlock(*(v166 + 344));
        os_unfair_lock_unlock(*(v166 + 376));
      }

      while (v163 != v164);
      sub_1AFA9BF94(v569, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v569, &qword_1ED725EA0, &type metadata for QueryResult);
      v162 = v484;
    }

    else
    {
      sub_1AFA9BF94(v569, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v207 = v496;
    if (v162 > 0)
    {
      v207 = 1;
    }

    LODWORD(v496) = v207;
  }

  if (v490)
  {
    sub_1AFA61FF8(v517, v490, sub_1AFD2D80C);
    LODWORD(v496) = v496 | v208;
  }

  if (v491)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v210 = v517;
  v211 = sub_1AFA79148(v517, v492 & 1);

  v212 = *(v210 + 16);

  v497 = v120;
  if (v212)
  {
    v484 = sub_1AF8BB88C();
    v495 = v213;
  }

  else
  {
    v484 = 0;
    v495 = 0xE000000000000000;
  }

  v214 = v496 | v211;
  v215 = v500[14];
  v584[0] = v500[13];
  v584[1] = v215;
  v585 = *(v500 + 30);
  sub_1AF6B06C0(v478, v584, 0x200000000, v574);
  v216 = *&v574[0];
  if (!*&v574[0])
  {

    if ((v214 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  if (v577 <= 0 || (v465 = *(&v575 + 1)) == 0)
  {

    sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v214 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  v464 = *(&v574[2] + 1);
  v471 = *(&v576 + 1);
  v470 = *(*(&v576 + 1) + 32);
  v469 = *(v576 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B24B4(0);
  v218 = v217;
  v581 = v216;
  v582 = *(v574 + 8);
  v583 = *(&v574[1] + 8);
  v501 = (v478 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v547 = v574[2];
  v548 = v575;
  v549 = v576;
  v550 = v577;
  v545 = v574[0];
  v546 = v574[1];
  sub_1AF5DD298(&v545, &v529);
  v219 = 0;
  v509 = v218;
  v463 = v218 - 8;
  v496 = (v482 + 2);
  v476 = (v482 + 4);
  v467 = (v482 + 6);
  v483 += 7;
  v473 = &v525;
  v481 = (v482 + 7);
  ++v482;
  v472 = &v530;
  v474 = xmmword_1AFE21110;
  v498 = xmmword_1AFE72020;
LABEL_172:
  v468 = v219;
  v220 = (v464 + 48 * v219);
  v221 = *v220;
  v503 = v220[1];
  v222 = *(v220 + 3);
  v511 = *(v220 + 2);
  v223 = *(v220 + 4);
  v224 = *(v220 + 5);
  if (v469)
  {
    v225 = *(v224 + 376);

    os_unfair_lock_lock(v225);
    os_unfair_lock_lock(*(v224 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v470);
  v226 = v471;
  v227 = *(v471 + 4);
  v594[0] = *(v471 + 3);
  v594[1] = v227;
  v595 = v471[10];
  v228 = *(*(*(*(v224 + 40) + 16) + 32) + 16) + 1;
  v226[6] = ecs_stack_allocator_allocate(v471[4], 48 * v228, 8);
  v226[7] = v228;
  v226[9] = 0;
  v226[10] = 0;
  v226[8] = 0;
  v229 = v511;
  v515 = sub_1AF64B110(v506, &off_1F255B808, v511, v222, v223, v226);
  v516 = sub_1AF64B110(v509, &off_1F250F310, v229, v222, v223, v226);
  if (v229)
  {
    if (!v223)
    {
      goto LABEL_315;
    }

    v503 = *(v487 + 72);
    v502 = *(*v463 + 72);
    v480 = v224;
    while (1)
    {
      v232 = *v511;
      v510 = v223;
      ++v511;

      if (*(v224 + 184))
      {
        goto LABEL_324;
      }

      v234 = *(*(v224 + 168) + 4 * v232);
      v235 = *(*(v233 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v234 + 8);

      v236 = v234 == -1 && v235 == 0;
      if (v236 || (v234 & 0x80000000) != 0 || v501[1] <= v234)
      {
        break;
      }

      v237 = *v501 + 12 * v234;
      if (v235 != -1 && *(v237 + 8) != v235)
      {
        break;
      }

      v239 = *(*(*(v478 + 88) + 8 * *(v237 + 6) + 32) + 16);
      v240 = *(v239 + 128);
      if (!*(v240 + 16))
      {
        break;
      }

      v241 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v242 & 1) == 0 || *(*(v239 + 24) + 16 * *(*(v240 + 56) + 8 * v241) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_181:
      v516 = (v516 + v502);
      v515 += v503;
      v223 = v510 - 1;
      if (v510 == 1)
      {
        goto LABEL_314;
      }
    }

    dispatch_group_enter(v518);
    v243 = *(v224 + 64);
    v244 = *(v224 + 80);
    v539 = *(v224 + 112);
    v246 = *(v224 + 80);
    v245 = *(v224 + 96);
    v537 = v244;
    v538 = v245;
    v247 = *(v224 + 64);
    v535 = *(v224 + 48);
    v536 = v243;
    v248 = *(v224 + 96);
    v531 = v246;
    v532 = v248;
    LOBYTE(v533) = *(v224 + 112);
    v529 = *(v224 + 48);
    v530 = v247;
    v249 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v251 = v250;
    v542 = v531;
    v543 = v532;
    v544 = v533;
    v541 = v530;
    v540 = v529;

    sub_1AF5DD36C(&v535, &v524);
    sub_1AF5DD3C8(&v540);
    if (v251)
    {

      v513 = 0;
      v252 = 0;
      v253 = 0;
    }

    else
    {
      v254 = *(v224 + 128);

      v255 = (v254 + v249 + 24 * v232);
      v513 = *v255;
      v252 = *(v255 + 1);
      v253 = *(v255 + 2);
    }

    if (*(v224 + 184))
    {
      goto LABEL_324;
    }

    v512 = v252;
    v257 = *(*(v224 + 168) + 4 * v232);
    v258 = *(*(v256 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v257 + 8);

    v259 = swift_allocObject();
    v259[2] = sub_1AFA9EC2C;
    v259[3] = v30;
    v514 = v259;
    v260 = v517;
    v259[4] = v518;
    v261 = *(v260 + 16);

    if (v261)
    {
      v262 = *(v261 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v263 = v518;

      if ((v262 & 1) == 0 || *(v517 + 3048) != 1)
      {
        sub_1AF81F330();
        v264 = swift_allocError();
        v265 = v264;
        *v266 = v498;
        if (!*(v508 + 16))
        {
          v267 = v489;
          v268 = *(v489 + 72);
          v269 = v264;
          os_unfair_lock_lock(v268);
          v270 = *(v508 + 16);
          *(v508 + 16) = v265;
          v271 = v265;

          os_unfair_lock_unlock(*(v267 + 72));
        }

        dispatch_group_leave(v263);

        goto LABEL_207;
      }
    }

    else
    {
      swift_retain_n();
      v272 = v518;
    }

    v273 = sub_1AFAA8354();
    v274 = v517;
    v275 = v516 + v509[9];
    v276 = *v275;
    LOBYTE(v275) = v275[8];
    v504 = v273;
    v277 = v275 | (v273 != v276);
    os_unfair_lock_lock(*(v517 + 72));
    v278 = *(v274 + 80);
    if (*(v278 + 16) && (v279 = sub_1AF41ACD4(v506, v257 | (v258 << 32)), (v280 & 1) != 0))
    {
      sub_1AF85B3D4(*(v278 + 56) + 96 * v279, &v529);
      if (BYTE8(v534) != 255)
      {
        sub_1AF85B3D4(&v529, &v524);
        sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v523 + 9) = *(v528 + 9);
        v521 = v526;
        v522 = v527;
        v523[0] = v528[0];
        v519 = v524;
        v520 = v525;
        if (!BYTE8(v528[1]))
        {
          v326 = v519;
          v327 = (v519 != v504) | v277;
          os_unfair_lock_unlock(*(v517 + 72));
          if (v327)
          {
            if (v326 == v504)
            {
              v263 = v518;
              dispatch_group_leave(v518);
LABEL_207:

              v30 = v507;
LABEL_179:

              v231 = v512;
              v230 = v513;
LABEL_180:
              sub_1AF487074(v230, v231);
              goto LABEL_181;
            }

LABEL_217:
            v491 = v257;
            v493 = v253;
            v281 = v509;
            v492 = swift_allocBox();
            v283 = v282;
            sub_1AFA5C03C(v282);
            v284 = v283 + *(v281 + 36);
            v285 = v504;
            *v284 = v504;
            *(v284 + 8) = 0;
            sub_1AFA9DE54(v515, v283, type metadata accessor for SimpleScript);
            sub_1AFA9DE54(v283, v516, sub_1AF5B24B4);
            v286 = v517;
            os_unfair_lock_lock(*(v517 + 72));
            *&v529 = v285;
            BYTE8(v534) = 0;
            sub_1AF825824(&v529, v506, v257 | (v258 << 32));
            os_unfair_lock_unlock(*(v286 + 72));
            v287 = *(v286 + 16);

            if (v287)
            {
              v288 = v479;
              v289 = v505;
              (*v496)(v479, v287 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v505);

              (*v481)(v288, 0, 1, v289);
              v290 = v494;
              (*v476)(v494, v288, v289);
            }

            else
            {
              v291 = v479;
              (*v481)(v479, 1, 1, v505);
              v290 = v494;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v292 = sub_1AFDFC538();
              sub_1AF477C68(v292, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v467)(v291, 1, v505) != 1)
              {
                sub_1AFA9C470(v291, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v490 = v258;
            v293 = sub_1AFDFC538();
            sub_1AF477C68(v293, qword_1ED73B608);
            v294 = sub_1AFDFC528();
            v295 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v296 = swift_slowAlloc();
              *v296 = 0;
              v297 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v294, v295, v297, "buildScript", "", v296, 2u);
              MEMORY[0x1B271DEA0](v296, -1, -1);
            }

            (*v496)(v485, v290, v505);
            sub_1AFDFC578();
            swift_allocObject();
            v298 = sub_1AFDFC568();
            sub_1AFA9E3C8(v515, v499, type metadata accessor for SimpleScript);
            v299 = (*(v487 + 80) + 400) & ~*(v487 + 80);
            v300 = (v483 + v299) & 0xFFFFFFFFFFFFFFF8;
            v301 = (v300 + 23) & 0xFFFFFFFFFFFFFFF8;
            v302 = (v301 + 27) & 0xFFFFFFFFFFFFFFF8;
            v303 = swift_allocObject();
            v304 = v506;
            *(v303 + 16) = v517;
            *(v303 + 24) = v304;
            v306 = v490;
            v305 = v491;
            *(v303 + 32) = v491;
            *(v303 + 36) = v306;
            *(v303 + 40) = v504;
            *(v303 + 48) = sub_1AFA9EC20;
            *(v303 + 56) = v514;
            *(v303 + 64) = v298;
            v504 = v298;
            memcpy((v303 + 72), v500, 0x148uLL);
            sub_1AFA9E320(v499, v303 + v299, type metadata accessor for SimpleScript);
            v307 = (v303 + v300);
            v308 = v495;
            *v307 = v484;
            v307[1] = v308;
            v309 = (v303 + v301);
            v310 = v512;
            v311 = v513;
            *v309 = v513;
            v309[1] = v310;
            v309[2] = v493;
            v312 = (v303 + v302);
            *v312 = v305;
            v312[1] = v306;
            *(v303 + ((v302 + 15) & 0xFFFFFFFFFFFFFFF8)) = v492;
            if ((v486 & 1) == 0)
            {
              v490 = *(v517 + 32);
              v320 = swift_allocObject();
              *(v320 + 16) = sub_1AFA9EB84;
              *(v320 + 24) = v303;
              v321 = v320;
              v491 = v320;
              v322 = swift_allocObject();
              *(v322 + 16) = sub_1AFA9EB90;
              *(v322 + 24) = v321;
              *&v526 = sub_1AF6D25EC;
              *(&v526 + 1) = v322;
              *&v524 = MEMORY[0x1E69E9820];
              *(&v524 + 1) = 1107296256;
              *&v525 = sub_1AF6F662C;
              *(&v525 + 1) = &unk_1F255AB80;
              v323 = _Block_copy(&v524);
              v513 = v311;
              v324 = v323;

              sub_1AFA9C054(v500, &v529, &unk_1EB633F38, type metadata accessor for SimpleScript);

              v325 = v512;
              sub_1AF487F80(v311, v512);

              dispatch_sync(v490, v324);
              _Block_release(v324);

              (*v482)(v494, v505);
              swift_isEscapingClosureAtFileLocation();

              v30 = v507;

              sub_1AF487074(v513, v325);
              v224 = v480;
              goto LABEL_181;
            }

            v490 = *(v517 + 40);
            v313 = swift_allocObject();
            *(v313 + 16) = sub_1AFA9EB84;
            *(v313 + 24) = v303;
            v491 = v313;

            sub_1AFA9C054(v500, &v529, &unk_1EB633F38, type metadata accessor for SimpleScript);

            sub_1AF487F80(v311, v310);
            v314 = qword_1ED730EA0;

            v224 = v480;
            if (v314 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v315 = qword_1ED73B8A0;
            v316 = swift_allocObject();
            v317 = v491;
            *(v316 + 16) = sub_1AFA9EB90;
            *(v316 + 24) = v317;
            v318 = swift_allocObject();
            v318[2] = v315;
            v318[3] = sub_1AF6CC3F0;
            v318[4] = v316;
            *&v531 = sub_1AFA9EC30;
            *(&v531 + 1) = v318;
            *&v529 = MEMORY[0x1E69E9820];
            *(&v529 + 1) = 1107296256;
            *&v530 = sub_1AFCDA044;
            *(&v530 + 1) = &unk_1F255AC20;
            v319 = _Block_copy(&v529);
            swift_retain_n();

            [v490 addOperationWithBlock:v319];
            _Block_release(v319);

            (*v482)(v494, v505);

            v30 = v507;

            v231 = v512;
            v230 = v513;
            goto LABEL_180;
          }

LABEL_237:
          v328 = v518;
          v329 = v516;
          sub_1AFA9DE54(v515, v516, type metadata accessor for SimpleScript);
          v330 = v329[5];
          v331 = v509;
          if (v330)
          {
            v332 = v516;
            v333 = v516[1];
            v334 = v516[2];

            v335 = sub_1AF458B0C(v333, v334);
            v330(*(v332 + v331[13]), v335);

            sub_1AF0FB8EC(v330);
          }

          if (*(v516 + v331[10]) == 1)
          {
            v336 = *(v516 + v331[11]);
            v337 = v336;
          }

          else
          {
            sub_1AF81F330();
            v336 = swift_allocError();
            *v338 = v474;
          }

          v30 = v507;
          if (!*(v508 + 16) && v336)
          {
            v339 = v489;
            v340 = *(v489 + 72);
            v341 = v336;
            os_unfair_lock_lock(v340);
            v342 = *(v508 + 16);
            *(v508 + 16) = v336;
            v343 = v336;

            os_unfair_lock_unlock(*(v339 + 72));
          }

          dispatch_group_leave(v328);

          goto LABEL_179;
        }

        sub_1AFA9C0C8(&v519);
LABEL_216:
        os_unfair_lock_unlock(*(v517 + 72));
        if (v277)
        {
          goto LABEL_217;
        }

        goto LABEL_237;
      }
    }

    else
    {
      *&v534 = 0;
      v532 = 0u;
      v533 = 0u;
      v530 = 0u;
      v531 = 0u;
      v529 = 0u;
      BYTE8(v534) = -1;
    }

    sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_216;
  }

  if (v221 == v503)
  {
    goto LABEL_315;
  }

  v344 = *(v487 + 72);
  v493 = *(*v463 + 72);
  v516 = (v516 + v493 * v221);
  v514 = 24 * v221;
  v515 += v344 * v221;
  v475 = v344;
  while (1)
  {

    if (*(v224 + 184))
    {
      break;
    }

    v349 = *(*(v224 + 168) + 4 * v221);
    v350 = *(*(v348 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v349 + 8);

    v351 = v349 == -1 && v350 == 0;
    if (!v351 && (v349 & 0x80000000) == 0 && v501[1] > v349)
    {
      v352 = *v501 + 12 * v349;
      if (v350 == -1 || *(v352 + 8) == v350)
      {
        v354 = *(*(*(v478 + 88) + 8 * *(v352 + 6) + 32) + 16);
        v355 = *(v354 + 128);
        if (*(v355 + 16))
        {
          v356 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v357 & 1) != 0 && *(*(v354 + 24) + 16 * *(*(v355 + 56) + 8 * v356) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_249;
          }
        }
      }
    }

    dispatch_group_enter(v518);
    v358 = *(v224 + 64);
    v359 = *(v224 + 80);
    v539 = *(v224 + 112);
    v361 = *(v224 + 80);
    v360 = *(v224 + 96);
    v537 = v359;
    v538 = v360;
    v362 = *(v224 + 64);
    v535 = *(v224 + 48);
    v536 = v358;
    v363 = *(v224 + 96);
    v531 = v361;
    v532 = v363;
    LOBYTE(v533) = *(v224 + 112);
    v529 = *(v224 + 48);
    v530 = v362;
    v364 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v366 = v365;
    v542 = v531;
    v543 = v532;
    v544 = v533;
    v541 = v530;
    v540 = v529;

    sub_1AF5DD36C(&v535, &v524);
    sub_1AF5DD3C8(&v540);
    if (v366)
    {

      v513 = 0;
      v367 = 0;
      v368 = 0;
    }

    else
    {
      v369 = *(v224 + 128);

      v370 = (v369 + v514 + v364);
      v513 = *v370;
      v367 = *(v370 + 1);
      v368 = *(v370 + 2);
    }

    v511 = v367;

    if (*(v224 + 184))
    {
      break;
    }

    v512 = v368;
    v372 = *(v224 + 168);
    v510 = v221;
    v373 = *(v372 + 4 * v221);
    v504 = *(*(v371 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v373 + 8);

    v374 = swift_allocObject();
    v374[2] = sub_1AFA9EC2C;
    v374[3] = v30;
    v375 = v517;
    v374[4] = v518;
    v376 = *(v375 + 16);

    if (v376)
    {
      v377 = *(v376 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v378 = v518;

      if ((v377 & 1) == 0 || *(v517 + 3048) != 1)
      {
        sub_1AF81F330();
        v379 = swift_allocError();
        v380 = v379;
        *v381 = v498;
        if (!*(v508 + 16))
        {
          v382 = v489;
          v383 = *(v489 + 72);
          v384 = v379;
          os_unfair_lock_lock(v383);
          v385 = *(v508 + 16);
          *(v508 + 16) = v380;
          v386 = v380;

          v344 = v475;
          os_unfair_lock_unlock(*(v382 + 72));
        }

        dispatch_group_leave(v378);

        goto LABEL_275;
      }
    }

    else
    {
      swift_retain_n();
      v387 = v518;
    }

    v388 = v373;
    v389 = sub_1AFAA8354();
    v390 = v517;
    v391 = v516 + v509[9];
    v392 = *v391;
    LOBYTE(v391) = v391[8];
    v502 = v389;
    v393 = v391 | (v389 != v392);
    os_unfair_lock_lock(*(v517 + 72));
    v394 = *(v390 + 80);
    if (!*(v394 + 16) || (v395 = sub_1AF41ACD4(v506, v373 | (v504 << 32)), (v396 & 1) == 0))
    {
      *&v534 = 0;
      v532 = 0u;
      v533 = 0u;
      v530 = 0u;
      v531 = 0u;
      v529 = 0u;
      BYTE8(v534) = -1;
LABEL_283:
      sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_284:
      v397 = v517;
      os_unfair_lock_unlock(*(v517 + 72));
      if ((v393 & 1) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_285;
    }

    sub_1AF85B3D4(*(v394 + 56) + 96 * v395, &v529);
    if (BYTE8(v534) == 255)
    {
      goto LABEL_283;
    }

    sub_1AF85B3D4(&v529, &v524);
    sub_1AFA9BF94(&v529, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v523 + 9) = *(v528 + 9);
    v521 = v526;
    v522 = v527;
    v523[0] = v528[0];
    v519 = v524;
    v520 = v525;
    if (BYTE8(v528[1]))
    {
      sub_1AFA9C0C8(&v519);
      goto LABEL_284;
    }

    v440 = v519;
    v441 = (v519 != v502) | v393;
    v397 = v517;
    os_unfair_lock_unlock(*(v517 + 72));
    if ((v441 & 1) == 0)
    {
LABEL_306:
      v443 = v516;
      sub_1AFA9DE54(v515, v516, type metadata accessor for SimpleScript);
      v444 = v443[5];
      v445 = v509;
      if (v444)
      {
        v446 = v443[1];
        v447 = v516[2];

        v448 = v447;
        v443 = v516;
        v449 = sub_1AF458B0C(v446, v448);
        v444(*(v443 + v445[13]), v449);

        sub_1AF0FB8EC(v444);
      }

      if (*(v443 + v445[10]) == 1)
      {
        v450 = *(v443 + v445[11]);
        v451 = v450;
      }

      else
      {
        sub_1AF81F330();
        v450 = swift_allocError();
        *v452 = v474;
      }

      v30 = v507;
      if (*(v508 + 16) || !v450)
      {
        v345 = v344;
      }

      else
      {
        v345 = v344;
        v453 = v489;
        v454 = *(v489 + 72);
        v455 = v450;
        os_unfair_lock_lock(v454);
        v456 = *(v508 + 16);
        *(v508 + 16) = v450;
        v457 = v450;

        os_unfair_lock_unlock(*(v453 + 72));
      }

      v221 = v510;
      v346 = v511;
      v347 = v518;
      dispatch_group_leave(v518);

      sub_1AF487074(v513, v346);
      v344 = v345;
      goto LABEL_249;
    }

    if (v440 == v502)
    {
      v442 = v518;
      dispatch_group_leave(v518);

      v30 = v507;
LABEL_275:

      goto LABEL_301;
    }

LABEL_285:
    v490 = v373;
    v398 = v509;
    v399 = swift_allocBox();
    v401 = v400;
    sub_1AFA5C03C(v400);
    v402 = v401 + *(v398 + 36);
    v403 = v502;
    *v402 = v502;
    *(v402 + 8) = 0;
    sub_1AFA9DE54(v515, v401, type metadata accessor for SimpleScript);
    sub_1AFA9DE54(v401, v516, sub_1AF5B24B4);
    os_unfair_lock_lock(*(v397 + 72));
    *&v529 = v403;
    BYTE8(v534) = 0;
    sub_1AF825824(&v529, v506, v388 | (v504 << 32));
    os_unfair_lock_unlock(*(v397 + 72));
    v404 = *(v397 + 16);

    if (v404)
    {
      v405 = v466;
      v406 = v505;
      (*v496)(v466, v404 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v505);

      (*v481)(v405, 0, 1, v406);
      (*v476)(v488, v405, v406);
    }

    else
    {
      v407 = v466;
      (*v481)(v466, 1, 1, v505);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v408 = sub_1AFDFC538();
      sub_1AF477C68(v408, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v467)(v407, 1, v505) != 1)
      {
        sub_1AFA9C470(v407, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v491 = v399;
    v492 = v374;
    v409 = sub_1AFDFC538();
    sub_1AF477C68(v409, qword_1ED73B608);
    v410 = sub_1AFDFC528();
    v411 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v412 = swift_slowAlloc();
      *v412 = 0;
      v413 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v410, v411, v413, "buildScript", "", v412, 2u);
      MEMORY[0x1B271DEA0](v412, -1, -1);
    }

    (*v496)(v485, v488, v505);
    sub_1AFDFC578();
    swift_allocObject();
    v414 = sub_1AFDFC568();
    sub_1AFA9E3C8(v515, v499, type metadata accessor for SimpleScript);
    v415 = (*(v487 + 80) + 400) & ~*(v487 + 80);
    v416 = (v483 + v415) & 0xFFFFFFFFFFFFFFF8;
    v417 = (v416 + 23) & 0xFFFFFFFFFFFFFFF8;
    v418 = (v417 + 27) & 0xFFFFFFFFFFFFFFF8;
    v477 = (v418 + 15) & 0xFFFFFFFFFFFFFFF8;
    v419 = swift_allocObject();
    v420 = v506;
    *(v419 + 16) = v517;
    *(v419 + 24) = v420;
    v421 = v490;
    v422 = v504;
    *(v419 + 32) = v490;
    *(v419 + 36) = v422;
    *(v419 + 40) = v502;
    *(v419 + 48) = sub_1AFA9EC20;
    *(v419 + 56) = v492;
    *(v419 + 64) = v414;
    v502 = v414;
    memcpy((v419 + 72), v500, 0x148uLL);
    sub_1AFA9E320(v499, v419 + v415, type metadata accessor for SimpleScript);
    v423 = (v419 + v416);
    v424 = v495;
    *v423 = v484;
    v423[1] = v424;
    v425 = (v419 + v417);
    v426 = v512;
    v427 = v513;
    v428 = v511;
    *v425 = v513;
    v425[1] = v428;
    v425[2] = v426;
    v429 = (v419 + v418);
    *v429 = v421;
    v429[1] = v422;
    *(v419 + v477) = v491;
    if ((v486 & 1) == 0)
    {
      v504 = *(v517 + 32);
      v436 = swift_allocObject();
      *(v436 + 16) = sub_1AFA9D6F4;
      *(v436 + 24) = v419;
      v437 = swift_allocObject();
      *(v437 + 16) = sub_1AFA9EB90;
      *(v437 + 24) = v436;
      *&v526 = sub_1AF6D25EC;
      *(&v526 + 1) = v437;
      *&v524 = MEMORY[0x1E69E9820];
      *(&v524 + 1) = 1107296256;
      *&v525 = sub_1AF6F662C;
      *(&v525 + 1) = &unk_1F255AA18;
      v438 = _Block_copy(&v524);
      v513 = v427;
      v439 = v438;
      v490 = *(&v526 + 1);

      sub_1AFA9C054(v500, &v529, &unk_1EB633F38, type metadata accessor for SimpleScript);

      sub_1AF487F80(v427, v428);

      dispatch_sync(v504, v439);
      _Block_release(v439);

      (*v482)(v488, v505);
      swift_isEscapingClosureAtFileLocation();

      v30 = v507;

      sub_1AF487074(v513, v428);
      v221 = v510;
      v344 = v475;
      goto LABEL_249;
    }

    v504 = *(v517 + 40);
    v430 = swift_allocObject();
    *(v430 + 16) = sub_1AFA9D6F4;
    *(v430 + 24) = v419;

    sub_1AFA9C054(v500, &v529, &unk_1EB633F38, type metadata accessor for SimpleScript);

    sub_1AF487F80(v427, v428);
    v431 = qword_1ED730EA0;

    v344 = v475;
    if (v431 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v432 = qword_1ED73B8A0;
    v433 = swift_allocObject();
    *(v433 + 16) = sub_1AFA9EB90;
    *(v433 + 24) = v430;
    v434 = swift_allocObject();
    v434[2] = v432;
    v434[3] = sub_1AF6CC3F0;
    v434[4] = v433;
    *&v531 = sub_1AFA9EC30;
    *(&v531 + 1) = v434;
    *&v529 = MEMORY[0x1E69E9820];
    *(&v529 + 1) = 1107296256;
    *&v530 = sub_1AFCDA044;
    *(&v530 + 1) = &unk_1F255AAB8;
    v435 = _Block_copy(&v529);
    swift_retain_n();

    [v504 addOperationWithBlock:v435];
    _Block_release(v435);

    (*v482)(v488, v505);

    v30 = v507;

LABEL_301:

    sub_1AF487074(v513, v511);
    v221 = v510;
LABEL_249:
    ++v221;
    v516 = (v516 + v493);
    v514 += 24;
    v515 += v344;
    if (v503 == v221)
    {
LABEL_314:
      v214 = 1;
LABEL_315:
      v458 = v497;
      sub_1AF630994(v471, &v581, v594);
      v497 = v458;
      sub_1AF62D29C(v224);
      ecs_stack_allocator_pop_snapshot(v470);
      if (v469)
      {
        os_unfair_lock_unlock(*(v224 + 344));
        os_unfair_lock_unlock(*(v224 + 376));
      }

      v219 = v468 + 1;
      if (v468 + 1 != v465)
      {
        goto LABEL_172;
      }

      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v214 & 1) == 0)
      {
LABEL_319:
        dispatch_group_leave(v518);
      }

LABEL_318:

      sub_1AFA62400(v459);

      goto LABEL_319;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA7D064(uint64_t a1, uint64_t a2, int a3, unint64_t a4, void *a5, unint64_t a6, uint64_t *a7, uint64_t a8)
{
  v171 = a7;
  v200 = a6;
  v173 = a5;
  LODWORD(v170) = a3;
  sub_1AF5B243C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v169 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetalFunctionScript(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v166 = (&v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AF5B2400(0);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v167 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v159 = &v156 - v26;
  sub_1AF85B3D4(a2, v177);
  if (!v182)
  {
    goto LABEL_123;
  }

  if (v182 == 1)
  {
    v164 = a1;
    v165 = a8;
    v168 = a4;
    v156 = a2;
    v172 = v8;
    sub_1AFA9E8FC(a1, sub_1AF5B243C);
    v157 = v178;
    v162 = v180;
    v163 = v179;
    sub_1AF449D40(v177, v176);
    sub_1AF449D40(&v181, v175);
    v27 = v159;
    v159[16] = 2;
    v28 = v17[6];
    v29 = type metadata accessor for ScriptIndex();
    (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
    v30 = &v27[v17[7]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v27[v17[9]] = 0;
    *&v27[v17[8]] = &unk_1F25030E0;
    *v27 = 0xD000000000000129;
    *(v27 + 1) = 0x80000001AFF455A0;
    v31 = &v27[v14[9]];
    *v31 = 0;
    v31[8] = 1;
    v27[v14[10]] = 0;
    *&v27[v14[11]] = 0;
    v32 = &v27[v14[12]];
    *v32 = 0;
    *(v32 + 1) = 0xE000000000000000;
    *&v27[v14[13]] = MEMORY[0x1E69E7CC0];
    v33 = v21[9];
    v34 = v21[10];
    v35 = v21[11];
    *&v27[v21[12]] = 0;
    v27[v21[13]] = 0;
    v36 = &v27[v21[14]];
    *v36 = 0;
    v36[8] = 1;
    v37 = v21[15];
    v27[v37] = 1;
    sub_1AF0D5A54(v176, &v183);
    sub_1AFA9E8FC(v27, sub_1AF5B243C);
    swift_dynamicCast();
    *&v27[v33] = v157;
    v38 = v163;
    *&v27[v35] = v162;
    *&v27[v34] = v38;
    sub_1AF0D5A54(v175, &v183);

    swift_dynamicCast();
    v27[v37] = 0;
    sub_1AFA9E3C8(v27, v164, sub_1AF5B243C);
    if (v170)
    {
      v39 = v168;
      v40 = *(v168 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v40)
      {
        v41 = *(v40 + 80);
        swift_unknownObjectWeakLoadStrong();
        v40 = *(v40 + 56);
      }

      else
      {
        v41 = 0;
      }

      v45 = v172;
      LODWORD(v172) = v41;
      *(&v184 + 1) = 0;
      swift_unknownObjectUnownedInit();
      v183 = v39;
      *(&v184 + 1) = v40;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      LOBYTE(v185) = v41;
      v170 = sub_1AF5B2400;
      v46 = v159;
      v47 = v167;
      sub_1AFA9E3C8(v159, v167, sub_1AF5B2400);
      v48 = v166;
      sub_1AFA9E3C8(v47, v166, type metadata accessor for MetalFunctionScript);
      sub_1AFA9E8FC(v47, sub_1AF5B2400);
      v43 = v200;
      sub_1AF5ADD18(v48, v200);
      sub_1AFA9E8FC(v48, type metadata accessor for MetalFunctionScript);
      v49 = v169;
      sub_1AFA9E3C8(v46, v169, sub_1AF5B243C);
      sub_1AF5ADEA8(v49, v43);
      sub_1AFA9E8FC(v49, sub_1AF5B243C);
      sub_1AFA9E3C8(v46, v47, v170);
      sub_1AF5AE038(v47, v43);
      v50 = v47;
      v27 = v46;
      v44 = v168;
      sub_1AFA9E8FC(v50, sub_1AF5B2400);
      sub_1AF579490(&v183);
      if (v172)
      {
        v51 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v51 ^ 1);
      }
    }

    else
    {
      v43 = v200;
      v44 = v168;
      sub_1AFBFE0CC(v27, v200);
      v45 = v172;
    }

    *&v185 = v21;
    *(&v185 + 1) = &off_1F2558F90;
    v52 = sub_1AF585714(&v183);
    sub_1AFA9E3C8(v27, v52, sub_1AF5B2400);
    LOBYTE(v186) = 0;
    sub_1AF8259D0(&v183, v173, v43);
    v53 = sub_1AF3CB4D0(v43);
    a2 = v156;
    if (v53)
    {
      sub_1AFD08440(v44, v53, v54);
    }

    sub_1AF0D5A54(v175, &v183);
    if (swift_dynamicCast())
    {
      v55 = *&v198[0];

      v183 = MEMORY[0x1E69E7CC0];
      *&v184 = MEMORY[0x1E69E7CC0];
      sub_1AFD5541C(v44, v55);

      v56 = v200;
      sub_1AFBFE0E4(v183, v184, v200);

      v57 = v56;
      v27 = v159;
      v44 = v168;
    }

    else
    {
      sub_1AF0D5A54(v175, &v183);
      if (swift_dynamicCast())
      {
      }

      v57 = v200;
    }

    sub_1AF678B44(v57);
    v58 = *(v165 + 304);
    v196[0] = *(v165 + 288);
    v196[1] = v58;
    v197 = *(v165 + 320);
    sub_1AF6B06C0(v44, v196, 0x200000000, &v183);
    v166 = v183;
    if (!v183)
    {
      goto LABEL_122;
    }

    v165 = v186;
    v191 = v184;
    v192 = v185;
    if (v190 <= 0 || !v187)
    {
LABEL_121:
      sub_1AFA9BF94(&v183, &qword_1ED725EA0, &type metadata for QueryResult);
      a2 = v156;
      v27 = v159;
LABEL_122:

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v175);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v176);
      sub_1AFA9E8FC(v27, sub_1AF5B2400);
      goto LABEL_123;
    }

    v59 = 0;
    v163 = HIDWORD(v200);
    v60 = v189[4];
    LODWORD(v170) = *(v188 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v173 = (v44 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v167 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v164 = v187;
    v171 = v189;
    v162 = v60;
    while (1)
    {
      v172 = v45;
      v61 = (v165 + 48 * v59);
      v62 = *v61;
      v63 = v61[1];
      v65 = *(v61 + 2);
      v64 = *(v61 + 3);
      v67 = *(v61 + 4);
      v66 = *(v61 + 5);
      v169 = v59;
      if (v170)
      {
        v68 = *(v66 + 376);

        os_unfair_lock_lock(v68);
        os_unfair_lock_lock(*(v66 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v60);
      v69 = v171;
      v70 = *(v171 + 4);
      v198[0] = *(v171 + 3);
      v198[1] = v70;
      v199 = v171[10];
      v71 = *(*(*(*(v66 + 40) + 16) + 32) + 16) + 1;
      v69[6] = ecs_stack_allocator_allocate(v171[4], 48 * v71, 8);
      v69[7] = v71;
      v69[9] = 0;
      v69[10] = 0;
      v69[8] = 0;
      v72 = sub_1AF64B110(&type metadata for TextureShaderAsset, &off_1F2543F30, v65, v64, v67, v69);
      if (v65)
      {
        v73 = v200;
        v74 = v163;
        if (v67)
        {
          v75 = 0;
          while (1)
          {
            v76 = (v72 + 112 * v75);
            v78 = *v76;
            v77 = v76[1];
            if (v78 == v73 && v77 == v74)
            {
              v80 = v65[v75];

              if (*(v66 + 184))
              {
                goto LABEL_126;
              }

              v82 = *(*(v66 + 168) + 4 * v80);
              v83 = *(*(v81 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v82 + 8);

              if (v82 != -1 || v83 != 0)
              {
                v73 = v200;
                if ((v82 & 0x80000000) != 0 || v173[1] <= v82)
                {
                  goto LABEL_31;
                }

                v85 = (*v173 + 12 * v82);
                if (v83 != -1 && v85[2] != v83)
                {
                  goto LABEL_31;
                }

                v87 = *(*(v168 + 144) + 8 * *v85 + 32);
                v88 = thread_worker_index();
                if (*v88 == -1)
                {
                  v91 = *(v89 + v167);
                }

                else
                {
                  v91 = (*(v89 + v167) + 8 * *v88 + 8);
                }

                v92 = *v91;
                v93 = *(v87 + 192);
                if (v93)
                {
                  v94 = *(v87 + 208);
                  *(v93 + 8 * (v90 >> 6)) |= 1 << v90;
                  *(v94 + 8 * (v90 >> 6)) &= ~(1 << v90);
                }

                if (*(*(v87 + 40) + 213) != 1)
                {
                  goto LABEL_31;
                }

                v95 = *(v87 + 48);
                v96 = (v95 + 32);
                v97 = *(v95 + 16) + 1;
                v158 = v92;
                v161 = v90;
                while (--v97)
                {
                  v98 = v96 + 5;
                  v99 = *v96;
                  v96 += 5;
                  if (v99 == &type metadata for PropagateDirtiness)
                  {
                    v160 = *(v98 - 2);
                    goto LABEL_60;
                  }
                }

                v160 = 0;
LABEL_60:
                v100 = *(v87 + 128);
                v101 = *(v87 + 184);

                if (v101)
                {
                  goto LABEL_126;
                }

                v103 = *(*(v87 + 168) + 4 * v161);
                v104 = (v100 + v160 + 8 * v161);
                v161 = *(*(v102 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v103 + 8);

                v105 = *v104;
                v106 = v104[1];
                if (v105 != -1 || v106 != 0)
                {
                  sub_1AF70D248(v174, v103 | (v161 << 32), v105 | (v106 << 32));
                }
              }

              v73 = v200;
            }

LABEL_31:
            if (++v75 == v67)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_67;
      }

      v108 = v200;
      v109 = v163;
      if (v62 != v63)
      {
        break;
      }

LABEL_67:
      v193 = v166;
      v194 = v191;
      v195 = v192;
      v111 = v171;
      v110 = v172;
      sub_1AF630994(v171, &v193, v198);
      v45 = v110;
      if (*(v111[13] + 16))
      {

        sub_1AF62F348(v112, v66);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = v111[13];
        if (isUniquelyReferenced_nonNull_native)
        {
          v115 = v114[2];
          v116 = swift_isUniquelyReferenced_nonNull_native();
          v111[13] = v114;
          if ((v116 & 1) == 0)
          {
            v114 = sub_1AF420EA0(0, v115, 1, v114);
            v111[13] = v114;
          }

          sub_1AF43A540(0);
          swift_arrayDestroy();
          if (v115)
          {
            v117 = v114[2] - v115;
            memmove(v114 + 4, &v114[9 * v115 + 4], 72 * v117);
            v114[2] = v117;
          }

          v111[13] = v114;
        }

        else
        {
          v150 = MEMORY[0x1E69E7CC0];
          if (v114[3] >= 2uLL)
          {
            sub_1AF0D0FCC(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
            v150 = swift_allocObject();
            v151 = j__malloc_size_0(v150);
            v150[2] = 0;
            v150[3] = 2 * ((v151 - 32) / 72);
          }

          v111[13] = v150;
        }

        if (*(v111[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
        {
          v152 = *(v66 + 232);
          v153 = *(v66 + 256);
          if (v152 == v153)
          {
            v154 = *(v66 + 240);
          }

          else
          {
            sub_1AF6497A0(v153, v152);
            v153 = *(v66 + 232);
            v154 = *(v66 + 240);
            if (v154 == v153)
            {
              v154 = 0;
              v153 = 0;
              *(v66 + 232) = 0;
              *(v66 + 240) = 0;
            }
          }

          *(v66 + 248) = v154;
          *(v66 + 256) = v153;
        }
      }

      v60 = v162;
      ecs_stack_allocator_pop_snapshot(v162);
      if (v170)
      {
        os_unfair_lock_unlock(*(v66 + 344));
        os_unfair_lock_unlock(*(v66 + 376));
      }

      v59 = v169 + 1;
      if (v169 + 1 == v164)
      {
        goto LABEL_121;
      }
    }

    while (1)
    {
      v118 = (v72 + 112 * v62);
      v120 = *v118;
      v119 = v118[1];
      if (v120 == v108 && v119 == v109)
      {

        if (*(v66 + 184))
        {
          goto LABEL_126;
        }

        v123 = *(*(v66 + 168) + 4 * v62);
        v124 = *(*(v122 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v123 + 8);

        if (v123 != -1 || v124 != 0)
        {
          v108 = v200;
          if ((v123 & 0x80000000) != 0 || v173[1] <= v123)
          {
            goto LABEL_75;
          }

          v126 = (*v173 + 12 * v123);
          if (v124 != -1 && v126[2] != v124)
          {
            goto LABEL_75;
          }

          v128 = *(v126 + 2);
          v129 = *(*(v168 + 144) + 8 * *v126 + 32);
          v130 = thread_worker_index();
          if (*v130 == -1)
          {
            v132 = *(v131 + v167);
          }

          else
          {
            v132 = (*(v131 + v167) + 8 * *v130 + 8);
          }

          v133 = *v132;
          v134 = *(v129 + 192);
          if (v134)
          {
            v135 = *(v129 + 208);
            *(v134 + 8 * (v128 >> 6)) |= 1 << v128;
            *(v135 + 8 * (v128 >> 6)) &= ~(1 << v128);
          }

          if (*(*(v129 + 40) + 213) != 1)
          {
            goto LABEL_75;
          }

          v136 = *(v129 + 48);
          v137 = (v136 + 32);
          v138 = *(v136 + 16) + 1;
          v160 = v133;
          while (--v138)
          {
            v139 = v137 + 5;
            v140 = *v137;
            v137 += 5;
            if (v140 == &type metadata for PropagateDirtiness)
            {
              v161 = *(v139 - 2);
              goto LABEL_104;
            }
          }

          v161 = 0;
LABEL_104:
          v141 = *(v129 + 128);
          v142 = *(v129 + 184);

          if (v142)
          {
LABEL_126:
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v144 = *(*(v129 + 168) + 4 * v128);
          v145 = (v141 + v161 + 8 * v128);
          v146 = *(*(v143 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v144 + 8);

          v147 = *v145;
          v148 = v145[1];
          if (v147 != -1 || v148 != 0)
          {
            sub_1AF70D248(v174, v144 | (v146 << 32), v147 | (v148 << 32));
          }
        }

        v108 = v200;
      }

LABEL_75:
      if (++v62 == v63)
      {
        goto LABEL_67;
      }
    }
  }

  sub_1AFA9E8FC(a1, sub_1AF5B243C);

  sub_1AF449D40(v177, v198);
  sub_1AF0D5A54(v198, &v183);
  swift_dynamicCast();
  *&v185 = v14;
  *(&v185 + 1) = &off_1F250F310;
  v42 = sub_1AF585714(&v183);
  sub_1AFA9E3C8(a1, v42, sub_1AF5B243C);
  LOBYTE(v186) = 1;
  sub_1AF8259D0(&v183, v173, v200);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v198);
LABEL_123:
  result = sub_1AF85B3D4(a2, v177);
  if (v182)
  {
    return sub_1AFA9C0C8(v177);
  }

  return result;
}

uint64_t sub_1AFA7E0B4(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v42 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v43 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v44);
        if (v45 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for MetalFunctionScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v42[1] <= v16 || (v15 != -1 ? (v18 = *(*v42 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v42 + 12 * v16), sub_1AF5B243C(0), v20 = *(*(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v44);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v43 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA7D064(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v44, a2 & 1, v43, v14, v16 | (v15 << 32), a1, v41);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF456D0);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v44);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for MetalFunctionScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA7E50C(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v493) = a6;
  v491 = a2;
  v492 = a5;
  v487 = a4;
  v498 = 0;
  v510 = type metadata accessor for MetalFunctionScript(0);
  v488 = *(v510 - 8);
  MEMORY[0x1EEE9AC00](v510, v13);
  v484 = v14;
  v500 = &v463 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v467 = &v463 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v480 = &v463 - v20;
  v21 = sub_1AFDFC4F8();
  v483 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v489 = &v463 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v486 = &v463 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v495 = &v463 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = *(a1 + 16);

  v508 = a8;

  v490 = a9;

  dispatch_group_enter(a3);
  v32 = *(a7 + 184);
  v593[0] = *(a7 + 168);
  v593[1] = v32;
  v594 = *(a7 + 25);
  v33 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v479 = v31;
  sub_1AF6B06C0(v31, v593, 0x200000000, v552);
  v518 = a1;
  v519 = a3;
  v506 = v21;
  v507 = v30;
  v501 = a7;
  v494 = v33;
  if (*&v552[0])
  {
    if (v556 >= 1)
    {
      if (*(&v554 + 1))
      {
        v34 = *(&v553 + 1);
        v35 = *(&v555 + 1);
        v36 = *(&v553 + 1) + 48 * *(&v554 + 1);
        sub_1AF5B243C(0);
        v512 = v37;
        v532 = v553;
        v533 = v554;
        v534 = v555;
        v535 = v556;
        v530 = v552[0];
        v531 = v552[1];
        sub_1AF5DD298(&v530, &v599);
        v516 = v35;
        v497 = v36;
        do
        {
          v38 = *(v34 + 40);
          v39 = *(v38 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v39);
          os_unfair_lock_lock(*(v38 + 344));
          v40 = *(v38 + 24);

          v601 = 0;
          v599 = 0u;
          v600 = 0u;
          memset(v575, 0, 40);
          v41 = sub_1AF65A4B4(v40, v512, &off_1F250F310, 0, 0, &v599, v575);

          sub_1AFA9E8FC(v575, sub_1AF5C4448);
          sub_1AFA9E8FC(&v599, sub_1AF5C4448);
          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v41);
          }

          else
          {
            v511 = v34;
            v43 = *(v38 + 232);
            v42 = *(v38 + 240);
            v44 = *(v38 + 120);
            v502 = *(v38 + 28);
            v45 = *(v38 + 32);
            v517 = *(v38 + 16);
            v46 = *(v38 + 40);
            v47 = v46[200];
            v48 = *(v517[11] + 8 * v41 + 32);

            if ((v47 & 1) != 0 || *(v48 + 200) == 1)
            {
              *(v517 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v46 = *(v38 + 40);
            }

            v49 = v46[212];
            LODWORD(v509) = v44;
            LODWORD(v503) = v41;
            if (v49)
            {
              LODWORD(v505) = 0;
            }

            else
            {
              LODWORD(v505) = *(v48 + 212);
            }

            LODWORD(v504) = v46[208];
            v515 = *(v38 + 128);
            v50 = *(v38 + 256);
            v51 = v42;
            v52 = v498;
            sub_1AF5B4FCC(v46, v43, v51, 0, v38);
            v498 = v52;
            v513 = *(v38 + 256);
            v514 = v50;
            v53 = v513 - v50;
            if (v513 == v50)
            {
              v54 = 0;
            }

            else
            {
              v54 = v50;
            }

            *&v575[0] = v54;
            v55 = *(*(v38 + 40) + 24);
            v56 = *(v55 + 16);
            if (v56)
            {
              LODWORD(v499) = v45;
              v57 = v55 + 32;

              v58 = 0;
              v59 = v48;
              do
              {
                v60 = v57 + 40 * v58;
                if ((*(v60 + 32) & 1) == 0)
                {
                  v61 = *(v59 + 24);
                  v62 = *(v61 + 16);
                  if (v62)
                  {
                    v63 = (v61 + 32);
                    while (*v63 != *v60)
                    {
                      v63 += 5;
                      if (!--v62)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8();
                    v59 = v48;
                  }
                }

                ++v58;
              }

              while (v58 != v56);

              LOBYTE(v45) = v499;
            }

            if (*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v38 + 72) * v53);
            }

            if (*(v38 + 184))
            {
              v64 = 0;
            }

            else
            {
              v64 = *(v38 + 168);
            }

            *&v570[0] = 0;

            DWORD2(v600) = -1;
            v601 = v514;
            v602 = v513;
            v603 = v514;
            v604 = v513;
            *&v599 = v514;
            *(&v599 + 1) = v513;
            *&v600 = v64;
            if (v53 < 1)
            {
            }

            else
            {
              *&v499 = &v463;

              v65 = v48;

              v66 = v509;
              v67 = v505;
              v68 = v502;
              v69 = v503;
              v70 = v504;
              v71 = v515;
              do
              {

                LOBYTE(v562) = v45;
                LOBYTE(v462) = v70;
                sub_1AF626158(v69, v68 | (v45 << 32), v66, v517, &v599, v68 | (v45 << 32), v38, v65, 0, 0, 0, 0, v575, v71, v570, v462, v69, v67, v516);
              }

              while ((*(&v599 + 1) - v599) > 0);
            }

            v72 = *(v38 + 192);
            v30 = v507;
            v34 = v511;
            if (v72)
            {
              v73 = *(v38 + 208);
              v74 = v514;
              v75 = v513;
              sub_1AF75D364(v514, v513, v72);
              sub_1AF75D364(v74, v75, v73);
            }

            v36 = v497;
          }

          v34 += 48;
          os_unfair_lock_unlock(*(v38 + 344));
          os_unfair_lock_unlock(*(v38 + 376));
        }

        while (v34 != v36);
        sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
        v76 = 1;
        a7 = v501;
      }

      else
      {
        sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
        v76 = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v76 = 0;
LABEL_44:
  v77 = a7[4];
  v591[0] = a7[3];
  v591[1] = v77;
  v592 = *(a7 + 10);
  sub_1AF6B06C0(v479, v591, 0x200000000, v557);
  if (*&v557[0])
  {
    if (v561 >= 1 && *(&v559 + 1))
    {
      v78 = *(&v558 + 1);
      v79 = *(&v560 + 1);
      v80 = *(&v558 + 1) + 48 * *(&v559 + 1);
      sub_1AF5B2400(0);
      v512 = v81;
      v532 = v558;
      v533 = v559;
      v534 = v560;
      v535 = v561;
      v530 = v557[0];
      v531 = v557[1];
      sub_1AF5DD298(&v530, &v599);
      v516 = v79;
      v497 = v80;
      do
      {
        v82 = *(v78 + 40);
        v83 = *(v82 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v83);
        os_unfair_lock_lock(*(v82 + 344));
        v84 = *(v82 + 24);

        v601 = 0;
        v599 = 0u;
        v600 = 0u;
        memset(v575, 0, 40);
        v85 = sub_1AF65A4B4(v84, 0, 0, v512, &off_1F2558F90, &v599, v575);

        sub_1AFA9E8FC(v575, sub_1AF5C4448);
        sub_1AFA9E8FC(&v599, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v85);
        }

        else
        {
          v511 = v78;
          v87 = *(v82 + 232);
          v86 = *(v82 + 240);
          v88 = *(v82 + 120);
          v502 = *(v82 + 28);
          v89 = *(v82 + 32);
          v517 = *(v82 + 16);
          v90 = *(v82 + 40);
          v91 = v90[200];
          v92 = *(v517[11] + 8 * v85 + 32);

          if ((v91 & 1) != 0 || *(v92 + 200) == 1)
          {
            *(v517 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v90 = *(v82 + 40);
          }

          v93 = v90[212];
          LODWORD(v509) = v88;
          LODWORD(v503) = v85;
          if (v93)
          {
            LODWORD(v505) = 0;
          }

          else
          {
            LODWORD(v505) = *(v92 + 212);
          }

          LODWORD(v504) = v90[208];
          v515 = *(v82 + 128);
          v94 = *(v82 + 256);
          v95 = v86;
          v96 = v498;
          sub_1AF5B4FCC(v90, v87, v95, 0, v82);
          v498 = v96;
          v513 = *(v82 + 256);
          v514 = v94;
          v97 = v513 - v94;
          if (v513 == v94)
          {
            v98 = 0;
          }

          else
          {
            v98 = v94;
          }

          *&v575[0] = v98;
          v99 = *(*(v82 + 40) + 24);
          v100 = *(v99 + 16);
          if (v100)
          {
            LODWORD(v499) = v89;
            v101 = v99 + 32;

            v102 = 0;
            v103 = v92;
            do
            {
              v104 = v101 + 40 * v102;
              if ((*(v104 + 32) & 1) == 0)
              {
                v105 = *(v103 + 24);
                v106 = *(v105 + 16);
                if (v106)
                {
                  v107 = (v105 + 32);
                  while (*v107 != *v104)
                  {
                    v107 += 5;
                    if (!--v106)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8();
                  v103 = v92;
                }
              }

              ++v102;
            }

            while (v102 != v100);

            LOBYTE(v89) = v499;
          }

          if (*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v82 + 72) * v97);
          }

          if (*(v82 + 184))
          {
            v108 = 0;
          }

          else
          {
            v108 = *(v82 + 168);
          }

          *&v570[0] = 0;

          DWORD2(v600) = -1;
          v601 = v514;
          v602 = v513;
          v603 = v514;
          v604 = v513;
          *&v599 = v514;
          *(&v599 + 1) = v513;
          *&v600 = v108;
          if (v97 < 1)
          {
          }

          else
          {
            *&v499 = &v463;

            v109 = v92;

            v110 = v509;
            v111 = v505;
            v112 = v502;
            v113 = v503;
            v114 = v504;
            v115 = v515;
            do
            {

              LOBYTE(v562) = v89;
              LOBYTE(v462) = v114;
              sub_1AF626158(v113, v112 | (v89 << 32), v110, v517, &v599, v112 | (v89 << 32), v82, v109, 0, 0, 0, 0, v575, v115, v570, v462, v113, v111, v516);
            }

            while ((*(&v599 + 1) - v599) > 0);
          }

          v116 = *(v82 + 192);
          v30 = v507;
          v78 = v511;
          if (v116)
          {
            v117 = *(v82 + 208);
            v118 = v514;
            v119 = v513;
            sub_1AF75D364(v514, v513, v116);
            sub_1AF75D364(v118, v119, v117);
          }

          v80 = v497;
        }

        v78 += 48;
        os_unfair_lock_unlock(*(v82 + 344));
        os_unfair_lock_unlock(*(v82 + 376));
      }

      while (v78 != v80);
      sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v501;
    }

    else
    {
      sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  v120 = *(a7 + 104);
  v589[0] = *(a7 + 88);
  v589[1] = v120;
  v590 = *(a7 + 15);
  sub_1AF6B06C0(v479, v589, 0x200000000, &v562);
  LODWORD(v497) = v76;
  if (v562)
  {
    v512 = v569;
    v121 = v498;
    if (v569 >= 1)
    {
      v511 = v566;
      if (v566)
      {
        v122 = 0;
        v509 = v565;
        v505 = v567;
        v123 = *(&v567->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v516 = v568[4];
        v517 = v568;
        v579 = v562;
        v580 = v563;
        v581 = v564;
        LODWORD(v504) = v123;
        do
        {
          v498 = v121;
          v515 = v122;
          v124 = &v509[12 * v122];
          v125 = *v124;
          v126 = v124[1];
          v127 = v124[2];
          v128 = *(v124 + 2);
          v129 = *(v124 + 3);
          v131 = *(v124 + 4);
          v130 = *(v124 + 5);
          if (v123)
          {
            v132 = *(v130 + 376);

            os_unfair_lock_lock(v132);
            os_unfair_lock_lock(*(v130 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v516);
          v133 = v517;
          v134 = *(v517 + 4);
          v597[0] = *(v517 + 3);
          v597[1] = v134;
          v598 = v517[10];
          v135 = *(*(*(*(v130 + 40) + 16) + 32) + 16) + 1;
          v133[6] = ecs_stack_allocator_allocate(v517[4], 48 * v135, 8);
          v133[7] = v135;
          v133[9] = 0;
          v133[10] = 0;
          v133[8] = 0;
          LOBYTE(v530) = 1;
          *&v599 = v505;
          *(&v599 + 1) = v130;
          *&v600 = v133;
          *(&v600 + 1) = v127;
          v601 = (v126 - v125 + v127);
          v602 = v512;
          v603 = v125;
          v604 = v126;
          v605 = 0;
          v606 = 0;
          v607 = 1;
          v608 = v128;
          v609 = v129;
          v610 = v131;
          v136 = v498;
          v137 = sub_1AF706EB8(v130, &v599);
          v138 = v608;
          v514 = v136;
          if (v608)
          {
            v139 = v610;
            if (v610)
            {
              v513 = v600;
              v140 = (v137 + 8);
              do
              {
                v138 += 8;
                v141 = *(v140 - 1);
                v142 = *v140;

                sub_1AFD08440(v143, v141, v142);

                sub_1AF6FCEB8(0);
                v145 = *(*(v130 + 40) + 16);
                v146 = *(v145 + 128);
                if (*(v146 + 16))
                {
                  v147 = v144;
                  v148 = sub_1AF449CB8(v144);
                  if ((v149 & 1) != 0 && *(*(v145 + 24) + 16 * *(*(v146 + 56) + 8 * v148) + 32) == v147)
                  {
                    *&v530 = v147;
                    *(&v530 + 1) = &off_1F2559388;
                    BYTE8(v532) = 1;
                    MEMORY[0x1EEE9AC00](v148, v149);
                    v462 = v130;

                    sub_1AF63023C(0, v130, sub_1AFA9EC24);

                    sub_1AF635250(&v530);
                  }
                }

                v140 += 2;
                --v139;
              }

              while (v139);
            }
          }

          else
          {
            v150 = v603;
            v151 = v604;
            if (v603 != v604)
            {
              v152 = (v137 + 16 * v603 + 8);
              do
              {
                v153 = *(v152 - 1);
                v154 = *v152;

                sub_1AFD08440(v155, v153, v154);

                sub_1AF6FCEB8(0);
                v157 = *(*(v130 + 40) + 16);
                v158 = *(v157 + 128);
                if (*(v158 + 16))
                {
                  v159 = v156;
                  v160 = sub_1AF449CB8(v156);
                  if ((v161 & 1) != 0 && *(*(v157 + 24) + 16 * *(*(v158 + 56) + 8 * v160) + 32) == v159)
                  {
                    *&v530 = v159;
                    *(&v530 + 1) = &off_1F2559388;
                    BYTE8(v532) = 1;
                    MEMORY[0x1EEE9AC00](v160, v161);
                    v462 = v130;

                    sub_1AF63023C(0, v130, sub_1AFA9EC24);

                    sub_1AF635250(&v530);
                  }
                }

                ++v150;
                v152 += 2;
              }

              while (v151 != v150);
            }
          }

          v121 = v514;
          sub_1AF630994(v517, &v579, v597);
          sub_1AF62D29C(v130);
          ecs_stack_allocator_pop_snapshot(v516);
          v123 = v504;
          if (v504)
          {
            os_unfair_lock_unlock(*(v130 + 344));
            os_unfair_lock_unlock(*(v130 + 376));
          }

          v122 = v515 + 1;
        }

        while (v515 + 1 != v511);
      }
    }

    sub_1AFA9BF94(&v562, &qword_1ED725EA0, &type metadata for QueryResult);
    v30 = v507;
  }

  else
  {
    v121 = v498;
  }

  v162 = v501[9];
  v587[0] = v501[8];
  v587[1] = v162;
  v588 = *(v501 + 20);
  sub_1AF6B06C0(v479, v587, 0x200000000, v570);
  if (*&v570[0])
  {
    v163 = v574;
    if (v574 >= 1 && *(&v572 + 1))
    {
      v485 = v574;
      v164 = *(&v571 + 1);
      v516 = *(&v573 + 1);
      v165 = *(&v571 + 1) + 48 * *(&v572 + 1);
      sub_1AF5B243C(0);
      v512 = v166;
      v532 = v571;
      v533 = v572;
      v534 = v573;
      v535 = v574;
      v530 = v570[0];
      v531 = v570[1];
      sub_1AF5DD298(&v530, v575);
      v496 = v165;
      do
      {
        v167 = *(v164 + 40);
        v168 = *(v167 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v168);
        os_unfair_lock_lock(*(v167 + 344));
        v169 = *(v167 + 24);

        memset(v575, 0, 40);
        *&v548 = 0;
        v547 = 0u;
        v546 = 0u;
        v170 = sub_1AF65A4B4(v169, 0, 0, v512, &off_1F250F310, v575, &v546);

        sub_1AFA9E8FC(&v546, sub_1AF5C4448);
        sub_1AFA9E8FC(v575, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v170);
        }

        else
        {
          v511 = v164;
          v498 = v121;
          v172 = *(v167 + 232);
          v171 = *(v167 + 240);
          LODWORD(v509) = *(v167 + 120);
          v503 = *(v167 + 28);
          v173 = *(v167 + 32);
          v174 = *(v167 + 16);
          v175 = *(v167 + 40);
          v176 = v175[200];

          if ((v176 & 1) != 0 || *(v177 + 200) == 1)
          {
            *(v174 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v175 = *(v167 + 40);
          }

          v178 = v175[212];
          v179 = v177;
          v517 = v174;
          LODWORD(v504) = v170;
          if (v178)
          {
            LODWORD(v505) = 0;
          }

          else
          {
            LODWORD(v505) = *(v177 + 212);
          }

          v180 = v175[208];
          v515 = *(v167 + 128);
          v181 = *(v167 + 256);
          v182 = v171;
          v183 = v498;
          sub_1AF5B4FCC(v175, v172, v182, 0, v167);
          v498 = v183;
          v513 = *(v167 + 256);
          v514 = v181;
          v184 = v513 - v181;
          if (v513 == v181)
          {
            v185 = 0;
          }

          else
          {
            v185 = v181;
          }

          *&v546 = v185;
          v186 = *(*(v167 + 40) + 24);
          v187 = *(v186 + 16);
          if (v187)
          {
            LODWORD(v499) = v173;
            LODWORD(v502) = v180;
            v188 = v186 + 32;

            v189 = 0;
            v190 = v184;
            v191 = v179;
            do
            {
              v192 = v188 + 40 * v189;
              if ((*(v192 + 32) & 1) == 0)
              {
                v193 = *(v191 + 24);
                v194 = *(v193 + 16);
                if (v194)
                {
                  v195 = (v193 + 32);
                  while (*v195 != *v192)
                  {
                    v195 += 5;
                    if (!--v194)
                    {
                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:
                  sub_1AF640BC8();
                  v191 = v179;
                  v190 = v184;
                }
              }

              ++v189;
            }

            while (v189 != v187);
            v184 = v190;

            LOBYTE(v180) = v502;
            LOBYTE(v173) = v499;
          }

          if (*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v167 + 72) * v184);
          }

          if (*(v167 + 184))
          {
            v196 = 0;
          }

          else
          {
            v196 = *(v167 + 168);
          }

          *&v525 = 0;

          *&v575[1] = v196;
          DWORD2(v575[1]) = -1;
          *&v575[2] = v514;
          *(&v575[2] + 1) = v513;
          *&v576 = v514;
          *(&v576 + 1) = v513;
          *&v575[0] = v514;
          *(&v575[0] + 1) = v513;
          if (v184 < 1)
          {
          }

          else
          {
            v502 = &v463;

            v197 = v179;

            v198 = v509;
            v199 = v503;
            v200 = v504;
            v201 = v180;
            v202 = v505;
            v203 = v515;
            do
            {

              LOBYTE(v520) = v173;
              LOBYTE(v462) = v201;
              sub_1AF626158(v200, v199 | (v173 << 32), v198, v517, v575, v199 | (v173 << 32), v167, v197, 0, 0, 0, 0, &v546, v203, &v525, v462, v200, v202, v516);
            }

            while ((*(&v575[0] + 1) - *&v575[0]) > 0);
          }

          v204 = *(v167 + 192);
          v30 = v507;
          v121 = v498;
          if (v204)
          {
            v205 = *(v167 + 208);
            v207 = v513;
            v206 = v514;
            sub_1AF75D364(v514, v513, v204);
            sub_1AF75D364(v206, v207, v205);
          }

          v164 = v511;
          v165 = v496;
        }

        v164 += 48;
        os_unfair_lock_unlock(*(v167 + 344));
        os_unfair_lock_unlock(*(v167 + 376));
      }

      while (v164 != v165);
      sub_1AFA9BF94(v570, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v570, &qword_1ED725EA0, &type metadata for QueryResult);
      v163 = v485;
    }

    else
    {
      sub_1AFA9BF94(v570, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v208 = v497;
    if (v163 > 0)
    {
      v208 = 1;
    }

    LODWORD(v497) = v208;
  }

  if (v491)
  {
    sub_1AFA61FF8(v518, v491, sub_1AFD2EFAC);
    LODWORD(v497) = v497 | v209;
  }

  v498 = v121;
  if (v492)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v211 = v518;
  v212 = sub_1AFA7E0B4(v518, v493 & 1);

  v213 = *(v211 + 16);

  if (v213)
  {
    v485 = sub_1AF8BB88C();
    v496 = v214;
  }

  else
  {
    v485 = 0;
    v496 = 0xE000000000000000;
  }

  v215 = v497 | v212;
  v216 = v501[14];
  v585[0] = v501[13];
  v585[1] = v216;
  v586 = *(v501 + 30);
  sub_1AF6B06C0(v479, v585, 0x200000000, v575);
  v217 = *&v575[0];
  if (!*&v575[0])
  {

    if ((v215 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v578 <= 0 || (v466 = *(&v576 + 1)) == 0)
  {

    sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v215 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v465 = *(&v575[2] + 1);
  v472 = *(&v577 + 1);
  v471 = *(*(&v577 + 1) + 32);
  v470 = *(v577 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B243C(0);
  v219 = v218;
  v582 = v217;
  v583 = *(v575 + 8);
  v584 = *(&v575[1] + 8);
  v502 = (v479 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v548 = v575[2];
  v549 = v576;
  v550 = v577;
  v551 = v578;
  v546 = v575[0];
  v547 = v575[1];
  sub_1AF5DD298(&v546, &v530);
  v220 = 0;
  v509 = v219;
  v464 = v219 - 8;
  v497 = (v483 + 2);
  v477 = (v483 + 4);
  v468 = (v483 + 6);
  v484 += 7;
  v474 = &v526;
  v482 = (v483 + 7);
  ++v483;
  v473 = &v531;
  v475 = xmmword_1AFE21110;
  v499 = xmmword_1AFE72020;
LABEL_171:
  v469 = v220;
  v221 = (v465 + 48 * v220);
  v222 = *v221;
  v504 = v221[1];
  v223 = *(v221 + 3);
  v512 = *(v221 + 2);
  v224 = *(v221 + 4);
  v225 = *(v221 + 5);
  if (v470)
  {
    v226 = *(v225 + 376);

    os_unfair_lock_lock(v226);
    os_unfair_lock_lock(*(v225 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v471);
  v227 = v472;
  v228 = *(v472 + 4);
  v595[0] = *(v472 + 3);
  v595[1] = v228;
  v596 = v472[10];
  v229 = *(*(*(*(v225 + 40) + 16) + 32) + 16) + 1;
  v227[6] = ecs_stack_allocator_allocate(v472[4], 48 * v229, 8);
  v227[7] = v229;
  v227[9] = 0;
  v227[10] = 0;
  v227[8] = 0;
  v230 = v512;
  v516 = sub_1AF64B110(v510, &off_1F255B630, v512, v223, v224, v227);
  v517 = sub_1AF64B110(v509, &off_1F250F310, v230, v223, v224, v227);
  if (v230)
  {
    if (!v224)
    {
      goto LABEL_314;
    }

    v504 = *(v488 + 72);
    v503 = *(*v464 + 72);
    v481 = v225;
    while (1)
    {
      v233 = *v512;
      v511 = v224;
      ++v512;

      if (*(v225 + 184))
      {
        goto LABEL_324;
      }

      v235 = *(*(v225 + 168) + 4 * v233);
      v236 = *(*(v234 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v235 + 8);

      v237 = v235 == -1 && v236 == 0;
      if (v237 || (v235 & 0x80000000) != 0 || v502[1] <= v235)
      {
        break;
      }

      v238 = *v502 + 12 * v235;
      if (v236 != -1 && *(v238 + 8) != v236)
      {
        break;
      }

      v240 = *(*(*(v479 + 88) + 8 * *(v238 + 6) + 32) + 16);
      v241 = *(v240 + 128);
      if (!*(v241 + 16))
      {
        break;
      }

      v242 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v243 & 1) == 0 || *(*(v240 + 24) + 16 * *(*(v241 + 56) + 8 * v242) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_180:
      v517 = (v517 + v503);
      v516 += v504;
      v224 = v511 - 1;
      if (v511 == 1)
      {
        goto LABEL_313;
      }
    }

    dispatch_group_enter(v519);
    v244 = *(v225 + 64);
    v245 = *(v225 + 80);
    v540 = *(v225 + 112);
    v247 = *(v225 + 80);
    v246 = *(v225 + 96);
    v538 = v245;
    v539 = v246;
    v248 = *(v225 + 64);
    v536 = *(v225 + 48);
    v537 = v244;
    v249 = *(v225 + 96);
    v532 = v247;
    v533 = v249;
    LOBYTE(v534) = *(v225 + 112);
    v530 = *(v225 + 48);
    v531 = v248;
    v250 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v252 = v251;
    v543 = v532;
    v544 = v533;
    v545 = v534;
    v542 = v531;
    v541 = v530;

    sub_1AF5DD36C(&v536, &v525);
    sub_1AF5DD3C8(&v541);
    if (v252)
    {

      v514 = 0;
      v253 = 0;
      v254 = 0;
    }

    else
    {
      v255 = *(v225 + 128);

      v256 = (v255 + v250 + 24 * v233);
      v514 = *v256;
      v253 = *(v256 + 1);
      v254 = *(v256 + 2);
    }

    if (*(v225 + 184))
    {
      goto LABEL_324;
    }

    v513 = v253;
    v258 = *(*(v225 + 168) + 4 * v233);
    v259 = *(*(v257 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v258 + 8);

    v260 = swift_allocObject();
    v260[2] = sub_1AFA9EC2C;
    v260[3] = v30;
    v515 = v260;
    v261 = v518;
    v260[4] = v519;
    v262 = *(v261 + 16);

    if (v262)
    {
      v263 = *(v262 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v264 = v519;

      if ((v263 & 1) == 0 || *(v518 + 3048) != 1)
      {
        sub_1AF81F330();
        v265 = swift_allocError();
        v266 = v265;
        *v267 = v499;
        if (!*(v508 + 16))
        {
          v268 = v490;
          v269 = *(v490 + 72);
          v270 = v265;
          os_unfair_lock_lock(v269);
          v271 = *(v508 + 16);
          *(v508 + 16) = v266;
          v272 = v266;

          os_unfair_lock_unlock(*(v268 + 72));
        }

        dispatch_group_leave(v264);

        goto LABEL_206;
      }
    }

    else
    {
      swift_retain_n();
      v273 = v519;
    }

    v274 = sub_1AFAA98A4();
    v275 = v518;
    v276 = v517 + v509[9];
    v277 = *v276;
    LOBYTE(v276) = v276[8];
    v505 = v274;
    v278 = v276 | (v274 != v277);
    os_unfair_lock_lock(*(v518 + 72));
    v279 = *(v275 + 80);
    if (*(v279 + 16) && (v280 = sub_1AF41ACD4(v510, v258 | (v259 << 32)), (v281 & 1) != 0))
    {
      sub_1AF85B3D4(*(v279 + 56) + 96 * v280, &v530);
      if (BYTE8(v535) != 255)
      {
        sub_1AF85B3D4(&v530, &v525);
        sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v524 + 9) = *(v529 + 9);
        v522 = v527;
        v523 = v528;
        v524[0] = v529[0];
        v520 = v525;
        v521 = v526;
        if (!BYTE8(v529[1]))
        {
          v327 = v520;
          v328 = (v520 != v505) | v278;
          os_unfair_lock_unlock(*(v518 + 72));
          if (v328)
          {
            if (v327 == v505)
            {
              v264 = v519;
              dispatch_group_leave(v519);
LABEL_206:

              v30 = v507;
LABEL_178:

              v232 = v513;
              v231 = v514;
LABEL_179:
              sub_1AF487074(v231, v232);
              goto LABEL_180;
            }

LABEL_216:
            v492 = v258;
            v494 = v254;
            v282 = v509;
            v493 = swift_allocBox();
            v284 = v283;
            sub_1AFA5BF30(v283);
            v285 = v284 + *(v282 + 36);
            v286 = v505;
            *v285 = v505;
            *(v285 + 8) = 0;
            sub_1AFA9DE54(v516, v284, type metadata accessor for MetalFunctionScript);
            sub_1AFA9DE54(v284, v517, sub_1AF5B243C);
            v287 = v518;
            os_unfair_lock_lock(*(v518 + 72));
            *&v530 = v286;
            BYTE8(v535) = 0;
            sub_1AF825824(&v530, v510, v258 | (v259 << 32));
            os_unfair_lock_unlock(*(v287 + 72));
            v288 = *(v287 + 16);

            if (v288)
            {
              v289 = v480;
              v290 = v506;
              (*v497)(v480, v288 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v506);

              (*v482)(v289, 0, 1, v290);
              v291 = v495;
              (*v477)(v495, v289, v290);
            }

            else
            {
              v292 = v480;
              (*v482)(v480, 1, 1, v506);
              v291 = v495;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v293 = sub_1AFDFC538();
              sub_1AF477C68(v293, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v468)(v292, 1, v506) != 1)
              {
                sub_1AFA9C470(v292, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v491 = v259;
            v294 = sub_1AFDFC538();
            sub_1AF477C68(v294, qword_1ED73B608);
            v295 = sub_1AFDFC528();
            v296 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v297 = swift_slowAlloc();
              *v297 = 0;
              v298 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v295, v296, v298, "buildScript", "", v297, 2u);
              MEMORY[0x1B271DEA0](v297, -1, -1);
            }

            (*v497)(v486, v291, v506);
            sub_1AFDFC578();
            swift_allocObject();
            v299 = sub_1AFDFC568();
            sub_1AFA9E3C8(v516, v500, type metadata accessor for MetalFunctionScript);
            v300 = (*(v488 + 80) + 400) & ~*(v488 + 80);
            v301 = (v484 + v300) & 0xFFFFFFFFFFFFFFF8;
            v302 = (v301 + 23) & 0xFFFFFFFFFFFFFFF8;
            v303 = (v302 + 27) & 0xFFFFFFFFFFFFFFF8;
            v304 = swift_allocObject();
            v305 = v510;
            *(v304 + 16) = v518;
            *(v304 + 24) = v305;
            v307 = v491;
            v306 = v492;
            *(v304 + 32) = v492;
            *(v304 + 36) = v307;
            *(v304 + 40) = v505;
            *(v304 + 48) = sub_1AFA9EC20;
            *(v304 + 56) = v515;
            *(v304 + 64) = v299;
            v505 = v299;
            memcpy((v304 + 72), v501, 0x148uLL);
            sub_1AFA9E320(v500, v304 + v300, type metadata accessor for MetalFunctionScript);
            v308 = (v304 + v301);
            v309 = v496;
            *v308 = v485;
            v308[1] = v309;
            v310 = (v304 + v302);
            v311 = v513;
            v312 = v514;
            *v310 = v514;
            v310[1] = v311;
            v310[2] = v494;
            v313 = (v304 + v303);
            *v313 = v306;
            v313[1] = v307;
            *(v304 + ((v303 + 15) & 0xFFFFFFFFFFFFFFF8)) = v493;
            if ((v487 & 1) == 0)
            {
              v491 = *(v518 + 32);
              v321 = swift_allocObject();
              *(v321 + 16) = sub_1AFA9EB74;
              *(v321 + 24) = v304;
              v322 = v321;
              v492 = v321;
              v323 = swift_allocObject();
              *(v323 + 16) = sub_1AFA9EB90;
              *(v323 + 24) = v322;
              *&v527 = sub_1AF6D25EC;
              *(&v527 + 1) = v323;
              *&v525 = MEMORY[0x1E69E9820];
              *(&v525 + 1) = 1107296256;
              *&v526 = sub_1AF6F662C;
              *(&v526 + 1) = &unk_1F255A888;
              v324 = _Block_copy(&v525);
              v514 = v312;
              v325 = v324;

              sub_1AFA9C054(v501, &v530, &qword_1EB633F80, type metadata accessor for MetalFunctionScript);

              v326 = v513;
              sub_1AF487F80(v312, v513);

              dispatch_sync(v491, v325);
              _Block_release(v325);

              (*v483)(v495, v506);
              swift_isEscapingClosureAtFileLocation();

              v30 = v507;

              sub_1AF487074(v514, v326);
              v225 = v481;
              goto LABEL_180;
            }

            v491 = *(v518 + 40);
            v314 = swift_allocObject();
            *(v314 + 16) = sub_1AFA9EB74;
            *(v314 + 24) = v304;
            v492 = v314;

            sub_1AFA9C054(v501, &v530, &qword_1EB633F80, type metadata accessor for MetalFunctionScript);

            sub_1AF487F80(v312, v311);
            v315 = qword_1ED730EA0;

            v225 = v481;
            if (v315 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v316 = qword_1ED73B8A0;
            v317 = swift_allocObject();
            v318 = v492;
            *(v317 + 16) = sub_1AFA9EB90;
            *(v317 + 24) = v318;
            v319 = swift_allocObject();
            v319[2] = v316;
            v319[3] = sub_1AF6CC3F0;
            v319[4] = v317;
            *&v532 = sub_1AFA9EC30;
            *(&v532 + 1) = v319;
            *&v530 = MEMORY[0x1E69E9820];
            *(&v530 + 1) = 1107296256;
            *&v531 = sub_1AFCDA044;
            *(&v531 + 1) = &unk_1F255A928;
            v320 = _Block_copy(&v530);
            swift_retain_n();

            [v491 addOperationWithBlock:v320];
            _Block_release(v320);

            (*v483)(v495, v506);

            v30 = v507;

            v232 = v513;
            v231 = v514;
            goto LABEL_179;
          }

LABEL_236:
          v329 = v519;
          v330 = v517;
          sub_1AFA9DE54(v516, v517, type metadata accessor for MetalFunctionScript);
          v331 = v509;
          v332 = *(v330 + *(v510 + 28));
          if (v332)
          {
            v333 = v517;
            v334 = *v517;
            v335 = v517[1];

            v336 = sub_1AF458B0C(v334, v335);
            v332(*(v333 + v331[13]), v336);

            sub_1AF0FB8EC(v332);
          }

          if (*(v517 + v331[10]) == 1)
          {
            v337 = *(v517 + v331[11]);
            v338 = v337;
          }

          else
          {
            sub_1AF81F330();
            v337 = swift_allocError();
            *v339 = v475;
          }

          v30 = v507;
          if (!*(v508 + 16) && v337)
          {
            v340 = v490;
            v341 = *(v490 + 72);
            v342 = v337;
            os_unfair_lock_lock(v341);
            v343 = *(v508 + 16);
            *(v508 + 16) = v337;
            v344 = v337;

            os_unfair_lock_unlock(*(v340 + 72));
          }

          dispatch_group_leave(v329);

          goto LABEL_178;
        }

        sub_1AFA9C0C8(&v520);
LABEL_215:
        os_unfair_lock_unlock(*(v518 + 72));
        if (v278)
        {
          goto LABEL_216;
        }

        goto LABEL_236;
      }
    }

    else
    {
      *&v535 = 0;
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v530 = 0u;
      BYTE8(v535) = -1;
    }

    sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_215;
  }

  if (v222 == v504)
  {
    goto LABEL_314;
  }

  v345 = *(v488 + 72);
  v494 = *(*v464 + 72);
  v517 = (v517 + v494 * v222);
  v515 = 24 * v222;
  v516 += v345 * v222;
  v476 = v345;
  while (1)
  {

    if (*(v225 + 184))
    {
      break;
    }

    v350 = *(*(v225 + 168) + 4 * v222);
    v351 = *(*(v349 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v350 + 8);

    v352 = v350 == -1 && v351 == 0;
    if (!v352 && (v350 & 0x80000000) == 0 && v502[1] > v350)
    {
      v353 = *v502 + 12 * v350;
      if (v351 == -1 || *(v353 + 8) == v351)
      {
        v355 = *(*(*(v479 + 88) + 8 * *(v353 + 6) + 32) + 16);
        v356 = *(v355 + 128);
        if (*(v356 + 16))
        {
          v357 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v358 & 1) != 0 && *(*(v355 + 24) + 16 * *(*(v356 + 56) + 8 * v357) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_248;
          }
        }
      }
    }

    dispatch_group_enter(v519);
    v359 = *(v225 + 64);
    v360 = *(v225 + 80);
    v540 = *(v225 + 112);
    v362 = *(v225 + 80);
    v361 = *(v225 + 96);
    v538 = v360;
    v539 = v361;
    v363 = *(v225 + 64);
    v536 = *(v225 + 48);
    v537 = v359;
    v364 = *(v225 + 96);
    v532 = v362;
    v533 = v364;
    LOBYTE(v534) = *(v225 + 112);
    v530 = *(v225 + 48);
    v531 = v363;
    v365 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v367 = v366;
    v543 = v532;
    v544 = v533;
    v545 = v534;
    v542 = v531;
    v541 = v530;

    sub_1AF5DD36C(&v536, &v525);
    sub_1AF5DD3C8(&v541);
    if (v367)
    {

      v514 = 0;
      v368 = 0;
      v369 = 0;
    }

    else
    {
      v370 = *(v225 + 128);

      v371 = (v370 + v515 + v365);
      v514 = *v371;
      v368 = *(v371 + 1);
      v369 = *(v371 + 2);
    }

    v512 = v368;

    if (*(v225 + 184))
    {
      break;
    }

    v513 = v369;
    v373 = *(v225 + 168);
    v511 = v222;
    v374 = *(v373 + 4 * v222);
    v505 = *(*(v372 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v374 + 8);

    v375 = swift_allocObject();
    v375[2] = sub_1AFA9EC2C;
    v375[3] = v30;
    v376 = v518;
    v375[4] = v519;
    v377 = *(v376 + 16);

    if (v377)
    {
      v378 = *(v377 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v379 = v519;

      if ((v378 & 1) == 0 || *(v518 + 3048) != 1)
      {
        sub_1AF81F330();
        v380 = swift_allocError();
        v381 = v380;
        *v382 = v499;
        if (!*(v508 + 16))
        {
          v383 = v490;
          v384 = *(v490 + 72);
          v385 = v380;
          os_unfair_lock_lock(v384);
          v386 = *(v508 + 16);
          *(v508 + 16) = v381;
          v387 = v381;

          v345 = v476;
          os_unfair_lock_unlock(*(v383 + 72));
        }

        dispatch_group_leave(v379);

        goto LABEL_274;
      }
    }

    else
    {
      swift_retain_n();
      v388 = v519;
    }

    v389 = v374;
    v390 = sub_1AFAA98A4();
    v391 = v518;
    v392 = v517 + v509[9];
    v393 = *v392;
    LOBYTE(v392) = v392[8];
    v503 = v390;
    v394 = v392 | (v390 != v393);
    os_unfair_lock_lock(*(v518 + 72));
    v395 = *(v391 + 80);
    if (!*(v395 + 16) || (v396 = sub_1AF41ACD4(v510, v374 | (v505 << 32)), (v397 & 1) == 0))
    {
      *&v535 = 0;
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v530 = 0u;
      BYTE8(v535) = -1;
LABEL_282:
      sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_283:
      v398 = v518;
      os_unfair_lock_unlock(*(v518 + 72));
      if ((v394 & 1) == 0)
      {
        goto LABEL_305;
      }

      goto LABEL_284;
    }

    sub_1AF85B3D4(*(v395 + 56) + 96 * v396, &v530);
    if (BYTE8(v535) == 255)
    {
      goto LABEL_282;
    }

    sub_1AF85B3D4(&v530, &v525);
    sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v524 + 9) = *(v529 + 9);
    v522 = v527;
    v523 = v528;
    v524[0] = v529[0];
    v520 = v525;
    v521 = v526;
    if (BYTE8(v529[1]))
    {
      sub_1AFA9C0C8(&v520);
      goto LABEL_283;
    }

    v441 = v520;
    v442 = (v520 != v503) | v394;
    v398 = v518;
    os_unfair_lock_unlock(*(v518 + 72));
    if ((v442 & 1) == 0)
    {
LABEL_305:
      v444 = v517;
      sub_1AFA9DE54(v516, v517, type metadata accessor for MetalFunctionScript);
      v445 = v509;
      v446 = *(v444 + *(v510 + 28));
      if (v446)
      {
        v447 = *v444;
        v448 = v517[1];

        v449 = v448;
        v444 = v517;
        v450 = sub_1AF458B0C(v447, v449);
        v446(*(v444 + v445[13]), v450);

        sub_1AF0FB8EC(v446);
      }

      if (*(v444 + v445[10]) == 1)
      {
        v451 = *(v444 + v445[11]);
        v452 = v451;
      }

      else
      {
        sub_1AF81F330();
        v451 = swift_allocError();
        *v453 = v475;
      }

      v30 = v507;
      if (*(v508 + 16) || !v451)
      {
        v346 = v345;
      }

      else
      {
        v346 = v345;
        v454 = v490;
        v455 = *(v490 + 72);
        v456 = v451;
        os_unfair_lock_lock(v455);
        v457 = *(v508 + 16);
        *(v508 + 16) = v451;
        v458 = v451;

        os_unfair_lock_unlock(*(v454 + 72));
      }

      v222 = v511;
      v347 = v512;
      v348 = v519;
      dispatch_group_leave(v519);

      sub_1AF487074(v514, v347);
      v345 = v346;
      goto LABEL_248;
    }

    if (v441 == v503)
    {
      v443 = v519;
      dispatch_group_leave(v519);

      v30 = v507;
LABEL_274:

      goto LABEL_300;
    }

LABEL_284:
    v491 = v374;
    v399 = v509;
    v400 = swift_allocBox();
    v402 = v401;
    sub_1AFA5BF30(v401);
    v403 = v402 + *(v399 + 36);
    v404 = v503;
    *v403 = v503;
    *(v403 + 8) = 0;
    sub_1AFA9DE54(v516, v402, type metadata accessor for MetalFunctionScript);
    sub_1AFA9DE54(v402, v517, sub_1AF5B243C);
    os_unfair_lock_lock(*(v398 + 72));
    *&v530 = v404;
    BYTE8(v535) = 0;
    sub_1AF825824(&v530, v510, v389 | (v505 << 32));
    os_unfair_lock_unlock(*(v398 + 72));
    v405 = *(v398 + 16);

    if (v405)
    {
      v406 = v467;
      v407 = v506;
      (*v497)(v467, v405 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v506);

      (*v482)(v406, 0, 1, v407);
      (*v477)(v489, v406, v407);
    }

    else
    {
      v408 = v467;
      (*v482)(v467, 1, 1, v506);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v409 = sub_1AFDFC538();
      sub_1AF477C68(v409, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v468)(v408, 1, v506) != 1)
      {
        sub_1AFA9C470(v408, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v492 = v400;
    v493 = v375;
    v410 = sub_1AFDFC538();
    sub_1AF477C68(v410, qword_1ED73B608);
    v411 = sub_1AFDFC528();
    v412 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v413 = swift_slowAlloc();
      *v413 = 0;
      v414 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v411, v412, v414, "buildScript", "", v413, 2u);
      MEMORY[0x1B271DEA0](v413, -1, -1);
    }

    (*v497)(v486, v489, v506);
    sub_1AFDFC578();
    swift_allocObject();
    v415 = sub_1AFDFC568();
    sub_1AFA9E3C8(v516, v500, type metadata accessor for MetalFunctionScript);
    v416 = (*(v488 + 80) + 400) & ~*(v488 + 80);
    v417 = (v484 + v416) & 0xFFFFFFFFFFFFFFF8;
    v418 = (v417 + 23) & 0xFFFFFFFFFFFFFFF8;
    v419 = (v418 + 27) & 0xFFFFFFFFFFFFFFF8;
    v478 = (v419 + 15) & 0xFFFFFFFFFFFFFFF8;
    v420 = swift_allocObject();
    v421 = v510;
    *(v420 + 16) = v518;
    *(v420 + 24) = v421;
    v422 = v491;
    v423 = v505;
    *(v420 + 32) = v491;
    *(v420 + 36) = v423;
    *(v420 + 40) = v503;
    *(v420 + 48) = sub_1AFA9EC20;
    *(v420 + 56) = v493;
    *(v420 + 64) = v415;
    v503 = v415;
    memcpy((v420 + 72), v501, 0x148uLL);
    sub_1AFA9E320(v500, v420 + v416, type metadata accessor for MetalFunctionScript);
    v424 = (v420 + v417);
    v425 = v496;
    *v424 = v485;
    v424[1] = v425;
    v426 = (v420 + v418);
    v427 = v513;
    v428 = v514;
    v429 = v512;
    *v426 = v514;
    v426[1] = v429;
    v426[2] = v427;
    v430 = (v420 + v419);
    *v430 = v422;
    v430[1] = v423;
    *(v420 + v478) = v492;
    if ((v487 & 1) == 0)
    {
      v505 = *(v518 + 32);
      v437 = swift_allocObject();
      *(v437 + 16) = sub_1AFA9D404;
      *(v437 + 24) = v420;
      v438 = swift_allocObject();
      *(v438 + 16) = sub_1AFA9EB90;
      *(v438 + 24) = v437;
      *&v527 = sub_1AF6D25EC;
      *(&v527 + 1) = v438;
      *&v525 = MEMORY[0x1E69E9820];
      *(&v525 + 1) = 1107296256;
      *&v526 = sub_1AF6F662C;
      *(&v526 + 1) = &unk_1F255A720;
      v439 = _Block_copy(&v525);
      v514 = v428;
      v440 = v439;
      v491 = *(&v527 + 1);

      sub_1AFA9C054(v501, &v530, &qword_1EB633F80, type metadata accessor for MetalFunctionScript);

      sub_1AF487F80(v428, v429);

      dispatch_sync(v505, v440);
      _Block_release(v440);

      (*v483)(v489, v506);
      swift_isEscapingClosureAtFileLocation();

      v30 = v507;

      sub_1AF487074(v514, v429);
      v222 = v511;
      v345 = v476;
      goto LABEL_248;
    }

    v505 = *(v518 + 40);
    v431 = swift_allocObject();
    *(v431 + 16) = sub_1AFA9D404;
    *(v431 + 24) = v420;

    sub_1AFA9C054(v501, &v530, &qword_1EB633F80, type metadata accessor for MetalFunctionScript);

    sub_1AF487F80(v428, v429);
    v432 = qword_1ED730EA0;

    v345 = v476;
    if (v432 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v433 = qword_1ED73B8A0;
    v434 = swift_allocObject();
    *(v434 + 16) = sub_1AFA9EB90;
    *(v434 + 24) = v431;
    v435 = swift_allocObject();
    v435[2] = v433;
    v435[3] = sub_1AF6CC3F0;
    v435[4] = v434;
    *&v532 = sub_1AFA9EC30;
    *(&v532 + 1) = v435;
    *&v530 = MEMORY[0x1E69E9820];
    *(&v530 + 1) = 1107296256;
    *&v531 = sub_1AFCDA044;
    *(&v531 + 1) = &unk_1F255A7C0;
    v436 = _Block_copy(&v530);
    swift_retain_n();

    [v505 addOperationWithBlock:v436];
    _Block_release(v436);

    (*v483)(v489, v506);

    v30 = v507;

LABEL_300:

    sub_1AF487074(v514, v512);
    v222 = v511;
LABEL_248:
    ++v222;
    v517 = (v517 + v494);
    v515 += 24;
    v516 += v345;
    if (v504 == v222)
    {
LABEL_313:
      v215 = 1;
LABEL_314:
      v459 = v498;
      sub_1AF630994(v472, &v582, v595);
      v498 = v459;
      sub_1AF62D29C(v225);
      ecs_stack_allocator_pop_snapshot(v471);
      if (v470)
      {
        os_unfair_lock_unlock(*(v225 + 344));
        os_unfair_lock_unlock(*(v225 + 376));
      }

      v220 = v469 + 1;
      if (v469 + 1 != v466)
      {
        goto LABEL_171;
      }

      sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v215 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(v519);
      }

LABEL_317:

      sub_1AFA62400(v460);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA81FD4(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t *a5, unint64_t a6, uint64_t *a7, uint64_t a8)
{
  v168 = a7;
  v195 = a6;
  v170 = a5;
  v163 = a4;
  LODWORD(v166) = a3;
  sub_1AF5B23C4(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v164 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShaderScript(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v162 = (&v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AF5B2388(0);
  v167 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v151 - v24;
  sub_1AF85B3D4(a2, v178);
  if (!v183)
  {
    goto LABEL_7;
  }

  if (v183 != 1)
  {
    sub_1AFA9E8FC(a1, sub_1AF5B23C4);

    sub_1AF449D40(v178, v174);
    sub_1AF0D5A54(v174, v184);
    swift_dynamicCast();
    *(&v184[1] + 1) = v12;
    *&v184[2] = &off_1F250F310;
    v43 = sub_1AF585714(v184);
    sub_1AFA9E3C8(a1, v43, sub_1AF5B23C4);
    BYTE8(v184[2]) = 1;
    sub_1AF8259D0(v184, v170, v195);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
LABEL_7:
    v44 = a2;
    goto LABEL_114;
  }

  v157 = v21;
  v158 = a8;
  v152 = a2;
  v161 = a1;
  sub_1AFA9E8FC(a1, sub_1AF5B23C4);
  v26 = v179;
  v159 = v181;
  v160 = v180;
  sub_1AF449D40(v178, v177);
  sub_1AF449D40(&v182, v176);
  v25[16] = 2;
  v27 = v15[6];
  v28 = type metadata accessor for ScriptIndex();
  (*(*(v28 - 8) + 56))(&v25[v27], 1, 1, v28);
  v29 = &v25[v15[7]];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v25[v15[8]] = &unk_1F2503190;
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  v30 = &v25[v12[9]];
  *v30 = 0;
  v30[8] = 1;
  v25[v12[10]] = 0;
  *&v25[v12[11]] = 0;
  v31 = &v25[v12[12]];
  *v31 = 0;
  *(v31 + 1) = 0xE000000000000000;
  *&v25[v12[13]] = MEMORY[0x1E69E7CC0];
  v32 = v167;
  v33 = v167[9];
  v34 = v167[10];
  v165 = v25;
  v35 = v167[11];
  *&v165[v167[12]] = 0;
  v165[v32[13]] = 0;
  v36 = &v165[v32[14]];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v165[v32[15]];
  *v37 = 0;
  v37[1] = 0;
  sub_1AF0D5A54(v177, v184);
  sub_1AFA9E8FC(v165, sub_1AF5B23C4);
  swift_dynamicCast();
  *&v165[v33] = v26;
  *&v165[v35] = v159;
  v38 = v165;
  *&v165[v34] = v160;
  v39 = *v37;
  v153 = v26;

  sub_1AF919DAC(v39);
  sub_1AF0D5A54(v176, v184);
  swift_dynamicCast();
  sub_1AFA9E3C8(v38, v161, sub_1AF5B23C4);
  if (v166)
  {
    v40 = *(v163 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v41 = v38;
    if (v40)
    {
      v42 = *(v40 + 80);
      swift_unknownObjectWeakLoadStrong();
      v40 = *(v40 + 56);
    }

    else
    {
      v42 = 0;
    }

    v47 = v162;
    *&v184[1] = 0;
    swift_unknownObjectUnownedInit();
    *&v184[0] = v163;
    *&v184[1] = v40;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    BYTE8(v184[1]) = v42;
    v48 = v157;
    sub_1AFA9E3C8(v41, v157, sub_1AF5B2388);
    sub_1AFA9E3C8(v48, v47, type metadata accessor for ShaderScript);
    sub_1AFA9E8FC(v48, sub_1AF5B2388);
    v45 = v195;
    sub_1AF5AD868(v47, v195);
    sub_1AFA9E8FC(v47, type metadata accessor for ShaderScript);
    v49 = v164;
    sub_1AFA9E3C8(v165, v164, sub_1AF5B23C4);
    sub_1AF5AD9F8(v49, v45);
    sub_1AFA9E8FC(v49, sub_1AF5B23C4);
    v46 = v163;
    sub_1AFA9E3C8(v165, v48, sub_1AF5B2388);
    sub_1AF5ADB88(v48, v45);
    v50 = v48;
    v38 = v165;
    sub_1AFA9E8FC(v50, sub_1AF5B2388);
    sub_1AF579490(v184);
    if (v42)
    {
      v51 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v51 ^ 1);
    }
  }

  else
  {
    v45 = v195;
    v46 = v163;
    sub_1AFBFE06C(v38, v195);
  }

  *(&v184[1] + 1) = v32;
  *&v184[2] = &off_1F2558F90;
  v52 = sub_1AF585714(v184);
  sub_1AFA9E3C8(v38, v52, sub_1AF5B2388);
  BYTE8(v184[2]) = 0;
  sub_1AF8259D0(v184, v170, v45);
  v53 = sub_1AF3CB4A8(v45);
  if (v53)
  {
    sub_1AFD08440(v46, v53, v54);
  }

  sub_1AF0D5A54(v176, v184);
  if (swift_dynamicCast())
  {
    v55 = *&v174[0];

    *&v184[0] = MEMORY[0x1E69E7CC0];
    *(&v184[0] + 1) = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C(v46, v55);

    v56 = v195;
    sub_1AFBFE084(*&v184[0], *(&v184[0] + 1), v195);
    v46 = v163;

    v57 = v56;
  }

  else
  {
    sub_1AF0D5A54(v176, v184);
    if (swift_dynamicCast())
    {
    }

    v57 = v195;
  }

  v58 = v158;
  v59 = v169;
  sub_1AF678B44(v57);
  v60 = *(v58 + 264);
  v193[0] = *(v58 + 248);
  v193[1] = v60;
  v194 = *(v58 + 280);
  sub_1AF6B06C0(v46, v193, 0x200000000, v184);
  v162 = *&v184[0];
  if (!*&v184[0])
  {
    goto LABEL_111;
  }

  v160 = *(&v184[2] + 1);
  v61 = *(&v185 + 1);
  v168 = *(&v186 + 1);
  v188 = *(v184 + 8);
  v189 = *(&v184[1] + 8);
  if (v187 <= 0 || !*(&v185 + 1))
  {
    sub_1AFA9BF94(v184, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_111:

    goto LABEL_113;
  }

  v161 = HIDWORD(v195);
  v62 = v168[4];
  v63 = *(v186 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v166 = (v46 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v156 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v174[2] = v184[2];
  v174[3] = v185;
  v174[4] = v186;
  v175 = v187;
  v174[0] = v184[0];
  v174[1] = v184[1];
  sub_1AF5DD298(v174, v172);
  v64 = 0;
  v158 = v62;
  v159 = v61;
  LODWORD(v157) = v63;
  do
  {
    v167 = v64;
    v65 = (v160 + 48 * v64);
    v67 = *v65;
    v66 = v65[1];
    v68 = *(v65 + 2);
    v69 = *(v65 + 3);
    v169 = v59;
    v170 = v68;
    v71 = *(v65 + 4);
    v70 = *(v65 + 5);
    v164 = v66;
    if (v63)
    {
      v72 = *(v70 + 376);

      os_unfair_lock_lock(v72);
      os_unfair_lock_lock(*(v70 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v62);
    v73 = v168;
    v74 = *(v168 + 4);
    v172[0] = *(v168 + 3);
    v172[1] = v74;
    v173 = v168[10];
    v75 = *(*(*(*(v70 + 40) + 16) + 32) + 16) + 1;
    v73[6] = ecs_stack_allocator_allocate(v168[4], 48 * v75, 8);
    v73[7] = v75;
    v73[9] = 0;
    v73[10] = 0;
    v73[8] = 0;
    v76 = v170;
    v77 = sub_1AF64B110(&type metadata for Material, &off_1F253F848, v170, v69, v71, v73);
    v78 = sub_1AF64B110(&type metadata for MaterialRuntime, &off_1F253FE70, v76, v69, v71, v73);
    if (v76)
    {
      v79 = v195;
      v80 = v161;
      if (v71)
      {
        for (i = 0; i != v71; ++i)
        {
          v82 = v77 + 104 * i;
          if (*v82 != 2)
          {
            continue;
          }

          v84 = *(v82 + 16);
          v83 = *(v82 + 20);
          if (v84 != v79 || v83 != v80)
          {
            continue;
          }

          v86 = v170[i];

          if (*(v70 + 184))
          {
            goto LABEL_117;
          }

          v88 = *(*(v70 + 168) + 4 * v86);
          v89 = *(*(v87 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v88 + 8);

          if (v88 != -1 || v89 != 0)
          {
            v79 = v195;
            if ((v88 & 0x80000000) != 0 || v166[1] <= v88)
            {
              goto LABEL_31;
            }

            v91 = (*v166 + 12 * v88);
            if (v89 != -1 && v91[2] != v89)
            {
              goto LABEL_31;
            }

            v93 = *(v91 + 2);
            v94 = *(*(v163 + 144) + 8 * *v91 + 32);
            v95 = thread_worker_index();
            if (*v95 == -1)
            {
              v97 = *(v96 + v156);
            }

            else
            {
              v97 = (*(v96 + v156) + 8 * *v95 + 8);
            }

            v98 = *v97;
            v99 = *(v94 + 192);
            if (v99)
            {
              v100 = *(v94 + 208);
              *(v99 + 8 * (v93 >> 6)) |= 1 << v93;
              *(v100 + 8 * (v93 >> 6)) &= ~(1 << v93);
            }

            if (*(*(v94 + 40) + 213) != 1)
            {
              goto LABEL_31;
            }

            v101 = *(v94 + 48);
            v102 = (v101 + 32);
            v103 = *(v101 + 16) + 1;
            v154 = v98;
            v164 = v93;
            while (--v103)
            {
              v104 = v102 + 5;
              v105 = *v102;
              v102 += 5;
              if (v105 == &type metadata for PropagateDirtiness)
              {
                v155 = *(v104 - 2);
                goto LABEL_62;
              }
            }

            v155 = 0;
LABEL_62:
            v106 = *(v94 + 128);
            v107 = *(v94 + 184);

            if (v107)
            {
              goto LABEL_117;
            }

            v109 = *(*(v94 + 168) + 4 * v164);
            v110 = (v106 + v155 + 8 * v164);
            v164 = *(*(v108 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v109 + 8);

            v111 = *v110;
            v112 = v110[1];
            if (v111 != -1 || v112 != 0)
            {
              sub_1AF70D248(v171, v109 | (v164 << 32), v111 | (v112 << 32));
            }
          }

          v79 = v195;
LABEL_31:
          *(v78 + 240 * i + 216) = 0;
        }
      }
    }

    else
    {
      v114 = v164;
      v115 = v195;
      v116 = v161;
      if (v67 != v164)
      {
        do
        {
          v118 = v77 + 104 * v67;
          if (*v118 == 2)
          {
            v120 = *(v118 + 16);
            v119 = *(v118 + 20);
            if (v120 == v115 && v119 == v116)
            {

              if (*(v70 + 184))
              {
                goto LABEL_117;
              }

              v123 = *(*(v70 + 168) + 4 * v67);
              v124 = *(*(v122 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v123 + 8);

              if (v123 == -1 && v124 == 0)
              {
                v115 = v195;
              }

              else
              {
                v115 = v195;
                if ((v123 & 0x80000000) == 0 && v166[1] > v123)
                {
                  v126 = (*v166 + 12 * v123);
                  if (v124 == -1 || v126[2] == v124)
                  {
                    v128 = *(v126 + 2);
                    v129 = *(*(v163 + 144) + 8 * *v126 + 32);
                    v130 = thread_worker_index();
                    if (*v130 == -1)
                    {
                      v132 = *(v131 + v156);
                    }

                    else
                    {
                      v132 = (*(v131 + v156) + 8 * *v130 + 8);
                    }

                    v133 = *v132;
                    v134 = *(v129 + 192);
                    if (v134)
                    {
                      v135 = *(v129 + 208);
                      *(v134 + 8 * (v128 >> 6)) |= 1 << v128;
                      *(v135 + 8 * (v128 >> 6)) &= ~(1 << v128);
                    }

                    if (*(*(v129 + 40) + 213) == 1)
                    {
                      v136 = *(v129 + 48);
                      v137 = (v136 + 32);
                      v138 = *(v136 + 16) + 1;
                      v155 = v133;
                      while (--v138)
                      {
                        v139 = v137 + 5;
                        v140 = *v137;
                        v137 += 5;
                        if (v140 == &type metadata for PropagateDirtiness)
                        {
                          v170 = *(v139 - 2);
                          goto LABEL_103;
                        }
                      }

                      v170 = 0;
LABEL_103:
                      v141 = *(v129 + 128);
                      v142 = *(v129 + 184);

                      if (v142)
                      {
LABEL_117:
                        result = sub_1AFDFE518();
                        __break(1u);
                        return result;
                      }

                      v144 = *(*(v129 + 168) + 4 * v128);
                      v145 = (&v170[v128] + v141);
                      v146 = *(*(v143 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v144 + 8);

                      v147 = *v145;
                      v148 = v145[1];
                      if (v147 != -1 || v148 != 0)
                      {
                        sub_1AF70D248(v171, v144 | (v146 << 32), v147 | (v148 << 32));
                      }

                      v115 = v195;
                      v116 = v161;
                    }
                  }
                }
              }

              *(v78 + 240 * v67 + 216) = 0;
            }
          }

          ++v67;
        }

        while (v67 != v114);
      }
    }

    v190 = v162;
    v191 = v188;
    v192 = v189;
    v117 = v169;
    sub_1AF630994(v168, &v190, v172);
    v59 = v117;
    sub_1AF62D29C(v70);
    v62 = v158;
    ecs_stack_allocator_pop_snapshot(v158);
    v63 = v157;
    if (v157)
    {
      os_unfair_lock_unlock(*(v70 + 344));
      os_unfair_lock_unlock(*(v70 + 376));
    }

    v64 = (v167 + 1);
  }

  while ((v167 + 1) != v159);
  sub_1AFA9BF94(v184, &qword_1ED725EA0, &type metadata for QueryResult);
  sub_1AFA9BF94(v184, &qword_1ED725EA0, &type metadata for QueryResult);

  v38 = v165;
LABEL_113:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v176);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v177);
  sub_1AFA9E8FC(v38, sub_1AF5B2388);
  v44 = v152;
LABEL_114:
  result = sub_1AF85B3D4(v44, v174);
  if (BYTE8(v175))
  {
    return sub_1AFA9C0C8(v174);
  }

  return result;
}

uint64_t sub_1AFA82F6C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v42 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v43 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v44);
        if (v45 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for ShaderScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v42[1] <= v16 || (v15 != -1 ? (v18 = *(*v42 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v42 + 12 * v16), sub_1AF5B23C4(0), v20 = *(*(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v43 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v44);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v43 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA81FD4(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v44, a2 & 1, v43, v14, v16 | (v15 << 32), a1, v41);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF45570);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v44);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for ShaderScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA833C4(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v493) = a6;
  v491 = a2;
  v492 = a5;
  v487 = a4;
  v498 = 0;
  v510 = type metadata accessor for ShaderScript(0);
  v488 = *(v510 - 8);
  MEMORY[0x1EEE9AC00](v510, v13);
  v484 = v14;
  v500 = &v463 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v467 = &v463 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v480 = &v463 - v20;
  v21 = sub_1AFDFC4F8();
  v483 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v489 = &v463 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v486 = &v463 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v495 = &v463 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = *(a1 + 16);

  v508 = a8;

  v490 = a9;

  dispatch_group_enter(a3);
  v32 = *(a7 + 184);
  v593[0] = *(a7 + 168);
  v593[1] = v32;
  v594 = *(a7 + 25);
  v33 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v479 = v31;
  sub_1AF6B06C0(v31, v593, 0x200000000, v552);
  v518 = a1;
  v519 = a3;
  v506 = v21;
  v507 = v30;
  v501 = a7;
  v494 = v33;
  if (*&v552[0])
  {
    if (v556 >= 1)
    {
      if (*(&v554 + 1))
      {
        v34 = *(&v553 + 1);
        v35 = *(&v555 + 1);
        v36 = *(&v553 + 1) + 48 * *(&v554 + 1);
        sub_1AF5B23C4(0);
        v512 = v37;
        v532 = v553;
        v533 = v554;
        v534 = v555;
        v535 = v556;
        v530 = v552[0];
        v531 = v552[1];
        sub_1AF5DD298(&v530, &v599);
        v516 = v35;
        v497 = v36;
        do
        {
          v38 = *(v34 + 40);
          v39 = *(v38 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v39);
          os_unfair_lock_lock(*(v38 + 344));
          v40 = *(v38 + 24);

          v601 = 0;
          v599 = 0u;
          v600 = 0u;
          memset(v575, 0, 40);
          v41 = sub_1AF65A4B4(v40, v512, &off_1F250F310, 0, 0, &v599, v575);

          sub_1AFA9E8FC(v575, sub_1AF5C4448);
          sub_1AFA9E8FC(&v599, sub_1AF5C4448);
          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v41);
          }

          else
          {
            v511 = v34;
            v43 = *(v38 + 232);
            v42 = *(v38 + 240);
            v44 = *(v38 + 120);
            v502 = *(v38 + 28);
            v45 = *(v38 + 32);
            v517 = *(v38 + 16);
            v46 = *(v38 + 40);
            v47 = v46[200];
            v48 = *(v517[11] + 8 * v41 + 32);

            if ((v47 & 1) != 0 || *(v48 + 200) == 1)
            {
              *(v517 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v46 = *(v38 + 40);
            }

            v49 = v46[212];
            LODWORD(v509) = v44;
            LODWORD(v503) = v41;
            if (v49)
            {
              LODWORD(v505) = 0;
            }

            else
            {
              LODWORD(v505) = *(v48 + 212);
            }

            LODWORD(v504) = v46[208];
            v515 = *(v38 + 128);
            v50 = *(v38 + 256);
            v51 = v42;
            v52 = v498;
            sub_1AF5B4FCC(v46, v43, v51, 0, v38);
            v498 = v52;
            v513 = *(v38 + 256);
            v514 = v50;
            v53 = v513 - v50;
            if (v513 == v50)
            {
              v54 = 0;
            }

            else
            {
              v54 = v50;
            }

            *&v575[0] = v54;
            v55 = *(*(v38 + 40) + 24);
            v56 = *(v55 + 16);
            if (v56)
            {
              LODWORD(v499) = v45;
              v57 = v55 + 32;

              v58 = 0;
              v59 = v48;
              do
              {
                v60 = v57 + 40 * v58;
                if ((*(v60 + 32) & 1) == 0)
                {
                  v61 = *(v59 + 24);
                  v62 = *(v61 + 16);
                  if (v62)
                  {
                    v63 = (v61 + 32);
                    while (*v63 != *v60)
                    {
                      v63 += 5;
                      if (!--v62)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8();
                    v59 = v48;
                  }
                }

                ++v58;
              }

              while (v58 != v56);

              LOBYTE(v45) = v499;
            }

            if (*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v38 + 72) * v53);
            }

            if (*(v38 + 184))
            {
              v64 = 0;
            }

            else
            {
              v64 = *(v38 + 168);
            }

            *&v570[0] = 0;

            DWORD2(v600) = -1;
            v601 = v514;
            v602 = v513;
            v603 = v514;
            v604 = v513;
            *&v599 = v514;
            *(&v599 + 1) = v513;
            *&v600 = v64;
            if (v53 < 1)
            {
            }

            else
            {
              *&v499 = &v463;

              v65 = v48;

              v66 = v509;
              v67 = v505;
              v68 = v502;
              v69 = v503;
              v70 = v504;
              v71 = v515;
              do
              {

                LOBYTE(v562) = v45;
                LOBYTE(v462) = v70;
                sub_1AF626158(v69, v68 | (v45 << 32), v66, v517, &v599, v68 | (v45 << 32), v38, v65, 0, 0, 0, 0, v575, v71, v570, v462, v69, v67, v516);
              }

              while ((*(&v599 + 1) - v599) > 0);
            }

            v72 = *(v38 + 192);
            v30 = v507;
            v34 = v511;
            if (v72)
            {
              v73 = *(v38 + 208);
              v74 = v514;
              v75 = v513;
              sub_1AF75D364(v514, v513, v72);
              sub_1AF75D364(v74, v75, v73);
            }

            v36 = v497;
          }

          v34 += 48;
          os_unfair_lock_unlock(*(v38 + 344));
          os_unfair_lock_unlock(*(v38 + 376));
        }

        while (v34 != v36);
        sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
        v76 = 1;
        a7 = v501;
      }

      else
      {
        sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
        v76 = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v552, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v76 = 0;
LABEL_44:
  v77 = a7[4];
  v591[0] = a7[3];
  v591[1] = v77;
  v592 = *(a7 + 10);
  sub_1AF6B06C0(v479, v591, 0x200000000, v557);
  if (*&v557[0])
  {
    if (v561 >= 1 && *(&v559 + 1))
    {
      v78 = *(&v558 + 1);
      v79 = *(&v560 + 1);
      v80 = *(&v558 + 1) + 48 * *(&v559 + 1);
      sub_1AF5B2388(0);
      v512 = v81;
      v532 = v558;
      v533 = v559;
      v534 = v560;
      v535 = v561;
      v530 = v557[0];
      v531 = v557[1];
      sub_1AF5DD298(&v530, &v599);
      v516 = v79;
      v497 = v80;
      do
      {
        v82 = *(v78 + 40);
        v83 = *(v82 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v83);
        os_unfair_lock_lock(*(v82 + 344));
        v84 = *(v82 + 24);

        v601 = 0;
        v599 = 0u;
        v600 = 0u;
        memset(v575, 0, 40);
        v85 = sub_1AF65A4B4(v84, 0, 0, v512, &off_1F2558F90, &v599, v575);

        sub_1AFA9E8FC(v575, sub_1AF5C4448);
        sub_1AFA9E8FC(&v599, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v85);
        }

        else
        {
          v511 = v78;
          v87 = *(v82 + 232);
          v86 = *(v82 + 240);
          v88 = *(v82 + 120);
          v502 = *(v82 + 28);
          v89 = *(v82 + 32);
          v517 = *(v82 + 16);
          v90 = *(v82 + 40);
          v91 = v90[200];
          v92 = *(v517[11] + 8 * v85 + 32);

          if ((v91 & 1) != 0 || *(v92 + 200) == 1)
          {
            *(v517 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v90 = *(v82 + 40);
          }

          v93 = v90[212];
          LODWORD(v509) = v88;
          LODWORD(v503) = v85;
          if (v93)
          {
            LODWORD(v505) = 0;
          }

          else
          {
            LODWORD(v505) = *(v92 + 212);
          }

          LODWORD(v504) = v90[208];
          v515 = *(v82 + 128);
          v94 = *(v82 + 256);
          v95 = v86;
          v96 = v498;
          sub_1AF5B4FCC(v90, v87, v95, 0, v82);
          v498 = v96;
          v513 = *(v82 + 256);
          v514 = v94;
          v97 = v513 - v94;
          if (v513 == v94)
          {
            v98 = 0;
          }

          else
          {
            v98 = v94;
          }

          *&v575[0] = v98;
          v99 = *(*(v82 + 40) + 24);
          v100 = *(v99 + 16);
          if (v100)
          {
            LODWORD(v499) = v89;
            v101 = v99 + 32;

            v102 = 0;
            v103 = v92;
            do
            {
              v104 = v101 + 40 * v102;
              if ((*(v104 + 32) & 1) == 0)
              {
                v105 = *(v103 + 24);
                v106 = *(v105 + 16);
                if (v106)
                {
                  v107 = (v105 + 32);
                  while (*v107 != *v104)
                  {
                    v107 += 5;
                    if (!--v106)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8();
                  v103 = v92;
                }
              }

              ++v102;
            }

            while (v102 != v100);

            LOBYTE(v89) = v499;
          }

          if (*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v82 + 72) * v97);
          }

          if (*(v82 + 184))
          {
            v108 = 0;
          }

          else
          {
            v108 = *(v82 + 168);
          }

          *&v570[0] = 0;

          DWORD2(v600) = -1;
          v601 = v514;
          v602 = v513;
          v603 = v514;
          v604 = v513;
          *&v599 = v514;
          *(&v599 + 1) = v513;
          *&v600 = v108;
          if (v97 < 1)
          {
          }

          else
          {
            *&v499 = &v463;

            v109 = v92;

            v110 = v509;
            v111 = v505;
            v112 = v502;
            v113 = v503;
            v114 = v504;
            v115 = v515;
            do
            {

              LOBYTE(v562) = v89;
              LOBYTE(v462) = v114;
              sub_1AF626158(v113, v112 | (v89 << 32), v110, v517, &v599, v112 | (v89 << 32), v82, v109, 0, 0, 0, 0, v575, v115, v570, v462, v113, v111, v516);
            }

            while ((*(&v599 + 1) - v599) > 0);
          }

          v116 = *(v82 + 192);
          v30 = v507;
          v78 = v511;
          if (v116)
          {
            v117 = *(v82 + 208);
            v118 = v514;
            v119 = v513;
            sub_1AF75D364(v514, v513, v116);
            sub_1AF75D364(v118, v119, v117);
          }

          v80 = v497;
        }

        v78 += 48;
        os_unfair_lock_unlock(*(v82 + 344));
        os_unfair_lock_unlock(*(v82 + 376));
      }

      while (v78 != v80);
      sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v501;
    }

    else
    {
      sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  v120 = *(a7 + 104);
  v589[0] = *(a7 + 88);
  v589[1] = v120;
  v590 = *(a7 + 15);
  sub_1AF6B06C0(v479, v589, 0x200000000, &v562);
  LODWORD(v497) = v76;
  if (v562)
  {
    v512 = v569;
    v121 = v498;
    if (v569 >= 1)
    {
      v511 = v566;
      if (v566)
      {
        v122 = 0;
        v509 = v565;
        v505 = v567;
        v123 = *(&v567->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v516 = v568[4];
        v517 = v568;
        v579 = v562;
        v580 = v563;
        v581 = v564;
        LODWORD(v504) = v123;
        do
        {
          v498 = v121;
          v515 = v122;
          v124 = &v509[12 * v122];
          v125 = *v124;
          v126 = v124[1];
          v127 = v124[2];
          v128 = *(v124 + 2);
          v129 = *(v124 + 3);
          v131 = *(v124 + 4);
          v130 = *(v124 + 5);
          if (v123)
          {
            v132 = *(v130 + 376);

            os_unfair_lock_lock(v132);
            os_unfair_lock_lock(*(v130 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v516);
          v133 = v517;
          v134 = *(v517 + 4);
          v597[0] = *(v517 + 3);
          v597[1] = v134;
          v598 = v517[10];
          v135 = *(*(*(*(v130 + 40) + 16) + 32) + 16) + 1;
          v133[6] = ecs_stack_allocator_allocate(v517[4], 48 * v135, 8);
          v133[7] = v135;
          v133[9] = 0;
          v133[10] = 0;
          v133[8] = 0;
          LOBYTE(v530) = 1;
          *&v599 = v505;
          *(&v599 + 1) = v130;
          *&v600 = v133;
          *(&v600 + 1) = v127;
          v601 = (v126 - v125 + v127);
          v602 = v512;
          v603 = v125;
          v604 = v126;
          v605 = 0;
          v606 = 0;
          v607 = 1;
          v608 = v128;
          v609 = v129;
          v610 = v131;
          v136 = v498;
          v137 = sub_1AF706E7C(v130, &v599);
          v138 = v608;
          v514 = v136;
          if (v608)
          {
            v139 = v610;
            if (v610)
            {
              v513 = v600;
              v140 = (v137 + 8);
              do
              {
                v138 += 8;
                v141 = *(v140 - 1);
                v142 = *v140;

                sub_1AFD08440(v143, v141, v142);

                sub_1AF6FCE40(0);
                v145 = *(*(v130 + 40) + 16);
                v146 = *(v145 + 128);
                if (*(v146 + 16))
                {
                  v147 = v144;
                  v148 = sub_1AF449CB8(v144);
                  if ((v149 & 1) != 0 && *(*(v145 + 24) + 16 * *(*(v146 + 56) + 8 * v148) + 32) == v147)
                  {
                    *&v530 = v147;
                    *(&v530 + 1) = &off_1F2559388;
                    BYTE8(v532) = 1;
                    MEMORY[0x1EEE9AC00](v148, v149);
                    v462 = v130;

                    sub_1AF63023C(0, v130, sub_1AFA9EC24);

                    sub_1AF635250(&v530);
                  }
                }

                v140 += 2;
                --v139;
              }

              while (v139);
            }
          }

          else
          {
            v150 = v603;
            v151 = v604;
            if (v603 != v604)
            {
              v152 = (v137 + 16 * v603 + 8);
              do
              {
                v153 = *(v152 - 1);
                v154 = *v152;

                sub_1AFD08440(v155, v153, v154);

                sub_1AF6FCE40(0);
                v157 = *(*(v130 + 40) + 16);
                v158 = *(v157 + 128);
                if (*(v158 + 16))
                {
                  v159 = v156;
                  v160 = sub_1AF449CB8(v156);
                  if ((v161 & 1) != 0 && *(*(v157 + 24) + 16 * *(*(v158 + 56) + 8 * v160) + 32) == v159)
                  {
                    *&v530 = v159;
                    *(&v530 + 1) = &off_1F2559388;
                    BYTE8(v532) = 1;
                    MEMORY[0x1EEE9AC00](v160, v161);
                    v462 = v130;

                    sub_1AF63023C(0, v130, sub_1AFA9EC24);

                    sub_1AF635250(&v530);
                  }
                }

                ++v150;
                v152 += 2;
              }

              while (v151 != v150);
            }
          }

          v121 = v514;
          sub_1AF630994(v517, &v579, v597);
          sub_1AF62D29C(v130);
          ecs_stack_allocator_pop_snapshot(v516);
          v123 = v504;
          if (v504)
          {
            os_unfair_lock_unlock(*(v130 + 344));
            os_unfair_lock_unlock(*(v130 + 376));
          }

          v122 = v515 + 1;
        }

        while (v515 + 1 != v511);
      }
    }

    sub_1AFA9BF94(&v562, &qword_1ED725EA0, &type metadata for QueryResult);
    v30 = v507;
  }

  else
  {
    v121 = v498;
  }

  v162 = v501[9];
  v587[0] = v501[8];
  v587[1] = v162;
  v588 = *(v501 + 20);
  sub_1AF6B06C0(v479, v587, 0x200000000, v570);
  if (*&v570[0])
  {
    v163 = v574;
    if (v574 >= 1 && *(&v572 + 1))
    {
      v485 = v574;
      v164 = *(&v571 + 1);
      v516 = *(&v573 + 1);
      v165 = *(&v571 + 1) + 48 * *(&v572 + 1);
      sub_1AF5B23C4(0);
      v512 = v166;
      v532 = v571;
      v533 = v572;
      v534 = v573;
      v535 = v574;
      v530 = v570[0];
      v531 = v570[1];
      sub_1AF5DD298(&v530, v575);
      v496 = v165;
      do
      {
        v167 = *(v164 + 40);
        v168 = *(v167 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v168);
        os_unfair_lock_lock(*(v167 + 344));
        v169 = *(v167 + 24);

        memset(v575, 0, 40);
        *&v548 = 0;
        v547 = 0u;
        v546 = 0u;
        v170 = sub_1AF65A4B4(v169, 0, 0, v512, &off_1F250F310, v575, &v546);

        sub_1AFA9E8FC(&v546, sub_1AF5C4448);
        sub_1AFA9E8FC(v575, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v170);
        }

        else
        {
          v511 = v164;
          v498 = v121;
          v172 = *(v167 + 232);
          v171 = *(v167 + 240);
          LODWORD(v509) = *(v167 + 120);
          v503 = *(v167 + 28);
          v173 = *(v167 + 32);
          v174 = *(v167 + 16);
          v175 = *(v167 + 40);
          v176 = v175[200];

          if ((v176 & 1) != 0 || *(v177 + 200) == 1)
          {
            *(v174 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v175 = *(v167 + 40);
          }

          v178 = v175[212];
          v179 = v177;
          v517 = v174;
          LODWORD(v504) = v170;
          if (v178)
          {
            LODWORD(v505) = 0;
          }

          else
          {
            LODWORD(v505) = *(v177 + 212);
          }

          v180 = v175[208];
          v515 = *(v167 + 128);
          v181 = *(v167 + 256);
          v182 = v171;
          v183 = v498;
          sub_1AF5B4FCC(v175, v172, v182, 0, v167);
          v498 = v183;
          v513 = *(v167 + 256);
          v514 = v181;
          v184 = v513 - v181;
          if (v513 == v181)
          {
            v185 = 0;
          }

          else
          {
            v185 = v181;
          }

          *&v546 = v185;
          v186 = *(*(v167 + 40) + 24);
          v187 = *(v186 + 16);
          if (v187)
          {
            LODWORD(v499) = v173;
            LODWORD(v502) = v180;
            v188 = v186 + 32;

            v189 = 0;
            v190 = v184;
            v191 = v179;
            do
            {
              v192 = v188 + 40 * v189;
              if ((*(v192 + 32) & 1) == 0)
              {
                v193 = *(v191 + 24);
                v194 = *(v193 + 16);
                if (v194)
                {
                  v195 = (v193 + 32);
                  while (*v195 != *v192)
                  {
                    v195 += 5;
                    if (!--v194)
                    {
                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:
                  sub_1AF640BC8();
                  v191 = v179;
                  v190 = v184;
                }
              }

              ++v189;
            }

            while (v189 != v187);
            v184 = v190;

            LOBYTE(v180) = v502;
            LOBYTE(v173) = v499;
          }

          if (*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v517 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v167 + 72) * v184);
          }

          if (*(v167 + 184))
          {
            v196 = 0;
          }

          else
          {
            v196 = *(v167 + 168);
          }

          *&v525 = 0;

          *&v575[1] = v196;
          DWORD2(v575[1]) = -1;
          *&v575[2] = v514;
          *(&v575[2] + 1) = v513;
          *&v576 = v514;
          *(&v576 + 1) = v513;
          *&v575[0] = v514;
          *(&v575[0] + 1) = v513;
          if (v184 < 1)
          {
          }

          else
          {
            v502 = &v463;

            v197 = v179;

            v198 = v509;
            v199 = v503;
            v200 = v504;
            v201 = v180;
            v202 = v505;
            v203 = v515;
            do
            {

              LOBYTE(v520) = v173;
              LOBYTE(v462) = v201;
              sub_1AF626158(v200, v199 | (v173 << 32), v198, v517, v575, v199 | (v173 << 32), v167, v197, 0, 0, 0, 0, &v546, v203, &v525, v462, v200, v202, v516);
            }

            while ((*(&v575[0] + 1) - *&v575[0]) > 0);
          }

          v204 = *(v167 + 192);
          v30 = v507;
          v121 = v498;
          if (v204)
          {
            v205 = *(v167 + 208);
            v207 = v513;
            v206 = v514;
            sub_1AF75D364(v514, v513, v204);
            sub_1AF75D364(v206, v207, v205);
          }

          v164 = v511;
          v165 = v496;
        }

        v164 += 48;
        os_unfair_lock_unlock(*(v167 + 344));
        os_unfair_lock_unlock(*(v167 + 376));
      }

      while (v164 != v165);
      sub_1AFA9BF94(v570, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v570, &qword_1ED725EA0, &type metadata for QueryResult);
      v163 = v485;
    }

    else
    {
      sub_1AFA9BF94(v570, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v208 = v497;
    if (v163 > 0)
    {
      v208 = 1;
    }

    LODWORD(v497) = v208;
  }

  if (v491)
  {
    sub_1AFA61FF8(v518, v491, sub_1AFD3044C);
    LODWORD(v497) = v497 | v209;
  }

  v498 = v121;
  if (v492)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v211 = v518;
  v212 = sub_1AFA82F6C(v518, v493 & 1);

  v213 = *(v211 + 16);

  if (v213)
  {
    v485 = sub_1AF8BB88C();
    v496 = v214;
  }

  else
  {
    v485 = 0;
    v496 = 0xE000000000000000;
  }

  v215 = v497 | v212;
  v216 = v501[14];
  v585[0] = v501[13];
  v585[1] = v216;
  v586 = *(v501 + 30);
  sub_1AF6B06C0(v479, v585, 0x200000000, v575);
  v217 = *&v575[0];
  if (!*&v575[0])
  {

    if ((v215 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v578 <= 0 || (v466 = *(&v576 + 1)) == 0)
  {

    sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v215 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v465 = *(&v575[2] + 1);
  v472 = *(&v577 + 1);
  v471 = *(*(&v577 + 1) + 32);
  v470 = *(v577 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B23C4(0);
  v219 = v218;
  v582 = v217;
  v583 = *(v575 + 8);
  v584 = *(&v575[1] + 8);
  v502 = (v479 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v548 = v575[2];
  v549 = v576;
  v550 = v577;
  v551 = v578;
  v546 = v575[0];
  v547 = v575[1];
  sub_1AF5DD298(&v546, &v530);
  v220 = 0;
  v509 = v219;
  v464 = v219 - 8;
  v497 = (v483 + 2);
  v477 = (v483 + 4);
  v468 = (v483 + 6);
  v484 += 7;
  v474 = &v526;
  v482 = (v483 + 7);
  ++v483;
  v473 = &v531;
  v475 = xmmword_1AFE21110;
  v499 = xmmword_1AFE72020;
LABEL_171:
  v469 = v220;
  v221 = (v465 + 48 * v220);
  v222 = *v221;
  v504 = v221[1];
  v223 = *(v221 + 3);
  v512 = *(v221 + 2);
  v224 = *(v221 + 4);
  v225 = *(v221 + 5);
  if (v470)
  {
    v226 = *(v225 + 376);

    os_unfair_lock_lock(v226);
    os_unfair_lock_lock(*(v225 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v471);
  v227 = v472;
  v228 = *(v472 + 4);
  v595[0] = *(v472 + 3);
  v595[1] = v228;
  v596 = v472[10];
  v229 = *(*(*(*(v225 + 40) + 16) + 32) + 16) + 1;
  v227[6] = ecs_stack_allocator_allocate(v472[4], 48 * v229, 8);
  v227[7] = v229;
  v227[9] = 0;
  v227[10] = 0;
  v227[8] = 0;
  v230 = v512;
  v516 = sub_1AF64B110(v510, &off_1F255B8D0, v512, v223, v224, v227);
  v517 = sub_1AF64B110(v509, &off_1F250F310, v230, v223, v224, v227);
  if (v230)
  {
    if (!v224)
    {
      goto LABEL_314;
    }

    v504 = *(v488 + 72);
    v503 = *(*v464 + 72);
    v481 = v225;
    while (1)
    {
      v233 = *v512;
      v511 = v224;
      ++v512;

      if (*(v225 + 184))
      {
        goto LABEL_324;
      }

      v235 = *(*(v225 + 168) + 4 * v233);
      v236 = *(*(v234 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v235 + 8);

      v237 = v235 == -1 && v236 == 0;
      if (v237 || (v235 & 0x80000000) != 0 || v502[1] <= v235)
      {
        break;
      }

      v238 = *v502 + 12 * v235;
      if (v236 != -1 && *(v238 + 8) != v236)
      {
        break;
      }

      v240 = *(*(*(v479 + 88) + 8 * *(v238 + 6) + 32) + 16);
      v241 = *(v240 + 128);
      if (!*(v241 + 16))
      {
        break;
      }

      v242 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v243 & 1) == 0 || *(*(v240 + 24) + 16 * *(*(v241 + 56) + 8 * v242) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_180:
      v517 = (v517 + v503);
      v516 += v504;
      v224 = v511 - 1;
      if (v511 == 1)
      {
        goto LABEL_313;
      }
    }

    dispatch_group_enter(v519);
    v244 = *(v225 + 64);
    v245 = *(v225 + 80);
    v540 = *(v225 + 112);
    v247 = *(v225 + 80);
    v246 = *(v225 + 96);
    v538 = v245;
    v539 = v246;
    v248 = *(v225 + 64);
    v536 = *(v225 + 48);
    v537 = v244;
    v249 = *(v225 + 96);
    v532 = v247;
    v533 = v249;
    LOBYTE(v534) = *(v225 + 112);
    v530 = *(v225 + 48);
    v531 = v248;
    v250 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v252 = v251;
    v543 = v532;
    v544 = v533;
    v545 = v534;
    v542 = v531;
    v541 = v530;

    sub_1AF5DD36C(&v536, &v525);
    sub_1AF5DD3C8(&v541);
    if (v252)
    {

      v514 = 0;
      v253 = 0;
      v254 = 0;
    }

    else
    {
      v255 = *(v225 + 128);

      v256 = (v255 + v250 + 24 * v233);
      v514 = *v256;
      v253 = *(v256 + 1);
      v254 = *(v256 + 2);
    }

    if (*(v225 + 184))
    {
      goto LABEL_324;
    }

    v513 = v253;
    v258 = *(*(v225 + 168) + 4 * v233);
    v259 = *(*(v257 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v258 + 8);

    v260 = swift_allocObject();
    v260[2] = sub_1AFA9EC2C;
    v260[3] = v30;
    v515 = v260;
    v261 = v518;
    v260[4] = v519;
    v262 = *(v261 + 16);

    if (v262)
    {
      v263 = *(v262 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v264 = v519;

      if ((v263 & 1) == 0 || *(v518 + 3048) != 1)
      {
        sub_1AF81F330();
        v265 = swift_allocError();
        v266 = v265;
        *v267 = v499;
        if (!*(v508 + 16))
        {
          v268 = v490;
          v269 = *(v490 + 72);
          v270 = v265;
          os_unfair_lock_lock(v269);
          v271 = *(v508 + 16);
          *(v508 + 16) = v266;
          v272 = v266;

          os_unfair_lock_unlock(*(v268 + 72));
        }

        dispatch_group_leave(v264);

        goto LABEL_206;
      }
    }

    else
    {
      swift_retain_n();
      v273 = v519;
    }

    v274 = sub_1AFAAAC40();
    v275 = v518;
    v276 = v517 + v509[9];
    v277 = *v276;
    LOBYTE(v276) = v276[8];
    v505 = v274;
    v278 = v276 | (v274 != v277);
    os_unfair_lock_lock(*(v518 + 72));
    v279 = *(v275 + 80);
    if (*(v279 + 16) && (v280 = sub_1AF41ACD4(v510, v258 | (v259 << 32)), (v281 & 1) != 0))
    {
      sub_1AF85B3D4(*(v279 + 56) + 96 * v280, &v530);
      if (BYTE8(v535) != 255)
      {
        sub_1AF85B3D4(&v530, &v525);
        sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v524 + 9) = *(v529 + 9);
        v522 = v527;
        v523 = v528;
        v524[0] = v529[0];
        v520 = v525;
        v521 = v526;
        if (!BYTE8(v529[1]))
        {
          v327 = v520;
          v328 = (v520 != v505) | v278;
          os_unfair_lock_unlock(*(v518 + 72));
          if (v328)
          {
            if (v327 == v505)
            {
              v264 = v519;
              dispatch_group_leave(v519);
LABEL_206:

              v30 = v507;
LABEL_178:

              v232 = v513;
              v231 = v514;
LABEL_179:
              sub_1AF487074(v231, v232);
              goto LABEL_180;
            }

LABEL_216:
            v492 = v258;
            v494 = v254;
            v282 = v509;
            v493 = swift_allocBox();
            v284 = v283;
            sub_1AFA5BE44(v283);
            v285 = v284 + *(v282 + 36);
            v286 = v505;
            *v285 = v505;
            *(v285 + 8) = 0;
            sub_1AFA9DE54(v516, v284, type metadata accessor for ShaderScript);
            sub_1AFA9DE54(v284, v517, sub_1AF5B23C4);
            v287 = v518;
            os_unfair_lock_lock(*(v518 + 72));
            *&v530 = v286;
            BYTE8(v535) = 0;
            sub_1AF825824(&v530, v510, v258 | (v259 << 32));
            os_unfair_lock_unlock(*(v287 + 72));
            v288 = *(v287 + 16);

            if (v288)
            {
              v289 = v480;
              v290 = v506;
              (*v497)(v480, v288 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v506);

              (*v482)(v289, 0, 1, v290);
              v291 = v495;
              (*v477)(v495, v289, v290);
            }

            else
            {
              v292 = v480;
              (*v482)(v480, 1, 1, v506);
              v291 = v495;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v293 = sub_1AFDFC538();
              sub_1AF477C68(v293, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v468)(v292, 1, v506) != 1)
              {
                sub_1AFA9C470(v292, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v491 = v259;
            v294 = sub_1AFDFC538();
            sub_1AF477C68(v294, qword_1ED73B608);
            v295 = sub_1AFDFC528();
            v296 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v297 = swift_slowAlloc();
              *v297 = 0;
              v298 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v295, v296, v298, "buildScript", "", v297, 2u);
              MEMORY[0x1B271DEA0](v297, -1, -1);
            }

            (*v497)(v486, v291, v506);
            sub_1AFDFC578();
            swift_allocObject();
            v299 = sub_1AFDFC568();
            sub_1AFA9E3C8(v516, v500, type metadata accessor for ShaderScript);
            v300 = (*(v488 + 80) + 400) & ~*(v488 + 80);
            v301 = (v484 + v300) & 0xFFFFFFFFFFFFFFF8;
            v302 = (v301 + 23) & 0xFFFFFFFFFFFFFFF8;
            v303 = (v302 + 27) & 0xFFFFFFFFFFFFFFF8;
            v304 = swift_allocObject();
            v305 = v510;
            *(v304 + 16) = v518;
            *(v304 + 24) = v305;
            v307 = v491;
            v306 = v492;
            *(v304 + 32) = v492;
            *(v304 + 36) = v307;
            *(v304 + 40) = v505;
            *(v304 + 48) = sub_1AFA9EC20;
            *(v304 + 56) = v515;
            *(v304 + 64) = v299;
            v505 = v299;
            memcpy((v304 + 72), v501, 0x148uLL);
            sub_1AFA9E320(v500, v304 + v300, type metadata accessor for ShaderScript);
            v308 = (v304 + v301);
            v309 = v496;
            *v308 = v485;
            v308[1] = v309;
            v310 = (v304 + v302);
            v311 = v513;
            v312 = v514;
            *v310 = v514;
            v310[1] = v311;
            v310[2] = v494;
            v313 = (v304 + v303);
            *v313 = v306;
            v313[1] = v307;
            *(v304 + ((v303 + 15) & 0xFFFFFFFFFFFFFFF8)) = v493;
            if ((v487 & 1) == 0)
            {
              v491 = *(v518 + 32);
              v321 = swift_allocObject();
              *(v321 + 16) = sub_1AFA9EB70;
              *(v321 + 24) = v304;
              v322 = v321;
              v492 = v321;
              v323 = swift_allocObject();
              *(v323 + 16) = sub_1AFA9EB90;
              *(v323 + 24) = v322;
              *&v527 = sub_1AF6D25EC;
              *(&v527 + 1) = v323;
              *&v525 = MEMORY[0x1E69E9820];
              *(&v525 + 1) = 1107296256;
              *&v526 = sub_1AF6F662C;
              *(&v526 + 1) = &unk_1F255A590;
              v324 = _Block_copy(&v525);
              v514 = v312;
              v325 = v324;

              sub_1AFA9C054(v501, &v530, &qword_1EB633F48, type metadata accessor for ShaderScript);

              v326 = v513;
              sub_1AF487F80(v312, v513);

              dispatch_sync(v491, v325);
              _Block_release(v325);

              (*v483)(v495, v506);
              swift_isEscapingClosureAtFileLocation();

              v30 = v507;

              sub_1AF487074(v514, v326);
              v225 = v481;
              goto LABEL_180;
            }

            v491 = *(v518 + 40);
            v314 = swift_allocObject();
            *(v314 + 16) = sub_1AFA9EB70;
            *(v314 + 24) = v304;
            v492 = v314;

            sub_1AFA9C054(v501, &v530, &qword_1EB633F48, type metadata accessor for ShaderScript);

            sub_1AF487F80(v312, v311);
            v315 = qword_1ED730EA0;

            v225 = v481;
            if (v315 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v316 = qword_1ED73B8A0;
            v317 = swift_allocObject();
            v318 = v492;
            *(v317 + 16) = sub_1AFA9EB90;
            *(v317 + 24) = v318;
            v319 = swift_allocObject();
            v319[2] = v316;
            v319[3] = sub_1AF6CC3F0;
            v319[4] = v317;
            *&v532 = sub_1AFA9EC30;
            *(&v532 + 1) = v319;
            *&v530 = MEMORY[0x1E69E9820];
            *(&v530 + 1) = 1107296256;
            *&v531 = sub_1AFCDA044;
            *(&v531 + 1) = &unk_1F255A630;
            v320 = _Block_copy(&v530);
            swift_retain_n();

            [v491 addOperationWithBlock:v320];
            _Block_release(v320);

            (*v483)(v495, v506);

            v30 = v507;

            v232 = v513;
            v231 = v514;
            goto LABEL_179;
          }

LABEL_236:
          v329 = v519;
          v330 = v517;
          sub_1AFA9DE54(v516, v517, type metadata accessor for ShaderScript);
          v331 = v509;
          v332 = *(v330 + *(v510 + 28));
          if (v332)
          {
            v333 = v517;
            v334 = *v517;
            v335 = v517[1];

            v336 = sub_1AF458B0C(v334, v335);
            v332(*(v333 + v331[13]), v336);

            sub_1AF0FB8EC(v332);
          }

          if (*(v517 + v331[10]) == 1)
          {
            v337 = *(v517 + v331[11]);
            v338 = v337;
          }

          else
          {
            sub_1AF81F330();
            v337 = swift_allocError();
            *v339 = v475;
          }

          v30 = v507;
          if (!*(v508 + 16) && v337)
          {
            v340 = v490;
            v341 = *(v490 + 72);
            v342 = v337;
            os_unfair_lock_lock(v341);
            v343 = *(v508 + 16);
            *(v508 + 16) = v337;
            v344 = v337;

            os_unfair_lock_unlock(*(v340 + 72));
          }

          dispatch_group_leave(v329);

          goto LABEL_178;
        }

        sub_1AFA9C0C8(&v520);
LABEL_215:
        os_unfair_lock_unlock(*(v518 + 72));
        if (v278)
        {
          goto LABEL_216;
        }

        goto LABEL_236;
      }
    }

    else
    {
      *&v535 = 0;
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v530 = 0u;
      BYTE8(v535) = -1;
    }

    sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_215;
  }

  if (v222 == v504)
  {
    goto LABEL_314;
  }

  v345 = *(v488 + 72);
  v494 = *(*v464 + 72);
  v517 = (v517 + v494 * v222);
  v515 = 24 * v222;
  v516 += v345 * v222;
  v476 = v345;
  while (1)
  {

    if (*(v225 + 184))
    {
      break;
    }

    v350 = *(*(v225 + 168) + 4 * v222);
    v351 = *(*(v349 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v350 + 8);

    v352 = v350 == -1 && v351 == 0;
    if (!v352 && (v350 & 0x80000000) == 0 && v502[1] > v350)
    {
      v353 = *v502 + 12 * v350;
      if (v351 == -1 || *(v353 + 8) == v351)
      {
        v355 = *(*(*(v479 + 88) + 8 * *(v353 + 6) + 32) + 16);
        v356 = *(v355 + 128);
        if (*(v356 + 16))
        {
          v357 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v358 & 1) != 0 && *(*(v355 + 24) + 16 * *(*(v356 + 56) + 8 * v357) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_248;
          }
        }
      }
    }

    dispatch_group_enter(v519);
    v359 = *(v225 + 64);
    v360 = *(v225 + 80);
    v540 = *(v225 + 112);
    v362 = *(v225 + 80);
    v361 = *(v225 + 96);
    v538 = v360;
    v539 = v361;
    v363 = *(v225 + 64);
    v536 = *(v225 + 48);
    v537 = v359;
    v364 = *(v225 + 96);
    v532 = v362;
    v533 = v364;
    LOBYTE(v534) = *(v225 + 112);
    v530 = *(v225 + 48);
    v531 = v363;
    v365 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v367 = v366;
    v543 = v532;
    v544 = v533;
    v545 = v534;
    v542 = v531;
    v541 = v530;

    sub_1AF5DD36C(&v536, &v525);
    sub_1AF5DD3C8(&v541);
    if (v367)
    {

      v514 = 0;
      v368 = 0;
      v369 = 0;
    }

    else
    {
      v370 = *(v225 + 128);

      v371 = (v370 + v515 + v365);
      v514 = *v371;
      v368 = *(v371 + 1);
      v369 = *(v371 + 2);
    }

    v512 = v368;

    if (*(v225 + 184))
    {
      break;
    }

    v513 = v369;
    v373 = *(v225 + 168);
    v511 = v222;
    v374 = *(v373 + 4 * v222);
    v505 = *(*(v372 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v374 + 8);

    v375 = swift_allocObject();
    v375[2] = sub_1AFA9EC2C;
    v375[3] = v30;
    v376 = v518;
    v375[4] = v519;
    v377 = *(v376 + 16);

    if (v377)
    {
      v378 = *(v377 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v379 = v519;

      if ((v378 & 1) == 0 || *(v518 + 3048) != 1)
      {
        sub_1AF81F330();
        v380 = swift_allocError();
        v381 = v380;
        *v382 = v499;
        if (!*(v508 + 16))
        {
          v383 = v490;
          v384 = *(v490 + 72);
          v385 = v380;
          os_unfair_lock_lock(v384);
          v386 = *(v508 + 16);
          *(v508 + 16) = v381;
          v387 = v381;

          v345 = v476;
          os_unfair_lock_unlock(*(v383 + 72));
        }

        dispatch_group_leave(v379);

        goto LABEL_274;
      }
    }

    else
    {
      swift_retain_n();
      v388 = v519;
    }

    v389 = v374;
    v390 = sub_1AFAAAC40();
    v391 = v518;
    v392 = v517 + v509[9];
    v393 = *v392;
    LOBYTE(v392) = v392[8];
    v503 = v390;
    v394 = v392 | (v390 != v393);
    os_unfair_lock_lock(*(v518 + 72));
    v395 = *(v391 + 80);
    if (!*(v395 + 16) || (v396 = sub_1AF41ACD4(v510, v374 | (v505 << 32)), (v397 & 1) == 0))
    {
      *&v535 = 0;
      v533 = 0u;
      v534 = 0u;
      v531 = 0u;
      v532 = 0u;
      v530 = 0u;
      BYTE8(v535) = -1;
LABEL_282:
      sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_283:
      v398 = v518;
      os_unfair_lock_unlock(*(v518 + 72));
      if ((v394 & 1) == 0)
      {
        goto LABEL_305;
      }

      goto LABEL_284;
    }

    sub_1AF85B3D4(*(v395 + 56) + 96 * v396, &v530);
    if (BYTE8(v535) == 255)
    {
      goto LABEL_282;
    }

    sub_1AF85B3D4(&v530, &v525);
    sub_1AFA9BF94(&v530, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v524 + 9) = *(v529 + 9);
    v522 = v527;
    v523 = v528;
    v524[0] = v529[0];
    v520 = v525;
    v521 = v526;
    if (BYTE8(v529[1]))
    {
      sub_1AFA9C0C8(&v520);
      goto LABEL_283;
    }

    v441 = v520;
    v442 = (v520 != v503) | v394;
    v398 = v518;
    os_unfair_lock_unlock(*(v518 + 72));
    if ((v442 & 1) == 0)
    {
LABEL_305:
      v444 = v517;
      sub_1AFA9DE54(v516, v517, type metadata accessor for ShaderScript);
      v445 = v509;
      v446 = *(v444 + *(v510 + 28));
      if (v446)
      {
        v447 = *v444;
        v448 = v517[1];

        v449 = v448;
        v444 = v517;
        v450 = sub_1AF458B0C(v447, v449);
        v446(*(v444 + v445[13]), v450);

        sub_1AF0FB8EC(v446);
      }

      if (*(v444 + v445[10]) == 1)
      {
        v451 = *(v444 + v445[11]);
        v452 = v451;
      }

      else
      {
        sub_1AF81F330();
        v451 = swift_allocError();
        *v453 = v475;
      }

      v30 = v507;
      if (*(v508 + 16) || !v451)
      {
        v346 = v345;
      }

      else
      {
        v346 = v345;
        v454 = v490;
        v455 = *(v490 + 72);
        v456 = v451;
        os_unfair_lock_lock(v455);
        v457 = *(v508 + 16);
        *(v508 + 16) = v451;
        v458 = v451;

        os_unfair_lock_unlock(*(v454 + 72));
      }

      v222 = v511;
      v347 = v512;
      v348 = v519;
      dispatch_group_leave(v519);

      sub_1AF487074(v514, v347);
      v345 = v346;
      goto LABEL_248;
    }

    if (v441 == v503)
    {
      v443 = v519;
      dispatch_group_leave(v519);

      v30 = v507;
LABEL_274:

      goto LABEL_300;
    }

LABEL_284:
    v491 = v374;
    v399 = v509;
    v400 = swift_allocBox();
    v402 = v401;
    sub_1AFA5BE44(v401);
    v403 = v402 + *(v399 + 36);
    v404 = v503;
    *v403 = v503;
    *(v403 + 8) = 0;
    sub_1AFA9DE54(v516, v402, type metadata accessor for ShaderScript);
    sub_1AFA9DE54(v402, v517, sub_1AF5B23C4);
    os_unfair_lock_lock(*(v398 + 72));
    *&v530 = v404;
    BYTE8(v535) = 0;
    sub_1AF825824(&v530, v510, v389 | (v505 << 32));
    os_unfair_lock_unlock(*(v398 + 72));
    v405 = *(v398 + 16);

    if (v405)
    {
      v406 = v467;
      v407 = v506;
      (*v497)(v467, v405 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v506);

      (*v482)(v406, 0, 1, v407);
      (*v477)(v489, v406, v407);
    }

    else
    {
      v408 = v467;
      (*v482)(v467, 1, 1, v506);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v409 = sub_1AFDFC538();
      sub_1AF477C68(v409, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v468)(v408, 1, v506) != 1)
      {
        sub_1AFA9C470(v408, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v492 = v400;
    v493 = v375;
    v410 = sub_1AFDFC538();
    sub_1AF477C68(v410, qword_1ED73B608);
    v411 = sub_1AFDFC528();
    v412 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v413 = swift_slowAlloc();
      *v413 = 0;
      v414 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v411, v412, v414, "buildScript", "", v413, 2u);
      MEMORY[0x1B271DEA0](v413, -1, -1);
    }

    (*v497)(v486, v489, v506);
    sub_1AFDFC578();
    swift_allocObject();
    v415 = sub_1AFDFC568();
    sub_1AFA9E3C8(v516, v500, type metadata accessor for ShaderScript);
    v416 = (*(v488 + 80) + 400) & ~*(v488 + 80);
    v417 = (v484 + v416) & 0xFFFFFFFFFFFFFFF8;
    v418 = (v417 + 23) & 0xFFFFFFFFFFFFFFF8;
    v419 = (v418 + 27) & 0xFFFFFFFFFFFFFFF8;
    v478 = (v419 + 15) & 0xFFFFFFFFFFFFFFF8;
    v420 = swift_allocObject();
    v421 = v510;
    *(v420 + 16) = v518;
    *(v420 + 24) = v421;
    v422 = v491;
    v423 = v505;
    *(v420 + 32) = v491;
    *(v420 + 36) = v423;
    *(v420 + 40) = v503;
    *(v420 + 48) = sub_1AFA9EC20;
    *(v420 + 56) = v493;
    *(v420 + 64) = v415;
    v503 = v415;
    memcpy((v420 + 72), v501, 0x148uLL);
    sub_1AFA9E320(v500, v420 + v416, type metadata accessor for ShaderScript);
    v424 = (v420 + v417);
    v425 = v496;
    *v424 = v485;
    v424[1] = v425;
    v426 = (v420 + v418);
    v427 = v513;
    v428 = v514;
    v429 = v512;
    *v426 = v514;
    v426[1] = v429;
    v426[2] = v427;
    v430 = (v420 + v419);
    *v430 = v422;
    v430[1] = v423;
    *(v420 + v478) = v492;
    if ((v487 & 1) == 0)
    {
      v505 = *(v518 + 32);
      v437 = swift_allocObject();
      *(v437 + 16) = sub_1AFA9D3D8;
      *(v437 + 24) = v420;
      v438 = swift_allocObject();
      *(v438 + 16) = sub_1AFA9EB90;
      *(v438 + 24) = v437;
      *&v527 = sub_1AF6D25EC;
      *(&v527 + 1) = v438;
      *&v525 = MEMORY[0x1E69E9820];
      *(&v525 + 1) = 1107296256;
      *&v526 = sub_1AF6F662C;
      *(&v526 + 1) = &unk_1F255A428;
      v439 = _Block_copy(&v525);
      v514 = v428;
      v440 = v439;
      v491 = *(&v527 + 1);

      sub_1AFA9C054(v501, &v530, &qword_1EB633F48, type metadata accessor for ShaderScript);

      sub_1AF487F80(v428, v429);

      dispatch_sync(v505, v440);
      _Block_release(v440);

      (*v483)(v489, v506);
      swift_isEscapingClosureAtFileLocation();

      v30 = v507;

      sub_1AF487074(v514, v429);
      v222 = v511;
      v345 = v476;
      goto LABEL_248;
    }

    v505 = *(v518 + 40);
    v431 = swift_allocObject();
    *(v431 + 16) = sub_1AFA9D3D8;
    *(v431 + 24) = v420;

    sub_1AFA9C054(v501, &v530, &qword_1EB633F48, type metadata accessor for ShaderScript);

    sub_1AF487F80(v428, v429);
    v432 = qword_1ED730EA0;

    v345 = v476;
    if (v432 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v433 = qword_1ED73B8A0;
    v434 = swift_allocObject();
    *(v434 + 16) = sub_1AFA9EB90;
    *(v434 + 24) = v431;
    v435 = swift_allocObject();
    v435[2] = v433;
    v435[3] = sub_1AF6CC3F0;
    v435[4] = v434;
    *&v532 = sub_1AFA9EC30;
    *(&v532 + 1) = v435;
    *&v530 = MEMORY[0x1E69E9820];
    *(&v530 + 1) = 1107296256;
    *&v531 = sub_1AFCDA044;
    *(&v531 + 1) = &unk_1F255A4C8;
    v436 = _Block_copy(&v530);
    swift_retain_n();

    [v505 addOperationWithBlock:v436];
    _Block_release(v436);

    (*v483)(v489, v506);

    v30 = v507;

LABEL_300:

    sub_1AF487074(v514, v512);
    v222 = v511;
LABEL_248:
    ++v222;
    v517 = (v517 + v494);
    v515 += 24;
    v516 += v345;
    if (v504 == v222)
    {
LABEL_313:
      v215 = 1;
LABEL_314:
      v459 = v498;
      sub_1AF630994(v472, &v582, v595);
      v498 = v459;
      sub_1AF62D29C(v225);
      ecs_stack_allocator_pop_snapshot(v471);
      if (v470)
      {
        os_unfair_lock_unlock(*(v225 + 344));
        os_unfair_lock_unlock(*(v225 + 376));
      }

      v220 = v469 + 1;
      if (v469 + 1 != v466)
      {
        goto LABEL_171;
      }

      sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v215 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(v519);
      }

LABEL_317:

      sub_1AFA62400(v460);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}