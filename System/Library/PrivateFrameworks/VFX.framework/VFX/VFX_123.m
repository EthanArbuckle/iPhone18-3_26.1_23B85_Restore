uint64_t sub_1AFA86E8C(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v83 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B234C(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited, v16);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2310(0);
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
    sub_1AFA9D3C0(a1);

    sub_1AF449D40(v77, v76);
    sub_1AF0D5A54(v76, &v70);
    swift_dynamicCast();
    v73 = v11;
    v74 = &off_1F250F310;
    v44 = sub_1AF585714(&v70);
    sub_1AFA9D390(a1, v44);
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
  sub_1AFA9D3C0(a1);
  v27 = v78;
  v62 = v79;
  v60 = v80;
  sub_1AF449D40(v77, v76);
  sub_1AF449D40(&v81, v69);
  v28 = MEMORY[0x1E69E7CC0];
  *v26 = 0;
  *(v26 + 4) = v28;
  v26[40] = 0;
  *(v26 + 6) = 0;
  *(v26 + 7) = 0;
  v29 = *(inited + 40);
  v30 = type metadata accessor for ScriptIndex();
  (*(*(v30 - 8) + 56))(&v26[v29], 1, 1, v30);
  *(v26 + 2) = 0x80000001AFF2B900;
  *(v26 + 3) = &unk_1F25031D0;
  *(v26 + 1) = 0xD0000000000000BFLL;
  v31 = &v26[v11[9]];
  *v31 = 0;
  v31[8] = 1;
  v26[v11[10]] = 0;
  *&v26[v11[11]] = 0;
  v32 = &v26[v11[12]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  *&v26[v11[13]] = v28;
  v34 = v19[9];
  v33 = v19[10];
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
  sub_1AFA9D3C0(v26);
  swift_dynamicCast();
  *&v26[v34] = v27;
  *&v26[v35] = v60;
  *&v26[v33] = v62;
  v38 = *v37;
  v62 = v27;

  sub_1AF919DAC(v38);
  sub_1AF0D5A54(v69, &v70);
  swift_dynamicCast();
  sub_1AFA9D390(v26, v61);
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
    sub_1AFA9E3C8(v26, v56, sub_1AF5B2310);
    v48 = v63;
    sub_1AFA9E3C8(v47, v63, type metadata accessor for ParticleInitScript);
    sub_1AFA9E8FC(v47, sub_1AF5B2310);
    sub_1AF5AD3B8(v48, v41);
    sub_1AFA9E8FC(v48, type metadata accessor for ParticleInitScript);
    sub_1AFA9D390(v26, v42);
    sub_1AF5AD548(v42, v41);
    sub_1AFA9D3C0(v42);
    sub_1AFA9E3C8(v26, v47, sub_1AF5B2310);
    sub_1AF5AD6D8(v47, v41);
    v45 = v65;
    sub_1AFA9E8FC(v47, sub_1AF5B2310);
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
    sub_1AFBFE00C(v26, v67);
    v46 = v66;
  }

  v73 = v19;
  v74 = &off_1F2558F90;
  v50 = sub_1AF585714(&v70);
  sub_1AFA9E3C8(v26, v50, sub_1AF5B2310);
  v75 = 0;
  sub_1AF8259D0(&v70, v46, v41);
  v51 = sub_1AF3CB480(v41);
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

    sub_1AFBFE024(v70, v71, v41);
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
  sub_1AFA9E8FC(v26, sub_1AF5B2310);
LABEL_18:
  result = sub_1AF85B3D4(a2, v77);
  if (v82)
  {
    return sub_1AFA9C0C8(v77);
  }

  return result;
}

uint64_t sub_1AFA876A8(uint64_t a1, char a2)
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
        if (v14 == type metadata accessor for ParticleInitScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B234C(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
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
              sub_1AFA86E8C(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF45540);
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

    v32 = sub_1AFA6F718(v31, type metadata accessor for ParticleInitScript);

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

uint64_t sub_1AFA87AFC(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v492) = a6;
  v490 = a2;
  v491 = a5;
  v486 = a4;
  v497 = 0;
  inited = type metadata accessor for ParticleInitScript(0);
  v487 = *(inited - 8);
  MEMORY[0x1EEE9AC00](inited, v13);
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
      sub_1AF5B234C(0);
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
      sub_1AF5B2310(0);
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
          v136 = sub_1AF706E40(v129, &v598);
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

                sub_1AF6FCD50(0);
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

                sub_1AF6FCD50(0);
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
      sub_1AF5B234C(0);
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
    sub_1AFA61FF8(v517, v490, sub_1AFD31938);
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
  v211 = sub_1AFA876A8(v517, v492 & 1);

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
  sub_1AF5B234C(0);
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
  v515 = sub_1AF64B110(inited, &off_1F255B9C0, v511, v222, v223, v226);
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

    v273 = sub_1AFAA2868();
    v274 = v517;
    v275 = v516 + v509[9];
    v276 = *v275;
    LOBYTE(v275) = v275[8];
    v504 = v273;
    v277 = v275 | (v273 != v276);
    os_unfair_lock_lock(*(v517 + 72));
    v278 = *(v274 + 80);
    if (*(v278 + 16) && (v279 = sub_1AF41ACD4(inited, v257 | (v258 << 32)), (v280 & 1) != 0))
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
            sub_1AFA5BD4C(v282);
            v284 = v283 + *(v281 + 36);
            v285 = v504;
            *v284 = v504;
            *(v284 + 8) = 0;
            sub_1AFA9DE54(v515, v283, type metadata accessor for ParticleInitScript);
            sub_1AFA9DE54(v283, v516, sub_1AF5B234C);
            v286 = v517;
            os_unfair_lock_lock(*(v517 + 72));
            *&v529 = v285;
            BYTE8(v534) = 0;
            sub_1AF825824(&v529, inited, v257 | (v258 << 32));
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
            sub_1AFA9E3C8(v515, v499, type metadata accessor for ParticleInitScript);
            v299 = (*(v487 + 80) + 400) & ~*(v487 + 80);
            v300 = (v483 + v299) & 0xFFFFFFFFFFFFFFF8;
            v301 = (v300 + 23) & 0xFFFFFFFFFFFFFFF8;
            v302 = (v301 + 27) & 0xFFFFFFFFFFFFFFF8;
            v303 = swift_allocObject();
            v304 = inited;
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
            sub_1AFA9E320(v499, v303 + v299, type metadata accessor for ParticleInitScript);
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
              *(v320 + 16) = sub_1AFA9EB80;
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
              *(&v525 + 1) = &unk_1F255A298;
              v323 = _Block_copy(&v524);
              v513 = v311;
              v324 = v323;

              sub_1AFA9C054(v500, &v529, qword_1EB633F88, type metadata accessor for ParticleInitScript);

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
            *(v313 + 16) = sub_1AFA9EB80;
            *(v313 + 24) = v303;
            v491 = v313;

            sub_1AFA9C054(v500, &v529, qword_1EB633F88, type metadata accessor for ParticleInitScript);

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
            *(&v530 + 1) = &unk_1F255A338;
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
          sub_1AFA9DE54(v515, v516, type metadata accessor for ParticleInitScript);
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
    v389 = sub_1AFAA2868();
    v390 = v517;
    v391 = v516 + v509[9];
    v392 = *v391;
    LOBYTE(v391) = v391[8];
    v502 = v389;
    v393 = v391 | (v389 != v392);
    os_unfair_lock_lock(*(v517 + 72));
    v394 = *(v390 + 80);
    if (!*(v394 + 16) || (v395 = sub_1AF41ACD4(inited, v373 | (v504 << 32)), (v396 & 1) == 0))
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
      sub_1AFA9DE54(v515, v516, type metadata accessor for ParticleInitScript);
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
    sub_1AFA5BD4C(v400);
    v402 = v401 + *(v398 + 36);
    v403 = v502;
    *v402 = v502;
    *(v402 + 8) = 0;
    sub_1AFA9DE54(v515, v401, type metadata accessor for ParticleInitScript);
    sub_1AFA9DE54(v401, v516, sub_1AF5B234C);
    os_unfair_lock_lock(*(v397 + 72));
    *&v529 = v403;
    BYTE8(v534) = 0;
    sub_1AF825824(&v529, inited, v388 | (v504 << 32));
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
    sub_1AFA9E3C8(v515, v499, type metadata accessor for ParticleInitScript);
    v415 = (*(v487 + 80) + 400) & ~*(v487 + 80);
    v416 = (v483 + v415) & 0xFFFFFFFFFFFFFFF8;
    v417 = (v416 + 23) & 0xFFFFFFFFFFFFFFF8;
    v418 = (v417 + 27) & 0xFFFFFFFFFFFFFFF8;
    v477 = (v418 + 15) & 0xFFFFFFFFFFFFFFF8;
    v419 = swift_allocObject();
    v420 = inited;
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
    sub_1AFA9E320(v499, v419 + v415, type metadata accessor for ParticleInitScript);
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
      *(v436 + 16) = sub_1AFA9D028;
      *(v436 + 24) = v419;
      v437 = swift_allocObject();
      *(v437 + 16) = sub_1AFA9EB90;
      *(v437 + 24) = v436;
      *&v526 = sub_1AF6D25EC;
      *(&v526 + 1) = v437;
      *&v524 = MEMORY[0x1E69E9820];
      *(&v524 + 1) = 1107296256;
      *&v525 = sub_1AF6F662C;
      *(&v525 + 1) = &unk_1F255A130;
      v438 = _Block_copy(&v524);
      v513 = v427;
      v439 = v438;
      v490 = *(&v526 + 1);

      sub_1AFA9C054(v500, &v529, qword_1EB633F88, type metadata accessor for ParticleInitScript);

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
    *(v430 + 16) = sub_1AFA9D028;
    *(v430 + 24) = v419;

    sub_1AFA9C054(v500, &v529, qword_1EB633F88, type metadata accessor for ParticleInitScript);

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
    *(&v530 + 1) = &unk_1F255A1D0;
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

uint64_t sub_1AFA8B5C4(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v83 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B22D4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated, v16);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2298(0);
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
    sub_1AFA9D010(a1);

    sub_1AF449D40(v77, v76);
    sub_1AF0D5A54(v76, &v70);
    swift_dynamicCast();
    v73 = v11;
    v74 = &off_1F250F310;
    v44 = sub_1AF585714(&v70);
    sub_1AFA9CFE0(a1, v44);
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
  sub_1AFA9D010(a1);
  v27 = v78;
  v62 = v79;
  v60 = v80;
  sub_1AF449D40(v77, v76);
  sub_1AF449D40(&v81, v69);
  v28 = MEMORY[0x1E69E7CC0];
  v26[24] = 0;
  *(v26 + 4) = v28;
  v26[40] = 0;
  *(v26 + 6) = 0;
  *(v26 + 7) = 0;
  v29 = *(updated + 40);
  v30 = type metadata accessor for ScriptIndex();
  (*(*(v30 - 8) + 56))(&v26[v29], 1, 1, v30);
  *(v26 + 1) = 0x80000001AFF2BA30;
  *(v26 + 2) = &unk_1F2503200;
  *v26 = 0xD0000000000000C3;
  v31 = &v26[v11[9]];
  *v31 = 0;
  v31[8] = 1;
  v26[v11[10]] = 0;
  *&v26[v11[11]] = 0;
  v32 = &v26[v11[12]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  *&v26[v11[13]] = v28;
  v34 = v19[9];
  v33 = v19[10];
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
  sub_1AFA9D010(v26);
  swift_dynamicCast();
  *&v26[v34] = v27;
  *&v26[v35] = v60;
  *&v26[v33] = v62;
  v38 = *v37;
  v62 = v27;

  sub_1AF919DAC(v38);
  sub_1AF0D5A54(v69, &v70);
  swift_dynamicCast();
  sub_1AFA9CFE0(v26, v61);
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
    sub_1AFA9E3C8(v26, v56, sub_1AF5B2298);
    v48 = v63;
    sub_1AFA9E3C8(v47, v63, type metadata accessor for ParticleUpdateScript);
    sub_1AFA9E8FC(v47, sub_1AF5B2298);
    sub_1AF5ACF08(v48, v41);
    sub_1AFA9E8FC(v48, type metadata accessor for ParticleUpdateScript);
    sub_1AFA9CFE0(v26, v42);
    sub_1AF5AD098(v42, v41);
    sub_1AFA9D010(v42);
    sub_1AFA9E3C8(v26, v47, sub_1AF5B2298);
    sub_1AF5AD228(v47, v41);
    v45 = v65;
    sub_1AFA9E8FC(v47, sub_1AF5B2298);
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
    sub_1AFBFDFAC(v26, v67);
    v46 = v66;
  }

  v73 = v19;
  v74 = &off_1F2558F90;
  v50 = sub_1AF585714(&v70);
  sub_1AFA9E3C8(v26, v50, sub_1AF5B2298);
  v75 = 0;
  sub_1AF8259D0(&v70, v46, v41);
  v51 = sub_1AF3CB458(v41);
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

    sub_1AFBFDFC4(v70, v71, v41);
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
  sub_1AFA9E8FC(v26, sub_1AF5B2298);
LABEL_18:
  result = sub_1AF85B3D4(a2, v77);
  if (v82)
  {
    return sub_1AFA9C0C8(v77);
  }

  return result;
}

uint64_t sub_1AFA8BDE0(uint64_t a1, char a2)
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
        if (v14 == type metadata accessor for ParticleUpdateScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B22D4(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
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
              sub_1AFA8B5C4(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF45510);
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

    v32 = sub_1AFA6F718(v31, type metadata accessor for ParticleUpdateScript);

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

uint64_t sub_1AFA8C234(uint64_t a1, uint64_t a2, NSObject *a3, int a4, unint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v511) = a6;
  v509 = a5;
  v510 = 0;
  v503 = a4;
  v507 = a2;
  updated = type metadata accessor for ParticleUpdateScript(0);
  v504 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated, v13);
  v500 = v14;
  v515 = &v478 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v482 = &v478 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v495 = &v478 - v20;
  v21 = sub_1AFDFC4F8();
  v499 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v494 = &v478 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v502 = &v478 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v508 = &v478 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = *(a1 + 16);

  v522 = a8;

  v505 = a9;

  dispatch_group_enter(a3);
  v32 = *(a7 + 184);
  v608[0] = *(a7 + 168);
  v608[1] = v32;
  v609 = *(a7 + 25);
  v33 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v493 = v31;
  sub_1AF6B06C0(v31, v608, 0x200000000, v567);
  v506 = a3;
  v532 = a1;
  v534 = v30;
  v514 = a7;
  v520 = v21;
  v512 = v33;
  if (*&v567[0])
  {
    if (v571 >= 1)
    {
      if (*(&v569 + 1))
      {
        v34 = *(&v568 + 1);
        v35 = *(&v570 + 1);
        v36 = *(&v568 + 1) + 48 * *(&v569 + 1);
        sub_1AF5B22D4(0);
        v527 = v37;
        v547 = v568;
        v548 = v569;
        v549 = v570;
        v550 = v571;
        v545 = v567[0];
        v546 = v567[1];
        sub_1AF5DD298(&v545, &v614);
        v531 = v35;
        v516 = v36;
        do
        {
          isa = v34[5].isa;
          v39 = *(isa + 376);
          swift_retain_n();
          os_unfair_lock_lock(v39);
          os_unfair_lock_lock(*(isa + 344));
          v40 = *(isa + 24);

          v616 = 0;
          v614 = 0u;
          v615 = 0u;
          memset(v590, 0, 40);
          v41 = sub_1AF65A4B4(v40, v527, &off_1F250F310, 0, 0, &v614, v590);

          sub_1AFA9E8FC(v590, sub_1AF5C4448);
          sub_1AFA9E8FC(&v614, sub_1AF5C4448);
          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v41);
          }

          else
          {
            v526 = v34;
            v43 = *(isa + 232);
            v42 = *(isa + 240);
            LODWORD(v525) = *(isa + 120);
            v519 = *(isa + 28);
            v44 = *(isa + 32);
            v45 = *(isa + 16);
            v46 = *(isa + 40);
            v47 = v46[200];

            if ((v47 & 1) != 0 || *(v48 + 200) == 1)
            {
              *(v45 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v46 = *(isa + 40);
            }

            v49 = v46[212];
            v50 = v48;
            v533 = v45;
            LODWORD(v523) = v41;
            if (v49)
            {
              LODWORD(v524) = 0;
            }

            else
            {
              LODWORD(v524) = *(v48 + 212);
            }

            v51 = v46[208];
            v530 = *(isa + 128);
            v52 = *(isa + 256);
            v53 = v42;
            v54 = v510;
            sub_1AF5B4FCC(v46, v43, v53, 0, isa);
            v510 = v54;
            v528 = *(isa + 256);
            v529 = v52;
            v55 = v528 - v52;
            if (v528 == v52)
            {
              v56 = 0;
            }

            else
            {
              v56 = v52;
            }

            *&v590[0] = v56;
            v57 = *(*(isa + 40) + 24);
            v58 = *(v57 + 16);
            if (v58)
            {
              LODWORD(v517) = v44;
              LODWORD(v518) = v51;
              v59 = v57 + 32;

              v60 = 0;
              v61 = v50;
              do
              {
                v62 = v59 + 40 * v60;
                if ((*(v62 + 32) & 1) == 0)
                {
                  v63 = *(v61 + 24);
                  v64 = *(v63 + 16);
                  if (v64)
                  {
                    v65 = (v63 + 32);
                    while (*v65 != *v62)
                    {
                      v65 += 5;
                      if (!--v64)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8();
                    v61 = v50;
                  }
                }

                ++v60;
              }

              while (v60 != v58);

              LOBYTE(v51) = v518;
              LOBYTE(v44) = v517;
            }

            if (*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(isa + 72) * v55);
            }

            if (*(isa + 184))
            {
              v66 = 0;
            }

            else
            {
              v66 = *(isa + 168);
            }

            *&v585[0] = 0;

            DWORD2(v615) = -1;
            v616 = v529;
            v617 = v528;
            v618 = v529;
            v619 = v528;
            *&v614 = v529;
            *(&v614 + 1) = v528;
            *&v615 = v66;
            if (v55 < 1)
            {
            }

            else
            {
              v518 = &v478;

              v67 = v50;

              v68 = v525;
              v69 = v519;
              v70 = v523;
              v71 = v51;
              v72 = v524;
              v73 = v530;
              do
              {

                LOBYTE(v577) = v44;
                LOBYTE(v477) = v71;
                sub_1AF626158(v70, v69 | (v44 << 32), v68, v533, &v614, v69 | (v44 << 32), isa, v67, 0, 0, 0, 0, v590, v73, v585, v477, v70, v72, v531);
              }

              while ((*(&v614 + 1) - v614) > 0);
            }

            v74 = *(isa + 192);
            v34 = v526;
            v36 = v516;
            if (v74)
            {
              v75 = *(isa + 208);
              v76 = v529;
              v77 = v516;
              v78 = v528;
              sub_1AF75D364(v529, v528, v74);
              v36 = v77;
              sub_1AF75D364(v76, v78, v75);
            }

            a1 = v532;
          }

          v34 += 6;
          os_unfair_lock_unlock(*(isa + 344));
          os_unfair_lock_unlock(*(isa + 376));
        }

        while (v34 != v36);
        sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v518) = 1;
        a3 = v506;
        a7 = v514;
      }

      else
      {
        sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v518) = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  LODWORD(v518) = 0;
LABEL_44:
  v79 = a7[4];
  v606[0] = a7[3];
  v606[1] = v79;
  v607 = *(a7 + 10);
  sub_1AF6B06C0(v493, v606, 0x200000000, v572);
  if (*&v572[0])
  {
    if (v576 >= 1 && *(&v574 + 1))
    {
      v80 = *(&v573 + 1);
      v81 = *(&v575 + 1);
      v82 = *(&v573 + 1) + 48 * *(&v574 + 1);
      sub_1AF5B2298(0);
      v527 = v83;
      v547 = v573;
      v548 = v574;
      v549 = v575;
      v550 = v576;
      v545 = v572[0];
      v546 = v572[1];
      sub_1AF5DD298(&v545, &v614);
      v531 = v81;
      v516 = v82;
      do
      {
        v84 = v80[5].isa;
        v85 = *(v84 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v85);
        os_unfair_lock_lock(*(v84 + 344));
        v86 = *(v84 + 24);

        v616 = 0;
        v614 = 0u;
        v615 = 0u;
        memset(v590, 0, 40);
        v87 = sub_1AF65A4B4(v86, 0, 0, v527, &off_1F2558F90, &v614, v590);

        sub_1AFA9E8FC(v590, sub_1AF5C4448);
        sub_1AFA9E8FC(&v614, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v87);
        }

        else
        {
          v526 = v80;
          v89 = *(v84 + 232);
          v88 = *(v84 + 240);
          LODWORD(v525) = *(v84 + 120);
          v519 = *(v84 + 28);
          v90 = *(v84 + 32);
          v91 = *(v84 + 16);
          v92 = *(v84 + 40);
          v93 = v92[200];

          if ((v93 & 1) != 0 || *(v94 + 200) == 1)
          {
            *(v91 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v92 = *(v84 + 40);
          }

          v95 = v92[212];
          v96 = v94;
          v533 = v91;
          LODWORD(v523) = v87;
          if (v95)
          {
            LODWORD(v524) = 0;
          }

          else
          {
            LODWORD(v524) = *(v94 + 212);
          }

          v97 = v92[208];
          v530 = *(v84 + 128);
          v98 = *(v84 + 256);
          v99 = v88;
          v100 = v510;
          sub_1AF5B4FCC(v92, v89, v99, 0, v84);
          v510 = v100;
          v528 = *(v84 + 256);
          v529 = v98;
          v101 = v528 - v98;
          if (v528 == v98)
          {
            v102 = 0;
          }

          else
          {
            v102 = v98;
          }

          *&v590[0] = v102;
          v103 = *(*(v84 + 40) + 24);
          v104 = *(v103 + 16);
          if (v104)
          {
            LODWORD(v517) = v90;
            LODWORD(v518) = v97;
            v105 = v103 + 32;

            v106 = 0;
            v107 = v96;
            do
            {
              v108 = v105 + 40 * v106;
              if ((*(v108 + 32) & 1) == 0)
              {
                v109 = *(v107 + 24);
                v110 = *(v109 + 16);
                if (v110)
                {
                  v111 = (v109 + 32);
                  while (*v111 != *v108)
                  {
                    v111 += 5;
                    if (!--v110)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8();
                  v107 = v96;
                }
              }

              ++v106;
            }

            while (v106 != v104);

            LOBYTE(v97) = v518;
            LOBYTE(v90) = v517;
          }

          if (*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v84 + 72) * v101);
          }

          if (*(v84 + 184))
          {
            v112 = 0;
          }

          else
          {
            v112 = *(v84 + 168);
          }

          *&v585[0] = 0;

          DWORD2(v615) = -1;
          v616 = v529;
          v617 = v528;
          v618 = v529;
          v619 = v528;
          *&v614 = v529;
          *(&v614 + 1) = v528;
          *&v615 = v112;
          if (v101 < 1)
          {
          }

          else
          {
            v518 = &v478;

            v113 = v96;

            v114 = v525;
            v115 = v519;
            v116 = v523;
            v117 = v97;
            v118 = v524;
            v119 = v530;
            do
            {

              LOBYTE(v577) = v90;
              LOBYTE(v477) = v117;
              sub_1AF626158(v116, v115 | (v90 << 32), v114, v533, &v614, v115 | (v90 << 32), v84, v113, 0, 0, 0, 0, v590, v119, v585, v477, v116, v118, v531);
            }

            while ((*(&v614 + 1) - v614) > 0);
          }

          v120 = *(v84 + 192);
          v80 = v526;
          v82 = v516;
          if (v120)
          {
            v121 = *(v84 + 208);
            v122 = v529;
            v123 = v516;
            v124 = v528;
            sub_1AF75D364(v529, v528, v120);
            v82 = v123;
            sub_1AF75D364(v122, v124, v121);
          }

          a1 = v532;
        }

        v80 += 6;
        os_unfair_lock_unlock(*(v84 + 344));
        os_unfair_lock_unlock(*(v84 + 376));
      }

      while (v80 != v82);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v518) = 1;
      a3 = v506;
      a7 = v514;
    }

    else
    {
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v518) = 1;
    }
  }

  v125 = *(a7 + 104);
  v604[0] = *(a7 + 88);
  v604[1] = v125;
  v605 = *(a7 + 15);
  sub_1AF6B06C0(v493, v604, 0x200000000, &v577);
  if (v577)
  {
    v528 = v584;
    if (v584 >= 1)
    {
      v527 = v581;
      if (v581)
      {
        v126 = 0;
        v526 = v580;
        v127 = v583;
        v524 = v583;
        v525 = v582;
        v128 = v582[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];
        v533 = v583[4].isa;
        v594 = v577;
        v595 = v578;
        v596 = v579;
        LODWORD(v523) = v128;
        do
        {
          v531 = v126;
          v129 = &v526[6 * v126];
          isa_low = LODWORD(v129->isa);
          isa_high = HIDWORD(v129->isa);
          v132 = LODWORD(v129[1].isa);
          v133 = v129[2].isa;
          v134 = v129[3].isa;
          v136 = v129[4].isa;
          v135 = v129[5].isa;
          if (v128)
          {
            v137 = *(v135 + 376);

            os_unfair_lock_lock(v137);
            os_unfair_lock_lock(*(v135 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v533);
          v138 = *&v127[8].isa;
          v612[0] = *&v127[6].isa;
          v612[1] = v138;
          v613 = v127[10].isa;
          v139 = *(*(*(*(v135 + 40) + 16) + 32) + 16) + 1;
          v127[6].isa = ecs_stack_allocator_allocate(v127[4].isa, 48 * v139, 8);
          v127[7].isa = v139;
          v127[9].isa = 0;
          v127[10].isa = 0;
          v127[8].isa = 0;
          LOBYTE(v545) = 1;
          *&v614 = v525;
          *(&v614 + 1) = v135;
          *&v615 = v127;
          *(&v615 + 1) = v132;
          v616 = (isa_high - isa_low + v132);
          v617 = v528;
          v618 = isa_low;
          v619 = isa_high;
          v620 = 0;
          v621 = 0;
          v622 = 1;
          v623 = v133;
          v624 = v134;
          v625 = v136;
          v140 = v510;
          v141 = sub_1AF706E04(v135, &v614);
          v142 = v623;
          v530 = v140;
          if (v623)
          {
            v143 = v625;
            if (v625)
            {
              v529 = v615;
              v144 = (v141 + 8);
              do
              {
                v142 = (v142 + 8);
                v145 = *(v144 - 1);
                v146 = *v144;

                sub_1AFD08440(v147, v145, v146);

                sub_1AF6FCCD8(0);
                v149 = *(*(v135 + 40) + 16);
                v150 = *(v149 + 128);
                if (*(v150 + 16))
                {
                  v151 = v148;
                  v152 = sub_1AF449CB8(v148);
                  if ((v153 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v152) + 32) == v151)
                  {
                    *&v545 = v151;
                    *(&v545 + 1) = &off_1F2559388;
                    BYTE8(v547) = 1;
                    MEMORY[0x1EEE9AC00](v152, v153);
                    v477 = v135;

                    sub_1AF63023C(0, v135, sub_1AFA9EC24);

                    sub_1AF635250(&v545);
                  }
                }

                v144 += 2;
                v143 = (v143 - 1);
              }

              while (v143);
            }
          }

          else
          {
            v154 = v618;
            v155 = v619;
            if (v618 != v619)
            {
              v157 = (v141 + 16 * v618 + 8);
              do
              {
                v158 = *(v157 - 1);
                v159 = *v157;

                sub_1AFD08440(v160, v158, v159);

                sub_1AF6FCCD8(0);
                v162 = *(*(v135 + 40) + 16);
                v163 = *(v162 + 128);
                if (*(v163 + 16))
                {
                  v164 = v161;
                  v165 = sub_1AF449CB8(v161);
                  if ((v166 & 1) != 0 && *(*(v162 + 24) + 16 * *(*(v163 + 56) + 8 * v165) + 32) == v164)
                  {
                    *&v545 = v164;
                    *(&v545 + 1) = &off_1F2559388;
                    BYTE8(v547) = 1;
                    MEMORY[0x1EEE9AC00](v165, v166);
                    v477 = v135;

                    sub_1AF63023C(0, v135, sub_1AFA9EC24);

                    sub_1AF635250(&v545);
                  }
                }

                ++v154;
                v157 += 2;
              }

              while (v155 != v154);
            }
          }

          v127 = v524;
          v156 = v530;
          sub_1AF630994(v524, &v594, v612);
          sub_1AF62D29C(v135);
          ecs_stack_allocator_pop_snapshot(v533);
          v128 = v523;
          if (v523)
          {
            os_unfair_lock_unlock(*(v135 + 344));
            os_unfair_lock_unlock(*(v135 + 376));
          }

          v510 = v156;

          v126 = v531 + 1;
        }

        while ((v531 + 1) != v527);
      }
    }

    sub_1AFA9BF94(&v577, &qword_1ED725EA0, &type metadata for QueryResult);
    a3 = v506;
    a1 = v532;
  }

  v167 = v514[9];
  v602[0] = v514[8];
  v602[1] = v167;
  v603 = *(v514 + 20);
  sub_1AF6B06C0(v493, v602, 0x200000000, v585);
  if (*&v585[0])
  {
    v168 = v589;
    if (v589 >= 1 && *(&v587 + 1))
    {
      v501 = v589;
      v169 = *(&v586 + 1);
      v170 = *(&v588 + 1);
      v171 = *(&v586 + 1) + 48 * *(&v587 + 1);
      sub_1AF5B22D4(0);
      v527 = v172;
      v547 = v586;
      v548 = v587;
      v549 = v588;
      v550 = v589;
      v545 = v585[0];
      v546 = v585[1];
      sub_1AF5DD298(&v545, v590);
      v531 = v170;
      *&v513 = v171;
      do
      {
        v173 = v169[5].isa;
        v174 = *(v173 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v174);
        os_unfair_lock_lock(*(v173 + 344));
        v175 = *(v173 + 24);

        memset(v590, 0, 40);
        *&v563 = 0;
        v562 = 0u;
        v561 = 0u;
        v176 = sub_1AF65A4B4(v175, 0, 0, v527, &off_1F250F310, v590, &v561);

        sub_1AFA9E8FC(&v561, sub_1AF5C4448);
        sub_1AFA9E8FC(v590, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v176);
        }

        else
        {
          v526 = v169;
          v178 = *(v173 + 232);
          v177 = *(v173 + 240);
          LODWORD(v525) = *(v173 + 120);
          v519 = *(v173 + 28);
          v179 = *(v173 + 32);
          v180 = *(v173 + 16);
          v181 = *(v173 + 40);
          v182 = v181[200];

          if ((v182 & 1) != 0 || *(v183 + 200) == 1)
          {
            *(v180 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v181 = *(v173 + 40);
          }

          v184 = v181[212];
          v185 = v183;
          v533 = v180;
          LODWORD(v523) = v176;
          if (v184)
          {
            LODWORD(v524) = 0;
          }

          else
          {
            LODWORD(v524) = *(v183 + 212);
          }

          v186 = v181[208];
          v530 = *(v173 + 128);
          v187 = *(v173 + 256);
          v188 = v177;
          v189 = v510;
          sub_1AF5B4FCC(v181, v178, v188, 0, v173);
          v510 = v189;
          v528 = *(v173 + 256);
          v529 = v187;
          v190 = v528 - v187;
          if (v528 == v187)
          {
            v191 = 0;
          }

          else
          {
            v191 = v187;
          }

          *&v561 = v191;
          v192 = *(*(v173 + 40) + 24);
          v193 = *(v192 + 16);
          if (v193)
          {
            LODWORD(v516) = v179;
            LODWORD(v517) = v186;
            v194 = v192 + 32;

            v195 = 0;
            v196 = v185;
            do
            {
              v197 = v194 + 40 * v195;
              if ((*(v197 + 32) & 1) == 0)
              {
                v198 = *(v196 + 24);
                v199 = *(v198 + 16);
                if (v199)
                {
                  v200 = (v198 + 32);
                  while (*v200 != *v197)
                  {
                    v200 += 5;
                    if (!--v199)
                    {
                      goto LABEL_130;
                    }
                  }
                }

                else
                {
LABEL_130:
                  sub_1AF640BC8();
                  v196 = v185;
                }
              }

              ++v195;
            }

            while (v195 != v193);

            LOBYTE(v186) = v517;
            LOBYTE(v179) = v516;
          }

          if (*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v173 + 72) * v190);
          }

          if (*(v173 + 184))
          {
            v201 = 0;
          }

          else
          {
            v201 = *(v173 + 168);
          }

          *&v540 = 0;

          *&v590[1] = v201;
          DWORD2(v590[1]) = -1;
          *&v590[2] = v529;
          *(&v590[2] + 1) = v528;
          *&v591 = v529;
          *(&v591 + 1) = v528;
          *&v590[0] = v529;
          *(&v590[0] + 1) = v528;
          if (v190 < 1)
          {
          }

          else
          {
            v517 = &v478;

            v202 = v185;

            v203 = v525;
            v204 = v519;
            v205 = v523;
            v206 = v186;
            v207 = v524;
            v208 = v530;
            do
            {

              LOBYTE(v535) = v179;
              LOBYTE(v477) = v206;
              sub_1AF626158(v205, v204 | (v179 << 32), v203, v533, v590, v204 | (v179 << 32), v173, v202, 0, 0, 0, 0, &v561, v208, &v540, v477, v205, v207, v531);
            }

            while ((*(&v590[0] + 1) - *&v590[0]) > 0);
          }

          v209 = *(v173 + 192);
          v169 = v526;
          v171 = v513;
          if (v209)
          {
            v210 = *(v173 + 208);
            v211 = v529;
            v212 = v513;
            v213 = v528;
            sub_1AF75D364(v529, v528, v209);
            v171 = v212;
            sub_1AF75D364(v211, v213, v210);
          }

          a1 = v532;
        }

        v169 += 6;
        os_unfair_lock_unlock(*(v173 + 344));
        os_unfair_lock_unlock(*(v173 + 376));
      }

      while (v169 != v171);
      sub_1AFA9BF94(v585, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v585, &qword_1ED725EA0, &type metadata for QueryResult);
      a3 = v506;
      v168 = v501;
    }

    else
    {
      sub_1AFA9BF94(v585, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v214 = v518;
    if (v168 > 0)
    {
      v214 = 1;
    }

    LODWORD(v518) = v214;
  }

  if (v507)
  {
    sub_1AFA61FF8(a1, v507, sub_1AFD32D1C);
    LODWORD(v518) = v518 | v215;
  }

  if (v509)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v217 = sub_1AFA8BDE0(a1, v511 & 1);

  v218 = *(a1 + 16);

  if (v218)
  {
    v501 = sub_1AF8BB88C();
    v509 = v219;
  }

  else
  {
    v501 = 0;
    v509 = 0xE000000000000000;
  }

  v220 = v518 | v217;
  v221 = v514[14];
  v600[0] = v514[13];
  v600[1] = v221;
  v601 = *(v514 + 30);
  sub_1AF6B06C0(v493, v600, 0x200000000, v590);
  v222 = *&v590[0];
  if (!*&v590[0])
  {

    if ((v220 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v593 <= 0 || (v481 = *(&v591 + 1)) == 0)
  {

    sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v220 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v480 = *(&v590[2] + 1);
  v487 = *(&v592 + 1);
  v486 = *(*(&v592 + 1) + 32);
  v485 = *(v592 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B22D4(0);
  v224 = v223;
  v597 = v222;
  v598 = *(v590 + 8);
  v599 = *(&v590[1] + 8);
  v516 = (v493 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v563 = v590[2];
  v564 = v591;
  v565 = v592;
  v566 = v593;
  v561 = v590[0];
  v562 = v590[1];
  sub_1AF5DD298(&v561, &v545);
  v225 = 0;
  v523 = v224;
  v479 = v224 - 8;
  v511 = (v499 + 2);
  v491 = (v499 + 4);
  v483 = (v499 + 6);
  v500 += 7;
  v489 = &v541;
  v498 = (v499 + 7);
  ++v499;
  v488 = &v546;
  v490 = xmmword_1AFE21110;
  v513 = xmmword_1AFE72020;
LABEL_170:
  v484 = v225;
  v226 = (v480 + 48 * v225);
  v227 = *v226;
  v507 = v226[1];
  v229 = *(v226 + 2);
  v228 = *(v226 + 3);
  v230 = *(v226 + 4);
  v231 = *(v226 + 5);
  if (v485)
  {
    v232 = *(v231 + 376);

    os_unfair_lock_lock(v232);
    os_unfair_lock_lock(*(v231 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v486);
  v233 = v487;
  v234 = *(v487 + 4);
  v610[0] = *(v487 + 3);
  v610[1] = v234;
  v611 = v487[10];
  v235 = *(*(*(*(v231 + 40) + 16) + 32) + 16) + 1;
  v233[6] = ecs_stack_allocator_allocate(v487[4], 48 * v235, 8);
  v233[7] = v235;
  v233[9] = 0;
  v233[10] = 0;
  v233[8] = 0;
  v533 = sub_1AF64B110(updated, &off_1F255BAD0, v229, v228, v230, v233);
  v236 = sub_1AF64B110(v523, &off_1F250F310, v229, v228, v230, v233);
  v237 = v236;
  if (v229)
  {
    v528 = v229;
    v238 = v532;
    if (!v230)
    {
      goto LABEL_313;
    }

    v518 = *(v504 + 72);
    v517 = *(*v479 + 72);
    v496 = v231;
    while (1)
    {
      v243 = *v528;
      v527 = v230;
      ++v528;

      if (*(v231 + 184))
      {
        goto LABEL_324;
      }

      v245 = *(*(v231 + 168) + 4 * v243);
      v246 = *(*(v244 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v245 + 8);

      v247 = v245 == -1 && v246 == 0;
      if (v247 || (v245 & 0x80000000) != 0 || v516[1] <= v245)
      {
        break;
      }

      v248 = *v516 + 12 * v245;
      if (v246 != -1 && *(v248 + 8) != v246)
      {
        break;
      }

      v250 = *(*(*(v493 + 88) + 8 * *(v248 + 6) + 32) + 16);
      v251 = *(v250 + 128);
      if (!*(v251 + 16))
      {
        break;
      }

      v252 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v253 & 1) == 0 || *(*(v250 + 24) + 16 * *(*(v251 + 56) + 8 * v252) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_178:
      v237 = (v517 + v237);
      v533 = (v518 + v533);
      v230 = v527 - 1;
      if (v527 == 1)
      {
        v220 = 1;
        goto LABEL_313;
      }
    }

    dispatch_group_enter(a3);
    v254 = *(v231 + 64);
    v255 = *(v231 + 80);
    v555 = *(v231 + 112);
    v257 = *(v231 + 80);
    v256 = *(v231 + 96);
    v553 = v255;
    v554 = v256;
    v258 = *(v231 + 64);
    v551 = *(v231 + 48);
    v552 = v254;
    v259 = *(v231 + 96);
    v547 = v257;
    v548 = v259;
    LOBYTE(v549) = *(v231 + 112);
    v545 = *(v231 + 48);
    v546 = v258;
    v260 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v262 = v261;
    v558 = v547;
    v559 = v548;
    v560 = v549;
    v557 = v546;
    v556 = v545;

    sub_1AF5DD36C(&v551, &v540);
    sub_1AF5DD3C8(&v556);
    if (v262)
    {

      v530 = 0;
      v526 = 0;
      v263 = 0;
    }

    else
    {
      v264 = *(v231 + 128);

      v265 = (v264 + v260 + 24 * v243);
      v530 = *v265;
      v263 = *(v265 + 2);
      v526 = *(v265 + 1);
    }

    v267 = v523;
    if (*(v231 + 184))
    {
      goto LABEL_324;
    }

    v529 = v263;
    v268 = *(*(v266 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v231 + 168) + 4 * v243) + 8);
    v524 = *(*(v231 + 168) + 4 * v243);
    v525 = v268;

    v269 = swift_allocObject();
    v270 = v534;
    v269[2] = sub_1AFA9EC2C;
    v269[3] = v270;
    v531 = v269;
    v269[4] = a3;
    v271 = *(v238 + 16);

    if (v271)
    {
      v272 = *(v271 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v273 = a3;

      if ((v272 & 1) == 0 || *(v238 + 3048) != 1)
      {
        sub_1AF81F330();
        v274 = swift_allocError();
        v275 = v274;
        *v276 = v513;
        if (!*(v522 + 16))
        {
          v277 = v505;
          v278 = *(v505 + 72);
          v279 = v274;
          os_unfair_lock_lock(v278);
          v280 = *(v522 + 16);
          *(v522 + 16) = v275;
          v281 = v275;

          os_unfair_lock_unlock(*(v277 + 72));
        }

        dispatch_group_leave(v273);

LABEL_204:

        v241 = v530;
        v242 = v526;
LABEL_177:
        sub_1AF487074(v241, v242);
        goto LABEL_178;
      }
    }

    else
    {
      swift_retain_n();
      v282 = a3;
    }

    v283 = v524;
    v284 = sub_1AFAA3818();
    v285 = v237 + v267[9];
    v286 = *v285;
    LOBYTE(v285) = v285[8];
    v519 = v284;
    v287 = v285 | (v284 != v286);
    os_unfair_lock_lock(*(v238 + 72));
    v288 = *(v238 + 80);
    if (*(v288 + 16) && (v289 = sub_1AF41ACD4(updated, v283 | (v525 << 32)), (v290 & 1) != 0))
    {
      sub_1AF85B3D4(*(v288 + 56) + 96 * v289, &v545);
      if (BYTE8(v550) != 255)
      {
        sub_1AF85B3D4(&v545, &v540);
        sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v539 + 9) = *(v544 + 9);
        v537 = v542;
        v538 = v543;
        v539[0] = v544[0];
        v535 = v540;
        v536 = v541;
        if (!BYTE8(v544[1]))
        {
          v336 = v535;
          v337 = (v535 != v519) | v287;
          os_unfair_lock_unlock(*(v238 + 72));
          if (v337)
          {
            if (v336 != v519)
            {
LABEL_214:
              v512 = swift_allocBox();
              v292 = v291;
              sub_1AFA9ED90(v291);
              v293 = v292 + v267[9];
              *(v292 + v267[10]) = 0;
              *(v292 + v267[11]) = 0;
              v294 = (v292 + v267[12]);
              *v294 = 0;
              v294[1] = 0xE000000000000000;
              *(v292 + v267[13]) = MEMORY[0x1E69E7CC0];
              v295 = v519;
              *v293 = v519;
              *(v293 + 8) = 0;
              sub_1AFA9DE54(v533, v292, type metadata accessor for ParticleUpdateScript);
              sub_1AFA9DE54(v292, v237, sub_1AF5B22D4);
              os_unfair_lock_lock(*(v238 + 72));
              *&v545 = v295;
              BYTE8(v550) = 0;
              sub_1AF825824(&v545, updated, v283 | (v525 << 32));
              os_unfair_lock_unlock(*(v238 + 72));
              v296 = *(v238 + 16);

              if (v296)
              {
                v297 = v495;
                v298 = v520;
                (*v511)(v495, v296 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v520);

                (*v498)(v297, 0, 1, v298);
                v299 = v508;
                (*v491)(v508, v297, v298);
              }

              else
              {
                v300 = v495;
                (*v498)(v495, 1, 1, v520);
                v299 = v508;
                if (qword_1ED7270F0 != -1)
                {
                  swift_once();
                }

                v301 = sub_1AFDFC538();
                sub_1AF477C68(v301, qword_1ED73B608);
                sub_1AFDFC528();
                sub_1AFDFC4D8();
                if ((*v483)(v300, 1, v520) != 1)
                {
                  sub_1AFA9C470(v300, &qword_1EB633050, MEMORY[0x1E69E93B8]);
                }
              }

              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v507 = v237;
              v302 = sub_1AFDFC538();
              sub_1AF477C68(v302, qword_1ED73B608);
              v303 = sub_1AFDFC528();
              v304 = sub_1AFDFDB88();
              if (sub_1AFDFDCE8())
              {
                v305 = swift_slowAlloc();
                *v305 = 0;
                v306 = sub_1AFDFC4E8();
                _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v303, v304, v306, "buildScript", "", v305, 2u);
                MEMORY[0x1B271DEA0](v305, -1, -1);
              }

              (*v511)(v502, v299, v520);
              sub_1AFDFC578();
              swift_allocObject();
              v307 = sub_1AFDFC568();
              sub_1AFA9E3C8(v533, v515, type metadata accessor for ParticleUpdateScript);
              v308 = (*(v504 + 80) + 400) & ~*(v504 + 80);
              v309 = (v500 + v308) & 0xFFFFFFFFFFFFFFF8;
              v310 = (v309 + 23) & 0xFFFFFFFFFFFFFFF8;
              v311 = (v310 + 27) & 0xFFFFFFFFFFFFFFF8;
              v312 = swift_allocObject();
              v313 = updated;
              *(v312 + 16) = v532;
              *(v312 + 24) = v313;
              v314 = v524;
              v315 = v525;
              *(v312 + 32) = v524;
              *(v312 + 36) = v315;
              *(v312 + 40) = v519;
              *(v312 + 48) = sub_1AFA9EC20;
              *(v312 + 56) = v531;
              *(v312 + 64) = v307;
              v519 = v307;
              memcpy((v312 + 72), v514, 0x148uLL);
              sub_1AFA9E320(v515, v312 + v308, type metadata accessor for ParticleUpdateScript);
              v316 = (v312 + v309);
              v317 = v509;
              *v316 = v501;
              v316[1] = v317;
              v318 = (v312 + v310);
              v319 = v529;
              v320 = v530;
              v321 = v526;
              *v318 = v530;
              v318[1] = v321;
              v318[2] = v319;
              v322 = (v312 + v311);
              *v322 = v314;
              v322[1] = v315;
              *(v312 + ((v311 + 15) & 0xFFFFFFFFFFFFFFF8)) = v512;
              if (v503)
              {
                v525 = *(v532 + 40);
                v323 = swift_allocObject();
                *(v323 + 16) = sub_1AFA9EB7C;
                *(v323 + 24) = v312;

                sub_1AFA9C054(v514, &v545, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript);

                sub_1AF487F80(v320, v321);
                v324 = qword_1ED730EA0;

                a3 = v506;
                v237 = v507;
                v325 = v321;
                v231 = v496;
                if (v324 != -1)
                {
                  swift_once();
                }

                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v326 = qword_1ED73B8A0;
                v327 = swift_allocObject();
                *(v327 + 16) = sub_1AFA9EB90;
                *(v327 + 24) = v323;
                v328 = swift_allocObject();
                v328[2] = v326;
                v328[3] = sub_1AF6CC3F0;
                v328[4] = v327;
                *&v547 = sub_1AFA9EC30;
                *(&v547 + 1) = v328;
                *&v545 = MEMORY[0x1E69E9820];
                *(&v545 + 1) = 1107296256;
                *&v546 = sub_1AFCDA044;
                *(&v546 + 1) = &unk_1F255A040;
                v329 = _Block_copy(&v545);
                swift_retain_n();

                [v525 addOperationWithBlock_];
                _Block_release(v329);

                (*v499)(v508, v520);

                sub_1AF487074(v530, v325);
                v238 = v532;
              }

              else
              {
                v524 = *(v532 + 32);
                v330 = swift_allocObject();
                v330[2] = sub_1AFA9EB7C;
                v330[3] = v312;
                v331 = v330;
                v525 = v330;
                v332 = swift_allocObject();
                *(v332 + 16) = sub_1AFA9EB90;
                *(v332 + 24) = v331;
                *&v542 = sub_1AF6D25EC;
                *(&v542 + 1) = v332;
                *&v540 = MEMORY[0x1E69E9820];
                *(&v540 + 1) = 1107296256;
                *&v541 = sub_1AF6F662C;
                *(&v541 + 1) = &unk_1F2559FA0;
                v333 = _Block_copy(&v540);
                v530 = v320;
                v334 = v333;
                v497 = *(&v542 + 1);

                sub_1AFA9C054(v514, &v545, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript);

                sub_1AF487F80(v320, v321);

                dispatch_sync(v524, v334);
                _Block_release(v334);

                (*v499)(v508, v520);
                swift_isEscapingClosureAtFileLocation();
                v335 = v506;

                a3 = v335;
                sub_1AF487074(v530, v321);
                v238 = v532;
                v237 = v507;
                v231 = v496;
              }

              goto LABEL_178;
            }

            dispatch_group_leave(a3);

            goto LABEL_204;
          }

LABEL_234:
          sub_1AFA9DE54(v533, v237, type metadata accessor for ParticleUpdateScript);
          v338 = v237[6];
          if (v338)
          {
            v340 = *v237;
            v339 = v237[1];

            v341 = v340;
            v238 = v532;
            v342 = sub_1AF458B0C(v341, v339);
            v338(*(v237 + v267[13]), v342);

            sub_1AF0FB8EC(v338);
          }

          if (*(v237 + v267[10]) == 1)
          {
            v343 = *(v237 + v267[11]);
            v344 = v343;
          }

          else
          {
            sub_1AF81F330();
            v343 = swift_allocError();
            *v345 = v490;
          }

          if (!*(v522 + 16) && v343)
          {
            v346 = v505;
            v347 = *(v505 + 72);
            v348 = v343;
            os_unfair_lock_lock(v347);
            v349 = *(v522 + 16);
            *(v522 + 16) = v343;
            v350 = v343;

            os_unfair_lock_unlock(*(v346 + 72));
          }

          v239 = v526;
          v240 = v530;
          dispatch_group_leave(a3);

          v241 = v240;
          v242 = v239;
          goto LABEL_177;
        }

        sub_1AFA9C0C8(&v535);
LABEL_213:
        os_unfair_lock_unlock(*(v238 + 72));
        if (v287)
        {
          goto LABEL_214;
        }

        goto LABEL_234;
      }
    }

    else
    {
      *&v550 = 0;
      v548 = 0u;
      v549 = 0u;
      v546 = 0u;
      v547 = 0u;
      v545 = 0u;
      BYTE8(v550) = -1;
    }

    sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_213;
  }

  v351 = v220;
  v352 = v507;
  if (v227 == v507)
  {
    v353 = v510;
    v220 = v351;
    goto LABEL_314;
  }

  v354 = *(v504 + 72);
  v517 = *(*v479 + 72);
  v518 = v354;
  v355 = (v236 + v517 * v227);
  v531 = (v533 + v354 * v227);
  v356 = v227;
  v357 = 24 * v227;
  while (1)
  {
    v533 = v355;

    if (*(v231 + 184))
    {
      break;
    }

    v362 = *(*(v231 + 168) + 4 * v356);
    v363 = *(*(v361 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v362 + 8);

    v364 = v362 == -1 && v363 == 0;
    if (!v364 && (v362 & 0x80000000) == 0 && v516[1] > v362)
    {
      v365 = *v516 + 12 * v362;
      if (v363 == -1 || *(v365 + 8) == v363)
      {
        v367 = *(*(*(v493 + 88) + 8 * *(v365 + 6) + 32) + 16);
        v368 = *(v367 + 128);
        if (*(v368 + 16))
        {
          v369 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v370 & 1) != 0 && *(*(v367 + 24) + 16 * *(*(v368 + 56) + 8 * v369) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_250;
          }
        }
      }
    }

    dispatch_group_enter(a3);
    v371 = *(v231 + 64);
    v372 = *(v231 + 80);
    v555 = *(v231 + 112);
    v374 = *(v231 + 80);
    v373 = *(v231 + 96);
    v553 = v372;
    v554 = v373;
    v375 = *(v231 + 64);
    v551 = *(v231 + 48);
    v552 = v371;
    v376 = *(v231 + 96);
    v547 = v374;
    v548 = v376;
    LOBYTE(v549) = *(v231 + 112);
    v545 = *(v231 + 48);
    v546 = v375;
    v377 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v379 = v378;
    v558 = v547;
    v559 = v548;
    v560 = v549;
    v557 = v546;
    v556 = v545;

    sub_1AF5DD36C(&v551, &v540);
    sub_1AF5DD3C8(&v556);
    if (v379)
    {

      v529 = 0;
      v380 = 0;
      v381 = 0;
    }

    else
    {
      v382 = *(v231 + 128);

      v383 = (v382 + v357 + v377);
      v529 = *v383;
      v380 = *(v383 + 1);
      v381 = *(v383 + 2);
    }

    v528 = v380;

    if (*(v231 + 184))
    {
      break;
    }

    v530 = v381;
    v385 = *(v384 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v525 = *(*(v231 + 168) + 4 * v356);
    v526 = *(v385 + 12 * v525 + 8);
    v527 = v357;

    v386 = swift_allocObject();
    v387 = v534;
    v386[2] = sub_1AFA9EC2C;
    v386[3] = v387;
    v386[4] = a3;
    v388 = *(v532 + 16);

    if (v388)
    {
      v389 = *(v388 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v390 = a3;

      if ((v389 & 1) == 0 || *(v532 + 3048) != 1)
      {
        sub_1AF81F330();
        v358 = swift_allocError();
        v359 = v358;
        *v360 = v513;
        if (!*(v522 + 16))
        {
          v414 = v356;
          v415 = v505;
          v416 = *(v505 + 72);
          v417 = v358;
          os_unfair_lock_lock(v416);
          v418 = *(v522 + 16);
          *(v522 + 16) = v359;
          v419 = v359;

          v420 = *(v415 + 72);
          v356 = v414;
          v352 = v507;
          os_unfair_lock_unlock(v420);
        }

        dispatch_group_leave(v390);

        sub_1AF487074(v529, v528);
        goto LABEL_249;
      }
    }

    else
    {
      swift_retain_n();
      v391 = a3;
    }

    v392 = v525;
    v393 = sub_1AFAA3818();
    v394 = v532;
    v395 = v533 + v523[9];
    v396 = *v395;
    LOBYTE(v395) = v395[8];
    v524 = v393;
    v397 = v395 | (v393 != v396);
    os_unfair_lock_lock(*(v532 + 72));
    v398 = *(v394 + 80);
    v399 = *(v398 + 16);
    v519 = v356;
    if (!v399 || (v400 = sub_1AF41ACD4(updated, v392 | (v526 << 32)), (v401 & 1) == 0))
    {
      *&v550 = 0;
      v548 = 0u;
      v549 = 0u;
      v546 = 0u;
      v547 = 0u;
      v545 = 0u;
      BYTE8(v550) = -1;
LABEL_281:
      sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
      goto LABEL_282;
    }

    sub_1AF85B3D4(*(v398 + 56) + 96 * v400, &v545);
    if (BYTE8(v550) == 255)
    {
      goto LABEL_281;
    }

    sub_1AF85B3D4(&v545, &v540);
    sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v539 + 9) = *(v544 + 9);
    v537 = v542;
    v538 = v543;
    v539[0] = v544[0];
    v535 = v540;
    v536 = v541;
    if (BYTE8(v544[1]))
    {
      sub_1AFA9C0C8(&v535);
LABEL_282:
      v402 = v532;
      os_unfair_lock_unlock(*(v532 + 72));
      if ((v397 & 1) == 0)
      {
        goto LABEL_303;
      }

LABEL_283:
      v403 = v523;
      v404 = swift_allocBox();
      v406 = v405;
      sub_1AFA9ED90(v405);
      v407 = v406 + v403[9];
      *(v406 + v403[10]) = 0;
      *(v406 + v403[11]) = 0;
      v408 = (v406 + v403[12]);
      *v408 = 0;
      v408[1] = 0xE000000000000000;
      *(v406 + v403[13]) = MEMORY[0x1E69E7CC0];
      v409 = v524;
      *v407 = v524;
      *(v407 + 8) = 0;
      sub_1AFA9DE54(v531, v406, type metadata accessor for ParticleUpdateScript);
      sub_1AFA9DE54(v406, v533, sub_1AF5B22D4);
      os_unfair_lock_lock(*(v402 + 72));
      *&v545 = v409;
      BYTE8(v550) = 0;
      sub_1AF825824(&v545, updated, v392 | (v526 << 32));
      os_unfair_lock_unlock(*(v402 + 72));
      v410 = *(v402 + 16);

      if (v410)
      {
        v411 = v482;
        v412 = v520;
        (*v511)(v482, v410 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v520);

        (*v498)(v411, 0, 1, v412);
        v413 = v494;
        (*v491)(v494, v411, v412);
      }

      else
      {
        v421 = v482;
        (*v498)(v482, 1, 1, v520);
        v413 = v494;
        if (qword_1ED7270F0 != -1)
        {
          swift_once();
        }

        v422 = sub_1AFDFC538();
        sub_1AF477C68(v422, qword_1ED73B608);
        sub_1AFDFC528();
        sub_1AFDFC4D8();
        if ((*v483)(v421, 1, v520) != 1)
        {
          sub_1AFA9C470(v421, &qword_1EB633050, MEMORY[0x1E69E93B8]);
        }
      }

      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v497 = v404;
      v512 = v386;
      v423 = sub_1AFDFC538();
      sub_1AF477C68(v423, qword_1ED73B608);
      v424 = sub_1AFDFC528();
      v425 = sub_1AFDFDB88();
      if (sub_1AFDFDCE8())
      {
        v426 = swift_slowAlloc();
        *v426 = 0;
        v427 = sub_1AFDFC4E8();
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v424, v425, v427, "buildScript", "", v426, 2u);
        MEMORY[0x1B271DEA0](v426, -1, -1);
      }

      (*v511)(v502, v413, v520);
      sub_1AFDFC578();
      swift_allocObject();
      v428 = sub_1AFDFC568();
      sub_1AFA9E3C8(v531, v515, type metadata accessor for ParticleUpdateScript);
      v429 = (*(v504 + 80) + 400) & ~*(v504 + 80);
      v430 = (v500 + v429) & 0xFFFFFFFFFFFFFFF8;
      v431 = (v430 + 23) & 0xFFFFFFFFFFFFFFF8;
      v432 = (v431 + 27) & 0xFFFFFFFFFFFFFFF8;
      v492 = (v432 + 15) & 0xFFFFFFFFFFFFFFF8;
      v433 = swift_allocObject();
      v434 = updated;
      *(v433 + 16) = v532;
      *(v433 + 24) = v434;
      v435 = v525;
      v436 = v526;
      *(v433 + 32) = v525;
      *(v433 + 36) = v436;
      *(v433 + 40) = v524;
      *(v433 + 48) = sub_1AFA9EC20;
      *(v433 + 56) = v512;
      *(v433 + 64) = v428;
      v524 = v428;
      v437 = v514;
      memcpy((v433 + 72), v514, 0x148uLL);
      sub_1AFA9E320(v515, v433 + v429, type metadata accessor for ParticleUpdateScript);
      v438 = (v433 + v430);
      v439 = v509;
      *v438 = v501;
      v438[1] = v439;
      v440 = (v433 + v431);
      v441 = v528;
      v442 = v529;
      *v440 = v529;
      v440[1] = v441;
      v440[2] = v530;
      v443 = (v433 + v432);
      *v443 = v435;
      v443[1] = v436;
      *(v433 + v492) = v497;
      if (v503)
      {
        v525 = *(v532 + 40);
        v444 = swift_allocObject();
        v444[2].isa = sub_1AFA9CC78;
        v444[3].isa = v433;
        v526 = v444;

        sub_1AFA9C054(v437, &v545, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript);

        sub_1AF487F80(v442, v441);
        v445 = qword_1ED730EA0;

        if (v445 != -1)
        {
          swift_once();
        }

        v356 = v519;
        v446 = v520;
        v447 = v494;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v448 = qword_1ED73B8A0;
        v449 = swift_allocObject();
        v450 = v526;
        *(v449 + 16) = sub_1AFA9EB90;
        *(v449 + 24) = v450;
        v451 = swift_allocObject();
        v451[2] = v448;
        v451[3] = sub_1AF6CC3F0;
        v451[4] = v449;
        *&v547 = sub_1AFA9EC30;
        *(&v547 + 1) = v451;
        *&v545 = MEMORY[0x1E69E9820];
        *(&v545 + 1) = 1107296256;
        *&v546 = sub_1AFCDA044;
        *(&v546 + 1) = &unk_1F2559ED8;
        v452 = _Block_copy(&v545);
        swift_retain_n();

        [v525 addOperationWithBlock_];
        _Block_release(v452);

        (*v499)(v447, v446);
        a3 = v506;

        sub_1AF487074(v529, v528);
        v357 = v527;
        v352 = v507;
        goto LABEL_250;
      }

      v526 = *(v532 + 32);
      v453 = swift_allocObject();
      *(v453 + 16) = sub_1AFA9CC78;
      *(v453 + 24) = v433;
      v454 = swift_allocObject();
      *(v454 + 16) = sub_1AFA9EB90;
      *(v454 + 24) = v453;
      *&v542 = sub_1AF6D25EC;
      *(&v542 + 1) = v454;
      *&v540 = MEMORY[0x1E69E9820];
      *(&v540 + 1) = 1107296256;
      *&v541 = sub_1AF6F662C;
      *(&v541 + 1) = &unk_1F2559E38;
      v455 = _Block_copy(&v540);
      v529 = v442;
      v456 = v455;
      v525 = *(&v542 + 1);

      sub_1AFA9C054(v514, &v545, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript);

      sub_1AF487F80(v442, v441);

      dispatch_sync(v526, v456);
      _Block_release(v456);

      (*v499)(v494, v520);
      swift_isEscapingClosureAtFileLocation();
      a3 = v506;

      sub_1AF487074(v529, v441);
      v356 = v519;
      v352 = v507;
      goto LABEL_249;
    }

    v457 = v535;
    v458 = (v535 != v524) | v397;
    v402 = v532;
    os_unfair_lock_unlock(*(v532 + 72));
    if ((v458 & 1) == 0)
    {
LABEL_303:
      v459 = v533;
      sub_1AFA9DE54(v531, v533, type metadata accessor for ParticleUpdateScript);
      v460 = v459[6];
      v461 = v523;
      if (v460)
      {
        v462 = *v533;
        v463 = v533[1];

        v464 = v463;
        a3 = v506;
        v465 = sub_1AF458B0C(v462, v464);
        v460(*(v533 + v461[13]), v465);

        v459 = v533;
        sub_1AF0FB8EC(v460);
      }

      if (*(v459 + v461[10]) == 1)
      {
        v466 = *(v459 + v461[11]);
        v467 = v466;
      }

      else
      {
        sub_1AF81F330();
        v466 = swift_allocError();
        *v468 = v490;
      }

      v357 = v527;
      if (!*(v522 + 16) && v466)
      {
        v469 = v505;
        v470 = *(v505 + 72);
        v471 = v466;
        os_unfair_lock_lock(v470);
        v472 = *(v522 + 16);
        *(v522 + 16) = v466;
        v473 = v466;

        os_unfair_lock_unlock(*(v469 + 72));
      }

      v356 = v519;
      v474 = v528;
      dispatch_group_leave(a3);

      sub_1AF487074(v529, v474);
      goto LABEL_250;
    }

    if (v457 != v524)
    {
      goto LABEL_283;
    }

    dispatch_group_leave(a3);

    sub_1AF487074(v529, v528);
    v356 = v519;
LABEL_249:
    v357 = v527;
LABEL_250:
    ++v356;
    v357 += 24;
    v355 = (v517 + v533);
    v531 = (v518 + v531);
    if (v352 == v356)
    {
      v220 = 1;
LABEL_313:
      v353 = v510;
LABEL_314:
      sub_1AF630994(v487, &v597, v610);
      v510 = v353;
      sub_1AF62D29C(v231);
      ecs_stack_allocator_pop_snapshot(v486);
      if (v485)
      {
        os_unfair_lock_unlock(*(v231 + 344));
        os_unfair_lock_unlock(*(v231 + 376));
      }

      v225 = v484 + 1;
      if (v484 + 1 != v481)
      {
        goto LABEL_170;
      }

      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v220 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(a3);
      }

LABEL_317:

      sub_1AFA62400(v475);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA8FDA4(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v67 = a7;
  v84 = a6;
  v68 = a5;
  v66 = a3;
  sub_1AF5B225C(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v64 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2220(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v65 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v56 - v25;
  sub_1AF85B3D4(a2, v78);
  if (!v83)
  {
    goto LABEL_18;
  }

  if (v83 != 1)
  {
    sub_1AFA9CC60(a1);

    sub_1AF449D40(v78, v77);
    sub_1AF0D5A54(v77, &v71);
    swift_dynamicCast();
    v74 = v12;
    v75 = &off_1F250F310;
    v45 = sub_1AF585714(&v71);
    sub_1AFA9CC30(a1, v45);
    v76 = 1;
    sub_1AF8259D0(&v71, v68, v84);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
    goto LABEL_18;
  }

  v57 = v15;
  v63 = a4;
  v58 = a2;
  v59 = v7;
  v61 = a1;
  sub_1AFA9CC60(a1);
  v27 = v79;
  v62 = v80;
  v60 = v81;
  sub_1AF449D40(v78, v77);
  sub_1AF449D40(&v82, v70);
  v28 = MEMORY[0x1E69E7CC0];
  *v26 = MEMORY[0x1E69E7CC0];
  *(v26 + 1) = 0;
  *(v26 + 2) = 0xE000000000000000;
  v26[24] = 3;
  *(v26 + 4) = &unk_1F2503230;
  *(v26 + 20) = 0;
  *(v26 + 6) = 0;
  *(v26 + 7) = 0;
  v29 = v16[11];
  v30 = type metadata accessor for ScriptIndex();
  (*(*(v30 - 8) + 56))(&v26[v29], 1, 1, v30);
  *&v26[v16[12]] = @"VFXTriggerTypeTick";
  v31 = &v26[v16[13]];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[32] = 6;
  v32 = &v26[v12[9]];
  *v32 = 0;
  v32[8] = 1;
  v26[v12[10]] = 0;
  *&v26[v12[11]] = 0;
  v33 = &v26[v12[12]];
  *v33 = 0;
  *(v33 + 1) = 0xE000000000000000;
  *&v26[v12[13]] = v28;
  v34 = v20[9];
  v35 = v20[10];
  v36 = v20[11];
  *&v26[v20[12]] = 0;
  v26[v20[13]] = 0;
  v37 = &v26[v20[14]];
  *v37 = 0;
  v37[8] = 1;
  v38 = &v26[v20[15]];
  *v38 = 0;
  v38[1] = 0;
  sub_1AF0D5A54(v77, &v71);
  v39 = @"VFXTriggerTypeTick";
  sub_1AFA9CC60(v26);
  swift_dynamicCast();
  *&v26[v34] = v27;
  *&v26[v36] = v60;
  *&v26[v35] = v62;
  v40 = *v38;
  v62 = v27;

  sub_1AF919DAC(v40);
  sub_1AF0D5A54(v70, &v71);
  swift_dynamicCast();
  sub_1AFA9CC30(v26, v61);
  if (v66)
  {
    v41 = v63;
    v42 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v43 = v84;
    if (v42)
    {
      v44 = *(v42 + 80);
      swift_unknownObjectWeakLoadStrong();
      v42 = *(v42 + 56);
    }

    else
    {
      v44 = 0;
    }

    v66 = v44;
    v73 = 0;
    swift_unknownObjectUnownedInit();
    v71 = v41;
    v73 = v42;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v74) = v44;
    v47 = v65;
    sub_1AFA9E3C8(v26, v65, sub_1AF5B2220);
    v48 = v64;
    sub_1AFA9E3C8(v47, v64, type metadata accessor for TriggerScript);
    sub_1AFA9E8FC(v47, sub_1AF5B2220);
    sub_1AF5ACA58(v48, v43);
    sub_1AFA9E8FC(v48, type metadata accessor for TriggerScript);
    v49 = v57;
    sub_1AFA9CC30(v26, v57);
    sub_1AF5ACBE8(v49, v43);
    sub_1AFA9CC60(v49);
    sub_1AFA9E3C8(v26, v47, sub_1AF5B2220);
    sub_1AF5ACD78(v47, v43);
    sub_1AFA9E8FC(v47, sub_1AF5B2220);
    sub_1AF579490(&v71);
    v46 = v68;
    if (v66)
    {
      v50 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v50 ^ 1);
    }
  }

  else
  {
    v43 = v84;
    v41 = v63;
    sub_1AFBFDEEC(v26, v84);
    v46 = v68;
  }

  v74 = v20;
  v75 = &off_1F2558F90;
  v51 = sub_1AF585714(&v71);
  sub_1AFA9E3C8(v26, v51, sub_1AF5B2220);
  v76 = 0;
  sub_1AF8259D0(&v71, v46, v43);
  v52 = sub_1AF3CB310(v43);
  if (v52)
  {
    sub_1AFD08440(v41, v52, v53);
  }

  sub_1AF0D5A54(v70, &v71);
  if (swift_dynamicCast())
  {
    v54 = v69;

    v71 = MEMORY[0x1E69E7CC0];
    v72 = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C(v41, v54);

    sub_1AFBFDF64(v71, v72, v43);
LABEL_16:

    goto LABEL_17;
  }

  sub_1AF0D5A54(v70, &v71);
  if (swift_dynamicCast())
  {
    goto LABEL_16;
  }

LABEL_17:
  a2 = v58;
  sub_1AF678B44(v43);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v70);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v77);
  sub_1AFA9E8FC(v26, sub_1AF5B2220);
LABEL_18:
  result = sub_1AF85B3D4(a2, v78);
  if (v83)
  {
    return sub_1AFA9C0C8(v78);
  }

  return result;
}

uint64_t sub_1AFA905DC(uint64_t a1, char a2)
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
        if (v14 == type metadata accessor for TriggerScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B225C(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
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
              sub_1AFA8FDA4(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF454E0);
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

    v32 = sub_1AFA6F718(v31, type metadata accessor for TriggerScript);

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

uint64_t sub_1AFA90A30(uint64_t a1, uint64_t a2, NSObject *a3, int a4, unint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v511) = a6;
  v509 = a5;
  v510 = 0;
  v503 = a4;
  v507 = a2;
  v521 = type metadata accessor for TriggerScript(0);
  v504 = *(v521 - 8);
  MEMORY[0x1EEE9AC00](v521, v13);
  v500 = v14;
  v515 = &v478 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v482 = &v478 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v495 = &v478 - v20;
  v21 = sub_1AFDFC4F8();
  v499 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v494 = &v478 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v502 = &v478 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v508 = &v478 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = *(a1 + 16);

  v522 = a8;

  v505 = a9;

  dispatch_group_enter(a3);
  v32 = *(a7 + 184);
  v608[0] = *(a7 + 168);
  v608[1] = v32;
  v609 = *(a7 + 25);
  v33 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v493 = v31;
  sub_1AF6B06C0(v31, v608, 0x200000000, v567);
  v506 = a3;
  v532 = a1;
  v534 = v30;
  v514 = a7;
  v520 = v21;
  v512 = v33;
  if (*&v567[0])
  {
    if (v571 >= 1)
    {
      if (*(&v569 + 1))
      {
        v34 = *(&v568 + 1);
        v35 = *(&v570 + 1);
        v36 = *(&v568 + 1) + 48 * *(&v569 + 1);
        sub_1AF5B225C(0);
        v527 = v37;
        v547 = v568;
        v548 = v569;
        v549 = v570;
        v550 = v571;
        v545 = v567[0];
        v546 = v567[1];
        sub_1AF5DD298(&v545, &v614);
        v531 = v35;
        v516 = v36;
        do
        {
          isa = v34[5].isa;
          v39 = *(isa + 376);
          swift_retain_n();
          os_unfair_lock_lock(v39);
          os_unfair_lock_lock(*(isa + 344));
          v40 = *(isa + 24);

          v616 = 0;
          v614 = 0u;
          v615 = 0u;
          memset(v590, 0, 40);
          v41 = sub_1AF65A4B4(v40, v527, &off_1F250F310, 0, 0, &v614, v590);

          sub_1AFA9E8FC(v590, sub_1AF5C4448);
          sub_1AFA9E8FC(&v614, sub_1AF5C4448);
          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v41);
          }

          else
          {
            v526 = v34;
            v43 = *(isa + 232);
            v42 = *(isa + 240);
            LODWORD(v525) = *(isa + 120);
            v519 = *(isa + 28);
            v44 = *(isa + 32);
            v45 = *(isa + 16);
            v46 = *(isa + 40);
            v47 = v46[200];

            if ((v47 & 1) != 0 || *(v48 + 200) == 1)
            {
              *(v45 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v46 = *(isa + 40);
            }

            v49 = v46[212];
            v50 = v48;
            v533 = v45;
            LODWORD(v523) = v41;
            if (v49)
            {
              LODWORD(v524) = 0;
            }

            else
            {
              LODWORD(v524) = *(v48 + 212);
            }

            v51 = v46[208];
            v530 = *(isa + 128);
            v52 = *(isa + 256);
            v53 = v42;
            v54 = v510;
            sub_1AF5B4FCC(v46, v43, v53, 0, isa);
            v510 = v54;
            v528 = *(isa + 256);
            v529 = v52;
            v55 = v528 - v52;
            if (v528 == v52)
            {
              v56 = 0;
            }

            else
            {
              v56 = v52;
            }

            *&v590[0] = v56;
            v57 = *(*(isa + 40) + 24);
            v58 = *(v57 + 16);
            if (v58)
            {
              LODWORD(v517) = v44;
              LODWORD(v518) = v51;
              v59 = v57 + 32;

              v60 = 0;
              v61 = v50;
              do
              {
                v62 = v59 + 40 * v60;
                if ((*(v62 + 32) & 1) == 0)
                {
                  v63 = *(v61 + 24);
                  v64 = *(v63 + 16);
                  if (v64)
                  {
                    v65 = (v63 + 32);
                    while (*v65 != *v62)
                    {
                      v65 += 5;
                      if (!--v64)
                      {
                        goto LABEL_19;
                      }
                    }
                  }

                  else
                  {
LABEL_19:
                    sub_1AF640BC8();
                    v61 = v50;
                  }
                }

                ++v60;
              }

              while (v60 != v58);

              LOBYTE(v51) = v518;
              LOBYTE(v44) = v517;
            }

            if (*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(isa + 72) * v55);
            }

            if (*(isa + 184))
            {
              v66 = 0;
            }

            else
            {
              v66 = *(isa + 168);
            }

            *&v585[0] = 0;

            DWORD2(v615) = -1;
            v616 = v529;
            v617 = v528;
            v618 = v529;
            v619 = v528;
            *&v614 = v529;
            *(&v614 + 1) = v528;
            *&v615 = v66;
            if (v55 < 1)
            {
            }

            else
            {
              v518 = &v478;

              v67 = v50;

              v68 = v525;
              v69 = v519;
              v70 = v523;
              v71 = v51;
              v72 = v524;
              v73 = v530;
              do
              {

                LOBYTE(v577) = v44;
                LOBYTE(v477) = v71;
                sub_1AF626158(v70, v69 | (v44 << 32), v68, v533, &v614, v69 | (v44 << 32), isa, v67, 0, 0, 0, 0, v590, v73, v585, v477, v70, v72, v531);
              }

              while ((*(&v614 + 1) - v614) > 0);
            }

            v74 = *(isa + 192);
            v34 = v526;
            v36 = v516;
            if (v74)
            {
              v75 = *(isa + 208);
              v76 = v529;
              v77 = v516;
              v78 = v528;
              sub_1AF75D364(v529, v528, v74);
              v36 = v77;
              sub_1AF75D364(v76, v78, v75);
            }

            a1 = v532;
          }

          v34 += 6;
          os_unfair_lock_unlock(*(isa + 344));
          os_unfair_lock_unlock(*(isa + 376));
        }

        while (v34 != v36);
        sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v518) = 1;
        a3 = v506;
        a7 = v514;
      }

      else
      {
        sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v518) = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v567, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  LODWORD(v518) = 0;
LABEL_44:
  v79 = a7[4];
  v606[0] = a7[3];
  v606[1] = v79;
  v607 = *(a7 + 10);
  sub_1AF6B06C0(v493, v606, 0x200000000, v572);
  if (*&v572[0])
  {
    if (v576 >= 1 && *(&v574 + 1))
    {
      v80 = *(&v573 + 1);
      v81 = *(&v575 + 1);
      v82 = *(&v573 + 1) + 48 * *(&v574 + 1);
      sub_1AF5B2220(0);
      v527 = v83;
      v547 = v573;
      v548 = v574;
      v549 = v575;
      v550 = v576;
      v545 = v572[0];
      v546 = v572[1];
      sub_1AF5DD298(&v545, &v614);
      v531 = v81;
      v516 = v82;
      do
      {
        v84 = v80[5].isa;
        v85 = *(v84 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v85);
        os_unfair_lock_lock(*(v84 + 344));
        v86 = *(v84 + 24);

        v616 = 0;
        v614 = 0u;
        v615 = 0u;
        memset(v590, 0, 40);
        v87 = sub_1AF65A4B4(v86, 0, 0, v527, &off_1F2558F90, &v614, v590);

        sub_1AFA9E8FC(v590, sub_1AF5C4448);
        sub_1AFA9E8FC(&v614, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v87);
        }

        else
        {
          v526 = v80;
          v89 = *(v84 + 232);
          v88 = *(v84 + 240);
          LODWORD(v525) = *(v84 + 120);
          v519 = *(v84 + 28);
          v90 = *(v84 + 32);
          v91 = *(v84 + 16);
          v92 = *(v84 + 40);
          v93 = v92[200];

          if ((v93 & 1) != 0 || *(v94 + 200) == 1)
          {
            *(v91 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v92 = *(v84 + 40);
          }

          v95 = v92[212];
          v96 = v94;
          v533 = v91;
          LODWORD(v523) = v87;
          if (v95)
          {
            LODWORD(v524) = 0;
          }

          else
          {
            LODWORD(v524) = *(v94 + 212);
          }

          v97 = v92[208];
          v530 = *(v84 + 128);
          v98 = *(v84 + 256);
          v99 = v88;
          v100 = v510;
          sub_1AF5B4FCC(v92, v89, v99, 0, v84);
          v510 = v100;
          v528 = *(v84 + 256);
          v529 = v98;
          v101 = v528 - v98;
          if (v528 == v98)
          {
            v102 = 0;
          }

          else
          {
            v102 = v98;
          }

          *&v590[0] = v102;
          v103 = *(*(v84 + 40) + 24);
          v104 = *(v103 + 16);
          if (v104)
          {
            LODWORD(v517) = v90;
            LODWORD(v518) = v97;
            v105 = v103 + 32;

            v106 = 0;
            v107 = v96;
            do
            {
              v108 = v105 + 40 * v106;
              if ((*(v108 + 32) & 1) == 0)
              {
                v109 = *(v107 + 24);
                v110 = *(v109 + 16);
                if (v110)
                {
                  v111 = (v109 + 32);
                  while (*v111 != *v108)
                  {
                    v111 += 5;
                    if (!--v110)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8();
                  v107 = v96;
                }
              }

              ++v106;
            }

            while (v106 != v104);

            LOBYTE(v97) = v518;
            LOBYTE(v90) = v517;
          }

          if (*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v84 + 72) * v101);
          }

          if (*(v84 + 184))
          {
            v112 = 0;
          }

          else
          {
            v112 = *(v84 + 168);
          }

          *&v585[0] = 0;

          DWORD2(v615) = -1;
          v616 = v529;
          v617 = v528;
          v618 = v529;
          v619 = v528;
          *&v614 = v529;
          *(&v614 + 1) = v528;
          *&v615 = v112;
          if (v101 < 1)
          {
          }

          else
          {
            v518 = &v478;

            v113 = v96;

            v114 = v525;
            v115 = v519;
            v116 = v523;
            v117 = v97;
            v118 = v524;
            v119 = v530;
            do
            {

              LOBYTE(v577) = v90;
              LOBYTE(v477) = v117;
              sub_1AF626158(v116, v115 | (v90 << 32), v114, v533, &v614, v115 | (v90 << 32), v84, v113, 0, 0, 0, 0, v590, v119, v585, v477, v116, v118, v531);
            }

            while ((*(&v614 + 1) - v614) > 0);
          }

          v120 = *(v84 + 192);
          v80 = v526;
          v82 = v516;
          if (v120)
          {
            v121 = *(v84 + 208);
            v122 = v529;
            v123 = v516;
            v124 = v528;
            sub_1AF75D364(v529, v528, v120);
            v82 = v123;
            sub_1AF75D364(v122, v124, v121);
          }

          a1 = v532;
        }

        v80 += 6;
        os_unfair_lock_unlock(*(v84 + 344));
        os_unfair_lock_unlock(*(v84 + 376));
      }

      while (v80 != v82);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v518) = 1;
      a3 = v506;
      a7 = v514;
    }

    else
    {
      sub_1AFA9BF94(v572, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v518) = 1;
    }
  }

  v125 = *(a7 + 104);
  v604[0] = *(a7 + 88);
  v604[1] = v125;
  v605 = *(a7 + 15);
  sub_1AF6B06C0(v493, v604, 0x200000000, &v577);
  if (v577)
  {
    v528 = v584;
    if (v584 >= 1)
    {
      v527 = v581;
      if (v581)
      {
        v126 = 0;
        v526 = v580;
        v127 = v583;
        v524 = v583;
        v525 = v582;
        v128 = v582[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];
        v533 = v583[4].isa;
        v594 = v577;
        v595 = v578;
        v596 = v579;
        LODWORD(v523) = v128;
        do
        {
          v531 = v126;
          v129 = &v526[6 * v126];
          isa_low = LODWORD(v129->isa);
          isa_high = HIDWORD(v129->isa);
          v132 = LODWORD(v129[1].isa);
          v133 = v129[2].isa;
          v134 = v129[3].isa;
          v136 = v129[4].isa;
          v135 = v129[5].isa;
          if (v128)
          {
            v137 = *(v135 + 376);

            os_unfair_lock_lock(v137);
            os_unfair_lock_lock(*(v135 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v533);
          v138 = *&v127[8].isa;
          v612[0] = *&v127[6].isa;
          v612[1] = v138;
          v613 = v127[10].isa;
          v139 = *(*(*(*(v135 + 40) + 16) + 32) + 16) + 1;
          v127[6].isa = ecs_stack_allocator_allocate(v127[4].isa, 48 * v139, 8);
          v127[7].isa = v139;
          v127[9].isa = 0;
          v127[10].isa = 0;
          v127[8].isa = 0;
          LOBYTE(v545) = 1;
          *&v614 = v525;
          *(&v614 + 1) = v135;
          *&v615 = v127;
          *(&v615 + 1) = v132;
          v616 = (isa_high - isa_low + v132);
          v617 = v528;
          v618 = isa_low;
          v619 = isa_high;
          v620 = 0;
          v621 = 0;
          v622 = 1;
          v623 = v133;
          v624 = v134;
          v625 = v136;
          v140 = v510;
          v141 = sub_1AF706D34(v135, &v614);
          v142 = v623;
          v530 = v140;
          if (v623)
          {
            v143 = v625;
            if (v625)
            {
              v529 = v615;
              v144 = (v141 + 8);
              do
              {
                v142 = (v142 + 8);
                v145 = *(v144 - 1);
                v146 = *v144;

                sub_1AFD08440(v147, v145, v146);

                sub_1AF6FCC60(0);
                v149 = *(*(v135 + 40) + 16);
                v150 = *(v149 + 128);
                if (*(v150 + 16))
                {
                  v151 = v148;
                  v152 = sub_1AF449CB8(v148);
                  if ((v153 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v152) + 32) == v151)
                  {
                    *&v545 = v151;
                    *(&v545 + 1) = &off_1F2559388;
                    BYTE8(v547) = 1;
                    MEMORY[0x1EEE9AC00](v152, v153);
                    v477 = v135;

                    sub_1AF63023C(0, v135, sub_1AFA9EC24);

                    sub_1AF635250(&v545);
                  }
                }

                v144 += 2;
                v143 = (v143 - 1);
              }

              while (v143);
            }
          }

          else
          {
            v154 = v618;
            v155 = v619;
            if (v618 != v619)
            {
              v157 = (v141 + 16 * v618 + 8);
              do
              {
                v158 = *(v157 - 1);
                v159 = *v157;

                sub_1AFD08440(v160, v158, v159);

                sub_1AF6FCC60(0);
                v162 = *(*(v135 + 40) + 16);
                v163 = *(v162 + 128);
                if (*(v163 + 16))
                {
                  v164 = v161;
                  v165 = sub_1AF449CB8(v161);
                  if ((v166 & 1) != 0 && *(*(v162 + 24) + 16 * *(*(v163 + 56) + 8 * v165) + 32) == v164)
                  {
                    *&v545 = v164;
                    *(&v545 + 1) = &off_1F2559388;
                    BYTE8(v547) = 1;
                    MEMORY[0x1EEE9AC00](v165, v166);
                    v477 = v135;

                    sub_1AF63023C(0, v135, sub_1AFA9EC24);

                    sub_1AF635250(&v545);
                  }
                }

                ++v154;
                v157 += 2;
              }

              while (v155 != v154);
            }
          }

          v127 = v524;
          v156 = v530;
          sub_1AF630994(v524, &v594, v612);
          sub_1AF62D29C(v135);
          ecs_stack_allocator_pop_snapshot(v533);
          v128 = v523;
          if (v523)
          {
            os_unfair_lock_unlock(*(v135 + 344));
            os_unfair_lock_unlock(*(v135 + 376));
          }

          v510 = v156;

          v126 = v531 + 1;
        }

        while ((v531 + 1) != v527);
      }
    }

    sub_1AFA9BF94(&v577, &qword_1ED725EA0, &type metadata for QueryResult);
    a3 = v506;
    a1 = v532;
  }

  v167 = v514[9];
  v602[0] = v514[8];
  v602[1] = v167;
  v603 = *(v514 + 20);
  sub_1AF6B06C0(v493, v602, 0x200000000, v585);
  if (*&v585[0])
  {
    v168 = v589;
    if (v589 >= 1 && *(&v587 + 1))
    {
      v501 = v589;
      v169 = *(&v586 + 1);
      v170 = *(&v588 + 1);
      v171 = *(&v586 + 1) + 48 * *(&v587 + 1);
      sub_1AF5B225C(0);
      v527 = v172;
      v547 = v586;
      v548 = v587;
      v549 = v588;
      v550 = v589;
      v545 = v585[0];
      v546 = v585[1];
      sub_1AF5DD298(&v545, v590);
      v531 = v170;
      *&v513 = v171;
      do
      {
        v173 = v169[5].isa;
        v174 = *(v173 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v174);
        os_unfair_lock_lock(*(v173 + 344));
        v175 = *(v173 + 24);

        memset(v590, 0, 40);
        *&v563 = 0;
        v562 = 0u;
        v561 = 0u;
        v176 = sub_1AF65A4B4(v175, 0, 0, v527, &off_1F250F310, v590, &v561);

        sub_1AFA9E8FC(&v561, sub_1AF5C4448);
        sub_1AFA9E8FC(v590, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v176);
        }

        else
        {
          v526 = v169;
          v178 = *(v173 + 232);
          v177 = *(v173 + 240);
          LODWORD(v525) = *(v173 + 120);
          v519 = *(v173 + 28);
          v179 = *(v173 + 32);
          v180 = *(v173 + 16);
          v181 = *(v173 + 40);
          v182 = v181[200];

          if ((v182 & 1) != 0 || *(v183 + 200) == 1)
          {
            *(v180 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v181 = *(v173 + 40);
          }

          v184 = v181[212];
          v185 = v183;
          v533 = v180;
          LODWORD(v523) = v176;
          if (v184)
          {
            LODWORD(v524) = 0;
          }

          else
          {
            LODWORD(v524) = *(v183 + 212);
          }

          v186 = v181[208];
          v530 = *(v173 + 128);
          v187 = *(v173 + 256);
          v188 = v177;
          v189 = v510;
          sub_1AF5B4FCC(v181, v178, v188, 0, v173);
          v510 = v189;
          v528 = *(v173 + 256);
          v529 = v187;
          v190 = v528 - v187;
          if (v528 == v187)
          {
            v191 = 0;
          }

          else
          {
            v191 = v187;
          }

          *&v561 = v191;
          v192 = *(*(v173 + 40) + 24);
          v193 = *(v192 + 16);
          if (v193)
          {
            LODWORD(v516) = v179;
            LODWORD(v517) = v186;
            v194 = v192 + 32;

            v195 = 0;
            v196 = v185;
            do
            {
              v197 = v194 + 40 * v195;
              if ((*(v197 + 32) & 1) == 0)
              {
                v198 = *(v196 + 24);
                v199 = *(v198 + 16);
                if (v199)
                {
                  v200 = (v198 + 32);
                  while (*v200 != *v197)
                  {
                    v200 += 5;
                    if (!--v199)
                    {
                      goto LABEL_130;
                    }
                  }
                }

                else
                {
LABEL_130:
                  sub_1AF640BC8();
                  v196 = v185;
                }
              }

              ++v195;
            }

            while (v195 != v193);

            LOBYTE(v186) = v517;
            LOBYTE(v179) = v516;
          }

          if (*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v533 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v173 + 72) * v190);
          }

          if (*(v173 + 184))
          {
            v201 = 0;
          }

          else
          {
            v201 = *(v173 + 168);
          }

          *&v540 = 0;

          *&v590[1] = v201;
          DWORD2(v590[1]) = -1;
          *&v590[2] = v529;
          *(&v590[2] + 1) = v528;
          *&v591 = v529;
          *(&v591 + 1) = v528;
          *&v590[0] = v529;
          *(&v590[0] + 1) = v528;
          if (v190 < 1)
          {
          }

          else
          {
            v517 = &v478;

            v202 = v185;

            v203 = v525;
            v204 = v519;
            v205 = v523;
            v206 = v186;
            v207 = v524;
            v208 = v530;
            do
            {

              LOBYTE(v535) = v179;
              LOBYTE(v477) = v206;
              sub_1AF626158(v205, v204 | (v179 << 32), v203, v533, v590, v204 | (v179 << 32), v173, v202, 0, 0, 0, 0, &v561, v208, &v540, v477, v205, v207, v531);
            }

            while ((*(&v590[0] + 1) - *&v590[0]) > 0);
          }

          v209 = *(v173 + 192);
          v169 = v526;
          v171 = v513;
          if (v209)
          {
            v210 = *(v173 + 208);
            v211 = v529;
            v212 = v513;
            v213 = v528;
            sub_1AF75D364(v529, v528, v209);
            v171 = v212;
            sub_1AF75D364(v211, v213, v210);
          }

          a1 = v532;
        }

        v169 += 6;
        os_unfair_lock_unlock(*(v173 + 344));
        os_unfair_lock_unlock(*(v173 + 376));
      }

      while (v169 != v171);
      sub_1AFA9BF94(v585, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v585, &qword_1ED725EA0, &type metadata for QueryResult);
      a3 = v506;
      v168 = v501;
    }

    else
    {
      sub_1AFA9BF94(v585, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v214 = v518;
    if (v168 > 0)
    {
      v214 = 1;
    }

    LODWORD(v518) = v214;
  }

  if (v507)
  {
    sub_1AFA61FF8(a1, v507, sub_1AFD34100);
    LODWORD(v518) = v518 | v215;
  }

  if (v509)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v217 = sub_1AFA905DC(a1, v511 & 1);

  v218 = *(a1 + 16);

  if (v218)
  {
    v501 = sub_1AF8BB88C();
    v509 = v219;
  }

  else
  {
    v501 = 0;
    v509 = 0xE000000000000000;
  }

  v220 = v518 | v217;
  v221 = v514[14];
  v600[0] = v514[13];
  v600[1] = v221;
  v601 = *(v514 + 30);
  sub_1AF6B06C0(v493, v600, 0x200000000, v590);
  v222 = *&v590[0];
  if (!*&v590[0])
  {

    if ((v220 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  if (v593 <= 0 || (v481 = *(&v591 + 1)) == 0)
  {

    sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v220 & 1) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_317;
  }

  v480 = *(&v590[2] + 1);
  v487 = *(&v592 + 1);
  v486 = *(*(&v592 + 1) + 32);
  v485 = *(v592 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B225C(0);
  v224 = v223;
  v597 = v222;
  v598 = *(v590 + 8);
  v599 = *(&v590[1] + 8);
  v516 = (v493 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v563 = v590[2];
  v564 = v591;
  v565 = v592;
  v566 = v593;
  v561 = v590[0];
  v562 = v590[1];
  sub_1AF5DD298(&v561, &v545);
  v225 = 0;
  v523 = v224;
  v479 = v224 - 8;
  v511 = (v499 + 2);
  v491 = (v499 + 4);
  v483 = (v499 + 6);
  v500 += 7;
  v489 = &v541;
  v498 = (v499 + 7);
  ++v499;
  v488 = &v546;
  v490 = xmmword_1AFE21110;
  v513 = xmmword_1AFE72020;
LABEL_170:
  v484 = v225;
  v226 = (v480 + 48 * v225);
  v227 = *v226;
  v507 = v226[1];
  v229 = *(v226 + 2);
  v228 = *(v226 + 3);
  v230 = *(v226 + 4);
  v231 = *(v226 + 5);
  if (v485)
  {
    v232 = *(v231 + 376);

    os_unfair_lock_lock(v232);
    os_unfair_lock_lock(*(v231 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v486);
  v233 = v487;
  v234 = *(v487 + 4);
  v610[0] = *(v487 + 3);
  v610[1] = v234;
  v611 = v487[10];
  v235 = *(*(*(*(v231 + 40) + 16) + 32) + 16) + 1;
  v233[6] = ecs_stack_allocator_allocate(v487[4], 48 * v235, 8);
  v233[7] = v235;
  v233[9] = 0;
  v233[10] = 0;
  v233[8] = 0;
  v533 = sub_1AF64B110(v521, &off_1F255BBC8, v229, v228, v230, v233);
  v236 = sub_1AF64B110(v523, &off_1F250F310, v229, v228, v230, v233);
  v237 = v236;
  if (v229)
  {
    v528 = v229;
    v238 = v532;
    if (!v230)
    {
      goto LABEL_313;
    }

    v518 = *(v504 + 72);
    v517 = *(*v479 + 72);
    v496 = v231;
    while (1)
    {
      v243 = *v528;
      v527 = v230;
      ++v528;

      if (*(v231 + 184))
      {
        goto LABEL_324;
      }

      v245 = *(*(v231 + 168) + 4 * v243);
      v246 = *(*(v244 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v245 + 8);

      v247 = v245 == -1 && v246 == 0;
      if (v247 || (v245 & 0x80000000) != 0 || v516[1] <= v245)
      {
        break;
      }

      v248 = *v516 + 12 * v245;
      if (v246 != -1 && *(v248 + 8) != v246)
      {
        break;
      }

      v250 = *(*(*(v493 + 88) + 8 * *(v248 + 6) + 32) + 16);
      v251 = *(v250 + 128);
      if (!*(v251 + 16))
      {
        break;
      }

      v252 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v253 & 1) == 0 || *(*(v250 + 24) + 16 * *(*(v251 + 56) + 8 * v252) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_178:
      v237 = (v517 + v237);
      v533 += v518;
      v230 = v527 - 1;
      if (v527 == 1)
      {
        v220 = 1;
        goto LABEL_313;
      }
    }

    dispatch_group_enter(a3);
    v254 = *(v231 + 64);
    v255 = *(v231 + 80);
    v555 = *(v231 + 112);
    v257 = *(v231 + 80);
    v256 = *(v231 + 96);
    v553 = v255;
    v554 = v256;
    v258 = *(v231 + 64);
    v551 = *(v231 + 48);
    v552 = v254;
    v259 = *(v231 + 96);
    v547 = v257;
    v548 = v259;
    LOBYTE(v549) = *(v231 + 112);
    v545 = *(v231 + 48);
    v546 = v258;
    v260 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v262 = v261;
    v558 = v547;
    v559 = v548;
    v560 = v549;
    v557 = v546;
    v556 = v545;

    sub_1AF5DD36C(&v551, &v540);
    sub_1AF5DD3C8(&v556);
    if (v262)
    {

      v530 = 0;
      v526 = 0;
      v263 = 0;
    }

    else
    {
      v264 = *(v231 + 128);

      v265 = (v264 + v260 + 24 * v243);
      v530 = *v265;
      v263 = *(v265 + 2);
      v526 = *(v265 + 1);
    }

    v267 = v523;
    if (*(v231 + 184))
    {
      goto LABEL_324;
    }

    v529 = v263;
    v268 = *(*(v266 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v231 + 168) + 4 * v243) + 8);
    v524 = *(*(v231 + 168) + 4 * v243);
    v525 = v268;

    v269 = swift_allocObject();
    v270 = v534;
    v269[2] = sub_1AFA9EC2C;
    v269[3] = v270;
    v531 = v269;
    v269[4] = a3;
    v271 = *(v238 + 16);

    if (v271)
    {
      v272 = *(v271 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v273 = a3;

      if ((v272 & 1) == 0 || *(v238 + 3048) != 1)
      {
        sub_1AF81F330();
        v274 = swift_allocError();
        v275 = v274;
        *v276 = v513;
        if (!*(v522 + 16))
        {
          v277 = v505;
          v278 = *(v505 + 72);
          v279 = v274;
          os_unfair_lock_lock(v278);
          v280 = *(v522 + 16);
          *(v522 + 16) = v275;
          v281 = v275;

          os_unfair_lock_unlock(*(v277 + 72));
        }

        dispatch_group_leave(v273);

LABEL_204:

        v241 = v530;
        v242 = v526;
LABEL_177:
        sub_1AF487074(v241, v242);
        goto LABEL_178;
      }
    }

    else
    {
      swift_retain_n();
      v282 = a3;
    }

    v283 = v524;
    v284 = sub_1AFABEDAC();
    v285 = v237 + v267[9];
    v286 = *v285;
    LOBYTE(v285) = v285[8];
    v519 = v284;
    v287 = v285 | (v284 != v286);
    os_unfair_lock_lock(*(v238 + 72));
    v288 = *(v238 + 80);
    if (*(v288 + 16) && (v289 = sub_1AF41ACD4(v521, v283 | (v525 << 32)), (v290 & 1) != 0))
    {
      sub_1AF85B3D4(*(v288 + 56) + 96 * v289, &v545);
      if (BYTE8(v550) != 255)
      {
        sub_1AF85B3D4(&v545, &v540);
        sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v539 + 9) = *(v544 + 9);
        v537 = v542;
        v538 = v543;
        v539[0] = v544[0];
        v535 = v540;
        v536 = v541;
        if (!BYTE8(v544[1]))
        {
          v336 = v535;
          v337 = (v535 != v519) | v287;
          os_unfair_lock_unlock(*(v238 + 72));
          if (v337)
          {
            if (v336 != v519)
            {
LABEL_214:
              v512 = swift_allocBox();
              v292 = v291;
              sub_1AFA9EE3C(v291);
              v293 = v292 + v267[9];
              *(v292 + v267[10]) = 0;
              *(v292 + v267[11]) = 0;
              v294 = (v292 + v267[12]);
              *v294 = 0;
              v294[1] = 0xE000000000000000;
              *(v292 + v267[13]) = MEMORY[0x1E69E7CC0];
              v295 = v519;
              *v293 = v519;
              *(v293 + 8) = 0;
              sub_1AFA9DE54(v533, v292, type metadata accessor for TriggerScript);
              sub_1AFA9DE54(v292, v237, sub_1AF5B225C);
              os_unfair_lock_lock(*(v238 + 72));
              *&v545 = v295;
              BYTE8(v550) = 0;
              sub_1AF825824(&v545, v521, v283 | (v525 << 32));
              os_unfair_lock_unlock(*(v238 + 72));
              v296 = *(v238 + 16);

              if (v296)
              {
                v297 = v495;
                v298 = v520;
                (*v511)(v495, v296 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v520);

                (*v498)(v297, 0, 1, v298);
                v299 = v508;
                (*v491)(v508, v297, v298);
              }

              else
              {
                v300 = v495;
                (*v498)(v495, 1, 1, v520);
                v299 = v508;
                if (qword_1ED7270F0 != -1)
                {
                  swift_once();
                }

                v301 = sub_1AFDFC538();
                sub_1AF477C68(v301, qword_1ED73B608);
                sub_1AFDFC528();
                sub_1AFDFC4D8();
                if ((*v483)(v300, 1, v520) != 1)
                {
                  sub_1AFA9C470(v300, &qword_1EB633050, MEMORY[0x1E69E93B8]);
                }
              }

              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v507 = v237;
              v302 = sub_1AFDFC538();
              sub_1AF477C68(v302, qword_1ED73B608);
              v303 = sub_1AFDFC528();
              v304 = sub_1AFDFDB88();
              if (sub_1AFDFDCE8())
              {
                v305 = swift_slowAlloc();
                *v305 = 0;
                v306 = sub_1AFDFC4E8();
                _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v303, v304, v306, "buildScript", "", v305, 2u);
                MEMORY[0x1B271DEA0](v305, -1, -1);
              }

              (*v511)(v502, v299, v520);
              sub_1AFDFC578();
              swift_allocObject();
              v307 = sub_1AFDFC568();
              sub_1AFA9E3C8(v533, v515, type metadata accessor for TriggerScript);
              v308 = (*(v504 + 80) + 400) & ~*(v504 + 80);
              v309 = (v500 + v308) & 0xFFFFFFFFFFFFFFF8;
              v310 = (v309 + 23) & 0xFFFFFFFFFFFFFFF8;
              v311 = (v310 + 27) & 0xFFFFFFFFFFFFFFF8;
              v312 = swift_allocObject();
              v313 = v521;
              *(v312 + 16) = v532;
              *(v312 + 24) = v313;
              v314 = v524;
              v315 = v525;
              *(v312 + 32) = v524;
              *(v312 + 36) = v315;
              *(v312 + 40) = v519;
              *(v312 + 48) = sub_1AFA9EC20;
              *(v312 + 56) = v531;
              *(v312 + 64) = v307;
              v519 = v307;
              memcpy((v312 + 72), v514, 0x148uLL);
              sub_1AFA9E320(v515, v312 + v308, type metadata accessor for TriggerScript);
              v316 = (v312 + v309);
              v317 = v509;
              *v316 = v501;
              v316[1] = v317;
              v318 = (v312 + v310);
              v319 = v529;
              v320 = v530;
              v321 = v526;
              *v318 = v530;
              v318[1] = v321;
              v318[2] = v319;
              v322 = (v312 + v311);
              *v322 = v314;
              v322[1] = v315;
              *(v312 + ((v311 + 15) & 0xFFFFFFFFFFFFFFF8)) = v512;
              if (v503)
              {
                v525 = *(v532 + 40);
                v323 = swift_allocObject();
                *(v323 + 16) = sub_1AFA9EB78;
                *(v323 + 24) = v312;

                sub_1AFA9C054(v514, &v545, &unk_1EB633F18, type metadata accessor for TriggerScript);

                sub_1AF487F80(v320, v321);
                v324 = qword_1ED730EA0;

                a3 = v506;
                v237 = v507;
                v325 = v321;
                v231 = v496;
                if (v324 != -1)
                {
                  swift_once();
                }

                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v326 = qword_1ED73B8A0;
                v327 = swift_allocObject();
                *(v327 + 16) = sub_1AFA9EB90;
                *(v327 + 24) = v323;
                v328 = swift_allocObject();
                v328[2] = v326;
                v328[3] = sub_1AF6CC3F0;
                v328[4] = v327;
                *&v547 = sub_1AFA9EC30;
                *(&v547 + 1) = v328;
                *&v545 = MEMORY[0x1E69E9820];
                *(&v545 + 1) = 1107296256;
                *&v546 = sub_1AFCDA044;
                *(&v546 + 1) = &unk_1F2559D48;
                v329 = _Block_copy(&v545);
                swift_retain_n();

                [v525 addOperationWithBlock_];
                _Block_release(v329);

                (*v499)(v508, v520);

                sub_1AF487074(v530, v325);
                v238 = v532;
              }

              else
              {
                v524 = *(v532 + 32);
                v330 = swift_allocObject();
                v330[2] = sub_1AFA9EB78;
                v330[3] = v312;
                v331 = v330;
                v525 = v330;
                v332 = swift_allocObject();
                *(v332 + 16) = sub_1AFA9EB90;
                *(v332 + 24) = v331;
                *&v542 = sub_1AF6D25EC;
                *(&v542 + 1) = v332;
                *&v540 = MEMORY[0x1E69E9820];
                *(&v540 + 1) = 1107296256;
                *&v541 = sub_1AF6F662C;
                *(&v541 + 1) = &unk_1F2559CA8;
                v333 = _Block_copy(&v540);
                v530 = v320;
                v334 = v333;
                v497 = *(&v542 + 1);

                sub_1AFA9C054(v514, &v545, &unk_1EB633F18, type metadata accessor for TriggerScript);

                sub_1AF487F80(v320, v321);

                dispatch_sync(v524, v334);
                _Block_release(v334);

                (*v499)(v508, v520);
                swift_isEscapingClosureAtFileLocation();
                v335 = v506;

                a3 = v335;
                sub_1AF487074(v530, v321);
                v238 = v532;
                v237 = v507;
                v231 = v496;
              }

              goto LABEL_178;
            }

            dispatch_group_leave(a3);

            goto LABEL_204;
          }

LABEL_234:
          sub_1AFA9DE54(v533, v237, type metadata accessor for TriggerScript);
          v338 = v237[6];
          if (v338)
          {
            v340 = v237[1];
            v339 = v237[2];

            v341 = v340;
            v238 = v532;
            v342 = sub_1AF458B0C(v341, v339);
            v338(*(v237 + v267[13]), v342);

            sub_1AF0FB8EC(v338);
          }

          if (*(v237 + v267[10]) == 1)
          {
            v343 = *(v237 + v267[11]);
            v344 = v343;
          }

          else
          {
            sub_1AF81F330();
            v343 = swift_allocError();
            *v345 = v490;
          }

          if (!*(v522 + 16) && v343)
          {
            v346 = v505;
            v347 = *(v505 + 72);
            v348 = v343;
            os_unfair_lock_lock(v347);
            v349 = *(v522 + 16);
            *(v522 + 16) = v343;
            v350 = v343;

            os_unfair_lock_unlock(*(v346 + 72));
          }

          v239 = v526;
          v240 = v530;
          dispatch_group_leave(a3);

          v241 = v240;
          v242 = v239;
          goto LABEL_177;
        }

        sub_1AFA9C0C8(&v535);
LABEL_213:
        os_unfair_lock_unlock(*(v238 + 72));
        if (v287)
        {
          goto LABEL_214;
        }

        goto LABEL_234;
      }
    }

    else
    {
      *&v550 = 0;
      v548 = 0u;
      v549 = 0u;
      v546 = 0u;
      v547 = 0u;
      v545 = 0u;
      BYTE8(v550) = -1;
    }

    sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_213;
  }

  v351 = v220;
  v352 = v507;
  if (v227 == v507)
  {
    v353 = v510;
    v220 = v351;
    goto LABEL_314;
  }

  v354 = *(v504 + 72);
  v517 = *(*v479 + 72);
  v518 = v354;
  v355 = v236 + v517 * v227;
  v531 = (v533 + v354 * v227);
  v356 = v227;
  v357 = 24 * v227;
  while (1)
  {
    v533 = v355;

    if (*(v231 + 184))
    {
      break;
    }

    v362 = *(*(v231 + 168) + 4 * v356);
    v363 = *(*(v361 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v362 + 8);

    v364 = v362 == -1 && v363 == 0;
    if (!v364 && (v362 & 0x80000000) == 0 && v516[1] > v362)
    {
      v365 = *v516 + 12 * v362;
      if (v363 == -1 || *(v365 + 8) == v363)
      {
        v367 = *(*(*(v493 + 88) + 8 * *(v365 + 6) + 32) + 16);
        v368 = *(v367 + 128);
        if (*(v368 + 16))
        {
          v369 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v370 & 1) != 0 && *(*(v367 + 24) + 16 * *(*(v368 + 56) + 8 * v369) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_250;
          }
        }
      }
    }

    dispatch_group_enter(a3);
    v371 = *(v231 + 64);
    v372 = *(v231 + 80);
    v555 = *(v231 + 112);
    v374 = *(v231 + 80);
    v373 = *(v231 + 96);
    v553 = v372;
    v554 = v373;
    v375 = *(v231 + 64);
    v551 = *(v231 + 48);
    v552 = v371;
    v376 = *(v231 + 96);
    v547 = v374;
    v548 = v376;
    LOBYTE(v549) = *(v231 + 112);
    v545 = *(v231 + 48);
    v546 = v375;
    v377 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v379 = v378;
    v558 = v547;
    v559 = v548;
    v560 = v549;
    v557 = v546;
    v556 = v545;

    sub_1AF5DD36C(&v551, &v540);
    sub_1AF5DD3C8(&v556);
    if (v379)
    {

      v529 = 0;
      v380 = 0;
      v381 = 0;
    }

    else
    {
      v382 = *(v231 + 128);

      v383 = (v382 + v357 + v377);
      v529 = *v383;
      v380 = *(v383 + 1);
      v381 = *(v383 + 2);
    }

    v528 = v380;

    if (*(v231 + 184))
    {
      break;
    }

    v530 = v381;
    v385 = *(v384 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v525 = *(*(v231 + 168) + 4 * v356);
    v526 = *(v385 + 12 * v525 + 8);
    v527 = v357;

    v386 = swift_allocObject();
    v387 = v534;
    v386[2] = sub_1AFA9EC2C;
    v386[3] = v387;
    v386[4] = a3;
    v388 = *(v532 + 16);

    if (v388)
    {
      v389 = *(v388 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v390 = a3;

      if ((v389 & 1) == 0 || *(v532 + 3048) != 1)
      {
        sub_1AF81F330();
        v358 = swift_allocError();
        v359 = v358;
        *v360 = v513;
        if (!*(v522 + 16))
        {
          v414 = v356;
          v415 = v505;
          v416 = *(v505 + 72);
          v417 = v358;
          os_unfair_lock_lock(v416);
          v418 = *(v522 + 16);
          *(v522 + 16) = v359;
          v419 = v359;

          v420 = *(v415 + 72);
          v356 = v414;
          v352 = v507;
          os_unfair_lock_unlock(v420);
        }

        dispatch_group_leave(v390);

        sub_1AF487074(v529, v528);
        goto LABEL_249;
      }
    }

    else
    {
      swift_retain_n();
      v391 = a3;
    }

    v392 = v525;
    v393 = sub_1AFABEDAC();
    v394 = v532;
    v395 = v533 + v523[9];
    v396 = *v395;
    LOBYTE(v395) = *(v395 + 8);
    v524 = v393;
    v397 = v395 | (v393 != v396);
    os_unfair_lock_lock(*(v532 + 72));
    v398 = *(v394 + 80);
    v399 = *(v398 + 16);
    v519 = v356;
    if (!v399 || (v400 = sub_1AF41ACD4(v521, v392 | (v526 << 32)), (v401 & 1) == 0))
    {
      *&v550 = 0;
      v548 = 0u;
      v549 = 0u;
      v546 = 0u;
      v547 = 0u;
      v545 = 0u;
      BYTE8(v550) = -1;
LABEL_281:
      sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
      goto LABEL_282;
    }

    sub_1AF85B3D4(*(v398 + 56) + 96 * v400, &v545);
    if (BYTE8(v550) == 255)
    {
      goto LABEL_281;
    }

    sub_1AF85B3D4(&v545, &v540);
    sub_1AFA9BF94(&v545, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v539 + 9) = *(v544 + 9);
    v537 = v542;
    v538 = v543;
    v539[0] = v544[0];
    v535 = v540;
    v536 = v541;
    if (BYTE8(v544[1]))
    {
      sub_1AFA9C0C8(&v535);
LABEL_282:
      v402 = v532;
      os_unfair_lock_unlock(*(v532 + 72));
      if ((v397 & 1) == 0)
      {
        goto LABEL_303;
      }

LABEL_283:
      v403 = v523;
      v404 = swift_allocBox();
      v406 = v405;
      sub_1AFA9EE3C(v405);
      v407 = v406 + v403[9];
      *(v406 + v403[10]) = 0;
      *(v406 + v403[11]) = 0;
      v408 = (v406 + v403[12]);
      *v408 = 0;
      v408[1] = 0xE000000000000000;
      *(v406 + v403[13]) = MEMORY[0x1E69E7CC0];
      v409 = v524;
      *v407 = v524;
      *(v407 + 8) = 0;
      sub_1AFA9DE54(v531, v406, type metadata accessor for TriggerScript);
      sub_1AFA9DE54(v406, v533, sub_1AF5B225C);
      os_unfair_lock_lock(*(v402 + 72));
      *&v545 = v409;
      BYTE8(v550) = 0;
      sub_1AF825824(&v545, v521, v392 | (v526 << 32));
      os_unfair_lock_unlock(*(v402 + 72));
      v410 = *(v402 + 16);

      if (v410)
      {
        v411 = v482;
        v412 = v520;
        (*v511)(v482, v410 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v520);

        (*v498)(v411, 0, 1, v412);
        v413 = v494;
        (*v491)(v494, v411, v412);
      }

      else
      {
        v421 = v482;
        (*v498)(v482, 1, 1, v520);
        v413 = v494;
        if (qword_1ED7270F0 != -1)
        {
          swift_once();
        }

        v422 = sub_1AFDFC538();
        sub_1AF477C68(v422, qword_1ED73B608);
        sub_1AFDFC528();
        sub_1AFDFC4D8();
        if ((*v483)(v421, 1, v520) != 1)
        {
          sub_1AFA9C470(v421, &qword_1EB633050, MEMORY[0x1E69E93B8]);
        }
      }

      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v497 = v404;
      v512 = v386;
      v423 = sub_1AFDFC538();
      sub_1AF477C68(v423, qword_1ED73B608);
      v424 = sub_1AFDFC528();
      v425 = sub_1AFDFDB88();
      if (sub_1AFDFDCE8())
      {
        v426 = swift_slowAlloc();
        *v426 = 0;
        v427 = sub_1AFDFC4E8();
        _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v424, v425, v427, "buildScript", "", v426, 2u);
        MEMORY[0x1B271DEA0](v426, -1, -1);
      }

      (*v511)(v502, v413, v520);
      sub_1AFDFC578();
      swift_allocObject();
      v428 = sub_1AFDFC568();
      sub_1AFA9E3C8(v531, v515, type metadata accessor for TriggerScript);
      v429 = (*(v504 + 80) + 400) & ~*(v504 + 80);
      v430 = (v500 + v429) & 0xFFFFFFFFFFFFFFF8;
      v431 = (v430 + 23) & 0xFFFFFFFFFFFFFFF8;
      v432 = (v431 + 27) & 0xFFFFFFFFFFFFFFF8;
      v492 = (v432 + 15) & 0xFFFFFFFFFFFFFFF8;
      v433 = swift_allocObject();
      v434 = v521;
      *(v433 + 16) = v532;
      *(v433 + 24) = v434;
      v435 = v525;
      v436 = v526;
      *(v433 + 32) = v525;
      *(v433 + 36) = v436;
      *(v433 + 40) = v524;
      *(v433 + 48) = sub_1AFA9EC20;
      *(v433 + 56) = v512;
      *(v433 + 64) = v428;
      v524 = v428;
      v437 = v514;
      memcpy((v433 + 72), v514, 0x148uLL);
      sub_1AFA9E320(v515, v433 + v429, type metadata accessor for TriggerScript);
      v438 = (v433 + v430);
      v439 = v509;
      *v438 = v501;
      v438[1] = v439;
      v440 = (v433 + v431);
      v441 = v528;
      v442 = v529;
      *v440 = v529;
      v440[1] = v441;
      v440[2] = v530;
      v443 = (v433 + v432);
      *v443 = v435;
      v443[1] = v436;
      *(v433 + v492) = v497;
      if (v503)
      {
        v525 = *(v532 + 40);
        v444 = swift_allocObject();
        v444[2].isa = sub_1AFA9C844;
        v444[3].isa = v433;
        v526 = v444;

        sub_1AFA9C054(v437, &v545, &unk_1EB633F18, type metadata accessor for TriggerScript);

        sub_1AF487F80(v442, v441);
        v445 = qword_1ED730EA0;

        if (v445 != -1)
        {
          swift_once();
        }

        v356 = v519;
        v446 = v520;
        v447 = v494;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v448 = qword_1ED73B8A0;
        v449 = swift_allocObject();
        v450 = v526;
        *(v449 + 16) = sub_1AFA9EB90;
        *(v449 + 24) = v450;
        v451 = swift_allocObject();
        v451[2] = v448;
        v451[3] = sub_1AF6CC3F0;
        v451[4] = v449;
        *&v547 = sub_1AFA9EC30;
        *(&v547 + 1) = v451;
        *&v545 = MEMORY[0x1E69E9820];
        *(&v545 + 1) = 1107296256;
        *&v546 = sub_1AFCDA044;
        *(&v546 + 1) = &unk_1F2559BE0;
        v452 = _Block_copy(&v545);
        swift_retain_n();

        [v525 addOperationWithBlock_];
        _Block_release(v452);

        (*v499)(v447, v446);
        a3 = v506;

        sub_1AF487074(v529, v528);
        v357 = v527;
        v352 = v507;
        goto LABEL_250;
      }

      v526 = *(v532 + 32);
      v453 = swift_allocObject();
      *(v453 + 16) = sub_1AFA9C844;
      *(v453 + 24) = v433;
      v454 = swift_allocObject();
      *(v454 + 16) = sub_1AFA9EB90;
      *(v454 + 24) = v453;
      *&v542 = sub_1AF6D25EC;
      *(&v542 + 1) = v454;
      *&v540 = MEMORY[0x1E69E9820];
      *(&v540 + 1) = 1107296256;
      *&v541 = sub_1AF6F662C;
      *(&v541 + 1) = &unk_1F2559B40;
      v455 = _Block_copy(&v540);
      v529 = v442;
      v456 = v455;
      v525 = *(&v542 + 1);

      sub_1AFA9C054(v514, &v545, &unk_1EB633F18, type metadata accessor for TriggerScript);

      sub_1AF487F80(v442, v441);

      dispatch_sync(v526, v456);
      _Block_release(v456);

      (*v499)(v494, v520);
      swift_isEscapingClosureAtFileLocation();
      a3 = v506;

      sub_1AF487074(v529, v441);
      v356 = v519;
      v352 = v507;
      goto LABEL_249;
    }

    v457 = v535;
    v458 = (v535 != v524) | v397;
    v402 = v532;
    os_unfair_lock_unlock(*(v532 + 72));
    if ((v458 & 1) == 0)
    {
LABEL_303:
      v459 = v533;
      sub_1AFA9DE54(v531, v533, type metadata accessor for TriggerScript);
      v460 = *(v459 + 48);
      v461 = v523;
      if (v460)
      {
        v462 = *(v533 + 8);
        v463 = *(v533 + 16);

        v464 = v463;
        a3 = v506;
        v465 = sub_1AF458B0C(v462, v464);
        v460(*(v533 + v461[13]), v465);

        v459 = v533;
        sub_1AF0FB8EC(v460);
      }

      if (*(v459 + v461[10]) == 1)
      {
        v466 = *(v459 + v461[11]);
        v467 = v466;
      }

      else
      {
        sub_1AF81F330();
        v466 = swift_allocError();
        *v468 = v490;
      }

      v357 = v527;
      if (!*(v522 + 16) && v466)
      {
        v469 = v505;
        v470 = *(v505 + 72);
        v471 = v466;
        os_unfair_lock_lock(v470);
        v472 = *(v522 + 16);
        *(v522 + 16) = v466;
        v473 = v466;

        os_unfair_lock_unlock(*(v469 + 72));
      }

      v356 = v519;
      v474 = v528;
      dispatch_group_leave(a3);

      sub_1AF487074(v529, v474);
      goto LABEL_250;
    }

    if (v457 != v524)
    {
      goto LABEL_283;
    }

    dispatch_group_leave(a3);

    sub_1AF487074(v529, v528);
    v356 = v519;
LABEL_249:
    v357 = v527;
LABEL_250:
    ++v356;
    v357 += 24;
    v355 = v517 + v533;
    v531 = (v518 + v531);
    if (v352 == v356)
    {
      v220 = 1;
LABEL_313:
      v353 = v510;
LABEL_314:
      sub_1AF630994(v487, &v597, v610);
      v510 = v353;
      sub_1AF62D29C(v231);
      ecs_stack_allocator_pop_snapshot(v486);
      if (v485)
      {
        os_unfair_lock_unlock(*(v231 + 344));
        os_unfair_lock_unlock(*(v231 + 376));
      }

      v225 = v484 + 1;
      if (v484 + 1 != v481)
      {
        goto LABEL_170;
      }

      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v590, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v220 & 1) == 0)
      {
LABEL_318:
        dispatch_group_leave(a3);
      }

LABEL_317:

      sub_1AFA62400(v475);

      goto LABEL_318;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFA945A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v266 = a8;
  v267 = a4;
  v276 = a6;
  v277 = a7;
  LODWORD(v274) = a3;
  sub_1AF5B21E4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v273 = &v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeaderScript();
  MEMORY[0x1EEE9AC00](v17, v18);
  v271 = &v262 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B21A8(0);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v272 = &v262 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v262 - v26;
  sub_1AF85B3D4(a2, &v379);
  if (v388)
  {
    v275 = a5;
    if (v388 != 1)
    {
      sub_1AFA9E8FC(a1, sub_1AF5B21E4);

      sub_1AF449D40(&v379, &v341);
      sub_1AF0D5A54(&v341, &v363);
      swift_dynamicCast();
      *(&v364 + 1) = v14;
      *&v365 = &off_1F250F310;
      v40 = sub_1AF585714(&v363);
      sub_1AFA9E3C8(a1, v40, sub_1AF5B21E4);
      BYTE8(v365) = 1;
      sub_1AF8259D0(&v363, v275, v276);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
      goto LABEL_19;
    }

    v269 = a2;
    v397 = v8;
    v263 = sub_1AF5B21E4;
    v268 = a1;
    sub_1AFA9E8FC(a1, sub_1AF5B21E4);
    v270 = v382;
    v264 = v384;
    v265 = v383;
    sub_1AF449D40(&v379, &v341);
    sub_1AF449D40(&v385, v326);
    *v27 = 2;
    *(v27 + 1) = 0;
    *(v27 + 2) = 0xE000000000000000;
    v28 = MEMORY[0x1E69E7CC0];
    *(v27 + 4) = 0;
    *(v27 + 5) = 0;
    *(v27 + 3) = v28;
    v29 = *(v17 + 32);
    v30 = type metadata accessor for ScriptIndex();
    (*(*(v30 - 8) + 56))(&v27[v29], 1, 1, v30);
    v31 = &v27[v14[9]];
    *v31 = 0;
    v31[8] = 1;
    v27[v14[10]] = 0;
    *&v27[v14[11]] = 0;
    v32 = &v27[v14[12]];
    *v32 = 0;
    *(v32 + 1) = 0xE000000000000000;
    *&v27[v14[13]] = v28;
    v33 = v21[9];
    v262 = v21[10];
    v34 = v21[11];
    *&v27[v21[12]] = 0;
    v27[v21[13]] = 0;
    v35 = &v27[v21[14]];
    *v35 = 0;
    v35[8] = 1;
    v36 = v21[15];
    v27[v36] = 1;
    sub_1AF0D5A54(&v341, &v363);
    sub_1AFA9E8FC(v27, v263);
    swift_dynamicCast();
    *&v27[v33] = v270;
    v37 = v265;
    *&v27[v34] = v264;
    *&v27[v262] = v37;
    sub_1AF0D5A54(v326, &v363);

    swift_dynamicCast();
    v27[v36] = 0;
    sub_1AFA9E3C8(v27, v268, sub_1AF5B21E4);
    if (v274)
    {
      v38 = *(v267 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v38)
      {
        v39 = *(v38 + 80);
        swift_unknownObjectWeakLoadStrong();
        v38 = *(v38 + 56);
      }

      else
      {
        v39 = 0;
      }

      v43 = v271;
      LODWORD(v271) = v39;
      *&v364 = 0;
      swift_unknownObjectUnownedInit();
      v42 = v267;
      *&v363 = v267;
      *&v364 = v38;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      BYTE8(v364) = v39;
      v274 = sub_1AF5B21A8;
      v44 = v272;
      sub_1AFA9E3C8(v27, v272, sub_1AF5B21A8);
      sub_1AFA9E3C8(v44, v43, type metadata accessor for HeaderScript);
      sub_1AFA9E8FC(v44, sub_1AF5B21A8);
      v41 = v276;
      sub_1AF5AC5A8(v43, v276);
      sub_1AFA9E8FC(v43, type metadata accessor for HeaderScript);
      v45 = v273;
      sub_1AFA9E3C8(v27, v273, sub_1AF5B21E4);
      sub_1AF5AC738(v45, v41);
      sub_1AFA9E8FC(v45, sub_1AF5B21E4);
      sub_1AFA9E3C8(v27, v44, v274);
      sub_1AF5AC8C8(v44, v41);
      sub_1AFA9E8FC(v44, sub_1AF5B21A8);
      sub_1AF579490(&v363);
      if (v271)
      {
        v46 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v46 ^ 1);
      }
    }

    else
    {
      v41 = v276;
      v42 = v267;
      sub_1AFBFDF04(v27, v276);
    }

    *(&v364 + 1) = v21;
    *&v365 = &off_1F2558F90;
    v47 = sub_1AF585714(&v363);
    sub_1AFA9E3C8(v27, v47, sub_1AF5B21A8);
    BYTE8(v365) = 0;
    sub_1AF8259D0(&v363, v275, v41);
    v48 = sub_1AF3CB2E8(v41);
    v9 = v397;
    if (v48)
    {
      sub_1AFD08414(v42, v48, v49);
    }

    sub_1AF0D5A54(v326, &v363);
    if (swift_dynamicCast())
    {
      v50 = *&v316[0];

      *&v363 = MEMORY[0x1E69E7CC0];
      *(&v363 + 1) = MEMORY[0x1E69E7CC0];
      sub_1AFD5541C(v42, v50);

      sub_1AFBFDF1C(v363, *(&v363 + 1), v41);
    }

    else
    {
      sub_1AF0D5A54(v326, &v363);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_18:
        sub_1AF678B44(v41);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v326);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
        sub_1AFA9E8FC(v27, sub_1AF5B21A8);
        a2 = v269;
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  sub_1AF85B3D4(a2, &v379);
  if (v388)
  {
    return sub_1AFA9C0C8(&v379);
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v355 = qword_1ED73B840;
  v356 = 0;
  v357 = 2;
  v358 = 0;
  v359 = 2;
  v360 = 0;
  sub_1AF70335C(1, &v300);
  v391 = v300;
  v392 = v301;
  v393 = v302;
  v394 = v303 | 1;
  v395 = v304;
  v396 = v305;
  v52 = v267;
  v53 = *(v267 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v267, &v391, 0x200000000, v306);
  v296 = v306[2];
  v297 = v307;
  v298 = v308;
  v299 = v309;
  v294 = v306[0];
  v295 = v306[1];
  sub_1AFA9E8FC(&v300, sub_1AF81FD74);
  v54 = v266;
  if (*&v306[0])
  {
    v273 = v309;
    if (v309 >= 1 && (v272 = *(&v307 + 1)) != 0)
    {
      v265 = v53;
      v271 = *(&v306[2] + 1);
      v270 = v308;
      v55 = *(v308 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v276 = *(&v308 + 1);
      v56 = *(*(&v308 + 1) + 32);
      v330 = *&v306[0];
      v331 = *(v306 + 8);
      v332 = *(&v306[1] + 8);
      v365 = v296;
      v366 = v297;
      v367 = v298;
      v368 = v299;
      v363 = v294;
      v364 = v295;
      sub_1AF5DD298(&v363, &v379);
      v57 = 0;
      LODWORD(v269) = v55;
      v268 = v56;
      do
      {
        v397 = v9;
        v58 = &v271[48 * v57];
        v59 = *v58;
        v60 = *(v58 + 1);
        v61 = *(v58 + 2);
        v62 = *(v58 + 3);
        v277 = *(v58 + 2);
        v274 = v62;
        v275 = v57;
        v63 = *(v58 + 4);
        v64 = *(v58 + 5);
        if (v55)
        {
          v65 = *(v64 + 376);

          os_unfair_lock_lock(v65);
          os_unfair_lock_lock(*(v64 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v56);
        v66 = v276;
        v67 = *(v276 + 4);
        v377[0] = *(v276 + 3);
        v377[1] = v67;
        v378 = v276[10];
        v68 = *(*(*(*(v64 + 40) + 16) + 32) + 16) + 1;
        v66[6] = ecs_stack_allocator_allocate(v276[4], 48 * v68, 8);
        v66[7] = v68;
        v66[9] = 0;
        v66[10] = 0;
        v66[8] = 0;
        LOBYTE(v341) = 1;
        *&v379 = v270;
        *(&v379 + 1) = v64;
        v380 = v66;
        v381 = v61;
        v382 = (v60 - v59 + v61);
        v383 = v273;
        v384 = v59;
        v385 = v60;
        v386 = 0;
        v387 = 1;
        v388 = v277;
        v389 = v274;
        v390 = v63;
        v69 = v397;
        sub_1AF706180(v64, &v379);
        v70 = v388;
        v274 = v69;
        if (v388)
        {
          v397 = v390;
          if (v390)
          {
            v71 = 0;
            v277 = v380;
            do
            {
              v72 = *(v70 + 8 * v71);
              v73 = *(v64 + 192);

              if (v73)
              {
                v74 = *(v64 + 208);
                *(v73 + 8 * (v72 >> 6)) |= 1 << v72;
                *(v74 + 8 * (v72 >> 6)) &= ~(1 << v72);
              }

              if (*(*(v64 + 40) + 213) == 1)
              {
                v75 = *(v64 + 48);
                v76 = (v75 + 32);
                v77 = *(v75 + 16) + 1;
                while (--v77)
                {
                  v78 = v76 + 5;
                  v79 = *v76;
                  v76 += 5;
                  if (v79 == &type metadata for PropagateDirtiness)
                  {
                    v80 = *(v78 - 2);
                    goto LABEL_43;
                  }
                }

                v80 = 0;
LABEL_43:
                v81 = *(v64 + 128);

                if (*(v64 + 184))
                {
                  goto LABEL_191;
                }

                v83 = v81 + v80;
                v84 = *(*(v64 + 168) + 4 * v72);
                v85 = (v83 + 8 * v72);
                v86 = *(*(v82 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v84 + 8);

                v87 = *v85;
                v88 = v85[1];
                if (v87 != -1 || v88 != 0)
                {
                  sub_1AF70D248(&v341, v84 | (v86 << 32), v87 | (v88 << 32));
                }
              }

              sub_1AF5B252C(0);
              v91 = *(*(v64 + 40) + 16);
              v92 = *(v91 + 128);
              if (*(v92 + 16))
              {
                v93 = v90;
                v94 = sub_1AF449CB8(v90);
                if ((v95 & 1) != 0 && *(*(v91 + 24) + 16 * *(*(v92 + 56) + 8 * v94) + 32) == v93)
                {
                  *&v341 = v93;
                  *(&v341 + 1) = &off_1F250F310;
                  BYTE8(v343) = 1;

                  sub_1AF6304E8(v277 + 104, &v341, v72, 0, v64, v277);

                  sub_1AF635250(&v341);
                }
              }

              v71 = (v71 + 1);
            }

            while (v71 != v397);
          }
        }

        else
        {
          v96 = v384;
          v97 = v385;
          if (v384 != v385)
          {
            v99 = v380;
            do
            {
              v100 = *(v64 + 192);

              if (v100)
              {
                v101 = *(v64 + 208);
                *(v100 + 8 * (v96 >> 6)) |= 1 << v96;
                *(v101 + 8 * (v96 >> 6)) &= ~(1 << v96);
              }

              if (*(*(v64 + 40) + 213) == 1)
              {
                v102 = *(v64 + 48);
                v103 = (v102 + 32);
                v104 = *(v102 + 16) + 1;
                while (--v104)
                {
                  v105 = v103 + 5;
                  v106 = *v103;
                  v103 += 5;
                  if (v106 == &type metadata for PropagateDirtiness)
                  {
                    v107 = *(v105 - 2);
                    goto LABEL_66;
                  }
                }

                v107 = 0;
LABEL_66:
                v108 = *(v64 + 128);

                if (*(v64 + 184))
                {
LABEL_191:
                  result = sub_1AFDFE518();
                  __break(1u);
                  return result;
                }

                v110 = v108 + v107;
                v111 = *(*(v64 + 168) + 4 * v96);
                v112 = (v110 + 8 * v96);
                v113 = *(*(v109 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

                v114 = *v112;
                v115 = v112[1];
                if (v114 != -1 || v115 != 0)
                {
                  sub_1AF70D248(&v341, v111 | (v113 << 32), v114 | (v115 << 32));
                }
              }

              sub_1AF5B252C(0);
              v118 = *(*(v64 + 40) + 16);
              v119 = *(v118 + 128);
              if (*(v119 + 16))
              {
                v120 = v117;
                v121 = sub_1AF449CB8(v117);
                if ((v122 & 1) != 0 && *(*(v118 + 24) + 16 * *(*(v119 + 56) + 8 * v121) + 32) == v120)
                {
                  *&v341 = v120;
                  *(&v341 + 1) = &off_1F250F310;
                  BYTE8(v343) = 1;

                  sub_1AF6304E8(v99 + 104, &v341, v96, 0, v64, v99);

                  sub_1AF635250(&v341);
                }
              }

              ++v96;
            }

            while (v96 != v97);
          }
        }

        v98 = v274;
        sub_1AF630994(v276, &v330, v377);
        v9 = v98;
        sub_1AF62D29C(v64);
        v56 = v268;
        ecs_stack_allocator_pop_snapshot(v268);
        v55 = v269;
        if (v269)
        {
          os_unfair_lock_unlock(*(v64 + 344));
          os_unfair_lock_unlock(*(v64 + 376));
        }

        v57 = v275 + 1;
      }

      while (v275 + 1 != v272);
      sub_1AFA9BF94(v306, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v306, &qword_1ED725EA0, &type metadata for QueryResult);
      v54 = v266;
      v52 = v267;
      v53 = v265;
    }

    else
    {
      sub_1AFA9BF94(v306, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF70471C(1, &v310);
  v371 = v310;
  v372 = v311;
  v373 = v312;
  v374 = v313 | 1;
  v375 = v314;
  v376 = v315;
  sub_1AF6B06C0(v52, &v371, 0x200000000, v316);
  v290 = v316[2];
  v291 = v317;
  v292 = v318;
  v293 = v319;
  v288 = v316[0];
  v289 = v316[1];
  sub_1AFA9E8FC(&v310, sub_1AF81FC5C);
  if (*&v316[0])
  {
    v273 = v319;
    if (v319 >= 1 && (v272 = *(&v317 + 1)) != 0)
    {
      v265 = v53;
      v271 = *(&v316[2] + 1);
      v270 = v318;
      v123 = *(v318 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v276 = *(&v318 + 1);
      v124 = *(*(&v318 + 1) + 32);
      v333 = *&v316[0];
      v334 = *(v316 + 8);
      v335 = *(&v316[1] + 8);
      v343 = v290;
      v344 = v291;
      v345 = v292;
      v346 = v293;
      v341 = v288;
      v342 = v289;
      sub_1AF5DD298(&v341, &v363);
      v125 = 0;
      LODWORD(v269) = v123;
      v268 = v124;
      do
      {
        v397 = v9;
        v126 = &v271[48 * v125];
        v127 = *v126;
        v128 = *(v126 + 1);
        v129 = *(v126 + 2);
        v130 = *(v126 + 3);
        v277 = *(v126 + 2);
        v274 = v130;
        v275 = v125;
        v131 = *(v126 + 4);
        v132 = *(v126 + 5);
        if (v123)
        {
          v133 = *(v132 + 376);

          os_unfair_lock_lock(v133);
          os_unfair_lock_lock(*(v132 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v124);
        v134 = v276;
        v135 = *(v276 + 4);
        v361[0] = *(v276 + 3);
        v361[1] = v135;
        v362 = v276[10];
        v136 = *(*(*(*(v132 + 40) + 16) + 32) + 16) + 1;
        v134[6] = ecs_stack_allocator_allocate(v276[4], 48 * v136, 8);
        v134[7] = v136;
        v134[9] = 0;
        v134[10] = 0;
        v134[8] = 0;
        LOBYTE(v326[0]) = 1;
        *&v363 = v270;
        *(&v363 + 1) = v132;
        *&v364 = v134;
        *(&v364 + 1) = v129;
        *&v365 = (v128 - v127 + v129);
        *(&v365 + 1) = v273;
        *&v366 = v127;
        *(&v366 + 1) = v128;
        v367 = 0uLL;
        LOBYTE(v368) = 1;
        *(&v368 + 1) = v277;
        v369 = v274;
        v370 = v131;
        v137 = v397;
        sub_1AF706090(v132, &v363);
        v138 = *(&v368 + 1);
        v274 = v137;
        if (*(&v368 + 1))
        {
          v397 = v370;
          if (v370)
          {
            v139 = 0;
            v277 = v364;
            do
            {
              v140 = *(v138 + 8 * v139);
              v141 = *(v132 + 192);

              if (v141)
              {
                v142 = *(v132 + 208);
                *(v141 + 8 * (v140 >> 6)) |= 1 << v140;
                *(v142 + 8 * (v140 >> 6)) &= ~(1 << v140);
              }

              if (*(*(v132 + 40) + 213) == 1)
              {
                v143 = *(v132 + 48);
                v144 = (v143 + 32);
                v145 = *(v143 + 16) + 1;
                while (--v145)
                {
                  v146 = v144 + 5;
                  v147 = *v144;
                  v144 += 5;
                  if (v147 == &type metadata for PropagateDirtiness)
                  {
                    v148 = *(v146 - 2);
                    goto LABEL_98;
                  }
                }

                v148 = 0;
LABEL_98:
                v149 = *(v132 + 128);

                if (*(v132 + 184))
                {
                  goto LABEL_191;
                }

                v151 = v149 + v148;
                v152 = *(*(v132 + 168) + 4 * v140);
                v153 = (v151 + 8 * v140);
                v154 = *(*(v150 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v152 + 8);

                v155 = *v153;
                v156 = v153[1];
                if (v155 != -1 || v156 != 0)
                {
                  sub_1AF70D248(v326, v152 | (v154 << 32), v155 | (v156 << 32));
                }
              }

              sub_1AF5B24B4(0);
              v159 = *(*(v132 + 40) + 16);
              v160 = *(v159 + 128);
              if (*(v160 + 16))
              {
                v161 = v158;
                v162 = sub_1AF449CB8(v158);
                if ((v163 & 1) != 0 && *(*(v159 + 24) + 16 * *(*(v160 + 56) + 8 * v162) + 32) == v161)
                {
                  *&v326[0] = v161;
                  *(&v326[0] + 1) = &off_1F250F310;
                  BYTE8(v326[2]) = 1;

                  sub_1AF6304E8(v277 + 104, v326, v140, 0, v132, v277);

                  sub_1AF635250(v326);
                }
              }

              v139 = (v139 + 1);
            }

            while (v139 != v397);
          }
        }

        else
        {
          v165 = *(&v366 + 1);
          v164 = v366;
          if (v366 != *(&v366 + 1))
          {
            v167 = v364;
            do
            {
              v168 = *(v132 + 192);

              if (v168)
              {
                v169 = *(v132 + 208);
                *(v168 + 8 * (v164 >> 6)) |= 1 << v164;
                *(v169 + 8 * (v164 >> 6)) &= ~(1 << v164);
              }

              if (*(*(v132 + 40) + 213) == 1)
              {
                v170 = *(v132 + 48);
                v171 = (v170 + 32);
                v172 = *(v170 + 16) + 1;
                while (--v172)
                {
                  v173 = v171 + 5;
                  v174 = *v171;
                  v171 += 5;
                  if (v174 == &type metadata for PropagateDirtiness)
                  {
                    v175 = *(v173 - 2);
                    goto LABEL_121;
                  }
                }

                v175 = 0;
LABEL_121:
                v176 = *(v132 + 128);

                if (*(v132 + 184))
                {
                  goto LABEL_191;
                }

                v178 = v176 + v175;
                v179 = *(*(v132 + 168) + 4 * v164);
                v180 = (v178 + 8 * v164);
                v181 = *(*(v177 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v179 + 8);

                v182 = *v180;
                v183 = v180[1];
                if (v182 != -1 || v183 != 0)
                {
                  sub_1AF70D248(v326, v179 | (v181 << 32), v182 | (v183 << 32));
                }
              }

              sub_1AF5B24B4(0);
              v186 = *(*(v132 + 40) + 16);
              v187 = *(v186 + 128);
              if (*(v187 + 16))
              {
                v188 = v185;
                v189 = sub_1AF449CB8(v185);
                if ((v190 & 1) != 0 && *(*(v186 + 24) + 16 * *(*(v187 + 56) + 8 * v189) + 32) == v188)
                {
                  *&v326[0] = v188;
                  *(&v326[0] + 1) = &off_1F250F310;
                  BYTE8(v326[2]) = 1;

                  sub_1AF6304E8(v167 + 104, v326, v164, 0, v132, v167);

                  sub_1AF635250(v326);
                }
              }

              ++v164;
            }

            while (v164 != v165);
          }
        }

        v166 = v274;
        sub_1AF630994(v276, &v333, v361);
        v9 = v166;
        sub_1AF62D29C(v132);
        v124 = v268;
        ecs_stack_allocator_pop_snapshot(v268);
        v123 = v269;
        if (v269)
        {
          os_unfair_lock_unlock(*(v132 + 344));
          os_unfair_lock_unlock(*(v132 + 376));
        }

        v125 = v275 + 1;
      }

      while (v275 + 1 != v272);
      sub_1AFA9BF94(v316, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v316, &qword_1ED725EA0, &type metadata for QueryResult);
      v54 = v266;
      v52 = v267;
    }

    else
    {
      sub_1AFA9BF94(v316, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AF7044B4(1, &v320);
  v349 = v320;
  v350 = v321;
  v351 = v322;
  v352 = v323 | 1;
  v353 = v324;
  v354 = v325;
  sub_1AF6B06C0(v52, &v349, 0x200000000, v326);
  v284 = v326[2];
  v285 = v327;
  v286 = v328;
  v287 = v329;
  v282 = v326[0];
  v283 = v326[1];
  sub_1AFA9E8FC(&v320, sub_1AF81FB10);
  if (*&v326[0])
  {
    v273 = v329;
    if (v329 >= 1 && (v272 = *(&v327 + 1)) != 0)
    {
      v271 = *(&v326[2] + 1);
      v270 = v328;
      v191 = *(v328 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v276 = *(&v328 + 1);
      v192 = *(*(&v328 + 1) + 32);
      v336 = *&v326[0];
      v337 = *(v326 + 8);
      v338 = *(&v326[1] + 8);
      v281[2] = v284;
      v281[3] = v285;
      v281[4] = v286;
      v281[5] = v287;
      v281[0] = v282;
      v281[1] = v283;
      sub_1AF5DD298(v281, &v341);
      v193 = 0;
      LODWORD(v269) = v191;
      v268 = v192;
      do
      {
        v397 = v9;
        v194 = &v271[48 * v193];
        v195 = *v194;
        v196 = *(v194 + 1);
        v197 = *(v194 + 2);
        v198 = *(v194 + 3);
        v277 = *(v194 + 2);
        v274 = v198;
        v275 = v193;
        v199 = *(v194 + 4);
        v200 = *(v194 + 5);
        if (v191)
        {
          v201 = *(v200 + 376);

          os_unfair_lock_lock(v201);
          os_unfair_lock_lock(*(v200 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v192);
        v202 = v276;
        v203 = *(v276 + 4);
        v339[0] = *(v276 + 3);
        v339[1] = v203;
        v340 = v276[10];
        v204 = *(*(*(*(v200 + 40) + 16) + 32) + 16) + 1;
        v202[6] = ecs_stack_allocator_allocate(v276[4], 48 * v204, 8);
        v202[7] = v204;
        v202[9] = 0;
        v202[10] = 0;
        v202[8] = 0;
        LOBYTE(v278) = 1;
        *&v341 = v270;
        *(&v341 + 1) = v200;
        *&v342 = v202;
        *(&v342 + 1) = v197;
        *&v343 = (v196 - v195 + v197);
        *(&v343 + 1) = v273;
        *&v344 = v195;
        *(&v344 + 1) = v196;
        v345 = 0uLL;
        LOBYTE(v346) = 1;
        *(&v346 + 1) = v277;
        v347 = v274;
        v348 = v199;
        v205 = v397;
        sub_1AF706D00(v200, &v341);
        v206 = *(&v346 + 1);
        v274 = v205;
        if (*(&v346 + 1))
        {
          v397 = v348;
          if (v348)
          {
            v207 = 0;
            v277 = v342;
            do
            {
              v208 = *(v206 + 8 * v207);
              v209 = *(v200 + 192);

              if (v209)
              {
                v210 = *(v200 + 208);
                *(v209 + 8 * (v208 >> 6)) |= 1 << v208;
                *(v210 + 8 * (v208 >> 6)) &= ~(1 << v208);
              }

              if (*(*(v200 + 40) + 213) == 1)
              {
                v211 = *(v200 + 48);
                v212 = (v211 + 32);
                v213 = *(v211 + 16) + 1;
                while (--v213)
                {
                  v214 = v212 + 5;
                  v215 = *v212;
                  v212 += 5;
                  if (v215 == &type metadata for PropagateDirtiness)
                  {
                    v216 = *(v214 - 2);
                    goto LABEL_153;
                  }
                }

                v216 = 0;
LABEL_153:
                v217 = *(v200 + 128);

                if (*(v200 + 184))
                {
                  goto LABEL_191;
                }

                v219 = v217 + v216;
                v220 = *(*(v200 + 168) + 4 * v208);
                v221 = (v219 + 8 * v208);
                v222 = *(*(v218 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v220 + 8);

                v223 = *v221;
                v224 = v221[1];
                if (v223 != -1 || v224 != 0)
                {
                  sub_1AF70D248(&v278, v220 | (v222 << 32), v223 | (v224 << 32));
                }
              }

              sub_1AF5B243C(0);
              v227 = *(*(v200 + 40) + 16);
              v228 = *(v227 + 128);
              if (*(v228 + 16))
              {
                v229 = v226;
                v230 = sub_1AF449CB8(v226);
                if ((v231 & 1) != 0 && *(*(v227 + 24) + 16 * *(*(v228 + 56) + 8 * v230) + 32) == v229)
                {
                  v278 = v229;
                  v279 = &off_1F250F310;
                  v280 = 1;

                  sub_1AF6304E8(v277 + 104, &v278, v208, 0, v200, v277);

                  sub_1AF635250(&v278);
                }
              }

              v207 = (v207 + 1);
            }

            while (v207 != v397);
          }
        }

        else
        {
          v233 = *(&v344 + 1);
          v232 = v344;
          if (v344 != *(&v344 + 1))
          {
            v235 = v342;
            do
            {
              v236 = *(v200 + 192);

              if (v236)
              {
                v237 = *(v200 + 208);
                *(v236 + 8 * (v232 >> 6)) |= 1 << v232;
                *(v237 + 8 * (v232 >> 6)) &= ~(1 << v232);
              }

              if (*(*(v200 + 40) + 213) == 1)
              {
                v238 = *(v200 + 48);
                v239 = (v238 + 32);
                v240 = *(v238 + 16) + 1;
                while (--v240)
                {
                  v241 = v239 + 5;
                  v242 = *v239;
                  v239 += 5;
                  if (v242 == &type metadata for PropagateDirtiness)
                  {
                    v243 = *(v241 - 2);
                    goto LABEL_176;
                  }
                }

                v243 = 0;
LABEL_176:
                v244 = *(v200 + 128);

                if (*(v200 + 184))
                {
                  goto LABEL_191;
                }

                v246 = v244 + v243;
                v247 = *(*(v200 + 168) + 4 * v232);
                v248 = (v246 + 8 * v232);
                v249 = *(*(v245 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v247 + 8);

                v250 = *v248;
                v251 = v248[1];
                if (v250 != -1 || v251 != 0)
                {
                  sub_1AF70D248(&v278, v247 | (v249 << 32), v250 | (v251 << 32));
                }
              }

              sub_1AF5B243C(0);
              v254 = *(*(v200 + 40) + 16);
              v255 = *(v254 + 128);
              if (*(v255 + 16))
              {
                v256 = v253;
                v257 = sub_1AF449CB8(v253);
                if ((v258 & 1) != 0 && *(*(v254 + 24) + 16 * *(*(v255 + 56) + 8 * v257) + 32) == v256)
                {
                  v278 = v256;
                  v279 = &off_1F250F310;
                  v280 = 1;

                  sub_1AF6304E8(v235 + 104, &v278, v232, 0, v200, v235);

                  sub_1AF635250(&v278);
                }
              }

              ++v232;
            }

            while (v232 != v233);
          }
        }

        v234 = v274;
        sub_1AF630994(v276, &v336, v339);
        v9 = v234;
        sub_1AF62D29C(v200);
        v192 = v268;
        ecs_stack_allocator_pop_snapshot(v268);
        v191 = v269;
        if (v269)
        {
          os_unfair_lock_unlock(*(v200 + 344));
          os_unfair_lock_unlock(*(v200 + 376));
        }

        v193 = v275 + 1;
      }

      while (v275 + 1 != v272);
      sub_1AFA9BF94(v326, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v326, &qword_1ED725EA0, &type metadata for QueryResult);
      v54 = v266;
      v52 = v267;
    }

    else
    {
      sub_1AFA9BF94(v326, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  sub_1AFA6E5A8(v52, sub_1AF70424C, sub_1AF81F9C4, sub_1AF705FA0, sub_1AF5B23C4);
  sub_1AFA6E5A8(v52, sub_1AF704984, sub_1AF81F8AC, sub_1AF706CCC, sub_1AF5B25A4);
  sub_1AFA6E5A8(v52, sub_1AF703D7C, sub_1AF81F794, sub_1AF706C98, sub_1AF5B234C);
  sub_1AFA6E5A8(v52, sub_1AF703D5C, sub_1AF81F67C, sub_1AF706C64, sub_1AF5B22D4);
  result = sub_1AFA6E5A8(v52, sub_1AF703D3C, sub_1AF81F514, sub_1AF70632C, sub_1AF5B225C);
  if (v54)
  {
    return sub_1AF1301DC(v54, v259, v260, v261);
  }

  return result;
}

uint64_t sub_1AFA9635C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 72);

  os_unfair_lock_lock(v5);
  v6 = *(a1 + 80);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v43 = (v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v44 = v4;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
LABEL_5:
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v12 = v11 + 1;
    if (v11 + 1 >= v10)
    {
      break;
    }

    v9 = *(v6 + 72 + 8 * v11++);
    if (v9)
    {
      v11 = v12;
LABEL_9:
      while (1)
      {
        v13 = __clz(__rbit64(v9)) | (v11 << 6);
        v14 = *(v6 + 48) + 16 * v13;
        v15 = *v14;
        v16 = *(v14 + 12);
        v17 = *(v14 + 8);
        sub_1AF85B3D4(*(v6 + 56) + 96 * v13, &v45);
        if (v46 == 255)
        {
          goto LABEL_34;
        }

        v9 &= v9 - 1;
        if (v15 == type metadata accessor for HeaderScript())
        {
          v18 = v17 == -1 && v16 == 0;
          if (v18 || (v17 & 0x80000000) != 0 || v43[1] <= v17 || (v16 != -1 ? (v19 = *(*v43 + 12 * v17 + 8) == v16) : (v19 = 1), !v19 || (v40 = (*v43 + 12 * v17), sub_1AF5B21E4(0), v21 = *(*(*(*(v44 + 88) + 8 * *(v40 + 3) + 32) + 16) + 128), !*(v21 + 16)) || (v38 = *(*(*(v44 + 88) + 8 * *(v40 + 3) + 32) + 16), v39 = v20, v22 = sub_1AF449CB8(v20), (v23 & 1) == 0) || *(*(v38 + 24) + 16 * *(*(v21 + 56) + 8 * v22) + 32) != v39))
          {
            sub_1AFA9C0C8(&v45);
            goto LABEL_5;
          }

          if (*(*(v39 - 8) + 64))
          {
            v24 = *(*(v39 - 8) + 72);
          }

          else
          {
            v24 = 0;
          }

          v25 = *(*(v44 + 144) + 8 * *v40 + 32);
          v26 = *(v25 + 48);
          v27 = (v26 + 32);
          v28 = *(v26 + 16) + 1;
          while (--v28)
          {
            v29 = v27 + 5;
            v30 = *v27;
            v27 += 5;
            if (v30 == v39)
            {
              sub_1AFA945A0(*(v25 + 128) + *(v29 - 2) + v24 * *(v40 + 2), &v45, a3 & 1, v44, v15, (v17 | (v16 << 32)), a1, a2);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v37 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v37);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF454B0);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v45);
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v31 = *(*(a1 + 80) + 16);
  if (v31)
  {

    v33 = sub_1AFA6F718(v32, type metadata accessor for HeaderScript);

    *(a1 + 80) = v33;

    v34 = *(*(a1 + 80) + 16);
  }

  else
  {
    v34 = 0;
  }

  v35 = v31 != v34;
  os_unfair_lock_unlock(*(a1 + 72));

  return v35;
}

uint64_t sub_1AFA967B8(uint64_t a1, uint64_t a2, NSObject *a3, int a4, void (**a5)(char *, uint64_t, uint64_t), int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v500) = a6;
  v498 = 0;
  v499 = a5;
  v492 = a4;
  v497 = a2;
  v511 = type metadata accessor for HeaderScript();
  v493 = *(v511 - 8);
  MEMORY[0x1EEE9AC00](v511, v13);
  v495 = v14;
  v505 = &v468 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v472 = &v468 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v485 = &v468 - v20;
  v21 = sub_1AFDFC4F8();
  v488 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v484 = &v468 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v491 = &v468 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v496 = &v468 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = *(a1 + 16);

  v512 = a8;

  v494 = a9;

  dispatch_group_enter(a3);
  v32 = *(a7 + 184);
  v598[0] = *(a7 + 168);
  v598[1] = v32;
  v599 = *(a7 + 25);
  v33 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v483 = v31;
  sub_1AF6B06C0(v31, v598, 0x200000000, v557);
  v503 = a3;
  v522 = a1;
  v524 = v30;
  v501 = a7;
  *&v502 = v33;
  v507 = v21;
  if (*&v557[0])
  {
    if (v561 >= 1)
    {
      if (*(&v559 + 1))
      {
        v34 = *(&v558 + 1);
        v35 = *(&v560 + 1);
        v36 = *(&v558 + 1) + 48 * *(&v559 + 1);
        sub_1AF5B21E4(0);
        v517 = v37;
        v537 = v558;
        v538 = v559;
        v539 = v560;
        v540 = v561;
        v535 = v557[0];
        v536 = v557[1];
        sub_1AF5DD298(&v535, &v614);
        v521 = v35;
        v506 = v36;
        do
        {
          isa = v34[5].isa;
          v39 = *(isa + 376);
          swift_retain_n();
          os_unfair_lock_lock(v39);
          os_unfair_lock_lock(*(isa + 344));
          v40 = *(isa + 24);

          v616 = 0;
          v614 = 0u;
          v615 = 0u;
          memset(v580, 0, 40);
          v41 = sub_1AF65A4B4(v40, v517, &off_1F250F310, 0, 0, &v614, v580);

          sub_1AFA9E8FC(v580, sub_1AF5C4448);
          sub_1AFA9E8FC(&v614, sub_1AF5C4448);
          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v41);
            a3 = v503;
          }

          else
          {
            v516 = v34;
            v43 = *(isa + 232);
            v42 = *(isa + 240);
            v44 = *(isa + 120);
            v509 = *(isa + 28);
            v45 = *(isa + 32);
            v523 = *(isa + 16);
            v46 = *(isa + 40);
            v47 = v46[200];
            v48 = *(v523[11] + 8 * v41 + 32);

            if ((v47 & 1) != 0 || *(v48 + 200) == 1)
            {
              *(v523 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v46 = *(isa + 40);
            }

            v49 = v46[212];
            LODWORD(v515) = v44;
            LODWORD(v510) = v41;
            if (v49)
            {
              LODWORD(v514) = 0;
            }

            else
            {
              LODWORD(v514) = *(v48 + 212);
            }

            LODWORD(v513) = v46[208];
            v520 = *(isa + 128);
            v50 = *(isa + 256);
            v51 = v42;
            v52 = v498;
            sub_1AF5B4FCC(v46, v43, v51, 0, isa);
            v498 = v52;
            v518 = *(isa + 256);
            v519 = v50;
            v53 = v518 - v50;
            if (v518 == v50)
            {
              v54 = 0;
            }

            else
            {
              v54 = v50;
            }

            *&v580[0] = v54;
            v55 = *(*(isa + 40) + 24);
            v56 = *(v55 + 16);
            if (v56)
            {
              LODWORD(v508) = v45;
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

              LOBYTE(v45) = v508;
            }

            if (*(v523 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v523 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(isa + 72) * v53);
            }

            if (*(isa + 184))
            {
              v64 = 0;
            }

            else
            {
              v64 = *(isa + 168);
            }

            *&v575[0] = 0;

            DWORD2(v615) = -1;
            v616 = v519;
            v617 = v518;
            v618 = v519;
            v619 = v518;
            *&v614 = v519;
            *(&v614 + 1) = v518;
            *&v615 = v64;
            if (v53 < 1)
            {
            }

            else
            {
              v508 = &v468;

              v65 = v48;

              v66 = v515;
              v67 = v514;
              v68 = v509;
              v69 = v510;
              v70 = v513;
              v71 = v520;
              do
              {

                LOBYTE(v567) = v45;
                LOBYTE(v467) = v70;
                sub_1AF626158(v69, v68 | (v45 << 32), v66, v523, &v614, v68 | (v45 << 32), isa, v65, 0, 0, 0, 0, v580, v71, v575, v467, v69, v67, v521);
              }

              while ((*(&v614 + 1) - v614) > 0);
            }

            v72 = *(isa + 192);
            a3 = v503;
            v34 = v516;
            v36 = v506;
            if (v72)
            {
              v73 = *(isa + 208);
              v523 = *(isa + 216);
              v74 = v519;
              v75 = v518;
              sub_1AF75D364(v519, v518, v72);
              sub_1AF75D364(v74, v75, v73);
            }

            a1 = v522;
          }

          v34 += 6;
          os_unfair_lock_unlock(*(isa + 344));
          os_unfair_lock_unlock(*(isa + 376));
        }

        while (v34 != v36);
        sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v508) = 1;
        a7 = v501;
      }

      else
      {
        sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
        LODWORD(v508) = 1;
      }

      goto LABEL_44;
    }

    sub_1AFA9BF94(v557, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  LODWORD(v508) = 0;
LABEL_44:
  v76 = a7[4];
  v596[0] = a7[3];
  v596[1] = v76;
  v597 = *(a7 + 10);
  sub_1AF6B06C0(v483, v596, 0x200000000, v562);
  if (*&v562[0])
  {
    if (v566 >= 1 && *(&v564 + 1))
    {
      v77 = *(&v563 + 1);
      v78 = *(&v565 + 1);
      v79 = *(&v563 + 1) + 48 * *(&v564 + 1);
      sub_1AF5B21A8(0);
      v517 = v80;
      v537 = v563;
      v538 = v564;
      v539 = v565;
      v540 = v566;
      v535 = v562[0];
      v536 = v562[1];
      sub_1AF5DD298(&v535, &v614);
      v521 = v78;
      v506 = v79;
      do
      {
        v81 = v77[5].isa;
        v82 = *(v81 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v82);
        os_unfair_lock_lock(*(v81 + 344));
        v83 = *(v81 + 24);

        v616 = 0;
        v614 = 0u;
        v615 = 0u;
        memset(v580, 0, 40);
        v84 = sub_1AF65A4B4(v83, 0, 0, v517, &off_1F2558F90, &v614, v580);

        sub_1AFA9E8FC(v580, sub_1AF5C4448);
        sub_1AFA9E8FC(&v614, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v84);
          a3 = v503;
        }

        else
        {
          v516 = v77;
          v86 = *(v81 + 232);
          v85 = *(v81 + 240);
          v87 = *(v81 + 120);
          v509 = *(v81 + 28);
          v88 = *(v81 + 32);
          v523 = *(v81 + 16);
          v89 = *(v81 + 40);
          v90 = v89[200];
          v91 = *(v523[11] + 8 * v84 + 32);

          if ((v90 & 1) != 0 || *(v91 + 200) == 1)
          {
            *(v523 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v89 = *(v81 + 40);
          }

          v92 = v89[212];
          LODWORD(v515) = v87;
          LODWORD(v510) = v84;
          if (v92)
          {
            LODWORD(v514) = 0;
          }

          else
          {
            LODWORD(v514) = *(v91 + 212);
          }

          LODWORD(v513) = v89[208];
          v520 = *(v81 + 128);
          v93 = *(v81 + 256);
          v94 = v85;
          v95 = v498;
          sub_1AF5B4FCC(v89, v86, v94, 0, v81);
          v498 = v95;
          v518 = *(v81 + 256);
          v519 = v93;
          v96 = v518 - v93;
          if (v518 == v93)
          {
            v97 = 0;
          }

          else
          {
            v97 = v93;
          }

          *&v580[0] = v97;
          v98 = *(*(v81 + 40) + 24);
          v99 = *(v98 + 16);
          if (v99)
          {
            LODWORD(v508) = v88;
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
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  sub_1AF640BC8();
                  v102 = v91;
                }
              }

              ++v101;
            }

            while (v101 != v99);

            LOBYTE(v88) = v508;
          }

          if (*(v523 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v523 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v81 + 72) * v96);
          }

          if (*(v81 + 184))
          {
            v107 = 0;
          }

          else
          {
            v107 = *(v81 + 168);
          }

          *&v575[0] = 0;

          DWORD2(v615) = -1;
          v616 = v519;
          v617 = v518;
          v618 = v519;
          v619 = v518;
          *&v614 = v519;
          *(&v614 + 1) = v518;
          *&v615 = v107;
          if (v96 < 1)
          {
          }

          else
          {
            v508 = &v468;

            v108 = v91;

            v109 = v515;
            v110 = v514;
            v111 = v509;
            v112 = v510;
            v113 = v513;
            v114 = v520;
            do
            {

              LOBYTE(v567) = v88;
              LOBYTE(v467) = v113;
              sub_1AF626158(v112, v111 | (v88 << 32), v109, v523, &v614, v111 | (v88 << 32), v81, v108, 0, 0, 0, 0, v580, v114, v575, v467, v112, v110, v521);
            }

            while ((*(&v614 + 1) - v614) > 0);
          }

          v115 = *(v81 + 192);
          a3 = v503;
          v77 = v516;
          v79 = v506;
          if (v115)
          {
            v116 = *(v81 + 208);
            v523 = *(v81 + 216);
            v117 = v519;
            v118 = v518;
            sub_1AF75D364(v519, v518, v115);
            sub_1AF75D364(v117, v118, v116);
          }

          a1 = v522;
        }

        v77 += 6;
        os_unfair_lock_unlock(*(v81 + 344));
        os_unfair_lock_unlock(*(v81 + 376));
      }

      while (v77 != v79);
      sub_1AFA9BF94(v562, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v562, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v508) = 1;
      a7 = v501;
    }

    else
    {
      sub_1AFA9BF94(v562, &qword_1ED725EA0, &type metadata for QueryResult);
      LODWORD(v508) = 1;
    }
  }

  v119 = *(a7 + 104);
  v594[0] = *(a7 + 88);
  v594[1] = v119;
  v595 = *(a7 + 15);
  sub_1AF6B06C0(v483, v594, 0x200000000, &v567);
  if (v567)
  {
    v518 = v574;
    if (v574 >= 1)
    {
      v517 = v571;
      if (v571)
      {
        v120 = 0;
        v516 = v570;
        v121 = v573;
        v514 = v573;
        v515 = v572;
        v122 = *(&v572->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v523 = v573[4];
        v584 = v567;
        v585 = v568;
        v586 = v569;
        LODWORD(v513) = v122;
        do
        {
          v521 = v120;
          v123 = &v516[6 * v120];
          isa_low = LODWORD(v123->isa);
          isa_high = HIDWORD(v123->isa);
          v126 = LODWORD(v123[1].isa);
          v127 = v123[2].isa;
          v128 = v123[3].isa;
          v130 = v123[4].isa;
          v129 = v123[5].isa;
          if (v122)
          {
            v131 = *(v129 + 376);

            os_unfair_lock_lock(v131);
            os_unfair_lock_lock(*(v129 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v523);
          v132 = *(v121 + 4);
          v612[0] = *(v121 + 3);
          v612[1] = v132;
          v613 = v121[10];
          v133 = *(*(*(*(v129 + 40) + 16) + 32) + 16) + 1;
          v121[6] = ecs_stack_allocator_allocate(v121[4], 48 * v133, 8);
          v121[7] = v133;
          v121[9] = 0;
          v121[10] = 0;
          v121[8] = 0;
          LOBYTE(v535) = 1;
          *&v614 = v515;
          *(&v614 + 1) = v129;
          *&v615 = v121;
          *(&v615 + 1) = v126;
          v616 = (isa_high - isa_low + v126);
          v617 = v518;
          v618 = isa_low;
          v619 = isa_high;
          v620 = 0;
          v621 = 0;
          v622 = 1;
          v623 = v127;
          v624 = v128;
          v625 = v130;
          v134 = v498;
          v135 = sub_1AF706C28(v129, &v614);
          v136 = v623;
          v520 = v134;
          if (v623)
          {
            v137 = v625;
            if (v625)
            {
              v519 = v615;
              v138 = (v135 + 8);
              do
              {
                v136 = (v136 + 8);
                v139 = *(v138 - 1);
                v140 = *v138;

                sub_1AFD08414(v141, v139, v140);

                sub_1AF6FCBE8(0);
                v143 = *(*(v129 + 40) + 16);
                v144 = *(v143 + 128);
                if (*(v144 + 16))
                {
                  v145 = v142;
                  v146 = sub_1AF449CB8(v142);
                  if ((v147 & 1) != 0 && *(*(v143 + 24) + 16 * *(*(v144 + 56) + 8 * v146) + 32) == v145)
                  {
                    *&v535 = v145;
                    *(&v535 + 1) = &off_1F2559388;
                    BYTE8(v537) = 1;
                    MEMORY[0x1EEE9AC00](v146, v147);
                    v467 = v129;

                    sub_1AF63023C(0, v129, sub_1AFA9EC24);

                    sub_1AF635250(&v535);
                  }
                }

                v138 += 2;
                v137 = (v137 - 1);
              }

              while (v137);
            }
          }

          else
          {
            v148 = v618;
            v149 = v619;
            if (v618 != v619)
            {
              v151 = (v135 + 16 * v618 + 8);
              do
              {
                v152 = *(v151 - 1);
                v153 = *v151;

                sub_1AFD08414(v154, v152, v153);

                sub_1AF6FCBE8(0);
                v156 = *(*(v129 + 40) + 16);
                v157 = *(v156 + 128);
                if (*(v157 + 16))
                {
                  v158 = v155;
                  v159 = sub_1AF449CB8(v155);
                  if ((v160 & 1) != 0 && *(*(v156 + 24) + 16 * *(*(v157 + 56) + 8 * v159) + 32) == v158)
                  {
                    *&v535 = v158;
                    *(&v535 + 1) = &off_1F2559388;
                    BYTE8(v537) = 1;
                    MEMORY[0x1EEE9AC00](v159, v160);
                    v467 = v129;

                    sub_1AF63023C(0, v129, sub_1AF6AFAF8);

                    sub_1AF635250(&v535);
                  }
                }

                ++v148;
                v151 += 2;
              }

              while (v149 != v148);
            }
          }

          v121 = v514;
          v150 = v520;
          sub_1AF630994(v514, &v584, v612);
          sub_1AF62D29C(v129);
          ecs_stack_allocator_pop_snapshot(v523);
          v122 = v513;
          if (v513)
          {
            os_unfair_lock_unlock(*(v129 + 344));
            os_unfair_lock_unlock(*(v129 + 376));
          }

          v498 = v150;

          v120 = v521 + 1;
        }

        while ((v521 + 1) != v517);
      }
    }

    sub_1AFA9BF94(&v567, &qword_1ED725EA0, &type metadata for QueryResult);
    a3 = v503;
    a1 = v522;
  }

  v161 = v501[9];
  v592[0] = v501[8];
  v592[1] = v161;
  v593 = *(v501 + 20);
  sub_1AF6B06C0(v483, v592, 0x200000000, v575);
  if (*&v575[0])
  {
    v162 = v579;
    if (v579 >= 1 && *(&v577 + 1))
    {
      v490 = v579;
      v163 = *(&v576 + 1);
      v164 = *(&v578 + 1);
      v165 = *(&v576 + 1) + 48 * *(&v577 + 1);
      sub_1AF5B21E4(0);
      v517 = v166;
      v537 = v576;
      v538 = v577;
      v539 = v578;
      v540 = v579;
      v535 = v575[0];
      v536 = v575[1];
      sub_1AF5DD298(&v535, v580);
      v521 = v164;
      v504 = v165;
      do
      {
        v167 = v163[5].isa;
        v168 = *(v167 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v168);
        os_unfair_lock_lock(*(v167 + 344));
        v169 = *(v167 + 24);

        memset(v580, 0, 40);
        *&v553 = 0;
        v552 = 0u;
        v551 = 0u;
        v170 = sub_1AF65A4B4(v169, 0, 0, v517, &off_1F250F310, v580, &v551);

        sub_1AFA9E8FC(&v551, sub_1AF5C4448);
        sub_1AFA9E8FC(v580, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v170);
          a3 = v503;
        }

        else
        {
          v516 = v163;
          v172 = *(v167 + 232);
          v171 = *(v167 + 240);
          LODWORD(v515) = *(v167 + 120);
          v509 = *(v167 + 28);
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
          v523 = v174;
          LODWORD(v510) = v170;
          if (v178)
          {
            LODWORD(v514) = 0;
          }

          else
          {
            LODWORD(v514) = *(v177 + 212);
          }

          LODWORD(v513) = v175[208];
          v520 = *(v167 + 128);
          v180 = *(v167 + 256);
          v181 = v171;
          v182 = v498;
          sub_1AF5B4FCC(v175, v172, v181, 0, v167);
          v498 = v182;
          v518 = *(v167 + 256);
          v519 = v180;
          v183 = v518 - v180;
          if (v518 == v180)
          {
            v184 = 0;
          }

          else
          {
            v184 = v180;
          }

          *&v551 = v184;
          v185 = *(*(v167 + 40) + 24);
          v186 = *(v185 + 16);
          if (v186)
          {
            LODWORD(v506) = v173;
            v187 = v185 + 32;

            v188 = 0;
            v189 = v183;
            v190 = v179;
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
                      goto LABEL_130;
                    }
                  }
                }

                else
                {
LABEL_130:
                  sub_1AF640BC8();
                  v190 = v179;
                  v189 = v183;
                }
              }

              ++v188;
            }

            while (v188 != v186);
            v183 = v189;

            LOBYTE(v173) = v506;
          }

          if (*(v523 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v523 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v167 + 72) * v183);
          }

          if (*(v167 + 184))
          {
            v195 = 0;
          }

          else
          {
            v195 = *(v167 + 168);
          }

          *&v530 = 0;

          *&v580[1] = v195;
          DWORD2(v580[1]) = -1;
          *&v580[2] = v519;
          *(&v580[2] + 1) = v518;
          *&v581 = v519;
          *(&v581 + 1) = v518;
          *&v580[0] = v519;
          *(&v580[0] + 1) = v518;
          if (v183 < 1)
          {
          }

          else
          {
            v506 = &v468;

            v196 = v179;

            v197 = v515;
            v198 = v514;
            v199 = v509;
            v200 = v510;
            v201 = v513;
            v202 = v520;
            do
            {

              LOBYTE(v525) = v173;
              LOBYTE(v467) = v201;
              sub_1AF626158(v200, v199 | (v173 << 32), v197, v523, v580, v199 | (v173 << 32), v167, v196, 0, 0, 0, 0, &v551, v202, &v530, v467, v200, v198, v521);
            }

            while ((*(&v580[0] + 1) - *&v580[0]) > 0);
          }

          v203 = *(v167 + 192);
          a3 = v503;
          v165 = v504;
          v163 = v516;
          if (v203)
          {
            v204 = *(v167 + 208);
            v523 = *(v167 + 216);
            v205 = v519;
            v206 = v504;
            v207 = v518;
            sub_1AF75D364(v519, v518, v203);
            v165 = v206;
            sub_1AF75D364(v205, v207, v204);
          }

          a1 = v522;
        }

        v163 += 6;
        os_unfair_lock_unlock(*(v167 + 344));
        os_unfair_lock_unlock(*(v167 + 376));
      }

      while (v163 != v165);
      sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
      v162 = v490;
    }

    else
    {
      sub_1AFA9BF94(v575, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v208 = v508;
    if (v162 > 0)
    {
      v208 = 1;
    }

    LODWORD(v508) = v208;
  }

  if (v497)
  {
    sub_1AFA61FF8(a1, v497, sub_1AFD358A0);
    LODWORD(v508) = v508 | v209;
  }

  if (v499)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v211 = sub_1AFA9635C(a1, Strong, v500 & 1);

  v212 = *(a1 + 16);

  if (v212)
  {
    v490 = sub_1AF8BB88C();
    v497 = v213;
  }

  else
  {
    v490 = 0;
    v497 = 0xE000000000000000;
  }

  v214 = v508 | v211;
  v215 = v501[14];
  v590[0] = v501[13];
  v590[1] = v215;
  v591 = *(v501 + 30);
  sub_1AF6B06C0(v483, v590, 0x200000000, v580);
  v216 = *&v580[0];
  if (!*&v580[0])
  {

    if ((v214 & 1) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_315;
  }

  if (v583 <= 0 || (v471 = *(&v581 + 1)) == 0)
  {

    sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v214 & 1) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_315;
  }

  LODWORD(v521) = v214;
  v470 = *(&v580[2] + 1);
  v477 = *(&v582 + 1);
  v476 = *(*(&v582 + 1) + 32);
  v475 = *(v582 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B21E4(0);
  v218 = v217;
  v587 = v216;
  v588 = *(v580 + 8);
  v589 = *(&v580[1] + 8);
  v508 = (v483 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v553 = v580[2];
  v554 = v581;
  v555 = v582;
  v556 = v583;
  v551 = v580[0];
  v552 = v580[1];
  sub_1AF5DD298(&v551, &v535);
  v219 = 0;
  v513 = v218;
  v469 = v218 - 8;
  v499 = (v488 + 2);
  v481 = (v488 + 4);
  v473 = (v488 + 6);
  v489 = (v495 + 7);
  v479 = &v531;
  v487 = (v488 + 7);
  ++v488;
  v478 = &v536;
  v480 = xmmword_1AFE21110;
  v502 = xmmword_1AFE72020;
LABEL_170:
  v474 = v219;
  v220 = (v470 + 48 * v219);
  v495 = *v220;
  v514 = v220[1];
  v222 = *(v220 + 2);
  v221 = *(v220 + 3);
  v223 = *(v220 + 4);
  v224 = *(v220 + 5);
  if (v475)
  {
    v225 = *(v224 + 376);

    os_unfair_lock_lock(v225);
    os_unfair_lock_lock(*(v224 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v476);
  v226 = v477;
  v227 = *(v477 + 4);
  v600[0] = *(v477 + 3);
  v600[1] = v227;
  v601 = v477[10];
  v228 = *(*(*(*(v224 + 40) + 16) + 32) + 16) + 1;
  v226[6] = ecs_stack_allocator_allocate(v477[4], 48 * v228, 8);
  v226[7] = v228;
  v226[9] = 0;
  v226[10] = 0;
  v226[8] = 0;
  v523 = sub_1AF64B110(v511, &off_1F2542220, v222, v221, v223, v226);
  v229 = sub_1AF64B110(v513, &off_1F250F310, v222, v221, v223, v226);
  v230 = v229;
  if (v222)
  {
    v517 = v222;
    v231 = v522;
    if (!v223)
    {
      goto LABEL_312;
    }

    v510 = *(v493 + 72);
    v509 = *(*v469 + 72);
    v486 = v224;
    while (1)
    {
      v234 = *v517;
      v516 = v223;
      ++v517;

      if (*(v224 + 184))
      {
        goto LABEL_322;
      }

      v236 = *(*(v224 + 168) + 4 * v234);
      v237 = *(*(v235 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v236 + 8);

      v238 = v236 == -1 && v237 == 0;
      if (v238 || (v236 & 0x80000000) != 0 || v508[1] <= v236)
      {
        break;
      }

      v239 = *v508 + 12 * v236;
      if (v237 != -1 && *(v239 + 8) != v237)
      {
        break;
      }

      v241 = *(*(*(v483 + 88) + 8 * *(v239 + 6) + 32) + 16);
      v242 = *(v241 + 128);
      if (!*(v242 + 16))
      {
        break;
      }

      v243 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v244 & 1) == 0 || *(*(v241 + 24) + 16 * *(*(v242 + 56) + 8 * v243) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_178:
      v230 = (v230 + v509);
      v523 = (v523 + v510);
      v223 = (v516 - 1);
      if (v516 == 1)
      {
        LODWORD(v521) = 1;
        goto LABEL_312;
      }
    }

    dispatch_group_enter(a3);
    v245 = *(v224 + 64);
    v246 = *(v224 + 80);
    v545 = *(v224 + 112);
    v248 = *(v224 + 80);
    v247 = *(v224 + 96);
    v543 = v246;
    v544 = v247;
    v249 = *(v224 + 64);
    v541 = *(v224 + 48);
    v542 = v245;
    v250 = *(v224 + 96);
    v537 = v248;
    v538 = v250;
    LOBYTE(v539) = *(v224 + 112);
    v535 = *(v224 + 48);
    v536 = v249;
    v251 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v253 = v252;
    v548 = v537;
    v549 = v538;
    v550 = v539;
    v547 = v536;
    v546 = v535;

    sub_1AF5DD36C(&v541, &v530);
    sub_1AF5DD3C8(&v546);
    if (v253)
    {

      v519 = 0;
      v520 = 0;
      v254 = 0;
    }

    else
    {
      v255 = *(v224 + 128);

      v256 = (v255 + v251 + 24 * v234);
      v257 = *(v256 + 1);
      v254 = *(v256 + 2);
      v519 = *v256;
      v520 = v257;
    }

    v259 = v513;
    if (*(v224 + 184))
    {
      goto LABEL_322;
    }

    v518 = v254;
    v260 = *(*(v258 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v224 + 168) + 4 * v234) + 8);
    v514 = *(*(v224 + 168) + 4 * v234);
    v515 = v260;

    v261 = swift_allocObject();
    v262 = v524;
    v261[2] = sub_1AFA9C004;
    v261[3] = v262;
    v521 = v261;
    v261[4] = a3;
    v263 = *(v231 + 16);

    if (v263)
    {
      v264 = *(v263 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v265 = a3;

      if ((v264 & 1) == 0 || *(v231 + 3048) != 1)
      {
        sub_1AF81F330();
        v266 = swift_allocError();
        v267 = v266;
        *v268 = v502;
        if (!*(v512 + 16))
        {
          v269 = v494;
          v270 = *(v494 + 72);
          v271 = v266;
          os_unfair_lock_lock(v270);
          v272 = *(v512 + 16);
          *(v512 + 16) = v267;
          v273 = v267;

          os_unfair_lock_unlock(*(v269 + 72));
        }

        dispatch_group_leave(v265);

LABEL_204:

        v233 = v519;
LABEL_177:
        sub_1AF487074(v233, v520);
        goto LABEL_178;
      }
    }

    else
    {
      swift_retain_n();
      v274 = a3;
    }

    v275 = v514;
    sub_1AFDFF308();
    sub_1AFDFD038();
    v604 = v537;
    v605 = v538;
    v606 = v539;
    v603 = v536;
    v602 = v535;
    v276 = sub_1AFDFF2E8();
    v277 = *(v230 + v259[9] + 8) | (v276 != *(v230 + v259[9]));
    os_unfair_lock_lock(*(v231 + 72));
    v278 = *(v231 + 80);
    v279 = *(v278 + 16);
    v506 = v275;
    if (v279 && (v280 = sub_1AF41ACD4(v511, v275 | (v515 << 32)), (v281 & 1) != 0))
    {
      sub_1AF85B3D4(*(v278 + 56) + 96 * v280, &v535);
      if (BYTE8(v540) != 255)
      {
        sub_1AF85B3D4(&v535, &v530);
        sub_1AFA9BF94(&v535, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v529 + 9) = *(v534 + 9);
        v527 = v532;
        v528 = v533;
        v529[0] = v534[0];
        v525 = v530;
        v526 = v531;
        if (!BYTE8(v534[1]))
        {
          v329 = v525;
          v330 = (v525 != v276) | v277;
          os_unfair_lock_unlock(*(v231 + 72));
          if (v330)
          {
            if (v329 != v276)
            {
LABEL_214:
              v500 = swift_allocBox();
              v283 = v282;
              *v282 = 2;
              *(v282 + 8) = 0;
              *(v282 + 16) = 0xE000000000000000;
              *(v282 + 40) = 0;
              v504 = v276;
              v284 = MEMORY[0x1E69E7CC0];
              *(v282 + 24) = MEMORY[0x1E69E7CC0];
              *(v282 + 32) = 0;
              v285 = v259;
              v286 = v511;
              v287 = *(v511 + 32);
              v288 = type metadata accessor for ScriptIndex();
              (*(*(v288 - 8) + 56))(v283 + v287, 1, 1, v288);
              v289 = v283 + v285[9];
              *(v283 + v285[10]) = 0;
              *(v283 + v285[11]) = 0;
              v290 = (v283 + v285[12]);
              *v290 = 0;
              v290[1] = 0xE000000000000000;
              *(v283 + v285[13]) = v284;
              v291 = v504;
              *v289 = v504;
              *(v289 + 8) = 0;
              sub_1AFA9DE54(v523, v283, type metadata accessor for HeaderScript);
              sub_1AFA9DE54(v283, v230, sub_1AF5B21E4);
              os_unfair_lock_lock(*(v231 + 72));
              *&v535 = v291;
              BYTE8(v540) = 0;
              sub_1AF825824(&v535, v286, v506 | (v515 << 32));
              os_unfair_lock_unlock(*(v231 + 72));
              v292 = *(v231 + 16);

              if (v292)
              {
                v293 = v485;
                v294 = v507;
                (*v499)(v485, v292 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v507);

                (*v487)(v293, 0, 1, v294);
                v295 = v496;
                (*v481)(v496, v293, v294);
              }

              else
              {
                v296 = v485;
                v294 = v507;
                (*v487)(v485, 1, 1, v507);
                v295 = v496;
                if (qword_1ED7270F0 != -1)
                {
                  swift_once();
                }

                v297 = sub_1AFDFC538();
                sub_1AF477C68(v297, qword_1ED73B608);
                sub_1AFDFC528();
                sub_1AFDFC4D8();
                if ((*v473)(v296, 1, v294) != 1)
                {
                  sub_1AFA9C470(v296, &qword_1EB633050, MEMORY[0x1E69E93B8]);
                }
              }

              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v495 = v230;
              v298 = sub_1AFDFC538();
              sub_1AF477C68(v298, qword_1ED73B608);
              v299 = sub_1AFDFC528();
              v300 = sub_1AFDFDB88();
              if (sub_1AFDFDCE8())
              {
                v301 = swift_slowAlloc();
                *v301 = 0;
                v302 = sub_1AFDFC4E8();
                _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v299, v300, v302, "buildScript", "", v301, 2u);
                MEMORY[0x1B271DEA0](v301, -1, -1);
              }

              (*v499)(v491, v295, v294);
              sub_1AFDFC578();
              swift_allocObject();
              v303 = sub_1AFDFC568();
              sub_1AFA9E3C8(v523, v505, type metadata accessor for HeaderScript);
              v304 = (*(v493 + 80) + 400) & ~*(v493 + 80);
              v305 = &v489[v304] & 0xFFFFFFFFFFFFFFF8;
              v306 = (v305 + 23) & 0xFFFFFFFFFFFFFFF8;
              v307 = (v306 + 27) & 0xFFFFFFFFFFFFFFF8;
              v308 = swift_allocObject();
              v309 = v511;
              *(v308 + 16) = v522;
              *(v308 + 24) = v309;
              v310 = v514;
              v311 = v515;
              *(v308 + 32) = v514;
              *(v308 + 36) = v311;
              *(v308 + 40) = v504;
              *(v308 + 48) = sub_1AFA9EC20;
              *(v308 + 56) = v521;
              *(v308 + 64) = v303;
              v506 = v303;
              memcpy((v308 + 72), v501, 0x148uLL);
              sub_1AFA9E320(v505, v308 + v304, type metadata accessor for HeaderScript);
              v312 = (v308 + v305);
              v313 = v497;
              *v312 = v490;
              v312[1] = v313;
              v314 = (v308 + v306);
              v315 = v520;
              *v314 = v519;
              v314[1] = v315;
              v314[2] = v518;
              v316 = (v308 + v307);
              *v316 = v310;
              v316[1] = v311;
              *(v308 + ((v307 + 15) & 0xFFFFFFFFFFFFFFF8)) = v500;
              if (v492)
              {
                v515 = *(v522 + 40);
                v317 = swift_allocObject();
                *(v317 + 16) = sub_1AFA9EB6C;
                *(v317 + 24) = v308;

                sub_1AFA9C054(v501, &v535, &unk_1EB633F50, type metadata accessor for HeaderScript);

                sub_1AF487F80(v519, v315);
                v318 = qword_1ED730EA0;

                v230 = v495;
                v224 = v486;
                if (v318 != -1)
                {
                  swift_once();
                }

                v319 = v507;
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v320 = qword_1ED73B8A0;
                v321 = swift_allocObject();
                *(v321 + 16) = sub_1AFA9EB90;
                *(v321 + 24) = v317;
                v322 = swift_allocObject();
                v322[2] = v320;
                v322[3] = sub_1AF6CC3F0;
                v322[4] = v321;
                *&v537 = sub_1AFA9EC30;
                *(&v537 + 1) = v322;
                *&v535 = MEMORY[0x1E69E9820];
                *(&v535 + 1) = 1107296256;
                *&v536 = sub_1AFCDA044;
                *(&v536 + 1) = &unk_1F2559A50;
                v323 = _Block_copy(&v535);
                swift_retain_n();

                [v515 addOperationWithBlock:v323];
                _Block_release(v323);

                (*v488)(v496, v319);
                a3 = v503;

                sub_1AF487074(v519, v520);
                v231 = v522;
              }

              else
              {
                v515 = *(v522 + 32);
                v324 = swift_allocObject();
                *(v324 + 16) = sub_1AFA9EB6C;
                *(v324 + 24) = v308;
                v325 = swift_allocObject();
                *(v325 + 16) = sub_1AFA9EB90;
                *(v325 + 24) = v324;
                *&v532 = sub_1AF6D25EC;
                *(&v532 + 1) = v325;
                *&v530 = MEMORY[0x1E69E9820];
                *(&v530 + 1) = 1107296256;
                *&v531 = sub_1AF6F662C;
                *(&v531 + 1) = &unk_1F25599B0;
                v326 = _Block_copy(&v530);
                v520 = v315;
                v327 = v326;
                v514 = *(&v532 + 1);

                sub_1AFA9C054(v501, &v535, &unk_1EB633F50, type metadata accessor for HeaderScript);

                v328 = v519;
                sub_1AF487F80(v519, v315);

                dispatch_sync(v515, v327);
                _Block_release(v327);

                (*v488)(v496, v507);
                swift_isEscapingClosureAtFileLocation();
                a3 = v503;

                sub_1AF487074(v328, v520);
                v231 = v522;
                v230 = v495;
                v224 = v486;
              }

              goto LABEL_178;
            }

            dispatch_group_leave(a3);

            goto LABEL_204;
          }

LABEL_234:
          sub_1AFA9DE54(v523, v230, type metadata accessor for HeaderScript);
          v331 = v230[4];
          if (v331)
          {
            v332 = v230[1];
            v333 = v230[2];

            v334 = v333;
            v231 = v522;
            v335 = sub_1AF458B0C(v332, v334);
            v331(*(v230 + v259[13]), v335);

            sub_1AF0FB8EC(v331);
          }

          if (*(v230 + v259[10]) == 1)
          {
            v336 = *(v230 + v259[11]);
            v337 = v336;
          }

          else
          {
            sub_1AF81F330();
            v336 = swift_allocError();
            *v338 = v480;
          }

          if (!*(v512 + 16) && v336)
          {
            v339 = v494;
            v340 = *(v494 + 72);
            v341 = v336;
            os_unfair_lock_lock(v340);
            v342 = *(v512 + 16);
            *(v512 + 16) = v336;
            v343 = v336;

            os_unfair_lock_unlock(*(v339 + 72));
          }

          v232 = v519;
          dispatch_group_leave(a3);

          v233 = v232;
          goto LABEL_177;
        }

        sub_1AFA9C0C8(&v525);
LABEL_213:
        os_unfair_lock_unlock(*(v231 + 72));
        if (v277)
        {
          goto LABEL_214;
        }

        goto LABEL_234;
      }
    }

    else
    {
      *&v540 = 0;
      v538 = 0u;
      v539 = 0u;
      v536 = 0u;
      v537 = 0u;
      v535 = 0u;
      BYTE8(v540) = -1;
    }

    sub_1AFA9BF94(&v535, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_213;
  }

  v344 = v495;
  if (v495 == v514)
  {
    goto LABEL_312;
  }

  v345 = *(v493 + 72);
  v504 = *(*v469 + 72);
  v346 = (v229 + v504 * v495);
  v347 = 24 * v495 + 16;
  v506 = v345;
  v521 = v523 + v345 * v495;
  while (1)
  {

    if (*(v224 + 184))
    {
      break;
    }

    v350 = *(*(v224 + 168) + 4 * v344);
    v351 = *(*(v349 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v350 + 8);

    v352 = v350 == -1 && v351 == 0;
    if (!v352 && (v350 & 0x80000000) == 0 && v508[1] > v350)
    {
      v353 = *v508 + 12 * v350;
      if (v351 == -1 || *(v353 + 8) == v351)
      {
        v355 = *(*(*(v483 + 88) + 8 * *(v353 + 6) + 32) + 16);
        v356 = *(v355 + 128);
        if (*(v356 + 16))
        {
          v357 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v358 & 1) != 0 && *(*(v355 + 24) + 16 * *(*(v356 + 56) + 8 * v357) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_246;
          }
        }
      }
    }

    dispatch_group_enter(a3);
    v359 = *(v224 + 64);
    v360 = *(v224 + 80);
    v545 = *(v224 + 112);
    v362 = *(v224 + 80);
    v361 = *(v224 + 96);
    v543 = v360;
    v544 = v361;
    v363 = *(v224 + 64);
    v541 = *(v224 + 48);
    v542 = v359;
    v364 = *(v224 + 96);
    v537 = v362;
    v538 = v364;
    LOBYTE(v539) = *(v224 + 112);
    v535 = *(v224 + 48);
    v536 = v363;
    v365 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v367 = v366;
    v548 = v537;
    v549 = v538;
    v550 = v539;
    v547 = v536;
    v546 = v535;

    sub_1AF5DD36C(&v541, &v530);
    sub_1AF5DD3C8(&v546);
    if (v367)
    {

      v518 = 0;
      v368 = 0;
      v369 = 0;
    }

    else
    {
      v370 = *(v224 + 128);

      v371 = (v370 + v347 + v365);
      v518 = *(v371 - 16);
      v368 = *(v371 - 1);
      v369 = *v371;
    }

    v517 = v368;

    if (*(v224 + 184))
    {
      break;
    }

    v519 = v369;
    v523 = v346;
    v373 = *(*(v372 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v224 + 168) + 4 * v344) + 8);
    v515 = *(*(v224 + 168) + 4 * v344);
    v516 = v373;

    v374 = swift_allocObject();
    v375 = v524;
    v374[2] = sub_1AFA9C004;
    v374[3] = v375;
    v520 = v374;
    v374[4] = a3;
    v376 = *(v522 + 16);

    if (v376)
    {
      v377 = *(v376 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v378 = a3;

      if ((v377 & 1) == 0 || *(v522 + 3048) != 1)
      {
        sub_1AF81F330();
        v379 = swift_allocError();
        v380 = v379;
        *v381 = v502;
        if (!*(v512 + 16))
        {
          v382 = v347;
          v383 = v494;
          v384 = *(v494 + 72);
          v385 = v379;
          os_unfair_lock_lock(v384);
          v386 = *(v512 + 16);
          *(v512 + 16) = v380;
          v387 = v380;

          v388 = *(v383 + 72);
          v347 = v382;
          a3 = v503;
          os_unfair_lock_unlock(v388);
        }

        dispatch_group_leave(v378);

        goto LABEL_297;
      }
    }

    else
    {
      swift_retain_n();
      v389 = a3;
    }

    v390 = v515;
    sub_1AFDFF308();
    sub_1AFDFD038();
    v609 = v537;
    v610 = v538;
    v611 = v539;
    v608 = v536;
    v607 = v535;
    v391 = sub_1AFDFF2E8();
    v392 = v522;
    v393 = v523 + v513[9];
    v394 = *v393;
    LOBYTE(v393) = v393[8];
    v510 = v391;
    v395 = v393 | (v391 != v394);
    os_unfair_lock_lock(*(v522 + 72));
    v396 = *(v392 + 80);
    v397 = *(v396 + 16);
    v509 = v347;
    if (!v397 || (v398 = sub_1AF41ACD4(v511, v390 | (v516 << 32)), (v399 & 1) == 0))
    {
      *&v540 = 0;
      v538 = 0u;
      v539 = 0u;
      v536 = 0u;
      v537 = 0u;
      v535 = 0u;
      BYTE8(v540) = -1;
LABEL_279:
      sub_1AFA9BF94(&v535, &qword_1EB642590, &type metadata for CompilationStatus);
      goto LABEL_280;
    }

    sub_1AF85B3D4(*(v396 + 56) + 96 * v398, &v535);
    if (BYTE8(v540) == 255)
    {
      goto LABEL_279;
    }

    sub_1AF85B3D4(&v535, &v530);
    sub_1AFA9BF94(&v535, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v529 + 9) = *(v534 + 9);
    v527 = v532;
    v528 = v533;
    v529[0] = v534[0];
    v525 = v530;
    v526 = v531;
    if (!BYTE8(v534[1]))
    {
      v449 = v525;
      v450 = (v525 != v510) | v395;
      v400 = v522;
      os_unfair_lock_unlock(*(v522 + 72));
      if ((v450 & 1) == 0)
      {
LABEL_303:
        v346 = v523;
        sub_1AFA9DE54(v521, v523, type metadata accessor for HeaderScript);
        v451 = v346[4];
        v452 = v513;
        if (v451)
        {
          v453 = v523[1];
          v454 = v523[2];

          v455 = sub_1AF458B0C(v453, v454);
          v451(*(v523 + v452[13]), v455);
          v346 = v523;

          sub_1AF0FB8EC(v451);
        }

        if (*(v346 + v452[10]) == 1)
        {
          v456 = *(v346 + v452[11]);
          v457 = v456;
        }

        else
        {
          sub_1AF81F330();
          v456 = swift_allocError();
          *v458 = v480;
        }

        if (!*(v512 + 16) && v456)
        {
          v459 = v494;
          v460 = *(v494 + 72);
          v461 = v456;
          os_unfair_lock_lock(v460);
          v462 = *(v512 + 16);
          *(v512 + 16) = v456;
          v463 = v456;

          os_unfair_lock_unlock(*(v459 + 72));
        }

        v347 = v509;
        v348 = v517;
        dispatch_group_leave(a3);

        sub_1AF487074(v518, v348);
        goto LABEL_246;
      }

      if (v449 == v510)
      {
        dispatch_group_leave(a3);

        sub_1AF487074(v518, v517);
        goto LABEL_299;
      }

      goto LABEL_281;
    }

    sub_1AFA9C0C8(&v525);
LABEL_280:
    v400 = v522;
    os_unfair_lock_unlock(*(v522 + 72));
    if ((v395 & 1) == 0)
    {
      goto LABEL_303;
    }

LABEL_281:
    v495 = v344;
    v401 = v513;
    v500 = swift_allocBox();
    v403 = v402;
    *v402 = 2;
    *(v402 + 8) = 0;
    *(v402 + 16) = 0xE000000000000000;
    *(v402 + 40) = 0;
    v404 = MEMORY[0x1E69E7CC0];
    *(v402 + 24) = MEMORY[0x1E69E7CC0];
    *(v402 + 32) = 0;
    v405 = v511;
    v406 = *(v511 + 32);
    v407 = type metadata accessor for ScriptIndex();
    (*(*(v407 - 8) + 56))(v403 + v406, 1, 1, v407);
    v408 = v403 + v401[9];
    *(v403 + v401[10]) = 0;
    *(v403 + v401[11]) = 0;
    v409 = (v403 + v401[12]);
    *v409 = 0;
    v409[1] = 0xE000000000000000;
    *(v403 + v401[13]) = v404;
    v410 = v510;
    *v408 = v510;
    *(v408 + 8) = 0;
    sub_1AFA9DE54(v521, v403, type metadata accessor for HeaderScript);
    sub_1AFA9DE54(v403, v523, sub_1AF5B21E4);
    os_unfair_lock_lock(*(v400 + 72));
    *&v535 = v410;
    BYTE8(v540) = 0;
    sub_1AF825824(&v535, v405, v390 | (v516 << 32));
    os_unfair_lock_unlock(*(v400 + 72));
    v411 = *(v400 + 16);

    if (v411)
    {
      v412 = v472;
      v413 = v507;
      (*v499)(v472, v411 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v507);

      (*v487)(v412, 0, 1, v413);
      v414 = v484;
      (*v481)(v484, v412, v413);
    }

    else
    {
      v415 = v472;
      v413 = v507;
      (*v487)(v472, 1, 1, v507);
      v414 = v484;
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v416 = sub_1AFDFC538();
      sub_1AF477C68(v416, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v473)(v415, 1, v413) != 1)
      {
        sub_1AFA9C470(v415, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v417 = sub_1AFDFC538();
    sub_1AF477C68(v417, qword_1ED73B608);
    v418 = sub_1AFDFC528();
    v419 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v420 = swift_slowAlloc();
      *v420 = 0;
      v421 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v418, v419, v421, "buildScript", "", v420, 2u);
      v413 = v507;
      MEMORY[0x1B271DEA0](v420, -1, -1);
    }

    (*v499)(v491, v414, v413);
    sub_1AFDFC578();
    swift_allocObject();
    v422 = sub_1AFDFC568();
    sub_1AFA9E3C8(v521, v505, type metadata accessor for HeaderScript);
    v423 = (*(v493 + 80) + 400) & ~*(v493 + 80);
    v424 = &v489[v423] & 0xFFFFFFFFFFFFFFF8;
    v425 = (v424 + 23) & 0xFFFFFFFFFFFFFFF8;
    v426 = (v425 + 27) & 0xFFFFFFFFFFFFFFF8;
    v482 = (v426 + 15) & 0xFFFFFFFFFFFFFFF8;
    v427 = swift_allocObject();
    v428 = v510;
    v429 = v511;
    *(v427 + 16) = v522;
    *(v427 + 24) = v429;
    v430 = v515;
    v431 = v516;
    *(v427 + 32) = v515;
    *(v427 + 36) = v431;
    *(v427 + 40) = v428;
    *(v427 + 48) = sub_1AFA9C00C;
    *(v427 + 56) = v520;
    *(v427 + 64) = v422;
    v510 = v422;
    v432 = v501;
    memcpy((v427 + 72), v501, 0x148uLL);
    sub_1AFA9E320(v505, v427 + v423, type metadata accessor for HeaderScript);
    v433 = (v427 + v424);
    v434 = v497;
    *v433 = v490;
    v433[1] = v434;
    v435 = (v427 + v425);
    v436 = v517;
    v437 = v518;
    *v435 = v518;
    v435[1] = v436;
    v435[2] = v519;
    v438 = (v427 + v426);
    *v438 = v430;
    v438[1] = v431;
    *(v427 + v482) = v500;
    if ((v492 & 1) == 0)
    {
      v516 = *(v522 + 32);
      v446 = swift_allocObject();
      *(v446 + 16) = sub_1AFA9C010;
      *(v446 + 24) = v427;
      v447 = swift_allocObject();
      *(v447 + 16) = sub_1AF6FC894;
      *(v447 + 24) = v446;
      *&v532 = sub_1AF464154;
      *(&v532 + 1) = v447;
      *&v530 = MEMORY[0x1E69E9820];
      *(&v530 + 1) = 1107296256;
      *&v531 = sub_1AF6F662C;
      *(&v531 + 1) = &unk_1F24E6190;
      v448 = _Block_copy(&v530);
      v515 = *(&v532 + 1);

      sub_1AFA9C054(v432, &v535, &unk_1EB633F50, type metadata accessor for HeaderScript);

      sub_1AF487F80(v437, v436);

      dispatch_sync(v516, v448);
      _Block_release(v448);

      (*v488)(v484, v507);
      swift_isEscapingClosureAtFileLocation();
      a3 = v503;

      sub_1AF487074(v437, v436);
      v344 = v495;
LABEL_299:
      v347 = v509;
      v346 = v523;
      goto LABEL_246;
    }

    v515 = *(v522 + 40);
    v439 = swift_allocObject();
    v439[2].isa = sub_1AFA9C010;
    v439[3].isa = v427;
    v516 = v439;

    sub_1AFA9C054(v432, &v535, &unk_1EB633F50, type metadata accessor for HeaderScript);

    sub_1AF487F80(v437, v436);
    v440 = qword_1ED730EA0;

    a3 = v503;
    if (v440 != -1)
    {
      swift_once();
    }

    v344 = v495;
    v347 = v509;
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v441 = qword_1ED73B8A0;
    v442 = swift_allocObject();
    v443 = v516;
    *(v442 + 16) = sub_1AFA9EB90;
    *(v442 + 24) = v443;
    v444 = swift_allocObject();
    v444[2] = v441;
    v444[3] = sub_1AF6CB244;
    v444[4] = v442;
    *&v537 = sub_1AF74E8A8;
    *(&v537 + 1) = v444;
    *&v535 = MEMORY[0x1E69E9820];
    *(&v535 + 1) = 1107296256;
    *&v536 = sub_1AFCDA044;
    *(&v536 + 1) = &unk_1F25598E8;
    v445 = _Block_copy(&v535);
    swift_retain_n();

    [v515 addOperationWithBlock:v445];
    _Block_release(v445);

    (*v488)(v484, v507);

LABEL_297:

    sub_1AF487074(v518, v517);
    v346 = v523;
LABEL_246:
    ++v344;
    v347 += 24;
    v346 = (v346 + v504);
    v521 += v506;
    if (v514 == v344)
    {
      LODWORD(v521) = 1;
LABEL_312:
      v464 = v498;
      sub_1AF630994(v477, &v587, v600);
      v498 = v464;
      sub_1AF62D29C(v224);
      ecs_stack_allocator_pop_snapshot(v476);
      if (v475)
      {
        os_unfair_lock_unlock(*(v224 + 344));
        os_unfair_lock_unlock(*(v224 + 376));
      }

      v219 = v474 + 1;
      if (v474 + 1 != v471)
      {
        goto LABEL_170;
      }

      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v580, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v521 & 1) == 0)
      {
LABEL_316:
        dispatch_group_leave(a3);
      }

LABEL_315:

      sub_1AFA62400(v465);

      goto LABEL_316;
    }
  }

LABEL_322:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}