uint64_t sub_21CE3F8EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return sub_21CE6CCF0() & 1;
}

void sub_21CE3F934(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_21CE3F9A0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_21CE3F9C0, 0, 0);
}

uint64_t sub_21CE3F9C0()
{
  v1 = v0[18];
  v2 = *(v0[19] + 24);
  v3 = sub_21CE6CD30();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_21CE3FAF8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CE4B3C8;
  v0[13] = &block_descriptor_7;
  v0[14] = v4;
  [v2 deleteSearchableItemsWithDomainIdentifiers:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CE3FAF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_21CE3FC6C;
  }

  else
  {
    v3 = sub_21CE3FC08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CE3FC08()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CE3FC6C()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

id sub_21CE3FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  v6 = sub_21CE6CC20();
  v57[0] = 0;
  v7 = [v5 entitiesForBundleIdentifier:v6 error:v57];

  v8 = v57[0];
  if (v7)
  {
    sub_21CDE40C8(0, &qword_281211A80, 0x277D23818);
    v9 = sub_21CE6CD40();
    v10 = v8;

    v11 = v9;
    v58 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v11 = v46)
    {
      v49 = v11;
      v13 = 0;
      v14 = v11 & 0xC000000000000001;
      v15 = v11 & 0xFFFFFFFFFFFFFF8;
      v54 = v11 + 32;
      v56 = a3 + 56;
      v16 = *MEMORY[0x277D23700];
      v53 = a3;
      v51 = v11 & 0xC000000000000001;
      v52 = i;
      v50 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v14)
        {
          v11 = MEMORY[0x21CF1B2A0](v13, v49);
        }

        else
        {
          if (v13 >= *(v15 + 16))
          {
            goto LABEL_45;
          }

          v11 = *(v54 + 8 * v13);
        }

        v17 = v11;
        if (__OFADD__(v13++, 1))
        {
          break;
        }

        v19 = [v11 identifier];
        v20 = sub_21CE6CC50();
        v22 = v21;

        if (*(a3 + 16))
        {
          v55 = v17;
          v23 = *(a3 + 40);
          sub_21CE6D4B0();
          sub_21CE6CCA0();
          v24 = sub_21CE6D4E0();
          v25 = -1 << *(a3 + 32);
          v26 = v24 & ~v25;
          if ((*(v56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            v27 = ~v25;
            while (1)
            {
              v28 = (*(a3 + 48) + 16 * v26);
              v29 = *v28 == v20 && v28[1] == v22;
              if (v29 || (sub_21CE6D400() & 1) != 0)
              {
                break;
              }

              v26 = (v26 + 1) & v27;
              if (((*(v56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v30 = [v55 systemProtocolMetadata];
            type metadata accessor for LNSystemEntityProtocolIdentifier(0);
            a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC8, &qword_21CE734E0);
            sub_21CE4B350(&qword_281211A00, type metadata accessor for LNSystemEntityProtocolIdentifier);
            v31 = sub_21CE6CB60();

            v32 = 1 << *(v31 + 32);
            if (v32 < 64)
            {
              v33 = ~(-1 << v32);
            }

            else
            {
              v33 = -1;
            }

            v34 = v33 & *(v31 + 64);
            v35 = (v32 + 63) >> 6;

            v36 = 0;
            while (v34)
            {
LABEL_30:
              v38 = *(*(v31 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v34)))));
              v39 = sub_21CE6CC50();
              v41 = v40;
              if (v39 == sub_21CE6CC50() && v41 == v42)
              {

LABEL_38:

                sub_21CE6D2F0();
                v44 = v58[2];
                sub_21CE6D320();
                sub_21CE6D330();
                v11 = sub_21CE6D300();
LABEL_39:
                i = v52;
                a3 = v53;
                v15 = v50;
                v14 = v51;
                goto LABEL_6;
              }

              v34 &= v34 - 1;
              a3 = sub_21CE6D400();

              if (a3)
              {

                goto LABEL_38;
              }
            }

            while (1)
            {
              v37 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v37 >= v35)
              {

                goto LABEL_39;
              }

              v34 = *(v31 + 64 + 8 * v37);
              ++v36;
              if (v34)
              {
                v36 = v37;
                goto LABEL_30;
              }
            }

            __break(1u);
            break;
          }

LABEL_20:
        }

        else
        {
        }

LABEL_6:
        if (v13 == i)
        {
          v45 = v58;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v46 = v11;
      i = sub_21CE6D360();
    }

    v45 = MEMORY[0x277D84F90];
LABEL_48:
  }

  else
  {
    v45 = v57[0];
    sub_21CE6B910();

    swift_willThrow();
  }

  v47 = *MEMORY[0x277D85DE8];
  return v45;
}

id sub_21CE401B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  v6 = sub_21CE6CC20();
  v35[0] = 0;
  v7 = [v5 enumsForBundleIdentifier:v6 error:v35];

  v8 = v35[0];
  if (v7)
  {
    sub_21CDE40C8(0, &unk_281211A98, 0x277D23838);
    v9 = sub_21CE6CD40();
    v10 = v8;

    v36 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CE6D360())
    {
      v31 = v9;
      v12 = 0;
      v33 = v9 & 0xFFFFFFFFFFFFFF8;
      v34 = v9 & 0xC000000000000001;
      v32 = v9 + 32;
      v9 = a3 + 56;
      while (1)
      {
        if (v34)
        {
          v13 = MEMORY[0x21CF1B2A0](v12, v31);
        }

        else
        {
          if (v12 >= *(v33 + 16))
          {
            goto LABEL_26;
          }

          v13 = *(v32 + 8 * v12);
        }

        v14 = v13;
        if (__OFADD__(v12++, 1))
        {
          break;
        }

        v16 = [v13 identifier];
        v17 = sub_21CE6CC50();
        v19 = v18;

        if (*(a3 + 16) && (v20 = *(a3 + 40), sub_21CE6D4B0(), sub_21CE6CCA0(), v21 = sub_21CE6D4E0(), v22 = -1 << *(a3 + 32), v23 = v21 & ~v22, ((*(v9 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = (*(a3 + 48) + 16 * v23);
            v26 = *v25 == v17 && v25[1] == v19;
            if (v26 || (sub_21CE6D400() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v9 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          sub_21CE6D2F0();
          v27 = v36[2];
          sub_21CE6D320();
          sub_21CE6D330();
          sub_21CE6D300();
        }

        else
        {
LABEL_5:
        }

        if (v12 == i)
        {
          v28 = v36;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v28 = MEMORY[0x277D84F90];
LABEL_29:
  }

  else
  {
    v28 = v35[0];
    sub_21CE6B910();

    swift_willThrow();
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t sub_21CE4049C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 360) = a7;
  *(v8 + 368) = v7;
  *(v8 + 344) = a5;
  *(v8 + 352) = a6;
  *(v8 + 328) = a3;
  *(v8 + 336) = a4;
  *(v8 + 536) = a2;
  *(v8 + 320) = a1;
  return MEMORY[0x2822009F8](sub_21CE404CC, 0, 0);
}

uint64_t sub_21CE404CC()
{
  v54 = v0;
  v1 = *(v0 + 320);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21CDFA79C(MEMORY[0x277D84F90]);
  v4 = MEMORY[0x277D84FA0];
  *(v0 + 288) = v2;
  *(v0 + 296) = v4;
  LOBYTE(v4) = *(v1 + 32);
  *(v0 + 537) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);

  v8 = 0;
  while (1)
  {
    *(v0 + 376) = v3;
    if (!v7)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v10 >= (((1 << *(v0 + 537)) + 63) >> 6))
        {
          break;
        }

        v9 = *(v0 + 320);
        v7 = *(v9 + 8 * v10 + 64);
        ++v8;
        if (v7)
        {
          v8 = v10;
          goto LABEL_11;
        }
      }

      v30 = *(v0 + 536);
      v31 = *(v0 + 320);
      v32 = *(v0 + 328);

      v33 = *v32;
      v34 = *(v0 + 296);

      *v32 = sub_21CE452BC(v35, v33);
      if (v30)
      {

        v36 = *(v0 + 288);

        v37 = *(v0 + 8);
        v38 = *(v0 + 376);

        return v37(v38);
      }

      v39 = *(v34 + 16);
      if (v39)
      {
        v1 = sub_21CE12CDC(*(v34 + 16), 0);
        v40 = sub_21CE49EB0(&v53, (v1 + 32), v39, v34);
        sub_21CDEEAA0();
        if (v40 == v39)
        {
LABEL_29:
          if (qword_281213298 == -1)
          {
            goto LABEL_30;
          }

LABEL_36:
          swift_once();
LABEL_30:
          v41 = sub_21CE6BDA0();
          *(v0 + 480) = __swift_project_value_buffer(v41, qword_2812165F0);

          v42 = sub_21CE6BD80();
          v43 = sub_21CE6CF30();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v53 = v45;
            *v44 = 136315138;
            v46 = MEMORY[0x21CF1AD30](v1, MEMORY[0x277D837D0]);
            v48 = sub_21CDF2CC8(v46, v47, &v53);

            *(v44 + 4) = v48;
            _os_log_impl(&dword_21CDE1000, v42, v43, "deleteSearchableItems for %s", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x21CF1BD50](v45, -1, -1);
            MEMORY[0x21CF1BD50](v44, -1, -1);
          }

          v49 = *(*(v0 + 368) + 24);
          *(v0 + 488) = v49;
          v50 = sub_21CE6CD30();
          *(v0 + 496) = v50;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE423CC;
          v51 = swift_continuation_init();
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 504) = v52;
          *(v0 + 200) = v52;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_48;
          *(v0 + 176) = v51;
          [v49 deleteSearchableItemsWithDomainIdentifiers:v50 completionHandler:v0 + 144];
          v19 = v0 + 16;

          return MEMORY[0x282200938](v19);
        }

        __break(1u);
      }

      v1 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v9 = *(v0 + 320);
LABEL_11:
    *(v0 + 384) = v7;
    *(v0 + 392) = v8;
    v12 = *(v0 + 352);
    v11 = *(v0 + 360);
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v9 + 48) + 16 * v13);
    v15 = *v14;
    *(v0 + 400) = *v14;
    v16 = v14[1];
    *(v0 + 408) = v16;
    v17 = *(*(v9 + 56) + 8 * v13);

    v18 = v12(v15, v16, v17);
    *(v0 + 416) = v18;

    v1 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
    if (v18 >> 62)
    {
      break;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 424) = v19;
    if (v19)
    {
      goto LABEL_15;
    }

LABEL_13:
    v21 = *(v0 + 408);
    v20 = *(v0 + 416);
    v22 = *(v0 + 400);
    v3 = *(v0 + 376);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v3;
    sub_21CE069B8(v1, v22, v21, isUniquelyReferenced_nonNull_native);

    v8 = *(v0 + 392);
    v7 = (*(v0 + 384) - 1) & *(v0 + 384);
  }

  v19 = sub_21CE6D360();
  *(v0 + 424) = v19;
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_15:
  *(v0 + 432) = v1;
  v24 = *(v0 + 416);
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_18;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v19);
  }

  v25 = *(v24 + 32);
LABEL_18:
  *(v0 + 440) = v25;
  *(v0 + 448) = 1;
  v26 = swift_task_alloc();
  *(v0 + 456) = v26;
  *v26 = v0;
  v26[1] = sub_21CE40E3C;
  v28 = *(v0 + 336);
  v27 = *(v0 + 344);

  return sub_21CE4E8B0(v28, v27);
}

uint64_t sub_21CE40E3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 456);
  v9 = *v2;
  v3[58] = a1;
  v3[59] = v1;

  if (v1)
  {
    v5 = v3[54];
    v6 = v3[52];

    v7 = sub_21CE41A80;
  }

  else
  {
    v7 = sub_21CE40F64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21CE40F64()
{
  v109 = v0;
  v1 = *(v0 + 464);

  sub_21CE3BB30(v2);
  if (v1 >> 62)
  {
    if (*(v0 + 464) < 0)
    {
      v18 = *(v0 + 464);
    }

    v3 = sub_21CE6D360();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_76;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v107 = *(v0 + 464) + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    if (v5)
    {
      v7 = MEMORY[0x21CF1B2A0](v4, *(v0 + 464));
    }

    else
    {
      v7 = *(v107 + 8 * v4);
    }

    v8 = v7;
    v9 = [v7 domainIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_21CE6CC50();
      v13 = v12;

      sub_21CE4784C((v0 + 272), v11, v13);
      v14 = *(v0 + 280);
    }

    v15 = sub_21CE4B458();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21CDF2AEC(0, v6[2] + 1, 1, v6);
    }

    v17 = v6[2];
    v16 = v6[3];
    if (v17 >= v16 >> 1)
    {
      v6 = sub_21CDF2AEC((v16 > 1), v17 + 1, 1, v6);
    }

    ++v4;

    v6[2] = v17 + 1;
    v6[v17 + 4] = v15;
  }

  while (v3 != v4);
LABEL_20:
  v19 = *(v0 + 464);
  v20 = *(v0 + 440);
  v21 = *(v0 + 448);
  v23 = *(v0 + 424);
  v22 = *(v0 + 432);

  v24 = [v20 identifier];
  v25 = sub_21CE6CC50();
  v27 = v26;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = v22;
  sub_21CE069E4(v6, v25, v27, isUniquelyReferenced_nonNull_native);

  v1 = v22;
  if (v21 != v23)
  {
    v3 = *(v0 + 448);
LABEL_52:
    *(v0 + 432) = v1;
    v77 = *(v0 + 416);
    if ((v77 & 0xC000000000000001) == 0)
    {
      if (v3 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        swift_once();
        goto LABEL_68;
      }

      v78 = *(v77 + 8 * v3 + 32);
LABEL_55:
      *(v0 + 440) = v78;
      *(v0 + 448) = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v79 = swift_task_alloc();
        *(v0 + 456) = v79;
        *v79 = v0;
        v79[1] = sub_21CE40E3C;
        v81 = *(v0 + 336);
        v80 = *(v0 + 344);

        return sub_21CE4E8B0(v81, v80);
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    v78 = MEMORY[0x21CF1B2A0](v3);
    goto LABEL_55;
  }

  v29 = &qword_27CE406C0;
  v30 = *(v0 + 472);
  v106 = 136315138;
LABEL_22:
  v32 = *(v0 + 408);
  v31 = *(v0 + 416);
  v33 = *(v0 + 400);
  v34 = *(v0 + 376);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v34;
  sub_21CE069B8(v1, v33, v32, v35);

  v36 = *(v0 + 392);
  v37 = (*(v0 + 384) - 1) & *(v0 + 384);
  *(v0 + 376) = v108;
  while (v37)
  {
    v46 = *(v0 + 320);
LABEL_31:
    *(v0 + 384) = v37;
    *(v0 + 392) = v36;
    v49 = *(v0 + 352);
    v48 = *(v0 + 360);
    v50 = __clz(__rbit64(v37)) | (v36 << 6);
    v51 = (*(v46 + 48) + 16 * v50);
    v52 = *v51;
    *(v0 + 400) = *v51;
    v53 = v51[1];
    *(v0 + 408) = v53;
    v54 = *(*(v46 + 56) + 8 * v50);

    v55 = v49(v52, v53, v54);
    *(v0 + 416) = v55;

    if (!v30)
    {
      v1 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
      if (v55 >> 62)
      {
        v76 = sub_21CE6D360();
      }

      else
      {
        v76 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = 0;
      *(v0 + 424) = v76;
      if (v76)
      {
LABEL_74:
        v3 = 0;
        goto LABEL_52;
      }

      goto LABEL_22;
    }

    *(v0 + 304) = v30;
    v56 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, &qword_21CE70E30);
    sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 312);
      if ([v1 code] == -10814)
      {

        if (qword_281213298 != -1)
        {
          swift_once();
        }

        v57 = *(v0 + 408);
        v58 = sub_21CE6BDA0();
        __swift_project_value_buffer(v58, qword_2812165F0);

        v59 = sub_21CE6BD80();
        v60 = sub_21CE6CF30();

        v61 = os_log_type_enabled(v59, v60);
        v62 = *(v0 + 408);
        if (v61)
        {
          v63 = *(v0 + 400);
          v64 = swift_slowAlloc();
          v65 = v29;
          v66 = swift_slowAlloc();
          v108 = v66;
          *v64 = 136315138;
          v67 = sub_21CDF2CC8(v63, v62, &v108);

          *(v64 + 4) = v67;
          _os_log_impl(&dword_21CDE1000, v59, v60, "Extension offloaded, skipping: %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          v68 = v66;
          v29 = v65;
          MEMORY[0x21CF1BD50](v68, -1, -1);
          MEMORY[0x21CF1BD50](v64, -1, -1);
        }

        else
        {
        }

        v75 = *(v0 + 304);
        goto LABEL_45;
      }
    }

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 408);
    v69 = sub_21CE6BDA0();
    __swift_project_value_buffer(v69, qword_2812165F0);

    v70 = v30;
    v71 = sub_21CE6BD80();
    v72 = sub_21CE6CF10();

    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 408);
    if (v73)
    {
      v38 = *(v0 + 400);
      v1 = swift_slowAlloc();
      v39 = v29;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v108 = v41;
      *v1 = 136315394;
      v42 = sub_21CDF2CC8(v38, v74, &v108);

      *(v1 + 4) = v42;
      *(v1 + 12) = 2112;
      v43 = v30;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 14) = v44;
      *v40 = v44;
      _os_log_impl(&dword_21CDE1000, v71, v72, "Unexpected error while processing extension: %s, error: %@", v1, 0x16u);
      sub_21CE06F6C(v40);
      v45 = v40;
      v29 = v39;
      MEMORY[0x21CF1BD50](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x21CF1BD50](v41, -1, -1);
      MEMORY[0x21CF1BD50](v1, -1, -1);

      goto LABEL_24;
    }

    v75 = v30;
LABEL_45:

LABEL_24:
    v30 = 0;
    v36 = *(v0 + 392);
    v37 = (*(v0 + 384) - 1) & *(v0 + 384);
  }

  while (1)
  {
    v47 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v47 >= (((1 << *(v0 + 537)) + 63) >> 6))
    {
      break;
    }

    v46 = *(v0 + 320);
    v37 = *(v46 + 8 * v47 + 64);
    ++v36;
    if (v37)
    {
      v36 = v47;
      goto LABEL_31;
    }
  }

  v83 = *(v0 + 536);
  v84 = *(v0 + 320);
  v85 = *(v0 + 328);

  v86 = *v85;
  v87 = *(v0 + 296);

  *v85 = sub_21CE452BC(v88, v86);
  if ((v83 & 1) == 0)
  {
    v92 = *(v87 + 16);
    if (v92)
    {
      v1 = sub_21CE12CDC(*(v87 + 16), 0);
      v93 = sub_21CE49EB0(&v108, (v1 + 32), v92, v87);
      sub_21CDEEAA0();
      if (v93 == v92)
      {
        goto LABEL_67;
      }

      __break(1u);
    }

    v1 = MEMORY[0x277D84F90];
LABEL_67:
    if (qword_281213298 != -1)
    {
      goto LABEL_79;
    }

LABEL_68:
    v94 = sub_21CE6BDA0();
    *(v0 + 480) = __swift_project_value_buffer(v94, qword_2812165F0);

    v95 = sub_21CE6BD80();
    v96 = sub_21CE6CF30();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v108 = v98;
      *v97 = v106;
      v99 = MEMORY[0x21CF1AD30](v1, MEMORY[0x277D837D0]);
      v101 = sub_21CDF2CC8(v99, v100, &v108);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_21CDE1000, v95, v96, "deleteSearchableItems for %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x21CF1BD50](v98, -1, -1);
      MEMORY[0x21CF1BD50](v97, -1, -1);
    }

    v102 = *(*(v0 + 368) + 24);
    *(v0 + 488) = v102;
    v103 = sub_21CE6CD30();
    *(v0 + 496) = v103;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21CE423CC;
    v104 = swift_continuation_init();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
    *(v0 + 504) = v105;
    *(v0 + 200) = v105;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CE4B3C8;
    *(v0 + 168) = &block_descriptor_48;
    *(v0 + 176) = v104;
    [v102 deleteSearchableItemsWithDomainIdentifiers:v103 completionHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  v89 = *(v0 + 288);

  v90 = *(v0 + 8);
  v91 = *(v0 + 376);

  return v90(v91);
}

uint64_t sub_21CE41A80()
{
  v77 = v0;

  v1 = *(v0 + 472);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 304) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 312);
    if ([v4 code] == -10814)
    {

      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 408);
      v6 = sub_21CE6BDA0();
      __swift_project_value_buffer(v6, qword_2812165F0);

      v7 = sub_21CE6BD80();
      v8 = sub_21CE6CF30();

      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 408);
      if (v9)
      {
        v11 = *(v0 + 400);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v76 = v13;
        *v12 = 136315138;
        v14 = sub_21CDF2CC8(v11, v10, &v76);

        *(v12 + 4) = v14;
        _os_log_impl(&dword_21CDE1000, v7, v8, "Extension offloaded, skipping: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x21CF1BD50](v13, -1, -1);
        MEMORY[0x21CF1BD50](v12, -1, -1);
      }

      else
      {
      }

      v28 = *(v0 + 304);
      goto LABEL_15;
    }
  }

  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 408);
  v16 = sub_21CE6BDA0();
  __swift_project_value_buffer(v16, qword_2812165F0);

  v17 = v1;
  v18 = sub_21CE6BD80();
  v8 = sub_21CE6CF10();

  v19 = os_log_type_enabled(v18, v8);
  v20 = *(v0 + 408);
  if (v19)
  {
    v21 = *(v0 + 400);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v76 = v24;
    *v22 = 136315394;
    v25 = sub_21CDF2CC8(v21, v20, &v76);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2112;
    v26 = v1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v27;
    *v23 = v27;
    _os_log_impl(&dword_21CDE1000, v18, v8, "Unexpected error while processing extension: %s, error: %@", v22, 0x16u);
    sub_21CE06F6C(v23);
    MEMORY[0x21CF1BD50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x21CF1BD50](v24, -1, -1);
    v2 = MEMORY[0x277D84F90];
    MEMORY[0x21CF1BD50](v22, -1, -1);

    goto LABEL_16;
  }

  v28 = v1;
LABEL_15:

LABEL_16:
  v29 = *(v0 + 392);
  v30 = (*(v0 + 384) - 1) & *(v0 + 384);
  if (!v30)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v31 = *(v0 + 320);
LABEL_22:
    *(v0 + 384) = v30;
    *(v0 + 392) = v29;
    v34 = *(v0 + 352);
    v33 = *(v0 + 360);
    v35 = __clz(__rbit64(v30)) | (v29 << 6);
    v36 = (*(v31 + 48) + 16 * v35);
    v37 = *v36;
    *(v0 + 400) = *v36;
    v38 = v36[1];
    *(v0 + 408) = v38;
    v39 = *(*(v31 + 56) + 8 * v35);

    v40 = v34(v37, v38, v39);
    *(v0 + 416) = v40;

    v8 = sub_21CDFA7B0(v2);
    if (!(v40 >> 62))
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 424) = v41;
      if (v41)
      {
        break;
      }

      goto LABEL_24;
    }

    v41 = sub_21CE6D360();
    *(v0 + 424) = v41;
    if (v41)
    {
      break;
    }

LABEL_24:
    v43 = *(v0 + 408);
    v42 = *(v0 + 416);
    v44 = *(v0 + 400);
    v45 = *(v0 + 376);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v45;
    sub_21CE069B8(v8, v44, v43, isUniquelyReferenced_nonNull_native);

    v29 = *(v0 + 392);
    v30 = (*(v0 + 384) - 1) & *(v0 + 384);
    *(v0 + 376) = v76;
    if (!v30)
    {
      while (1)
      {
LABEL_18:
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v32 >= (((1 << *(v0 + 537)) + 63) >> 6))
        {
          break;
        }

        v31 = *(v0 + 320);
        v30 = *(v31 + 8 * v32 + 64);
        ++v29;
        if (v30)
        {
          v29 = v32;
          goto LABEL_22;
        }
      }

      v47 = *(v0 + 536);
      v48 = *(v0 + 320);
      v49 = *(v0 + 328);

      v50 = *v49;
      v51 = *(v0 + 296);

      *v49 = sub_21CE452BC(v52, v50);
      if (v47)
      {

        v53 = *(v0 + 288);

        v54 = *(v0 + 8);
        v55 = *(v0 + 376);

        return v54(v55);
      }

      v57 = *(v51 + 16);
      if (v57)
      {
        v8 = sub_21CE12CDC(*(v51 + 16), 0);
        v58 = sub_21CE49EB0(&v76, (v8 + 32), v57, v51);
        sub_21CDEEAA0();
        if (v58 == v57)
        {
LABEL_36:
          if (qword_281213298 == -1)
          {
            goto LABEL_37;
          }

LABEL_49:
          swift_once();
LABEL_37:
          v59 = sub_21CE6BDA0();
          *(v0 + 480) = __swift_project_value_buffer(v59, qword_2812165F0);

          v60 = sub_21CE6BD80();
          v61 = sub_21CE6CF30();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v76 = v63;
            *v62 = 136315138;
            v64 = MEMORY[0x21CF1AD30](v8, MEMORY[0x277D837D0]);
            v66 = sub_21CDF2CC8(v64, v65, &v76);

            *(v62 + 4) = v66;
            _os_log_impl(&dword_21CDE1000, v60, v61, "deleteSearchableItems for %s", v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            MEMORY[0x21CF1BD50](v63, -1, -1);
            MEMORY[0x21CF1BD50](v62, -1, -1);
          }

          v67 = *(*(v0 + 368) + 24);
          *(v0 + 488) = v67;
          v68 = sub_21CE6CD30();
          *(v0 + 496) = v68;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE423CC;
          v69 = swift_continuation_init();
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 504) = v70;
          *(v0 + 200) = v70;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_48;
          *(v0 + 176) = v69;
          [v67 deleteSearchableItemsWithDomainIdentifiers:v68 completionHandler:v0 + 144];
          v41 = v0 + 16;

          return MEMORY[0x282200938](v41);
        }

        __break(1u);
      }

      v8 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }
  }

  *(v0 + 432) = v8;
  v71 = *(v0 + 416);
  if ((v71 & 0xC000000000000001) != 0)
  {
    v72 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_45;
  }

  if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v41);
  }

  v72 = *(v71 + 32);
LABEL_45:
  *(v0 + 440) = v72;
  *(v0 + 448) = 1;
  v73 = swift_task_alloc();
  *(v0 + 456) = v73;
  *v73 = v0;
  v73[1] = sub_21CE40E3C;
  v75 = *(v0 + 336);
  v74 = *(v0 + 344);

  return sub_21CE4E8B0(v75, v74);
}

uint64_t sub_21CE423CC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 512) = v3;
  if (v3)
  {
    v4 = *(v1 + 376);
    v5 = *(v1 + 288);

    v6 = sub_21CE426F8;
  }

  else
  {
    v6 = sub_21CE424F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21CE424F0()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 288);

  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v2 >> 62)
    {
      v6 = sub_21CE6D360();
    }

    else
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;

    _os_log_impl(&dword_21CDE1000, v3, v4, "deleteSearchableItems done, adding %ld items to index", v5, 0xCu);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 504);
  v8 = *(v0 + 488);
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  v9 = sub_21CE6CD30();
  *(v0 + 520) = v9;

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_21CE4276C;
  v10 = swift_continuation_init();
  *(v0 + 264) = v7;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4B3C8;
  *(v0 + 232) = &block_descriptor_52;
  *(v0 + 240) = v10;
  [v8 indexSearchableItems:v9 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21CE426F8()
{
  v1 = *(v0 + 512);
  swift_willThrow();
  v2 = *(v0 + 512);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CE4276C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 528) = v3;
  if (v3)
  {
    v4 = *(v1 + 376);

    v5 = sub_21CE42964;
  }

  else
  {
    v5 = sub_21CE42884;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21CE42884()
{
  v1 = *(v0 + 480);

  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CF30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CDE1000, v2, v3, "adding done", v4, 2u);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 376);

  return v5(v6);
}

uint64_t sub_21CE42964()
{
  v1 = *(v0 + 528);
  swift_willThrow();
  v2 = *(v0 + 528);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CE429D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 392) = a7;
  *(v8 + 400) = v7;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 360) = a3;
  *(v8 + 368) = a4;
  *(v8 + 584) = a2;
  *(v8 + 352) = a1;
  return MEMORY[0x2822009F8](sub_21CE42A08, 0, 0);
}

uint64_t sub_21CE42A08()
{
  v54 = v0;
  v1 = *(v0 + 352);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21CDFA79C(MEMORY[0x277D84F90]);
  *(v0 + 320) = MEMORY[0x277D84FA0];
  v4 = *(v1 + 32);
  *(v0 + 585) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);

  v8 = 0;
  while (1)
  {
    *(v0 + 408) = v3;
    *(v0 + 416) = v2;
    if (!v7)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v10 >= (((1 << *(v0 + 585)) + 63) >> 6))
        {
          break;
        }

        v9 = *(v0 + 352);
        v7 = *(v9 + 8 * v10 + 64);
        ++v8;
        if (v7)
        {
          v8 = v10;
          goto LABEL_11;
        }
      }

      v31 = *(v0 + 584);
      v32 = *(v0 + 352);
      v33 = *(v0 + 360);

      v34 = *v33;
      v35 = *(v0 + 320);

      *v33 = sub_21CE452BC(v36, v34);
      if (v31)
      {

        v37 = *(v0 + 8);
        v38 = *(v0 + 408);

        return v37(v38);
      }

      v39 = *(v35 + 16);
      if (v39)
      {
        v2 = sub_21CE12CDC(*(v35 + 16), 0);
        v40 = sub_21CE49EB0(&v53, v2 + 4, v39, v35);
        sub_21CDEEAA0();
        if (v40 == v39)
        {
LABEL_29:
          if (qword_281213298 == -1)
          {
            goto LABEL_30;
          }

LABEL_36:
          swift_once();
LABEL_30:
          v41 = sub_21CE6BDA0();
          *(v0 + 528) = __swift_project_value_buffer(v41, qword_2812165F0);

          v42 = sub_21CE6BD80();
          v43 = sub_21CE6CF30();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v53 = v45;
            *v44 = 136315138;
            v46 = MEMORY[0x21CF1AD30](v2, MEMORY[0x277D837D0]);
            v48 = sub_21CDF2CC8(v46, v47, &v53);

            *(v44 + 4) = v48;
            _os_log_impl(&dword_21CDE1000, v42, v43, "deleteSearchableItems for %s", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v45);
            MEMORY[0x21CF1BD50](v45, -1, -1);
            MEMORY[0x21CF1BD50](v44, -1, -1);
          }

          v49 = *(*(v0 + 400) + 24);
          *(v0 + 536) = v49;
          v50 = sub_21CE6CD30();
          *(v0 + 544) = v50;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE44C98;
          v51 = swift_continuation_init();
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 552) = v52;
          *(v0 + 200) = v52;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_40;
          *(v0 + 176) = v51;
          [v49 deleteSearchableItemsWithDomainIdentifiers:v50 completionHandler:v0 + 144];
          v20 = v0 + 16;

          return MEMORY[0x282200938](v20);
        }

        __break(1u);
      }

      v2 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v9 = *(v0 + 352);
LABEL_11:
    *(v0 + 424) = v7;
    *(v0 + 432) = v8;
    v12 = *(v0 + 384);
    v11 = *(v0 + 392);
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v9 + 48) + 16 * v13);
    v15 = *v14;
    *(v0 + 440) = *v14;
    v16 = v14[1];
    *(v0 + 448) = v16;
    v17 = *(*(v9 + 56) + 8 * v13);

    v18 = v12(v15, v16, v17);
    *(v0 + 456) = v18;

    v19 = sub_21CDFA7B0(v2);
    if (v18 >> 62)
    {
      break;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 464) = v20;
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_13:
    v22 = *(v0 + 448);
    v21 = *(v0 + 456);
    v23 = *(v0 + 440);
    v3 = *(v0 + 408);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v3;
    sub_21CE069B8(v19, v23, v22, isUniquelyReferenced_nonNull_native);

    v8 = *(v0 + 432);
    v7 = (*(v0 + 424) - 1) & *(v0 + 424);
  }

  v20 = sub_21CE6D360();
  *(v0 + 464) = v20;
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_15:
  *(v0 + 472) = v19;
  *(v0 + 480) = v2;
  v25 = *(v0 + 456);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_18;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v20);
  }

  v26 = *(v25 + 32);
LABEL_18:
  *(v0 + 488) = v26;
  *(v0 + 496) = 1;
  v27 = swift_task_alloc();
  *(v0 + 504) = v27;
  *v27 = v0;
  v27[1] = sub_21CE43360;
  v29 = *(v0 + 368);
  v28 = *(v0 + 376);

  return sub_21CE4C8D8(v29, v28);
}

uint64_t sub_21CE43360(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v9 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {
    v5 = v3[59];
    v6 = v3[57];

    v7 = sub_21CE44340;
  }

  else
  {
    v7 = sub_21CE4348C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21CE4348C()
{
  v147 = v0;
  v1 = *(v0 + 512);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v65 = *(v0 + 512);
    }

    v3 = sub_21CE6D360();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 480);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 + v3;
    if (!__OFADD__(v6, v3))
    {
      goto LABEL_5;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v4 < 0)
  {
    v66 = *(v0 + 480);
  }

  v6 = sub_21CE6D360();
  v7 = v6 + v3;
  if (__OFADD__(v6, v3))
  {
    goto LABEL_69;
  }

LABEL_5:
  v8 = *(v0 + 512);
  v9 = *(v0 + 480);

  if (swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v5)
    {
      v10 = v4 & 0xFFFFFFFFFFFFFF8;
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v11 >= v7)
      {
        v144 = *(v0 + 480);
        goto LABEL_16;
      }

      goto LABEL_11;
    }

LABEL_12:
    v13 = *(v0 + 480);
    if (v4 < 0)
    {
      v14 = *(v0 + 480);
    }

    sub_21CE6D360();
    goto LABEL_15;
  }

  if (v5)
  {
    goto LABEL_12;
  }

  v10 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_11:
  v12 = *(v10 + 16);
LABEL_15:
  v15 = *(v0 + 480);
  v144 = sub_21CE6D2D0();
  v10 = v144 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_16:
  v16 = *(v10 + 16);
  v17 = v11 - v16;
  if (v2)
  {
    v20 = *(v0 + 512);
    if (v1 < 0)
    {
      v4 = *(v0 + 512);
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = sub_21CE6D360();
    if (v21)
    {
      v22 = v21;
      v23 = sub_21CE6D360();
      if (v17 < v23)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        swift_once();
        goto LABEL_116;
      }

      if (v22 < 1)
      {
        goto LABEL_137;
      }

      v141 = v23;
      v142 = v10;
      v143 = v1 >> 62;
      v4 = v10 + 8 * v16 + 32;
      sub_21CE4B2EC();
      for (i = 0; i != v22; ++i)
      {
        v25 = *(v0 + 512);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40300, &unk_21CE71920);
        v26 = sub_21CE141C4((v0 + 272), i, v25);
        v19 = *v27;
        (v26)(v0 + 272, 0);
        *(v4 + 8 * i) = v19;
      }

      v2 = v1 >> 62;
      v18 = v141;
      v10 = v142;
      goto LABEL_29;
    }

LABEL_33:
    v32 = *(v0 + 512);

    if (v3 <= 0)
    {
      goto LABEL_34;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_33;
  }

  if (v17 < v18)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v19 = v10 + 8 * v16;
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  swift_arrayInitWithCopy();
LABEL_29:
  v28 = *(v0 + 512);

  if (v18 < v3)
  {
    goto LABEL_70;
  }

  if (v18 > 0)
  {
    v29 = *(v10 + 16);
    v30 = __OFADD__(v29, v18);
    v31 = v29 + v18;
    if (v30)
    {
      __break(1u);
      goto LABEL_131;
    }

    *(v10 + 16) = v31;
  }

LABEL_34:
  if (v2)
  {
    v47 = *(v0 + 512);
    if (v1 < 0)
    {
      v48 = *(v0 + 512);
    }

    v6 = sub_21CE6D360();
    v33 = v6;
    if (v6)
    {
      goto LABEL_36;
    }

LABEL_52:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_52;
  }

LABEL_36:
  if (v33 < 1)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v34 = 0;
  v35 = v1 & 0xC000000000000001;
  v145 = *(v0 + 512) + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    if (v35)
    {
      v36 = MEMORY[0x21CF1B2A0](v34, *(v0 + 512));
    }

    else
    {
      v36 = *(v145 + 8 * v34);
    }

    v37 = v36;
    v38 = [v36 domainIdentifier];
    if (v38)
    {
      v39 = v38;
      v40 = sub_21CE6CC50();
      v42 = v41;

      sub_21CE4784C((v0 + 304), v40, v42);
      v43 = *(v0 + 312);
    }

    v44 = sub_21CE4B458();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_21CDF2AEC(0, *(v4 + 16) + 1, 1, v4);
    }

    v46 = *(v4 + 16);
    v45 = *(v4 + 24);
    v3 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v4 = sub_21CDF2AEC((v45 > 1), v46 + 1, 1, v4);
    }

    ++v34;

    *(v4 + 16) = v3;
    *(v4 + 8 * v46 + 32) = v44;
  }

  while (v33 != v34);
LABEL_53:
  v49 = *(v0 + 512);
  v50 = *(v0 + 488);
  v17 = *(v0 + 472);

  v51 = [v50 identifier];
  v1 = sub_21CE6CC50();
  v2 = v52;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 344) = v17;
  v6 = sub_21CE66850(v1, v2);
  v55 = *(v17 + 16);
  v56 = (v54 & 1) == 0;
  v30 = __OFADD__(v55, v56);
  v57 = v55 + v56;
  if (v30)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  LOBYTE(v3) = v54;
  if (*(*(v0 + 472) + 24) >= v57)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_60;
    }

LABEL_73:
    v17 = v6;
    sub_21CE4728C(&unk_27CE40CA0, &unk_21CE70250);
    v6 = v17;
    v61 = *(v0 + 344);
    if (v3)
    {
      goto LABEL_61;
    }

    goto LABEL_74;
  }

  sub_21CE464E4(v57, isUniquelyReferenced_nonNull_native, &unk_27CE40CA0, &unk_21CE70250);
  v58 = *(v0 + 344);
  v6 = sub_21CE66850(v1, v2);
  if ((v3 & 1) != (v59 & 1))
  {

    return sub_21CE6D440();
  }

LABEL_60:
  v61 = *(v0 + 344);
  if (v3)
  {
LABEL_61:
    v62 = *(v0 + 488);
    v63 = *(v61 + 7);
    v64 = *(v63 + 8 * v6);
    *(v63 + 8 * v6) = v4;

    goto LABEL_76;
  }

LABEL_74:
  *&v61[2 * (v6 >> 6) + 16] |= 1 << v6;
  v67 = (*(v61 + 6) + 16 * v6);
  *v67 = v1;
  v67[1] = v2;
  *(*(v61 + 7) + 8 * v6) = v4;
  v68 = *(v61 + 2);
  v30 = __OFADD__(v68, 1);
  v69 = v68 + 1;
  if (v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v70 = *(v0 + 488);
  *(v61 + 2) = v69;

LABEL_76:
  v19 = *(v0 + 496);
  if (v19 != *(v0 + 464))
  {
LABEL_123:
    *(v0 + 472) = v61;
    *(v0 + 480) = v144;
    v136 = *(v0 + 456);
    if ((v136 & 0xC000000000000001) == 0)
    {
      if (v19 >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v137 = *(v136 + 8 * v19 + 32);
LABEL_126:
      v17 = v137;
      *(v0 + 488) = v137;
      *(v0 + 496) = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        v138 = swift_task_alloc();
        *(v0 + 504) = v138;
        *v138 = v0;
        v138[1] = sub_21CE43360;
        v140 = *(v0 + 368);
        v139 = *(v0 + 376);

        return sub_21CE4C8D8(v140, v139);
      }

      __break(1u);
      goto LABEL_133;
    }

LABEL_131:
    v137 = MEMORY[0x21CF1B2A0](v19);
    goto LABEL_126;
  }

  v71 = &qword_27CE406C0;
  v72 = *(v0 + 520);
  LODWORD(v143) = 136315138;
LABEL_78:
  v74 = *(v0 + 448);
  v73 = *(v0 + 456);
  v75 = *(v0 + 440);
  v76 = *(v0 + 408);

  v77 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v76;
  sub_21CE069B8(v61, v75, v74, v77);

  v78 = *(v0 + 432);
  v79 = (*(v0 + 424) - 1) & *(v0 + 424);
  *(v0 + 408) = v146;
  while (1)
  {
    *(v0 + 416) = v144;
    if (!v79)
    {
      break;
    }

    v87 = *(v0 + 352);
LABEL_87:
    *(v0 + 424) = v79;
    *(v0 + 432) = v78;
    v17 = *(v0 + 384);
    v89 = *(v0 + 392);
    v90 = __clz(__rbit64(v79)) | (v78 << 6);
    v91 = *(v87 + 48) + 16 * v90;
    v61 = *v91;
    *(v0 + 440) = *v91;
    v92 = *(v91 + 8);
    *(v0 + 448) = v92;
    v93 = *(*(v87 + 56) + 8 * v90);

    v94 = (v17)(v61, v92, v93);
    *(v0 + 456) = v94;

    if (!v72)
    {
      v61 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
      if (v94 >> 62)
      {
        v113 = sub_21CE6D360();
      }

      else
      {
        v113 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v72 = 0;
      *(v0 + 464) = v113;
      if (v113)
      {
LABEL_122:
        v19 = 0;
        goto LABEL_123;
      }

      goto LABEL_78;
    }

    *(v0 + 328) = v72;
    v95 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(v71, &qword_21CE70E30);
    sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v61 = *(v0 + 336);
      if ([v61 code] == -10814)
      {

        if (qword_281213298 != -1)
        {
          swift_once();
        }

        v17 = *(v0 + 448);
        v96 = sub_21CE6BDA0();
        __swift_project_value_buffer(v96, qword_2812165F0);

        v97 = sub_21CE6BD80();
        v98 = sub_21CE6CF30();

        v99 = os_log_type_enabled(v97, v98);
        v100 = *(v0 + 448);
        if (v99)
        {
          v101 = *(v0 + 440);
          v102 = swift_slowAlloc();
          v103 = v71;
          v104 = swift_slowAlloc();
          v146 = v104;
          *v102 = 136315138;
          v17 = sub_21CDF2CC8(v101, v100, &v146);

          *(v102 + 4) = v17;
          _os_log_impl(&dword_21CDE1000, v97, v98, "Extension offloaded, skipping: %s", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v104);
          v105 = v104;
          v71 = v103;
          MEMORY[0x21CF1BD50](v105, -1, -1);
          MEMORY[0x21CF1BD50](v102, -1, -1);
        }

        else
        {
        }

        v112 = *(v0 + 328);
        goto LABEL_101;
      }
    }

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 448);
    v106 = sub_21CE6BDA0();
    __swift_project_value_buffer(v106, qword_2812165F0);

    v107 = v72;
    v108 = sub_21CE6BD80();
    v109 = sub_21CE6CF10();

    v110 = os_log_type_enabled(v108, v109);
    v111 = *(v0 + 448);
    if (v110)
    {
      v80 = *(v0 + 440);
      v61 = swift_slowAlloc();
      v81 = v71;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v146 = v83;
      *v61 = 136315394;
      v17 = sub_21CDF2CC8(v80, v111, &v146);

      *(v61 + 1) = v17;
      *(v61 + 6) = 2112;
      v84 = v72;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v85;
      *v82 = v85;
      _os_log_impl(&dword_21CDE1000, v108, v109, "Unexpected error while processing extension: %s, error: %@", v61, 0x16u);
      sub_21CE06F6C(v82);
      v86 = v82;
      v71 = v81;
      MEMORY[0x21CF1BD50](v86, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x21CF1BD50](v83, -1, -1);
      MEMORY[0x21CF1BD50](v61, -1, -1);

      goto LABEL_80;
    }

    v112 = v72;
LABEL_101:

LABEL_80:
    v72 = 0;
    v78 = *(v0 + 432);
    v79 = (*(v0 + 424) - 1) & *(v0 + 424);
  }

  while (1)
  {
    v88 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
      goto LABEL_122;
    }

    if (v88 >= (((1 << *(v0 + 585)) + 63) >> 6))
    {
      break;
    }

    v87 = *(v0 + 352);
    v79 = *(v87 + 8 * v88 + 64);
    ++v78;
    if (v79)
    {
      v78 = v88;
      goto LABEL_87;
    }
  }

  v114 = *(v0 + 584);
  v115 = *(v0 + 352);
  v116 = *(v0 + 360);

  v117 = *v116;
  v118 = *(v0 + 320);

  *v116 = sub_21CE452BC(v119, v117);
  if ((v114 & 1) == 0)
  {
    v122 = *(v118 + 16);
    if (v122)
    {
      v17 = sub_21CE12CDC(*(v118 + 16), 0);
      v123 = sub_21CE49EB0(&v146, (v17 + 32), v122, v118);
      sub_21CDEEAA0();
      if (v123 == v122)
      {
        goto LABEL_115;
      }

      __break(1u);
    }

    v17 = MEMORY[0x277D84F90];
LABEL_115:
    if (qword_281213298 != -1)
    {
      goto LABEL_138;
    }

LABEL_116:
    v124 = sub_21CE6BDA0();
    *(v0 + 528) = __swift_project_value_buffer(v124, qword_2812165F0);

    v125 = sub_21CE6BD80();
    v126 = sub_21CE6CF30();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v146 = v128;
      *v127 = v143;
      v129 = MEMORY[0x21CF1AD30](v17, MEMORY[0x277D837D0]);
      v131 = sub_21CDF2CC8(v129, v130, &v146);

      *(v127 + 4) = v131;
      _os_log_impl(&dword_21CDE1000, v125, v126, "deleteSearchableItems for %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      MEMORY[0x21CF1BD50](v128, -1, -1);
      MEMORY[0x21CF1BD50](v127, -1, -1);
    }

    v132 = *(*(v0 + 400) + 24);
    *(v0 + 536) = v132;
    v133 = sub_21CE6CD30();
    *(v0 + 544) = v133;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21CE44C98;
    v134 = swift_continuation_init();
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
    *(v0 + 552) = v135;
    *(v0 + 200) = v135;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CE4B3C8;
    *(v0 + 168) = &block_descriptor_40;
    *(v0 + 176) = v134;
    [v132 deleteSearchableItemsWithDomainIdentifiers:v133 completionHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  v120 = *(v0 + 8);
  v121 = *(v0 + 408);

  return v120(v121);
}

uint64_t sub_21CE44340()
{
  v84 = v0;

  v1 = *(v0 + 520);
  v2 = *(v0 + 480);
  v3 = &unk_281213000;
  v4 = 1;
  *(v0 + 328) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 336);
    if ([v6 code] == -10814)
    {

      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 448);
      v8 = sub_21CE6BDA0();
      __swift_project_value_buffer(v8, qword_2812165F0);

      v9 = sub_21CE6BD80();
      v10 = sub_21CE6CF30();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 448);
      if (v11)
      {
        v13 = *(v0 + 440);
        v81 = v2;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v83 = v15;
        *v14 = 136315138;
        v16 = sub_21CDF2CC8(v13, v12, &v83);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_21CDE1000, v9, v10, "Extension offloaded, skipping: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x21CF1BD50](v15, -1, -1);
        v17 = v14;
        v2 = v81;
        MEMORY[0x21CF1BD50](v17, -1, -1);
      }

      else
      {
      }

      v33 = *(v0 + 328);
      goto LABEL_15;
    }
  }

  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 448);
  v19 = sub_21CE6BDA0();
  __swift_project_value_buffer(v19, qword_2812165F0);

  v20 = v1;
  v21 = sub_21CE6BD80();
  v22 = sub_21CE6CF10();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 448);
  if (v23)
  {
    v82 = v2;
    v25 = *(v0 + 440);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v83 = v28;
    *v26 = 136315394;
    v29 = sub_21CDF2CC8(v25, v24, &v83);

    *(v26 + 4) = v29;
    v2 = v82;
    *(v26 + 12) = 2112;
    v30 = v1;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v31;
    *v27 = v31;
    _os_log_impl(&dword_21CDE1000, v21, v22, "Unexpected error while processing extension: %s, error: %@", v26, 0x16u);
    sub_21CE06F6C(v27);
    MEMORY[0x21CF1BD50](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v32 = v28;
    v3 = &unk_281213000;
    MEMORY[0x21CF1BD50](v32, -1, -1);
    MEMORY[0x21CF1BD50](v26, -1, -1);

    goto LABEL_16;
  }

  v33 = v1;
LABEL_15:

LABEL_16:
  v34 = *(v0 + 432);
  v35 = (*(v0 + 424) - 1) & *(v0 + 424);
  *(v0 + 416) = v2;
  if (!v35)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v36 = *(v0 + 352);
LABEL_22:
    *(v0 + 424) = v35;
    *(v0 + 432) = v34;
    v39 = *(v0 + 384);
    v38 = *(v0 + 392);
    v40 = __clz(__rbit64(v35)) | (v34 << 6);
    v41 = (*(v36 + 48) + 16 * v40);
    v42 = *v41;
    *(v0 + 440) = *v41;
    v43 = v41[1];
    *(v0 + 448) = v43;
    v44 = *(*(v36 + 56) + 8 * v40);

    v45 = v39(v42, v43, v44);
    *(v0 + 456) = v45;

    v46 = sub_21CDFA7B0(MEMORY[0x277D84F90]);
    if (!(v45 >> 62))
    {
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 464) = v47;
      if (v47)
      {
        break;
      }

      goto LABEL_24;
    }

    v47 = sub_21CE6D360();
    *(v0 + 464) = v47;
    if (v47)
    {
      break;
    }

LABEL_24:
    v49 = *(v0 + 448);
    v48 = *(v0 + 456);
    v50 = *(v0 + 440);
    v51 = *(v0 + 408);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v51;
    sub_21CE069B8(v46, v50, v49, isUniquelyReferenced_nonNull_native);

    v34 = *(v0 + 432);
    v35 = (*(v0 + 424) - 1) & *(v0 + 424);
    *(v0 + 408) = v83;
    *(v0 + 416) = v2;
    if (!v35)
    {
      while (1)
      {
LABEL_18:
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v37 >= (((1 << *(v0 + 585)) + 63) >> 6))
        {
          break;
        }

        v36 = *(v0 + 352);
        v35 = *(v36 + 8 * v37 + 64);
        ++v34;
        if (v35)
        {
          v34 = v37;
          goto LABEL_22;
        }
      }

      v53 = *(v0 + 584);
      v54 = *(v0 + 352);
      v55 = *(v0 + 360);

      v56 = *v55;
      v57 = *(v0 + 320);

      *v55 = sub_21CE452BC(v58, v56);
      if (v53)
      {

        v59 = *(v0 + 8);
        v60 = *(v0 + 408);

        return v59(v60);
      }

      v62 = *(v57 + 16);
      if (v62)
      {
        v4 = sub_21CE12CDC(*(v57 + 16), 0);
        v63 = sub_21CE49EB0(&v83, (v4 + 32), v62, v57);
        sub_21CDEEAA0();
        if (v63 == v62)
        {
LABEL_36:
          if (v3[83] == -1)
          {
            goto LABEL_37;
          }

LABEL_49:
          swift_once();
LABEL_37:
          v64 = sub_21CE6BDA0();
          *(v0 + 528) = __swift_project_value_buffer(v64, qword_2812165F0);

          v65 = sub_21CE6BD80();
          v66 = sub_21CE6CF30();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v83 = v68;
            *v67 = 136315138;
            v69 = MEMORY[0x21CF1AD30](v4, MEMORY[0x277D837D0]);
            v71 = sub_21CDF2CC8(v69, v70, &v83);

            *(v67 + 4) = v71;
            _os_log_impl(&dword_21CDE1000, v65, v66, "deleteSearchableItems for %s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v68);
            MEMORY[0x21CF1BD50](v68, -1, -1);
            MEMORY[0x21CF1BD50](v67, -1, -1);
          }

          v72 = *(*(v0 + 400) + 24);
          *(v0 + 536) = v72;
          v73 = sub_21CE6CD30();
          *(v0 + 544) = v73;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_21CE44C98;
          v74 = swift_continuation_init();
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40C88, &qword_21CE73420);
          *(v0 + 552) = v75;
          *(v0 + 200) = v75;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_21CE4B3C8;
          *(v0 + 168) = &block_descriptor_40;
          *(v0 + 176) = v74;
          [v72 deleteSearchableItemsWithDomainIdentifiers:v73 completionHandler:v0 + 144];
          v47 = v0 + 16;

          return MEMORY[0x282200938](v47);
        }

        __break(1u);
      }

      v4 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }
  }

  *(v0 + 472) = v46;
  *(v0 + 480) = v2;
  v76 = *(v0 + 456);
  if ((v76 & 0xC000000000000001) != 0)
  {
    v77 = MEMORY[0x21CF1B2A0](0);
    goto LABEL_45;
  }

  if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x282200938](v47);
  }

  v77 = *(v76 + 32);
LABEL_45:
  *(v0 + 488) = v77;
  *(v0 + 496) = 1;
  v78 = swift_task_alloc();
  *(v0 + 504) = v78;
  *v78 = v0;
  v78[1] = sub_21CE43360;
  v80 = *(v0 + 368);
  v79 = *(v0 + 376);

  return sub_21CE4C8D8(v80, v79);
}

uint64_t sub_21CE44C98()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 560) = v3;
  if (v3)
  {
    v5 = *(v1 + 408);
    v4 = *(v1 + 416);

    v6 = sub_21CE44FDC;
  }

  else
  {
    v6 = sub_21CE44DB8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21CE44DB8()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 416);

  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      *(v0 + 416);
      v17 = v7;
      v8 = sub_21CE6D360();
      v7 = v17;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = *(v0 + 416);
    *(v7 + 4) = v8;
    v10 = v7;

    _os_log_impl(&dword_21CDE1000, v3, v4, "deleteSearchableItems done, adding %ld items to index", v10, 0xCu);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {
    v11 = *(v0 + 416);
  }

  v12 = *(v0 + 552);
  v13 = *(v0 + 536);
  v14 = *(v0 + 416);
  sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
  v15 = sub_21CE6CD30();
  *(v0 + 568) = v15;

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_21CE45050;
  v16 = swift_continuation_init();
  *(v0 + 264) = v12;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4B3C8;
  *(v0 + 232) = &block_descriptor_44;
  *(v0 + 240) = v16;
  [v13 indexSearchableItems:v15 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21CE44FDC()
{
  v1 = *(v0 + 560);
  swift_willThrow();
  v2 = *(v0 + 560);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CE45050()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 576) = v3;
  if (v3)
  {
    v4 = *(v1 + 408);

    v5 = sub_21CE45248;
  }

  else
  {
    v5 = sub_21CE45168;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21CE45168()
{
  v1 = *(v0 + 528);

  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CF30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CDE1000, v2, v3, "adding done", v4, 2u);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 408);

  return v5(v6);
}

uint64_t sub_21CE45248()
{
  v1 = *(v0 + 576);
  swift_willThrow();
  v2 = *(v0 + 576);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CE452BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_21CE4784C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE453C0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t LinkMetadataIndexer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CE454E8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_21CE6D360();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_21CE6D2D0();
  *v1 = result;
  return result;
}

uint64_t sub_21CE45588(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = type metadata accessor for SettingsPaneRecipe();
  v49 = *(v50 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF08, &qword_21CE70290);
  v51 = a2;
  result = sub_21CE6D380();
  v12 = v9;
  v13 = result;
  if (*(v9 + 16))
  {
    v47 = v3;
    v14 = 0;
    v15 = (v9 + 64);
    v16 = 1 << *(v9 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v9 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    v48 = v12;
    v21 = v50;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v12 + 48);
      v53 = *(v49 + 72);
      v28 = v27 + v53 * v26;
      if (v51)
      {
        sub_21CDFA9F8(v28, v8);
        v52 = *(*(v12 + 56) + 8 * v26);
      }

      else
      {
        sub_21CE01738(v28, v8);
        v52 = *(*(v12 + 56) + 8 * v26);
      }

      v29 = *(v13 + 40);
      sub_21CE6D4B0();
      v30 = *v8;
      v31 = v8[1];
      sub_21CE6CCA0();
      v32 = v8[2];
      v33 = v8[3];
      sub_21CE6CCA0();
      v34 = v8 + *(v21 + 24);
      sub_21CE6BA60();
      sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260]);
      sub_21CE6CB80();
      v35 = &v34[*(type metadata accessor for NSBundle.PluginLocation(0) + 20)];
      v36 = *v35;
      v37 = *(v35 + 1);
      sub_21CE6CCA0();
      sub_21CE00700(v8 + *(v21 + 28), &v56);
      if (*(&v57 + 1))
      {
        v54[0] = v56;
        v54[1] = v57;
        v55 = v58;
        sub_21CE6D4D0();
        sub_21CE6D220();
        sub_21CE00770(v54);
      }

      else
      {
        sub_21CE6D4D0();
      }

      result = sub_21CE6D4E0();
      v38 = -1 << *(v13 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v20 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v12 = v48;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v20 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v12 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21CDFA9F8(v8, *(v13 + 48) + v53 * v22);
      *(*(v13 + 56) + 8 * v22) = v52;
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_39;
    }

    v45 = 1 << *(v12 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v15, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v45;
    }

    *(v12 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

uint64_t sub_21CE459F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF8, &qword_21CE70280);
  v38 = a2;
  result = sub_21CE6D380();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21CE45CA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CE0, &unk_21CE734F8);
  v39 = a2;
  result = sub_21CE6D380();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21CE45F44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40800, &qword_21CE734F0);
  v40 = a2;
  result = sub_21CE6D380();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21CE46204(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC0, &qword_21CE70240);
  v36 = a2;
  result = sub_21CE6D380();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_21CDFA678(v25, v37);
      }

      else
      {
        sub_21CDE66C8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_21CDFA678(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21CE464E4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_21CE6D380();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_21CE46784(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C98, &unk_21CE734B0);
  v37 = a2;
  result = sub_21CE6D380();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_21CDFA678(v23, v38);
      }

      else
      {
        sub_21CDE66C8(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_21CE6CC50();
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      v26 = sub_21CE6D4E0();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_21CDFA678(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_21CE46A54()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPaneRecipe();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF08, &qword_21CE70290);
  v6 = *v0;
  v7 = sub_21CE6D370();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_21CE01738(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_21CDFA9F8(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_21CE46C6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FEF8, &qword_21CE70280);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_21CE46DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CE0, &unk_21CE734F8);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21CE46F48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40800, &qword_21CE734F0);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21CE470C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC0, &qword_21CE70240);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21CDE66C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21CDFA678(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21CE4728C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21CE6D370();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_21CE473EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40C98, &unk_21CE734B0);
  v2 = *v0;
  v3 = sub_21CE6D370();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_21CDE66C8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_21CDFA678(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21CE4756C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260]);
  v36 = a2;
  v13 = sub_21CE6CB70();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_21CE4B350(&qword_2812132B8, MEMORY[0x277CC9260]);
      v23 = sub_21CE6CBA0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_21CE47F58(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_21CE4784C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v9 = sub_21CE6D4E0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21CE6D400() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21CE481FC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21CE4799C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_21CE6BA60();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CF0, &qword_21CE73508);
  result = sub_21CE6D250();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260]);
      result = sub_21CE6CB70();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_21CE47CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  result = sub_21CE6D250();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21CE6D4B0();
      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21CE47F58(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_21CE6BA60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CE4799C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21CE4837C();
      goto LABEL_12;
    }

    sub_21CE48710(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260]);
  v15 = sub_21CE6CB70();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_21CE4B350(&qword_2812132B8, MEMORY[0x277CC9260]);
      v23 = sub_21CE6CBA0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CE6D430();
  __break(1u);
  return result;
}

uint64_t sub_21CE481FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21CE47CF8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21CE485B4();
      goto LABEL_16;
    }

    sub_21CE48A2C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  result = sub_21CE6D4E0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21CE6D400();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21CE6D430();
  __break(1u);
  return result;
}

void *sub_21CE4837C()
{
  v1 = v0;
  v2 = sub_21CE6BA60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CF0, &qword_21CE73508);
  v7 = *v0;
  v8 = sub_21CE6D240();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_21CE485B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  v2 = *v0;
  v3 = sub_21CE6D240();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21CE48710(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21CE6BA60();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CF0, &qword_21CE73508);
  v10 = sub_21CE6D250();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_21CE4B350(&qword_2812132C0, MEMORY[0x277CC9260]);
      result = sub_21CE6CB70();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_21CE48A2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  result = sub_21CE6D250();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21CE6D4B0();

      sub_21CE6CCA0();
      result = sub_21CE6D4E0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_21CE48C64(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_21CE48D04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CD8, &qword_21CE734E8);
  result = sub_21CE6D390();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_21CE6D4B0();

    v34 = v21;
    sub_21CE6CCA0();
    result = sub_21CE6D4E0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21CE48F44(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21CE49978(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21CE49070(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_21CE6D4B0();

    sub_21CE6CCA0();
    v24 = sub_21CE6D4E0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_21CE6D400() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_21CE49754(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_21CE6D4B0();

            sub_21CE6CCA0();
            v43 = sub_21CE6D4E0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_21CE6D400() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_21CE49AB4(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x21CF1BD50](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_21CDEEAA0();
    goto LABEL_53;
  }

  result = MEMORY[0x21CF1BD50](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21CE495E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_21CE49754(v21, a2, v22, v19);
      }
    }
  }

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
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE49754(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40CB0, qword_21CE734C8);
  result = sub_21CE6D260();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_21CE6D4B0();

    sub_21CE6CCA0();
    result = sub_21CE6D4E0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21CE49978(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  v7 = sub_21CE6D4E0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21CE6D400() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21CE485B4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_21CE49CEC(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_21CE49AB4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_21CE49754(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        v20 = sub_21CE6D4E0();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_21CE6D400() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t sub_21CE49CEC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_21CE6D1D0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        v15 = sub_21CE6D4E0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_21CE49EB0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_21CE4A008@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

void *sub_21CE4A090()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21CE6CC20();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  type metadata accessor for LinkMetadataIndexer();
  v3 = swift_allocObject();
  v3[2] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v4 = *MEMORY[0x277CCA1A0];
  v5 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v6 = v4;
  v7 = sub_21CE6CC20();
  v8 = [v5 initWithName:v7 protectionClass:v6];

  v3[3] = v8;
  v3[4] = v2;
  return v3;
}

void sub_21CE4A1C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_21CE48D04(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_21CE4A334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id), uint64_t a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_21CE48C64(v12, v8, v6, a2, a3, sub_21CE4A1C4);
      MEMORY[0x21CF1BD50](v12, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v10 = v13 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v10, v9);
  sub_21CE4A1C4(v10, v8, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21CE4A500(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v42 = a5;
  v43 = v7;
  v41 = v11;
  while (v10)
  {
    v50 = a4;
    v15 = v12;
LABEL_14:
    v17 = __clz(__rbit64(v10)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v49[0] = *v18;
    v49[1] = v19;
    v49[2] = v20;

    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *a5;
    v26 = sub_21CE66850(v46, v47);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v50 & 1) == 0)
      {
        sub_21CE4728C(&unk_27CE40CA0, &unk_21CE70250);
      }
    }

    else
    {
      sub_21CE464E4(v29, v50 & 1, &unk_27CE40CA0, &unk_21CE70250);
      v31 = *a5;
      v32 = sub_21CE66850(v21, v22);
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v26 = v32;
    }

    v10 &= v10 - 1;
    v34 = *a5;
    if (v30)
    {
      v49[0] = *(v34[7] + 8 * v26);

      sub_21CE3BC20(v23);

      v13 = v34[7];
      v14 = *(v13 + 8 * v26);
      *(v13 + 8 * v26) = v49[0];
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v35 = (v34[6] + 16 * v26);
      *v35 = v21;
      v35[1] = v22;
      *(v34[7] + 8 * v26) = v23;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v12 = v15;
    a5 = v42;
    v7 = v43;
    v11 = v41;
  }

  v16 = v12;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      sub_21CDEEAA0();
    }

    v10 = *(v7 + 8 * v15);
    ++v16;
    if (v10)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_21CE6D440();
  __break(1u);
  return result;
}

uint64_t sub_21CE4A7CC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v47 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v51[0] = *v19;
    v51[1] = v20;
    v51[2] = v21;

    a2(&v48, v51);

    v22 = v48;
    v23 = v49;
    v24 = v50;
    v25 = *v52;
    v27 = sub_21CE66850(v48, v49);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_26;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v47 & 1) == 0)
      {
        sub_21CE4728C(&qword_27CE3FED8, &qword_21CE734C0);
      }
    }

    else
    {
      v32 = v52;
      sub_21CE464E4(v30, v47 & 1, &qword_27CE3FED8, &qword_21CE734C0);
      v33 = *v32;
      v34 = sub_21CE66850(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_28;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v52;
    if (v31)
    {
      v37 = *(v36[7] + 8 * v27);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51[0] = v37;
      sub_21CE4A500(v24, sub_21CE4B3CC, 0, isUniquelyReferenced_nonNull_native, v51);
      if (v45)
      {
        goto LABEL_29;
      }

      swift_bridgeObjectRelease_n();
      v39 = v36[7];
      v40 = *(v39 + 8 * v27);
      *(v39 + 8 * v27) = v51[0];
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v12 = (v36[6] + 16 * v27);
      *v12 = v22;
      v12[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v13 = v36[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_27;
      }

      v36[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v43;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_21CDEEAA0();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v47 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_21CE6D440();
  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateToSpotlightAsync()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21CDE7888;

  return v6();
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateDeeplinks(filteredTo:dryRun:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21CE4B3C0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateDeeplinks(filteredToAppIntent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CE4B3C0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of LinkMetadataIndexer.donateDeeplinks(filteredTo:filteredToAppIntent:dryRun:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 200);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_21CE4B0A4;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_21CE4B0A4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of LinkMetadataIndexer.deleteDeeplinks(withDomainIdentifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CDE7A00;

  return v8(a1);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21CE4B2EC()
{
  result = qword_27CE40308;
  if (!qword_27CE40308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40300, &unk_21CE71920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40308);
  }

  return result;
}

uint64_t sub_21CE4B350(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21CE4B3D4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_21CE6D1C0();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_21CE536B4(&v5, v3, *(a1 + 36), 0, a1);
  }
}

unint64_t sub_21CE4B458()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - v7;
  v9 = sub_21CDFA548(MEMORY[0x277D84F90]);
  v65 = v9;
  v10 = [v1 attributeSet];
  v11 = [v10 title];

  v12 = MEMORY[0x277D837D0];
  if (v11)
  {
    v13 = sub_21CE6CC50();
    v15 = v14;

    v64 = v12;
    *&v62 = v13;
    *(&v62 + 1) = v15;
    sub_21CDFA678(&v62, &v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v9;
    sub_21CE06868(&v60, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v65 = v59;
  }

  else
  {
    sub_21CE598FC(0x656C746974, 0xE500000000000000, &v62);
    sub_21CDE5494(&v62, &qword_27CE40410, &qword_21CE71B10);
  }

  v17 = [v1 attributeSet];
  v18 = [v17 subtitle];

  if (v18)
  {
    v19 = sub_21CE6CC50();
    v21 = v20;

    v64 = v12;
    *&v62 = v19;
    *(&v62 + 1) = v21;
    sub_21CDFA678(&v62, &v60);
    v22 = v65;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v22;
    sub_21CE06868(&v60, 0x656C746974627573, 0xE800000000000000, v23);
    v65 = v59;
  }

  else
  {
    sub_21CE598FC(0x656C746974627573, 0xE800000000000000, &v62);
    sub_21CDE5494(&v62, &qword_27CE40410, &qword_21CE71B10);
  }

  v24 = [v1 attributeSet];
  v25 = [v24 URL];

  if (v25)
  {
    sub_21CE6B9F0();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_21CE6BA60();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v6, v26, 1, v27);
  sub_21CE53750(v6, v8);
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {
    sub_21CDE5494(v8, &unk_27CE40310, &qword_21CE71470);
    sub_21CE598FC(7107189, 0xE300000000000000, &v62);
    sub_21CDE5494(&v62, &qword_27CE40410, &qword_21CE71B10);
  }

  else
  {
    v64 = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
    (*(v28 + 32))(boxed_opaque_existential_1, v8, v27);
    sub_21CDFA678(&v62, &v60);
    v30 = v65;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v30;
    sub_21CE06868(&v60, 7107189, 0xE300000000000000, v31);
    v65 = v59;
  }

  v32 = [v1 attributeSet];
  v33 = [v32 keywords];

  if (v33)
  {
    v34 = sub_21CE6CD40();

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
    *&v62 = v34;
    sub_21CDFA678(&v62, &v60);
    v35 = v65;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v35;
    sub_21CE06868(&v60, 0x7364726F7779656BLL, 0xE800000000000000, v36);
    v65 = v59;
  }

  else
  {
    sub_21CE598FC(0x7364726F7779656BLL, 0xE800000000000000, &v62);
    sub_21CDE5494(&v62, &qword_27CE40410, &qword_21CE71B10);
  }

  v37 = [v1 attributeSet];
  v38 = [v37 textContent];

  if (v38)
  {
    v39 = sub_21CE6CC50();
    v41 = v40;

    v64 = v12;
    *&v62 = v39;
    *(&v62 + 1) = v41;
    sub_21CDFA678(&v62, &v60);
    v42 = v65;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v42;
    sub_21CE06868(&v60, 0x7470697263736564, 0xEB000000006E6F69, v43);
    v65 = v59;
  }

  else
  {
    sub_21CE598FC(0x7470697263736564, 0xEB000000006E6F69, &v62);
    sub_21CDE5494(&v62, &qword_27CE40410, &qword_21CE71B10);
  }

  v44 = [v1 attributeSet];
  v45 = [v44 thumbnailBundleID];

  if (v45)
  {
    v46 = sub_21CE6CC50();
    v48 = v47;

    *(&v61 + 1) = v12;
    *&v60 = v46;
    *(&v60 + 1) = v48;
    sub_21CDFA678(&v60, &v62);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v49 = [v1 attributeSet];
    v50 = [v49 thumbnailContentType];

    if (v50)
    {
      v51 = sub_21CE6CC50();
      v53 = v52;

      v54 = MEMORY[0x277D837D0];
    }

    else
    {
      v51 = 0;
      v53 = 0;
      v54 = 0;
      v63 = 0;
    }

    *&v62 = v51;
    *(&v62 + 1) = v53;
    v64 = v54;
    if (*(&v61 + 1))
    {
      sub_21CDE5494(&v60, &qword_27CE40410, &qword_21CE71B10);
    }
  }

  if (v64)
  {
    sub_21CDFA678(&v62, &v60);
    v55 = v65;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v55;
    sub_21CE06868(&v60, 1852793705, 0xE400000000000000, v56);
    return v59;
  }

  else
  {
    sub_21CDE5494(&v62, &qword_27CE40410, &qword_21CE71B10);
    sub_21CE598FC(1852793705, 0xE400000000000000, &v60);
    sub_21CDE5494(&v60, &qword_27CE40410, &qword_21CE71B10);
    return v65;
  }
}

id sub_21CE4BBC4()
{
  v0 = sub_21CE6B870();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_21CE6B990() + 16);

  result = sub_21CE6BA20();
  if (v7)
  {
    v13[0] = result;
    v13[1] = v7;
    sub_21CE6B860();
    sub_21CE1570C();
    v8 = sub_21CE6D160();
    (*(v1 + 8))(v4, v0);

    v9 = *(v8 + 16);

    v10 = v5 + v9;
    if (__OFADD__(v5, v9))
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    v10 = v5;
  }

  if (v10 > 100)
  {
    v11 = 0;
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v12 = __OFSUB__(100 - v5, v9);
  v11 = 100 - v5 - v9;
  if (!v12)
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall URL.relatedAppBundleIdentifier()()
{
  v0 = sub_21CE6BA30();
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v0 == 0xD000000000000013 && v1 == 0x800000021CE78990)
  {
  }

  else
  {
    v2 = sub_21CE6D400();

    if ((v2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v3 = sub_21CE6BA00();
  if (!v1)
  {
LABEL_10:
    v4 = 0;
    goto LABEL_17;
  }

  if (v3 == 0xD000000000000017 && v1 == 0x800000021CE789B0)
  {

    goto LABEL_12;
  }

  v5 = sub_21CE6D400();

  if ((v5 & 1) == 0)
  {
LABEL_15:
    v4 = 0;
    v1 = 0;
    goto LABEL_17;
  }

LABEL_12:
  v6 = *(sub_21CE6B990() + 16);

  if (v6 < 2)
  {
    goto LABEL_15;
  }

  v4 = sub_21CE6B990();
  if (v4[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v8 = v4[6];
    v7 = v4[7];

    v1 = v7;
    v4 = v8;
  }

LABEL_17:
  result.value._object = v1;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_21CE4BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21CE4B0A4;

  return v13(a1, a2, a3, a4);
}

void *sub_21CE4BFC0(void *a1)
{
  v2 = sub_21CE6BB40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CE6BD60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21CE6BD40();
  v13 = sub_21CE6BD30();
  (*(v8 + 8))(v11, v7);
  v14 = a1;
  v15 = [v12 initWithContentType_];

  v16 = v15;
  sub_21CE6BB30();
  v17 = sub_21CE6BB10();
  v19 = v18;
  (*(v3 + 8))(v6, v2);
  v20 = [a1 title];
  v75 = v17;
  v21 = sub_21CE6CC20();
  v22 = [v20 localizedStringForLocaleIdentifier_];

  if (!v22)
  {
    sub_21CE6CC50();
    v22 = sub_21CE6CC20();
  }

  [v16 setTitle_];

  v23 = [a1 subtitle];
  v24 = v16;
  if (v23)
  {
    v25 = v23;
    v26 = sub_21CE6CC20();
    v27 = [v25 localizedStringForLocaleIdentifier_];

    if (!v27)
    {
      sub_21CE6CC50();
      v27 = sub_21CE6CC20();
    }
  }

  else
  {
    v27 = 0;
  }

  [v16 setSubtitle_];

  v28 = [a1 synonyms];
  if (v28)
  {
    sub_21CDE40C8(0, &unk_281211A10, 0x277D23910);
    v29 = sub_21CE6CD40();

    if (v29 >> 62)
    {
      v30 = sub_21CE6D360();
      if (v30)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_10:
        v76 = MEMORY[0x277D84F90];
        sub_21CDE4558(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          __break(1u);
          goto LABEL_53;
        }

        v73 = v16;
        v74 = a1;
        v31 = 0;
        v32 = v76;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x21CF1B2A0](v31, v29);
          }

          else
          {
            v33 = *(v29 + 8 * v31 + 32);
          }

          v34 = v33;
          v35 = sub_21CE6CC20();
          v36 = [v34 localizedStringForLocaleIdentifier_];

          v37 = sub_21CE6CC50();
          v39 = v38;

          v76 = v32;
          v41 = *(v32 + 16);
          v40 = *(v32 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_21CDE4558((v40 > 1), v41 + 1, 1);
            v32 = v76;
          }

          ++v31;
          *(v32 + 16) = v41 + 1;
          v42 = v32 + 16 * v41;
          *(v42 + 32) = v37;
          *(v42 + 40) = v39;
        }

        while (v30 != v31);

        v24 = v73;
        v14 = v74;
        goto LABEL_21;
      }
    }

LABEL_21:
    v28 = sub_21CE6CD30();
  }

  [v24 setKeywords_];

  v43 = [v14 descriptionText];
  if (v43)
  {
    v44 = v43;
    v45 = sub_21CE6CC20();

    v46 = [v44 localizedStringForLocaleIdentifier_];

    v47 = &off_278323000;
    if (v46)
    {
      goto LABEL_27;
    }

    sub_21CE6CC50();
    v46 = sub_21CE6CC20();
  }

  else
  {
    v46 = 0;
    v47 = &off_278323000;
  }

LABEL_27:
  [v24 setTextContent_];

  v48 = [v24 v47[478]];
  [v24 setSubject_];

  v49 = [v24 subtitle];
  [v24 setContentDescription_];

  v50 = [v14 image];
  if (v50)
  {
    v19 = v50;
    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = [v51 iconType];
      if (v53 == 1)
      {
        v54 = [v52 identifier];
        if (!v54)
        {
          sub_21CE6CC50();
          v54 = sub_21CE6CC20();
        }

        [v24 setThumbnailContentType_];
        goto LABEL_44;
      }

      if (!v53)
      {
        v54 = [v52 identifier];
        if (!v54)
        {
          sub_21CE6CC50();
          v54 = sub_21CE6CC20();
        }

        [v24 setThumbnailBundleID_];
LABEL_44:

        v67 = sub_21CE6CC20();
        [v24 setBundleIdentifier_];

        goto LABEL_45;
      }

      if (qword_281213298 == -1)
      {
LABEL_47:
        v68 = sub_21CE6BDA0();
        __swift_project_value_buffer(v68, qword_2812165F0);
        v54 = sub_21CE6BD80();
        v69 = sub_21CE6CF10();
        if (os_log_type_enabled(v54, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_21CDE1000, v54, v69, "Unknown icon type", v70, 2u);
          MEMORY[0x21CF1BD50](v70, -1, -1);
        }

        goto LABEL_44;
      }

LABEL_53:
      swift_once();
      goto LABEL_47;
    }
  }

  if (qword_281213298 != -1)
  {
    swift_once();
  }

  v55 = sub_21CE6BDA0();
  __swift_project_value_buffer(v55, qword_2812165F0);
  v56 = v24;
  v57 = sub_21CE6BD80();
  v58 = sub_21CE6CF10();

  if (!os_log_type_enabled(v57, v58))
  {

LABEL_45:
    return v24;
  }

  v59 = v24;
  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v76 = v61;
  *v60 = 136315138;
  v62 = [v56 v47[478]];
  if (v62)
  {
    v63 = v62;
    v64 = sub_21CE6CC50();
    v66 = v65;
  }

  else
  {
    v66 = 0xE200000000000000;
    v64 = 10023;
  }

  v71 = sub_21CDF2CC8(v64, v66, &v76);

  *(v60 + 4) = v71;
  _os_log_impl(&dword_21CDE1000, v57, v58, "Missing icon for DisplayRepresentation(title:%s", v60, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v61);
  MEMORY[0x21CF1BD50](v61, -1, -1);
  MEMORY[0x21CF1BD50](v60, -1, -1);

  return v59;
}

uint64_t sub_21CE4C8D8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v5 = sub_21CE6BA60();
  v3[46] = v5;
  v6 = *(v5 - 8);
  v3[47] = v6;
  v7 = *(v6 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CE4CA30, 0, 0);
}

uint64_t sub_21CE4CA30()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 272) = MEMORY[0x277D84F90];
  v3 = [objc_opt_self() policyWithEnumMetadata_];
  *(v0 + 400) = v3;
  *(v0 + 280) = 0;
  v4 = [v3 connectionWithError_];
  *(v0 + 408) = v4;
  v5 = *(v0 + 280);
  if (v4)
  {
    v6 = *(v0 + 328);
    v7 = v5;
    v8 = [v6 cases];
    sub_21CDE40C8(0, &unk_281211A48, 0x277D23830);
    v9 = sub_21CE6CD40();
    *(v0 + 416) = v9;

    if (v9 >> 62)
    {
      v36 = sub_21CE6D360();
      *(v0 + 424) = v36;
      if (v36)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 424) = v10;
      if (v10)
      {
LABEL_4:
        v11 = sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
        *(v0 + 440) = v2;
        *(v0 + 448) = v2;
        *(v0 + 432) = v11;
        v12 = *(v0 + 416);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CF1B2A0](0);
          v14 = *(v0 + 432);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v13 = *(v12 + 32);
        }

        *(v0 + 456) = v13;
        *(v0 + 464) = 1;
        v25 = *(v0 + 328);
        v26 = [v13 displayRepresentation];
        *(v0 + 472) = v26;
        v27 = sub_21CE4BFC0(v26);
        *(v0 + 480) = v27;
        v28 = [v25 identifier];
        if (!v28)
        {
          sub_21CE6CC50();
          v28 = sub_21CE6CC20();
        }

        v29 = *(v0 + 328);
        [v27 setIdentifier_];

        v30 = [v29 identifier];
        if (!v30)
        {
          sub_21CE6CC50();
          v30 = sub_21CE6CC20();
        }

        *(v0 + 488) = v30;
        v31 = [v13 identifier];
        if (!v31)
        {
          sub_21CE6CC50();
          v31 = sub_21CE6CC20();
        }

        *(v0 + 496) = v31;
        v32 = *(v0 + 408);
        v33 = *(v0 + 360);
        *(v0 + 16) = v0;
        *(v0 + 56) = v33;
        *(v0 + 24) = sub_21CE4CF44;
        v34 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_21CE4E508;
        *(v0 + 104) = &block_descriptor_8;
        *(v0 + 112) = v34;
        [v32 fetchURLForEnumWithIdentifier:v30 caseIdentifier:v31 completionHandler:v0 + 80];
        v35 = *MEMORY[0x277D85DE8];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    v38 = *(v0 + 408);
    v37 = *(v0 + 416);
    v39 = *(v0 + 392);
    v40 = *(v0 + 384);
    v42 = *(v0 + 352);
    v41 = *(v0 + 360);
    v44 = *(v0 + 336);
    v43 = *(v0 + 344);

    v45 = *(v0 + 8);
    v46 = *MEMORY[0x277D85DE8];
    v47 = MEMORY[0x277D84F90];

    return v45(v47);
  }

  else
  {
    v15 = v5;
    sub_21CE6B910();

    swift_willThrow();
    v17 = *(v0 + 384);
    v16 = *(v0 + 392);
    v19 = *(v0 + 352);
    v18 = *(v0 + 360);
    v21 = *(v0 + 336);
    v20 = *(v0 + 344);

    v22 = *(v0 + 8);
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }
}

uint64_t sub_21CE4CF44()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = sub_21CE4DDE8;
  }

  else
  {
    v3 = sub_21CE4D080;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CE4D080()
{
  v148 = v0;
  v147[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);
  sub_21CE53750(*(v0 + 360), v3);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 488);
  v7 = *(v0 + 496);
  if (v5 == 1)
  {
    sub_21CDE5494(*(v0 + 352), &unk_27CE40310, &qword_21CE71470);

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 472);
    v9 = sub_21CE6BDA0();
    __swift_project_value_buffer(v9, qword_2812165F0);
    v10 = v8;
    v11 = sub_21CE6BD80();
    v12 = sub_21CE6CF10();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v14 title];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_21CDE1000, v11, v12, "Error fetching URL for %@", v17, 0xCu);
      sub_21CDE5494(v18, &unk_27CE40D20, &qword_21CE70EA0);
      MEMORY[0x21CF1BD50](v18, -1, -1);
      MEMORY[0x21CF1BD50](v17, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 440);
    v24 = *(v0 + 448);
  }

  else
  {
    v20 = *(v0 + 480);
    (*(*(v0 + 376) + 32))(*(v0 + 392), *(v0 + 352), *(v0 + 368));

    v21 = sub_21CE6B9B0();
    [v20 setURL_];

    if (URL.relatedAppBundleIdentifier()().value._object)
    {
      v22 = sub_21CE6CC20();
    }

    else
    {
      v22 = 0;
    }

    v25 = *(v0 + 480);
    v26 = *(v0 + 392);
    [v25 setRelatedAppBundleIdentifier_];

    v27 = sub_21CE4BBC4();
    [v25 setRankingHint_];

    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 480);
    v29 = *(v0 + 328);
    v30 = sub_21CE6BDA0();
    __swift_project_value_buffer(v30, qword_2812165F0);
    v31 = v28;
    v32 = v29;
    v33 = sub_21CE6BD80();
    v34 = sub_21CE6CF00();

    if (os_log_type_enabled(v33, v34))
    {
      v145 = v34;
      v146 = v4;
      v35 = *(v0 + 480);
      v36 = *(v0 + 328);
      v37 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *(v0 + 304) = v144;
      *v37 = 136317187;
      v38 = [v36 mangledTypeName];
      v39 = sub_21CE6CC50();
      v41 = v40;

      v42 = sub_21CDF2CC8(v39, v41, (v0 + 304));

      *(v37 + 4) = v42;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      v43 = [v35 title];
      if (v43)
      {
        v44 = v43;
        v45 = sub_21CE6CC50();
        v47 = v46;
      }

      else
      {
        v47 = 0xE200000000000000;
        v45 = 10023;
      }

      v48 = *(v0 + 480);
      v49 = sub_21CDF2CC8(v45, v47, (v0 + 304));

      *(v37 + 24) = v49;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v50 = [v48 subtitle];
      if (v50)
      {
        v51 = v50;
        v52 = sub_21CE6CC50();
        v54 = v53;
      }

      else
      {
        v54 = 0xE200000000000000;
        v52 = 10023;
      }

      v143 = v33;
      v55 = *(v0 + 480);
      v56 = sub_21CDF2CC8(v52, v54, (v0 + 304));

      *(v37 + 44) = v56;
      *(v37 + 52) = 2160;
      *(v37 + 54) = 1752392040;
      *(v37 + 62) = 2081;
      v57 = [v55 keywords];
      if (v57)
      {
        v58 = v57;
        v59 = sub_21CE6CD40();
      }

      else
      {
        v59 = MEMORY[0x277D84F90];
      }

      v60 = *(v0 + 480);
      v61 = MEMORY[0x21CF1AD30](v59, MEMORY[0x277D837D0]);
      v63 = v62;

      v64 = sub_21CDF2CC8(v61, v63, (v0 + 304));

      *(v37 + 64) = v64;
      *(v37 + 72) = 2160;
      *(v37 + 74) = 1752392040;
      *(v37 + 82) = 2081;
      v65 = [v60 URL];
      if (v65)
      {
        v66 = *(v0 + 336);
        v67 = v65;
        sub_21CE6B9F0();

        v68 = 0;
      }

      else
      {
        v68 = 1;
      }

      v69 = *(v0 + 368);
      v71 = *(v0 + 336);
      v70 = *(v0 + 344);
      (*(*(v0 + 376) + 56))(v71, v68, 1, v69);
      sub_21CE53750(v71, v70);
      if (v146(v70, 1, v69))
      {
        sub_21CDE5494(*(v0 + 344), &unk_27CE40310, &qword_21CE71470);
        v72 = 0xE200000000000000;
        v73 = 10023;
      }

      else
      {
        v74 = *(v0 + 376);
        v75 = *(v0 + 384);
        v76 = *(v0 + 368);
        v77 = *(v0 + 344);
        (*(v74 + 16))(v75, v77, v76);
        sub_21CDE5494(v77, &unk_27CE40310, &qword_21CE71470);
        v78 = sub_21CE6B980();
        v72 = v79;
        (*(v74 + 8))(v75, v76);
        v73 = v78;
      }

      v80 = sub_21CDF2CC8(v73, v72, (v0 + 304));

      *(v37 + 84) = v80;
      _os_log_impl(&dword_21CDE1000, v33, v145, "LNEnumMetadata:  %s  CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v37, 0x5Cu);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v144, -1, -1);
      MEMORY[0x21CF1BD50](v37, -1, -1);
    }

    else
    {
    }

    v81 = *(v0 + 320);
    v82 = *(v0 + 328);
    *(v0 + 208) = *(v0 + 312);
    *(v0 + 216) = v81;

    v83 = [v82 mangledTypeNameByBundleIdentifier];
    v84 = sub_21CE6CB60();

    v85 = sub_21CE4B3D4(v84);
    v87 = v86;

    if (v87)
    {

      *(v0 + 224) = v85;
      *(v0 + 232) = v87;
      *(v0 + 240) = 0x6C7070612E6D6F63;
      *(v0 + 248) = 0xEA00000000002E65;
      sub_21CE537C0();
      sub_21CE6CED0();

      v88 = *(v0 + 160);
      v89 = *(v0 + 168);
      *(v0 + 256) = 46;
      *(v0 + 264) = 0xE100000000000000;
      *(v0 + 176) = *(v0 + 144);
      *(v0 + 192) = v88;
      *(v0 + 200) = v89;
      sub_21CE53814();
      sub_21CE6CCC0();

      MEMORY[0x21CF1ACB0](*(v0 + 256), *(v0 + 264));
    }

    else
    {
      v90 = *(v0 + 328);
      v91 = sub_21CE6BD80();
      v92 = sub_21CE6CF10();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = *(v0 + 328);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v147[0] = v95;
        *v94 = 136315138;
        v96 = [v93 description];
        v97 = sub_21CE6CC50();
        v99 = v98;

        v100 = sub_21CDF2CC8(v97, v99, v147);

        *(v94 + 4) = v100;
        _os_log_impl(&dword_21CDE1000, v91, v92, "Unknown bundle domain for %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x21CF1BD50](v95, -1, -1);
        MEMORY[0x21CF1BD50](v94, -1, -1);
      }
    }

    v101 = *(v0 + 480);
    v102 = *(v0 + 392);
    sub_21CE6B980();
    v103 = *(v0 + 208);
    v104 = *(v0 + 216);
    v105 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v106 = v101;
    v107 = sub_21CE6CC20();

    v108 = sub_21CE6CC20();

    [v105 initWithUniqueIdentifier:v107 domainIdentifier:v108 attributeSet:v106];

    MEMORY[0x21CF1AD00]();
    if (*((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v142 = *((*(v0 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21CE6CD60();
    }

    v110 = *(v0 + 472);
    v109 = *(v0 + 480);
    v111 = *(v0 + 456);
    v112 = *(v0 + 392);
    v113 = *(v0 + 368);
    v114 = *(v0 + 376);
    sub_21CE6CD80();

    (*(v114 + 8))(v112, v113);
    v23 = *(v0 + 272);
    v24 = v23;
  }

  v115 = *(v0 + 464);
  if (v115 == *(v0 + 424))
  {
    v117 = *(v0 + 408);
    v116 = *(v0 + 416);
    v118 = *(v0 + 392);
    v119 = *(v0 + 384);
    v121 = *(v0 + 352);
    v120 = *(v0 + 360);
    v123 = *(v0 + 336);
    v122 = *(v0 + 344);

    v124 = *(v0 + 8);
    v125 = *MEMORY[0x277D85DE8];

    return v124(v24);
  }

  *(v0 + 440) = v23;
  *(v0 + 448) = v24;
  v127 = *(v0 + 416);
  if ((v127 & 0xC000000000000001) != 0)
  {
    v128 = MEMORY[0x21CF1B2A0](v115);
  }

  else
  {
    if (v115 >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v128 = *(v127 + 8 * v115 + 32);
  }

  v129 = v128;
  *(v0 + 456) = v128;
  *(v0 + 464) = v115 + 1;
  if (__OFADD__(v115, 1))
  {
    __break(1u);
LABEL_58:
    __break(1u);
  }

  v130 = *(v0 + 432);
  v131 = *(v0 + 328);
  v132 = [v128 displayRepresentation];
  *(v0 + 472) = v132;
  v133 = sub_21CE4BFC0(v132);
  *(v0 + 480) = v133;
  v134 = [v131 identifier];
  if (!v134)
  {
    sub_21CE6CC50();
    v134 = sub_21CE6CC20();
  }

  v135 = *(v0 + 328);
  [v133 setIdentifier_];

  v136 = [v135 identifier];
  if (!v136)
  {
    sub_21CE6CC50();
    v136 = sub_21CE6CC20();
  }

  *(v0 + 488) = v136;
  v137 = [v129 identifier];
  if (!v137)
  {
    sub_21CE6CC50();
    v137 = sub_21CE6CC20();
  }

  *(v0 + 496) = v137;
  v138 = *(v0 + 408);
  v139 = *(v0 + 360);
  *(v0 + 16) = v0;
  *(v0 + 56) = v139;
  *(v0 + 24) = sub_21CE4CF44;
  v140 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21CE4E508;
  *(v0 + 104) = &block_descriptor_8;
  *(v0 + 112) = v140;
  [v138 fetchURLForEnumWithIdentifier:v136 caseIdentifier:v137 completionHandler:v0 + 80];
  v141 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21CE4DDE8()
{
  v77 = v0;
  v76[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  swift_willThrow();

  *(v0 + 288) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 296);
    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 456);
    v7 = *(v0 + 328);
    v8 = sub_21CE6BDA0();
    __swift_project_value_buffer(v8, qword_2812165F0);
    v9 = v7;
    v10 = v6;
    v11 = v5;
    v12 = sub_21CE6BD80();
    v13 = sub_21CE6CF20();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);
    if (v14)
    {
      v17 = *(v0 + 328);
      v74 = *(v0 + 472);
      v75 = *(v0 + 480);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76[0] = v73;
      *v18 = 136315650;
      v20 = [v17 identifier];
      v21 = sub_21CE6CC50();
      v23 = v22;

      v24 = sub_21CDF2CC8(v21, v23, v76);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v25 = [v16 identifier];
      v26 = sub_21CE6CC50();
      v28 = v27;

      v29 = sub_21CDF2CC8(v26, v28, v76);

      *(v18 + 14) = v29;
      *(v18 + 22) = 2112;
      *(v18 + 24) = v11;
      *v19 = v11;
      v30 = v11;
      _os_log_impl(&dword_21CDE1000, v12, v13, "Error during %s:%s URL request %@", v18, 0x20u);
      sub_21CDE5494(v19, &unk_27CE40D20, &qword_21CE70EA0);
      MEMORY[0x21CF1BD50](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v73, -1, -1);
      MEMORY[0x21CF1BD50](v18, -1, -1);
    }

    else
    {
    }

    v47 = *(v0 + 464);
    v48 = *(v0 + 416);
    if (v47 == *(v0 + 424))
    {
      v49 = *(v0 + 448);
      v50 = *(v0 + 408);
      v52 = *(v0 + 384);
      v51 = *(v0 + 392);
      v54 = *(v0 + 352);
      v53 = *(v0 + 360);
      v56 = *(v0 + 336);
      v55 = *(v0 + 344);

      v57 = *(v0 + 8);
      v58 = *MEMORY[0x277D85DE8];

      return v57(v49);
    }

    if ((v48 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x21CF1B2A0](*(v0 + 464), *(v0 + 416));
    }

    else
    {
      if (v47 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v59 = *(v48 + 8 * v47 + 32);
    }

    v60 = v59;
    *(v0 + 456) = v59;
    *(v0 + 464) = v47 + 1;
    if (!__OFADD__(v47, 1))
    {
      v61 = *(v0 + 432);
      v62 = *(v0 + 328);
      v63 = [v59 displayRepresentation];
      *(v0 + 472) = v63;
      v64 = sub_21CE4BFC0(v63);
      *(v0 + 480) = v64;
      v65 = [v62 identifier];
      if (!v65)
      {
        sub_21CE6CC50();
        v65 = sub_21CE6CC20();
      }

      v66 = *(v0 + 328);
      [v64 setIdentifier_];

      v67 = [v66 identifier];
      if (!v67)
      {
        sub_21CE6CC50();
        v67 = sub_21CE6CC20();
      }

      *(v0 + 488) = v67;
      v68 = [v60 identifier];
      if (!v68)
      {
        sub_21CE6CC50();
        v68 = sub_21CE6CC20();
      }

      *(v0 + 496) = v68;
      v69 = *(v0 + 408);
      v70 = *(v0 + 360);
      *(v0 + 16) = v0;
      *(v0 + 56) = v70;
      *(v0 + 24) = sub_21CE4CF44;
      v71 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_21CE4E508;
      *(v0 + 104) = &block_descriptor_8;
      *(v0 + 112) = v71;
      [v69 fetchURLForEnumWithIdentifier:v67 caseIdentifier:v68 completionHandler:v0 + 80];
      v72 = *MEMORY[0x277D85DE8];

      return MEMORY[0x282200938](v0 + 16);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  v32 = *(v0 + 472);
  v31 = *(v0 + 480);
  v33 = *(v0 + 456);
  v34 = *(v0 + 440);
  v35 = *(v0 + 416);
  v36 = *(v0 + 400);

  v37 = *(v0 + 504);
  v39 = *(v0 + 384);
  v38 = *(v0 + 392);
  v41 = *(v0 + 352);
  v40 = *(v0 + 360);
  v43 = *(v0 + 336);
  v42 = *(v0 + 344);

  v44 = *(v0 + 8);
  v45 = *MEMORY[0x277D85DE8];

  return v44();
}

uint64_t sub_21CE4E508(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    v14 = swift_allocError();
    *v15 = a3;
    v16 = a3;

    return MEMORY[0x282200958](v13, v14);
  }

  else
  {
    if (a2)
    {
      sub_21CE6B9F0();
      v17 = sub_21CE6BA60();
      (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    }

    else
    {
      v18 = sub_21CE6BA60();
      (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    }

    sub_21CE53750(v10, v12);
    sub_21CE53750(v12, *(*(v13 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_21CE4E6E4()
{
  v1 = [v0 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40CC8, &qword_21CE734E0);
  sub_21CE53868();
  v2 = sub_21CE6CB60();

  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *MEMORY[0x277D23708];

  v9 = 0;
  while (v5)
  {
LABEL_9:
    v11 = *(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = sub_21CE6CC50();
    v14 = v13;
    if (v12 == sub_21CE6CC50() && v14 == v15)
    {

      goto LABEL_17;
    }

    v5 &= v5 - 1;
    v17 = sub_21CE6D400();

    if (v17)
    {

LABEL_17:

      return 1;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return 0;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE4E8B0(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3[68] = v2;
  v3[67] = a2;
  v3[66] = a1;
  v4 = sub_21CE6BA60();
  v3[69] = v4;
  v5 = *(v4 - 8);
  v3[70] = v5;
  v6 = *(v5 + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470) - 8) + 64) + 15;
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v8 = sub_21CE6D0C0();
  v3[85] = v8;
  v9 = *(v8 - 8);
  v3[86] = v9;
  v10 = *(v9 + 64) + 15;
  v3[87] = swift_task_alloc();
  v11 = sub_21CE6D0D0();
  v3[88] = v11;
  v12 = *(v11 - 8);
  v3[89] = v12;
  v13 = *(v12 + 64) + 15;
  v3[90] = swift_task_alloc();
  v14 = sub_21CE6BD60();
  v3[91] = v14;
  v15 = *(v14 - 8);
  v3[92] = v15;
  v16 = *(v15 + 64) + 15;
  v3[93] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CE4EB80, 0, 0);
}

uint64_t sub_21CE4EB80()
{
  v92 = v0;
  v91[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);
  v74 = *(v0 + 720);
  v77 = *(v0 + 704);
  v5 = *(v0 + 688);
  v80 = *(v0 + 696);
  v83 = *(v0 + 680);
  v6 = *(v0 + 544);
  v87 = [objc_opt_self() policyWithEntityMetadata_];
  *(v0 + 752) = v87;
  v7 = [objc_allocWithZone(MEMORY[0x277D23C68]) init];
  *(v0 + 760) = v7;
  sub_21CE6BD50();
  sub_21CE6BD20();
  (*(v2 + 8))(v1, v3);
  v8 = objc_allocWithZone(MEMORY[0x277D237C8]);
  v9 = sub_21CE6CC20();

  v10 = [v8 initWithContentType_];

  v11 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v10 preferredExtractionType:1];
  [v7 setExportConfiguration_];

  v12 = sub_21CE4E6E4();
  v13 = MEMORY[0x277D23A58];
  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x277D23A30];
  }

  (*(v4 + 104))(v74, *v13, v77);
  sub_21CDE40C8(0, &qword_281211A28, 0x277D23B90);
  *v80 = v6;
  (*(v5 + 104))(v80, *MEMORY[0x277D23A40], v83);
  v14 = v6;
  v15 = v7;
  v16 = sub_21CE6D0E0();
  *(v0 + 768) = v16;
  *(v0 + 464) = MEMORY[0x277D84F90];
  *(v0 + 472) = 0;
  v17 = [v87 connectionWithError_];
  *(v0 + 776) = v17;
  v18 = *(v0 + 472);
  if (v17)
  {
    v19 = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 496;
    *(v0 + 24) = sub_21CE4F38C;
    v20 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D30, &qword_21CE735D8);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CDE6724;
    *(v0 + 168) = &block_descriptor_8;
    *(v0 + 176) = v20;
    v21 = v18;
    [v19 performConfigurableQuery:v16 completionHandler:v0 + 144];
    v22 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v23 = v18;
    v24 = sub_21CE6B910();

    swift_willThrow();
    *(v0 + 480) = v24;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v26 = *(v0 + 488);
      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v27 = sub_21CE6BDA0();
      __swift_project_value_buffer(v27, qword_2812165F0);
      v28 = v26;
      v29 = sub_21CE6BD80();
      v30 = sub_21CE6CF20();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 768);
      v33 = *(v0 + 760);
      v34 = *(v0 + 752);
      if (v31)
      {
        v88 = *(v0 + 752);
        v35 = swift_slowAlloc();
        v84 = v32;
        v36 = swift_slowAlloc();
        v91[0] = v36;
        *v35 = 136315138;
        v37 = [v28 localizedDescription];
        v38 = sub_21CE6CC50();
        v40 = v39;

        v41 = sub_21CDF2CC8(v38, v40, v91);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_21CDE1000, v29, v30, "Error performing entity query %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x21CF1BD50](v36, -1, -1);
        MEMORY[0x21CF1BD50](v35, -1, -1);
      }

      else
      {
      }

      v52 = *(v0 + 744);
      v53 = *(v0 + 720);
      v54 = *(v0 + 696);
      v55 = *(v0 + 672);
      v56 = *(v0 + 664);
      v57 = *(v0 + 656);
      v58 = *(v0 + 648);
      v59 = *(v0 + 640);
      v60 = *(v0 + 632);
      v61 = *(v0 + 624);
      v71 = *(v0 + 616);
      v73 = *(v0 + 608);
      v76 = *(v0 + 600);
      v79 = *(v0 + 592);
      v82 = *(v0 + 584);
      v86 = *(v0 + 576);
      v90 = *(v0 + 568);

      v62 = *(v0 + 8);
      v63 = *MEMORY[0x277D85DE8];
      v64 = MEMORY[0x277D84F90];

      return v62(v64);
    }

    else
    {
      v42 = *(v0 + 768);
      v43 = *(v0 + 752);
      v44 = *(v0 + 744);
      v45 = *(v0 + 720);
      v46 = *(v0 + 696);
      v47 = *(v0 + 672);
      v48 = *(v0 + 664);
      v49 = *(v0 + 656);
      v66 = *(v0 + 648);
      v67 = *(v0 + 640);
      v68 = *(v0 + 632);
      v69 = *(v0 + 624);
      v70 = *(v0 + 616);
      v72 = *(v0 + 608);
      v75 = *(v0 + 600);
      v78 = *(v0 + 592);
      v81 = *(v0 + 584);
      v85 = *(v0 + 576);
      v89 = *(v0 + 568);

      v50 = *(v0 + 8);
      v51 = *MEMORY[0x277D85DE8];

      return v50();
    }
  }
}

uint64_t sub_21CE4F38C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 784) = v2;
  if (v2)
  {
    v3 = sub_21CE51DD0;
  }

  else
  {
    v3 = sub_21CE4F4C8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CE4F4C8()
{
  v232 = v0;
  v231[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  *(v0 + 792) = v1;
  v2 = &selRef_setBundleIdentifier_;
  v3 = [v1 value];
  v4 = [v3 value];

  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D38, &unk_21CE735E0);
  if (!swift_dynamicCast())
  {
    if (qword_281213298 != -1)
    {
      swift_once();
    }

    v171 = *(v0 + 544);
    v172 = sub_21CE6BDA0();
    __swift_project_value_buffer(v172, qword_2812165F0);
    v173 = v171;
    v174 = sub_21CE6BD80();
    v175 = sub_21CE6CF20();

    v176 = os_log_type_enabled(v174, v175);
    v177 = *(v0 + 776);
    v178 = *(v0 + 768);
    v179 = *(v0 + 760);
    v180 = *(v0 + 752);
    if (v176)
    {
      v226 = *(v0 + 776);
      v181 = *(v0 + 544);
      v229 = *(v0 + 752);
      v182 = swift_slowAlloc();
      v224 = v178;
      v183 = swift_slowAlloc();
      v231[0] = v183;
      *v182 = 136315138;
      v184 = [v181 description];
      v185 = sub_21CE6CC50();
      v187 = v186;

      v188 = sub_21CDF2CC8(v185, v187, v231);

      *(v182 + 4) = v188;
      _os_log_impl(&dword_21CDE1000, v174, v175, "Unable to fetch entities for %s", v182, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v183);
      MEMORY[0x21CF1BD50](v183, -1, -1);
      MEMORY[0x21CF1BD50](v182, -1, -1);
    }

    else
    {
    }

LABEL_86:
    v8 = MEMORY[0x277D84F90];
LABEL_87:
    v203 = *(v0 + 744);
    v204 = *(v0 + 720);
    v205 = *(v0 + 696);
    v206 = *(v0 + 672);
    v207 = *(v0 + 664);
    v208 = *(v0 + 656);
    v209 = *(v0 + 648);
    v210 = *(v0 + 640);
    v211 = *(v0 + 632);
    v215 = *(v0 + 624);
    v216 = *(v0 + 616);
    v217 = *(v0 + 608);
    v218 = *(v0 + 600);
    v221 = *(v0 + 592);
    v225 = *(v0 + 584);
    v227 = *(v0 + 576);
    v230 = *(v0 + 568);

    v212 = *(v0 + 8);
    v213 = *MEMORY[0x277D85DE8];

    return v212(v8);
  }

  v5 = *(v0 + 504);
  *(v0 + 800) = v5;
  if (v5 >> 62)
  {
    v6 = sub_21CE6D360();
    *(v0 + 808) = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_85;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 808) = v6;
  if (!v6)
  {
LABEL_85:
    v199 = *(v0 + 776);
    v200 = *(v0 + 768);
    v201 = *(v0 + 760);
    v202 = *(v0 + 752);

    goto LABEL_86;
  }

LABEL_4:
  if (v6 < 1)
  {
    __break(1u);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v0 + 824) = v8;
    *(v0 + 816) = v7;
    v9 = *(v0 + 800);
    v10 = (v9 & 0xC000000000000001) != 0 ? MEMORY[0x21CF1B2A0]() : *(v9 + 8 * v7 + 32);
    v11 = v10;
    *(v0 + 832) = v10;
    v12 = [v10 displayRepresentation];
    *(v0 + 840) = v12;
    if (v12)
    {
      break;
    }

LABEL_7:
    v7 = *(v0 + 816) + 1;
    if (v7 == *(v0 + 808))
    {
      v189 = *(v0 + 800);
      v190 = *(v0 + 792);
      v191 = *(v0 + 776);
      v192 = *(v0 + 768);
      v193 = *(v0 + 760);
      v194 = *(v0 + 752);

      goto LABEL_87;
    }
  }

  v13 = v12;
  v14 = *(v0 + 544);
  sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
  v15 = v13;
  v16 = sub_21CE4BFC0(v15);
  *(v0 + 848) = v16;
  v17 = [v14 identifier];
  if (!v17)
  {
    sub_21CE6CC50();
    v17 = sub_21CE6CC20();
  }

  [v16 setIdentifier_];

  v18 = [v11 v2[8]];
  sub_21CE6D190();
  swift_unknownObjectRelease();
  sub_21CDE40C8(0, &qword_2812119C0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v19 = *(v0 + 512);
  *(v0 + 856) = v19;
  v20 = [v11 exportedContent];
  if (!v20)
  {
    v26 = *(*(v0 + 560) + 56);
    v26(*(v0 + 656), 1, 1, *(v0 + 552));
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 content];

  v23 = [v22 fileURL];
  if (v23)
  {
    v24 = *(v0 + 648);
    sub_21CE6B9F0();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v27 = *(v0 + 656);
  v28 = *(v0 + 648);
  v29 = *(v0 + 560);
  v30 = *(v0 + 552);
  v26 = *(v29 + 56);
  v26(v28, v25, 1, v30);
  sub_21CE53750(v28, v27);
  if ((*(v29 + 48))(v27, 1, v30) != 1)
  {
    v39 = *(v0 + 664);
    v40 = *(v0 + 592);
    v41 = *(v0 + 552);
    v42 = *(*(v0 + 560) + 32);
    v42(v40, *(v0 + 656), v41);
    v42(v39, v40, v41);
    v26(v39, 0, 1, v41);
    goto LABEL_34;
  }

LABEL_22:
  *(v0 + 864) = v26;
  sub_21CDE5494(*(v0 + 656), &unk_27CE40310, &qword_21CE71470);
  v31 = [v11 exportedContent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 content];

  v34 = [v33 data];
  v35 = sub_21CE6BA90();
  v37 = v36;

  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      sub_21CDF32E8(v35, v37);
      if ((v37 & 0xFF000000000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_32;
    }

    sub_21CDF32E8(v35, v37);
    v43 = v35;
    v44 = v35 >> 32;
LABEL_31:
    if (v43 == v44)
    {
      goto LABEL_81;
    }

LABEL_32:
    v45 = [v11 exportedContent];
    if (!v45)
    {
      goto LABEL_81;
    }

    v46 = v45;
    v47 = *(v0 + 664);
    v48 = *(v0 + 640);
    v49 = *(v0 + 552);
    v50 = *(v0 + 560) + 56;
    v51 = [v45 content];

    v52 = [v51 data];
    v53 = sub_21CE6BA90();
    v55 = v54;

    v26(v48, 1, 1, v49);
    sub_21CE6B9A0();
    sub_21CDF32E8(v53, v55);
    sub_21CDE5494(v48, &unk_27CE40310, &qword_21CE71470);
LABEL_34:
    v56 = *(v0 + 672);
    v57 = *(v0 + 616);
    v58 = *(v0 + 560);
    v59 = *(v0 + 552);
    sub_21CE53750(*(v0 + 664), v56);
    sub_21CE0D9E4(v56, v57);
    v60 = *(v58 + 48);
    if (v60(v57, 1, v59) == 1)
    {
      sub_21CDE5494(*(v0 + 616), &unk_27CE40310, &qword_21CE71470);
      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v61 = *(v0 + 544);
      v62 = sub_21CE6BDA0();
      __swift_project_value_buffer(v62, qword_2812165F0);
      v63 = v61;
      v64 = sub_21CE6BD80();
      v65 = sub_21CE6CF20();

      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 856);
      v68 = *(v0 + 848);
      v69 = *(v0 + 840);
      v70 = *(v0 + 832);
      v71 = *(v0 + 672);
      if (v66)
      {
        v222 = *(v0 + 856);
        v72 = *(v0 + 544);
        v228 = *(v0 + 672);
        v73 = swift_slowAlloc();
        v219 = v68;
        v74 = swift_slowAlloc();
        v231[0] = v74;
        *v73 = 136315138;
        v75 = [v72 description];
        v76 = sub_21CE6CC50();
        v78 = v77;

        v79 = sub_21CDF2CC8(v76, v78, v231);

        *(v73 + 4) = v79;
        _os_log_impl(&dword_21CDE1000, v64, v65, "Unable to export or fetch entity URL for %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x21CF1BD50](v74, -1, -1);
        MEMORY[0x21CF1BD50](v73, -1, -1);

        v80 = v228;
      }

      else
      {

        v80 = v71;
      }

      sub_21CDE5494(v80, &unk_27CE40310, &qword_21CE71470);
      v8 = *(v0 + 824);
    }

    else
    {
      v81 = *(v0 + 848);
      (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 616), *(v0 + 552));
      v82 = sub_21CE6B9B0();
      [v81 setURL_];

      if (URL.relatedAppBundleIdentifier()().value._object)
      {
        v83 = sub_21CE6CC20();
      }

      else
      {
        v83 = 0;
      }

      v84 = *(v0 + 848);
      v85 = *(v0 + 576);
      [v84 setRelatedAppBundleIdentifier_];

      v86 = sub_21CE4BBC4();
      [v84 setRankingHint_];

      if (qword_281213298 != -1)
      {
        swift_once();
      }

      v87 = *(v0 + 848);
      v88 = sub_21CE6BDA0();
      __swift_project_value_buffer(v88, qword_2812165F0);
      v89 = v87;
      v90 = sub_21CE6BD80();
      v91 = sub_21CE6CF00();

      if (os_log_type_enabled(v90, v91))
      {
        v223 = v91;
        v92 = *(v0 + 848);
        v93 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        *(v0 + 520) = v220;
        *v93 = 141559811;
        *(v93 + 4) = 1752392040;
        *(v93 + 12) = 2081;
        v94 = [v92 title];
        if (v94)
        {
          v95 = v94;
          v96 = sub_21CE6CC50();
          v98 = v97;
        }

        else
        {
          v98 = 0xE200000000000000;
          v96 = 10023;
        }

        v99 = *(v0 + 848);
        v100 = sub_21CDF2CC8(v96, v98, (v0 + 520));

        *(v93 + 14) = v100;
        *(v93 + 22) = 2160;
        *(v93 + 24) = 1752392040;
        *(v93 + 32) = 2081;
        v101 = [v99 subtitle];
        if (v101)
        {
          v102 = v101;
          v103 = sub_21CE6CC50();
          v105 = v104;
        }

        else
        {
          v105 = 0xE200000000000000;
          v103 = 10023;
        }

        v106 = *(v0 + 848);
        v107 = sub_21CDF2CC8(v103, v105, (v0 + 520));

        *(v93 + 34) = v107;
        *(v93 + 42) = 2160;
        *(v93 + 44) = 1752392040;
        *(v93 + 52) = 2081;
        v108 = [v106 keywords];
        if (v108)
        {
          v109 = v108;
          v110 = MEMORY[0x277D837D0];
          v111 = sub_21CE6CD40();
        }

        else
        {
          v111 = MEMORY[0x277D84F90];
          v110 = MEMORY[0x277D837D0];
        }

        v112 = *(v0 + 848);
        v113 = MEMORY[0x21CF1AD30](v111, v110);
        v115 = v114;

        v116 = sub_21CDF2CC8(v113, v115, (v0 + 520));

        *(v93 + 54) = v116;
        *(v93 + 62) = 2160;
        *(v93 + 64) = 1752392040;
        *(v93 + 72) = 2081;
        v117 = [v112 URL];
        if (v117)
        {
          v118 = *(v0 + 600);
          v119 = v117;
          sub_21CE6B9F0();

          v120 = 0;
        }

        else
        {
          v120 = 1;
        }

        v121 = *(v0 + 608);
        v122 = *(v0 + 600);
        v123 = *(v0 + 552);
        v124 = *(v0 + 560) + 56;
        v26(v122, v120, 1, v123);
        sub_21CE53750(v122, v121);
        v125 = v60(v121, 1, v123);
        v126 = *(v0 + 608);
        if (v125)
        {
          sub_21CDE5494(*(v0 + 608), &unk_27CE40310, &qword_21CE71470);
          v127 = 0xE200000000000000;
          v128 = 10023;
        }

        else
        {
          v129 = *(v0 + 568);
          v130 = *(v0 + 560);
          v131 = *(v0 + 552);
          (*(v130 + 16))(v129, *(v0 + 608), v131);
          sub_21CDE5494(v126, &unk_27CE40310, &qword_21CE71470);
          v128 = sub_21CE6B980();
          v127 = v132;
          (*(v130 + 8))(v129, v131);
        }

        v133 = sub_21CDF2CC8(v128, v127, (v0 + 520));

        *(v93 + 74) = v133;
        _os_log_impl(&dword_21CDE1000, v90, v223, "LNEntityMetadata: CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v93, 0x52u);
        swift_arrayDestroy();
        MEMORY[0x21CF1BD50](v220, -1, -1);
        MEMORY[0x21CF1BD50](v93, -1, -1);
      }

      else
      {
      }

      v134 = *(v0 + 544);
      v135 = *(v0 + 536);
      *(v0 + 400) = *(v0 + 528);
      *(v0 + 408) = v135;

      v136 = [v134 mangledTypeNameByBundleIdentifier];
      v137 = sub_21CE6CB60();

      v138 = sub_21CE4B3D4(v137);
      v140 = v139;

      if (v140)
      {

        *(v0 + 416) = v138;
        *(v0 + 424) = v140;
        *(v0 + 432) = 0x6C7070612E6D6F63;
        *(v0 + 440) = 0xEA00000000002E65;
        sub_21CE537C0();
        sub_21CE6CED0();

        v141 = *(v0 + 352);
        v142 = *(v0 + 360);
        *(v0 + 448) = 46;
        *(v0 + 456) = 0xE100000000000000;
        *(v0 + 368) = *(v0 + 336);
        *(v0 + 384) = v141;
        *(v0 + 392) = v142;
        sub_21CE53814();
        sub_21CE6CCC0();

        MEMORY[0x21CF1ACB0](*(v0 + 448), *(v0 + 456));
      }

      else
      {
        v143 = *(v0 + 544);
        v144 = sub_21CE6BD80();
        v145 = sub_21CE6CF10();

        if (os_log_type_enabled(v144, v145))
        {
          v146 = *(v0 + 544);
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v231[0] = v148;
          *v147 = 136315138;
          v149 = [v146 description];
          v150 = sub_21CE6CC50();
          v152 = v151;

          v153 = sub_21CDF2CC8(v150, v152, v231);

          *(v147 + 4) = v153;
          _os_log_impl(&dword_21CDE1000, v144, v145, "Unknown bundle domain for %s", v147, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v148);
          MEMORY[0x21CF1BD50](v148, -1, -1);
          MEMORY[0x21CF1BD50](v147, -1, -1);
        }
      }

      v154 = *(v0 + 848);
      v155 = *(v0 + 576);
      sub_21CE6B980();
      v156 = *(v0 + 400);
      v157 = *(v0 + 408);
      v158 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v159 = v154;
      v160 = sub_21CE6CC20();

      v161 = sub_21CE6CC20();

      [v158 initWithUniqueIdentifier:v160 domainIdentifier:v161 attributeSet:v159];

      MEMORY[0x21CF1AD00]();
      if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v170 = *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21CE6CD60();
      }

      v162 = *(v0 + 856);
      v163 = *(v0 + 848);
      v164 = *(v0 + 840);
      v165 = *(v0 + 832);
      v166 = *(v0 + 672);
      v167 = *(v0 + 576);
      v168 = *(v0 + 560);
      v169 = *(v0 + 552);
      sub_21CE6CD80();

      (*(v168 + 8))(v167, v169);
      sub_21CDE5494(v166, &unk_27CE40310, &qword_21CE71470);
      v8 = *(v0 + 464);
    }

    v2 = &selRef_setBundleIdentifier_;
    goto LABEL_7;
  }

  if (v38 == 2)
  {
    v43 = *(v35 + 16);
    v44 = *(v35 + 24);
    sub_21CDF32E8(v35, v37);
    goto LABEL_31;
  }

  sub_21CDF32E8(v35, v37);
LABEL_81:
  v195 = *(v0 + 776);
  v196 = *(v0 + 632);
  *(v0 + 80) = v0;
  *(v0 + 120) = v196;
  *(v0 + 88) = sub_21CE5098C;
  v197 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_21CE4E508;
  *(v0 + 232) = &block_descriptor_11;
  *(v0 + 240) = v197;
  [v195 fetchEntityURL:v19 completionHandler:v0 + 208];
  v198 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_21CE5098C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 872) = v2;
  if (v2)
  {
    v3 = sub_21CE522B8;
  }

  else
  {
    v3 = sub_21CE50AC8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CE50AC8()
{
  v216 = v0;
  v215[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_21CE53750(*(v0 + 632), v1);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 864);
  v6 = *(v0 + 664);
  v7 = *(v0 + 624);
  if (v4 == 1)
  {
    v8 = *(v0 + 552);
    v9 = *(v0 + 560) + 56;
    sub_21CDE5494(*(v0 + 624), &unk_27CE40310, &qword_21CE71470);
    v5(v6, 1, 1, v8);
  }

  else
  {
    v10 = *(v0 + 584);
    v11 = *(v0 + 552);
    v12 = *(*(v0 + 560) + 32);
    v12(v10, *(v0 + 624), v11);
    v12(v6, v10, v11);
    v5(v6, 0, 1, v11);
  }

  v212 = *(v0 + 864);
  v13 = &unk_281213000;
LABEL_5:
  v14 = *(v0 + 672);
  v15 = *(v0 + 616);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  sub_21CE53750(*(v0 + 664), v14);
  sub_21CE0D9E4(v14, v15);
  v18 = *(v16 + 48);
  if (v18(v15, 1, v17) == 1)
  {
    sub_21CDE5494(*(v0 + 616), &unk_27CE40310, &qword_21CE71470);
    if (v13[83] != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 544);
    v20 = sub_21CE6BDA0();
    __swift_project_value_buffer(v20, qword_2812165F0);
    v21 = v19;
    v22 = sub_21CE6BD80();
    v23 = sub_21CE6CF20();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 856);
    v26 = *(v0 + 848);
    v27 = *(v0 + 840);
    v28 = *(v0 + 832);
    v29 = *(v0 + 672);
    if (v24)
    {
      loga = *(v0 + 856);
      v30 = *(v0 + 544);
      v213 = *(v0 + 672);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v215[0] = v32;
      *v31 = 136315138;
      v33 = [v30 description];
      v34 = sub_21CE6CC50();
      v204 = v26;
      v36 = v35;

      v37 = sub_21CDF2CC8(v34, v36, v215);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_21CDE1000, v22, v23, "Unable to export or fetch entity URL for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x21CF1BD50](v32, -1, -1);
      MEMORY[0x21CF1BD50](v31, -1, -1);

      v38 = v213;
    }

    else
    {

      v38 = v29;
    }

    sub_21CDE5494(v38, &unk_27CE40310, &qword_21CE71470);
    v42 = *(v0 + 824);
  }

  else
  {
    v39 = *(v0 + 848);
    (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 616), *(v0 + 552));
    v40 = sub_21CE6B9B0();
    [v39 setURL_];

    if (URL.relatedAppBundleIdentifier()().value._object)
    {
      v41 = sub_21CE6CC20();
    }

    else
    {
      v41 = 0;
    }

    v43 = *(v0 + 848);
    v44 = *(v0 + 576);
    [v43 setRelatedAppBundleIdentifier_];

    v45 = sub_21CE4BBC4();
    [v43 setRankingHint_];

    if (v13[83] != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 848);
    v47 = sub_21CE6BDA0();
    __swift_project_value_buffer(v47, qword_2812165F0);
    v48 = v46;
    v49 = sub_21CE6BD80();
    v50 = sub_21CE6CF00();

    if (os_log_type_enabled(v49, v50))
    {
      v205 = v50;
      log = v49;
      v51 = *(v0 + 848);
      v52 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      *(v0 + 520) = v202;
      *v52 = 141559811;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      v53 = [v51 title];
      if (v53)
      {
        v54 = v53;
        v55 = sub_21CE6CC50();
        v57 = v56;
      }

      else
      {
        v57 = 0xE200000000000000;
        v55 = 10023;
      }

      v58 = *(v0 + 848);
      v59 = sub_21CDF2CC8(v55, v57, (v0 + 520));

      *(v52 + 14) = v59;
      *(v52 + 22) = 2160;
      *(v52 + 24) = 1752392040;
      *(v52 + 32) = 2081;
      v60 = [v58 subtitle];
      if (v60)
      {
        v61 = v60;
        v62 = sub_21CE6CC50();
        v64 = v63;
      }

      else
      {
        v64 = 0xE200000000000000;
        v62 = 10023;
      }

      v65 = *(v0 + 848);
      v66 = sub_21CDF2CC8(v62, v64, (v0 + 520));

      *(v52 + 34) = v66;
      *(v52 + 42) = 2160;
      *(v52 + 44) = 1752392040;
      *(v52 + 52) = 2081;
      v67 = [v65 keywords];
      if (v67)
      {
        v68 = v67;
        v69 = MEMORY[0x277D837D0];
        v70 = sub_21CE6CD40();
      }

      else
      {
        v70 = MEMORY[0x277D84F90];
        v69 = MEMORY[0x277D837D0];
      }

      v71 = *(v0 + 848);
      v72 = MEMORY[0x21CF1AD30](v70, v69);
      v74 = v73;

      v75 = sub_21CDF2CC8(v72, v74, (v0 + 520));

      *(v52 + 54) = v75;
      *(v52 + 62) = 2160;
      *(v52 + 64) = 1752392040;
      *(v52 + 72) = 2081;
      v76 = [v71 URL];
      if (v76)
      {
        v77 = *(v0 + 600);
        v78 = v76;
        sub_21CE6B9F0();

        v79 = 0;
      }

      else
      {
        v79 = 1;
      }

      v80 = *(v0 + 608);
      v81 = *(v0 + 600);
      v82 = *(v0 + 552);
      v83 = *(v0 + 560) + 56;
      v212(v81, v79, 1, v82);
      sub_21CE53750(v81, v80);
      v84 = v18(v80, 1, v82);
      v85 = *(v0 + 608);
      if (v84)
      {
        sub_21CDE5494(*(v0 + 608), &unk_27CE40310, &qword_21CE71470);
        v86 = 0xE200000000000000;
        v87 = 10023;
      }

      else
      {
        v88 = *(v0 + 568);
        v89 = *(v0 + 560);
        v90 = *(v0 + 552);
        (*(v89 + 16))(v88, *(v0 + 608), v90);
        sub_21CDE5494(v85, &unk_27CE40310, &qword_21CE71470);
        v87 = sub_21CE6B980();
        v86 = v91;
        (*(v89 + 8))(v88, v90);
      }

      v92 = sub_21CDF2CC8(v87, v86, (v0 + 520));

      *(v52 + 74) = v92;
      _os_log_impl(&dword_21CDE1000, log, v205, "LNEntityMetadata: CSSearchableItem title: %{private,mask.hash}s, subtitle:%{private,mask.hash}s, keywords:%{private,mask.hash}s, url:%{private,mask.hash}s", v52, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v202, -1, -1);
      MEMORY[0x21CF1BD50](v52, -1, -1);
    }

    else
    {
    }

    v93 = *(v0 + 544);
    v94 = *(v0 + 536);
    *(v0 + 400) = *(v0 + 528);
    *(v0 + 408) = v94;

    v95 = [v93 mangledTypeNameByBundleIdentifier];
    v96 = sub_21CE6CB60();

    v97 = sub_21CE4B3D4(v96);
    v99 = v98;

    if (v99)
    {

      *(v0 + 416) = v97;
      *(v0 + 424) = v99;
      *(v0 + 432) = 0x6C7070612E6D6F63;
      *(v0 + 440) = 0xEA00000000002E65;
      sub_21CE537C0();
      sub_21CE6CED0();

      v100 = *(v0 + 352);
      v101 = *(v0 + 360);
      *(v0 + 448) = 46;
      *(v0 + 456) = 0xE100000000000000;
      *(v0 + 368) = *(v0 + 336);
      *(v0 + 384) = v100;
      *(v0 + 392) = v101;
      sub_21CE53814();
      sub_21CE6CCC0();

      MEMORY[0x21CF1ACB0](*(v0 + 448), *(v0 + 456));
    }

    else
    {
      v102 = *(v0 + 544);
      v103 = sub_21CE6BD80();
      v104 = sub_21CE6CF10();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = *(v0 + 544);
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v215[0] = v107;
        *v106 = 136315138;
        v108 = [v105 description];
        v109 = sub_21CE6CC50();
        v111 = v110;

        v112 = sub_21CDF2CC8(v109, v111, v215);

        *(v106 + 4) = v112;
        _os_log_impl(&dword_21CDE1000, v103, v104, "Unknown bundle domain for %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        MEMORY[0x21CF1BD50](v107, -1, -1);
        MEMORY[0x21CF1BD50](v106, -1, -1);
      }
    }

    v113 = *(v0 + 848);
    v114 = *(v0 + 576);
    sub_21CE6B980();
    v115 = *(v0 + 400);
    v116 = *(v0 + 408);
    v117 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v118 = v113;
    v119 = sub_21CE6CC20();

    v120 = sub_21CE6CC20();

    [v117 initWithUniqueIdentifier:v119 domainIdentifier:v120 attributeSet:v118];

    MEMORY[0x21CF1AD00]();
    if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v177 = *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21CE6CD60();
    }

    v121 = *(v0 + 856);
    v122 = *(v0 + 848);
    v123 = *(v0 + 840);
    v124 = *(v0 + 832);
    v125 = *(v0 + 672);
    v126 = *(v0 + 576);
    v127 = *(v0 + 560);
    v128 = *(v0 + 552);
    sub_21CE6CD80();

    (*(v127 + 8))(v126, v128);
    sub_21CDE5494(v125, &unk_27CE40310, &qword_21CE71470);
    v42 = *(v0 + 464);
  }

  while (1)
  {
    v129 = *(v0 + 816) + 1;
    if (v129 == *(v0 + 808))
    {
      break;
    }

    *(v0 + 824) = v42;
    *(v0 + 816) = v129;
    v130 = *(v0 + 800);
    if ((v130 & 0xC000000000000001) != 0)
    {
      v131 = MEMORY[0x21CF1B2A0]();
    }

    else
    {
      v131 = *(v130 + 8 * v129 + 32);
    }

    v132 = v131;
    *(v0 + 832) = v131;
    v133 = [v131 displayRepresentation];
    *(v0 + 840) = v133;
    if (v133)
    {
      v134 = v133;
      v135 = *(v0 + 544);
      sub_21CDE40C8(0, &qword_281211A20, 0x277CC34B8);
      v136 = v134;
      v137 = sub_21CE4BFC0(v136);
      *(v0 + 848) = v137;
      v138 = [v135 identifier];
      if (!v138)
      {
        sub_21CE6CC50();
        v138 = sub_21CE6CC20();
      }

      [v137 setIdentifier_];

      v139 = [v132 value];
      sub_21CE6D190();
      swift_unknownObjectRelease();
      sub_21CDE40C8(0, &qword_2812119C0, 0x277D237F0);
      if (swift_dynamicCast())
      {
        v140 = *(v0 + 512);
        *(v0 + 856) = v140;
        v141 = [v132 exportedContent];
        if (!v141)
        {
          v147 = *(*(v0 + 560) + 56);
          v147(*(v0 + 656), 1, 1, *(v0 + 552));
          goto LABEL_59;
        }

        v142 = v141;
        v143 = [v141 content];

        v144 = [v143 fileURL];
        if (v144)
        {
          v145 = *(v0 + 648);
          sub_21CE6B9F0();

          v146 = 0;
        }

        else
        {
          v146 = 1;
        }

        v148 = *(v0 + 656);
        v149 = *(v0 + 648);
        v150 = *(v0 + 560);
        v151 = *(v0 + 552);
        v147 = *(v150 + 56);
        v147(v149, v146, 1, v151);
        sub_21CE53750(v149, v148);
        if ((*(v150 + 48))(v148, 1, v151) == 1)
        {
LABEL_59:
          *(v0 + 864) = v147;
          sub_21CDE5494(*(v0 + 656), &unk_27CE40310, &qword_21CE71470);
          v152 = [v132 exportedContent];
          if (!v152)
          {
            goto LABEL_76;
          }

          v153 = v152;
          v154 = [v152 content];

          v155 = [v154 data];
          v156 = sub_21CE6BA90();
          v158 = v157;

          v159 = v158 >> 62;
          if ((v158 >> 62) > 1)
          {
            if (v159 != 2)
            {
              sub_21CDF32E8(v156, v158);
              goto LABEL_76;
            }

            v164 = *(v156 + 16);
            v165 = *(v156 + 24);
            sub_21CDF32E8(v156, v158);
          }

          else
          {
            if (!v159)
            {
              sub_21CDF32E8(v156, v158);
              if ((v158 & 0xFF000000000000) == 0)
              {
LABEL_76:
                v196 = *(v0 + 776);
                v197 = *(v0 + 632);
                *(v0 + 80) = v0;
                *(v0 + 120) = v197;
                *(v0 + 88) = sub_21CE5098C;
                v198 = swift_continuation_init();
                *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40D18, &qword_21CE735C8);
                *(v0 + 208) = MEMORY[0x277D85DD0];
                *(v0 + 216) = 1107296256;
                *(v0 + 224) = sub_21CE4E508;
                *(v0 + 232) = &block_descriptor_11;
                *(v0 + 240) = v198;
                [v196 fetchEntityURL:v140 completionHandler:v0 + 208];
                v199 = *MEMORY[0x277D85DE8];

                return MEMORY[0x282200938](v0 + 80);
              }

LABEL_69:
              v166 = [v132 exportedContent];
              if (!v166)
              {
                goto LABEL_76;
              }

              v167 = v166;
              v168 = *(v0 + 664);
              v169 = *(v0 + 640);
              v170 = *(v0 + 552);
              v171 = *(v0 + 560) + 56;
              v172 = [v166 content];

              v173 = [v172 data];
              v174 = sub_21CE6BA90();
              v176 = v175;

              v212 = v147;
              v147(v169, 1, 1, v170);
              sub_21CE6B9A0();
              sub_21CDF32E8(v174, v176);
              sub_21CDE5494(v169, &unk_27CE40310, &qword_21CE71470);
LABEL_71:
              v13 = &unk_281213000;
              goto LABEL_5;
            }

            sub_21CDF32E8(v156, v158);
            v164 = v156;
            v165 = v156 >> 32;
          }

          if (v164 == v165)
          {
            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v160 = *(v0 + 664);
        v161 = *(v0 + 592);
        v162 = *(v0 + 552);
        v163 = *(*(v0 + 560) + 32);
        v163(v161, *(v0 + 656), v162);
        v163(v160, v161, v162);
        v212 = v147;
        v147(v160, 0, 1, v162);
        goto LABEL_71;
      }
    }

    else
    {
    }
  }

  v178 = *(v0 + 800);
  v179 = *(v0 + 792);
  v180 = *(v0 + 776);
  v181 = *(v0 + 768);
  v182 = *(v0 + 760);
  v183 = *(v0 + 752);

  v184 = *(v0 + 744);
  v185 = *(v0 + 720);
  v186 = *(v0 + 696);
  v187 = *(v0 + 672);
  v188 = *(v0 + 664);
  v189 = *(v0 + 656);
  v190 = *(v0 + 648);
  v191 = *(v0 + 640);
  v192 = *(v0 + 632);
  v200 = *(v0 + 624);
  v201 = *(v0 + 616);
  v203 = *(v0 + 608);
  v206 = *(v0 + 600);
  logb = *(v0 + 592);
  v210 = *(v0 + 584);
  v211 = *(v0 + 576);
  v214 = *(v0 + 568);

  v193 = *(v0 + 8);
  v194 = *MEMORY[0x277D85DE8];

  return v193(v42);
}