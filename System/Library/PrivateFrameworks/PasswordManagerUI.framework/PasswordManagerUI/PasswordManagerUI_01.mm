uint64_t objectdestroyTm_75()
{
  v1 = (type metadata accessor for PMTipView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 32);

  v7 = *(v0 + v3 + 48);

  v8 = *(v0 + v3 + 64);

  v9 = *(v0 + v3 + 80);

  v10 = *(v0 + v3 + 120);

  v11 = *(v0 + v3 + 152);

  v12 = v1[13];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_76()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroyTm_77()
{
  v1 = v0;
  v2 = type metadata accessor for PMVerificationCodeRow();
  v3 = *(*(v2 - 1) + 80);
  v60 = *(*(v2 - 1) + 64);
  v61 = (v3 + 16) & ~v3;
  v4 = v0 + v61;
  v5 = *(v0 + v61 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v61 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v1 = v59;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v4 + v6[7];
  if (*(v51 + 8))
  {
  }

  v52 = *(v4 + v2[5] + 8);

  v53 = *(v4 + v2[6] + 8);

  v54 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = sub_21CB83834();
    v56 = *(v55 - 8);
    if (!(*(v56 + 48))(v4 + v54, 1, v55))
    {
      (*(v56 + 8))(v4 + v54, v55);
    }
  }

  else
  {
    v57 = *(v4 + v54);
  }

  return MEMORY[0x2821FE8E8](v1, v61 + v60, v3 | 7);
}

uint64_t objectdestroyTm_78()
{
  v1 = type metadata accessor for PMVerificationCodesList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA8C0, &unk_21CBCF8E0);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5] + 8);

  v8 = v0 + v3 + v1[6];
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  sub_21C79C1F4();
  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82A34();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  v19 = *(v5 + v1[9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_79()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_21C79C1F4();
  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t objectdestroyTm_80()
{
  v1 = type metadata accessor for PMSecurityRecommendationPlatter();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB83834();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
    v11 = *(v5 + v8);
  }

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB823B4();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = v1[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAC08, &qword_21CBD0408);
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = v5 + v1[9];
  if (*(v17 + 8))
  {
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 32, v2 | 7);
}

uint64_t sub_21C7025C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21C7025D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = *(type metadata accessor for PMSharingGroup() - 8);
  v4[19] = v5;
  v6 = *(v5 + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = sub_21CB85C44();
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v9 = *(v8 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E0, &unk_21CBBD7E0);
  v4[26] = v10;
  v11 = *(v10 - 8);
  v4[27] = v11;
  v12 = *(v11 + 64) + 15;
  v4[28] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90C0, &qword_21CBCADE0);
  v4[29] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52E8, &qword_21CBBD7F0);
  v4[31] = v15;
  v16 = *(v15 - 8);
  v4[32] = v16;
  v17 = *(v16 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = sub_21CB858B4();
  v4[35] = sub_21CB858A4();
  v19 = sub_21CB85874();
  v4[36] = v19;
  v4[37] = v18;

  return MEMORY[0x2822009F8](sub_21C6F12EC, v19, v18);
}

uint64_t sub_21C702844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D8, &qword_21CBCD988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7028AC(void *a1, uint64_t a2)
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

    v8 = sub_21CB85FB4();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_21CB85FA4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_21CA977CC(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_21CA99764(v19 + 1);
    }

    sub_21CA9A3EC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_21CB86484();
  MEMORY[0x21CF15F90](a2);
  v11 = sub_21CB864D4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_21C6F31B4(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_21C702ABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
  result = sub_21CB86054();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v17);
      result = sub_21CB864D4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t block_destroy_helper_10(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t block_destroy_helper_30(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_21C702EFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21C702FF0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21C702EFC;

  return sub_21C703100(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_21C703100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_21CB858B4();
  v6[17] = sub_21CB858A4();
  v9 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7031E0, v9, v8);
}

uint64_t sub_21C7031E0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = *(v0 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 88) = v3;

    sub_21CB81DC4();
  }

  v4 = *(v0 + 96);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    sub_21C6EF0A0(*(v0 + 112), v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21C6EF0A0(v5, v6);
    sub_21CB81DC4();
    sub_21C6EA794(v5, &qword_27CDEE678, &unk_21CBBA210);
  }

  v7 = *(v0 + 96);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 144) = 1;
    sub_21CB81DC4();
  }

  v9 = *(v0 + 120);
  v8 = *(v0 + 128);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21C7033D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21C7034FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C98EBD4(a1, v5);
}

void sub_21C7035B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  (*(v3 + 16))(&v15 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = objc_allocWithZone(type metadata accessor for PMSharingGroupsProviderMain.GroupUpdateHandler());
  v10 = sub_21C6F14E4(sub_21C6F2664, v8);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;
  sub_21CB858F4();
  v12 = objc_opt_self();
  v13 = [v12 sharedProvider];
  [v13 addSubscriber_];

  v14 = [v12 sharedProvider];
  sub_21C6F1834(v14);
}

uint64_t sub_21C7037A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C70383C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C703874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D8, &qword_21CBCD988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7038E4()
{
  v1 = v0 + 40;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 144);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 88) = v2;

      sub_21CB81DC4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 96) = v3;

      sub_21CB81DC4();
      v7 = [objc_opt_self() sharedProvider];
      v8 = [v7 hasLoadedGroups];

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 320) = v8;

      sub_21CB81DC4();
      v9 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_invitationsAndGroupsPublisher);
      *(v0 + 56) = v2;
      *(v0 + 64) = v3;

      sub_21CB81D24();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v10 = *(v0 + 104);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v11 = *(v0 + 112);
      v12 = *(v11 + 16);
      v60 = v6;
      if (v12)
      {
        v13 = *(v0 + 152);
        *(v0 + 120) = MEMORY[0x277D84F90];
        sub_21C7B0BC8(0, v12, 0);
        v14 = *(v0 + 120);
        v15 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v16 = *(v13 + 72);
        do
        {
          v17 = *(v0 + 192);
          v19 = *(v0 + 168);
          v18 = *(v0 + 176);
          v20 = *(v0 + 160);
          sub_21C94B4A8(v15, v20);
          (*(v18 + 16))(v17, v20, v19);
          sub_21C979EE8(v20);
          *(v0 + 120) = v14;
          v22 = *(v14 + 16);
          v21 = *(v14 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_21C7B0BC8(v21 > 1, v22 + 1, 1);
            v14 = *(v0 + 120);
          }

          v23 = *(v0 + 192);
          v24 = *(v0 + 168);
          v25 = *(v0 + 176);
          *(v14 + 16) = v22 + 1;
          (*(v25 + 32))(v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v23, v24);
          v15 += v16;
          --v12;
        }

        while (v12);

        v6 = v60;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      v37 = *(v0 + 168);
      v38 = *(v14 + 16);
      v39 = sub_21C703FA8();
      *(v0 + 128) = MEMORY[0x21CF154F0](v38, v37, v39);
      v40 = *(v14 + 16);
      if (v40)
      {
        v41 = *(v0 + 176);
        v42 = v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v61 = *(v41 + 16);
        v62 = *(v41 + 72);
        do
        {
          v43 = *(v0 + 200);
          v44 = *(v0 + 176);
          v45 = *(v0 + 184);
          v46 = *(v0 + 168);
          v61(v43, v42, v46);
          sub_21CA93D98(v45, v43);
          (*(v44 + 8))(v45, v46);
          v42 += v62;
          --v40;
        }

        while (v40);
        v47 = *(v0 + 128);

        v1 = v0 + 40;
        v6 = v60;
      }

      else
      {
      }

      v48 = *(v6 + 16);
      v49 = qword_27CDEA4C0;

      if (v49 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v50 = sub_21C704000(v48, *(v0 + 136));

      v51 = *(v50 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
      v52 = *(v50 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
      __swift_project_boxed_opaque_existential_0((v50 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v51);
      (*(v52 + 40))(v51, v52);

      v53 = *(v0 + 272);
      v54 = sub_21CB858A4();
      *(v0 + 304) = v54;
      sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0);
      v55 = *(MEMORY[0x277D856D8] + 4);
      v56 = swift_task_alloc();
      *(v0 + 312) = v56;
      *v56 = v0;
      v56[1] = sub_21C6F330C;
      v57 = *(v0 + 264);
      v58 = *(v0 + 248);
      v59 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v1, v54, v59);
    }

    v27 = *(v0 + 280);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  else
  {
    v26 = *(v0 + 280);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  v28 = *(v0 + 264);
  v29 = *(v0 + 240);
  v30 = *(v0 + 224);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 184);
  v34 = *(v0 + 160);

  v35 = *(v0 + 8);

  return v35();
}

unint64_t sub_21C703FA8()
{
  result = qword_27CDF8950;
  if (!qword_27CDF8950)
  {
    sub_21CB85C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8950);
  }

  return result;
}

unint64_t sub_21C704000(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16) || (v3 = sub_21CB10910(a1), (v4 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v3, v6), type metadata accessor for PMTipsStore(), (swift_dynamicCast() & 1) == 0) || (result = v7, v7 <= 1))
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v7 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v6[0];
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21C704154()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_21C70467C;
  v2 = swift_continuation_init();
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0C8, &qword_21CBCD978);
  v0[21] = MEMORY[0x277D85DD0];
  v0[22] = 1107296256;
  v0[23] = sub_21C704620;
  v0[24] = &block_descriptor_44;
  v0[25] = v2;
  [v1 fetchTipToShow_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C70427C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v9 = *v1;

  v4 = v2[60];

  v5 = v2[58];
  v6 = v2[59];
  if (v0)
  {
    v7 = sub_21C826504;
  }

  else
  {
    v7 = sub_21C70439C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21C70439C()
{
  v1 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 136) = v2;
  *(v0 + 152) = v3;
  v4 = *(v0 + 80);
  *(v0 + 168) = v4;
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 184) = v5;
  *(v0 + 120) = v1;
  v7 = *(v0 + 112);
  *(v0 + 344) = v5;
  *(v0 + 312) = v3;
  *(v0 + 328) = v4;
  *(v0 + 280) = v1;
  *(v0 + 296) = v2;
  if (v7 == 1)
  {
    v8 = *(v0 + 456);
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

    v9 = *(v0 + 440);
    v10 = *(v0 + 416);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 400);
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 192) = v6;
      *(v0 + 200) = v7;
      v14 = *(v0 + 328);
      *(v0 + 240) = *(v0 + 312);
      *(v0 + 256) = v14;
      *(v0 + 272) = *(v0 + 344);
      v15 = *(v0 + 296);
      *(v0 + 208) = *(v0 + 280);
      *(v0 + 224) = v15;
      sub_21CB81DC4();
    }

    else
    {
      sub_21C6EA794(v0 + 104, &qword_27CDED2A8, &qword_21CBA65C0);
    }

    v16 = *(v0 + 448);
    v17 = sub_21CB858A4();
    *(v0 + 480) = v17;
    sub_21C6EADEC(&qword_27CDED3D8, &qword_27CDED3C8, &qword_21CBA67A8);
    v18 = *(MEMORY[0x277D856D8] + 4);
    v19 = swift_task_alloc();
    *(v0 + 488) = v19;
    *v19 = v0;
    v19[1] = sub_21C70427C;
    v20 = *(v0 + 440);
    v21 = *(v0 + 424);
    v22 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 16, v17, v22);
  }
}

uint64_t sub_21C7045D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21C704620(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_21C70467C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C70475C, 0, 0);
}

uint64_t sub_21C70475C()
{
  v1 = *(v0 + 240);
  sub_21C7047E0(*(v0 + 232), (v0 + 80));
  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  *(v1 + 16) = v2;
  v3 = *(v0 + 112);
  v4 = *(v0 + 128);
  v5 = *(v0 + 144);
  *(v1 + 80) = *(v0 + 160);
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v6 = *(v0 + 8);

  return v6();
}

void sub_21C7047E0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = [objc_opt_self() contentForTipType_];
    v5 = [v4 imageName];
    sub_21CB855C4();

    v28 = sub_21CB84BB4();
    v27 = [v4 hasBorderedImage];
    v6 = [v4 title];
    v7 = sub_21CB855C4();
    v25 = v8;
    v26 = v7;

    v9 = [v4 subtitle];
    v10 = sub_21CB855C4();
    v12 = v11;

    v13 = [v4 buttonTitle];
    v14 = sub_21CB855C4();
    v16 = v15;

    v17 = [v4 declineButtonTitle];
    v18 = sub_21CB855C4();
    v20 = v19;

    v22 = v25;
    v21 = v26;
    v23 = v28;
    v24 = v27;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v24 = 0;
  }

  *a2 = a1;
  a2[1] = v23;
  a2[2] = v24;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v10;
  a2[6] = v12;
  a2[7] = v14;
  a2[8] = v16;
  a2[9] = v18;
  a2[10] = v20;
}

uint64_t sub_21C704A8C()
{
  result = sub_21CB80E34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C704B10()
{
  result = qword_27CDF6460;
  if (!qword_27CDF6460)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CDF6460);
  }

  return result;
}

uint64_t sub_21C704B40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C704B88()
{
  if (!qword_27CDEFE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFE40, &unk_21CBAE4E0);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEFE38);
    }
  }
}

uint64_t sub_21C704BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C704C64()
{
  v0 = sub_21CB85C44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

id PMSceneDelegate.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate__lockPolicyEnforcer;
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v4 = &v1[v2];
  sub_21CB86544();
  sub_21C704E4C(KeyPath, v14);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer();
  sub_21C706AA8();
  v5 = sub_21CB82674();
  v7 = v6;

  *v4 = v5;
  v4[1] = v7;
  v8 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFAD18, &qword_21CBD0768);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v1[v8] = sub_21CB81D14();
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_keyWindow] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_lockedWindow] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_animator] = 0;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate____lazy_storage___blurEffectView] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for PMSceneDelegate();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_21C704E64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a2 + 16) || (v5 = sub_21CB10910(a1), (v6 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v5, v8), a3(0), (swift_dynamicCast() & 1) == 0) || (result = v9) == 0)
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v9 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v8[0];
  }

  return result;
}

void sub_21C704F58()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface);
  v2 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_21CB65384;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CB0C8A8;
  aBlock[3] = &block_descriptor_45;
  v3 = _Block_copy(aBlock);

  [v1 setEventHandler_];
  _Block_release(v3);
  [v1 activate];
  aBlock[0] = 0;
  v4 = [v1 startMonitoringEventType:30 error:aBlock];
  v5 = aBlock[0];
  if (v4 && (aBlock[0] = 0, v6 = v5, v7 = [v1 startMonitoringEventType:2 error:aBlock], v5 = aBlock[0], v7))
  {
    v8 = *MEMORY[0x277D85DE8];

    v9 = v5;
  }

  else
  {
    v10 = v5;
    v11 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v12 = sub_21CB81C84();
    __swift_project_value_buffer(v12, qword_27CE186E0);
    v13 = v11;
    v14 = sub_21CB81C64();
    v15 = sub_21CB85AF4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = sub_21CB86414();
      v20 = sub_21C98E004(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_21C6E5000, v14, v15, "Failed to start monitoring Wi-Fi network events. %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x21CF16D90](v17, -1, -1);
      MEMORY[0x21CF16D90](v16, -1, -1);
    }

    else
    {
    }

    v21 = *MEMORY[0x277D85DE8];
  }
}

uint64_t type metadata accessor for PMAppCommands()
{
  result = qword_27CDEF180;
  if (!qword_27CDEF180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PMEditableWebsite()
{
  result = qword_27CDF8468;
  if (!qword_27CDF8468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C705370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PMWiFiDetailsModel()
{
  result = qword_27CDF29B8;
  if (!qword_27CDF29B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C705420()
{
  result = type metadata accessor for PMWiFiNetwork();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21CB81114();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for PMAppRootNavigationModel()
{
  result = qword_27CDEFE28;
  if (!qword_27CDEFE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70555C()
{
  sub_21C704B88();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_21C6F0790(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_21C6F0790(319, &qword_27CDF62D0, type metadata accessor for PMAccount);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_21CB81114();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21C7057A4()
{
  v0 = sub_21CB80E34();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_21C6F0848();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_21CB85114();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for PMAppAccountsListModel.Configuration(319);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_21CB81114();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for PMAppSecurityRecommendationsModel()
{
  result = qword_27CDF0CA8;
  if (!qword_27CDF0CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C705A10()
{
  result = sub_21CB85114();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21CB81114();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_21C705B34()
{
  if (!qword_27CDEAD00)
  {
    type metadata accessor for PMSecureWindowLockPolicyEnforcer();
    sub_21C705CB4(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEAD00);
    }
  }
}

uint64_t type metadata accessor for PMSecureWindowLockPolicyEnforcer()
{
  result = qword_27CDF7820;
  if (!qword_27CDF7820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C705C14()
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21C705CB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C705CFC()
{
  if (!qword_27CDEBD30)
  {
    type metadata accessor for PMAccountsState();
    sub_21C705DD8(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEBD30);
    }
  }
}

uint64_t sub_21C705D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705F88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C705FD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7060A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7060F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7061C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7062A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7062E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706330(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C706378()
{
  if (!qword_27CDEF1A8)
  {
    type metadata accessor for PMGeneratedPasswordStore();
    sub_21C6F0700(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEF1A8);
    }
  }
}

void sub_21C70640C()
{
  if (!qword_27CDEC5C8)
  {
    type metadata accessor for PMGroupsStore();
    sub_21C7064A0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEC5C8);
    }
  }
}

uint64_t sub_21C7064A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7064E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C706578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7065C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C70664C()
{
  result = qword_27CDFA6F8;
  if (!qword_27CDFA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFA6F8);
  }

  return result;
}

uint64_t sub_21C7066C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = PMDependencyStore.lockPolicyEnforcer.getter();
  *a2 = result;
  return result;
}

void sub_21C7066EC()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_shortcutItemForInitialLaunch);
  if (v2)
  {
    v7 = v2;
    v3 = [v7 type];
    sub_21CB855C4();

    v4 = sub_21CB86244();

    if (v4 >= 3)
    {
    }

    else
    {
      v5 = *(v0 + v1);
      *(v0 + v1) = 0;

      v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI15PMSceneDelegate_selectedQuickAction);
      sub_21CB81D04();
    }
  }
}

uint64_t PMDependencyStore.lockPolicyEnforcer.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for PMSecureWindowLockPolicyEnforcer();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_21C706854();
    v6 = *(v2 + 64);
    *(v2 + 64) = v1;
  }

  return v1;
}

uint64_t sub_21C706854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-v4];
  *(v0 + 16) = 0;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__hasBeenAuthenticated;
  v15[15] = 0;
  sub_21CB81D74();
  v7 = *(v2 + 32);
  v7(v0 + v6, v5, v1);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__isAuthenticating;
  v15[14] = 0;
  sub_21CB81D74();
  v7(v0 + v8, v5, v1);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = 0;
  v9 = [objc_opt_self() mainBundle];
  LODWORD(v5) = [v9 safari_isPasswordsAppBundle];

  if (v5)
  {
    v10 = objc_opt_self();
    v11 = [v10 defaultCenter];
    [v11 addObserver:v0 selector:sel_appDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    v12 = [v10 defaultCenter];
    [v12 addObserver:v0 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:0];

    v13 = [v10 defaultCenter];
    [v13 addObserver:v0 selector:sel_systemProtectionDidChange_ name:*MEMORY[0x277D76E68] object:0];
  }

  return v0;
}

unint64_t sub_21C706AA8()
{
  result = qword_27CDFAD10;
  if (!qword_27CDFAD10)
  {
    type metadata accessor for PMSecureWindowLockPolicyEnforcer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDFAD10);
  }

  return result;
}

uint64_t sub_21C706BE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMDebugSettingsManager();
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

unint64_t PMWindowGroupIdentifier.rawValue.getter()
{
  v1 = 0x44746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0x6174654469666977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t PMAppCommands.init(mainWindowGroupIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C6F0700(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  a3[2] = sub_21CB823C4();
  a3[3] = v6;
  v7 = type metadata accessor for PMAppCommands();
  v8 = v7[6];
  type metadata accessor for PMWiFiDetailsModel();
  sub_21C6F0700(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB821F4();
  v9 = v7[7];
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C6F0700(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB821F4();
  v10 = v7[8];
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C6F0700(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB821F4();
  v11 = v7[9];
  type metadata accessor for PMAppSecurityRecommendationsModel();
  sub_21C6F0700(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB821F4();
  v12 = v7[10];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v13 = v7[11];
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v14 = v7[12];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v16 = (a3 + v14);
  sub_21CB86544();
  sub_21C704E4C(KeyPath, v36);

  type metadata accessor for PMSecureWindowLockPolicyEnforcer();
  sub_21C6F0700(&qword_27CDFAD10, type metadata accessor for PMSecureWindowLockPolicyEnforcer);
  v17 = sub_21CB82674();
  v19 = v18;

  *v16 = v17;
  v16[1] = v19;
  v20 = (a3 + v7[13]);
  v21 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7072A8(v21, v36);

  type metadata accessor for PMAccountsState();
  sub_21C6F0700(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v22 = sub_21CB82674();
  v24 = v23;

  *v20 = v22;
  v20[1] = v24;
  v25 = (a3 + v7[14]);
  v26 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073D0(v26, v36);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C6F0700(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v27 = sub_21CB82674();
  v29 = v28;

  *v25 = v27;
  v25[1] = v29;
  v30 = (a3 + v7[15]);
  v31 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v31, v36);

  type metadata accessor for PMGroupsStore();
  sub_21C6F0700(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v32 = sub_21CB82674();
  v34 = v33;

  *v30 = v32;
  v30[1] = v34;
  *(a3 + v7[16]) = 1;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_21C707234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = PMDependencyStore.lockPolicyEnforcer.getter();
  *a2 = result;
  return result;
}

uint64_t sub_21C707260(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
}

uint64_t sub_21C7072C0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C707334@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  result = swift_unknownObjectRelease();
  *a2 = v8;
  return result;
}

uint64_t sub_21C70742C()
{
  v1 = *(v0 + 40);

  sub_21CB81E94();

  return v3;
}

uint64_t type metadata accessor for PMPasswordManagerState()
{
  result = qword_27CDF77E0;
  if (!qword_27CDF77E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7074C8()
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDF77F0, &qword_27CDF7778, &qword_21CBC5CB0);
    if (v4 <= 0x3F)
    {
      v16 = *(v3 - 8) + 64;
      sub_21C6EA5CC(319, &qword_27CDEDD48, &unk_27CDF20B0, &unk_21CBA0090);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_21C6EA5CC(319, &qword_27CDF77F8, &qword_27CDF7798, &unk_21CBC5CB8);
        if (v9 <= 0x3F)
        {
          v17 = *(v8 - 8) + 64;
          sub_21C6EA5CC(319, &qword_27CDEDD60, &qword_27CDEBED0, &unk_21CBA1A60);
          if (v11 <= 0x3F)
          {
            v18 = *(v10 - 8) + 64;
            sub_21C6EA5CC(319, &qword_27CDF7800, &qword_27CDF30D0, &qword_21CBBDC70);
            if (v13 <= 0x3F)
            {
              v19 = *(v12 - 8) + 64;
              sub_21C6EA5CC(319, &qword_27CDF7808, &qword_27CDF5470, &qword_21CBBDF88);
              if (v15 <= 0x3F)
              {
                v20 = *(v14 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for PMSystemSettingsNavigationDestination()
{
  result = qword_27CDF9CA0;
  if (!qword_27CDF9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C7077E0()
{
  result = sub_21CB85C44();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PMRecentlyDeletedAccountsSource();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PMRecentlyDeletedAccountsSource()
{
  result = qword_27CDF7D40;
  if (!qword_27CDF7D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C7078A8()
{
  v0 = sub_21CB85C44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_21C707930()
{
  sub_21CB80BE4();
  if (v0 <= 0x3F)
  {
    sub_21C7079B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C7079B4()
{
  if (!qword_27CDF5350)
  {
    sub_21CB80BE4();
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF5350);
    }
  }
}

unint64_t sub_21C707A5C()
{
  result = qword_27CDF7A98;
  if (!qword_27CDF7A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AA0, &qword_21CBC66C8);
    sub_21CAD21D0();
    sub_21C707D88(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A98);
  }

  return result;
}

unint64_t sub_21C707B18()
{
  result = qword_27CDF7A78;
  if (!qword_27CDF7A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A80, &unk_21CBC6628);
    sub_21C707BA4();
    sub_21C707BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A78);
  }

  return result;
}

unint64_t sub_21C707BA4()
{
  result = qword_27CDF7A88;
  if (!qword_27CDF7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A88);
  }

  return result;
}

unint64_t sub_21C707BF8()
{
  result = qword_27CDED1A8;
  if (!qword_27CDED1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED1B0, &unk_21CBA6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED1A8);
  }

  return result;
}

unint64_t sub_21C707C5C()
{
  result = qword_27CDF7A90;
  if (!qword_27CDF7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A90);
  }

  return result;
}

uint64_t sub_21C707CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C707CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C707D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C707D88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PMAccountsListScrollTestModel()
{
  result = qword_27CDED0F0;
  if (!qword_27CDED0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C707E20()
{
  sub_21C707EB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21C707EB0()
{
  if (!qword_27CDED100)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDED100);
    }
  }
}

uint64_t type metadata accessor for PMAccountsView()
{
  result = qword_27CDEDA08;
  if (!qword_27CDEDA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C707F4C()
{
  if (!qword_27CDED058)
  {
    type metadata accessor for PMPasswordManagerState();
    sub_21C713460(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    v0 = sub_21CB82B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDED058);
    }
  }
}

void sub_21C708000()
{
  v0 = type metadata accessor for PMAccountsListModel.Configuration(319);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_21C7135A4();
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_21C70821C();
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_21C6EA5CC(319, &qword_27CDECD28, &qword_27CDECD30, &unk_21CBA5590);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_21C6EA5CC(319, &qword_27CDEAEF0, &qword_27CDEAEF8, &unk_21CBA0740);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_21C70821C()
{
  if (!qword_27CDECD20)
  {
    sub_21CB85114();
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDECD20);
    }
  }
}

void sub_21C708274()
{
  if (!qword_27CDEDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF20B0, &unk_21CBA0090);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEDA20);
    }
  }
}

void sub_21C7082D8()
{
  sub_21C6F0848();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for PMAppAccountsList()
{
  result = qword_27CDEE7D0;
  if (!qword_27CDEE7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C708424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C708488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C7084EC()
{
  sub_21C708424(319, &qword_27CDEE7E0, type metadata accessor for PMAppAccountsListModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C708424(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21C708424(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21C70640C();
        if (v3 <= 0x3F)
        {
          sub_21C713384();
          if (v4 <= 0x3F)
          {
            sub_21C7086F8();
            if (v5 <= 0x3F)
            {
              sub_21C708424(319, &qword_27CDEE7E8, type metadata accessor for PMGlobalSearchModel, type metadata accessor for PMDependency);
              if (v6 <= 0x3F)
              {
                sub_21C708424(319, &qword_27CDEE7F0, type metadata accessor for PMGlobalAnimationNamespaceContainer, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C7086F8()
{
  if (!qword_27CDEC388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC390, &qword_21CBA40E0);
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEC388);
    }
  }
}

uint64_t type metadata accessor for PMAppRootNavigationView()
{
  result = qword_27CDEFFB0;
  if (!qword_27CDEFFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C7087A8()
{
  sub_21C713780(319, &qword_27CDEFFC0, type metadata accessor for PMAppRootNavigationModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C713780(319, &qword_27CDEFFC8, MEMORY[0x277CDE408], MEMORY[0x277CDD800]);
    if (v1 <= 0x3F)
    {
      sub_21C708AC4(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21C713780(319, &qword_27CDEC5D8, type metadata accessor for PMDebugSettingsManager, type metadata accessor for PMDependency);
        if (v3 <= 0x3F)
        {
          sub_21C713780(319, &qword_27CDEACE8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21C708AC4(319, &qword_27CDEFFD0, &qword_27CDEFF98, &qword_21CBAE0B0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_21C713780(319, &qword_27CDEFFD8, type metadata accessor for PMCredentialExporter, type metadata accessor for PMDependency);
              if (v6 <= 0x3F)
              {
                sub_21C713780(319, &qword_27CDEFFE0, type metadata accessor for PMCredentialImporter, type metadata accessor for PMDependency);
                if (v7 <= 0x3F)
                {
                  sub_21C713780(319, &qword_27CDEE7E8, type metadata accessor for PMGlobalSearchModel, type metadata accessor for PMDependency);
                  if (v8 <= 0x3F)
                  {
                    sub_21C713780(319, &qword_27CDEE7F0, type metadata accessor for PMGlobalAnimationNamespaceContainer, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C708AC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C708B28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C708B8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C708BE0()
{
  sub_21C708B8C(319, &qword_27CDF3130, MEMORY[0x277CBA840]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C708B8C(319, &qword_27CDF3138, type metadata accessor for PMCredentialExporter.DataToExportAfterAlert);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_21CB81114();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_21C708D48()
{
  result = sub_21CB818C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PMCredentialImporter()
{
  result = qword_27CDF8B08;
  if (!qword_27CDF8B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C708E08()
{
  result = sub_21CB81114();
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

uint64_t sub_21C708EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED128, &qword_21CBA63E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED120, &qword_21CBA63E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED118, &qword_21CBA63D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED110, &qword_21CBA63D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED108, &qword_21CBA63C8);
  sub_21C709084();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21C708FF8()
{
  result = qword_27CDED138;
  if (!qword_27CDED138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED140, &qword_21CBA63F0);
    sub_21C709108();
    sub_21C709508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED138);
  }

  return result;
}

unint64_t sub_21C709084()
{
  result = qword_27CDED130;
  if (!qword_27CDED130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED108, &qword_21CBA63C8);
    sub_21C708FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED130);
  }

  return result;
}

unint64_t sub_21C709108()
{
  result = qword_27CDED148;
  if (!qword_27CDED148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED150, &qword_21CBA63F8);
    sub_21C6EADEC(&qword_27CDED158, &qword_27CDED160, &qword_21CBA6400);
    sub_21C7091C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED148);
  }

  return result;
}

unint64_t sub_21C7091C0()
{
  result = qword_27CDED168;
  if (!qword_27CDED168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED170, &qword_21CBA6408);
    sub_21C7092A8(&qword_27CDED178, &qword_27CDED180, &qword_21CBA6410, sub_21C709358);
    sub_21C7094C0(&qword_27CDED1C8, type metadata accessor for PMScrollTestModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED168);
  }

  return result;
}

uint64_t sub_21C7092A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6EADEC(&qword_27CDECF60, &qword_27CDED1C0, &qword_21CBA5BF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C709358()
{
  result = qword_27CDED188;
  if (!qword_27CDED188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED190, &qword_21CBA6418);
    type metadata accessor for PMAccountsView();
    sub_21CB829D4();
    sub_21C7094C0(&qword_27CDED198, type metadata accessor for PMAccountsView);
    sub_21C7094C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED188);
  }

  return result;
}

uint64_t sub_21C7094C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C709508()
{
  result = qword_27CDED1D0;
  if (!qword_27CDED1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1D8, &qword_21CBA6430);
    sub_21C6EADEC(&qword_27CDED1E0, &qword_27CDED1E8, &qword_21CBA6438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1F0, &qword_21CBA6440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1F8, &qword_21CBA6448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED200, &qword_21CBA6450);
    sub_21C709668();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED1D0);
  }

  return result;
}

unint64_t sub_21C709668()
{
  result = qword_27CDED208;
  if (!qword_27CDED208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED200, &qword_21CBA6450);
    sub_21C7094C0(&qword_27CDED210, type metadata accessor for PMAppRootNavigationView);
    sub_21C6EADEC(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED208);
  }

  return result;
}

id PMPasswordManagerState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7738, &qword_21CBC5C60);
  v91 = *(v1 - 8);
  v92 = v1;
  v2 = *(v91 + 64);
  MEMORY[0x28223BE20](v1);
  v90 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7740, &qword_21CBC5C68);
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v72 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  v7 = *(*(v86 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v86);
  v85 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD78, &qword_21CBA89E8);
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v81 = &v72 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7748, &qword_21CBC5C70);
  v79 = *(v80 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v72 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD88, &qword_21CBA8A00);
  v96 = *(v77 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v77);
  v94 = &v72 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v18 = *(*(v95 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v95);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7750, &unk_21CBC5C78);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v75 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v72 - v32;
  v34 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__accountsState;
  *&v0[v34] = swift_getKeyPath();
  *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_subscriptions] = MEMORY[0x277D84FA0];
  v35 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__isGeneratedPasswordsLogPresented;
  LOBYTE(v98) = 0;
  sub_21CB81D74();
  v36 = *(v30 + 32);
  v76 = v30 + 32;
  v93 = v36;
  v36(&v0[v35], v33, v29);
  v37 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__systemSettingNavigationPath;
  v98 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7778, &qword_21CBC5CB0);
  sub_21CB81D74();
  (*(v25 + 32))(&v0[v37], v28, v24);
  *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel] = 0;
  v38 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__sharingGroupIDToPresent;
  v39 = sub_21CB85C44();
  v74 = *(*(v39 - 8) + 56);
  v74(v23, 1, 1, v39);
  v73 = v21;
  sub_21C6EDBAC(v23, v21, &unk_27CDF20B0, &unk_21CBA0090);
  v40 = v94;
  sub_21CB81D74();
  sub_21C6EA794(v23, &unk_27CDF20B0, &unk_21CBA0090);
  v41 = *(v96 + 32);
  v96 += 32;
  v42 = v77;
  v41(&v0[v38], v40, v77);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__contextForPresentedNewGroupFlow;
  v98 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7798, &unk_21CBC5CB8);
  v44 = v78;
  sub_21CB81D74();
  (*(v79 + 32))(&v0[v43], v44, v80);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__groupIDForRecentlyAcceptedInvitation;
  v74(v23, 1, 1, v39);
  sub_21C6EDBAC(v23, v73, &unk_27CDF20B0, &unk_21CBA0090);
  v46 = v94;
  sub_21CB81D74();
  sub_21C6EA794(v23, &unk_27CDF20B0, &unk_21CBA0090);
  v41(&v0[v45], v46, v42);
  v47 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__isMembersOfDeletedGroupMightHaveAccessToAccountsAlertPresented;
  LOBYTE(v98) = 0;
  sub_21CB81D74();
  v48 = v75;
  v93(&v0[v47], v33, v75);
  v49 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__groupMemberNamesOfDeletedGroup;
  v98 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  v50 = v81;
  sub_21CB81D74();
  v51 = *(v82 + 32);
  v52 = v50;
  v53 = v50;
  v54 = v83;
  v51(&v0[v49], v52, v83);
  v55 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__isMembersOfGroupUserLeftMightHaveAccessToAccountsAlertPresented;
  LOBYTE(v98) = 0;
  sub_21CB81D74();
  v93(&v0[v55], v33, v48);
  v56 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__groupMemberNamesOfGroupTheyLeft;
  v57 = MEMORY[0x277D84F90];
  v98 = MEMORY[0x277D84F90];
  sub_21CB81D74();
  v51(&v0[v56], v53, v54);
  v58 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__inboundOTPAuthURLContext;
  v59 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v60 = v84;
  (*(*(v59 - 8) + 56))(v84, 1, 1, v59);
  sub_21C6EDBAC(v60, v85, &qword_27CDF30D0, &qword_21CBBDC70);
  v61 = v87;
  sub_21CB81D74();
  sub_21C6EA794(v60, &qword_27CDF30D0, &qword_21CBBDC70);
  (*(v88 + 32))(&v0[v58], v61, v89);
  v62 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__inboundSharableAccountContext;
  v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5470, &qword_21CBBDF88);
  v63 = v90;
  sub_21CB81D74();
  (*(v91 + 32))(&v0[v62], v63, v92);
  v64 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController;
  v65 = type metadata accessor for PMAccountDetailsSheetController();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  v98 = 0;
  v99 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB81D74();
  *&v0[v64] = v68;
  *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers] = v57;
  v69 = type metadata accessor for PMPasswordManagerState();
  v97.receiver = v0;
  v97.super_class = v69;
  v70 = objc_msgSendSuper2(&v97, sel_init);
  sub_21C70A510();

  return v70;
}

uint64_t sub_21C70A1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21CB80BE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21C70A2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB80BE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t type metadata accessor for PMAccountDetailsSheetController()
{
  result = qword_27CDEB410;
  if (!qword_27CDEB410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70A41C()
{
  sub_21C70A4AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21C70A4AC()
{
  if (!qword_27CDEAF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED260, &qword_21CBA1C60);
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEAF00);
    }
  }
}

uint64_t sub_21C70A510()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__accountsState;
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v5 = sub_21C7072A8(v3, v13);

  v6 = *(v5 + 32);

  v14 = v6;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  sub_21C70A864(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v7 = *(v1 + v2);

  sub_21CB86544();
  v8 = sub_21C7072A8(v7, v14);

  v9 = *(v8 + 40);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21CACBAD4;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C70A864(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

uint64_t sub_21C70A7F4()
{
  MEMORY[0x21CF16E70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C70A82C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C70A864(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PMExtensionCoordinator.init(appState:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_21C70A8F0()
{
  v1 = *(v0 + 32);

  sub_21CB81E94();
}

uint64_t getEnumTagSinglePayload for PMSortOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t PMPasswordsPaneView.init(appState:style:)@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PMPasswordManagerState();
  sub_21C707D88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  result = sub_21CB82674();
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  *a2 = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21C70AA6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMPasswordManagerState();
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

uint64_t sub_21C70AAAC(uint64_t *a1, unsigned int a2)
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

uint64_t PMPasswordsPaneView.body.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  type metadata accessor for PMPasswordManagerState();
  sub_21C707D88(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v3 = v2;
  sub_21CB81CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A68, &qword_21CBC6620);
  sub_21CAD21D0();
  sub_21CB845C4();

  return sub_21C70AC30();
}

uint64_t sub_21C70AC38()
{
  v0 = type metadata accessor for PMAccountsListScrollTestModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_21CB81D74();
  return v3;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21C70ACAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI29PMAccountsListScrollTestModel33_05895019A422AE69CA35C95F8231EA7CLLC5StateO(void *a1)
{
  v1 = a1[1] >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21C70AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v71 = a5;
  v76 = sub_21CB820E4();
  v9 = *(v76 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v76);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED108, &qword_21CBA63C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED110, &qword_21CBA63D0);
  v18 = *(v17 - 8);
  v63 = v17;
  v64 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v62 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED118, &qword_21CBA63D8);
  v22 = *(v21 - 8);
  v65 = v21;
  v66 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v77 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED120, &qword_21CBA63E0);
  v26 = *(v25 - 8);
  v67 = v25;
  v68 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v79 = &v61 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED128, &qword_21CBA63E8);
  v30 = *(v29 - 8);
  v69 = v29;
  v70 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v78 = &v61 - v32;
  v33 = a4 & 1;
  sub_21C70B4E8(a2, a3, v33, a1, v16);
  sub_21CB820B4();
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = a3;
  *(v34 + 32) = v33;
  sub_21C70C78C();
  v35 = sub_21C709084();
  sub_21CB84814();

  v36 = *(v9 + 8);
  v74 = v9 + 8;
  v61 = v36;
  v37 = v76;
  v36(v12, v76);
  sub_21C6EA794(v16, &qword_27CDED108, &qword_21CBA63C8);
  sub_21CB820B4();
  v38 = swift_allocObject();
  v72 = a2;
  v73 = a3;
  *(v38 + 16) = a2;
  *(v38 + 24) = a3;
  *(v38 + 32) = v33;
  sub_21C70C78C();
  v80 = v13;
  v81 = v35;
  v75 = MEMORY[0x277CDEEA8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v62;
  v40 = v63;
  sub_21CB84814();

  v42 = v61;
  v61(v12, v37);
  (*(v64 + 8))(v41, v40);
  sub_21CB820B4();
  v43 = swift_allocObject();
  v44 = v73;
  *(v43 + 16) = v72;
  *(v43 + 24) = v44;
  *(v43 + 32) = v33;
  sub_21C70C78C();
  v80 = v40;
  v81 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v65;
  v47 = v77;
  sub_21CB84814();

  v48 = v37;
  v42(v12, v37);
  v49 = v47;
  v50 = v46;
  (*(v66 + 8))(v49, v46);
  sub_21CB820B4();
  v51 = swift_allocObject();
  v52 = v72;
  v53 = v73;
  *(v51 + 16) = v72;
  *(v51 + 24) = v53;
  *(v51 + 32) = v33;
  sub_21C70C78C();
  v80 = v50;
  v81 = v45;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v79;
  v56 = v67;
  sub_21CB84814();

  v42(v12, v48);
  (*(v68 + 8))(v55, v56);
  sub_21CB820B4();
  v57 = swift_allocObject();
  *(v57 + 16) = v52;
  *(v57 + 24) = v53;
  *(v57 + 32) = v33;
  sub_21C70C78C();
  v80 = v56;
  v81 = v54;
  swift_getOpaqueTypeConformance2();
  v58 = v69;
  v59 = v78;
  sub_21CB84814();

  v42(v12, v76);
  return (*(v70 + 8))(v59, v58);
}

uint64_t sub_21C70B4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  v123 = a5;
  v118 = sub_21CB820E4();
  v104 = *(v118 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v118);
  v102 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED200, &qword_21CBA6450);
  v10 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v96 = &v91 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1F8, &qword_21CBA6448);
  v98 = *(v111 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v91 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1F0, &qword_21CBA6440);
  v100 = *(v114 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v114);
  v99 = &v91 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2B0, &qword_21CBA65C8);
  v105 = *(v116 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x28223BE20](v116);
  v103 = &v91 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2B8, &qword_21CBA65D0);
  v18 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v112 = &v91 - v19;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1D8, &qword_21CBA6430);
  v20 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v115 = &v91 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED1E8, &qword_21CBA6438);
  v94 = *(v113 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x28223BE20](v113);
  v93 = &v91 - v23;
  v24 = sub_21CB829D4();
  v92 = *(v24 - 8);
  v25 = *(v92 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PMAccountsView();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED170, &qword_21CBA6408);
  v32 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v34 = &v91 - v33;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2C0, &qword_21CBA65D8);
  v35 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v121 = &v91 - v36;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2C8, &qword_21CBA65E0);
  v37 = *(*(v106 - 1) + 64);
  MEMORY[0x28223BE20](v106);
  v39 = &v91 - v38;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED150, &qword_21CBA63F8);
  v40 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v108 = (&v91 - v41);
  type metadata accessor for PMAccountsListScrollTestModel();
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel);
  v97 = a3;
  v101 = a1;
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v43 = v124;
  v44 = v125;
  v45 = v125 >> 62;
  if ((v125 >> 62) > 1)
  {
    if (v45 == 2)
    {
      v57 = v125 & 0x3FFFFFFFFFFFFFFFLL;

      v58 = v96;
      sub_21C724D00(v96);
      type metadata accessor for PMPasswordManagerState();
      sub_21C7094C0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
      v59 = sub_21CB81CE4();
      v60 = (v58 + *(v117 + 36));
      *v60 = v59;
      v60[1] = v43;
      v106 = v43;
      v61 = v102;
      sub_21CB820B4();
      v62 = swift_allocObject();
      v63 = v101;
      *(v62 + 16) = v101;
      *(v62 + 24) = a2;
      v64 = v97 & 1;
      *(v62 + 32) = v97 & 1;
      *(v62 + 40) = v57;

      sub_21C70C78C();
      v65 = sub_21C709668();
      sub_21CB84814();

      v108 = *(v104 + 8);
      v108(v61, v118);
      sub_21C6EA794(v58, &qword_27CDED200, &qword_21CBA6450);
      sub_21CB820B4();
      v66 = swift_allocObject();
      *(v66 + 16) = v63;
      *(v66 + 24) = a2;
      *(v66 + 32) = v64;
      v107 = v57;
      *(v66 + 40) = v57;

      sub_21C70C78C();
      v124 = v117;
      v125 = v65;
      v117 = MEMORY[0x277CDEEA8];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v68 = v99;
      v69 = v111;
      v70 = v109;
      sub_21CB84814();

      v108(v61, v118);
      (*(v98 + 8))(v70, v69);
      sub_21CB820B4();
      v71 = swift_allocObject();
      *(v71 + 16) = v63;
      *(v71 + 24) = a2;
      *(v71 + 32) = v64;
      *(v71 + 40) = v107;

      sub_21C70C78C();
      v124 = v69;
      v125 = OpaqueTypeConformance2;
      v72 = swift_getOpaqueTypeConformance2();
      v73 = v103;
      v74 = v114;
      sub_21CB84814();

      v108(v61, v118);
      (*(v100 + 8))(v68, v74);
      v75 = v105;
      v76 = v116;
      (*(v105 + 16))(v112, v73, v116);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDED1E0, &qword_27CDED1E8, &qword_21CBA6438);
      v124 = v74;
      v125 = v72;
      swift_getOpaqueTypeConformance2();
      v77 = v115;
      sub_21CB83494();
      sub_21C6EDBAC(v77, v121, &qword_27CDED1D8, &qword_21CBA6430);
      swift_storeEnumTagMultiPayload();
      sub_21C709108();
      sub_21C709508();
      sub_21CB83494();

      sub_21C6EA794(v77, &qword_27CDED1D8, &qword_21CBA6430);
      return (*(v75 + 8))(v73, v76);
    }

    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED160, &qword_21CBA6400);
    (*(*(v89 - 8) + 16))(v39, v95, v89);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDED158, &qword_27CDED160, &qword_21CBA6400);
    sub_21C7091C0();
    v90 = v108;
    sub_21CB83494();
    v53 = &qword_21CBA63F8;
    sub_21C6EDBAC(v90, v121, &qword_27CDED150, &qword_21CBA63F8);
    swift_storeEnumTagMultiPayload();
    sub_21C709108();
    sub_21C709508();
    sub_21CB83494();
    v55 = v90;
    v56 = &qword_27CDED150;
  }

  else
  {
    if (v45)
    {
      MEMORY[0x28223BE20](v42);
      *(&v91 - 2) = v44 & 0x3FFFFFFFFFFFFFFFLL;
      *(&v91 - 1) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2D8, &qword_21CBA65E8);
      v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED2E0, &qword_21CBA65F0);
      v80 = sub_21CB826C4();
      v81 = sub_21C7092A8(&qword_27CDED2E8, &qword_27CDED2E0, &qword_21CBA65F0, sub_21C82A3E0);
      v124 = v79;
      v125 = v80;
      v126 = v81;
      v127 = MEMORY[0x277CDD980];
      swift_getOpaqueTypeConformance2();
      v82 = v93;
      sub_21CB82924();
      v83 = v94;
      v84 = v113;
      (*(v94 + 16))(v112, v82, v113);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDED1E0, &qword_27CDED1E8, &qword_21CBA6438);
      v85 = sub_21C709668();
      v124 = v117;
      v125 = v85;
      v86 = swift_getOpaqueTypeConformance2();
      v124 = v111;
      v125 = v86;
      v87 = swift_getOpaqueTypeConformance2();
      v124 = v114;
      v125 = v87;
      swift_getOpaqueTypeConformance2();
      v88 = v115;
      sub_21CB83494();
      sub_21C6EDBAC(v88, v121, &qword_27CDED1D8, &qword_21CBA6430);
      swift_storeEnumTagMultiPayload();
      sub_21C709108();
      sub_21C709508();
      sub_21CB83494();

      sub_21C6EA794(v88, &qword_27CDED1D8, &qword_21CBA6430);
      return (*(v83 + 8))(v82, v84);
    }

    PMAccountsView.init()(v31);
    sub_21CB85294();
    sub_21C7094C0(&qword_27CDED198, type metadata accessor for PMAccountsView);
    sub_21C7094C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    sub_21CB849C4();
    (*(v92 + 8))(v27, v24);
    sub_21C82A9A0(v31, type metadata accessor for PMAccountsView);
    type metadata accessor for PMPasswordManagerState();
    sub_21C7094C0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    v46 = sub_21CB81CE4();
    v47 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED190, &qword_21CBA6418) + 36)];
    *v47 = v46;
    v47[1] = v43;
    v48 = v43;
    v49 = sub_21CACB1D0();
    type metadata accessor for PMAccountsListModel(0);
    sub_21C7094C0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    v50 = sub_21CB81CE4();
    v51 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED180, &qword_21CBA6410) + 36)];
    *v51 = v50;
    v51[1] = v49;
    v52 = &v34[*(v107 + 36)];
    sub_21CB820B4();
    v53 = &qword_21CBA6408;
    sub_21C6EDBAC(v34, v39, &qword_27CDED170, &qword_21CBA6408);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED160, &qword_21CBA6400);
    sub_21C6EADEC(&qword_27CDED158, &qword_27CDED160, &qword_21CBA6400);
    sub_21C7091C0();
    v54 = v108;
    sub_21CB83494();
    sub_21C6EDBAC(v54, v121, &qword_27CDED150, &qword_21CBA63F8);
    swift_storeEnumTagMultiPayload();
    sub_21C709108();
    sub_21C709508();
    sub_21CB83494();
    sub_21C82A4C8(v43, v44);
    sub_21C6EA794(v54, &qword_27CDED150, &qword_21CBA63F8);
    v55 = v34;
    v56 = &qword_27CDED170;
  }

  return sub_21C6EA794(v55, v56, v53);
}

void sub_21C70C7D4(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_21C70CA1C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_21C70CA1C(v3[2], v3[1]);
    sub_21CB82FA4();
    sub_21C70CB88(v7);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_21CB82FA4();
  }

  sub_21C70CB88(v4);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

unint64_t sub_21C70C8A4()
{
  result = qword_27CDEF9D0;
  if (!qword_27CDEF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEF9D0);
  }

  return result;
}

uint64_t sub_21C70C8F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDEA438 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v3 = __swift_project_value_buffer(v2, qword_27CE18668);

  return sub_21C70CA1C(v3, a1);
}

uint64_t sub_21C70C97C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  __swift_allocate_value_buffer(v0, qword_27CE18668);
  v1 = __swift_project_value_buffer(v0, qword_27CE18668);
  v2 = sub_21CB83834();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_21C70CA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C70CA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_21C6EDBAC(a1, &v10 - v7, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v8, v6, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C70C8A4();
  sub_21CB82FA4();
  return sub_21C70CB88(v8);
}

uint64_t sub_21C70CB88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C70CC08()
{
  result = qword_27CDED660;
  if (!qword_27CDED660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED660);
  }

  return result;
}

uint64_t sub_21C70CCBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = sub_21C70E3B0;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 17) = v3;
  return result;
}

uint64_t type metadata accessor for PMAppRootView()
{
  result = qword_27CDEACB8;
  if (!qword_27CDEACB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70CDB8()
{
  sub_21C70CF54(319, &qword_27CDEACC8, type metadata accessor for PMAppRootModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_21C70CF54(319, &qword_27CDEACD0, type metadata accessor for PMNotificationManager, type metadata accessor for PMDependency);
    if (v1 <= 0x3F)
    {
      sub_21C70D294();
      if (v2 <= 0x3F)
      {
        sub_21C70CF54(319, &qword_27CDEACE8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21C70D328();
          if (v4 <= 0x3F)
          {
            sub_21C705B34();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C70CF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C70CFD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70D02C()
{
  sub_21C70CFD8(319, &qword_27CDEABB8, type metadata accessor for PMAppRootModel.StagedAccount);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C70CFD8(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_21CB81114();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C70D1B4()
{
  sub_21C70D234();
  if (v0 <= 0x3F)
  {
    sub_21CB85CA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21C70D234()
{
  if (!qword_27CDEABD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDEABD8);
    }
  }
}

void sub_21C70D294()
{
  if (!qword_27CDEACD8)
  {
    type metadata accessor for PMSceneDelegate();
    sub_21C705CB4(&qword_27CDEACE0, type metadata accessor for PMSceneDelegate);
    v0 = sub_21CB82B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEACD8);
    }
  }
}

void sub_21C70D328()
{
  if (!qword_27CDEACF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEACF8, &unk_21CBC1FB0);
    v0 = type metadata accessor for PMDependency();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEACF0);
    }
  }
}

uint64_t type metadata accessor for PMPasswordOptionsView()
{
  result = qword_27CDF7960;
  if (!qword_27CDF7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70D3D8()
{
  sub_21C70D554();
  if (v0 <= 0x3F)
  {
    sub_21C70D724();
    if (v1 <= 0x3F)
    {
      sub_21C70D950();
      if (v2 <= 0x3F)
      {
        sub_21C70D9C4(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
        if (v3 <= 0x3F)
        {
          sub_21C70DB78(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21C70D9C4(319, &qword_27CDEBD50, MEMORY[0x277CDF708]);
            if (v5 <= 0x3F)
            {
              sub_21C70DB78(319, &qword_27CDEB588, MEMORY[0x277D839B0], MEMORY[0x277CDD630]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C70D554()
{
  if (!qword_27CDF7870)
  {
    type metadata accessor for PMPasswordOptionsViewModel();
    sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel);
    v0 = sub_21CB82154();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF7870);
    }
  }
}

uint64_t type metadata accessor for PMPasswordOptionsViewModel()
{
  result = qword_27CDF79D0;
  if (!qword_27CDF79D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70D634()
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21C70D6DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C70D724()
{
  if (!qword_27CDF7878)
  {
    type metadata accessor for PMOTPAuthHandlerManager();
    sub_21C70D6DC(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
    v0 = sub_21CB82154();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF7878);
    }
  }
}

uint64_t type metadata accessor for PMOTPAuthHandlerManager()
{
  result = qword_27CDF71A8;
  if (!qword_27CDF71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70D804()
{
  sub_21C6EA5CC(319, &qword_27CDF71B8, &qword_27CDF6070, &unk_21CBC00B8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDF71C0, &qword_27CDF71C8, &qword_21CBC4420);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_21C7135A4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C70D950()
{
  if (!qword_27CDF7880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECDA8, &qword_21CBA5910);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF7880);
    }
  }
}

void sub_21C70D9C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DA18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21C70DA7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DAD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DB24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB82074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C70DB78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for PMSafariSettingsBreadcrumbs()
{
  result = qword_27CDEB578;
  if (!qword_27CDEB578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C70DC14()
{
  sub_21C70DC98();
  if (v0 <= 0x3F)
  {
    sub_21C70DCF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C70DC98()
{
  if (!qword_27CDEBD50)
  {
    sub_21CB82484();
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEBD50);
    }
  }
}

void sub_21C70DCF0()
{
  if (!qword_27CDEB588)
  {
    v0 = sub_21CB81EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB588);
    }
  }
}

unint64_t sub_21C70DD60()
{
  result = qword_27CDED5A0;
  if (!qword_27CDED5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED540, &qword_21CBA6EB8);
    sub_21C70DE6C();
    sub_21C6EADEC(&qword_27CDED5C8, qword_27CDED5D0, &unk_21CBA6FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED5A0);
  }

  return result;
}

unint64_t sub_21C70DE6C()
{
  result = qword_27CDED5A8;
  if (!qword_27CDED5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED5B0, &qword_21CBA6FC0);
    sub_21C70DEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED5A8);
  }

  return result;
}

unint64_t sub_21C70DEF0()
{
  result = qword_27CDED5B8;
  if (!qword_27CDED5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED5C0, &qword_21CBA6FC8);
    sub_21C70DF7C();
    sub_21C70E0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED5B8);
  }

  return result;
}

unint64_t sub_21C70DF7C()
{
  result = qword_27CDED580;
  if (!qword_27CDED580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED568, &qword_21CBA6EE0);
    sub_21C70E038();
    sub_21C70E08C(&qword_27CDED590, type metadata accessor for PMAppRootView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED580);
  }

  return result;
}

unint64_t sub_21C70E038()
{
  result = qword_27CDED588;
  if (!qword_27CDED588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED588);
  }

  return result;
}

uint64_t sub_21C70E08C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C70E0D4()
{
  result = qword_27CDED598;
  if (!qword_27CDED598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED550, &qword_21CBA6EC8);
    sub_21C70E08C(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView);
    sub_21C70E08C(&qword_27CDED578, type metadata accessor for PMSafariSettingsBreadcrumbs);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED598);
  }

  return result;
}

uint64_t sub_21C70E1CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0073676E697474;
  v3 = 0x65536D6574737973;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64726F7773736170;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0xEF736E6F6974704FLL;
    }

    else
    {
      v6 = 0x800000021CB89F60;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 7368801;
    }

    else
    {
      v5 = 0x65536D6574737973;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEE0073676E697474;
    }
  }

  v7 = 0x64726F7773736170;
  v8 = 0x800000021CB89F60;
  if (a2 == 2)
  {
    v8 = 0xEF736E6F6974704FLL;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 7368801;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CB86344();
  }

  return v11 & 1;
}

uint64_t sub_21C70E320(unsigned __int8 a1)
{
  type metadata accessor for PMAccountsNavigationContainerModel();
  result = swift_allocObject();
  *(result + 16) = a1;
  if (a1 > 1u)
  {
    v3 = 1;
    if (a1 != 2)
    {
      v3 = 2;
    }
  }

  else if (a1)
  {
    v4 = result;
    v5 = type metadata accessor for PMAppRootModel(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v3 = sub_21C70E3B8();
    result = v4;
  }

  else
  {
    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_21C70E3B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for PMAppRootNavigationModel();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_21C70EA40();
  v9 = type metadata accessor for PMInboundOTPAuthURLModel(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABE0, &qword_21CB9FE10);
  sub_21CB81D74();
  *(v1 + 24) = v12;
  v13 = type metadata accessor for PMHandleInboundTOTPMigrationURLModel(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_21CB81104();
  v17 = MEMORY[0x277D84FA0];
  *(v1 + 32) = v16;
  *(v1 + 40) = 0;
  *(v1 + 48) = v17;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v18 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__stagedAccount;
  v19 = type metadata accessor for PMAppRootModel.StagedAccount(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState;
  *(v1 + v20) = swift_getKeyPath();
  v21 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore;
  *(v1 + v21) = swift_getKeyPath();
  v22 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__appDefaults;
  *(v1 + v22) = swift_getKeyPath();
  v23 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__globalSearchModel;
  *(v1 + v23) = swift_getKeyPath();
  v24 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView) = 0;
  v25 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
  v26 = sub_21CB85C44();
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  sub_21CB81104();
  v27 = *(v1 + v22);
  v28 = qword_27CDEA4C0;

  if (v28 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v29 = sub_21C710778(v27, v41);

  v30 = [v29 BOOLForKey:*MEMORY[0x277D49CD0] withDefault:1];

  if (v30 == *(v1 + v24))
  {
    *(v1 + v24) = v30;
    sub_21C71AB9C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v40 - 2) = v1;
    *(&v40 - 8) = v30;
    v41 = v1;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }

  v32 = sub_21CB858E4();
  (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
  sub_21CB858B4();

  v33 = sub_21CB858A4();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v1;
  sub_21C98B308(0, 0, v5, &unk_21CB9FED8, v34);

  sub_21C71AD2C();
  sub_21C71BCA4();
  v36 = *(v1 + 16);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_getKeyPath();
  MEMORY[0x28223BE20](v38);
  *(&v40 - 4) = v36;
  *(&v40 - 3) = sub_21C7A211C;
  *(&v40 - 2) = v37;
  v41 = v36;
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);

  sub_21CB810C4();

  return v1;
}

uint64_t sub_21C70E960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C674();
  *a2 = result;
  return result;
}

uint64_t sub_21C70E98C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 152);
  *(*a2 + 152) = *a1;
}

uint64_t sub_21C70EA00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C70EA40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE98, &qword_21CBADC50);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - v4;
  v6 = type metadata accessor for PMAppSourceListModel.Action(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[4] = MEMORY[0x277D84FA0];
  v38 = v0 + 4;
  v0[2] = 0;
  v0[3] = 0;
  v0[5] = swift_getKeyPath();
  v0[6] = swift_getKeyPath();
  v0[7] = swift_getKeyPath();
  v10 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__safariViewControllerURL;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) = 0xC000000000000000;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = 0x8000000000000000;
  v12 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
  v13 = sub_21CB85C44();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__isCompact) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__expectingNewAccount) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__addAccountSheetModel) = 0;
  v14 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  v15 = type metadata accessor for PMAccount(0);
  (*(*(v15 - 8) + 56))(v0 + v14, 1, 1, v15);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contextForPresentedNewFamilyGroupFlow) = 1;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showExportErrorDialog) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__exportError) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__importModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___allViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___passkeysViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___verificationCodesViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing) = 0;
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__didShowUncommittedChangesAlert) = 0;
  sub_21CB81104();
  v16 = type metadata accessor for PMAppSourceListModel(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[8] = sub_21C70F848();
  sub_21C7161A0();
  v19 = v0[8];
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = (v19 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
  v22 = *(v19 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction + 8);
  *v21 = sub_21C8D79A4;
  v21[1] = v20;

  swift_retain_n();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  v24 = *(v23 + 48);
  v25 = type metadata accessor for PMAppSourceListModel.Source(0);
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  swift_getKeyPath();
  v40 = v19;
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v26 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v19 + v26, &v9[v24], &qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  sub_21C716620(v9);

  sub_21C7192A0(v9, type metadata accessor for PMAppSourceListModel.Action);

  v27 = *(v1 + 64);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = (v27 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
  v30 = *(v27 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected + 8);
  *v29 = sub_21C8D79AC;
  v29[1] = v28;

  swift_retain_n();

  sub_21C719A20();

  v31 = *(v1 + 48);
  v32 = qword_27CDEA4C0;

  if (v32 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v31, v39);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  sub_21C6EADEC(&qword_27CDEFEB0, &qword_27CDEFE98, &qword_21CBADC50);
  v33 = v37;
  sub_21CB81E04();

  (*(v36 + 8))(v5, v33);
  swift_getKeyPath();
  v39 = v1;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v39 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v39 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  return v1;
}

uint64_t sub_21C70F2CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C70F314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C8C8894(v4);
}

void sub_21C70F360()
{
  if (!qword_27CDF1328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAC20, &qword_21CBAD710);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF1328);
    }
  }
}

uint64_t sub_21C70F3D4()
{
  sub_21C70F360();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21C70F44C()
{
  result = sub_21CB85C44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_21C70F4AC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_21C70F6D4()
{
  if (!qword_27CDF1310)
  {
    type metadata accessor for PMAppSourceListModel.Source(255);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF1310);
    }
  }
}

void sub_21C70F72C()
{
  sub_21C70F6D4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21C70F848()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 512;
  *(v0 + 18) = 0;
  v6 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  v7 = type metadata accessor for PMAppSourceListModel.Source(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = type metadata accessor for PMAppAccountsSearchListModel(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_21CB81104();
  v11 = sub_21CB85C44();
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 4, v11);
  v13 = sub_21C70FDD0(v5);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel) = v13;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchFieldIsPresented) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchFieldIsFocused) = 0;
  v15 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
  *v15 = nullsub_1;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
  *v16 = nullsub_1;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__accountsState;
  *(v1 + v17) = swift_getKeyPath();
  v18 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__groupsStore;
  *(v1 + v18) = swift_getKeyPath();
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow) = 1;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__showExportError) = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__groupsSectionIsExpanded) = 1;
  sub_21CB81104();
  v19 = *(v8 + 48);
  v20 = *(v8 + 52);
  swift_allocObject();
  sub_21CB81104();
  v12(v5, 1, 4, v11);
  v21 = sub_21C70FDD0(v5);
  sub_21C712BE8(v21);
  swift_getKeyPath();
  v37 = v1;
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v22 = *(v1 + v14);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = (v22 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  v25 = *(v22 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
  *v24 = sub_21C919EC4;
  v24[1] = v23;

  swift_retain_n();

  swift_getKeyPath();
  v37 = v22;
  sub_21C712D24(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v26 = *(v22 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v28 = sub_21C713194(v27);
  if (!v29)
  {

LABEL_6:

    goto LABEL_7;
  }

  v30 = v29;
  v31 = v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_6;
  }

  v34 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
  v33 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected + 8);

  v34(v31, v30);

LABEL_7:

  return v1;
}

uint64_t sub_21C70FCE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C70FD40()
{
  result = sub_21CB81114();
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

uint64_t sub_21C70FDD0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80E24();
  v8 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow;
  v9 = sub_21CB85C44();
  v10 = *(*(v9 - 8) + 56);
  v10(v2 + v8, 1, 1, v9);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isEditSheetPresented) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isMoveAccountsSheetPresented) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__isGeneratedPasswordsSheetPresented) = 0;
  v11 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  v12 = *MEMORY[0x277CDF0D8];
  v13 = sub_21CB85114();
  (*(*(v13 - 8) + 104))(v2 + v11, v12, v13);
  v14 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  *v14 = nullsub_1;
  v14[1] = 0;
  v15 = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__subscriptions) = MEMORY[0x277D84FA0];
  v16 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState;
  *(v2 + v16) = swift_getKeyPath();
  v17 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults;
  *(v2 + v17) = swift_getKeyPath();
  v18 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__autoFillQuirksManager;
  *(v2 + v18) = swift_getKeyPath();
  v19 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__globalSearchModel;
  *(v2 + v19) = swift_getKeyPath();
  v20 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccounts) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccountsSortOrder) = 0;
  v21 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedSections) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedSections) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs) = v15;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__deleteAccountsAlertConfiguration) = sub_21CB12414(v20);
  v23 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo);
  *v23 = 0;
  v23[1] = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportError) = 0;
  v24 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  *v24 = 0;
  v24[1] = 0;
  sub_21CB81104();
  sub_21C7106A8(a1, v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, type metadata accessor for PMAppAccountsListModel.Configuration);
  v10(v7, 4, 4, v9);
  LOBYTE(v9) = sub_21C71382C(a1, v7);
  sub_21C7126DC(v7, type metadata accessor for PMAppAccountsListModel.Configuration);
  if (v9)
  {
    if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v48 - 2) = v2;
      *(&v48 - 8) = 0;
      v49 = v2;
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
      sub_21CB810C4();
    }

    else
    {
      sub_21C713C74(0);
    }

    v43 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
    v44 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);
    if (sub_21CB80FD4())
    {
      v45 = *(v2 + v43);
      *(v2 + v43) = 0;
      goto LABEL_18;
    }

    v46 = swift_getKeyPath();
    MEMORY[0x28223BE20](v46);
    *(&v48 - 2) = v2;
    *(&v48 - 8) = 0;
    v49 = v2;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
LABEL_20:
    sub_21CB810C4();

    goto LABEL_21;
  }

  v26 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults;
  v27 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults);
  v28 = qword_27CDEA4C0;

  if (v28 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v29 = sub_21C710778(v27, v49);

  v30 = sub_21CB85584();
  v31 = [v29 integerForKey_];

  v32 = sub_21C713C64(v31);
  if (v32 == 4)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) == v33)
  {
    sub_21C713C74(v33);
  }

  else
  {
    v34 = swift_getKeyPath();
    MEMORY[0x28223BE20](v34);
    *(&v48 - 2) = v2;
    *(&v48 - 8) = v33;
    v49 = v2;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  v35 = *(v2 + v26);

  sub_21CB86544();
  v36 = sub_21C710778(v35, v49);

  v37 = sub_21CB85584();
  LOBYTE(v35) = [v36 BOOLForKey:v37 withDefault:1];

  v38 = v35 ^ 1;
  v39 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
  v40 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);
  if ((sub_21CB80FD4() & 1) == 0)
  {
    v42 = swift_getKeyPath();
    MEMORY[0x28223BE20](v42);
    *(&v48 - 2) = v2;
    *(&v48 - 8) = v38;
    v49 = v2;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    goto LABEL_20;
  }

  v41 = *(v2 + v39);
  *(v2 + v39) = v38;
LABEL_18:
  sub_21C710898();
LABEL_21:
  sub_21C713E80();
  sub_21C712904();
  sub_21C7126DC(a1, type metadata accessor for PMAppAccountsListModel.Configuration);
  return v2;
}

uint64_t sub_21C7106A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C710710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C71078C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (!*(a2 + 16) || (v7 = sub_21CB10910(a1), (v8 & 1) == 0) || (sub_21C7A3394(*(a2 + 56) + 32 * v7, v10), sub_21C6E8F4C(0, a3, a4), (swift_dynamicCast() & 1) == 0) || (result = v11) == 0)
  {
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v11 = qword_27CE184E8;

    swift_getAtKeyPath();

    return v10[0];
  }

  return result;
}

uint64_t sub_21C710898()
{
  v1 = v0;
  swift_getKeyPath();
  v11 = v0;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v2 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);
  result = sub_21CB80FD4();
  if ((result & 1) == 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults);
    v6 = qword_27CDEA4C0;

    if (v6 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v7 = sub_21C710778(v5, v11);

    swift_getKeyPath();
    sub_21CB810D4();

    v8 = *(v1 + v2);
    v9 = sub_21CB80FD4();
    v10 = sub_21CB85584();
    [v7 setBool:v9 & 1 forKey:v10];

    return sub_21C710AE8(1);
  }

  return result;
}

uint64_t sub_21C710A84(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21C714B64(v3);
  }

  return result;
}

uint64_t sub_21C710AE8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0);
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v53 - v9;
  v10 = &qword_27CDEE000;
  if (a1)
  {
    v58 = 0;
  }

  else
  {
    swift_getKeyPath();
    v72 = v1;
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();

    v11 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);

    v13 = sub_21C71141C(v12);

    sub_21C711738(v13);
    swift_getKeyPath();
    v72 = v2;
    sub_21CB810D4();

    v14 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccounts;
    swift_beginAccess();
    v15 = *(v2 + v14);
    swift_getKeyPath();
    v71 = v2;

    sub_21CB810D4();

    if ((*(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) & 0xFE) == 2)
    {
      v16 = sub_21C882728();
    }

    else
    {
      v16 = sub_21C7117B4(v15);
    }

    v17 = v16;

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v53 - 2) = v2;
    *(&v53 - 1) = v17;
    v71 = v2;
    sub_21CB810C4();

    v10 = &qword_27CDEE000;
    v19 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccountsSortOrder;
    v20 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccountsSortOrder);
    if (sub_21CB80FD4())
    {
      v58 = 0;
      *(v2 + v19) = 0;
    }

    else
    {
      v21 = swift_getKeyPath();
      MEMORY[0x28223BE20](v21);
      *(&v53 - 2) = v2;
      *(&v53 - 8) = 0;
      v71 = v2;
      sub_21CB810C4();
      v58 = 0;
    }
  }

  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
  v71 = v2;
  v23 = sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v57 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder;
  v24 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOrder);
  swift_getKeyPath();
  v71 = v2;
  sub_21CB810D4();

  v25 = v10[474];
  v26 = *(v2 + v25);
  if (sub_21CB80FD4())
  {
    return sub_21C715E9C();
  }

  v55 = v25;
  swift_getKeyPath();
  v71 = v2;
  sub_21CB810D4();

  v71 = v2;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21C885160();
  swift_endAccess();
  v71 = v2;
  swift_getKeyPath();
  sub_21CB810E4();

  swift_getKeyPath();
  v71 = v2;
  v56 = v22;
  sub_21CB810D4();

  v27 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedSections);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (!v28)
  {
LABEL_29:
    v48 = swift_getKeyPath();
    MEMORY[0x28223BE20](v48);
    *(&v53 - 2) = v2;
    *(&v53 - 1) = v29;
    v71 = v2;
    sub_21CB810C4();

    swift_getKeyPath();
    v71 = v2;
    sub_21CB810D4();

    v49 = *(v2 + v57);
    v50 = v55;
    v51 = *(v2 + v55);
    if (sub_21CB80FD4())
    {
      *(v2 + v50) = v49;
    }

    else
    {
      v52 = swift_getKeyPath();
      MEMORY[0x28223BE20](v52);
      *(&v53 - 2) = v2;
      *(&v53 - 8) = v49;
      v71 = v2;
      sub_21CB810C4();
    }

    return sub_21C715E9C();
  }

  v54 = v2;
  v71 = MEMORY[0x277D84F90];

  result = sub_21C7125C8(0, v28, 0);
  v31 = 0;
  v32 = *(v27 + 16);
  v29 = v71;
  v62 = v27 + 32;
  v63 = v32;
  v33 = v32;
  v60 = v27;
  v61 = v23;
  v59 = v28;
  while (1)
  {
    if (v31 == v63)
    {
      goto LABEL_36;
    }

    v34 = v33 - 1;
    if (v34 >= *(v27 + 16))
    {
      break;
    }

    v67 = v31;
    v68 = v29;
    v35 = (v62 + 24 * v34);
    v36 = v35[1];
    v64 = *v35;
    v37 = v35[2];
    v38 = v37[2];
    v65 = v36;
    v66 = v34;

    if (v38 >= 2)
    {
      v42 = 0;
      v43 = v38 >> 1;
      v44 = v38 - 1;
      do
      {
        if (v42 != v44)
        {
          v45 = v37[2];
          if (v42 >= v45)
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v46 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v47 = *(v69 + 72);
          result = sub_21C7106A8(v37 + v46 + v47 * v42, v70, type metadata accessor for PMAccount);
          if (v44 >= v45)
          {
            goto LABEL_34;
          }

          sub_21C7106A8(v37 + v46 + v47 * v44, v8, type metadata accessor for PMAccount);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_21CAA108C(v37);
          }

          result = sub_21C897944(v8, v37 + v46 + v47 * v42);
          if (v44 >= v37[2])
          {
            goto LABEL_35;
          }

          result = sub_21C897944(v70, v37 + v46 + v47 * v44);
        }

        ++v42;
        --v44;
      }

      while (v43 != v42);
    }

    v29 = v68;
    v71 = v68;
    v40 = *(v68 + 16);
    v39 = *(v68 + 24);
    if (v40 >= v39 >> 1)
    {
      result = sub_21C7125C8((v39 > 1), v40 + 1, 1);
      v29 = v71;
    }

    v31 = v67 + 1;
    *(v29 + 16) = v40 + 1;
    v41 = (v29 + 24 * v40);
    v41[4] = v64;
    v41[5] = v65;
    v41[6] = v37;
    v27 = v60;
    v33 = v66;
    if (v31 == v59)
    {

      v2 = v54;
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void *sub_21C71141C(void *a1)
{
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);
  if (v3 > 1)
  {
    v7 = a1;
    if (v3 == 2)
    {

      v4 = sub_21C88BF88;
      v5 = sub_21C8884E8;
    }

    else
    {

      v4 = sub_21C88A474;
      v5 = sub_21C887A50;
    }
  }

  else
  {
    v7 = a1;
    if (v3)
    {

      v4 = sub_21C88D6A4;
      v5 = sub_21C888DB4;
    }

    else
    {

      v4 = sub_21C88E528;
      v5 = sub_21C8891A4;
    }
  }

  sub_21C715A80(&v7, v4, v5);
  return v7;
}

uint64_t sub_21C7115FC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_21CB862E4();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMAccount(0);
        v10 = sub_21CB85844();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for PMAccount(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_21C7117B4(uint64_t a1)
{
  v131 = type metadata accessor for PMAccount.MockData(0);
  v2 = *(*(v131 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v131);
  v5 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v122 = v119 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v119 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v119 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v119 - v15;
  MEMORY[0x28223BE20](v14);
  v132 = v119 - v17;
  v142 = type metadata accessor for PMAccount.Storage(0);
  v18 = *(*(v142 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v142);
  v120 = (v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v123 = (v119 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v127 = (v119 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v130 = (v119 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v129 = (v119 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v128 = (v119 - v30);
  MEMORY[0x28223BE20](v29);
  v138 = (v119 - v31);
  v137 = type metadata accessor for PMAccount(0);
  v32 = *(v137 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v137);
  v141 = v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v119 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = v119 - v39;
  v140 = [objc_opt_self() currentCollation];
  v41 = *(a1 + 16);
  v42 = MEMORY[0x277D84F90];
  v133 = v32;
  if (v41)
  {
    v125 = v16;
    v126 = v13;
    v124 = v10;
    v119[1] = v5;
    v145 = MEMORY[0x277D84F90];
    sub_21CB86154();
    v135 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption;
    v136 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
    v43 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v134 = *(v32 + 72);
    while (1)
    {
      sub_21C7106A8(v43, v40, type metadata accessor for PMAccount);
      sub_21C7106A8(v40, v38, type metadata accessor for PMAccount);
      swift_getKeyPath();
      v52 = v139;
      v144 = v139;
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
      sub_21CB810D4();

      v53 = v52[v135];
      v54 = type metadata accessor for PMAppAccountsListModel.WrappedPMAccount(0);
      v55 = objc_allocWithZone(v54);
      sub_21C7106A8(v38, &v55[OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_pmAccount], type metadata accessor for PMAccount);
      v56 = v138;
      v57 = *(v137 + 24);
      sub_21C7106A8(&v38[v57], v138, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = v56;
        v59 = v132;
        sub_21C8399BC(v58, v132, type metadata accessor for PMAccount.MockData);
        sub_21C7126DC(v59, type metadata accessor for PMAccount.MockData);
        if (!v53)
        {
          goto LABEL_12;
        }

        if (v53 != 1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v60 = *v56;
        v61 = [v60 effectiveTitleForSorting];

        if (v53 != 1)
        {
          if (v53)
          {
LABEL_16:
            v62 = v130;
            sub_21C7106A8(&v38[v57], v130, type metadata accessor for PMAccount.Storage);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v63 = v62;
              v66 = v126;
              goto LABEL_26;
            }

            goto LABEL_3;
          }

LABEL_12:
          v62 = v128;
          sub_21C7106A8(&v38[v57], v128, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v63 = v62;
            v64 = &v148;
            goto LABEL_25;
          }

          goto LABEL_3;
        }
      }

      v65 = v129;
      sub_21C7106A8(&v38[v57], v129, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7126DC(v65, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v67 = *v65;
        v68 = [v67 hasValidWebsite];

        if (v68)
        {
          v69 = v123;
          sub_21C7106A8(&v38[v57], v123, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v70 = v122;
            sub_21C8399BC(v69, v122, type metadata accessor for PMAccount.MockData);
            v47 = *(v70 + 32);
            v49 = *(v70 + 40);

            sub_21C7126DC(v70, type metadata accessor for PMAccount.MockData);
            if ((v49 & 0x2000000000000000) != 0)
            {
LABEL_21:
              if ((v49 & 0xF00000000000000) != 0)
              {
                goto LABEL_5;
              }

              goto LABEL_34;
            }
          }

          else
          {
            v121 = *v69;
            v72 = [v121 userVisibleDomain];
            v47 = sub_21CB855C4();
            v49 = v73;

            if ((v49 & 0x2000000000000000) != 0)
            {
              goto LABEL_21;
            }
          }

          if ((v47 & 0xFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_5;
          }

LABEL_34:

          v74 = v120;
          sub_21C7106A8(&v38[v57], v120, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v63 = v74;
            v64 = &v146;
LABEL_25:
            v66 = *(v64 - 32);
LABEL_26:
            sub_21C8399BC(v63, v66, type metadata accessor for PMAccount.MockData);
            v71 = (v66 + *(v131 + 44));
            if (v71[1])
            {
              v47 = *v71;
              v49 = v71[1];
            }

            else
            {
              v47 = *(v66 + 32);
              v49 = *(v66 + 40);
            }

            sub_21C7126DC(v66, type metadata accessor for PMAccount.MockData);
            goto LABEL_5;
          }

          v44 = *v74;
          v45 = [*v74 effectiveTitle];
          goto LABEL_4;
        }
      }

      v62 = v127;
      sub_21C7106A8(&v38[v57], v127, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = v62;
        v64 = &v147;
        goto LABEL_25;
      }

LABEL_3:
      v44 = *v62;
      v45 = [*v62 effectiveTitleForSorting];
LABEL_4:
      v46 = v45;
      v47 = sub_21CB855C4();
      v49 = v48;

LABEL_5:
      v50 = &v55[OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_effectiveTitleForSorting];
      *v50 = v47;
      v50[1] = v49;
      v143.receiver = v55;
      v143.super_class = v54;
      objc_msgSendSuper2(&v143, sel_init);
      sub_21C7126DC(v38, type metadata accessor for PMAccount);
      sub_21C7126DC(v40, type metadata accessor for PMAccount);
      sub_21CB86134();
      v51 = *(v145 + 2);
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      v43 += v134;
      if (!--v41)
      {
        v75 = v145;
        v42 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }
  }

  v75 = MEMORY[0x277D84F90];
LABEL_39:
  v142 = sel_effectiveTitleForSorting;
  v76 = [v140 sectionTitles];
  v77 = sub_21CB85824();

  v78 = *(v77 + 16);
  if (v78)
  {
    v139 = v75;
    v79 = v42;
    v145 = v42;
    sub_21C7125C8(0, v78, 0);
    v80 = v145;
    v138 = v77;
    v81 = (v77 + 40);
    do
    {
      v82 = *(v81 - 1);
      v83 = *v81;
      v145 = v80;
      v85 = *(v80 + 2);
      v84 = *(v80 + 3);

      if (v85 >= v84 >> 1)
      {
        sub_21C7125C8((v84 > 1), v85 + 1, 1);
        v80 = v145;
      }

      *(v80 + 2) = v85 + 1;
      v86 = &v80[24 * v85];
      *(v86 + 4) = v82;
      *(v86 + 5) = v83;
      *(v86 + 6) = v79;
      v81 += 2;
      --v78;
    }

    while (v78);

    v75 = v139;
    if (!(v139 >> 62))
    {
LABEL_45:
      v88 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v88)
      {
        goto LABEL_46;
      }

      goto LABEL_64;
    }
  }

  else
  {

    v80 = MEMORY[0x277D84F90];
    if (!(v75 >> 62))
    {
      goto LABEL_45;
    }
  }

  result = sub_21CB85FA4();
  v88 = result;
  if (result)
  {
LABEL_46:
    if (v88 >= 1)
    {
      v89 = 0;
      while (1)
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v90 = MEMORY[0x21CF15BD0](v89, v75);
        }

        else
        {
          v90 = *&v75[8 * v89 + 32];
        }

        v91 = v90;
        v92 = [v140 sectionForObject:v90 collationStringSelector:v142];
        sub_21C7106A8(v91 + OBJC_IVAR____TtCC17PasswordManagerUI22PMAppAccountsListModel16WrappedPMAccount_pmAccount, v141, type metadata accessor for PMAccount);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v92 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          result = sub_21CAA1078(v80);
          v80 = result;
          if ((v92 & 0x8000000000000000) != 0)
          {
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
            goto LABEL_100;
          }
        }

        if (v92 >= *(v80 + 2))
        {
          goto LABEL_94;
        }

        v93 = &v80[24 * v92];
        v96 = *(v93 + 6);
        v95 = (v93 + 48);
        v94 = v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v95 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v94 = sub_21CA4F1B8(0, v94[2] + 1, 1, v94);
          *v95 = v94;
        }

        v99 = v94[2];
        v98 = v94[3];
        if (v99 >= v98 >> 1)
        {
          *v95 = sub_21CA4F1B8(v98 > 1, v99 + 1, 1, v94);
        }

        ++v89;

        v100 = *v95;
        *(v100 + 16) = v99 + 1;
        sub_21C8399BC(v141, v100 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v99, type metadata accessor for PMAccount);
        if (v88 == v89)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_101;
  }

LABEL_64:

  v101 = *(v80 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = 0;
    while (*(*&v80[v102 + 48] + 16))
    {
      ++v103;
      v102 += 24;
      if (v101 == v103)
      {
        goto LABEL_68;
      }
    }

    v104 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      goto LABEL_102;
    }

    if (v104 != v101)
    {
      while (v104 < v101)
      {
        v110 = *&v80[v102 + 72];
        if (*(v110 + 16))
        {
          if (v104 != v103)
          {
            if (v103 >= v101)
            {
              goto LABEL_96;
            }

            v111 = &v80[24 * v103 + 32];
            v112 = *(v111 + 8);
            v142 = *v111;
            v113 = *(v111 + 16);
            v114 = *&v80[v102 + 56];
            v115 = *&v80[v102 + 64];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v80 = sub_21CAA1078(v80);
            }

            v116 = &v80[24 * v103];
            v118 = *(v116 + 5);
            v117 = *(v116 + 6);
            *(v116 + 4) = v114;
            *(v116 + 5) = v115;
            *(v116 + 6) = v110;

            if (v104 >= *(v80 + 2))
            {
              goto LABEL_97;
            }

            v107 = &v80[v102];
            v109 = *&v80[v102 + 64];
            v108 = *&v80[v102 + 72];
            *(v107 + 7) = v142;
            *(v107 + 8) = v112;
            *(v107 + 9) = v113;

            v101 = *(v80 + 2);
          }

          ++v103;
        }

        ++v104;
        v102 += 24;
        if (v104 == v101)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_95;
    }

LABEL_71:
    if (v101 < v103)
    {
      goto LABEL_99;
    }

    if (v103 < 0)
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      return result;
    }
  }

  else
  {
LABEL_68:
    v103 = *(v80 + 2);
  }

  if (__OFADD__(v101, v103 - v101))
  {
    goto LABEL_98;
  }

  v105 = swift_isUniquelyReferenced_nonNull_native();
  v145 = v80;
  if (!v105 || v103 > *(v80 + 3) >> 1)
  {
    if (v101 <= v103)
    {
      v106 = v103;
    }

    else
    {
      v106 = v101;
    }

    v80 = sub_21CA4F098(v105, v106, 1, v80);
    v145 = v80;
  }

  sub_21C715DC4(v103, v101, 0);

  return v80;
}

char *sub_21C7125C8(char *a1, int64_t a2, char a3)
{
  result = sub_21C715CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21C712618(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

void sub_21C712684()
{
  if (!qword_27CDEDA28)
  {
    type metadata accessor for PMGroupInvitationsListModel(255);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEDA28);
    }
  }
}

uint64_t sub_21C7126DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C71273C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v6 = sub_21C714F88(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C7128C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_21C712904()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C7072A8(v1, v8);

  v4 = *(v3 + 40);

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21C8979A8;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0);
  sub_21CB81E04();

  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C712BAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C712BE8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C712D24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C712D6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel) = *(v0 + 24);
}

uint64_t sub_21C712DB0()
{
  sub_21C712E50();
  v1 = OBJC_IVAR____TtC17PasswordManagerUI28PMAppAccountsSearchListModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C712E50()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_id;
  v2 = sub_21CB80E34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__groupIDForInvitationAcceptanceFlow, &unk_27CDF20B0, &unk_21CBA0090);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__editMode;
  v4 = sub_21CB85114();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21C7126DC(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, type metadata accessor for PMAppAccountsListModel.Configuration);
  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);

  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__subscriptions);

  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);

  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults);

  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__autoFillQuirksManager);

  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__globalSearchModel);

  v11 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v12 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);

  v13 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccounts);

  v14 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v15 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__highlightSearchText + 8);

  v16 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchTask);

  v17 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedSections);

  v18 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedSections);

  v19 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts);

  v20 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v21 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__deleteAccountsAlertConfiguration);

  v22 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountIDToScrollTo + 8);

  v23 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived + 8);
  sub_21C71B710(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived));
  v24 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel___observationRegistrar;
  v25 = sub_21CB81114();
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  return v0;
}

uint64_t sub_21C7130C8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__exportErrorReceived);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_21C71DD5C(v1);
  return sub_21C71B710(v4);
}

void sub_21C713140(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_21C713194(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_21CB85F24();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_21CAA206C(v3, *(a1 + 36), 0, a1);

  return v5;
}

void sub_21C713210()
{
  sub_21C705CFC();
  if (v0 <= 0x3F)
  {
    sub_21C713384();
    if (v1 <= 0x3F)
    {
      sub_21C707F4C();
      if (v2 <= 0x3F)
      {
        sub_21C713510();
        if (v3 <= 0x3F)
        {
          sub_21C70640C();
          if (v4 <= 0x3F)
          {
            sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_21C708274();
              if (v6 <= 0x3F)
              {
                sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_21C712684();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C713384()
{
  if (!qword_27CDEDA18)
  {
    type metadata accessor for PMTipsStore();
    sub_21C705EB0(&qword_27CDED870, type metadata accessor for PMTipsStore);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEDA18);
    }
  }
}

uint64_t sub_21C713418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C713460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7134A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C713510()
{
  if (!qword_27CDED050)
  {
    type metadata accessor for PMAccountsListModel(255);
    sub_21C713460(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    v0 = sub_21CB82B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDED050);
    }
  }
}

void sub_21C7135A4()
{
  if (!qword_27CDEAEC8)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEAEC8);
    }
  }
}

void sub_21C713604(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21C713654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for PMScrollTestModifier()
{
  result = qword_27CDF8AD0;
  if (!qword_27CDF8AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C713714()
{
  result = sub_21CB820E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21C713780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C71382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEFA8, &qword_21CBAB4D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v25 - v16;
  v18 = *(v15 + 56);
  sub_21C7106A8(a1, v25 - v16, type metadata accessor for PMAppAccountsListModel.Configuration);
  sub_21C7106A8(a2, &v17[v18], type metadata accessor for PMAppAccountsListModel.Configuration);
  v19 = *(v5 + 48);
  v20 = v19(v17, 4, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v17[v18], 4, v4) == 2)
      {
        goto LABEL_20;
      }
    }

    else if (v20 == 3)
    {
      if (v19(&v17[v18], 4, v4) == 3)
      {
        goto LABEL_20;
      }
    }

    else if (v19(&v17[v18], 4, v4) == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v20)
  {
    if (v19(&v17[v18], 4, v4) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_21C7106A8(v17, v12, type metadata accessor for PMAppAccountsListModel.Configuration);
    if (v19(&v17[v18], 4, v4))
    {
      (*(v5 + 8))(v12, v4);
LABEL_14:
      sub_21C6EA794(v17, &qword_27CDEEFA8, &qword_21CBAB4D8);
      return 0;
    }

    (*(v5 + 32))(v8, &v17[v18], v4);
    sub_21C713E38(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v25[2] == v25[0] && v25[3] == v25[1])
    {
      v22 = *(v5 + 8);
      v22(v8, v4);

      v22(v12, v4);
    }

    else
    {
      v23 = sub_21CB86344();
      v24 = *(v5 + 8);
      v24(v8, v4);

      v24(v12, v4);
      if ((v23 & 1) == 0)
      {
        sub_21C7126DC(v17, type metadata accessor for PMAppAccountsListModel.Configuration);
        return 0;
      }
    }
  }

LABEL_20:
  sub_21C7126DC(v17, type metadata accessor for PMAppAccountsListModel.Configuration);
  return 1;
}

unint64_t sub_21C713C64(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_21C713C74(unsigned __int8 a1)
{
  v2 = v1;
  swift_getKeyPath();
  v11 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v5 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption;
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption) != a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__appDefaults);
    v7 = qword_27CDEA4C0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v8 = sub_21C710778(v6, v11);

    swift_getKeyPath();
    sub_21CB810D4();

    v9 = *(v2 + v5);
    v10 = sub_21CB85584();
    [v8 setInteger:v9 forKey:v10];

    return sub_21C710AE8(0);
  }

  return result;
}

uint64_t sub_21C713E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C713E80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - v5;
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  v16 = *(v15 + 8);
  MEMORY[0x28223BE20](v14);
  v39 = &v37 - v17;
  v18 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7106A8(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_configuration, v21, type metadata accessor for PMAppAccountsListModel.Configuration);
  v22 = (*(v8 + 48))(v21, 4, v7);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
      v32 = qword_27CDEA4C0;

      if (v32 == -1)
      {
        goto LABEL_15;
      }
    }

    else if (v22 == 3)
    {
      v23 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
      v24 = qword_27CDEA4C0;

      if (v24 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
      v33 = qword_27CDEA4C0;

      if (v33 == -1)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  v38 = v3;
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
    v34 = qword_27CDEA4C0;

    if (v34 == -1)
    {
LABEL_15:
      sub_21CB86544();
      sub_21C7072A8(v23, v42);

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
      v35 = v39;
      sub_21CB81D84();
      swift_endAccess();

      swift_allocObject();
      swift_weakInit();
      sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
      v36 = v40;
      sub_21CB81E04();

      (*(v41 + 1))(v35, v36);
      swift_getKeyPath();
      v42 = v1;
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
      sub_21CB810D4();

      v42 = v1;
      swift_getKeyPath();
      sub_21CB810F4();

      swift_beginAccess();
      sub_21CB81CB4();
      swift_endAccess();

      v42 = v1;
      swift_getKeyPath();
      sub_21CB810E4();
    }

LABEL_16:
    swift_once();
    goto LABEL_15;
  }

  v25 = *(v8 + 32);
  v40 = v8 + 32;
  v41 = v13;
  v39 = v25;
  (v25)(v13, v21, v7);
  v26 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accountsState);
  v27 = qword_27CDEA4C0;

  if (v27 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v26, v42);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  v28 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, v41, v7);
  v29 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  (v39)(v30 + v29, v11, v7);
  sub_21C6EADEC(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720);
  sub_21CB81E04();

  (*(v38 + 8))(v6, v2);
  swift_getKeyPath();
  v42 = v1;
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v42 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v42 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  return (*(v8 + 8))(v41, v7);
}

uint64_t sub_21C714A28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C714AA0()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C714B64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__accounts);

  v6 = sub_21C714F88(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;

    sub_21C710AE8(0);
    result = sub_21C715E9C();
    if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__cachedRecentAccounts))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
      sub_21CB810C4();
    }
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C714DBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C881FA0(v4);
}

uint64_t sub_21C714DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_21C73A818(v21, v18, a4);
        sub_21C73A818(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_21C968BDC(v15, a6);
        sub_21C968BDC(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_21C714F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = (&v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v92 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v91 = (&v82 - v11);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  v12 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v14 = &v82 - v13;
  v15 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v93 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for PMAccount.UniqueID(0);
  v21 = *(*(v99 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v99);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v82 - v25);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  v27 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v29 = &v82 - v28;
  v100 = type metadata accessor for PMAccount(0);
  v30 = *(*(v100 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v100);
  v33 = (&v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v36 = (&v82 - v35);
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
    return 0;
  }

  if (!v37 || a1 == a2)
  {
    return 1;
  }

  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = a1 + v38;
  v40 = a2 + v38;
  v84 = *(v34 + 72);
  v85 = v26;
  v88 = (&v82 - v35);
  v89 = v33;
  v86 = v14;
  v87 = v7;
  v82 = v24;
  while (1)
  {
    sub_21C73A818(v39, v36, type metadata accessor for PMAccount);
    sub_21C73A818(v40, v33, type metadata accessor for PMAccount);
    v42 = *v36 == *v33 && v36[1] == v33[1];
    if (!v42 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_47;
    }

    v95 = v40;
    v96 = v39;
    v43 = v100[5];
    v44 = *(v98 + 48);
    sub_21C73A818(v36 + v43, v29, type metadata accessor for PMAccount.UniqueID);
    sub_21C73A818(v33 + v43, &v29[v44], type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v82;
      sub_21C73A818(v29, v82, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v94;
        sub_21C968B74(&v29[v44], v94, type metadata accessor for PMAccount.SIWAUniqueID);
        v46 = sub_21C7D1550(v26, v45);
        v47 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_16;
      }

      v81 = type metadata accessor for PMAccount.SIWAUniqueID;
LABEL_40:
      sub_21C968BDC(v26, v81);
      sub_21C6EA794(v29, &qword_27CDEB3C8, &unk_21CBB0010);
      goto LABEL_47;
    }

    sub_21C73A818(v29, v26, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v81 = type metadata accessor for PMAccount.CombinedUniqueID;
      goto LABEL_40;
    }

    v45 = v93;
    sub_21C968B74(&v29[v44], v93, type metadata accessor for PMAccount.CombinedUniqueID);
    v46 = sub_21C7CECDC(v26, v45);
    v47 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_16:
    v48 = v47;
    sub_21C968BDC(v45, v47);
    sub_21C968BDC(v26, v48);
    if (!v46)
    {
      sub_21C968BDC(v29, type metadata accessor for PMAccount.UniqueID);
      goto LABEL_47;
    }

    sub_21C968BDC(v29, type metadata accessor for PMAccount.UniqueID);
    v49 = v100[6];
    v50 = *(v97 + 48);
    sub_21C73A818(v36 + v49, v14, type metadata accessor for PMAccount.Storage);
    sub_21C73A818(v33 + v49, &v14[v50], type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v51 = v92;
      sub_21C73A818(v14, v92, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v52 = v90;
        sub_21C968B74(&v14[v50], v90, type metadata accessor for PMAccount.MockData);
        v53 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v51, v52);
        sub_21C968BDC(v52, type metadata accessor for PMAccount.MockData);
        sub_21C968BDC(v51, type metadata accessor for PMAccount.MockData);
        if (!v53)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      sub_21C968BDC(v51, type metadata accessor for PMAccount.MockData);
LABEL_43:
      sub_21C6EA794(v14, &unk_27CDF7680, &qword_21CBB4E30);
      goto LABEL_47;
    }

    v54 = v91;
    sub_21C73A818(v14, v91, type metadata accessor for PMAccount.Storage);
    v55 = *v54;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_43;
    }

    v56 = *&v14[v50];
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v57 = sub_21CB85DD4();

    if ((v57 & 1) == 0)
    {
LABEL_35:
      sub_21C968BDC(v14, type metadata accessor for PMAccount.Storage);
      goto LABEL_47;
    }

LABEL_23:
    sub_21C968BDC(v14, type metadata accessor for PMAccount.Storage);
    v58 = v100[7];
    v59 = v36 + v58;
    v60 = *(v36 + v58);
    v61 = *(v59 + 1);
    v62 = *(v59 + 2);
    v63 = *(v59 + 3);
    v64 = (v33 + v58);
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[2];
    v68 = v64[3];
    if (v61)
    {
      break;
    }

    sub_21C7D33AC(v60, 0, *(v59 + 2), *(v59 + 3));
    if (v66)
    {
      sub_21C7D33AC(v65, v66, v67, v68);
      goto LABEL_45;
    }

    sub_21C7D33AC(v65, 0, v67, v68);
    sub_21C7D33F0(v60, 0, v62, v63);
    v33 = v89;
    sub_21C968BDC(v89, type metadata accessor for PMAccount);
    v36 = v88;
    sub_21C968BDC(v88, type metadata accessor for PMAccount);
LABEL_5:
    v26 = v85;
    v40 = v95 + v84;
    v39 = v96 + v84;
    result = 1;
    --v37;
    v14 = v86;
    if (!v37)
    {
      return result;
    }
  }

  if (v66)
  {
    if (v60 != v65 || v61 != v66) && (v69 = *(v59 + 1), v70 = *v64, v71 = v64[1], (sub_21CB86344() & 1) == 0) || ((v62 ^ v67))
    {
      sub_21C7D33AC(v60, v61, v62, v63);
      sub_21C7D33AC(v65, v66, v67, v68);
      sub_21C7D33AC(v60, v61, v62, v63);
      sub_21C7D33F0(v65, v66, v67, v68);

      v77 = v60;
      v78 = v61;
      v79 = v62;
      v80 = v63;
      goto LABEL_46;
    }

    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v83 = v37;
    v72 = v29;
    v73 = v67;
    v74 = v68;
    sub_21C7D33AC(v60, v61, v62, v63);
    sub_21C7D33AC(v65, v66, v73, v68);
    sub_21C7D33AC(v60, v61, v62, v63);
    v75 = sub_21CB85DD4();
    v76 = v73;
    v29 = v72;
    v37 = v83;
    sub_21C7D33F0(v65, v66, v76, v74);

    sub_21C7D33F0(v60, v61, v62, v63);
    v33 = v89;
    sub_21C968BDC(v89, type metadata accessor for PMAccount);
    v36 = v88;
    sub_21C968BDC(v88, type metadata accessor for PMAccount);
    if ((v75 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_21C7D33AC(v60, *(v59 + 1), *(v59 + 2), *(v59 + 3));
  sub_21C7D33AC(v65, 0, v67, v68);
  sub_21C7D33AC(v60, v61, v62, v63);

LABEL_45:
  sub_21C7D33F0(v60, v61, v62, v63);
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v80 = v68;
LABEL_46:
  sub_21C7D33F0(v77, v78, v79, v80);
  v36 = v88;
  v33 = v89;
LABEL_47:
  sub_21C968BDC(v33, type metadata accessor for PMAccount);
  sub_21C968BDC(v36, type metadata accessor for PMAccount);
  return 0;
}

uint64_t sub_21C715A80(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_21C715B40(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_21C7115FC(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_21C715B54(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }
}

char *sub_21C715CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB020, &qword_21CBA0D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21C715DC4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21C715E9C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21C713E38(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return sub_21C8852EC();
  }

  swift_getKeyPath();
  sub_21CB810D4();

  v5 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedAccounts;
  swift_beginAccess();
  v6 = *(v1 + v5);

  sub_21C71273C(v7);
  swift_getKeyPath();
  sub_21CB810D4();

  v8 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortedSections);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);

  sub_21CB810C4();
}

uint64_t sub_21C7161A0()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = qword_27CDEA4C0;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v4 = sub_21C7072A8(v2, v12);

  v5 = *(v4 + 32);

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  sub_21C6EADEC(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30);
  sub_21CB81E04();

  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath();
  sub_21CB810E4();

  v6 = *(v1 + 40);

  sub_21CB86544();
  v7 = sub_21C7072A8(v6, v1);

  v8 = *(v7 + 40);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21C8D7A48;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0);
  sub_21CB81E04();

  swift_getKeyPath();
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C7165E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C716620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = type metadata accessor for PMAppSourceListModel.Action(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C710710(a1, v12, type metadata accessor for PMAppSourceListModel.Action);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
    if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
    {
      sub_21C8C77C0();
    }

    v15 = *(v14 + 48);
    sub_21C716934(v12, v8, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C716934(&v12[v15], v6, &qword_27CDEAC20, &qword_21CBAD710);
    if (sub_21C71699C())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      if (v18[7] == 1)
      {
        v16 = sub_21CA4DE84();
        v17 = [v16 hasChanges];

        if (v17)
        {
          sub_21C8C8DEC(v8, v6);
LABEL_10:

          sub_21C6EA794(v6, &qword_27CDEAC20, &qword_21CBAD710);
          return sub_21C6EA794(v8, &qword_27CDEAC20, &qword_21CBAD710);
        }
      }

      else
      {
      }
    }

    sub_21C716FCC();
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_21C716934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C71699C()
{
  v1 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v17 = v0;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  result = 0;
  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
  if (!(v10 >> 62))
  {
    swift_getKeyPath();
    v17 = v10;
    sub_21C71B720(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);

    sub_21CB810D4();

    v11 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
    swift_beginAccess();
    sub_21C710710(v10 + v11, v8, type metadata accessor for PMMultipleAccountsDetailsModel.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v14 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
      v15 = v8;
      goto LABEL_6;
    }

    v12 = *v8;
    swift_getKeyPath();
    v16[0] = v12;
    sub_21C71B720(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel);
    sub_21CB810D4();

    v13 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
    swift_beginAccess();
    sub_21C710710(v12 + v13, v4, type metadata accessor for PMAppAccountDetailsModel.State);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for PMAppAccountDetailsModel.State;
      v15 = v4;
LABEL_6:
      sub_21C7192A0(v15, v14);
      return 0;
    }

    return *v4;
  }

  return result;
}

uint64_t sub_21C716D0C()
{
  result = type metadata accessor for PMCombinedAccountDetailsModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PMAccount(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21C716DA0()
{
  sub_21C716E58();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMAppAccountDetailsModel(319);
    if (v1 <= 0x3F)
    {
      sub_21C6F07E4(319, &qword_27CDF4F08, type metadata accessor for PMAccount, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21C716E58()
{
  if (!qword_27CDF6B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF20B0, &unk_21CBA0090);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF6B88);
    }
  }
}

uint64_t sub_21C716EF0()
{
  result = type metadata accessor for PMAppAccountDetailsModel.State(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21CB81114();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C716FCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v176 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v178 = &v172 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v172 - v8;
  v181 = type metadata accessor for PMAccount(0);
  v180 = *(v181 - 8);
  v10 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v177 = (&v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v12 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v183 = &v172 - v13;
  v14 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  v188 = v18;
  v189 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v175 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v186 = &v172 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v172 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v179 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v184 = &v172 - v32;
  MEMORY[0x28223BE20](v31);
  v187 = &v172 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v172 - v36;
  v38 = *(v0 + 64);
  swift_getKeyPath();
  v193 = v38;
  sub_21C71B720(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v39 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v38 + v39, v37, &qword_27CDEAC20, &qword_21CBAD710);
  v40 = type metadata accessor for PMAppSourceListModel.Source(0);
  if ((*(*(v40 - 8) + 48))(v37, 1, v40) == 1)
  {
    sub_21C718AB8(0xC000000000000000);
    v41 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState;
    if ((*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) == 0)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v172 - 2) = v1;
      *(&v172 - 1) = 0x8000000000000000;
      v192 = v1;
      sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
      sub_21CB810C4();

      return sub_21C718CB4();
    }

LABEL_18:
    *(v1 + v41) = 0x8000000000000000;
    return sub_21C718CB4();
  }

  v185 = v1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v49 = v185;
    v50 = v189;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21C8CB690(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___allViewModel, 1, &unk_282E4F920, sub_21C8D8B0C);
        v56 = MEMORY[0x277D84FA0];
        sub_21C880484(MEMORY[0x277D84FA0]);

        v57 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___allViewModel);

        sub_21C718AB8(v58);
        v59 = v187;
        (*(v50 + 56))(v187, 1, 1, v188);
        v60 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        v63 = v56;
        v64 = 0x8000000000000000;
      }

      else
      {
        sub_21C8CB690(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___passkeysViewModel, 2, &unk_282E4FA10, sub_21C8D7778);
        v94 = MEMORY[0x277D84FA0];
        sub_21C880484(MEMORY[0x277D84FA0]);

        v95 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___passkeysViewModel);

        sub_21C718AB8(v96);
        v59 = v187;
        (*(v50 + 56))(v187, 1, 1, v188);
        v97 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
        v98 = *(v97 + 48);
        v99 = *(v97 + 52);
        swift_allocObject();
        v63 = v94;
        v64 = 0x8000000000000008;
      }

LABEL_33:
      v110 = sub_21CA770B0(v63, v64, v59);
      goto LABEL_34;
    }

    if (!EnumCaseMultiPayload)
    {
      v51 = v188;
      (*(v189 + 32))(v26, v37, v188);
      sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel, sub_21C8CBB34);
      v52 = v187;
      (*(v50 + 16))(v187, v26, v51);
      (*(v50 + 56))(v52, 0, 1, v51);
      sub_21C9C5C48(v52);

      v53 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel);

      sub_21C718AB8(v54 | 0x2000000000000000);
      if ((*(v49 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) != 0)
      {
        *(v49 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) = 0x8000000000000000;
      }

      else
      {
        v55 = swift_getKeyPath();
        MEMORY[0x28223BE20](v55);
        *(&v172 - 2) = v49;
        *(&v172 - 1) = 0x8000000000000000;
        v192 = v49;
        sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
        sub_21CB810C4();
      }

      (*(v50 + 8))(v26, v51);
      return sub_21C718CB4();
    }

    v83 = *(v189 + 32);
    v84 = v186;
    v85 = v188;
    v174 = v189 + 32;
    v173 = v83;
    v83(v186, v37, v188);
    swift_getKeyPath();
    v86 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
    v192 = v49;
    v87 = sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810D4();

    v88 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupViewModels;
    swift_beginAccess();
    v89 = *(v49 + v88);
    v90 = *(v89 + 16);
    v178 = v87;
    if (v90)
    {

      v91 = sub_21CB10A54(v84);
      if (v92)
      {
        v93 = *(*(v89 + 56) + 8 * v91);

        goto LABEL_38;
      }
    }

    (*(v50 + 16))(v17, v84, v85);
    (*(v50 + 56))(v17, 0, 4, v85);
    v138 = type metadata accessor for PMAppAccountsListModel(0);
    v139 = *(v138 + 48);
    v140 = *(v138 + 52);
    swift_allocObject();
    v93 = sub_21C70FDD0(v17);
    v141 = swift_allocObject();
    swift_weakInit();
    v142 = swift_allocObject();
    swift_weakInit();
    v143 = swift_allocObject();
    *(v143 + 16) = v141;
    *(v143 + 24) = v142;
    v144 = (v93 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
    v145 = *(v93 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
    *v144 = sub_21C8D8B0C;
    v144[1] = v143;

    swift_getKeyPath();
    v191 = v93;
    sub_21C71B720(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();
    v49 = v185;

    v146 = *(v93 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    sub_21C8CB938(MEMORY[0x277D84FA0], v146);

    v50 = v189;

    swift_getKeyPath();
    v191 = v49;

    sub_21CB810D4();

    v191 = v49;
    swift_getKeyPath();
    sub_21CB810F4();
    v84 = v186;

    swift_beginAccess();
    v147 = *(v49 + v88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = *(v49 + v88);
    *(v49 + v88) = 0x8000000000000000;
    sub_21C8D43D4(v93, v84, isUniquelyReferenced_nonNull_native);
    *(v49 + v88) = v190;
    swift_endAccess();
    v191 = v49;
    swift_getKeyPath();
    sub_21CB810E4();

LABEL_38:
    v149 = v85;
    swift_getKeyPath();
    v191 = v49;
    v181 = v93;

    v176 = v86;
    sub_21CB810D4();

    v150 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__groupIDForRecentlyAcceptedInvitation;
    swift_beginAccess();
    v151 = v49;
    v152 = v184;
    v177 = *(v50 + 16);
    v177(v184, v84, v85);
    v180 = *(v50 + 56);
    (v180)(v152, 0, 1, v85);
    v153 = *(v182 + 48);
    v154 = v151 + v150;
    v155 = v183;
    sub_21C6EDBAC(v154, v183, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v152, v155 + v153, &unk_27CDF20B0, &unk_21CBA0090);
    v156 = *(v50 + 48);
    if (v156(v155, 1, v85) == 1)
    {
      sub_21C6EA794(v152, &unk_27CDF20B0, &unk_21CBA0090);
      if (v156(v155 + v153, 1, v85) == 1)
      {
        sub_21C6EA794(v155, &unk_27CDF20B0, &unk_21CBA0090);
        v149 = v188;
        v157 = v186;
LABEL_47:
        swift_getKeyPath();
        v163 = v185;
        v190 = v185;
        sub_21CB810D4();

        v164 = v187;
        sub_21C6EDBAC(v163 + v150, v187, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C87F798(v164);
        (v180)(v164, 1, 1, v149);
        sub_21C8C89DC(v164);
        goto LABEL_48;
      }
    }

    else
    {
      v158 = v179;
      sub_21C6EDBAC(v155, v179, &unk_27CDF20B0, &unk_21CBA0090);
      if (v156(v155 + v153, 1, v149) != 1)
      {
        v159 = v175;
        v173(v175, v155 + v153, v149);
        sub_21C71B720(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v160 = sub_21CB85574();
        v161 = v158;
        v162 = *(v189 + 8);
        v162(v159, v149);
        sub_21C6EA794(v184, &unk_27CDF20B0, &unk_21CBA0090);
        v162(v161, v149);
        sub_21C6EA794(v155, &unk_27CDF20B0, &unk_21CBA0090);
        v157 = v186;
        if (v160)
        {
          goto LABEL_47;
        }

LABEL_48:
        v165 = MEMORY[0x277D84FA0];
        sub_21C880484(MEMORY[0x277D84FA0]);

        sub_21C718AB8(v166);
        v167 = v187;
        v177(v187, v157, v149);
        (v180)(v167, 0, 1, v149);
        v168 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
        v169 = *(v168 + 48);
        v170 = *(v168 + 52);
        swift_allocObject();
        v171 = sub_21CA770B0(v165, 0x8000000000000000, v167);
        sub_21C8C7C18(v171);

        (*(v189 + 8))(v157, v149);
        return sub_21C718CB4();
      }

      sub_21C6EA794(v184, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v189 + 8))(v158, v149);
    }

    sub_21C6EA794(v155, &qword_27CDEAC40, &qword_21CBA1A40);
    v149 = v188;
    v157 = v186;
    goto LABEL_48;
  }

  v44 = v188;
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v1 = v185;
      sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel, sub_21C8CBB34);
      v65 = v187;
      (*(v189 + 56))(v187, 1, 1, v44);
      sub_21C9C5C48(v65);

      v66 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___invitationsViewModel);

      sub_21C718AB8(v67 | 0x2000000000000000);
      v41 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState;
      if ((*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState) & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    v111 = v185;
    sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel, sub_21C8CC278);
    v112 = MEMORY[0x277D84FA0];
    sub_21CAE9A98(MEMORY[0x277D84FA0]);

    v113 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel;
    v114 = *(v111 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___recentlyDeletedViewModel);

    sub_21C718AB8(v115 | 0x4000000000000000);
    v116 = *(v111 + v113);
    v117 = v187;
    (*(v189 + 56))(v187, 1, 1, v44);
    v118 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    swift_allocObject();

    v121 = sub_21CA770B0(v112, v116 | 0x4000000000000000, v117);

    v110 = v121;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v45 = v185;
      v46 = sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___verificationCodesViewModel, sub_21C8CD0AC);
      v47 = v46;
      if (*(v46 + 88))
      {
        v48 = swift_getKeyPath();
        MEMORY[0x28223BE20](v48);
        *(&v172 - 3) = 0;
        *(&v172 - 2) = 0;
        *(&v172 - 4) = v47;
        v192 = v47;
        sub_21C71B720(&qword_27CDEFE60, type metadata accessor for PMVerificationCodesListModel);
        sub_21CB810C4();
      }

      else
      {
        v131 = *(v46 + 80);
        *(v47 + 80) = 0;
        *(v47 + 88) = 0;
        sub_21CB72C70(v131, 0);
      }

      v132 = *(v45 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___verificationCodesViewModel);

      sub_21C718AB8(v133 | 0x8000000000000000);
      v59 = v187;
      (*(v189 + 56))(v187, 1, 1, v44);
      v134 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
      v135 = *(v134 + 48);
      v136 = *(v134 + 52);
      swift_allocObject();
      v63 = MEMORY[0x277D84FA0];
      v64 = 0x8000000000000010;
      goto LABEL_33;
    }

    v100 = v185;
    sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel, sub_21C8CD6A8);
    v101 = MEMORY[0x277D84FA0];
    sub_21C86234C(MEMORY[0x277D84FA0]);

    v102 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel;
    v103 = *(v100 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___wifiViewModel);

    sub_21C718AB8(v104 | 0xA000000000000000);
    v105 = *(v100 + v102);
    v106 = type metadata accessor for PMMultipleWiFiDetailsModel();
    v107 = *(v106 + 48);
    v108 = *(v106 + 52);
    v109 = swift_allocObject();
    *(v109 + 32) = 0;
    *(v109 + 40) = 0;
    *(v109 + 48) = v101;
    *(v109 + 56) = swift_getKeyPath();

    sub_21CB81104();
    *(v109 + 16) = v101;
    *(v109 + 24) = v105;

    sub_21CAF9EAC();

    v110 = v109 | 0x4000000000000000;
LABEL_34:
    sub_21C8C7C18(v110);
    return sub_21C718CB4();
  }

  v68 = v185;
  sub_21C8CBACC(&OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel, sub_21C8CC74C);
  v69 = MEMORY[0x277D84FA0];
  sub_21C901AD4(MEMORY[0x277D84FA0]);

  v70 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel;
  v71 = *(v68 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel____lazy_storage___securityRecommendationsViewModel);

  sub_21C718AB8(v72 | 0x6000000000000000);
  v73 = *(v68 + v70);
  v74 = v187;
  (*(v189 + 56))(v187, 1, 1, v44);
  v75 = type metadata accessor for PMMultipleAccountsDetailsModel(0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();

  v78 = sub_21CA770B0(v69, v73, v74);

  sub_21C8C7C18(v78);
  swift_getKeyPath();
  v79 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel___observationRegistrar;
  v192 = v68;
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v80 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  sub_21C6EDBAC(v68 + v80, v9, &unk_27CDEBE60, &unk_21CB9FF40);
  v81 = v180;
  v82 = v181;
  if ((*(v180 + 48))(v9, 1, v181) == 1)
  {
    sub_21C6EA794(v9, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  else
  {
    v189 = v79;
    v122 = v9;
    v123 = v177;
    sub_21C8D88C8(v122, v177, type metadata accessor for PMAccount);
    v124 = *(v68 + v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v126 = *(v123 + 1);
    *(inited + 32) = *v123;
    *(inited + 40) = v126;

    v127 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    sub_21C901AD4(v127);

    v128 = v178;
    (*(v81 + 56))(v178, 1, 1, v82);
    v129 = v176;
    sub_21C6EDBAC(v68 + v80, v176, &unk_27CDEBE60, &unk_21CB9FF40);
    LOBYTE(v127) = sub_21C7A2AE4(v129, v128);
    sub_21C6EA794(v129, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v127)
    {
      v130 = swift_getKeyPath();
      MEMORY[0x28223BE20](v130);
      *(&v172 - 2) = v68;
      *(&v172 - 1) = v128;
      v191 = v68;
      sub_21CB810C4();
    }

    else
    {
      sub_21C6EDBAC(v128, v129, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C8CA328(v129);
    }

    sub_21C6EA794(v128, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C7192A0(v123, type metadata accessor for PMAccount);
  }

  return sub_21C718CB4();
}

uint64_t sub_21C7189CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21CB70C48(v2, v3);
}

uint64_t sub_21C718AB8(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (!v3)
    {
      if (a1 >> 61 || v2 != a1)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v3 == 1)
    {
      if (a1 >> 61 != 1)
      {
        goto LABEL_20;
      }
    }

    else if (a1 >> 61 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v3 > 4)
  {
    if (v3 != 5)
    {
      if (a1 != 0xC000000000000000)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (a1 >> 61 != 5)
    {
      goto LABEL_20;
    }
  }

  else if (v3 == 3)
  {
    if (a1 >> 61 != 3)
    {
      goto LABEL_20;
    }
  }

  else if (a1 >> 61 != 4)
  {
LABEL_20:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
    sub_21CB810C4();
  }

  if (((v2 ^ a1) & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) = a1;
}

uint64_t sub_21C718CB4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21C71B720(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState) >> 62 == 3)
  {
    if (!*(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact))
    {
      return result;
    }

    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_21CB810D4();

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);

  v4 = sub_21C8C8514(v3);

  if (v4 || (swift_getKeyPath(), sub_21CB810D4(), result = , (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentStateIsEditing) & 1) != 0))
  {
    if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) == 1)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__columnPresentedInCompact) != 2)
  {
LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C719000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7190C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7191E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7192A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7193C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7194E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7195A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7196C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7197E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7198A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7199C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C719A20()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);
  v3 = (v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction);
  v4 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel_performAction + 8);
  *v3 = sub_21C919EBC;
  v3[1] = v1;

  swift_retain_n();

  swift_getKeyPath();
  sub_21C712D24(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v5 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v7 = sub_21C713194(v6);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v12 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
    v11 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected + 8);

    v12(v9, v10);
  }

  else
  {
  }
}

uint64_t sub_21C719C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  sub_21C6EDBAC(a1, v13, &qword_27CDEFEB8, &unk_21CBADD00);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v22 = &qword_27CDEFEB8;
    v23 = &unk_21CBADD00;
    v24 = v13;
  }

  else
  {
    sub_21C716934(v13, v21, &qword_27CDEFEC0, &qword_21CBC32C0);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = *(Strong + 64);

      sub_21C6EDBAC(v21, v19, &qword_27CDEFEC0, &qword_21CBC32C0);
      v27 = *&v19[*(v14 + 48) + 8];

      v28 = sub_21CB85C44();
      (*(*(v28 - 8) + 32))(v5, v19, v28);
      v29 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v29 - 8) + 56))(v5, 0, 1, v29);
      sub_21C742C88(v5);
    }

    if (!*&v21[*(v14 + 48) + 8])
    {
      swift_beginAccess();
      v30 = swift_weakLoadStrong();
      if (v30)
      {
        v31 = *(v30 + 48);
        v32 = qword_27CDEA4C0;

        if (v32 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7073E8(v31, v38);

        v33 = v36;
        (*(v15 + 56))(v36, 1, 1, v14);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21C6EDBAC(v33, v37, &qword_27CDEFEB8, &unk_21CBADD00);
        sub_21CB81DC4();
        sub_21C6EA794(v33, &qword_27CDEFEB8, &unk_21CBADD00);
      }
    }

    v22 = &qword_27CDEFEC0;
    v23 = &qword_21CBC32C0;
    v24 = v21;
  }

  return sub_21C6EA794(v24, v22, v23);
}

void sub_21C71A118()
{
  sub_21C71A1D4(319, &qword_27CDF5338, &qword_27CDEABE0, &qword_21CB9FE10, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21C71A1D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for PMAccountPickerModel()
{
  result = qword_27CDEAEB0;
  if (!qword_27CDEAEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C71A284()
{
  sub_21C6EE7A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDEAEC0, &qword_27CDEC1C0, &qword_21CBA3D50);
    if (v4 <= 0x3F)
    {
      v20 = *(v3 - 8) + 64;
      sub_21C6F039C(319, &qword_27CDEAEC8);
      if (v6 <= 0x3F)
      {
        v21 = *(v5 - 8) + 64;
        sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
        if (v8 <= 0x3F)
        {
          v22 = *(v7 - 8) + 64;
          sub_21C6F039C(319, &qword_27CDEAEE0);
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            sub_21C6EA5CC(319, &qword_27CDEAEE8, &qword_27CDEBEB0, &unk_21CBA5440);
            if (v13 <= 0x3F)
            {
              v23 = *(v12 - 8) + 64;
              sub_21C6EA5CC(319, &qword_27CDEAEF0, &qword_27CDEAEF8, &unk_21CBA0740);
              if (v15 <= 0x3F)
              {
                v24 = *(v14 - 8) + 64;
                sub_21C6EA5CC(319, &qword_27CDEAF00, &unk_27CDED260, &qword_21CBA1C60);
                if (v17 <= 0x3F)
                {
                  v25 = *(v16 - 8) + 64;
                  sub_21C6EA5CC(319, &qword_27CDEAF08, &qword_27CDEAF10, &qword_21CBA0750);
                  if (v19 <= 0x3F)
                  {
                    v26 = *(v18 - 8) + 64;
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C71A650()
{
  v0 = type metadata accessor for PMAddAccountModel.Configuration(319);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDEDD48, &unk_27CDF20B0, &unk_21CBA0090);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_21C6F03E8(319, &qword_27CDEAEC8, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_21C6EA5CC(319, &qword_27CDEDD50, &qword_27CDEDD58, &unk_21CBA8970);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_21C6EA5CC(319, &qword_27CDEDD60, &qword_27CDEBED0, &unk_21CBA1A60);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_21C6F03E8(319, &qword_27CDEAEE0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_21C71A8E0()
{
  sub_21C6F0848();
  if (v0 <= 0x3F)
  {
    sub_21C6F03E8(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C71A9C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PMAccountPickerHistoryItem()
{
  result = qword_27CDF7418;
  if (!qword_27CDF7418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C71AA48()
{
  result = type metadata accessor for PMAccount(319);
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

uint64_t sub_21C71AB00()
{
  result = sub_21CB81114();
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

void sub_21C71AB9C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  if ((*(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__appDefaults);
    v2 = qword_27CDEA4C0;

    if (v2 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v3 = sub_21C710778(v1, v4);

    [v3 setBool:0 forKey:*MEMORY[0x277D49CD0]];
  }
}

uint64_t sub_21C71ACE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C71AD2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v23 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC60, &unk_21CBA00B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v22 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore;
  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  v26 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7073E8(v10, v27);

  swift_beginAccess();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC70, &qword_27CDEAC60, &unk_21CBA00B0);
  sub_21CB81E04();

  v12 = *(v6 + 8);
  v19[1] = v6 + 8;
  v20 = v12;
  v12(v9, v5);
  swift_getKeyPath();
  v27 = v1;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  v13 = v22;
  v14 = *(v1 + v22);

  sub_21CB86544();
  sub_21C7073E8(v14, v27);

  swift_beginAccess();
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CB81E04();

  v20(v9, v5);
  swift_getKeyPath();
  v27 = v1;
  sub_21CB810D4();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  v15 = *(v1 + v13);

  sub_21CB86544();
  sub_21C7073E8(v15, v27);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v16 = v23;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC80, &qword_27CDEAC58, &qword_21CBA0EC0);
  v17 = v25;
  sub_21CB81E04();

  (*(v24 + 8))(v16, v17);
  swift_getKeyPath();
  v27 = v1;
  sub_21CB810D4();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C71B46C(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v12 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v6)
    {
      swift_getKeyPath();
      v12[2] = v8;
      sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
      sub_21CB810D4();

      v9 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
      swift_beginAccess();
      sub_21C6EDBAC(v8 + v9, v5, &unk_27CDF20B0, &unk_21CBA0090);
      v10 = sub_21CB85C44();
      LODWORD(v9) = (*(*(v10 - 8) + 48))(v5, 1, v10);
      sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
      if (v9 != 1)
      {
        if ((*(v8 + 58) & 1) == 0)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          v12[-2] = v8;
          LOBYTE(v12[-1]) = 1;
          v12[1] = v8;
          sub_21CB810C4();
        }

        *(v8 + 58) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_21C71B6E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C71273C(v4);
}

uint64_t sub_21C71B710(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C71B720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C71B768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C71B7B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C71B824(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C71B898(v4, a3);
  }

  return result;
}

uint64_t sub_21C71B898(uint64_t a1, int a2)
{
  v24[3] = a2;
  v3 = v2;
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  v15 = sub_21CB85C44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26 = v2;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  v20 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v3 + v20, v14, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_21C6EA794(v14, &unk_27CDF20B0, &unk_21CBA0090);
  }

  (*(v16 + 32))(v19, v14, v15);
  if (sub_21C7A120C(v19, v25))
  {
    v22 = *(*(v3 + 16) + 64);
    (*(v16 + 16))(v7, v19, v15);
    v23 = type metadata accessor for PMAppSourceListModel.Source(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v7, 0, 1, v23);

    sub_21C742C88(v7);

    (*(v16 + 56))(v12, 1, 1, v15);
    sub_21C7A05C0(v12);
  }

  return (*(v16 + 8))(v19, v15);
}