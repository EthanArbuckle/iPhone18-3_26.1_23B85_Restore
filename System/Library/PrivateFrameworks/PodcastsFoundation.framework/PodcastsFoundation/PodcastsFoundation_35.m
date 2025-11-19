void sub_1D90535C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A0, &qword_1D9188F08);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_1D8D33C70(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1D90537A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB68B0, qword_1D91AC4E0);
        swift_dynamicCast();
        sub_1D8D65618(&v25, v27);
        sub_1D8D65618(v27, v28);
        sub_1D8D65618(v28, &v26);
        result = sub_1D8D33C70(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_1D8D65618(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1D8D65618(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D9053A00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1D8D65618(&v27, v29);
        sub_1D8D65618(v29, v30);
        sub_1D8D65618(v30, &v28);
        result = sub_1D8D33C70(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_1D8D65618(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1D8D65618(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D9053C58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1D8D65618(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1D8D65618(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1D8D65618(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1D91793CC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1D8D65618(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D9053F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
    v2 = sub_1D91797AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_16:
    v15 = __clz(__rbit64(v5)) | (v9 << 6);
    v16 = *(*(a1 + 48) + v15);
    v17 = (*(a1 + 56) + 16 * v15);
    v5 &= v5 - 1;
    v23 = v16;
    v25 = *v17;
    v26 = v17[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    swift_dynamicCast();
    v18 = *(v2 + 40);
    sub_1D9179DBC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    result = sub_1D9179E1C();
    v10 = -1 << *(v2 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    if (((-1 << v11) & ~*(v7 + 8 * (v11 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v10) >> 6;
      while (++v12 != v20 || (v19 & 1) == 0)
      {
        v21 = v12 == v20;
        if (v12 == v20)
        {
          v12 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v12);
        if (v22 != -1)
        {
          v13 = __clz(__rbit64(~v22)) + (v12 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_27;
    }

    v13 = __clz(__rbit64((-1 << v11) & ~*(v7 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v2 + 48) + v13) = v23;
    *(*(v2 + 56) + 16 * v13) = v24;
    ++*(v2 + 16);
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v9;
    if (v5)
    {
      v9 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D9054384(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1D9189080;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = a1;
    sub_1D905454C(result, a2 & 1, *&a6, 0, a3, a4, a5);
    return swift_setDeallocating();
  }

  return result;
}

uint64_t sub_1D905454C(uint64_t a1, int a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v94 = a6;
  v95 = a7;
  LODWORD(v90) = a4;
  v85 = *&a3;
  LODWORD(v89) = a2;
  v91 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v97 = &v78 - v10;
  v92 = type metadata accessor for MediaRequest.Params();
  v11 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D9176E3C();
  v14 = *(v88 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8908, &unk_1D91A4830);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v78 - v20;
  v22 = sub_1D9176F0C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_opt_self();
  if (([v27 isRunningOnHomepod] & 1) != 0 || (result = objc_msgSend(v27, sel_supportsLocalLibrary), (result & 1) == 0))
  {
    v87 = a5;
    v29 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1D9176EBC();
    v30 = sub_1D9176EDC();
    (*(v23 + 8))(v26, v22);
    [v29 setLocale_];

    v31 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v96 = v29;
    [v29 setDateFormat_];

    sub_1D9176FEC();
    v32 = sub_1D917701C();
    v33 = *(v32 - 8);
    v34 = 0;
    if ((*(v33 + 48))(v21, 1, v32) != 1)
    {
      v34 = sub_1D9176FFC();
      (*(v33 + 8))(v21, v32);
    }

    v35 = v96;
    [v96 setTimeZone_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    v86 = xmmword_1D918A530;
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000001D91C81A0;
    sub_1D9176E2C();
    v37 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v14 + 8))(v17, v88);
    v38 = [v35 stringFromDate_];

    v39 = sub_1D917820C();
    v41 = v40;

    v42 = MEMORY[0x1E69E6158];
    *(inited + 48) = v39;
    *(inited + 56) = v41;
    *(inited + 72) = v42;
    *(inited + 80) = 0x6574656C706D6F63;
    *(inited + 88) = 0xE900000000000064;
    *(inited + 120) = MEMORY[0x1E69E6370];
    *(inited + 96) = v89 & 1;
    v43 = sub_1D8E2696C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
    swift_arrayDestroy();
    if (v90)
    {
      v44 = v91;
      v45 = v43;
    }

    else
    {
      v101 = MEMORY[0x1E69E63B0];
      v100[0] = v85 * 1000.0;
      sub_1D8D65618(v100, v99);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v43;
      sub_1D8F502C0(v99, 0xD000000000000016, 0x80000001D91C8180, isUniquelyReferenced_nonNull_native);
      v45 = v98;
      v44 = v91;
    }

    v47 = swift_initStackObject();
    *(v47 + 16) = v86;
    *(v47 + 32) = 1701869940;
    *(v47 + 40) = 0xE400000000000000;
    *(v47 + 48) = 0xD000000000000012;
    *(v47 + 56) = 0x80000001D91D3FF0;
    *(v47 + 72) = v42;
    *(v47 + 80) = 0x7475626972747461;
    *(v47 + 88) = 0xEA00000000007365;
    *(v47 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
    *(v47 + 96) = v45;

    v48 = sub_1D8E2696C(v47);
    swift_setDeallocating();
    swift_arrayDestroy();
    v91 = sub_1D9053C58(v48);

    v49 = *(v44 + 16);
    if (v49)
    {
      v90 = v45;
      *&v100[0] = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v49, 0);
      v50 = v100[0];
      v51 = (v44 + 32);
      sub_1D8E40D20();
      do
      {
        v52 = *v51++;
        *&v99[0] = v52;
        v53 = sub_1D917927C();
        v100[0] = v50;
        v56 = *(*&v50 + 16);
        v55 = *(*&v50 + 24);
        if (v56 >= v55 >> 1)
        {
          v89 = v53;
          v58 = v54;
          sub_1D8D41BE0((v55 > 1), v56 + 1, 1);
          v54 = v58;
          v53 = v89;
          v50 = v100[0];
        }

        *(*&v50 + 16) = v56 + 1;
        v57 = *&v50 + 16 * v56;
        *(v57 + 32) = v53;
        *(v57 + 40) = v54;
        --v49;
      }

      while (v49);
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }

    v59 = sub_1D9176C2C();
    v60 = *(*(v59 - 8) + 56);
    v60(v97, 1, 1, v59);
    v61 = MEMORY[0x1E69E7CC0];
    v90 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v89 = sub_1D8D94DF8(v61);
    v88 = sub_1D8D951E0(v61);
    *&v86 = sub_1D8D9503C(v61);
    v85 = COERCE_DOUBLE(sub_1D8D9536C(v61));
    v84 = sub_1D8D9536C(v61);
    v83 = sub_1D8D953C4(v61);
    v81 = sub_1D8D952D8(v61);
    v82 = sub_1D8D95394(v61);
    v79 = sub_1D8D957C4(v61);
    *(v13 + 41) = 263;
    v13[43] = 5;
    v13[152] = 1;
    v13[201] = 1;
    v62 = v92;
    v63 = *(v92 + 112);
    v60(&v13[v63], 1, 1, v59);
    v64 = &v13[v62[29]];
    v65 = &v13[v62[31]];
    v66 = v62[33];
    v80 = v62[34];
    v67 = &v13[v66];
    v68 = &v13[v62[35]];
    *v13 = v91;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 10) = 83951616;
    v69 = v89;
    *(v13 + 6) = v90;
    *(v13 + 7) = v69;
    *(v13 + 8) = v88;
    *(v13 + 9) = v61;
    v70 = v85;
    *(v13 + 10) = v86;
    *(v13 + 11) = v70;
    v71 = v83;
    *(v13 + 12) = v84;
    *(v13 + 13) = v71;
    v72 = v81;
    *(v13 + 14) = v61;
    *(v13 + 15) = v72;
    *(v13 + 16) = v61;
    *(v13 + 17) = v61;
    *(v13 + 18) = v50;
    v13[152] = 1;
    *(v13 + 20) = 0;
    v13[168] = 1;
    v73 = v79;
    *(v13 + 22) = v82;
    *(v13 + 23) = v73;
    *(v13 + 24) = 0;
    *(v13 + 100) = 257;
    v13[202] = 0;
    sub_1D8E26828(v97, &v13[v63]);
    *v64 = 0;
    *(v64 + 1) = 0;
    v13[v62[30]] = 0;
    *v65 = 0;
    *(v65 + 1) = 0;
    *&v13[v62[32]] = v61;
    *v67 = 0;
    *(v67 + 1) = 0;
    v13[v80] = 2;
    *v68 = 0;
    *(v68 + 1) = 0;
    v74 = *(v93 + OBJC_IVAR___MTPlaybackPositionController_requestController);
    v75 = swift_allocObject();
    v76 = v95;
    v75[2] = v94;
    v75[3] = v76;
    v77 = v74;

    sub_1D904AD58(v13, v87, sub_1D9055418, v75);

    return sub_1D8D90BEC(v13);
  }

  return result;
}

uint64_t sub_1D9054EE8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D9054F14, 0, 0);
}

uint64_t sub_1D9054F14()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v3 & 1;
  *(v7 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_1D9055038;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD00000000000003BLL, 0x80000001D91D4010, sub_1D9055444, v7, v10);
}

uint64_t sub_1D9055038()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D8F4717C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1D8EAA444;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9055154(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, void *a7)
{
  v21 = a2;
  v22 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  (*(v13 + 16))(&v21 - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v12);
  sub_1D905454C(a3, a4, a5, a6 & 1, v22, sub_1D9055640, v19);
}

uint64_t sub_1D90552CC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
    sub_1D917875C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  return sub_1D917876C();
}

id PlaybackPositionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackPositionController.init()()
{
  v1 = OBJC_IVAR___MTPlaybackPositionController_requestController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaybackPositionController();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PlaybackPositionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackPositionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9055418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return v6(a5);
}

uint64_t dispatch thunk of PlaybackPositionController.updatePlaybackPosition(adamIDs:completed:position:account:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1D8D58924;

  return (v16)(a1, a2, a3, a4 & 1, a5);
}

uint64_t sub_1D9055640(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8) - 8) + 80);

  return sub_1D90552CC(a1);
}

id PodcastFeedDownloader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D90556F0(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v63 = a6;
  v65 = a7;
  v59 = a5;
  LODWORD(v64) = a4;
  v60 = a2;
  v61 = a3;
  v58 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v47 - v10;
  v56 = &v47 - v10;
  v12 = type metadata accessor for MediaRequest.Params();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D8D946F4(&unk_1F5461968);
  sub_1D8D08A50(&unk_1F5461988, &unk_1ECAB9A50, &unk_1D9197130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D9189080;
  v18 = [a1 description];
  v19 = sub_1D917820C();
  v21 = v20;

  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = sub_1D9176C2C();
  v23 = *(*(v22 - 8) + 56);
  v23(v11, 1, 1, v22);
  v24 = MEMORY[0x1E69E7CC0];
  v55 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v54 = sub_1D8D94DF8(v24);
  v53 = sub_1D8D951E0(v24);
  v52 = sub_1D8D9503C(v24);
  v51 = sub_1D8D9536C(v24);
  v49 = sub_1D8D953C4(v24);
  v25 = sub_1D8D952D8(v24);
  v50 = sub_1D8D95394(v24);
  v47 = sub_1D8D957C4(v24);
  *(v16 + 41) = 263;
  v16[43] = 5;
  v16[152] = 1;
  v16[201] = 1;
  v26 = v13[30];
  v23(&v16[v26], 1, 1, v22);
  v27 = &v16[v13[31]];
  v28 = &v16[v13[33]];
  v29 = v13[35];
  v48 = v13[36];
  v30 = &v16[v29];
  v31 = &v16[v13[37]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *(v16 + 10) = 65796;
  v32 = v54;
  *(v16 + 6) = v55;
  *(v16 + 7) = v32;
  *(v16 + 8) = v53;
  *(v16 + 9) = v24;
  v33 = v51;
  *(v16 + 10) = v52;
  *(v16 + 11) = v33;
  v34 = v49;
  *(v16 + 12) = v57;
  *(v16 + 13) = v34;
  *(v16 + 14) = v24;
  *(v16 + 15) = v25;
  *(v16 + 16) = v24;
  *(v16 + 17) = v24;
  *(v16 + 18) = v17;
  v16[152] = 1;
  *(v16 + 20) = 300;
  v16[168] = 0;
  v35 = v47;
  *(v16 + 22) = v50;
  *(v16 + 23) = v35;
  *(v16 + 24) = 0;
  *(v16 + 100) = 257;
  v16[202] = 1;
  sub_1D8E26828(v56, &v16[v26]);
  *v27 = 0;
  *(v27 + 1) = 0;
  v16[v13[32]] = v59;
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v16[v13[34]] = v24;
  v36 = v61;
  *v30 = v60;
  *(v30 + 1) = v36;
  v16[v48] = 2;
  *v31 = 0;
  *(v31 + 1) = 0;
  v37 = OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController;
  v38 = v62;
  swift_beginAccess();
  sub_1D8CFD9D8(v38 + v37, v66);
  v39 = v67;
  v40 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v41 = swift_allocObject();
  v42 = v58;
  v43 = v63;
  *(v41 + 16) = v58;
  *(v41 + 24) = v43;
  *(v41 + 32) = v65;
  *(v41 + 40) = v64;
  *(v41 + 48) = v38;
  v64 = *(v40 + 40);

  v44 = v42;

  v45 = v38;
  v64(v16, sub_1D90575D4, v41, v39, v40);

  sub_1D8D90BEC(v16);
  return __swift_destroy_boxed_opaque_existential_1Tm(v66);
}

void sub_1D9055B64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void, void, void, uint64_t), uint64_t a8, char a9, uint64_t a10)
{
  v131 = a7;
  v132 = a8;
  v128 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v114 - v16;
  v18 = type metadata accessor for MediaRequest.Params();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D917744C();
  v130 = *(v22 - 8);
  v23 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v114 - v30;
  v129 = v17;
  if (a5)
  {
    v122 = a1;
    v124 = v29;
    v123 = v18;
    v127 = v28;
    v32 = a5;
    v125 = sub_1D9176A5C();
    v33 = [v125 userInfo];
    v34 = sub_1D917805C();

    v35 = *MEMORY[0x1E698C568];
    v36 = sub_1D917820C();
    if (*(v34 + 16))
    {
      v126 = a4;
      v38 = sub_1D8D33C70(v36, v37);
      v40 = v39;

      if (v40)
      {
        sub_1D8CFAD1C(*(v34 + 56) + 32 * v38, aBlock);

        if (swift_dynamicCast())
        {
          v41 = v137;
          v42 = v127;
          if ((a9 & 1) != 0 && v137 == 404)
          {
            if (qword_1EDCD0768 != -1)
            {
              swift_once();
            }

            v43 = __swift_project_value_buffer(v42, qword_1EDCD0770);
            swift_beginAccess();
            (*(v130 + 16))(v31, v43, v42);
            v44 = a6;
            v45 = sub_1D917741C();
            v46 = sub_1D9178D1C();

            v47 = os_log_type_enabled(v45, v46);
            v18 = v123;
            if (v47)
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              *v48 = 138412290;
              *(v48 + 4) = v44;
              *v49 = v44;
              v50 = v44;
              _os_log_impl(&dword_1D8CEC000, v45, v46, "Failed to fetch episodes for podcast %@ with 404. Allowing it since allowEpisodesTo404 == true", v48, 0xCu);
              sub_1D8D08A50(v49, &unk_1ECAB6C70, &unk_1D9188C30);
              MEMORY[0x1DA72CB90](v49, -1, -1);
              MEMORY[0x1DA72CB90](v48, -1, -1);
            }

            else
            {
            }

            a4 = v126;
            v17 = v129;
            (*(v130 + 8))(v31, v127);
            a1 = v122;
            goto LABEL_29;
          }

          if (v137 >= 400 && v137 != 429)
          {
            v64 = [objc_opt_self() sharedInstance];
            v65 = [v64 importContext];

            v66 = swift_allocObject();
            v66[2] = v65;
            v66[3] = a6;
            v66[4] = v41;
            v135 = sub_1D9057698;
            v136 = v66;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D8CF5F60;
            v134 = &block_descriptor_65;
            v67 = _Block_copy(aBlock);
            v68 = a6;
            v69 = v65;

            [v69 performBlock_];
            _Block_release(v67);
          }

          v70 = v130;
          if (qword_1EDCD0768 != -1)
          {
            swift_once();
          }

          v71 = __swift_project_value_buffer(v42, qword_1EDCD0770);
          swift_beginAccess();
          (*(v70 + 16))(v124, v71, v42);
          v72 = a5;
          v73 = a6;
          v74 = sub_1D917741C();
          v75 = sub_1D9178CFC();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *v76 = 138412546;
            *(v76 + 4) = v73;
            *v77 = v73;
            *(v76 + 12) = 2112;
            v78 = v73;
            v79 = sub_1D9176A5C();
            *(v76 + 14) = v79;
            v77[1] = v79;
            _os_log_impl(&dword_1D8CEC000, v74, v75, "Failed to fetch episodes for podcast %@ with parse error: %@", v76, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v77, -1, -1);
            MEMORY[0x1DA72CB90](v76, -1, -1);
          }

          (*(v70 + 8))(v124, v42);
          sub_1D90576A4();
          v80 = swift_allocError();
          *v81 = 0;
          v131(0, 0, 0, v80);
          v63 = v80;
LABEL_18:

          return;
        }

LABEL_13:
        v51 = v127;
        v52 = v130;
        if (qword_1EDCD0768 != -1)
        {
          swift_once();
        }

        v53 = __swift_project_value_buffer(v51, qword_1EDCD0770);
        swift_beginAccess();
        (*(v52 + 16))(v25, v53, v51);
        v54 = a5;
        v55 = a6;
        v56 = sub_1D917741C();
        v57 = sub_1D9178CFC();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v58 = 138412546;
          *(v58 + 4) = v55;
          *v59 = v55;
          *(v58 + 12) = 2112;
          v60 = v55;
          v61 = sub_1D9176A5C();
          *(v58 + 14) = v61;
          v59[1] = v61;
          _os_log_impl(&dword_1D8CEC000, v56, v57, "Failed to fetch episodes for podcast %@ with error: %@", v58, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v59, -1, -1);
          MEMORY[0x1DA72CB90](v58, -1, -1);
        }

        (*(v52 + 8))(v25, v51);
        v62 = a5;
        v131(0, 0, 0, a5);
        v63 = a5;
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

LABEL_29:
  v126 = a4;
  v127 = a10;
  if (!a1 || (v130 = sub_1D8FBECF4(a1)) == 0)
  {

    v130 = MEMORY[0x1E69E7CC0];
  }

  v125 = sub_1D8D946F4(&unk_1F5461A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1D9189080;
  v83 = [a6 description];
  v84 = sub_1D917820C();
  v86 = v85;

  *(v82 + 32) = v84;
  *(v82 + 40) = v86;
  v87 = sub_1D9176C2C();
  v124 = a6;
  v88 = v87;
  v89 = *(*(v87 - 8) + 56);
  v89(v17, 1, 1, v87);
  v90 = MEMORY[0x1E69E7CC0];
  v123 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v122 = sub_1D8D94DF8(v90);
  v121 = sub_1D8D951E0(v90);
  v120 = sub_1D8D9503C(v90);
  v119 = sub_1D8D9536C(v90);
  v118 = sub_1D8D953C4(v90);
  v116 = sub_1D8D952D8(v90);
  v117 = sub_1D8D95394(v90);
  v91 = sub_1D8D957C4(v90);
  *(v21 + 41) = 263;
  v21[43] = 5;
  v21[152] = 1;
  v21[201] = 1;
  v92 = v18[28];
  v89(&v21[v92], 1, 1, v88);
  v93 = &v21[v18[29]];
  v94 = &v21[v18[31]];
  v95 = v18[33];
  v115 = v18[34];
  v96 = &v21[v95];
  v97 = &v21[v18[35]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  *(v21 + 10) = 83951876;
  v98 = v122;
  *(v21 + 6) = v123;
  *(v21 + 7) = v98;
  *(v21 + 8) = v121;
  *(v21 + 9) = &unk_1F5461998;
  v99 = v119;
  *(v21 + 10) = v120;
  *(v21 + 11) = v99;
  v100 = v118;
  *(v21 + 12) = v125;
  *(v21 + 13) = v100;
  v101 = v116;
  *(v21 + 14) = v90;
  *(v21 + 15) = v101;
  *(v21 + 16) = v90;
  *(v21 + 17) = v90;
  *(v21 + 18) = v82;
  v21[152] = 1;
  *(v21 + 20) = 0;
  v21[168] = 1;
  *(v21 + 22) = v117;
  *(v21 + 23) = v91;
  *(v21 + 24) = 0;
  *(v21 + 100) = 257;
  v21[202] = 0;
  sub_1D8E26828(v129, &v21[v92]);
  *v93 = 0;
  *(v93 + 1) = 0;
  v21[v18[30]] = 0;
  *v94 = 0;
  *(v94 + 1) = 0;
  *&v21[v18[32]] = v90;
  *v96 = 0;
  *(v96 + 1) = 0;
  v21[v115] = 2;
  *v97 = 0;
  *(v97 + 1) = 0;
  v102 = OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController;
  v103 = v127;
  swift_beginAccess();
  sub_1D8CFD9D8(v103 + v102, aBlock);
  v104 = v134;
  v105 = v135;
  __swift_project_boxed_opaque_existential_1(aBlock, v134);
  v106 = swift_allocObject();
  v107 = v124;
  v108 = v131;
  v109 = v132;
  v106[2] = v124;
  v106[3] = v108;
  v110 = v128;
  v106[4] = v109;
  v106[5] = v110;
  v111 = v130;
  v106[6] = v126;
  v106[7] = v111;
  v112 = *(v105 + 5);

  v113 = v107;

  v112(v21, sub_1D9057660, v106, v104, v105);

  sub_1D8D90BEC(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

void sub_1D905682C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 podcastForStoreId_];
  if (v12)
  {
    v13 = v12;
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_1EDCD0770);
    swift_beginAccess();
    (*(v7 + 16))(v11, v14, v6);
    v15 = a2;
    v16 = sub_1D917741C();
    v17 = sub_1D9178CFC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = a1;
      v19 = a3;
      v20 = v18;
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v15;
      *v21 = v15;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v19;
      a1 = v24;
      v22 = v15;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Failed to fetch episodes for podcast %@ with status %lld. Incrementing consecutiveFeedFetchErrors count", v20, 0x16u);
      sub_1D8D08A50(v21, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v23 = [v13 consecutiveFeedFetchErrors];
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    else
    {
      [v13 setConsecutiveFeedFetchErrors_];
      [a1 saveInCurrentBlock];
    }
  }
}

void sub_1D9056AD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, void (*a7)(void, void, void, void *), uint64_t a8, void *a9, unint64_t a10, uint64_t a11)
{
  v91 = a6;
  v92 = a5;
  v14 = sub_1D917744C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v86 - v23;
  v25 = sub_1D917825C();
  v26 = *(*(v25 - 8) + 64);
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v25 - 8);
  if (!a1)
  {
    goto LABEL_16;
  }

  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_4;
    }

LABEL_16:
    v24 = v92;
    if (v92)
    {
      v36 = v92;
      if (qword_1EDCD0768 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v14, qword_1EDCD0770);
      swift_beginAccess();
      (*(v15 + 16))(v21, v37, v14);
      v38 = v91;
      v39 = v24;
      v40 = sub_1D917741C();
      v41 = sub_1D9178CFC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412546;
        *(v42 + 4) = v38;
        *v43 = v38;
        *(v42 + 12) = 2112;
        v44 = v38;
        v45 = sub_1D9176A5C();
        *(v42 + 14) = v45;
        v43[1] = v45;
        _os_log_impl(&dword_1D8CEC000, v40, v41, "Failed to fetch podcast %@ for feed updates with error: %@", v42, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
        swift_arrayDestroy();
        v46 = v43;
        v24 = v92;
        MEMORY[0x1DA72CB90](v46, -1, -1);
        MEMORY[0x1DA72CB90](v42, -1, -1);
      }

      else
      {
      }

      (*(v15 + 8))(v21, v14);
      v55 = v24;
LABEL_27:
      v57 = v24;
      a7(0, 0, 0, v55);

      return;
    }

    if (qword_1EDCD0768 == -1)
    {
LABEL_22:
      v47 = __swift_project_value_buffer(v14, qword_1EDCD0770);
      swift_beginAccess();
      (*(v15 + 16))(v18, v47, v14);
      v48 = v91;
      v49 = sub_1D917741C();
      v50 = sub_1D9178CFC();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        *(v51 + 4) = v48;
        *v52 = v48;
        v53 = v48;
        _os_log_impl(&dword_1D8CEC000, v49, v50, "Failed to fetch podcast %@ for feed updates with unknown error", v51, 0xCu);
        sub_1D8D08A50(v52, &unk_1ECAB6C70, &unk_1D9188C30);
        v54 = v52;
        v24 = v92;
        MEMORY[0x1DA72CB90](v54, -1, -1);
        MEMORY[0x1DA72CB90](v51, -1, -1);
      }

      (*(v15 + 8))(v18, v14);
      sub_1D90576A4();
      v55 = swift_allocError();
      *v56 = 1;
      goto LABEL_27;
    }

LABEL_40:
    swift_once();
    goto LABEL_22;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  v89 = a8;
  v90 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1DA72AA90](0, a1, v27);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v28 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for ServerPodcast();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    a7 = v90;
    goto LABEL_16;
  }

  v30 = v29;
  v88 = v28;
  if (a10)
  {
    v31 = a9;
  }

  else
  {
    v31 = 0;
  }

  if (a10)
  {
    v32 = a10;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = sub_1D91765CC();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();

  sub_1D91765BC();
  v87 = v30;
  v94 = v30;
  sub_1D90576F8();
  v58 = sub_1D91765AC();
  v60 = v59;

  sub_1D917824C();
  v61 = sub_1D917822C();
  if (v62)
  {
    v94 = v61;
    v95 = v62;
    sub_1D8D447DC();
    v63 = sub_1D917925C();

    v93[0] = v63;
    v64 = sub_1D9179A4C();
    v66 = v65;
    sub_1D8D7567C(v58, v60);
  }

  else
  {
    v64 = 0x5F44494C41564E49;
    sub_1D8D7567C(v58, v60);
    v66 = 0xEC0000004E4F534ALL;
  }

  v94 = v31;
  v95 = v32;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);

  MEMORY[0x1DA7298F0](v64, v66);

  v68 = v94;
  v67 = v95;
  if (qword_1EDCD0768 != -1)
  {
    swift_once();
  }

  v69 = a11;
  v70 = __swift_project_value_buffer(v14, qword_1EDCD0770);
  swift_beginAccess();
  (*(v15 + 16))(v24, v70, v14);
  v71 = v91;

  v72 = sub_1D917741C();
  v73 = sub_1D9178D1C();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v91 = v68;
    v75 = v74;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v86 = a11;
    v78 = v77;
    v93[0] = v77;
    *v75 = 138412546;
    *(v75 + 4) = v71;
    *v76 = v71;
    *(v75 + 12) = 2080;
    v79 = v71;
    *(v75 + 14) = sub_1D8CFA924(v91, v67, v93);
    _os_log_impl(&dword_1D8CEC000, v72, v73, "Completed feed update of %@ with hash %s", v75, 0x16u);
    sub_1D8D08A50(v76, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v76, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    v80 = v78;
    v69 = v86;
    MEMORY[0x1DA72CB90](v80, -1, -1);
    v81 = v75;
    v68 = v91;
    MEMORY[0x1DA72CB90](v81, -1, -1);
  }

  (*(v15 + 8))(v24, v14);
  v82 = v90;
  v83 = v87;
  v84 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v85 = *(v83 + v84);
  *(v83 + v84) = v69;

  swift_unknownObjectRetain();
  v82(v83, v68, v67, v92);

  swift_unknownObjectRelease_n();
}

void sub_1D90574DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    if (a4)
    {
LABEL_3:
      v9 = sub_1D9176A5C();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

id PodcastFeedDownloader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastFeedDownloader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D90576A4()
{
  result = qword_1ECAB9740;
  if (!qword_1ECAB9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9740);
  }

  return result;
}

unint64_t sub_1D90576F8()
{
  result = qword_1ECAB26C8;
  if (!qword_1ECAB26C8)
  {
    type metadata accessor for ServerPodcast();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26C8);
  }

  return result;
}

unint64_t sub_1D9057764()
{
  result = qword_1ECAB9748;
  if (!qword_1ECAB9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9748);
  }

  return result;
}

id sub_1D90577B8()
{
  result = [objc_allocWithZone(type metadata accessor for PodcastRequestManager()) init];
  qword_1ECAB1D10 = result;
  return result;
}

id PodcastRequestManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PodcastRequestManager.sharedInstance.getter()
{
  if (qword_1ECAB1D08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB1D10;

  return v1;
}

uint64_t sub_1D90578D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v47 = &v37 - v6;
  v8 = type metadata accessor for MediaRequest.Params();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  v52 = a1;
  *(v13 + 32) = sub_1D9179A4C();
  *(v13 + 40) = v14;
  v15 = sub_1D9176C2C();
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 1, 1, v15);
  v17 = MEMORY[0x1E69E7CC0];
  v46 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v45 = sub_1D8D94DF8(v17);
  v44 = sub_1D8D951E0(v17);
  v43 = sub_1D8D9503C(v17);
  v42 = sub_1D8D9536C(v17);
  v41 = sub_1D8D9536C(v17);
  v40 = sub_1D8D953C4(v17);
  v38 = sub_1D8D952D8(v17);
  v39 = sub_1D8D95394(v17);
  v18 = sub_1D8D957C4(v17);
  *(v12 + 41) = 263;
  v12[43] = 5;
  v12[152] = 1;
  v12[201] = 1;
  v19 = v9[30];
  v16(&v12[v19], 1, 1, v15);
  v20 = &v12[v9[31]];
  v21 = &v12[v9[33]];
  v22 = v9[35];
  v37 = v9[36];
  v23 = &v12[v22];
  v24 = &v12[v9[37]];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *(v12 + 10) = 83951876;
  v25 = v45;
  *(v12 + 6) = v46;
  *(v12 + 7) = v25;
  v26 = v43;
  *(v12 + 8) = v44;
  *(v12 + 9) = v17;
  v28 = v41;
  v27 = v42;
  *(v12 + 10) = v26;
  *(v12 + 11) = v27;
  v29 = v40;
  *(v12 + 12) = v28;
  *(v12 + 13) = v29;
  v30 = v38;
  *(v12 + 14) = v17;
  *(v12 + 15) = v30;
  *(v12 + 16) = v17;
  *(v12 + 17) = v17;
  *(v12 + 18) = v13;
  v12[152] = 1;
  *(v12 + 20) = 0;
  v12[168] = 1;
  *(v12 + 22) = v39;
  *(v12 + 23) = v18;
  *(v12 + 24) = 0;
  *(v12 + 100) = 257;
  v12[202] = 0;
  sub_1D8E26828(v47, &v12[v19]);
  *v20 = 0;
  *(v20 + 1) = 0;
  v12[v9[32]] = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v12[v9[34]] = v17;
  *v23 = 0;
  *(v23 + 1) = 0;
  v12[v37] = 2;
  *v24 = 0;
  *(v24 + 1) = 0;
  v31 = *(v49 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastRequestManager_mediaRequestController);
  v32 = swift_allocObject();
  v33 = v50;
  v34 = v51;
  v32[2] = v48;
  v32[3] = v33;
  v32[4] = v34;
  v35 = v31;

  sub_1D904AD58(v12, 0, sub_1D9058DB8, v32);

  return sub_1D8D90BEC(v12);
}

uint64_t sub_1D9057C5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_4;
    }

LABEL_11:
    if (a5)
    {
      v25 = a5;
      if (qword_1EDCD0768 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v11, qword_1EDCD0770);
      swift_beginAccess();
      (*(v12 + 16))(v19, v26, v11);
      v27 = a5;
      v28 = sub_1D917741C();
      v29 = sub_1D9178CFC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = a6;
        v33 = v31;
        *v30 = 134218242;
        *(v30 + 4) = v32;
        *(v30 + 12) = 2112;
        v34 = sub_1D9176A5C();
        *(v30 + 14) = v34;
        *v33 = v34;
        _os_log_impl(&dword_1D8CEC000, v28, v29, "Failed to fetch episodes for podcast %lld with error: %@", v30, 0x16u);
        sub_1D8E262AC(v33);
        MEMORY[0x1DA72CB90](v33, -1, -1);
        MEMORY[0x1DA72CB90](v30, -1, -1);
      }

      else
      {
      }

      v15 = v19;
LABEL_22:
      (*(v12 + 8))(v15, v11);
      return a7(0, 0);
    }

    if (qword_1EDCD0768 == -1)
    {
LABEL_17:
      v35 = __swift_project_value_buffer(v11, qword_1EDCD0770);
      swift_beginAccess();
      (*(v12 + 16))(v15, v35, v11);
      v36 = sub_1D917741C();
      v37 = sub_1D9178CFC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = a6;
        _os_log_impl(&dword_1D8CEC000, v36, v37, "Failed to fetch episodes for podcast %lld with unknown error", v38, 0xCu);
        MEMORY[0x1DA72CB90](v38, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_31:
    swift_once();
    goto LABEL_17;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, a1, v17);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v20 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for ServerPodcast();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v22 = *(v21 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (v22)
  {
    v23 = *(v22 + 56);
    v24 = *(v22 + 64);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  a7(v23, v24);
  swift_unknownObjectRelease();
}

void sub_1D9058164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

uint64_t sub_1D90581C0(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - v6;
  v51 = &v40 - v6;
  v8 = type metadata accessor for MediaRequest.Params();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  v14 = [a1 description];
  v15 = sub_1D917820C();
  v17 = v16;

  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v18 = sub_1D9176C2C();
  v19 = *(*(v18 - 8) + 56);
  v19(v7, 1, 1, v18);
  v20 = MEMORY[0x1E69E7CC0];
  v50 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v49 = sub_1D8D94DF8(v20);
  v48 = sub_1D8D951E0(v20);
  v47 = sub_1D8D9503C(v20);
  v46 = sub_1D8D9536C(v20);
  v45 = sub_1D8D9536C(v20);
  v44 = sub_1D8D953C4(v20);
  v42 = sub_1D8D952D8(v20);
  v43 = sub_1D8D95394(v20);
  v21 = sub_1D8D957C4(v20);
  *(v12 + 41) = 263;
  v12[43] = 5;
  v12[152] = 1;
  v12[201] = 1;
  v22 = v9[30];
  v19(&v12[v22], 1, 1, v18);
  v23 = &v12[v9[31]];
  v24 = &v12[v9[33]];
  v25 = v9[35];
  v41 = v9[36];
  v26 = &v12[v25];
  v27 = &v12[v9[37]];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *(v12 + 10) = 83951620;
  v28 = v49;
  *(v12 + 6) = v50;
  *(v12 + 7) = v28;
  *(v12 + 8) = v48;
  *(v12 + 9) = &unk_1F5461A50;
  v29 = v46;
  *(v12 + 10) = v47;
  *(v12 + 11) = v29;
  v30 = v44;
  *(v12 + 12) = v45;
  *(v12 + 13) = v30;
  v31 = v42;
  *(v12 + 14) = v20;
  *(v12 + 15) = v31;
  *(v12 + 16) = v20;
  *(v12 + 17) = v20;
  *(v12 + 18) = v13;
  v12[152] = 1;
  *(v12 + 20) = 0;
  v12[168] = 1;
  *(v12 + 22) = v43;
  *(v12 + 23) = v21;
  *(v12 + 24) = 0;
  *(v12 + 100) = 257;
  v12[202] = 0;
  sub_1D8E26828(v51, &v12[v22]);
  *v23 = 0;
  *(v23 + 1) = 0;
  v12[v9[32]] = 0;
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v12[v9[34]] = v20;
  *v26 = 0;
  *(v26 + 1) = 0;
  v12[v41] = 2;
  *v27 = 0;
  *(v27 + 1) = 0;
  v32 = *(v53 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastRequestManager_mediaRequestController);
  v33 = swift_allocObject();
  v34 = v52;
  v35 = v54;
  v36 = v55;
  v33[2] = v52;
  v33[3] = v35;
  v33[4] = v36;
  v37 = v32;
  v38 = v34;

  sub_1D904AD58(v12, 0, sub_1D9058DC4, v33);

  return sub_1D8D90BEC(v12);
}

uint64_t sub_1D9058564(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void, void, void, void), uint64_t a8)
{
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - v20;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_4;
    }

LABEL_19:
    if (a5)
    {
      v39 = a5;
      if (qword_1EDCD0768 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v13, qword_1EDCD0770);
      swift_beginAccess();
      (*(v14 + 16))(v21, v40, v13);
      v41 = a5;
      v42 = a6;
      v43 = sub_1D917741C();
      v44 = sub_1D9178CFC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v60 = a8;
        v47 = a7;
        v48 = v46;
        *v45 = 138412546;
        *(v45 + 4) = v42;
        *v46 = v42;
        *(v45 + 12) = 2112;
        v49 = v42;
        v50 = sub_1D9176A5C();
        *(v45 + 14) = v50;
        v48[1] = v50;
        _os_log_impl(&dword_1D8CEC000, v43, v44, "Failed to fetch podcast from episode ADAM ID %@ with error: %@", v45, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
        swift_arrayDestroy();
        v51 = v48;
        a7 = v47;
        MEMORY[0x1DA72CB90](v51, -1, -1);
        MEMORY[0x1DA72CB90](v45, -1, -1);
      }

      else
      {
      }

      v17 = v21;
LABEL_30:
      (*(v14 + 8))(v17, v13);
      return a7(0, 0, 0, 0);
    }

    if (qword_1EDCD0768 == -1)
    {
LABEL_25:
      v52 = __swift_project_value_buffer(v13, qword_1EDCD0770);
      swift_beginAccess();
      (*(v14 + 16))(v17, v52, v13);
      v53 = a6;
      v54 = sub_1D917741C();
      v55 = sub_1D9178CFC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v57 = v53;
        v58 = v53;
        _os_log_impl(&dword_1D8CEC000, v54, v55, "Failed to fetch podcast from episode ADAM ID %@ with unknown error", v56, 0xCu);
        sub_1D8E262AC(v57);
        MEMORY[0x1DA72CB90](v57, -1, -1);
        MEMORY[0x1DA72CB90](v56, -1, -1);
      }

      goto LABEL_30;
    }

LABEL_37:
    swift_once();
    goto LABEL_25;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_4:
  v60 = a8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = a7;
    MEMORY[0x1DA72AA90](0, a1, v19);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v22 = a7;
    v23 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for ServerPodcastEpisode();
  v24 = swift_dynamicCastClass();
  if (!v24 || (v25 = OBJC_IVAR___MTServerPodcastEpisode_relationships, v26 = v24, swift_beginAccess(), (v27 = *(v26 + v25)) == 0) || (v28 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast, swift_beginAccess(), (v29 = *(v27 + v28)) == 0))
  {
    swift_unknownObjectRelease();
    a7 = v22;
LABEL_18:
    a8 = v60;
    goto LABEL_19;
  }

  v30 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v31 = *(v29 + v30);
  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a7 = v22;
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  result = sub_1D917935C();
  a7 = v22;
  if (!result)
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

LABEL_12:
  if ((v31 & 0xC000000000000001) != 0)
  {

    v33 = MEMORY[0x1DA72AA90](0, v31);
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v33 = *(v31 + 32);
  }

  v34 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
  v35 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];
  v36 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v36)
  {
    v38 = *(v36 + 56);
    v37 = *(v36 + 64);
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  a7(v34, v35, v38, v37);
  swift_unknownObjectRelease();
}

void sub_1D9058C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    if (a4)
    {
LABEL_3:
      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

id PodcastRequestManager.init()()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation21PodcastRequestManager_mediaRequestController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PodcastRequestManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id PodcastRequestManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastRequestManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9058E84()
{
  result = [objc_allocWithZone(type metadata accessor for ResizedArtworkURLProvider()) init];
  qword_1ECAB9758 = result;
  return result;
}

id ResizedArtworkURLProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ResizedArtworkURLProvider.shared.getter()
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1ECAB9758;

  return v0;
}

void static ResizedArtworkURLProvider.shared.setter(uint64_t a1)
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ECAB9758;
  qword_1ECAB9758 = a1;
}

uint64_t (*static ResizedArtworkURLProvider.shared.modify())()
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1D9059170@<X0>(void *a1@<X8>)
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ECAB9758;
  *a1 = qword_1ECAB9758;

  return v2;
}

void sub_1D90591FC(id *a1)
{
  v1 = qword_1ECAB36D0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1ECAB9758;
  qword_1ECAB9758 = v2;
}

id ResizedArtworkURLProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResizedArtworkURLProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ResizedArtworkURLProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResizedArtworkURLProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D90593C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1D90594A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  sub_1D9176BFC();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D8E677CC(v9);
  }

  else
  {
    v39 = v14;
    v40 = a3;
    v41 = v17;
    (*(v11 + 32))(v20, v9, v10);
    sub_1D9176B0C();
    v21 = sub_1D91782EC();
    v22 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v23 = sub_1D90593C8(0x2B645C782B645CLL, 0xE700000000000000, 0);
    v38 = v21;
    if (v23)
    {
      v25 = v23;
      v44 = a1;
      v45 = a2;
      v42 = 0xD000000000000018;
      v43 = 0x80000001D91D41F0;
      sub_1D8D447DC();
      if (sub_1D917926C())
      {
        v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
        v27 = [v25 numberOfMatchesInString:v26 options:0 range:{0, v38}];

        if (v27 >= 1)
        {
          v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          v29 = v40;
          v42 = v40;
          v44 = sub_1D9179A4C();
          v45 = v30;
          MEMORY[0x1DA7298F0](120, 0xE100000000000000);
          v42 = v29;
          v31 = sub_1D9179A4C();
          MEMORY[0x1DA7298F0](v31);

          v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

          v37 = v25;
          v33 = [v25 stringByReplacingMatchesInString:v28 options:0 range:0 withTemplate:{v38, v32}];

          sub_1D917820C();

          v34 = v39;
          sub_1D9176B5C();
          v35 = v41;
          sub_1D9176B3C();

          v36 = *(v11 + 8);
          v36(v34, v10);
          a1 = sub_1D9176ACC();

          v36(v35, v10);
          v36(v20, v10);
          return a1;
        }
      }

      a1 = sub_1D9176ACC();
    }

    else
    {
      a1 = sub_1D9176ACC();
    }

    (*(v11 + 8))(v20, v10);
  }

  return a1;
}

id SearchRequest.init(term:contentTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___MTSearchRequest_contentTypes;
  *&v3[OBJC_IVAR___MTSearchRequest_contentTypes] = MEMORY[0x1E69E7CC0];
  v6 = &v3[OBJC_IVAR___MTSearchRequest_limit];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v3[OBJC_IVAR___MTSearchRequest_term];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 32;
    do
    {
      v11 = *(a3 + v10);
      if (v11 > 2)
      {
        switch(v11)
        {
          case 3:
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v5] = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
              *&v3[v5] = v9;
            }

            v23 = *(v9 + 2);
            v22 = *(v9 + 3);
            if (v23 >= v22 >> 1)
            {
              v9 = sub_1D8ECD860((v22 > 1), v23 + 1, 1, v9);
            }

            *(v9 + 2) = v23 + 1;
            v9[v23 + 32] = 2;
            break;
          case 4:
            swift_beginAccess();
            v27 = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v5] = v9;
            if ((v27 & 1) == 0)
            {
              v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
              *&v3[v5] = v9;
            }

            v29 = *(v9 + 2);
            v28 = *(v9 + 3);
            if (v29 >= v28 >> 1)
            {
              v9 = sub_1D8ECD860((v28 > 1), v29 + 1, 1, v9);
            }

            *(v9 + 2) = v29 + 1;
            v9[v29 + 32] = 4;
            break;
          case 5:
            swift_beginAccess();
            v15 = swift_isUniquelyReferenced_nonNull_native();
            *&v3[v5] = v9;
            if ((v15 & 1) == 0)
            {
              v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
              *&v3[v5] = v9;
            }

            v17 = *(v9 + 2);
            v16 = *(v9 + 3);
            if (v17 >= v16 >> 1)
            {
              v9 = sub_1D8ECD860((v16 > 1), v17 + 1, 1, v9);
            }

            *(v9 + 2) = v17 + 1;
            v9[v17 + 32] = 5;
            break;
          default:
            goto LABEL_5;
        }
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          swift_beginAccess();
          v24 = swift_isUniquelyReferenced_nonNull_native();
          *&v3[v5] = v9;
          if ((v24 & 1) == 0)
          {
            v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
            *&v3[v5] = v9;
          }

          v26 = *(v9 + 2);
          v25 = *(v9 + 3);
          if (v26 >= v25 >> 1)
          {
            v9 = sub_1D8ECD860((v25 > 1), v26 + 1, 1, v9);
          }

          *(v9 + 2) = v26 + 1;
          v9[v26 + 32] = 0;
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_5;
          }

          swift_beginAccess();
          v12 = swift_isUniquelyReferenced_nonNull_native();
          *&v3[v5] = v9;
          if ((v12 & 1) == 0)
          {
            v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
            *&v3[v5] = v9;
          }

          v14 = *(v9 + 2);
          v13 = *(v9 + 3);
          if (v14 >= v13 >> 1)
          {
            v9 = sub_1D8ECD860((v13 > 1), v14 + 1, 1, v9);
          }

          *(v9 + 2) = v14 + 1;
          v9[v14 + 32] = 3;
        }
      }

      else
      {
        swift_beginAccess();
        v18 = swift_isUniquelyReferenced_nonNull_native();
        *&v3[v5] = v9;
        if ((v18 & 1) == 0)
        {
          v9 = sub_1D8ECD860(0, *(v9 + 2) + 1, 1, v9);
          *&v3[v5] = v9;
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          v9 = sub_1D8ECD860((v19 > 1), v20 + 1, 1, v9);
        }

        *(v9 + 2) = v20 + 1;
        v9[v20 + 32] = 1;
      }

      *&v3[v5] = v9;
      swift_endAccess();
LABEL_5:
      v10 += 8;
      --v8;
    }

    while (v8);
  }

  v31.receiver = v3;
  v31.super_class = type metadata accessor for SearchRequest();
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t sub_1D9059EAC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___MTSearchRequest_limit;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1D9059EDC(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v67 = sub_1D917744C();
  v66 = *(v67 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = &v53 - v7;
  v8 = type metadata accessor for MediaRequest.Params();
  v9 = (v8 - 8);
  v68 = *(v8 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = v11;
  v70 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = *&v2[OBJC_IVAR___MTSearchRequest_term];
  v73 = *&v2[OBJC_IVAR___MTSearchRequest_term + 8];
  v74 = v15;
  v16 = OBJC_IVAR___MTSearchRequest_contentTypes;
  swift_beginAccess();
  v63 = *&v2[v16];
  v65 = v2;
  v17 = *&v2[OBJC_IVAR___MTSearchRequest_limit];
  v18 = v2[OBJC_IVAR___MTSearchRequest_limit + 8];

  v62 = sub_1D8E27040(&unk_1F5461AF0);
  sub_1D8D08A50(&unk_1F5461B10, &qword_1ECAB8E08, &qword_1D91A7608);
  v61 = sub_1D8D946F4(&unk_1F5461B20);
  sub_1D8D08A50(&unk_1F5461B40, &unk_1ECAB9A50, &unk_1D9197130);
  v60 = sub_1D8D946F4(&unk_1F5461B50);
  sub_1D8D08A50(&unk_1F5461B70, &unk_1ECAB9A50, &unk_1D9197130);
  v19 = 3;
  if (!v18)
  {
    v19 = v17;
  }

  v59 = v19;
  v20 = sub_1D9176C2C();
  v21 = *(*(v20 - 8) + 56);
  v21(v75, 1, 1, v20);
  v22 = MEMORY[0x1E69E7CC0];
  v58 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v57 = sub_1D8D951E0(v22);
  v56 = sub_1D8D9503C(v22);
  v55 = sub_1D8D953C4(v22);
  v23 = sub_1D8D952D8(v22);
  v54 = sub_1D8D95394(v22);
  v24 = sub_1D8D957C4(v22);
  *(v14 + 41) = 263;
  v14[43] = 5;
  v14[152] = 1;
  v14[201] = 1;
  v25 = v9[30];
  v21(&v14[v25], 1, 1, v20);
  v26 = &v14[v9[31]];
  v27 = &v14[v9[33]];
  v28 = v9[35];
  v53 = v9[36];
  v29 = &v14[v28];
  v30 = &v14[v9[37]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *(v14 + 10) = 83953412;
  v31 = v62;
  *(v14 + 6) = v58;
  *(v14 + 7) = v31;
  *(v14 + 8) = v57;
  *(v14 + 9) = v22;
  v32 = v61;
  *(v14 + 10) = v56;
  *(v14 + 11) = v32;
  v33 = v55;
  *(v14 + 12) = v60;
  *(v14 + 13) = v33;
  *(v14 + 14) = v22;
  *(v14 + 15) = v23;
  *(v14 + 16) = v22;
  *(v14 + 17) = v22;
  *(v14 + 18) = v22;
  v14[152] = 1;
  *(v14 + 20) = v59;
  v14[168] = 0;
  *(v14 + 22) = v54;
  *(v14 + 23) = v24;
  *(v14 + 24) = 0;
  *(v14 + 100) = 257;
  v14[202] = 0;
  sub_1D8E26828(v75, &v14[v25]);
  *v26 = 0;
  *(v26 + 1) = 0;
  v14[v9[32]] = 0;
  v34 = v73;
  *v27 = v74;
  *(v27 + 1) = v34;
  *&v14[v9[34]] = v63;
  *v29 = 0;
  *(v29 + 1) = 0;
  v14[v53] = 2;
  *v30 = 0;
  *(v30 + 1) = 0;
  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v35 = v67;
  v36 = __swift_project_value_buffer(v67, qword_1ECAB79C8);
  swift_beginAccess();
  v37 = v66;
  v38 = v64;
  (*(v66 + 16))(v64, v36, v35);
  v39 = v65;
  v40 = sub_1D917741C();
  v41 = sub_1D9178D1C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v76[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1D8CFA924(v74, v73, v76);
    _os_log_impl(&dword_1D8CEC000, v40, v41, "Searching for term (%s)...", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1DA72CB90](v43, -1, -1);
    MEMORY[0x1DA72CB90](v42, -1, -1);
  }

  (*(v37 + 8))(v38, v35);
  v44 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  sub_1D8CFD9D8(v39 + v44, v76);
  v45 = v77;
  v46 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v47 = v70;
  sub_1D8D85B08(v14, v70);
  v48 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v49 = swift_allocObject();
  v50 = v72;
  *(v49 + 16) = v71;
  *(v49 + 24) = v50;
  sub_1D8D85D0C(v47, v49 + v48);
  v51 = *(v46 + 56);

  v51(v14, sub_1D905C338, v49, v45, v46);

  sub_1D8D90BEC(v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

void sub_1D905A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for MediaRequest.Params();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D917744C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  if (a5)
  {
    v24 = a5;
    if (qword_1ECAB35F0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v16, qword_1ECAB79C8);
    swift_beginAccess();
    (*(v17 + 16))(v23, v25, v16);
    v26 = a5;
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = a6;
      v31 = v30;
      v52 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v32 = sub_1D9179D2C();
      v34 = sub_1D8CFA924(v32, v33, &v52);
      v50 = v16;
      v35 = v34;

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Search resulted in error: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v36 = v31;
      a6 = v51;
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);

      (*(v17 + 8))(v23, v50);
    }

    else
    {

      (*(v17 + 8))(v23, v16);
    }

    v40 = a5;
    a6(0, a5);
  }

  else if (a3)
  {
    sub_1D8D85B08(a8, v15);
    v37 = type metadata accessor for SearchResponse();
    v38 = objc_allocWithZone(v37);
    *&v38[OBJC_IVAR___MTSearchResponse_response] = a3;
    sub_1D8D85B08(v15, &v38[OBJC_IVAR___MTSearchResponse_params]);
    *&v38[OBJC_IVAR___MTSearchResponse_parsedObjectsCache] = sub_1D8E27554(MEMORY[0x1E69E7CC0]);
    v53.receiver = v38;
    v53.super_class = v37;

    v39 = objc_msgSendSuper2(&v53, sel_init);
    sub_1D8D90BEC(v15);
    a6(v39, 0);
  }

  else
  {
    if (qword_1ECAB35F0 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v16, qword_1ECAB79C8);
    swift_beginAccess();
    (*(v17 + 16))(v20, v41, v16);
    v42 = sub_1D917741C();
    v43 = sub_1D9178D1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D8CEC000, v42, v43, "Search returned no results", v44, 2u);
      MEMORY[0x1DA72CB90](v44, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    v45 = MEMORY[0x1E69E7CC0];
    v46 = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
    sub_1D8D85B08(a8, v15);
    v47 = type metadata accessor for SearchResponse();
    v48 = objc_allocWithZone(v47);
    *&v48[OBJC_IVAR___MTSearchResponse_response] = v46;
    sub_1D8D85B08(v15, &v48[OBJC_IVAR___MTSearchResponse_params]);
    *&v48[OBJC_IVAR___MTSearchResponse_parsedObjectsCache] = sub_1D8E27554(v45);
    v54.receiver = v48;
    v54.super_class = v47;
    v49 = objc_msgSendSuper2(&v54, sel_init);
    sub_1D8D90BEC(v15);
    a6(v49, 0);
  }
}

id SearchRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D905AC7C()
{
  v1 = *(v0 + OBJC_IVAR___MTSearchRequest_contentTypes);

  v2 = *(v0 + OBJC_IVAR___MTSearchRequest_term + 8);
}

uint64_t sub_1D905AD28(unint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR___MTSearchResponse_params;
  v6 = type metadata accessor for MediaRequest.Params();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(v2 + v5 + *(v6 + 128));
  if (*(v7 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1D905B430(qword_1D91AC748[*(v7 + a1 + 32)]);
  v2 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_10:
    v9 = MEMORY[0x1DA72AA90](a2, v2);
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v9 = *(result + 8 * a2 + 32);
    swift_unknownObjectRetain();
LABEL_7:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D905AE58(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = v1 + OBJC_IVAR___MTSearchResponse_params;
  result = type metadata accessor for MediaRequest.Params();
  v4 = *(v3 + *(result + 128));
  if (*(v4 + 16) <= v2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = sub_1D905BDB8(qword_1D91AC748[*(v4 + v2 + 32)]);
  if (!v5)
  {
    return 0;
  }

  v6 = _s18PodcastsFoundation26MediaRequestResponseParserC11extractDataySaySDys11AnyHashableVypGGSgAGFZ_0(v5);

  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 16);

  return v7;
}

uint64_t sub_1D905AFB4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = v1 + OBJC_IVAR___MTSearchResponse_params;
    result = type metadata accessor for MediaRequest.Params();
    v4 = *(v3 + *(result + 128));
    if (*(v4 + 16) > v2)
    {
      v5 = qword_1D91AC748[*(v4 + v2 + 32)];
      v6 = sub_1D905B134(v5);
      v8 = v7;
      v9 = type metadata accessor for SearchSeeAllSection();
      v10 = objc_allocWithZone(v9);
      *&v10[OBJC_IVAR___MTSearchSeeAllSection_contentType] = v5;
      v11 = &v10[OBJC_IVAR___MTSearchSeeAllSection_nextPage];
      *v11 = v6;
      v11[1] = v8;
      v12.receiver = v10;
      v12.super_class = v9;
      return objc_msgSendSuper2(&v12, sel_init);
    }
  }

  __break(1u);
  return result;
}

id SearchSeeAllSection.__allocating_init(contentType:nextPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___MTSearchSeeAllSection_contentType] = a1;
  v8 = &v7[OBJC_IVAR___MTSearchSeeAllSection_nextPage];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1D905B134(uint64_t a1)
{
  v3 = sub_1D917744C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D905BDB8(a1);
  if (v8)
  {
    PageySSSgSDys11AnyHashableVypGFZ_0 = _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v8);
    v11 = v10;
  }

  else
  {
    PageySSSgSDys11AnyHashableVypGFZ_0 = 0;
    v11 = 0;
  }

  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1ECAB79C8);
  swift_beginAccess();
  (*(v4 + 16))(v7, v12, v3);

  v13 = v1;
  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();

  if (os_log_type_enabled(v14, v15))
  {
    v28 = PageySSSgSDys11AnyHashableVypGFZ_0;
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v16 = 136315394;
    v17 = &v13[OBJC_IVAR___MTSearchResponse_params];
    v18 = &v17[*(type metadata accessor for MediaRequest.Params() + 124)];
    if (v18[1])
    {
      v19 = *v18;
      v20 = v18[1];
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = sub_1D8CFA924(v19, v20, &v29);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    PageySSSgSDys11AnyHashableVypGFZ_0 = v28;
    if (v11)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }

    if (v11)
    {
      v23 = v11;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v24 = sub_1D8CFA924(v22, v23, &v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Parsing nextPage for term (%s) returned %s", v16, 0x16u);
    v25 = v27;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v25, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return PageySSSgSDys11AnyHashableVypGFZ_0;
}

uint64_t sub_1D905B430(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___MTSearchResponse_parsedObjectsCache;
  swift_beginAccess();
  v10 = *&v1[v9];
  if (*(v10 + 16))
  {
    v11 = sub_1D8F06F60(a1);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      if (v13 >> 62)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          v56 = *(*(v10 + 56) + 8 * v11);
        }

        v57 = sub_1D91796FC();

        return v57;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFF8;
      swift_bridgeObjectRetain_n();
      sub_1D9179C4C();
      if (!swift_dynamicCastMetatype())
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          v16 = (v14 + 32);
          while (*v16)
          {
            ++v16;
            if (!--v15)
            {
              goto LABEL_97;
            }
          }

LABEL_104:

          return v14 | 1;
        }
      }

      goto LABEL_97;
    }
  }

  v17 = sub_1D905BDB8(a1);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = v17;
    type metadata accessor for MediaRequestResponseParser();
    _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v19);
    if (v20)
    {
    }

    sub_1D90507E0(v19, v62);
    if (v62[1])
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      LOBYTE(v61) = v62[0];
      v21 = sub_1D9052EB8(v19, &v61);
      v23 = v22;
    }

    swift_beginAccess();

    v24 = *&v2[v9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *&v2[v9];
    *&v2[v9] = 0x8000000000000000;
    sub_1D8F50DC0(v21, a1, isUniquelyReferenced_nonNull_native);
    *&v2[v9] = v61;
    swift_endAccess();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v4, qword_1ECAB79C8);
  swift_beginAccess();
  (*(v5 + 16))(v8, v26, v4);
  swift_bridgeObjectRetain_n();
  v27 = v2;
  v28 = sub_1D917741C();
  v29 = sub_1D9178D1C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v30 = 136315650;
    v31 = &v27[OBJC_IVAR___MTSearchResponse_params];
    v32 = &v31[*(type metadata accessor for MediaRequest.Params() + 124)];
    if (v32[1])
    {
      v33 = *v32;
      v34 = v32[1];
    }

    else
    {
      v33 = 0;
      v34 = 0xE000000000000000;
    }

    v37 = sub_1D8CFA924(v33, v34, &v61);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2048;
    if (v21 >> 62)
    {
      v38 = sub_1D917935C();
    }

    else
    {
      v38 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 14) = v38;

    *(v30 + 22) = 2080;
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          v39 = 0xE700000000000000;
          v40 = 0x74736163646F70;
          goto LABEL_71;
        case 1:
          v39 = 0xEE0065646F736970;
          v40 = 0x4574736163646F70;
          goto LABEL_71;
        case 2:
          v39 = 0xEE006C656E6E6168;
          v40 = 0x4374736163646F70;
          goto LABEL_71;
      }

LABEL_111:
      v60 = a1;
      goto LABEL_112;
    }

    switch(a1)
    {
      case 3:
        v39 = 0xEE006E6F69746174;
        v40 = 0x5374736163646F70;
        goto LABEL_71;
      case 4:
        v39 = 0xEB00000000737470;
        v41 = 0x63736E617274;
        break;
      case 5:
        v39 = 0xEA00000000007365;
        v41 = 0x6F6765746163;
        break;
      default:
        goto LABEL_111;
    }

    v40 = v41 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
LABEL_71:
    v46 = sub_1D8CFA924(v40, v39, &v61);

    *(v30 + 24) = v46;
    _os_log_impl(&dword_1D8CEC000, v28, v29, "Parsing results for term (%s) created %ld %s objects.", v30, 0x20u);
    v47 = v59;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v47, -1, -1);
    MEMORY[0x1DA72CB90](v30, -1, -1);

    (*(v5 + 8))(v8, v4);
    v18 = MEMORY[0x1E69E7CC0];
    if (a1 > 2)
    {
      goto LABEL_72;
    }

    goto LABEL_24;
  }

  swift_bridgeObjectRelease_n();
  (*(v5 + 8))(v8, v4);
  if (a1 > 2)
  {
LABEL_72:
    switch(a1)
    {
      case 3:
        v13 = sub_1D8FBF39C(v21);

        if (!v13)
        {
          v13 = v18;
        }

        if (!(v13 >> 62))
        {
          v14 = v13 & 0xFFFFFFFFFFFFFF8;

          sub_1D9179C4C();
          if (!swift_dynamicCastMetatype())
          {
            v50 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v50)
            {
              v51 = (v14 + 32);
              while (*v51)
              {
                ++v51;
                if (!--v50)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_97;
        }

        goto LABEL_105;
      case 4:
        v13 = sub_1D8FBEEC0(v21);

        if (!v13)
        {
          v13 = v18;
        }

        if (!(v13 >> 62))
        {
          v14 = v13 & 0xFFFFFFFFFFFFFF8;

          sub_1D9179C4C();
          if (!swift_dynamicCastMetatype())
          {
            v48 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v48)
            {
              v49 = (v14 + 32);
              while (*v49)
              {
                ++v49;
                if (!--v48)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_104;
            }
          }

LABEL_97:

          return v13;
        }

LABEL_105:

        v55 = sub_1D91796FC();
        swift_bridgeObjectRelease_n();
        return v55;
      case 5:
        v13 = sub_1D8FBF3B4(v21);

        if (!v13)
        {
          v13 = v18;
        }

        if (!(v13 >> 62))
        {
          v14 = v13 & 0xFFFFFFFFFFFFFF8;

          sub_1D9179C4C();
          if (!swift_dynamicCastMetatype())
          {
            v53 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v53)
            {
              v54 = (v14 + 32);
              while (*v54)
              {
                ++v54;
                if (!--v53)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_104;
            }
          }

          goto LABEL_97;
        }

        goto LABEL_105;
    }

    goto LABEL_110;
  }

LABEL_24:
  switch(a1)
  {
    case 0:
      v13 = sub_1D8FBF384(v21);

      if (!v13)
      {
        v13 = v18;
      }

      if (!(v13 >> 62))
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;

        sub_1D9179C4C();
        if (!swift_dynamicCastMetatype())
        {
          v42 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v42)
          {
            v43 = (v14 + 32);
            while (*v43)
            {
              ++v43;
              if (!--v42)
              {
                goto LABEL_97;
              }
            }

            goto LABEL_104;
          }
        }

        goto LABEL_97;
      }

      goto LABEL_105;
    case 1:
      v13 = sub_1D8FBECF4(v21);

      if (!v13)
      {
        v13 = v18;
      }

      if (!(v13 >> 62))
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;

        sub_1D9179C4C();
        if (!swift_dynamicCastMetatype())
        {
          v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
            v36 = (v14 + 32);
            while (*v36)
            {
              ++v36;
              if (!--v35)
              {
                goto LABEL_97;
              }
            }

            goto LABEL_104;
          }
        }

        goto LABEL_97;
      }

      goto LABEL_105;
    case 2:
      v13 = sub_1D8FBEEFC(v21);

      if (!v13)
      {
        v13 = v18;
      }

      if (!(v13 >> 62))
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;

        sub_1D9179C4C();
        if (!swift_dynamicCastMetatype())
        {
          v44 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v44)
          {
            v45 = (v14 + 32);
            while (*v45)
            {
              ++v45;
              if (!--v44)
              {
                goto LABEL_97;
              }
            }

            goto LABEL_104;
          }
        }

        goto LABEL_97;
      }

      goto LABEL_105;
  }

LABEL_110:
  v61 = a1;
LABEL_112:
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D905BDB8(uint64_t a1)
{
  sub_1D91793EC();
  v3 = *(v1 + OBJC_IVAR___MTSearchResponse_response);
  if (!*(v3 + 16))
  {
    goto LABEL_23;
  }

  v4 = sub_1D8D6550C(v12);
  if ((v5 & 1) == 0)
  {
LABEL_22:

LABEL_23:
    sub_1D8D9A308(v12);
    return 0;
  }

  sub_1D8CFAD1C(*(v3 + 56) + 32 * v4, v13);
  sub_1D8D9A308(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        goto LABEL_14;
      case 4:
        v6 = 0x63736E617274;
        break;
      case 5:
        v6 = 0x6F6765746163;
        break;
      default:
        goto LABEL_25;
    }

    v7 = v6 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    goto LABEL_18;
  }

  if (!a1)
  {
    v7 = 0x7374736163646F70;
LABEL_18:
    v11 = v7;
    sub_1D91793EC();
    if (MEMORY[0x73746C75736582])
    {
      v8 = sub_1D8D6550C(v12);
      if (v9)
      {
        sub_1D8CFAD1C(MEMORY[0x73746C757365AA] + 32 * v8, v13);
        sub_1D8D9A308(v12);

        if (swift_dynamicCast())
        {
          return v11;
        }

        return 0;
      }
    }

    goto LABEL_22;
  }

  if (a1 == 1 || a1 == 2)
  {
LABEL_14:
    v7 = 0xD000000000000010;
    goto LABEL_18;
  }

LABEL_25:
  v12[0] = a1;
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t SearchSeeAllSection.nextPage.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTSearchSeeAllSection_nextPage);
  v2 = *(v0 + OBJC_IVAR___MTSearchSeeAllSection_nextPage + 8);

  return v1;
}

id SearchSeeAllSection.init(contentType:nextPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___MTSearchSeeAllSection_contentType] = a1;
  v4 = &v3[OBJC_IVAR___MTSearchSeeAllSection_nextPage];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SearchSeeAllSection();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1D905C2EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D905C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(type metadata accessor for MediaRequest.Params() - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  sub_1D905A5FC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t type metadata accessor for SearchResponse()
{
  result = qword_1ECAB9798;
  if (!qword_1ECAB9798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D905C4E8()
{
  result = type metadata accessor for MediaRequest.Params();
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

void sub_1D905C6D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D9176A5C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_1D905C73C()
{
  result = [objc_allocWithZone(type metadata accessor for SubscriptionController()) init];
  qword_1ECAB97A8 = result;
  return result;
}

id SubscriptionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SubscriptionController.sharedInstance.getter()
{
  if (qword_1ECAB36D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB97A8;

  return v1;
}

uint64_t sub_1D905C8C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a4;
  v60 = a3;
  v61 = a5;
  v57 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - v9;
  v55 = &v44 - v9;
  v11 = type metadata accessor for MediaRequest.Params();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9189080;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v56 = a2;
  v17 = sub_1D9176C2C();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);

  v19 = MEMORY[0x1E69E7CC0];
  v54 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v53 = sub_1D8D94DF8(v19);
  v52 = sub_1D8D951E0(v19);
  v51 = sub_1D8D9503C(v19);
  v50 = sub_1D8D9536C(v19);
  v49 = sub_1D8D9536C(v19);
  v48 = sub_1D8D953C4(v19);
  v46 = sub_1D8D952D8(v19);
  v47 = sub_1D8D95394(v19);
  v44 = sub_1D8D957C4(v19);
  *(v15 + 41) = 263;
  v15[43] = 5;
  v15[152] = 1;
  v15[201] = 1;
  v20 = v12[30];
  v18(&v15[v20], 1, 1, v17);
  v21 = &v15[v12[31]];
  v22 = &v15[v12[33]];
  v23 = v12[35];
  v45 = v12[36];
  v24 = &v15[v23];
  v25 = &v15[v12[37]];
  *v15 = 1;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 10) = 83951876;
  v26 = v53;
  *(v15 + 6) = v54;
  *(v15 + 7) = v26;
  v27 = v51;
  *(v15 + 8) = v52;
  *(v15 + 9) = v19;
  v29 = v49;
  v28 = v50;
  *(v15 + 10) = v27;
  *(v15 + 11) = v28;
  v30 = v48;
  *(v15 + 12) = v29;
  *(v15 + 13) = v30;
  v31 = v46;
  v32 = v47;
  *(v15 + 14) = v19;
  *(v15 + 15) = v31;
  *(v15 + 16) = v19;
  *(v15 + 17) = v19;
  *(v15 + 18) = v16;
  v15[152] = 1;
  *(v15 + 20) = 0;
  v15[168] = 1;
  v33 = v44;
  *(v15 + 22) = v32;
  *(v15 + 23) = v33;
  *(v15 + 24) = 0;
  *(v15 + 100) = 257;
  v15[202] = 0;
  sub_1D8E26828(v55, &v15[v20]);
  *v21 = 0;
  *(v21 + 1) = 0;
  v15[v12[32]] = 0;
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v15[v12[34]] = v19;
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v45] = 2;
  *v25 = 0;
  *(v25 + 1) = 0;
  v34 = *(v58 + OBJC_IVAR___MTSubscriptionController_requestController);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v38 = v56;
  v37 = v57;
  v36[2] = v35;
  v36[3] = v37;
  v39 = v59;
  v40 = v60;
  v36[4] = v38;
  v36[5] = v39;
  v36[6] = v61;
  v36[7] = v40;
  v41 = v40;

  v42 = v34;

  sub_1D904AD58(v15, v40, sub_1D905E95C, v36);

  sub_1D8D90BEC(v15);
}

void sub_1D905CC8C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(void), uint64_t a10, void *a11)
{
  v100 = a5;
  v98 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v82 - v16;
  v18 = type metadata accessor for MediaRequest.Params();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D917744C();
  v23 = *(v22 - 8);
  v24 = v23[8];
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v95 = Strong;
  if (qword_1ECAB35C8 != -1)
  {
    swift_once();
  }

  v99 = v17;
  v93 = v18;
  v94 = a9;
  v30 = __swift_project_value_buffer(v22, qword_1ECAB7990);
  swift_beginAccess();
  v31 = v23[2];
  v89 = (v23 + 2);
  v90 = v30;
  v88 = v31;
  v31(v28, v30, v22);

  v32 = v100;
  v33 = v100;
  v34 = sub_1D917741C();
  v35 = v22;
  v36 = sub_1D9178D1C();

  v37 = os_log_type_enabled(v34, v36);
  v96 = a7;
  v97 = a8;
  v91 = v23;
  if (v37)
  {
    v87 = v35;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v102 = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_1D8CFA924(a7, a8, &v102);
    *(v38 + 12) = 2048;
    if (a1)
    {
      if (a1 >> 62)
      {
        v40 = sub_1D917935C();
      }

      else
      {
        v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v40 = 0;
    }

    *(v38 + 14) = v40;

    *(v38 + 22) = 2080;
    v101 = v100;
    v43 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97C0, qword_1D91AC7F0);
    v44 = sub_1D917826C();
    v46 = sub_1D8CFA924(v44, v45, &v102);

    *(v38 + 24) = v46;
    _os_log_impl(&dword_1D8CEC000, v34, v36, "Siri check before following podcast %s. Found %ld podcasts with error %s.", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v39, -1, -1);
    MEMORY[0x1DA72CB90](v38, -1, -1);

    v41 = *(v91 + 8);
    v42 = v87;
    v41(v28, v87);
    a7 = v96;
    a8 = v97;
  }

  else
  {

    v41 = v23[1];
    v41(v28, v35);
    v42 = v35;
  }

  if (!v98)
  {
LABEL_24:
    v100 = a11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1D9189080;
    *(v60 + 32) = a7;
    *(v60 + 40) = a8;
    v61 = sub_1D9176C2C();
    v62 = *(*(v61 - 8) + 56);
    v62(v99, 1, 1, v61);

    v63 = MEMORY[0x1E69E7CC0];
    v98 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v92 = sub_1D8D94DF8(v63);
    v91 = sub_1D8D951E0(v63);
    v90 = sub_1D8D9503C(v63);
    v89 = sub_1D8D9536C(v63);
    v88 = sub_1D8D9536C(v63);
    v87 = sub_1D8D953C4(v63);
    v85 = sub_1D8D952D8(v63);
    v86 = sub_1D8D95394(v63);
    v83 = sub_1D8D957C4(v63);
    *(v21 + 41) = 263;
    v21[43] = 5;
    v21[152] = 1;
    v21[201] = 1;
    v64 = v93;
    v65 = v93[28];
    v62(&v21[v65], 1, 1, v61);
    v66 = &v21[v64[29]];
    v67 = &v21[v64[31]];
    v68 = v64[33];
    v84 = v64[34];
    v69 = &v21[v68];
    v70 = &v21[v64[35]];
    *v21 = 2;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 10) = 83951876;
    v71 = v91;
    v72 = v92;
    *(v21 + 6) = v98;
    *(v21 + 7) = v72;
    *(v21 + 8) = v71;
    *(v21 + 9) = v63;
    v73 = v89;
    *(v21 + 10) = v90;
    *(v21 + 11) = v73;
    v74 = v87;
    *(v21 + 12) = v88;
    *(v21 + 13) = v74;
    v75 = v85;
    *(v21 + 14) = v63;
    *(v21 + 15) = v75;
    *(v21 + 16) = v63;
    *(v21 + 17) = v63;
    *(v21 + 18) = v60;
    v21[152] = 1;
    *(v21 + 20) = 0;
    v21[168] = 1;
    v76 = v83;
    *(v21 + 22) = v86;
    *(v21 + 23) = v76;
    *(v21 + 24) = 0;
    *(v21 + 100) = 257;
    v21[202] = 0;
    sub_1D8E26828(v99, &v21[v65]);
    *v66 = 0;
    *(v66 + 1) = 0;
    v21[v64[30]] = 0;
    *v67 = 0;
    *(v67 + 1) = 0;
    *&v21[v64[32]] = v63;
    *v69 = 0;
    *(v69 + 1) = 0;
    v21[v84] = 2;
    *v70 = 0;
    *(v70 + 1) = 0;
    v77 = v95;
    v78 = *&v95[OBJC_IVAR___MTSubscriptionController_requestController];
    v79 = swift_allocObject();
    v79[2] = v96;
    v80 = v94;
    v79[3] = v97;
    v79[4] = v80;
    v79[5] = a10;

    v81 = v78;

    sub_1D904AD58(v21, v100, sub_1D905F054, v79);

    sub_1D8D90BEC(v21);
    return;
  }

  v47 = v98;
  if ([v47 statusCode] != 200 || !a1)
  {
    goto LABEL_23;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v100)
  {
    goto LABEL_23;
  }

  v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v49 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v50 = [v48 initWithDomain:v49 code:-1001 userInfo:0];

  v51 = v92;
  v88(v92, v90, v42);

  v52 = sub_1D917741C();
  v53 = sub_1D9178D1C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v100 = v50;
    v55 = a7;
    v56 = v54;
    v57 = swift_slowAlloc();
    v102 = v57;
    *v56 = 136315138;
    v50 = v100;
    *(v56 + 4) = sub_1D8CFA924(v55, a8, &v102);
    _os_log_impl(&dword_1D8CEC000, v52, v53, "User is already following podcast %s.", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1DA72CB90](v57, -1, -1);
    MEMORY[0x1DA72CB90](v56, -1, -1);

    v58 = v92;
  }

  else
  {

    v58 = v51;
  }

  v41(v58, v42);
  v59 = v50;
  v94(v50);
}

uint64_t sub_1D905D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v33 = a9;
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB35C8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_1ECAB7990);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);

  v19 = a5;
  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1D8CFA924(a6, a7, &v35);
    *(v23 + 12) = 2080;
    v34 = a5;
    v25 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97C0, qword_1D91AC7F0);
    v26 = sub_1D917826C();
    v28 = sub_1D8CFA924(v26, v27, &v35);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_1D8CEC000, v20, v21, "Complete following podcast %s command with error %s.", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v24, -1, -1);
    v29 = v23;
    a8 = v32;
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  return a8(a5);
}

uint64_t sub_1D905D91C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v67 = a4;
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v52 - v15;
  v17 = type metadata accessor for MediaRequest.Params();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
    inited = swift_initStackObject();
    v23 = a1;
    v65 = a1;
    v24 = inited;
    v64 = xmmword_1D9189080;
    *(inited + 16) = xmmword_1D9189080;
    v66 = v4;
    *(inited + 32) = 2;
    v25 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v26 = swift_allocObject();
    *(v26 + 16) = v64;
    *(v26 + 32) = v23;
    *(v26 + 40) = a2;
    *(v24 + 40) = v26;

    v62 = sub_1D8E272A4(v24);
    swift_setDeallocating();
    sub_1D8D08A50(v25, &qword_1ECAB8D18, &qword_1D91A6E18);
    v27 = sub_1D9176C2C();
    *&v64 = a2;
    v28 = v27;
    v29 = *(*(v27 - 8) + 56);
    v63 = a3;
    v61 = v16;
    v29(v16, 1, 1, v27);
    v30 = MEMORY[0x1E69E7CC0];
    v60 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v59 = sub_1D8D94DF8(v30);
    v58 = sub_1D8D951E0(v30);
    v57 = sub_1D8D9503C(v30);
    v56 = sub_1D8D9536C(v30);
    v55 = sub_1D8D9536C(v30);
    v31 = sub_1D8D953C4(v30);
    v32 = sub_1D8D952D8(v30);
    v53 = sub_1D8D957C4(v30);
    *(v20 + 41) = 263;
    v20[43] = 5;
    v20[152] = 1;
    v20[201] = 1;
    v33 = v17[28];
    v29(&v20[v33], 1, 1, v28);
    v34 = &v20[v17[29]];
    v35 = &v20[v17[31]];
    v36 = v17[33];
    v54 = v17[34];
    v37 = &v20[v36];
    v38 = &v20[v17[35]];
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 4) = 0;
    *(v20 + 10) = 83951876;
    v39 = v59;
    *(v20 + 6) = v60;
    *(v20 + 7) = v39;
    *(v20 + 8) = v58;
    *(v20 + 9) = v30;
    v40 = v56;
    *(v20 + 10) = v57;
    *(v20 + 11) = v40;
    *(v20 + 12) = v55;
    *(v20 + 13) = v31;
    *(v20 + 14) = v30;
    *(v20 + 15) = v32;
    *(v20 + 16) = v30;
    *(v20 + 17) = v30;
    *(v20 + 18) = v30;
    v20[152] = 1;
    *(v20 + 20) = 0;
    v20[168] = 1;
    v41 = v61;
    v42 = v53;
    *(v20 + 22) = v62;
    *(v20 + 23) = v42;
    *(v20 + 24) = 0;
    *(v20 + 100) = 257;
    v20[202] = 0;
    sub_1D8E26828(v41, &v20[v33]);
    *v34 = 0;
    *(v34 + 1) = 0;
    v20[v17[30]] = 0;
    *v35 = 0;
    *(v35 + 1) = 0;
    *&v20[v17[32]] = v30;
    *v37 = 0;
    *(v37 + 1) = 0;
    v20[v54] = 2;
    *v38 = 0;
    *(v38 + 1) = 0;
    v43 = *(v66 + OBJC_IVAR___MTSubscriptionController_requestController);
    v44 = swift_allocObject();
    v45 = v67;
    v44[2] = v63;
    v44[3] = v45;
    v44[4] = v65;
    v44[5] = v64;

    v46 = v43;

    sub_1D904AD58(v20, 0, sub_1D905E994, v44);

    return sub_1D8D90BEC(v20);
  }

  else
  {
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v8, qword_1EDCD0770);
    swift_beginAccess();
    (*(v9 + 16))(v12, v48, v8);
    v49 = sub_1D917741C();
    v50 = sub_1D9178D1C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D8CEC000, v49, v50, "feedUrl is empty. Not checking MAPI if it exists in the store.", v51, 2u);
      MEMORY[0x1DA72CB90](v51, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return a3(0);
  }
}

void sub_1D905DED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, uint64_t a8, unint64_t a9)
{
  v70 = a7;
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v68 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v68 - v22;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = v68 - v26;
  if (a5)
  {
    v28 = a6;
    v29 = a5;
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v13, qword_1EDCD0770);
    swift_beginAccess();
    (*(v14 + 16))(v27, v30, v13);
    v31 = a5;
    v32 = sub_1D917741C();
    v33 = sub_1D9178CFC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = sub_1D9176A5C();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "Could not check if podcast exists in store with error: %@", v34, 0xCu);
      sub_1D8D08A50(v35, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    (*(v14 + 8))(v27, v13);
    v28(0);

    return;
  }

  v69 = a6;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (!sub_1D917935C())
      {
        goto LABEL_21;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1DA72AA90](0, a1, v25);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_36;
      }

      v37 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    type metadata accessor for ServerPodcast();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      v68[1] = v37;
      v39 = [v38 podcastStoreId];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1D917820C();
        v43 = v42;

        v60 = sub_1D8FE6808(v41, v43);

        if ((v60 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (qword_1EDCD0768 == -1)
        {
LABEL_28:
          v61 = __swift_project_value_buffer(v13, qword_1EDCD0770);
          swift_beginAccess();
          (*(v14 + 16))(v23, v61, v13);

          v62 = sub_1D917741C();
          v63 = sub_1D9178D1C();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = v60;
            v66 = swift_slowAlloc();
            v72 = v66;
            *v64 = 136315394;
            *(v64 + 4) = sub_1D8CFA924(a8, a9, &v72);
            *(v64 + 12) = 2048;
            *(v64 + 14) = v65;
            _os_log_impl(&dword_1D8CEC000, v62, v63, "Found podcast in the store for feedUrl: %s with adamId: %lld", v64, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v66);
            v67 = v66;
            v60 = v65;
            MEMORY[0x1DA72CB90](v67, -1, -1);
            MEMORY[0x1DA72CB90](v64, -1, -1);
          }

          (*(v14 + 8))(v23, v13);
          v69(v60);
LABEL_31:
          swift_unknownObjectRelease();
          return;
        }

        swift_once();
        goto LABEL_28;
      }

      if (qword_1EDCD0768 == -1)
      {
LABEL_17:
        v44 = __swift_project_value_buffer(v13, qword_1EDCD0770);
        swift_beginAccess();
        (*(v14 + 16))(v20, v44, v13);

        v45 = sub_1D917741C();
        v46 = sub_1D9178CFC();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v68[0] = swift_slowAlloc();
          v72 = v68[0];
          *v47 = 136315394;
          *(v47 + 4) = sub_1D8CFA924(a8, a9, &v72);
          *(v47 + 12) = 2080;
          v71 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97B8, &unk_1D91AC7E0);
          v48 = sub_1D917826C();
          v50 = sub_1D8CFA924(v48, v49, &v72);

          *(v47 + 14) = v50;
          _os_log_impl(&dword_1D8CEC000, v45, v46, "Invalid adamId for podcastExistsInStore for feedUrl: %s, response: %s", v47, 0x16u);
          v51 = v68[0];
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v51, -1, -1);
          MEMORY[0x1DA72CB90](v47, -1, -1);
        }

        (*(v14 + 8))(v20, v13);
        v69(0);
        goto LABEL_31;
      }

LABEL_36:
      swift_once();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

LABEL_21:
  if (qword_1EDCD0768 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v13, qword_1EDCD0770);
  swift_beginAccess();
  (*(v14 + 16))(v17, v52, v13);

  v53 = sub_1D917741C();
  v54 = sub_1D9178CFC();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v72 = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_1D8CFA924(a8, a9, &v72);
    *(v55 + 12) = 2080;
    v71 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97B8, &unk_1D91AC7E0);
    v57 = sub_1D917826C();
    v59 = sub_1D8CFA924(v57, v58, &v72);

    *(v55 + 14) = v59;
    _os_log_impl(&dword_1D8CEC000, v53, v54, "Received invalid response from MAPI for podcastExistsInStore for feedUrl: %s, response: %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v56, -1, -1);
    MEMORY[0x1DA72CB90](v55, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v69(0);
}

id SubscriptionController.init()()
{
  v1 = OBJC_IVAR___MTSubscriptionController_requestController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SubscriptionController();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SubscriptionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D905EA64(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v52 - v10;
  v11 = type metadata accessor for MediaRequest.Params();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D917744C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8D10, &unk_1D91A7620);
    inited = swift_initStackObject();
    v23 = a1;
    v62 = a1;
    v24 = inited;
    v64 = xmmword_1D9189080;
    *(inited + 16) = xmmword_1D9189080;
    v63 = a3;
    *(inited + 32) = 2;
    v25 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v26 = swift_allocObject();
    *(v26 + 16) = v64;
    *(v26 + 32) = v23;
    *(v26 + 40) = a2;
    *(v24 + 40) = v26;
    _Block_copy(a4);

    v60 = sub_1D8E272A4(v24);
    swift_setDeallocating();
    sub_1D8D08A50(v25, &qword_1ECAB8D18, &qword_1D91A6E18);
    v27 = sub_1D9176C2C();
    v28 = *(v27 - 8);
    *&v64 = v20;
    v29 = *(v28 + 56);
    v61 = a2;
    v29(v65, 1, 1, v27);
    v30 = MEMORY[0x1E69E7CC0];
    v59 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v58 = sub_1D8D94DF8(v30);
    v57 = sub_1D8D951E0(v30);
    v56 = sub_1D8D9503C(v30);
    v55 = sub_1D8D9536C(v30);
    v54 = sub_1D8D9536C(v30);
    v31 = sub_1D8D953C4(v30);
    v32 = sub_1D8D952D8(v30);
    v52 = sub_1D8D957C4(v30);
    *(v14 + 41) = 263;
    v14[43] = 5;
    v14[152] = 1;
    v14[201] = 1;
    v33 = v11[28];
    v29(&v14[v33], 1, 1, v27);
    v34 = &v14[v11[29]];
    v35 = &v14[v11[31]];
    v36 = v11[33];
    v53 = v11[34];
    v37 = &v14[v36];
    v38 = &v14[v11[35]];
    *v14 = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 4) = 0;
    *(v14 + 10) = 83951876;
    v39 = v58;
    *(v14 + 6) = v59;
    *(v14 + 7) = v39;
    v40 = v56;
    *(v14 + 8) = v57;
    *(v14 + 9) = v30;
    v41 = v55;
    *(v14 + 10) = v40;
    *(v14 + 11) = v41;
    *(v14 + 12) = v54;
    *(v14 + 13) = v31;
    *(v14 + 14) = v30;
    *(v14 + 15) = v32;
    *(v14 + 16) = v30;
    *(v14 + 17) = v30;
    *(v14 + 18) = v30;
    v14[152] = 1;
    *(v14 + 20) = 0;
    v14[168] = 1;
    v42 = v52;
    *(v14 + 22) = v60;
    *(v14 + 23) = v42;
    *(v14 + 24) = 0;
    *(v14 + 100) = 257;
    v14[202] = 0;
    sub_1D8E26828(v65, &v14[v33]);
    *v34 = 0;
    *(v34 + 1) = 0;
    v14[v11[30]] = 0;
    *v35 = 0;
    *(v35 + 1) = 0;
    *&v14[v11[32]] = v30;
    *v37 = 0;
    *(v37 + 1) = 0;
    v14[v53] = 2;
    *v38 = 0;
    *(v38 + 1) = 0;
    v43 = v64;
    v44 = *(v63 + OBJC_IVAR___MTSubscriptionController_requestController);
    v45 = swift_allocObject();
    v45[2] = sub_1D8FFEC64;
    v45[3] = v43;
    v45[4] = v62;
    v45[5] = v61;

    v46 = v44;

    sub_1D904AD58(v14, 0, sub_1D905F080, v45);

    sub_1D8D90BEC(v14);
  }

  else
  {
    _Block_copy(a4);
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v15, qword_1EDCD0770);
    swift_beginAccess();
    (*(v16 + 16))(v19, v47, v15);
    v48 = sub_1D917741C();
    v49 = sub_1D9178D1C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D8CEC000, v48, v49, "feedUrl is empty. Not checking MAPI if it exists in the store.", v50, 2u);
      MEMORY[0x1DA72CB90](v50, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    a4[2](a4, 0);
  }
}

uint64_t static ArtworkFormatter.formatArtworkUrl(string:for:cropCode:fileExtension:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{

  sub_1D905F354(a4);
  v7 = sub_1D8D447DC();
  v8 = MEMORY[0x1E69E6158];
  sub_1D917922C();

  sub_1D905F354(a3);
  sub_1D917922C();

  if (a1)
  {
    sub_1D917922C();
  }

  v9 = 1;
  sub_1D917922C();

  v10 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 initWithString_];

  if (v12)
  {
    sub_1D9176B9C();

    v9 = 0;
  }

  v13 = sub_1D9176C2C();
  return (*(*(v13 - 8) + 56))(a2, v9, 1, v13);
}

uint64_t sub_1D905F354(double a1)
{
  if (fabs(a1) > 9.22337204e18)
  {
    return 0;
  }

  if (a1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (a1 < 9.22337204e18)
  {
    return sub_1D9179A4C();
  }

  __break(1u);
  return result;
}

uint64_t static ArtworkFormatter.formatArtworkUrl(url:for:cropCode:fileExtension:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1D9176ACC();
  sub_1D905F354(a4);
  v7 = sub_1D8D447DC();
  v8 = MEMORY[0x1E69E6158];
  sub_1D917922C();

  sub_1D905F354(a3);
  sub_1D917922C();

  if (a1)
  {
    sub_1D917922C();
  }

  v9 = 1;
  sub_1D917922C();

  v10 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 initWithString_];

  if (v12)
  {
    sub_1D9176B9C();

    v9 = 0;
  }

  v13 = sub_1D9176C2C();
  return (*(*(v13 - 8) + 56))(a2, v9, 1, v13);
}

id ArtworkFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ArtworkFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D905FB5C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D905FBB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MockPurchaseTask();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

id sub_1D905FBF0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = v4;

  return v4;
}

void sub_1D905FC48(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t (*sub_1D905FC94())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D905FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v5 = sub_1D9177E0C();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177EDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  sub_1D8CFD888();
  v21 = sub_1D9178E1C();
  sub_1D9177ECC();
  sub_1D9177F3C();
  v26 = *(v14 + 8);
  v26(v17, v13);
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = a4;
  aBlock[4] = sub_1D8F54EF8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_66;
  v23 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A360](v20, v12, v8, v23);
  _Block_release(v23);

  (*(v30 + 8))(v8, v5);
  (*(v28 + 8))(v12, v29);
  return (v26)(v20, v13);
}

uint64_t sub_1D90600A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_1D8E31758(0, v2, 0);
  v3 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
  v5 = 0;
  v30 = v1 + 32;
  v28 = v2;
  v29 = v1;
  while (v5 < *(v1 + 16))
  {
    v31 = v5 + 1;
    v6 = *(v30 + 8 * v5);
    v7 = sub_1D917977C();
    v8 = v7;
    v9 = v6 + 64;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 64);
    v13 = (v10 + 63) >> 6;
    v32 = v7 + 64;
    v33 = v6;

    v14 = 0;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_14:
        v18 = v15 | (v14 << 6);
        v19 = (*(v33 + 48) + 16 * v18);
        v20 = *v19;
        v21 = v19[1];
        sub_1D8FD68E4(*(v33 + 56) + 40 * v18, v35);

        AnyCodable.value.getter(v34);
        sub_1D8FD6940(v35);
        *(v32 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v22 = (v8[6] + 16 * v18);
        *v22 = v20;
        v22[1] = v21;
        result = sub_1D8D65618(v34, (v8[7] + 32 * v18));
        v23 = v8[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          break;
        }

        v8[2] = v25;
        if (!v12)
        {
          goto LABEL_9;
        }
      }

LABEL_22:
      __break(1u);
      break;
    }

LABEL_9:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v14 >= v13)
      {
        break;
      }

      v17 = *(v9 + 8 * v14);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    v36 = v3;
    v27 = *(v3 + 16);
    v26 = *(v3 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_1D8E31758((v26 > 1), v27 + 1, 1);
      v3 = v36;
    }

    *(v3 + 16) = v27 + 1;
    *(v3 + 8 * v27 + 32) = v8;
    v5 = v31;
    v1 = v29;
    if (v31 == v28)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D90602FC()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0x746E656D676573;
  }

  *v0;
  return result;
}

uint64_t sub_1D906033C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D676573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D91D4500 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D9060420(uint64_t a1)
{
  v2 = sub_1D9060640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D906045C(uint64_t a1)
{
  v2 = sub_1D9060640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSubscriptionInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97C8, &qword_1D91AC8B0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9060640();
  sub_1D9179F1C();
  v17 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
    sub_1D9060694();
    sub_1D91799FC();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_1D9060640()
{
  result = qword_1ECAB1D40;
  if (!qword_1ECAB1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D40);
  }

  return result;
}

unint64_t sub_1D9060694()
{
  result = qword_1ECAAFEF8;
  if (!qword_1ECAAFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
    sub_1D8FD62C0(&qword_1ECAB0148, sub_1D8FD6000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEF8);
  }

  return result;
}

uint64_t MusicSubscriptionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97D8, &qword_1D91AC8C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9060640();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v11 = sub_1D91798BC();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
  v18 = 1;
  sub_1D9060974();
  sub_1D91798FC();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D9060974()
{
  result = qword_1ECAAFEF0;
  if (!qword_1ECAAFEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB97D0, &unk_1D91AC8B8);
    sub_1D8FD62C0(&qword_1ECAB0140, sub_1D8FD6344);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEF0);
  }

  return result;
}

uint64_t static MusicSubscriptionInfoLoader.loadIfNeeded()()
{
  v0 = sub_1D9177E0C();
  v65 = *(v0 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9176C2C();
  v63 = *(v9 - 1);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  v18 = [objc_opt_self() ams_sharedAccountStore];
  v19 = [v18 ams_activeiTunesAccount];

  if (v19)
  {

    if (qword_1ECAB9800)
    {
      v20 = qword_1ECAB9800;

      return v20;
    }

    v65 = 0;
    v25 = sub_1D91769AC();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v66 = sub_1D917699C();
    v28 = [objc_opt_self() defaultManager];
    v29 = objc_opt_self();
    v30 = [v29 documentsDirectory];
    sub_1D9176B9C();

    sub_1D9176B3C();
    v31 = v64;
    v20 = *(v63 + 8);
    (v20)(v14, v64);
    sub_1D9176BCC();
    (v20)(v17, v31);
    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    LODWORD(v30) = [v28 fileExistsAtPath_];

    if (!v30)
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D917744C();
      __swift_project_value_buffer(v38, qword_1EDCD0FE8);
      v39 = sub_1D917741C();
      v40 = sub_1D9178CFC();
      if (os_log_type_enabled(v39, v40))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D8CEC000, v39, v40, "File does not exist. Cannot get Music Subscription Info.", v20, 2u);
        MEMORY[0x1DA72CB90](v20, -1, -1);
      }

      sub_1D90613FC();
      swift_allocError();
      *v41 = 1;
      swift_willThrow();
      goto LABEL_21;
    }

    v33 = [v29 documentsDirectory];
    sub_1D9176B9C();

    v34 = v62;
    sub_1D9176B3C();
    (v20)(v17, v31);
    v35 = v67;
    v36 = sub_1D9176C3C();
    if (v35)
    {
      (v20)(v34, v31);
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v44 = sub_1D917744C();
      __swift_project_value_buffer(v44, qword_1EDCD0FE8);
      v45 = v35;
      v46 = sub_1D917741C();
      v47 = sub_1D9178CFC();

      if (os_log_type_enabled(v46, v47))
      {
        v20 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v20 = 138412290;
        v49 = sub_1D9176A5C();
        *(v20 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&dword_1D8CEC000, v46, v47, "Unable to get Music Subscription Info with error: %@.", v20, 0xCu);
        sub_1D8E262AC(v48);
        MEMORY[0x1DA72CB90](v48, -1, -1);
        MEMORY[0x1DA72CB90](v20, -1, -1);
      }

      swift_willThrow();
LABEL_21:

      return v20;
    }

    v42 = v36;
    v43 = v37;
    (v20)(v34, v31);
    sub_1D9061600();
    sub_1D917698C();
    v20 = sub_1D90600A4();

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v51 = sub_1D917744C();
    __swift_project_value_buffer(v51, qword_1EDCD0FE8);

    v52 = sub_1D917741C();
    v53 = sub_1D9178D1C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v67 = 0;
      aBlock[0] = v55;
      v64 = v55;
      *v54 = 136315138;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      v57 = MEMORY[0x1DA729BD0](v20, v56);
      v59 = v52;
      v60 = sub_1D8CFA924(v57, v58, aBlock);

      *(v54 + 4) = v60;
      v52 = v59;
      _os_log_impl(&dword_1D8CEC000, v59, v53, "Retrieved Music Subscription Info from file: %s", v54, 0xCu);
      v61 = v64;
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1DA72CB90](v61, -1, -1);
      MEMORY[0x1DA72CB90](v54, -1, -1);
    }

    sub_1D8D7567C(v42, v43);
  }

  else
  {
    v22 = v65;
    v21 = v66;
    v67 = v5;
    if (qword_1EDCD0990 != -1)
    {
      swift_once();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    aBlock[4] = j___s18PodcastsFoundation27MusicSubscriptionInfoLoaderC06deletecdE8IfNeededyyFZ_0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_67;
    v20 = _Block_copy(aBlock);
    sub_1D9177E4C();
    aBlock[7] = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v8, v3, v20);
    _Block_release(v20);
    (*(v22 + 8))(v3, v0);
    v67[1](v8, v4);

    sub_1D90613FC();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }

  return v20;
}

unint64_t sub_1D90613FC()
{
  result = qword_1ECAB97E0;
  if (!qword_1ECAB97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB97E0);
  }

  return result;
}

id MusicSubscriptionInfoLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicSubscriptionInfoLoader.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicSubscriptionInfoLoader();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicSubscriptionInfoLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicSubscriptionInfoLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D9061600()
{
  result = qword_1ECAB1D20;
  if (!qword_1ECAB1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D20);
  }

  return result;
}

uint64_t sub_1D9061654(uint64_t *a1)
{
  v3 = sub_1D9176C2C();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = *a1;
  v14 = sub_1D91769EC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1D91769DC();
  v52 = v13;
  v53 = *(a1 + 1);
  sub_1D9062490();
  v18 = sub_1D91769CC();
  if (v1)
  {

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0FE8);
    v21 = sub_1D917741C();
    v22 = sub_1D9178CFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Unable to encode Music Subscription Info. Cannot write file.", v23, 2u);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    sub_1D90613FC();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    v46 = v6;
    v50 = v19;
    v51 = v18;
    v49 = v17;
    v45 = objc_opt_self();
    v25 = [v45 defaultManager];
    v47 = objc_opt_self();
    v26 = [v47 documentsDirectory];
    sub_1D9176B9C();

    v48 = "undation16MockPurchaseTask";
    sub_1D9176B3C();
    v27 = v54 + 8;
    v28 = *(v54 + 8);
    v28(v9, v3);
    sub_1D9176BCC();
    v54 = v27;
    v28(v12, v3);
    v29 = v28;
    v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v31 = [v25 fileExistsAtPath_];

    if (v31)
    {
      v32 = [v47 documentsDirectory];
      sub_1D9176B9C();

      v33 = v46;
      sub_1D9176B3C();
      v29(v12, v3);
      v35 = v50;
      v34 = v51;
      sub_1D9176CAC();
      v29(v33, v3);
      sub_1D8D7567C(v34, v35);
    }

    else
    {
      v36 = [v45 defaultManager];
      v37 = [v47 documentsDirectory];
      sub_1D9176B9C();

      sub_1D9176B3C();
      v28(v9, v3);
      sub_1D9176BCC();
      v28(v12, v3);
      v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v39 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      [v36 createFileAtPath:v38 contents:v39 attributes:0];

      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v40 = sub_1D917744C();
      __swift_project_value_buffer(v40, qword_1EDCD0FE8);
      v41 = sub_1D917741C();
      v42 = sub_1D9178D1C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1D8CEC000, v41, v42, "Created new file to store Music Subscription Info sync.", v43, 2u);
        MEMORY[0x1DA72CB90](v43, -1, -1);
      }

      sub_1D8D7567C(v51, v50);
    }
  }
}

void _s18PodcastsFoundation27MusicSubscriptionInfoLoaderC06deletecdE8IfNeededyyFZ_0()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D9176C2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - v6;
  v34[0] = objc_opt_self();
  v8 = [v34[0] defaultManager];
  v9 = objc_opt_self();
  v10 = [v9 documentsDirectory];
  sub_1D9176B9C();

  sub_1D9176B3C();
  v11 = *(v1 + 8);
  v11(v4, v0);
  sub_1D9176BCC();
  v11(v7, v0);
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v13 = [v8 fileExistsAtPath_];

  if (!v13)
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0FE8);
    v21 = sub_1D917741C();
    v22 = sub_1D9178D1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "No subscription info on disk. Not deleting data.", v23, 2u);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    goto LABEL_11;
  }

  v14 = [v34[0] defaultManager];
  v15 = [v9 documentsDirectory];
  sub_1D9176B9C();

  sub_1D9176B3C();
  v11(v4, v0);
  sub_1D9176BCC();
  v11(v7, v0);
  v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v35[0] = 0;
  LODWORD(v15) = [v14 removeItemAtPath:v16 error:v35];

  v17 = v35[0];
  if (!v15)
  {
    v34[0] = v35[0];
    v25 = v35[0];
    v26 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD0FE8);
    v28 = v26;
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = sub_1D9176A5C();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "Unable to delete Music Subscription Info with error: %@.", v31, 0xCu);
      sub_1D8E262AC(v32);
      MEMORY[0x1DA72CB90](v32, -1, -1);
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    else
    {
    }

LABEL_11:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v18 = *MEMORY[0x1E69E9840];

  v19 = v17;
}

uint64_t sub_1D9062278(uint64_t a1, int a2)
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

uint64_t sub_1D90622C0(uint64_t result, int a2, int a3)
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

unint64_t sub_1D9062334()
{
  result = qword_1ECAB97E8;
  if (!qword_1ECAB97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB97E8);
  }

  return result;
}

unint64_t sub_1D906238C()
{
  result = qword_1ECAB97F0;
  if (!qword_1ECAB97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB97F0);
  }

  return result;
}

unint64_t sub_1D90623E4()
{
  result = qword_1ECAB1D30;
  if (!qword_1ECAB1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D30);
  }

  return result;
}

unint64_t sub_1D906243C()
{
  result = qword_1ECAB1D38;
  if (!qword_1ECAB1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D38);
  }

  return result;
}

unint64_t sub_1D9062490()
{
  result = qword_1ECAB1D28;
  if (!qword_1ECAB1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D28);
  }

  return result;
}

uint64_t sub_1D90624E4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

id MusicSubscriptionInfoSyncUtil.__allocating_init(bag:accountStore:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D9066280(a1, a2);
}

id MusicSubscriptionInfoSyncUtil.init(bag:accountStore:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D90662DC(a1, a2, v2);
}

uint64_t sub_1D9062638(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v130 = a4;
  v131 = a5;
  v129 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9848, &qword_1D91ACC58);
  v8 = *(v7 - 8);
  v127 = v7;
  v128 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v93 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9850, &unk_1D91ACC60);
  v104 = *(v95 - 8);
  v11 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v13 = &v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v93 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9860, &qword_1D91ACC70);
  v97 = *(v96 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v93 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9868, &qword_1D91ACC78);
  v105 = *(v101 - 8);
  v20 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v133 = &v93 - v21;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9870, &qword_1D91ACC80);
  v112 = *(v110 - 8);
  v22 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v132 = &v93 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9878, &qword_1D91ACC88);
  v115 = *(v114 - 8);
  v24 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v103 = &v93 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9880, &qword_1D91ACC90);
  v27 = *(v26 - 8);
  v117 = v26;
  v118 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v93 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9888, &qword_1D91ACC98);
  v31 = *(v30 - 8);
  v120 = v30;
  v121 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v113 = &v93 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9890, &qword_1D91ACCA0);
  v35 = *(v34 - 8);
  v122 = v34;
  v123 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v116 = &v93 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9898, &qword_1D91ACCA8);
  v39 = *(v38 - 8);
  v124 = v38;
  v125 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v119 = &v93 - v41;
  v42 = swift_allocObject();
  *(v42 + 16) = a2;
  *(v42 + 24) = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB98A0, &qword_1D91ACCB0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = a1;
  v47 = sub_1D9177A5C();
  v108 = *&v46[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_workQueue];
  v48 = v108;
  v107 = sub_1D9178DBC();
  v49 = *(v107 - 8);
  v106 = *(v49 + 56);
  v109 = v49 + 56;
  v106(v17, 1, 1, v107);
  v134 = v47;
  v135 = v48;
  v50 = sub_1D8CFD888();
  v93 = MEMORY[0x1E695C038];
  sub_1D8CF48EC(&qword_1EDCD0AB0, &unk_1ECAB98A0, &qword_1D91ACCB0);
  v51 = sub_1D8CFBDF0(&qword_1EDCD0980, sub_1D8CFD888);
  v99 = v50;
  v100 = v51;
  sub_1D9177D3C();
  v102 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&unk_1ECAB09F0, &unk_1ECAB9850, &unk_1D91ACC60);
  v52 = v94;
  v98 = v17;
  v53 = v95;
  sub_1D9177CEC();

  (*(v104 + 8))(v13, v53);
  sub_1D8D08A50(v17, &qword_1ECAB4D70, &unk_1D918BCE0);
  v54 = swift_allocObject();
  *(v54 + 16) = v46;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1D9066780;
  *(v55 + 24) = v54;
  v104 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0418, &qword_1ECAB9860, &qword_1D91ACC70);
  v56 = v46;
  v57 = v96;
  sub_1D9177C6C();

  (*(v97 + 8))(v52, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1D90667D0;
  *(v59 + 24) = v58;
  v60 = v56;
  sub_1D91777FC();
  sub_1D9176C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98B0, &unk_1D91ACCB8);
  v97 = MEMORY[0x1E695BE28];
  sub_1D8CF48EC(&qword_1ECAB0648, &qword_1ECAB9868, &qword_1D91ACC78);
  sub_1D8CF48EC(&unk_1EDCD0AF0, &qword_1ECAB98B0, &unk_1D91ACCB8);
  v61 = v101;
  v62 = v133;
  sub_1D9177CBC();

  (*(v105 + 8))(v62, v61);
  *(swift_allocObject() + 16) = v60;
  v63 = v60;
  sub_1D91777FC();
  sub_1D917653C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9830, &qword_1D91ACC48);
  v133 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB05A8, &qword_1ECAB9870, &qword_1D91ACC80);
  sub_1D8CF48EC(&qword_1EDCD0B00, &qword_1ECAB9830, &qword_1D91ACC48);
  v64 = v103;
  v65 = v110;
  v66 = v132;
  sub_1D9177CBC();

  (*(v112 + 8))(v66, v65);
  *(swift_allocObject() + 16) = v63;
  v67 = v63;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  sub_1D8CF48EC(&qword_1ECAB05B0, &qword_1ECAB9878, &qword_1D91ACC88);
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0);
  v68 = v111;
  v69 = v114;
  sub_1D9177CBC();

  (*(v115 + 8))(v64, v69);
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1D9066804;
  *(v71 + 24) = v70;
  sub_1D8CF48EC(&qword_1ECAB05A0, &qword_1ECAB9880, &qword_1D91ACC90);
  v72 = v67;
  v73 = v113;
  v74 = v117;
  sub_1D9177C6C();

  (*(v118 + 8))(v68, v74);
  *(swift_allocObject() + 16) = v72;
  v75 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98B8, &unk_1D91ACCC8);
  v76 = v116;
  v77 = v120;
  sub_1D91776EC();

  (*(v121 + 8))(v73, v77);
  v78 = v98;
  v106(v98, 1, 1, v107);
  v135 = v108;
  sub_1D8CF48EC(&qword_1ECAB0690, &qword_1ECAB9890, &qword_1D91ACCA0);
  v79 = v126;
  v80 = v122;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09B8, &qword_1ECAB9848, &qword_1D91ACC58);
  v81 = v119;
  v82 = v127;
  sub_1D9177CEC();
  (*(v128 + 8))(v79, v82);
  sub_1D8D08A50(v78, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v123 + 8))(v76, v80);
  v83 = swift_allocObject();
  v84 = v129;
  v85 = v130;
  *(v83 + 16) = v129;
  *(v83 + 24) = v85;
  v86 = swift_allocObject();
  v86[2] = v75;
  v86[3] = v84;
  v87 = v131;
  v86[4] = v85;
  v86[5] = v87;
  sub_1D8CF48EC(&qword_1ECAB03D0, &qword_1ECAB9898, &qword_1D91ACCA8);
  swift_retain_n();
  v88 = v75;
  v89 = v124;
  v90 = sub_1D9177BCC();

  (*(v125 + 8))(v81, v89);
  v91 = *&v88[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_syncSession];
  *&v88[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_syncSession] = v90;
}

uint64_t sub_1D9063674@<X0>(uint64_t *a1@<X8>)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98B0, &unk_1D91ACCB8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a1 = result;
  return result;
}

uint64_t sub_1D906370C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a2 = result;
  return result;
}

uint64_t sub_1D906386C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8[0] = *a1;
  v8[1] = v4;
  v8[2] = v6;
  sub_1D9061654(v8);
  if (v2)
  {
    return swift_willThrow();
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
}

void sub_1D90638D8(void **a1, void (*a2)(void *))
{
  v2 = *a1;
  if (*a1)
  {
    v15[0] = *a1;
    v4 = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if (swift_dynamicCast())
    {
      if (v16 != 3)
      {
LABEL_14:
        memset(v15, 0, sizeof(v15));
        a2(v15);

        return;
      }

      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1EDCD0FE8);
      v7 = sub_1D917741C();
      v8 = sub_1D9178D1C();
      if (!os_log_type_enabled(v7, v8))
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "Not syncing Music Subscription Info because not past threshold.", v9, 2u);
    }

    else
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v10 = sub_1D917744C();
      __swift_project_value_buffer(v10, qword_1EDCD0FE8);
      v11 = v2;
      v7 = sub_1D917741C();
      v12 = sub_1D9178CFC();

      if (!os_log_type_enabled(v7, v12))
      {
        goto LABEL_13;
      }

      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 138412290;
      v14 = sub_1D9176A5C();
      *(v9 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_1D8CEC000, v7, v12, "Music Subscription Info sync failed with error: %@", v9, 0xCu);
      sub_1D8D08A50(v13, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    MEMORY[0x1DA72CB90](v9, -1, -1);
    goto LABEL_13;
  }
}

uint64_t sub_1D9063B50(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v26 = a1[2];
  if (qword_1EDCD0FE0 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1EDCD0FE8);
  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v7;
    v17 = a3;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Successfuly synced user's Music Subscription Info.", v16, 2u);
    v19 = v18;
    a3 = v17;
    v7 = v25;
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  if (v11)
  {
    v27 = v12;
    v28 = v11;
    v20 = v26;
    v29 = v26;
    v21 = sub_1D90600A4();
  }

  else
  {
    v21 = 0;
    v20 = v26;
  }

  qword_1ECAB9800 = v21;

  sub_1D9176E0C();
  v22 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_lastMusicSyncDate;
  swift_beginAccess();
  (*(v7 + 40))(a2 + v22, v10, v6);
  swift_endAccess();
  v27 = v12;
  v28 = v11;
  v29 = v20;
  return a3(&v27);
}

void sub_1D9063DAC(void (*a1)(uint64_t *), uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  if (a3)
  {

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD0FE8);
    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Forcing the fetch for music subscription information.", v12, 2u);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    v18 = 0;
    LOBYTE(v19) = 0;
    a1(&v18);
  }

  else
  {
    v13 = *(a4 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag);

    v14 = [v13 doubleForKey_];
    v15 = [v14 asyncValuePromiseOnQueue_];

    v16 = swift_allocObject();
    *(v16 + 16) = sub_1D8D419F0;
    *(v16 + 24) = v8;
    v22 = sub_1D9066928;
    v23 = v16;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1D8D5960C;
    v21 = &block_descriptor_88;
    v17 = _Block_copy(&v18);

    [v15 addFinishBlock_];
    _Block_release(v17);
  }
}

void sub_1D9064008(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a1 && (v24 = 0, v25 = 1, MEMORY[0x1DA72A000](a1, &v24), v25 != 1))
  {
    v14 = v24;
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0FE8);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v14;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Got threshold value for Music Subscription Info sync from bag: %f", v18, 0xCu);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    a3(v14, 0);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1EDCD0FE8);
      v7 = a2;
      v8 = sub_1D917741C();
      v9 = sub_1D9178CFC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = sub_1D9176A5C();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Could not get Music Subscription Info threshold value from bag with error: %@", v10, 0xCu);
        sub_1D8D08A50(v11, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v11, -1, -1);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      v13 = a2;
      a3(a2, 1);
    }

    else
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v19 = sub_1D917744C();
      __swift_project_value_buffer(v19, qword_1EDCD0FE8);
      v20 = sub_1D917741C();
      v21 = sub_1D9178CFC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D8CEC000, v20, v21, "Could not get Music Subscription Info threshold value from bag.", v22, 2u);
        MEMORY[0x1DA72CB90](v22, -1, -1);
      }

      sub_1D9066720();
      a2 = swift_allocError();
      *v23 = 2;
      a3(a2, 1);
    }
  }
}

void sub_1D90643B0()
{
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  sub_1D9176E0C();
  v12 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_lastMusicSyncDate;
  swift_beginAccess();
  v13 = v2[2];
  v35 = v0;
  v33 = v13;
  v13(v5, &v0[v12], v1);
  sub_1D9176DBC();
  v14 = v2[1];
  v14(v5, v1);
  sub_1D8CFBDF0(&qword_1EDCD5940, MEMORY[0x1E6969530]);
  v15 = sub_1D917818C();
  v14(v8, v1);
  v14(v11, v1);
  if (v15)
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0FE8);
    v17 = v35;
    v18 = sub_1D917741C();
    v19 = sub_1D9178D1C();

    LODWORD(v34) = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315138;
      v33(v11, &v35[v12], v1);
      sub_1D8CFBDF0(&qword_1EDCD5930, MEMORY[0x1E6969530]);
      v22 = v18;
      v23 = sub_1D9179A4C();
      v25 = v24;
      v14(v11, v1);
      v26 = sub_1D8CFA924(v23, v25, &v36);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1D8CEC000, v22, v34, "Not syncing Music Subscription Info because not past threshold -- last synced at: %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    else
    {
    }

    sub_1D9066720();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD0FE8);
    v28 = sub_1D917741C();
    v29 = sub_1D9178D1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "Past threshold -- Syncing Music Subscription Info.", v30, 2u);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }
  }
}

void sub_1D906483C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(Strong + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag) URLForKey_];
    v7 = [v6 asyncValuePromiseOnQueue_];

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v5;
    aBlock[4] = sub_1D906691C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D90669A0;
    aBlock[3] = &block_descriptor_79;
    v9 = _Block_copy(aBlock);

    v10 = v5;

    [v7 addFinishBlock_];
    _Block_release(v9);
  }
}

uint64_t sub_1D90649BC(uint64_t a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t a5)
{
  v59 = a5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98C0, &qword_1D91ACCD8);
  v9 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v11 = (v58 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v58 - v14;
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v58 - v23;
  if (a1 && ((*(v17 + 56))(v15, 1, 1, v16, v22), sub_1D8CFBDF0(&qword_1ECAB2C90, MEMORY[0x1E6968FB0]), sub_1D91797EC(), (*(v17 + 48))(v15, 1, v16) != 1))
  {
    v58[1] = a4;
    v34 = *(v17 + 32);
    v34(v20, v15, v16);
    v34(v24, v20, v16);
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D917744C();
    __swift_project_value_buffer(v35, qword_1EDCD0FE8);
    v36 = sub_1D917741C();
    v37 = sub_1D9178D1C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      v61 = v58[0];
      *v38 = 136315138;
      swift_beginAccess();
      v39 = sub_1D9176ACC();
      v41 = a3;
      v42 = sub_1D8CFA924(v39, v40, &v61);

      *(v38 + 4) = v42;
      a3 = v41;
      _os_log_impl(&dword_1D8CEC000, v36, v37, "Got URL for Music Subscription Info from bag: %s", v38, 0xCu);
      v43 = v58[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v58[0]);
      MEMORY[0x1DA72CB90](v43, -1, -1);
      MEMORY[0x1DA72CB90](v38, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6128, &unk_1D9192130);
    v44 = *(sub_1D91766EC() - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    *(swift_allocObject() + 16) = xmmword_1D9189080;
    v47 = *(v59 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentKey);
    v48 = *(v59 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentKey + 8);
    v49 = *(v59 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentValue);
    v50 = *(v59 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentValue + 8);
    sub_1D91766BC();
    swift_beginAccess();
    sub_1D9176BDC();
    swift_endAccess();

    (*(v17 + 16))(v11, v24, v16);
    swift_storeEnumTagMultiPayload();
    a3(v11);
    sub_1D8D08A50(v11, &qword_1ECAB98C0, &qword_1D91ACCD8);
    return (*(v17 + 8))(v24, v16);
  }

  else
  {
    if (a2)
    {
      v25 = a2;
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v26 = sub_1D917744C();
      __swift_project_value_buffer(v26, qword_1EDCD0FE8);
      v27 = a2;
      v28 = sub_1D917741C();
      v29 = sub_1D9178CFC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = sub_1D9176A5C();
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&dword_1D8CEC000, v28, v29, "Could not get Music Subscription Info endpoint from bag with error: %@", v30, 0xCu);
        sub_1D8D08A50(v31, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v31, -1, -1);
        MEMORY[0x1DA72CB90](v30, -1, -1);
      }

      *v11 = a2;
      swift_storeEnumTagMultiPayload();
      v33 = a2;
      a3(v11);
    }

    else
    {
      if (qword_1EDCD0FE0 != -1)
      {
        swift_once();
      }

      v52 = sub_1D917744C();
      __swift_project_value_buffer(v52, qword_1EDCD0FE8);
      v53 = sub_1D917741C();
      v54 = sub_1D9178CFC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1D8CEC000, v53, v54, "Could not get Music Subscription Info endpoint from bag", v55, 2u);
        MEMORY[0x1DA72CB90](v55, -1, -1);
      }

      sub_1D9066720();
      v56 = swift_allocError();
      *v57 = 0;
      *v11 = v56;
      swift_storeEnumTagMultiPayload();
      a3(v11);
    }

    return sub_1D8D08A50(v11, &qword_1ECAB98C0, &qword_1D91ACCD8);
  }
}

uint64_t sub_1D9065128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v30 = sub_1D9176C2C();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D917653C();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  if (qword_1EDCD0ED8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1EDCD0EE0);
  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a1;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Preparing URL request for fetching Music Subscription Info.", v17, 2u);
    v18 = v17;
    a1 = v16;
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  v19 = v32;
  v20 = [objc_allocWithZone(IMURLRequestEncoder) initWithBag_];
  [v20 setPersonalizeRequests_];
  [v20 setUrlKnownToBeTrusted_];
  (*(v3 + 16))(v6, a1, v30);
  sub_1D91764EC();
  v21 = v31;
  (*(v7 + 16))(v9, v12, v31);
  v22 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  (*(v7 + 32))(v23 + v22, v9, v21);
  *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9830, &qword_1D91ACC48);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = v19;
  v28 = sub_1D9177A5C();
  result = (*(v7 + 8))(v12, v21);
  *v33 = v28;
  return result;
}

void sub_1D90654AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D91764BC();
  v10 = [*(a5 + OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore) ams_activeiTunesAccount];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[4] = sub_1D9066718;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D90669A0;
  v13[3] = &block_descriptor_22_2;
  v12 = _Block_copy(v13);

  [a3 prepareRequest:v9 account:v10 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D90655DC(void *a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9838, &qword_1D91ACC50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v33 - v8);
  if (a2)
  {
    v10 = a2;
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0FE8);
    v12 = a2;
    v13 = sub_1D917741C();
    v14 = sub_1D9178CFC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "Could not prepare URL request for Music Subs Info sync with error: %@", v15, 0xCu);
      sub_1D8D08A50(v16, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    *v9 = a2;
    swift_storeEnumTagMultiPayload();
    v19 = a2;
    a3(v9);
  }

  else if (a1)
  {
    v20 = qword_1EDCD0FE0;
    v21 = a1;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0FE8);
    v23 = sub_1D917741C();
    v24 = sub_1D9178D1C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Prepared request for Music Subscription Info sync.", v25, 2u);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }

    sub_1D91764DC();
    swift_storeEnumTagMultiPayload();
    a3(v9);
  }

  else
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD0FE8);
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "No request available after attempting to prepare request for Music Subs Info sync.", v29, 2u);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    sub_1D9066720();
    v30 = swift_allocError();
    *v31 = 1;
    *v9 = v30;
    swift_storeEnumTagMultiPayload();
    a3(v9);
  }

  return sub_1D8D08A50(v9, &unk_1ECAB9838, &qword_1D91ACC50);
}

void sub_1D90659E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_1EDCD0ED8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0EE0);
  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "Performing request to Music Subscription Info sync endpoint.", v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v10 = [objc_opt_self() defaultSession];
  v11 = sub_1D91764BC();
  v12 = [v10 dataTaskPromiseWithRequest_];

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D90668CC;
  *(v13 + 24) = v4;
  v15[4] = sub_1D906690C;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D90669A0;
  v15[3] = &block_descriptor_70_1;
  v14 = _Block_copy(v15);

  [v12 addFinishBlock_];
  _Block_release(v14);
}

void sub_1D9065C08(void *a1, id a2, void (*a3)(id, unint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    v5 = a2;
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0FE8);
    v7 = v4;
    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = sub_1D9176A5C();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Unable to fetch Music Subscription Info with error: %@", v10, 0xCu);
      sub_1D8D08A50(v11, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v13 = v4;
    a3(v4, 0, 1);

LABEL_7:

    return;
  }

  if (!a1)
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0FE8);
    v19 = sub_1D917741C();
    v20 = sub_1D9178CFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Unable to get data from url response from commerce endpoint.", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    sub_1D9066720();
    v4 = swift_allocError();
    *v22 = 4;
    a3(v4, 0, 1);
    goto LABEL_7;
  }

  v14 = [a1 data];
  v15 = sub_1D9176C8C();
  v17 = v16;

  sub_1D8D752C4(v15, v17);
  a3(v15, v17, 0);
  sub_1D8D7567C(v15, v17);

  sub_1D8D7567C(v15, v17);
}

uint64_t sub_1D9065F24()
{
  v1 = sub_1D917656C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1D917655C();
  sub_1D9061600();
  sub_1D917654C();
  if (v0)
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1EDCD0FE8);
    v5 = v0;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Unable to decode json data into MusicSubscriptionInfo class with error: %@.", v8, 0xCu);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }
}

id MusicSubscriptionInfoSyncUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicSubscriptionInfoSyncUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicSubscriptionInfoSyncUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9066280(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for MusicSubscriptionInfoSyncUtil());

  return sub_1D90662DC(a1, a2, v4);
}

id sub_1D90662DC(uint64_t a1, uint64_t a2, char *a3)
{
  v20 = a1;
  v21 = a2;
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1D9178E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_workQueue;
  v18[1] = sub_1D8CFD888();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8098], v8);
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBDF0(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  *&a3[v19] = sub_1D9178E4C();
  sub_1D9176CEC();
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_syncSession] = 0;
  v13 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentKey];
  *v13 = 0x746E656D676573;
  *(v13 + 1) = 0xE700000000000000;
  v14 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentValue];
  *v14 = 0x636973754DLL;
  *(v14 + 1) = 0xE500000000000000;
  v15 = v21;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag] = v20;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore] = v15;
  v16 = type metadata accessor for MusicSubscriptionInfoSyncUtil();
  v22.receiver = a3;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, sel_init);
}

void sub_1D9066668(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D917653C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1D90654AC(a1, a2, v8, v2 + v6, v7);
}

unint64_t sub_1D9066720()
{
  result = qword_1ECAB1460;
  if (!qword_1ECAB1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1460);
  }

  return result;
}

uint64_t sub_1D90667A4(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D9066840(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1D9063B50(a1, *(v1 + 16), *(v1 + 24));
}

void sub_1D906684C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1D917653C() - 8) + 80);

  sub_1D90659E4(a1, a2);
}

uint64_t sub_1D90668CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

unint64_t sub_1D9066944()
{
  result = qword_1ECAB98C8;
  if (!qword_1ECAB98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB98C8);
  }

  return result;
}

PodcastsFoundation::OAuthAuthenticationError_optional __swiftcall OAuthAuthenticationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OAuthAuthenticationError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000016;
    v7 = 0xD000000000000019;
    if (v1 != 8)
    {
      v7 = 0x5F64696C61766E69;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    if (v1 != 5)
    {
      v8 = 0xD000000000000013;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x645F737365636361;
    v3 = 0x5F64696C61766E69;
    v4 = 0x5F64696C61766E69;
    if (v1 != 3)
    {
      v4 = 0x655F726576726573;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x5F64696C61766E69;
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

uint64_t sub_1D9066B98()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECABA0();
  return sub_1D9179E1C();
}

uint64_t sub_1D9066BE8()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECABA0();
  return sub_1D9179E1C();
}

unint64_t sub_1D9066C38@<X0>(unint64_t *a1@<X8>)
{
  result = OAuthAuthenticationError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OAuthAuthenticationErrorResponse.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t OAuthAuthenticationErrorResponse.detailURI.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

size_t OAuthAuthenticationErrorResponse.responseItems.getter()
{
  v22 = sub_1D91766EC();
  v1 = *(v22 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = *v0;
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v21[1] = v0[1];
  v21[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6128, &unk_1D9192130);
  v13 = *(v1 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D9189080;
  sub_1D91766BC();

  if (v10)
  {
    sub_1D91766BC();
    v15 = sub_1D8D8EDF4(1uLL, 2, 1, v15);
    *(v15 + 16) = 2;
    v16 = v8;
    v17 = v22;
    (*(v2 + 32))(v15 + v14 + v13, v16, v22);
    if (!v12)
    {
      return v15;
    }
  }

  else
  {
    v17 = v22;
    if (!v12)
    {
      return v15;
    }
  }

  sub_1D91766BC();
  v19 = *(v15 + 16);
  v18 = *(v15 + 24);
  if (v19 >= v18 >> 1)
  {
    v15 = sub_1D8D8EDF4(v18 > 1, v19 + 1, 1, v15);
  }

  *(v15 + 16) = v19 + 1;
  (*(v2 + 32))(v15 + v14 + v19 * v13, v5, v17);
  return v15;
}

void __swiftcall OAuthAuthenticationErrorResponse.init(body:)(PodcastsFoundation::OAuthAuthenticationErrorResponse_optional *__return_ptr retstr, Swift::OpaquePointer body)
{
  if (!*(body._rawValue + 2))
  {
    goto LABEL_4;
  }

  v4 = sub_1D8D33C70(0x726F727265, 0xE500000000000000);
  if ((v5 & 1) == 0 || (v6 = (*(body._rawValue + 7) + 16 * v4), v7 = *v6, v8 = v6[1], , v9._countAndFlagsBits = v7, v9._object = v8, OAuthAuthenticationError.init(rawValue:)(v9), v20 == 10))
  {
LABEL_4:

    *&retstr->value.error = 0;
    retstr->value.description.value._countAndFlagsBits = 0;
    retstr->value.detailURI.value._countAndFlagsBits = 0;
    retstr->value.detailURI.value._object = 0;
    retstr->value.description.value._object = 1;
    return;
  }

  if (!*(body._rawValue + 2))
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  v10 = sub_1D8D33C70(0xD000000000000011, 0x80000001D91D46B0);
  if ((v11 & 1) == 0)
  {
    v14 = 0;
    v13 = 0;
    if (*(body._rawValue + 2))
    {
      goto LABEL_11;
    }

LABEL_13:
    v19 = 0;
    v18 = 0;
    goto LABEL_14;
  }

  v12 = (*(body._rawValue + 7) + 16 * v10);
  v14 = *v12;
  v13 = v12[1];

  if (!*(body._rawValue + 2))
  {
    goto LABEL_13;
  }

LABEL_11:
  v15 = sub_1D8D33C70(0x72755F726F727265, 0xE900000000000069);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = (*(body._rawValue + 7) + 16 * v15);
  v19 = *v17;
  v18 = v17[1];

LABEL_14:

  *&retstr->value.error = v20;
  retstr->value.description.value._countAndFlagsBits = v14;
  retstr->value.description.value._object = v13;
  retstr->value.detailURI.value._countAndFlagsBits = v19;
  retstr->value.detailURI.value._object = v18;
}

unint64_t sub_1D9067248()
{
  result = qword_1ECAB98D0;
  if (!qword_1ECAB98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB98D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OAuthAuthenticationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OAuthAuthenticationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *OAuthCancellationSession.__allocating_init(oAuthAdamID:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCD0998;
  v4[3] = a2;
  v4[4] = v5;
  v4[2] = a1;
  v6 = v5;

  MEMORY[0x1DA7298F0](0x6C6C65636E614320, 0xED00006E6F697461);
  v4[5] = a1;
  v4[6] = a2;
  return v4;
}

void *OAuthCancellationSession.init(oAuthAdamID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDCD0990 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v5 = qword_1EDCD0998;
  v3[3] = a2;
  v3[4] = v5;
  v3[2] = a1;
  v9 = a1;
  v6 = v5;

  MEMORY[0x1DA7298F0](0x6C6C65636E614320, 0xED00006E6F697461);
  v3[5] = v9;
  v3[6] = a2;
  return v3;
}

uint64_t OAuthCancellationSession.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t OAuthCancellationSession.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t OAuthSessionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D9067734()
{
  result = qword_1ECAB98D8;
  if (!qword_1ECAB98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB98D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OAuthSessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OAuthSessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D90678D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v12 = v11;
      result = v6(&v12);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v13 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D8E31798(0, *(v8 + 16) + 1, 1);
          v8 = v13;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1D8E31798((v9 > 1), v10 + 1, 1);
          v8 = v13;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1D9067A30(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x1DA72AA90](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1D917959C();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_1D91795DC();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t PurchaseControllerProtocol.productRecentlyPurchasedPublisher(adamId:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98E0, &qword_1D91AD150);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98E8, &qword_1D91AD158);
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98F0, &qword_1D91AD160);
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB98F8, &qword_1D91AD168);
  v20 = *(*(v19 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v25 = &v30 - v24;
  if ((a2 & 1) != 0 || !a1 || a1 == 1000000000000)
  {
    v34 = 0;
    sub_1D9177A0C();
    sub_1D8CF48EC(&qword_1ECAB9900, &qword_1ECAB98E0, &qword_1D91AD150);
    v26 = sub_1D9177B1C();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v28 = v21;
    v29 = v22;
    (*(v31 + 8))(v30, v23);
    *(swift_allocObject() + 16) = a1;
    sub_1D8CF48EC(&qword_1ECAB9908, &qword_1ECAB98E8, &qword_1D91AD158);
    sub_1D9177B9C();

    (*(v32 + 8))(v14, v11);
    sub_1D8CF48EC(&qword_1ECAB9910, &qword_1ECAB98F0, &qword_1D91AD160);
    sub_1D9177D6C();
    (*(v33 + 8))(v18, v15);
    sub_1D8CF48EC(&qword_1ECAB9918, &qword_1ECAB98F8, &qword_1D91AD168);
    v26 = sub_1D9177B1C();
    (*(v29 + 8))(v25, v28);
  }

  return v26;
}

uint64_t sub_1D9068050@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_1D8E40D20();
  v4 = sub_1D917927C();
  LOBYTE(v3) = sub_1D8EF0850(v4, v5, v3);

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1D90680C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + a4;
  v8 = *(a3 + a4 - 16);
  v7 = *(v6 - 8);
  swift_getAssociatedTypeWitness();
  v9 = sub_1D91791BC();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, a1, v11);
  v15 = *a2;
  return sub_1D8D34864(v13);
}

uint64_t sub_1D90681B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v8 = sub_1D91791BC();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

uint64_t (*sub_1D90682A4())()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D9068320@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  return sub_1D8D088B4(v1 + v3, a1, &unk_1ECAB9920, &unk_1D91AD170);
}

uint64_t (*sub_1D90683A4())()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D9068470()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D9177ACC();

  return v4;
}

uint64_t sub_1D9068530()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  return sub_1D9177ADC();
}

uint64_t sub_1D90685F0(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1D906867C()
{
  sub_1D90707F4();

  return swift_unknownObjectRetain();
}

id (*sub_1D90686A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  return sub_1D9068724;
}

id sub_1D9068724(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1D8D2424C();
  }

  return result;
}

uint64_t sub_1D9068758(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  v4 = *(v1 + v3);
  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = a1;
  os_unfair_lock_unlock((v4 + 20));
  return swift_endAccess();
}

id sub_1D90687E0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  return v1;
}

void *PurchaseController.__allocating_init(uiDelegate:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1D9070854(a1);
  v7 = *(v2 + 10);
  v6 = *(v2 + 11);
  swift_getAssociatedTypeWitness();
  v8 = sub_1D91791BC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v5;
}

void *PurchaseController.init(uiDelegate:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D9070854(a1);
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v8 = sub_1D91791BC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v5;
}

void sub_1D90689A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = 0;
    PurchaseController.getStateFromMediaAPI(condition:)(&v2);
  }
}

uint64_t PurchaseController.getStateFromMediaAPI(condition:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D9177E0C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v12;
  *(v14 + 32) = ObjectType;
  aBlock[4] = sub_1D9071318;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_69;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v7, v15);
  _Block_release(v15);
  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v11, v19);
}

id PurchaseController.__deallocating_deinit()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];

  v4 = *((v2 & v1) + 0x50);
  v5 = *((v2 & v1) + 0x58);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PurchaseController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D9068DEC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)];

  v6 = *((*v2 & *a1) + 0x70);
  v7 = *((v4 & v3) + 0x58);
  v8 = *((v4 & v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v9 = sub_1D91791BC();
  (*(*(v9 - 8) + 8))(&a1[v6], v9);
  sub_1D8D08A50(&a1[*((*v2 & *a1) + 0x78)], &unk_1ECAB9920, &unk_1D91AD170);
  v10 = *((*v2 & *a1) + 0x80);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  (*(*(v11 - 8) + 8))(&a1[v10], v11);
  v12 = *&a1[*((*v2 & *a1) + 0x88)];

  v13 = *&a1[*((*v2 & *a1) + 0x98)];
  swift_unknownObjectRelease();

  v14 = *&a1[*((*v2 & *a1) + 0xA8)];

  v15 = *&a1[*((*v2 & *a1) + 0xC0)];

  v16 = *&a1[*((*v2 & *a1) + 0xD0)];
}

uint64_t sub_1D90690E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a8;
  v49 = a7;
  v54 = a6;
  v52 = a3;
  v51 = a1;
  v12 = sub_1D9177E0C();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D9177E9C();
  v55 = *(v57 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D917744C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a5;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v48 = a9;
  v23 = __swift_project_value_buffer(v18, qword_1EDCD0690);
  swift_beginAccess();
  (*(v19 + 16))(v22, v23, v18);

  v24 = sub_1D917741C();
  v25 = sub_1D9178D1C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v46 = v17;
    v27 = a4;
    v28 = v26;
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    v30 = v51;
    *(v28 + 4) = sub_1D8CFA924(v51, a2, aBlock);
    _os_log_impl(&dword_1D8CEC000, v24, v25, "Scheduling purchase task for buyParams %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    v31 = v28;
    a4 = v27;
    v17 = v46;
    MEMORY[0x1DA72CB90](v31, -1, -1);

    (*(v19 + 8))(v22, v18);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
    v30 = v51;
  }

  v32 = v50;
  v33 = *(v32 + *((*MEMORY[0x1E69E7D40] & *v32) + 0x68));
  sub_1D8D088B4(v49, v62, &qword_1ECAB57F0, &unk_1D9190AA0);
  v34 = swift_allocObject();
  v35 = v62[1];
  *(v34 + 72) = v62[0];
  *(v34 + 16) = v32;
  *(v34 + 24) = v30;
  v36 = v52;
  *(v34 + 32) = a2;
  *(v34 + 40) = v36;
  v37 = v47;
  *(v34 + 48) = a4;
  *(v34 + 56) = v37;
  v38 = v53;
  *(v34 + 64) = v54;
  *(v34 + 88) = v35;
  v39 = v48;
  *(v34 + 104) = v38;
  *(v34 + 112) = v39;
  aBlock[4] = sub_1D9071328;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_9_2;
  v40 = _Block_copy(aBlock);

  v41 = v32;

  sub_1D9177E4C();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v42 = v56;
  v43 = v59;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v42, v40);
  _Block_release(v40);
  (*(v58 + 8))(v42, v43);
  (*(v55 + 8))(v17, v57);
}

uint64_t sub_1D90696BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a7;
  v41 = a8;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v34 = a9;
  v35 = a10;
  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v33 - v15;
  v19 = *((v18 & v17) + 0x58);
  swift_getAssociatedTypeWitness();
  v20 = sub_1D91791BC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v33 - v22;
  v24 = swift_allocBox();
  v26 = v25;
  (*(v19 + 24))(v12, v19);
  sub_1D90681B4(v23);
  (*(v19 + 40))(v23, v12, v19);
  (*(v13 + 16))(v16, v26, v12);
  v42 = a6;
  v27 = swift_allocObject();
  v28 = v34;
  v29 = v35;
  v27[2] = a1;
  v27[3] = v28;
  v27[4] = v29;
  v27[5] = v24;
  v30 = *(v19 + 64);
  v31 = a1;

  v30(v36, v37, v38, v39, &v42, v40, v41, sub_1D90718CC, v27, v12, v19);

  (*(v13 + 8))(v16, v12);
}

uint64_t sub_1D9069954(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0x68));
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  aBlock[4] = sub_1D9071930;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_80_2;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  v20 = a1;
  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v23);
}

uint64_t sub_1D9069C64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D9177E0C();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock[0]) = 0;
  PurchaseController.getStateFromMediaAPI(condition:)(aBlock);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v15 = sub_1D9178E1C();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  aBlock[4] = sub_1D8E8B4F0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_86_3;
  v17 = _Block_copy(aBlock);

  v18 = a4;

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v17);
  _Block_release(v17);

  (*(v21 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_1D9069F80()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1D9071364;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_15_4;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_1D9177E4C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_1D906A26C(void *a1)
{
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1EDCD0690);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_1D917741C();
  v9 = sub_1D9178D1C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Resetting all subs to not subscribed state", v10, 2u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_1D906A45C(MEMORY[0x1E69E7CC0]);

  *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x90)) = 1;
  return result;
}

uint64_t sub_1D906A45C(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  ObjectType = swift_getObjectType();
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1D917744C();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CD0];
  v28 = v10 + 16;
  v11 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v12 = [objc_opt_self() predicateWithValue_];
  [v11 setPredicate_];

  v13 = sub_1D90687E0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = *((v5 & v4) + 0x50);
  v15[3] = *((v5 & v4) + 0x58);
  v15[4] = v14;
  v15[5] = v26;
  v15[6] = v11;
  v15[7] = v10;
  v15[8] = ObjectType;
  aBlock[4] = sub_1D907181C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_58;
  v16 = _Block_copy(aBlock);

  v17 = v11;

  [v13 performBlockAndWaitWithSave_];
  _Block_release(v16);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_1EDCD0690);
  swift_beginAccess();
  v19 = v27;
  (*(v27 + 16))(v9, v18, v6);
  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D8CEC000, v20, v21, "Finished updating subscriptions.", v22, 2u);
    MEMORY[0x1DA72CB90](v22, -1, -1);
    v23 = v17;
  }

  else
  {
    v23 = v20;
    v20 = v17;
  }

  (*(v19 + 8))(v9, v6);
  swift_beginAccess();
  v24 = *(v10 + 16);

  return v24;
}

void sub_1D906A898(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    if (qword_1EDCD0ED8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D917744C();
    __swift_project_value_buffer(v2, qword_1EDCD0EE0);
    oslog = sub_1D917741C();
    v3 = sub_1D9178D1C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D8CEC000, oslog, v3, "No music subscription information fetched. Not saving in memory.", v4, 2u);
      MEMORY[0x1DA72CB90](v4, -1, -1);
    }
  }
}

uint64_t sub_1D906A98C()
{
  v0 = sub_1D917744C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDCD0690);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Getting channel subscription state from MAPI after updating all feeds.", v8, 2u);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  HIBYTE(v10) = 1;
  return PurchaseController.getStateFromMediaAPI(condition:)(&v10 + 7);
}

void sub_1D906AB50(void *a1)
{
  v1 = a1;
  sub_1D906A98C();
}

void sub_1D906AB98()
{
  v1 = v0;
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EDCD0690);
  swift_beginAccess();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v6;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "Got entitlementsDidChange notification", v14, 2u);
    v16 = v15;
    v6 = v23;
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  v17 = v3[1];
  v17(v9, v2);
  sub_1D9068758(1);
  v11(v6, v10, v2);
  v18 = sub_1D917741C();
  v19 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Set receivedEntitlementsNotification to true", v20, 2u);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  v17(v6, v2);
  v24 = 0;
  PurchaseController.getStateFromMediaAPI(condition:)(&v24);
  v21 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0));
  sub_1D8D6C624(1, sub_1D906A898, 0);
}

void sub_1D906AE78(void *a1)
{
  v1 = a1;
  sub_1D906AB98();
}

id PurchaseController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PurchaseController.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1D907136C();
}

void sub_1D906AF30(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1D907136C();
}

uint64_t PurchaseController.RefreshCondition.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D906B03C()
{
  sub_1D9179DBC();
  PurchaseController.RefreshCondition.hash(into:)();
  return sub_1D9179E1C();
}

void sub_1D906B078(void *a1, char a2, uint64_t a3)
{
  v64 = a3;
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = [objc_opt_self() ams_sharedAccountStore];
  v18 = [v17 ams_activeiTunesAccount];

  if (v18)
  {

    if (([objc_opt_self() acknowledgementNeededForPrivacyIdentifier_] & 1) == 0)
    {
      if (a2)
      {
        v19 = *(v5 + 80);
        v62 = *(v5 + 88);
        v63 = v19;
        v20 = swift_allocObject();
        v61 = v20;
        *(v20 + 16) = MEMORY[0x1E69E7CC0];
        v21 = v20 + 16;
        if (qword_1EDCD5AA8 != -1)
        {
          swift_once();
        }

        v22 = __swift_project_value_buffer(v6, qword_1EDCD0690);
        swift_beginAccess();
        v23 = v7;
        v24 = *(v7 + 16);
        v57 = v7 + 16;
        v58 = v22;
        v56 = v24;
        v24(v16, v22, v6);
        v25 = sub_1D917741C();
        v26 = sub_1D9178D1C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = v21;
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1D8CEC000, v25, v26, "Fetching all channels for personalization.", v28, 2u);
          v29 = v28;
          v21 = v27;
          v23 = v7;
          MEMORY[0x1DA72CB90](v29, -1, -1);
        }

        v60 = v21;

        v30 = *(v23 + 8);
        v59 = v23 + 8;
        v55 = v30;
        v30(v16, v6);
        v31 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
        v32 = [objc_opt_self() predicateWithValue_];
        [v31 setPredicate_];

        v33 = v64;
        v34 = sub_1D90687E0();
        v35 = swift_allocObject();
        v36 = v62;
        v35[2] = v63;
        v35[3] = v36;
        v35[4] = v31;
        v35[5] = v21;
        v35[6] = v33;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_1D907193C;
        *(v37 + 24) = v35;
        v69 = sub_1D8D24508;
        v70 = v37;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D8D24488;
        v68 = &block_descriptor_98_1;
        v38 = _Block_copy(&aBlock);
        v39 = v31;

        [v34 performBlockAndWait_];

        _Block_release(v38);
        LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

        if (v33)
        {
          __break(1u);
        }

        else if (*(*v60 + 16))
        {
          v56(v13, v58, v6);
          v40 = sub_1D917741C();
          v41 = sub_1D9178D1C();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_1D8CEC000, v40, v41, "Retrieving personalized polling interval.", v42, 2u);
            MEMORY[0x1DA72CB90](v42, -1, -1);
          }

          v55(v13, v6);
          v43 = [objc_opt_self() sharedInstance];
          v44 = [v43 personalizedChannelPollingInterval];

          v45 = [v44 asyncValuePromiseOnQueue_];
          v46 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v47 = swift_allocObject();
          v48 = v62;
          v47[2] = v63;
          v47[3] = v48;
          v47[4] = v61;
          v47[5] = v46;
          v69 = sub_1D907194C;
          v70 = v47;
          aBlock = MEMORY[0x1E69E9820];
          v66 = 1107296256;
          v67 = sub_1D8D5960C;
          v68 = &block_descriptor_105_1;
          v49 = _Block_copy(&aBlock);

          [v45 addFinishBlock_];
          _Block_release(v49);
        }

        else
        {
        }
      }

      else
      {
        sub_1D906B87C();
      }
    }
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v6, qword_1EDCD0690);
    swift_beginAccess();
    v51 = v7;
    (*(v7 + 16))(v10, v50, v6);
    v52 = sub_1D917741C();
    v53 = sub_1D9178D1C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1D8CEC000, v52, v53, "Resetting subscription cache since user is not signed in.", v54, 2u);
      MEMORY[0x1DA72CB90](v54, -1, -1);
    }

    (*(v51 + 8))(v10, v6);
    sub_1D9069F80();
  }
}

uint64_t sub_1D906B87C()
{
  v0 = sub_1D917744C();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v50 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - v5;
  v47 = &v39 - v5;
  v7 = type metadata accessor for MediaRequest.Params();
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D8D946F4(&unk_1F5461CE0);
  sub_1D8D08A50(&unk_1F5461D00, &unk_1ECAB9A50, &unk_1D9197130);
  v48 = sub_1D8D946F4(&unk_1F5461D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  v12 = sub_1D9176C2C();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v14 = MEMORY[0x1E69E7CC0];
  v46 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v45 = sub_1D8D94DF8(v14);
  v44 = sub_1D8D951E0(v14);
  v43 = sub_1D8D9503C(v14);
  v41 = sub_1D8D953C4(v14);
  v15 = sub_1D8D952D8(v14);
  v42 = sub_1D8D95394(v14);
  v16 = sub_1D8D957C4(v14);
  *(v11 + 41) = 263;
  v11[43] = 5;
  v11[152] = 1;
  v11[201] = 1;
  v17 = v8[30];
  v13(&v11[v17], 1, 1, v12);
  v18 = &v11[v8[31]];
  v19 = &v11[v8[33]];
  v20 = v8[35];
  v40 = v8[36];
  v21 = &v11[v20];
  v22 = &v11[v8[37]];
  *v11 = 1;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 10) = 83952388;
  v23 = v45;
  *(v11 + 6) = v46;
  *(v11 + 7) = v23;
  v24 = v43;
  *(v11 + 8) = v44;
  *(v11 + 9) = v14;
  v25 = v48;
  v26 = v49;
  *(v11 + 10) = v24;
  *(v11 + 11) = v26;
  *(v11 + 12) = v25;
  *(v11 + 13) = v41;
  *(v11 + 14) = v14;
  *(v11 + 15) = v15;
  *(v11 + 16) = v14;
  *(v11 + 17) = v14;
  *(v11 + 18) = v14;
  v11[152] = 1;
  *(v11 + 20) = 30;
  v11[168] = 0;
  *(v11 + 22) = v42;
  *(v11 + 23) = v16;
  *(v11 + 24) = 0;
  *(v11 + 100) = 257;
  v11[202] = 0;
  sub_1D9071830(v47, &v11[v17], &unk_1ECAB5910, &qword_1D9188C90);
  *v18 = 0;
  *(v18 + 1) = 0;
  v11[v8[32]] = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v11[v8[34]] = v14;
  *v21 = 0;
  *(v21 + 1) = 0;
  v11[v40] = 2;
  *v22 = 0;
  *(v22 + 1) = 0;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v27 = v52;
  v28 = __swift_project_value_buffer(v52, qword_1EDCD0690);
  swift_beginAccess();
  v30 = v50;
  v29 = v51;
  (*(v51 + 16))(v50, v28, v27);
  v31 = sub_1D917741C();
  v32 = sub_1D9178D1C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1D8CEC000, v31, v32, "Getting state from MediaAPI for user's entitlements.", v33, 2u);
    MEMORY[0x1DA72CB90](v33, -1, -1);
  }

  (*(v29 + 8))(v30, v27);
  v34 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v35 = swift_allocObject();
  v36 = v53;
  v35[2] = v53;
  v37 = v36;
  sub_1D904AD58(v11, 0, sub_1D9071898, v35);

  return sub_1D8D90BEC(v11);
}

char *sub_1D906BD7C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D90687E0();
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v4 = sub_1D917908C();

  if (v4 >> 62)
  {
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E31798(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = v16;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA72AA90](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    [v9 lastPersonalizedRequestDate];
    v12 = v11;

    v16 = v8;
    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D8E31798((v13 > 1), v14 + 1, 1);
    }

    ++v7;
    *(v8 + 16) = v14 + 1;
    *(v8 + 8 * v14 + 32) = v12;
  }

  while (v5 != v7);

LABEL_14:
  v15 = *a2;
  *a2 = v8;
}

uint64_t sub_1D906BF40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v6 = sub_1D917744C();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v18 = sub_1D9176E3C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  if (a1)
  {
    v29 = a1;
    sub_1D9176E2C();
    v82 = v29;
    [v29 doubleValue];
    sub_1D9176D7C();
    v86 = v19[1];
    v87 = v19 + 1;
    v86(v25, v18);
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v30 = v89;
    v31 = __swift_project_value_buffer(v89, qword_1EDCD0690);
    swift_beginAccess();
    v32 = v88;
    v33 = *(v88 + 16);
    v79 = v88 + 16;
    v80 = v31;
    v78 = v33;
    v33(v17, v31, v30);
    v34 = v19[2];
    v83 = v28;
    v34(v22, v28, v18);
    v35 = sub_1D917741C();
    v36 = sub_1D9178D1C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v18;
      v39 = swift_slowAlloc();
      v90 = v39;
      *v37 = 136315138;
      sub_1D8CFBE38(&qword_1EDCD5930, MEMORY[0x1E6969530]);
      v40 = sub_1D9179A4C();
      v42 = v41;
      v43 = v22;
      v44 = v38;
      v86(v43, v38);
      v45 = sub_1D8CFA924(v40, v42, &v90);
      v30 = v89;

      *(v37 + 4) = v45;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Updating channels if any were updated before %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1DA72CB90](v39, -1, -1);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    else
    {

      v56 = v22;
      v44 = v18;
      v86(v56, v18);
    }

    v57 = *(v32 + 8);
    v57(v17, v30);
    v58 = v85;
    v59 = swift_beginAccess();
    v60 = *(v58 + 16);
    MEMORY[0x1EEE9AC00](v59);
    v61 = v83;
    *(&v77 - 2) = v83;

    v62 = *(sub_1D90678D8(sub_1D9071958, (&v77 - 4), v60) + 16);

    if (v62)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v64 = Strong;
        sub_1D906B87C();
      }

      v65 = v44;
    }

    else
    {
      v66 = v81;
      v78(v81, v80, v30);

      v67 = sub_1D917741C();
      v68 = sub_1D9178D1C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        swift_beginAccess();
        *(v69 + 4) = *(*(v58 + 16) + 16);

        _os_log_impl(&dword_1D8CEC000, v67, v68, "Defer MAPI update, all %ld channels were updated recently", v69, 0xCu);
        MEMORY[0x1DA72CB90](v69, -1, -1);
      }

      else
      {
      }

      v65 = v44;

      v57(v66, v30);
    }

    return (v86)(v61, v65);
  }

  else if (a2)
  {
    v46 = sub_1D9176A5C();
    v48 = v88;
    v47 = v89;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v47, qword_1EDCD0690);
    swift_beginAccess();
    (*(v48 + 16))(v9, v49, v47);
    v50 = v46;
    v51 = sub_1D917741C();
    v52 = sub_1D9178CFC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_1D8CEC000, v51, v52, "Error getting subs TTL from bag: %@", v53, 0xCu);
      sub_1D8D08A50(v54, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v54, -1, -1);
      MEMORY[0x1DA72CB90](v53, -1, -1);
    }

    else
    {
      v55 = v51;
      v51 = v50;
    }

    return (*(v48 + 8))(v9, v47);
  }

  else
  {
    v71 = v88;
    v70 = v89;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v72 = __swift_project_value_buffer(v70, qword_1EDCD0690);
    swift_beginAccess();
    (*(v71 + 16))(v12, v72, v70);
    v73 = sub_1D917741C();
    v74 = sub_1D9178CFC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1D8CEC000, v73, v74, "Error getting subs TTL from bag", v75, 2u);
      MEMORY[0x1DA72CB90](v75, -1, -1);
    }

    return (*(v71 + 8))(v12, v70);
  }
}

BOOL sub_1D906C7F0(double *a1)
{
  v1 = *a1;
  sub_1D9176CCC();
  return v1 < v2;
}

uint64_t sub_1D906C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a6 + *((*MEMORY[0x1E69E7D40] & *a6) + 0x68));
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a1;
  aBlock[4] = sub_1D90718A0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_71_1;
  v19 = _Block_copy(aBlock);
  v20 = a5;

  v21 = a6;
  sub_1D9177E4C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_1D906CB3C(uint64_t a1, void *a2, unint64_t a3)
{
  v199 = a2;
  v196 = sub_1D9176E3C();
  v5 = *(v196 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v8 = v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v195 = v186 - v10;
  v11 = sub_1D917744C();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v189 = v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v211 = v186 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v186 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v186 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v186 - v24;
  if (a1)
  {
    v215[2] = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if (!swift_dynamicCast() || v213 != 1)
    {
      v36 = a1;
      if (qword_1EDCD5AA8 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v11, qword_1EDCD0690);
      swift_beginAccess();
      (*(v12 + 16))(v25, v37, v11);
      v38 = a1;
      v39 = sub_1D917741C();
      v40 = v11;
      v41 = sub_1D9178CFC();

      if (os_log_type_enabled(v39, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v213 = v43;
        *v42 = 136315138;
        swift_getErrorValue();
        v44 = sub_1D9179D2C();
        v46 = sub_1D8CFA924(v44, v45, &v213);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_1D8CEC000, v39, v41, "Getting channels failed with error %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1DA72CB90](v43, -1, -1);
        MEMORY[0x1DA72CB90](v42, -1, -1);
      }

      else
      {
      }

      return (*(v12 + 8))(v25, v40);
    }
  }

  v197 = v5;
  sub_1D9068758(0);
  if (qword_1EDCD5AA8 != -1)
  {
    goto LABEL_35;
  }

LABEL_5:
  v27 = __swift_project_value_buffer(v11, qword_1EDCD0690);
  swift_beginAccess();
  v28 = *(v12 + 16);
  v192 = v27;
  v191 = v12 + 16;
  v190 = v28;
  v28(v22, v27, v11);
  v29 = sub_1D917741C();
  v30 = sub_1D9178D1C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D8CEC000, v29, v30, "Set receivedEntitlementsNotification to false", v31, 2u);
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  v33 = *(v12 + 8);
  v32 = v12 + 8;
  v198 = v11;
  v193 = v33;
  v33(v22, v11);
  v34 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v35 = sub_1D8FBEEFC(a3);
    if (v35)
    {
      v22 = v35;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v210 = v8;
  v194 = v32;
  if (v22 >> 62)
  {
    v51 = sub_1D917935C();

    if (!(v51 | a1))
    {
LABEL_54:

      v73 = v198;
      v190(v19, v192, v198);
      v74 = sub_1D917741C();
      v75 = sub_1D9178CFC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_1D8CEC000, v74, v75, "Failed to cast to channel objects", v76, 2u);
        MEMORY[0x1DA72CB90](v76, -1, -1);
      }

      v77 = v19;
      v78 = v73;
      v79 = &v216;
      return (*(v79 - 32))(v77, v78);
    }

    v213 = v34;
    a3 = sub_1D917935C();
    if (!a3)
    {
LABEL_38:
      v49 = MEMORY[0x1E69E7CC0];
      goto LABEL_39;
    }
  }

  else
  {
    v8 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!(v8 | a1))
    {
      goto LABEL_54;
    }

    v213 = v34;
    a3 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      goto LABEL_38;
    }
  }

  v19 = 0;
  v12 = v22 & 0xFFFFFFFFFFFFFF8;
  v11 = &OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes;
  while ((v22 & 0xC000000000000001) == 0)
  {
    if (v19 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_5;
    }

    v47 = *(v22 + 8 * v19 + 32);
    v8 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_30;
    }

LABEL_25:
    v48 = *(*&v47[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
    if (v48 == 2 || (v48 & 1) == 0)
    {
    }

    else
    {
      sub_1D917959C();
      a1 = *(v213 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    ++v19;
    if (v8 == a3)
    {
      goto LABEL_31;
    }
  }

  v47 = MEMORY[0x1DA72AA90](v19, v22);
  v8 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v49 = v213;
LABEL_39:

  v52 = v198;
  v53 = v211;
  if (v49 < 0 || (v49 & 0x4000000000000000) != 0)
  {
    goto LABEL_161;
  }

  v54 = *(v49 + 16);
  while (2)
  {
    v55 = MEMORY[0x1E69E7CC0];
    if (!v54)
    {
LABEL_52:
      v64 = sub_1D8FC0F28(v55);

      v190(v53, v192, v52);

      v65 = v53;
      v66 = sub_1D917741C();
      v53 = sub_1D9178D1C();

      v67 = os_log_type_enabled(v66, v53);
      v188 = v64;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v213 = v69;
        *v68 = 141558275;
        *(v68 + 4) = 1752392040;
        *(v68 + 12) = 2081;
        v215[0] = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
        sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90);
        sub_1D8D447DC();
        v70 = sub_1D917851C();
        v72 = sub_1D8CFA924(v70, v71, &v213);

        *(v68 + 14) = v72;
        _os_log_impl(&dword_1D8CEC000, v66, v53, "Got purchased channels %{private,mask.hash}s from MAPI", v68, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x1DA72CB90](v69, -1, -1);
        MEMORY[0x1DA72CB90](v68, -1, -1);
      }

      v193(v65, v52);
      v80 = v210;
      sub_1D9176E2C();
      v81 = v195;
      sub_1D9176D7C();
      v82 = *(v197 + 8);
      v197 += 8;
      v186[2] = v82;
      v83 = v82(v80, v196);
      MEMORY[0x1EEE9AC00](v83);
      v84 = v199;
      v186[-2] = v81;
      v186[-1] = v84;

      v85 = sub_1D9067A30(sub_1D90718AC, &v186[-4], v49);
      v186[1] = 0;
      v52 = v85;
      v86 = v85 >> 62;
      if (v85 >> 62)
      {
        v87 = sub_1D917935C();
      }

      else
      {
        v87 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v88 = MEMORY[0x1E69E7CC0];
      v206 = v52;
      if (v87)
      {
        v213 = MEMORY[0x1E69E7CC0];
        sub_1D8D41BE0(0, v87 & ~(v87 >> 63), 0);
        if (v87 < 0)
        {
          goto LABEL_164;
        }

        v89 = v52;
        v90 = 0;
        v88 = v213;
        v91 = v89 & 0xC000000000000001;
        do
        {
          if (v91)
          {
            v92 = MEMORY[0x1DA72AA90](v90, v206);
          }

          else
          {
            v92 = *(v206 + 8 * v90 + 32);
          }

          v93 = v92;
          v95 = *&v92[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v94 = *&v92[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

          v213 = v88;
          v97 = *(v88 + 16);
          v96 = *(v88 + 24);
          v53 = (v97 + 1);
          if (v97 >= v96 >> 1)
          {
            sub_1D8D41BE0((v96 > 1), v97 + 1, 1);
            v88 = v213;
          }

          ++v90;
          *(v88 + 16) = v53;
          v98 = v88 + 16 * v97;
          *(v98 + 32) = v95;
          *(v98 + 40) = v94;
        }

        while (v87 != v90);
        v52 = v206;
      }

      v187 = sub_1D8FC0F28(v88);

      if (v86)
      {
        v99 = sub_1D917935C();
      }

      else
      {
        v99 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v200 = v49;
      if (!v99)
      {
        v101 = MEMORY[0x1E69E7CC8];
LABEL_119:

        v147 = 1 << *(v101 + 32);
        v148 = -1;
        if (v147 < 64)
        {
          v148 = ~(-1 << v147);
        }

        v149 = v148 & *(v101 + 64);
        v150 = (v147 + 63) >> 6;

        v151 = 0;
        v152 = MEMORY[0x1E69E7CC0];
        while (v149)
        {
LABEL_128:
          v154 = (v151 << 9) | (8 * __clz(__rbit64(v149)));
          v53 = *(*(v101 + 56) + v154);
          v155 = v53[2];
          v49 = *(v152 + 2);
          v52 = v49 + v155;
          if (__OFADD__(v49, v155))
          {
            goto LABEL_156;
          }

          v156 = *(*(v101 + 56) + v154);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v52 > *(v152 + 3) >> 1)
          {
            if (v49 <= v52)
            {
              v158 = v49 + v155;
            }

            else
            {
              v158 = v49;
            }

            v152 = sub_1D8D4241C(isUniquelyReferenced_nonNull_native, v158, 1, v152);
          }

          v49 = v200;
          v149 &= v149 - 1;
          if (v53[2])
          {
            if ((*(v152 + 3) >> 1) - *(v152 + 2) < v155)
            {
              goto LABEL_159;
            }

            swift_arrayInitWithCopy();

            if (v155)
            {
              v159 = *(v152 + 2);
              v104 = __OFADD__(v159, v155);
              v160 = v159 + v155;
              if (v104)
              {
                goto LABEL_160;
              }

              *(v152 + 2) = v160;
            }
          }

          else
          {

            if (v155)
            {
              goto LABEL_157;
            }
          }
        }

        while (1)
        {
          v153 = v151 + 1;
          if (__OFADD__(v151, 1))
          {
            goto LABEL_152;
          }

          if (v153 >= v150)
          {

            v161 = sub_1D8FC0F28(v152);

            v162 = MEMORY[0x1E69E7D40];
            v163 = v188;
            if ((*(v199 + *((*MEMORY[0x1E69E7D40] & *v199) + 0x90)) & 1) == 0)
            {
              v164 = *((*MEMORY[0x1E69E7D40] & *v199) + 0x88);
              v165 = v199;
              v166 = *(v199 + v164);
              *(v199 + v164) = v188;

              *(v165 + *((*v162 & *v165) + 0x90)) = 1;
            }

            v167 = v189;
            v168 = v198;
            v190(v189, v192, v198);
            v169 = v187;

            v170 = sub_1D917741C();
            v171 = sub_1D9178D1C();

            if (os_log_type_enabled(v170, v171))
            {
              v172 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              v215[0] = v173;
              *v172 = 141558787;
              *(v172 + 4) = 1752392040;
              *(v172 + 12) = 2081;
              v212 = v169;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
              sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90);
              sub_1D8D447DC();
              v174 = sub_1D917851C();
              v176 = sub_1D8CFA924(v174, v175, v215);

              *(v172 + 14) = v176;
              v49 = v200;
              *(v172 + 22) = 2160;
              *(v172 + 24) = 1752392040;
              *(v172 + 32) = 2081;
              v212 = v161;
              v163 = v188;
              v169 = v187;
              v177 = sub_1D917851C();
              v179 = sub_1D8CFA924(v177, v178, v215);

              *(v172 + 34) = v179;
              _os_log_impl(&dword_1D8CEC000, v170, v171, "Got recently purchased channels %{private,mask.hash}s and purchased shows %{private,mask.hash}s from MAPI", v172, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x1DA72CB90](v173, -1, -1);
              v180 = v172;
              v162 = MEMORY[0x1E69E7D40];
              MEMORY[0x1DA72CB90](v180, -1, -1);

              v181 = v189;
              v182 = v198;
            }

            else
            {

              v181 = v167;
              v182 = v168;
            }

            v193(v181, v182);
            sub_1D8FB13E8(v161, v169);
            sub_1D9068530();
            v183 = sub_1D906A45C(v49);
            if ([objc_opt_self() isRunningOnInternalOS])
            {
              v184 = *(v199 + *((*v162 & *v199) + 0xC8));
              v185 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
              LOBYTE(v184) = [v184 BOOLForKey_];

              if (v184)
              {
                v183 = v163;
              }
            }

            PurchaseController.displaySubscriptionConfirmationSheetIfNeeded(for:channelObjects:)(v183, v49);

            v77 = v195;
            v78 = v196;
            v79 = &v214;
            return (*(v79 - 32))(v77, v78);
          }

          v149 = *(v101 + 64 + 8 * v153);
          ++v151;
          if (v149)
          {
            v151 = v153;
            goto LABEL_128;
          }
        }
      }

      v100 = 0;
      v204 = v52 & 0xC000000000000001;
      v203 = v52 & 0xFFFFFFFFFFFFFF8;
      v210 = MEMORY[0x1E69E7CC8];
      v202 = v52 + 32;
      v201 = v99;
      while (1)
      {
        if (v204)
        {
          v140 = v100;
          v103 = MEMORY[0x1DA72AA90](v100, v52);
          v104 = __OFADD__(v140, 1);
          v105 = v140 + 1;
          if (v104)
          {
            goto LABEL_153;
          }
        }

        else
        {
          if (v100 >= *(v203 + 16))
          {
            goto LABEL_154;
          }

          v102 = v100;
          v103 = *(v202 + 8 * v100);
          v104 = __OFADD__(v102, 1);
          v105 = v102 + 1;
          if (v104)
          {
            goto LABEL_153;
          }
        }

        v106 = *&v103[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
        v208 = v105;
        v209 = v106;
        v107 = *&v103[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
        v207 = v103;
        v108 = *&v103[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships];
        if (v108)
        {
          v109 = *(v108 + 16);
          if (v109)
          {
            break;
          }
        }

        v122 = v210;

        v123 = sub_1D8D33C70(v209, v107);
        if (v124)
        {
          v125 = v123;
          v126 = swift_isUniquelyReferenced_nonNull_native();
          v215[0] = v122;
          v101 = v122;
          if (!v126)
          {
            sub_1D8F84DF0();
            v101 = v215[0];
          }

          v127 = *(*(v101 + 48) + 16 * v125 + 8);

          v128 = *(*(v101 + 56) + 8 * v125);

          sub_1D8DA2AF4(v125, v101);

          goto LABEL_108;
        }

        v101 = v122;
LABEL_75:
        v210 = v101;
        v100 = v208;
        if (v208 == v201)
        {
          goto LABEL_119;
        }
      }

      v205 = v107;
      v110 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
      swift_beginAccess();
      v111 = *(v109 + v110);
      if (v111 >> 62)
      {
        if (v111 < 0)
        {
          v141 = *(v109 + v110);
        }

        v112 = sub_1D917935C();
      }

      else
      {
        v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v112)
      {
        v49 = 0;
        v211 = (v111 & 0xC000000000000001);
        v52 = v111 & 0xFFFFFFFFFFFFFF8;
        v113 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v211)
          {
            v114 = MEMORY[0x1DA72AA90](v49, v111);
          }

          else
          {
            if (v49 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_151;
            }

            v114 = *(v111 + 8 * v49 + 32);
          }

          v53 = v114;
          v115 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          v116 = v112;
          v118 = *(v114 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);
          v117 = *(v114 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_1D8D4241C(0, *(v113 + 2) + 1, 1, v113);
          }

          v120 = *(v113 + 2);
          v119 = *(v113 + 3);
          v53 = (v120 + 1);
          if (v120 >= v119 >> 1)
          {
            v113 = sub_1D8D4241C((v119 > 1), v120 + 1, 1, v113);
          }

          *(v113 + 2) = v53;
          v121 = &v113[16 * v120];
          *(v121 + 4) = v118;
          *(v121 + 5) = v117;
          ++v49;
          v112 = v116;
          if (v115 == v116)
          {
            goto LABEL_101;
          }
        }

        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        v54 = sub_1D917935C();
        continue;
      }

      v113 = MEMORY[0x1E69E7CC0];
LABEL_101:

      v129 = v210;
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v215[0] = v129;
      v131 = sub_1D8D33C70(v209, v205);
      v133 = *(v129 + 16);
      v134 = (v132 & 1) == 0;
      v104 = __OFADD__(v133, v134);
      v135 = v133 + v134;
      v49 = v200;
      if (v104)
      {
        goto LABEL_155;
      }

      v136 = v132;
      if (*(v129 + 24) >= v135)
      {
        v52 = v206;
        if ((v130 & 1) == 0)
        {
          v142 = v131;
          sub_1D8F84DF0();
          v131 = v142;
          v52 = v206;
          v101 = v215[0];
          if (v136)
          {
LABEL_107:
            v138 = *(v101 + 56);
            v139 = *(v138 + 8 * v131);
            *(v138 + 8 * v131) = v113;

LABEL_108:

            goto LABEL_75;
          }

          goto LABEL_116;
        }
      }

      else
      {
        sub_1D9008704(v135, v130);
        v131 = sub_1D8D33C70(v209, v205);
        v52 = v206;
        if ((v136 & 1) != (v137 & 1))
        {
          goto LABEL_165;
        }
      }

      v101 = v215[0];
      if (v136)
      {
        goto LABEL_107;
      }

LABEL_116:
      *(v101 + 8 * (v131 >> 6) + 64) |= 1 << v131;
      v143 = (*(v101 + 48) + 16 * v131);
      v144 = v205;
      *v143 = v209;
      v143[1] = v144;
      *(*(v101 + 56) + 8 * v131) = v113;

      v145 = *(v101 + 16);
      v104 = __OFADD__(v145, 1);
      v146 = v145 + 1;
      if (v104)
      {
        goto LABEL_158;
      }

      *(v101 + 16) = v146;

      goto LABEL_75;
    }

    break;
  }

  v213 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v54 & ~(v54 >> 63), 0);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v55 = v213;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x1DA72AA90](v56, v49);
      }

      else
      {
        v57 = *(v49 + 8 * v56 + 32);
      }

      v58 = v57;
      v59 = *&v57[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
      v60 = *&v57[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

      v213 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D8D41BE0((v61 > 1), v62 + 1, 1);
        v55 = v213;
      }

      ++v56;
      *(v55 + 16) = v62 + 1;
      v63 = v55 + 16 * v62;
      *(v63 + 32) = v59;
      *(v63 + 40) = v60;
    }

    while (v54 != v56);
    v52 = v198;
    v53 = v211;
    goto LABEL_52;
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}