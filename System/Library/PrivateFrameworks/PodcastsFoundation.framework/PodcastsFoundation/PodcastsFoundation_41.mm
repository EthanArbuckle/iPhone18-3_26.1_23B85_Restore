void sub_1D90D485C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setUuid_];
}

uint64_t sub_1D90D48CC(unint64_t a1, void *a2)
{
  v28 = MEMORY[0x1E69E7CD0];

  v5 = 0;
  v6 = sub_1D90DCCF0(v4, a2, &v28);

  if (v6 >> 62)
  {
    goto LABEL_36;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v7)
  {

    a2 = *(MEMORY[0x1E69E7CC0] + 16);
    if (a2)
    {
LABEL_15:
      a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AA0, &unk_1D91B63B0);
      v14 = sub_1D91797AC();
LABEL_18:
      v28 = v14;

      sub_1D90DC230(v15, 1, &v28);
      if (v5)
      {
        goto LABEL_38;
      }

      v5 = v28;
      v16 = MEMORY[0x1E69E7CC0];
      v28 = MEMORY[0x1E69E7CC0];
      v17 = *(a1 + 16);
      if (!v17)
      {
LABEL_32:

        return v16;
      }

      a1 += 32;
      v18 = 0;
      while (1)
      {
        v6 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v5[2] && (a2 = v5, v19 = sub_1D8D1AC44(*(a1 + 8 * v18)), (v20 & 1) != 0))
        {
          v21 = *(v5[7] + 8 * v19);
          MEMORY[0x1DA729B90]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D917863C();
          }

          a2 = &v28;
          sub_1D917869C();
          v16 = v28;
          if (v6 == v17)
          {
            goto LABEL_32;
          }

          ++v18;
          if (v6 >= v17)
          {
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
LABEL_22:
          ++v18;
          if (v6 == v17)
          {
            goto LABEL_32;
          }

          if (v18 >= v17)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_17:
    v14 = MEMORY[0x1E69E7CC8];
    goto LABEL_18;
  }

  v26 = a2;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8E317FC(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v24 = v5;
    v25 = a1;
    v8 = 0;
    v9 = v28;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA72AA90](v8, v6);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          v7 = sub_1D917935C();
          goto LABEL_3;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      swift_getAtKeyPath();
      v5 = v27;
      v28 = v9;
      a1 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (a1 >= v12 >> 1)
      {
        sub_1D8E317FC((v12 > 1), a1 + 1, 1);
        a2 = v26;
        v9 = v28;
      }

      ++v8;
      *(v9 + 16) = a1 + 1;
      v13 = v9 + 16 * a1;
      *(v13 + 32) = v27;
      *(v13 + 40) = v11;
    }

    while (v7 != v8);

    v5 = v24;
    a1 = v25;
    a2 = *(v9 + 16);
    if (a2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D90D4C10(uint64_t a1)
{
  *&v29 = MEMORY[0x1E69E7CD0];

  v2 = 0;
  v3 = sub_1D90DCE84(v1);

  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v27 = v2;
  if (!v4)
  {

    v6 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_17;
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A98, &unk_1D91A6B50);
    v12 = sub_1D91797AC();
LABEL_18:
    v13 = MEMORY[0x1E69E7CC0];
    *&v29 = v12;
    sub_1D90DC5A4(v6, 1, &v29);
    if (v27)
    {
      goto LABEL_38;
    }

    v2 = v29;
    *&v29 = v13;
    v14 = *(a1 + 16);
    if (!v14)
    {
      goto LABEL_31;
    }

    v15 = 0;
    v3 = a1 + 40;
LABEL_21:
    v16 = (v3 + 16 * v15);
    v17 = v15;
    while (1)
    {
      if (v17 >= v14)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_33;
      }

      if (*(v2 + 16))
      {
        v18 = *(v16 - 1);
        v19 = *v16;

        v20 = sub_1D8F07098(v18, v19);
        if (v21)
        {
          v22 = *(*(v2 + 56) + 8 * v20);

          MEMORY[0x1DA729B90](v23);
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D917863C();
          }

          sub_1D917869C();
          v13 = v29;
          if (v15 == v14)
          {
LABEL_31:

            return v13;
          }

          goto LABEL_21;
        }
      }

      ++v17;
      v16 += 2;
      if (v15 == v14)
      {
        goto LABEL_31;
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1D8E3181C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v30;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA72AA90](v5, v3);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v4 = sub_1D917935C();
          goto LABEL_3;
        }

        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      swift_getAtKeyPath();
      v9 = v29;
      v30 = v6;
      v2 = v6[2];
      v10 = v6[3];
      if (v2 >= v10 >> 1)
      {
        v26 = v29;
        sub_1D8E3181C((v10 > 1), v2 + 1, 1);
        v9 = v26;
        v6 = v30;
      }

      ++v5;
      v6[2] = v2 + 1;
      v11 = &v6[3 * v2];
      *(v11 + 2) = v9;
      v11[6] = v8;
      if (v4 == v5)
      {

        if (v6[2])
        {
          goto LABEL_15;
        }

LABEL_17:
        v12 = MEMORY[0x1E69E7CC8];
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D90D4F70(unint64_t a1, void *a2)
{
  v28 = MEMORY[0x1E69E7CD0];

  v5 = 0;
  v6 = sub_1D90DD008(v4, a2, &v28);

  if (v6 >> 62)
  {
    goto LABEL_36;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v7)
  {

    a2 = *(MEMORY[0x1E69E7CC0] + 16);
    if (a2)
    {
LABEL_15:
      a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A90, &qword_1D9199708);
      v14 = sub_1D91797AC();
LABEL_18:
      v28 = v14;

      sub_1D90DC950(v15, 1, &v28);
      if (v5)
      {
        goto LABEL_38;
      }

      v5 = v28;
      v16 = MEMORY[0x1E69E7CC0];
      v28 = MEMORY[0x1E69E7CC0];
      v17 = *(a1 + 16);
      if (!v17)
      {
LABEL_32:

        return v16;
      }

      a1 += 32;
      v18 = 0;
      while (1)
      {
        v6 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v5[2] && (a2 = v5, v19 = sub_1D8D490F4(*(a1 + 8 * v18)), (v20 & 1) != 0))
        {
          v21 = *(v5[7] + 8 * v19);
          MEMORY[0x1DA729B90]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D917863C();
          }

          a2 = &v28;
          sub_1D917869C();
          v16 = v28;
          if (v6 == v17)
          {
            goto LABEL_32;
          }

          ++v18;
          if (v6 >= v17)
          {
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
LABEL_22:
          ++v18;
          if (v6 == v17)
          {
            goto LABEL_32;
          }

          if (v18 >= v17)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_17:
    v14 = MEMORY[0x1E69E7CC8];
    goto LABEL_18;
  }

  v26 = a2;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8E3183C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v24 = v5;
    v25 = a1;
    v8 = 0;
    v9 = v28;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA72AA90](v8, v6);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          v7 = sub_1D917935C();
          goto LABEL_3;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      swift_getAtKeyPath();
      v5 = v27;
      v28 = v9;
      a1 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (a1 >= v12 >> 1)
      {
        sub_1D8E3183C((v12 > 1), a1 + 1, 1);
        a2 = v26;
        v9 = v28;
      }

      ++v8;
      *(v9 + 16) = a1 + 1;
      v13 = v9 + 16 * a1;
      *(v13 + 32) = v27;
      *(v13 + 40) = v11;
    }

    while (v7 != v8);

    v5 = v24;
    a1 = v25;
    a2 = *(v9 + 16);
    if (a2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

size_t sub_1D90D52B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D915C360(v5);
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
    v9 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D90DDFAC(v11, a2, type metadata accessor for StoreFeedUpdater.Update);
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

uint64_t sub_1D90D53E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D915C740(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_1D90D5478@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 persistentID];
  *a2 = result;
  return result;
}

void sub_1D90D54AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 176);
  v62 = *(a1 + 160);
  v63 = v7;
  v64 = *(a1 + 192);
  v65 = *(a1 + 208);
  v8 = *(a1 + 112);
  v58 = *(a1 + 96);
  v59 = v8;
  v9 = *(a1 + 144);
  v60 = *(a1 + 128);
  v61 = v9;
  v10 = *(a1 + 48);
  v54 = *(a1 + 32);
  v55 = v10;
  v11 = *(a1 + 80);
  v56 = *(a1 + 64);
  v57 = v11;
  v12 = *(a1 + 16);
  v52 = *a1;
  v53 = v12;
  v13 = mach_absolute_time();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v15 = v52;
  if (v54 <= 3u)
  {
    if (v54 > 1u)
    {

      if (v54 == 2)
      {
        sub_1D90D8018(a1, v52, sub_1D90DDF54, v14);
      }

      else
      {
        sub_1D90D7C94(v52, *(&v52 + 1), sub_1D90DDF54, v14);
      }
    }

    else
    {
      if (!v54)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v17 = objc_opt_self();

          v18 = [v17 sharedInstance];
          v19 = [v18 playbackContext];

          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = v15;
          *(v20 + 32) = v3;
          v21 = *(a1 + 176);
          *(v20 + 216) = *(a1 + 160);
          *(v20 + 232) = v21;
          *(v20 + 248) = *(a1 + 192);
          v22 = *(a1 + 112);
          *(v20 + 152) = *(a1 + 96);
          *(v20 + 168) = v22;
          v23 = *(a1 + 144);
          *(v20 + 184) = *(a1 + 128);
          *(v20 + 200) = v23;
          v24 = *(a1 + 48);
          *(v20 + 88) = *(a1 + 32);
          *(v20 + 104) = v24;
          v25 = *(a1 + 80);
          *(v20 + 120) = *(a1 + 64);
          *(v20 + 136) = v25;
          v26 = *(a1 + 16);
          *(v20 + 56) = *a1;
          *(v20 + 40) = sub_1D90DDF54;
          *(v20 + 48) = v14;
          *(v20 + 264) = *(a1 + 208);
          *(v20 + 72) = v26;
          v50 = sub_1D90DDF98;
          v51 = v20;
          aBlock = MEMORY[0x1E69E9820];
          v47 = 1107296256;
          v48 = sub_1D8CF5F60;
          v49 = &block_descriptor_104_1;
          v27 = _Block_copy(&aBlock);
          v28 = v19;

          sub_1D90D09E0(&v52, v45);

          [v28 performBlock_];
          _Block_release(v27);
        }

        return;
      }

      sub_1D90D5BE0(v52, sub_1D90DDF54, v14);
    }
  }

  else
  {
    v16 = v53;
    if (v54 <= 5u)
    {
      if (v54 == 4)
      {
        v29 = *(&v53 + 1);
        v44 = *(&v53 + 5);
        v43 = *(&v53 + 1);
        v30 = BYTE7(v53);
        v31 = objc_opt_self();

        v32 = [v31 sharedInstance];
        v33 = [v32 playbackContext];

        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v15;
        *(v34 + 40) = v3;
        v35 = *(a1 + 176);
        *(v34 + 208) = *(a1 + 160);
        *(v34 + 224) = v35;
        *(v34 + 240) = *(a1 + 192);
        *(v34 + 256) = *(a1 + 208);
        v36 = *(a1 + 112);
        *(v34 + 144) = *(a1 + 96);
        *(v34 + 160) = v36;
        v37 = *(a1 + 144);
        *(v34 + 176) = *(a1 + 128);
        *(v34 + 192) = v37;
        v38 = *(a1 + 48);
        *(v34 + 80) = *(a1 + 32);
        *(v34 + 96) = v38;
        v39 = *(a1 + 80);
        *(v34 + 112) = *(a1 + 64);
        *(v34 + 128) = v39;
        v40 = *(a1 + 16);
        *(v34 + 48) = *a1;
        *(v34 + 64) = v40;
        *(v34 + 264) = v16;
        *(v34 + 271) = v30;
        *(v34 + 269) = v44;
        *(v34 + 265) = v43;
        *(v34 + 272) = v29;
        *(v34 + 280) = sub_1D90DDF54;
        *(v34 + 288) = v14;
        v50 = sub_1D90DDF60;
        v51 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = sub_1D8CF5F60;
        v49 = &block_descriptor_98_2;
        v41 = _Block_copy(&aBlock);

        sub_1D90D09E0(&v52, v45);

        v42 = v33;

        [v42 performBlock_];
        _Block_release(v41);

        return;
      }

      sub_1D90DA600(v52, sub_1D90DDF54, v14);
    }

    else if (v54 == 6)
    {

      sub_1D90DAF30(v52, *(&v52 + 1), v53 & 1, sub_1D90DDF54, v14);
    }

    else
    {

      if (v54 == 7)
      {
        sub_1D90DB79C(v52, sub_1D90DDF54, v14);
      }

      else
      {
        sub_1D90D62A8(a1, sub_1D90DDF54, v14);
      }
    }
  }
}

uint64_t sub_1D90D5A80(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v5 = a1[11];
  v16[10] = a1[10];
  v16[11] = v5;
  v17[0] = a1[12];
  *(v17 + 11) = *(a1 + 203);
  v6 = a1[7];
  v16[6] = a1[6];
  v16[7] = v6;
  v7 = a1[9];
  v16[8] = a1[8];
  v16[9] = v7;
  v8 = a1[3];
  v16[2] = a1[2];
  v16[3] = v8;
  v9 = a1[5];
  v16[4] = a1[4];
  v16[5] = v9;
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1ECAB0D50);
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = sub_1D90E9F24(a2);
    _os_log_impl(&dword_1D8CEC000, v12, v13, "Local library request duration: %fs", v14, 0xCu);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  return a3(v16);
}

void sub_1D90D5BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 playbackContext];

  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      v12 = *v11++;
      if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_])
      {
        MEMORY[0x1DA729B90]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();
        v9 = aBlock[0];
      }

      --v10;
    }

    while (v10);
  }

  v13 = sub_1D8FC0EF8(v9);

  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v4;
  v14[6] = a2;
  v14[7] = a3;
  aBlock[4] = sub_1D90DDF18;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_84_2;
  v15 = _Block_copy(aBlock);
  v16 = v8;

  [v16 performBlock_];
  _Block_release(v15);
}

size_t sub_1D90D5DFC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v9 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  sub_1D8D54E74(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
  v13 = sub_1D9178A8C();
  v14 = [a1 episodesForStoreTrackIDs_];

  if (!v14)
  {
    goto LABEL_36;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v15 = sub_1D91785FC();

  if (v15 >> 62)
  {
    goto LABEL_34;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:

LABEL_36:
    *&v40[0] = 3;
    return sub_1D90DD564(v40, v35, a6);
  }

  while (1)
  {
    KeyPath = swift_getKeyPath();
    a3 = sub_1D90D48CC(a3, KeyPath);

    *&v40[0] = MEMORY[0x1E69E7CC0];
    v17 = a3 >> 62 ? sub_1D917935C() : *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = MEMORY[0x1E69E7CC0];
    if (!v17)
    {
      break;
    }

    v34 = a6;
    v19 = 0;
    v20 = a3 & 0xC000000000000001;
    a6 = a3 & 0xFFFFFFFFFFFFFF8;
    v21 = v12;
    v36 = a3;
    while (1)
    {
      if (v20)
      {
        v23 = MEMORY[0x1DA72AA90](v19, a3);
      }

      else
      {
        if (v19 >= *(a6 + 16))
        {
          goto LABEL_33;
        }

        v23 = *(a3 + 8 * v19 + 32);
      }

      v24 = v23;
      v12 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v25 = [v23 assetURL];
      if (v25 || (v25 = [v24 enclosureURL]) != 0)
      {

        sub_1D917959C();
        v22 = *(*&v40[0] + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        a3 = v36;
      }

      else
      {
      }

      ++v19;
      if (v12 == v17)
      {
        v12 = v21;
        v26 = *&v40[0];
        a6 = v34;
        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    if (!sub_1D917935C())
    {
      goto LABEL_35;
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      goto LABEL_23;
    }

LABEL_39:

    v30 = MEMORY[0x1E69E7CC0];
LABEL_40:
    sub_1D90DCCC4(v40);
    v38[10] = v40[10];
    v38[11] = v40[11];
    v38[12] = v40[12];
    v39 = v41;
    v38[6] = v40[6];
    v38[7] = v40[7];
    v38[8] = v40[8];
    v38[9] = v40[9];
    v38[2] = v40[2];
    v38[3] = v40[3];
    v38[4] = v40[4];
    v38[5] = v40[5];
    v38[0] = v40[0];
    v38[1] = v40[1];
    sub_1D90DD19C(v30, v38, v35, a6);
  }

  v27 = sub_1D917935C();
  if (!v27)
  {
    goto LABEL_39;
  }

LABEL_23:
  *&v40[0] = v18;
  result = sub_1D8E317B8(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = *&v40[0];
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1DA72AA90](v29, v26);
      }

      else
      {
        v31 = *(v26 + 8 * v29 + 32);
      }

      sub_1D90BFA08(v31, v12);
      *&v40[0] = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D8E317B8(v32 > 1, v33 + 1, 1);
        v30 = *&v40[0];
      }

      ++v29;
      *(v30 + 16) = v33 + 1;
      sub_1D90DDFAC(v12, v30 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    while (v27 != v29);

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90D62A8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[11];
  *&v78[16] = a1[10];
  v79 = v5;
  v80 = a1[12];
  v81 = *(a1 + 208);
  v6 = a1[7];
  *&v76[32] = a1[6];
  *&v76[48] = v6;
  v7 = a1[9];
  v77 = a1[8];
  *v78 = v7;
  v8 = a1[3];
  v74 = a1[2];
  v75 = v8;
  v9 = a1[5];
  *v76 = a1[4];
  *&v76[16] = v9;
  v10 = a1[1];
  v72 = *a1;
  v73 = v10;
  if (v78[0] == 2)
  {
    v11 = v74;
    v12 = *(&v74 + 1);
    v13 = *(&v75 + 1);
    v14 = v75;
    v40 = v79;
    v41 = v80;
    v15 = v81;
    v37 = v72;
    v38 = v73;
    sub_1D8D092C0(v72, *(&v72 + 1), v73, *(&v73 + 1), v74);

    v16 = *(&v74 + 1);
    sub_1D8D0B37C(v79, *(&v79 + 1), v80, *(&v80 + 1), v81);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 13;
    v23 = 6;
    v24 = 3;
  }

  else
  {
    v40 = v79;
    v41 = v80;
    v15 = v81;
    v20 = v78[25];
    v13 = *(&v75 + 1);
    v14 = v75;
    v12 = *(&v74 + 1);
    v37 = v72;
    v38 = v73;
    v11 = v74;
    sub_1D90D09E0(&v72, &v53);
    v17 = v76[0];
    v18 = v76[1];
    v69 = *&v76[2];
    v70 = *&v76[18];
    v71[0] = *&v76[34];
    *(v71 + 14) = *&v76[48];
    v23 = v77;
    v22 = BYTE1(v77);
    v68 = WORD3(v77);
    v67 = *(&v77 + 2);
    v24 = *(&v77 + 1);
    v21 = vmovl_u8(__PAIR64__(*&v76[52], *v78)).u64[0];
    v19 = v78[4];
  }

  v44[0] = v37;
  v44[1] = v38;
  LOBYTE(v45) = v11;
  *(&v45 + 1) = v12;
  *&v46 = v14;
  *(&v46 + 1) = v13;
  v47[0] = v17;
  v47[1] = v18;
  *&v47[2] = v69;
  *&v47[18] = v70;
  *&v47[34] = v71[0];
  *&v47[48] = *(v71 + 14);
  LOBYTE(v48) = v23;
  BYTE1(v48) = v22;
  WORD3(v48) = v68;
  *(&v48 + 2) = v67;
  *(&v48 + 1) = v24;
  *v49 = vuzp1_s8(v21, v21).u32[0];
  v49[4] = v19;
  *&v49[8] = *&v78[8];
  v49[24] = v78[24];
  v49[25] = v20;
  v50 = v40;
  v51 = v41;
  v52 = v15;
  v66 = v15;
  v55 = v45;
  v56 = v46;
  v53 = v37;
  v54 = v38;
  v57 = *v47;
  v58 = *&v47[16];
  v64 = v40;
  v65 = v41;
  v62 = *v49;
  v63 = *&v49[16];
  v60 = *(v71 + 14);
  v61 = v48;
  v59 = *&v47[32];
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 playbackContext];

  v27 = swift_allocObject();
  v28 = v64;
  *(v27 + 176) = v63;
  *(v27 + 192) = v28;
  *(v27 + 208) = v65;
  *(v27 + 224) = v66;
  v29 = v60;
  *(v27 + 112) = v59;
  *(v27 + 128) = v29;
  v30 = v62;
  *(v27 + 144) = v61;
  *(v27 + 160) = v30;
  v31 = v56;
  *(v27 + 48) = v55;
  *(v27 + 64) = v31;
  v32 = v58;
  *(v27 + 80) = v57;
  *(v27 + 96) = v32;
  v33 = v54;
  *(v27 + 16) = v53;
  *(v27 + 32) = v33;
  *(v27 + 232) = v3;
  *(v27 + 240) = a2;
  *(v27 + 248) = a3;
  *(v27 + 256) = v26;
  aBlock[4] = sub_1D90DDF08;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_78_2;
  v34 = _Block_copy(aBlock);
  sub_1D90D09E0(v44, v42);

  v35 = v26;

  [v35 performBlock_];
  _Block_release(v34);

  return sub_1D90CF72C(v44);
}

uint64_t sub_1D90D6674(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v40 - v12;
  v13 = *(a1 + 176);
  v59 = *(a1 + 160);
  v60 = v13;
  v61[0] = *(a1 + 192);
  LOBYTE(v61[1]) = *(a1 + 208);
  v14 = *(a1 + 112);
  v55 = *(a1 + 96);
  v56 = v14;
  v15 = *(a1 + 144);
  v57 = *(a1 + 128);
  v58 = v15;
  v16 = *(a1 + 48);
  v51 = *(a1 + 32);
  v52 = v16;
  v17 = *(a1 + 80);
  v53 = *(a1 + 64);
  v54 = v17;
  v18 = *(a1 + 16);
  v49 = *a1;
  v50 = v18;
  v19 = sub_1D90D6C50();
  if (v19)
  {
    v20 = v19;
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    v21 = sub_1D917908C();
    v23 = v21;
    *&v49 = MEMORY[0x1E69E7CC0];
    if (v21 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
    {
      v47 = v10;
      v42 = a3;
      v43 = a4;
      v41 = v20;
      if (!i)
      {
        break;
      }

      a4 = 0;
      v10 = (v23 & 0xFFFFFFFFFFFFFF8);
      v44 = i;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1DA72AA90](a4, v23);
        }

        else
        {
          if (a4 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v25 = *(v23 + 8 * a4 + 32);
        }

        v20 = v25;
        v26 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          break;
        }

        v27 = [v25 assetURL];
        if (v27 || (v27 = [v20 enclosureURL]) != 0)
        {

          sub_1D917959C();
          a3 = *(v49 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          i = v44;
        }

        else
        {
        }

        ++a4;
        if (v26 == i)
        {
          v28 = v49;
          v10 = v47;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_20:

    if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
    {
      v23 = sub_1D917935C();
      if (v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = *(v28 + 16);
      if (v23)
      {
LABEL_23:
        a4 = 0;
        a3 = v28 & 0xC000000000000001;
        v29 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (a3)
          {
            v30 = MEMORY[0x1DA72AA90](a4, v28);
            v31 = a4 + 1;
            if (__OFADD__(a4, 1))
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (a4 >= *(v28 + 16))
            {
              goto LABEL_39;
            }

            v30 = *(v28 + 8 * a4 + 32);
            v31 = a4 + 1;
            if (__OFADD__(a4, 1))
            {
              goto LABEL_38;
            }
          }

          sub_1D90BFA08(v30, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1D8ECD960(0, v29[2] + 1, 1, v29);
          }

          v33 = v29[2];
          v32 = v29[3];
          v20 = (v33 + 1);
          if (v33 >= v32 >> 1)
          {
            v29 = sub_1D8ECD960(v32 > 1, v33 + 1, 1, v29);
          }

          v29[2] = v20;
          v34 = v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33;
          v10 = v47;
          sub_1D90DDFAC(v47, v34, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          ++a4;
          if (v31 == v23)
          {
            goto LABEL_43;
          }
        }
      }
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_43:

    sub_1D90DCCC4(v76);
    v72 = v76[10];
    v73 = v76[11];
    v74 = v76[12];
    v75 = v77;
    v68 = v76[6];
    v69 = v76[7];
    v70 = v76[8];
    v71 = v76[9];
    v64 = v76[2];
    v65 = v76[3];
    v66 = v76[4];
    v67 = v76[5];
    v62 = v76[0];
    v63 = v76[1];
    v35 = v29[2];

    v36 = 0;
    v37 = v45;
    while (1)
    {
      v38 = v36;
      if (v35 == v36)
      {
LABEL_47:

        *(&v48[10] + 8) = v72;
        *(&v48[11] + 8) = v73;
        *(&v48[12] + 8) = v74;
        *(&v48[6] + 8) = v68;
        *(&v48[7] + 8) = v69;
        *(&v48[8] + 8) = v70;
        *(&v48[9] + 8) = v71;
        *(&v48[2] + 8) = v64;
        *(&v48[3] + 8) = v65;
        *(&v48[4] + 8) = v66;
        *(&v48[5] + 8) = v67;
        *(v48 + 8) = v62;
        BYTE8(v48[13]) = v75;
        *(&v48[1] + 8) = v63;
        *&v48[0] = v29;
        BYTE9(v48[13]) = v35 != v38;
        sub_1D90DD9D8(v48, v42, v43);

        v59 = v48[10];
        v60 = v48[11];
        v61[0] = v48[12];
        *(v61 + 10) = *(&v48[12] + 10);
        v55 = v48[6];
        v56 = v48[7];
        v57 = v48[8];
        v58 = v48[9];
        v51 = v48[2];
        v52 = v48[3];
        v53 = v48[4];
        v54 = v48[5];
        v49 = v48[0];
        v50 = v48[1];
        return sub_1D90DDD68(&v49);
      }

      if (v36 >= v29[2])
      {
        break;
      }

      sub_1D90CC258(v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v36++, v37, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      v39 = *(v37 + *(v46 + 108));
      result = sub_1D90DD930(v37, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if (v39)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  else
  {
    *&v49 = 3;
    return sub_1D90DD564(&v49, a3, a4);
  }

  return result;
}

id sub_1D90D6C50()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 128);
  v36[3] = *(v0 + 112);
  *v37 = v5;
  *&v37[13] = *(v0 + 141);
  v6 = *(v0 + 96);
  v36[1] = *(v0 + 80);
  v36[2] = v6;
  v36[0] = *(v0 + 64);
  v7 = *&v37[16] | (v37[20] << 32);
  if (v37[16] == 2)
  {
    return 0;
  }

  v9 = v37[1];
  v10 = *(v0 + 112);
  v34[2] = *(v0 + 96);
  v34[3] = v10;
  v35[0] = *(v0 + 128);
  *(v35 + 13) = *(v0 + 141);
  v11 = *(v0 + 80);
  v34[0] = *(v0 + 64);
  v34[1] = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  sub_1D8D0841C(v34, v28);
  v8 = [v12 initWithEntityName_];
  v13 = *(v0 + 112);
  v28[2] = *(v0 + 96);
  v28[3] = v13;
  v29 = *(v0 + 128);
  v14 = *(v0 + 80);
  v28[0] = *(v0 + 64);
  v28[1] = v14;
  v30 = v9;
  *v31 = *(v0 + 130);
  *&v31[6] = *(v0 + 136);
  v33 = BYTE4(v7);
  v32 = v7;
  v15 = EpisodeListSettings.playPredicate.getter();
  [v8 setPredicate_];

  if (!v9)
  {
    v16 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
    goto LABEL_7;
  }

  if (v9 == 4)
  {
    v16 = [objc_opt_self() seasonSortDescriptors_];
LABEL_7:
    v17 = v16;
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    sub_1D91785FC();

    goto LABEL_9;
  }

  EpisodeSortType.descriptors.getter(v9);
LABEL_9:
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v18 = sub_1D91785DC();

  [v8 setSortDescriptors_];

  if (v4 != 4)
  {
    if (v4 == 2 && v1[2])
    {
      v20 = v1[4];
      v19 = v1[5];
      goto LABEL_14;
    }

LABEL_16:
    sub_1D8D08A50(v36, &qword_1ECAB9F78, qword_1D91B16D0);
    return v8;
  }

  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_14:

  v21 = [v8 predicate];
  if (v21)
  {
    v22 = v21;
    v23 = objc_opt_self();
    v24 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v25 = [v23 predicateForEpisodeUuid_];

    v26 = [v22 OR:v25];
    [v8 setPredicate_];
    sub_1D8D08A50(v36, &qword_1ECAB9F78, qword_1D91B16D0);
  }

  else
  {
    sub_1D8D08A50(v36, &qword_1ECAB9F78, qword_1D91B16D0);
  }

  return v8;
}

void sub_1D90D6FB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v84 = &v68 - v17;
  v18 = [a1 podcastForStoreId_];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 uuid];
    if (v20)
    {
      v82 = a5;
      v83 = v12;
      i = a1;
      v69 = v11;
      v81 = a4;
      v21 = v20;
      v70.i64[0] = sub_1D917820C();
      v23 = v22;

      v25 = *(a6 + 64);
      v24 = *(a6 + 72);
      v26 = *(a6 + 96);
      v133 = *(a6 + 80);
      v134 = v26;
      v27 = *(a6 + 112);
      v135 = v27;
      v28 = *(a6 + 128);
      v29 = *(a6 + 129);
      v131 = *(a6 + 130);
      v132 = *(a6 + 134);
      v30 = *(a6 + 144);
      v80 = v19;
      if (v30 == 2)
      {
        LOBYTE(v30) = MTPodcastHidesPlayedEpisodesResolved([v19 hidesPlayedEpisodes]);
        v31 = *(a6 + 16);
        v138 = *a6;
        v139 = v31;
        v140 = *(a6 + 32);
        v32 = *(a6 + 40);
        v76 = *(a6 + 48);
        v33 = *(a6 + 56);
        v34 = *(a6 + 192);
        v136[0] = *(a6 + 176);
        v136[1] = v34;
        v137 = *(a6 + 208);
        v74 = v139;
        v72 = v138;
        v73 = v140;
        v77 = v136[0];
        v78 = v34;
        v35 = v137;
        sub_1D8E3ACE0(&v138, &v87);
        v75 = v33;

        v71 = v32;
        v36 = v32;
        sub_1D8D088B4(v136, &v87, &qword_1ECABA6B8, &unk_1D91B6B80);
        v37 = 0;
        v38 = 0;
        v29 = 2;
        v28 = 3;
        v39 = 3;
        v40 = v82;
        v41 = v70.i64[0];
      }

      else
      {
        LODWORD(v27) = *(a6 + 145);
        v70 = vmovl_u8(*&v27);
        v39 = *(a6 + 136);

        v46 = *(a6 + 192);
        v77 = *(a6 + 176);
        v78 = v46;
        v35 = *(a6 + 208);
        v47 = *(a6 + 169);
        v48 = *(a6 + 48);
        v75 = *(a6 + 56);
        v76 = v48;
        v71 = *(a6 + 40);
        v49 = *a6;
        v74 = *(a6 + 16);
        v72 = v49;
        v73 = *(a6 + 32);
        sub_1D90D09E0(a6, &v87);
        v37 = v47;
        v38 = *v70.i8;
        v128 = v133;
        v129 = v134;
        v130 = v135;
        v126 = v131;
        v127 = v132;
        v41 = v25;
        v23 = v24;
        v40 = v82;
      }

      v50 = *(a6 + 168);
      v116[0] = v72;
      v116[1] = v74;
      LOBYTE(v117) = v73;
      *(&v117 + 1) = v71;
      *&v118 = v76;
      *(&v118 + 1) = v75;
      *&v119 = v41;
      *(&v119 + 1) = v23;
      v120 = v128;
      v121 = v129;
      v122 = v130;
      LOBYTE(v123) = v28;
      BYTE1(v123) = v29;
      WORD3(v123) = v127;
      *(&v123 + 2) = v126;
      *(&v123 + 1) = v39;
      LOBYTE(v124[0]) = v30;
      *(v124 + 1) = vuzp1_s8(v38, *&v130).u32[0];
      *(v124 + 8) = *(a6 + 152);
      BYTE8(v124[1]) = v50;
      BYTE9(v124[1]) = v37;
      v124[2] = v77;
      v124[3] = v78;
      v125 = v35;
      v97 = v124[1];
      v98 = v77;
      v99[0] = v78;
      LOBYTE(v99[1]) = v35;
      v93 = v129;
      v94 = v130;
      v95 = v123;
      v96 = v124[0];
      v89 = v117;
      v90 = v118;
      v91 = v119;
      v92 = v128;
      v87 = v72;
      v88 = v74;
      v51 = sub_1D90D6C50();
      if (v51)
      {
        v52 = v51;
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
        v53 = sub_1D917908C();
        v54 = v53;
        if (v53 >> 62)
        {
          goto LABEL_31;
        }

        v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        for (i = v52; v55; i = v52)
        {
          v52 = 0;
          v56 = MEMORY[0x1E69E7CC0];
          while ((v54 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1DA72AA90](v52, v54);
            v58 = (v52 + 1);
            if (__OFADD__(v52, 1))
            {
              goto LABEL_29;
            }

LABEL_18:
            sub_1D90BFA08(v57, v85);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_1D8ECD960(0, v56[2] + 1, 1, v56);
            }

            v60 = v56[2];
            v59 = v56[3];
            if (v60 >= v59 >> 1)
            {
              v56 = sub_1D8ECD960(v59 > 1, v60 + 1, 1, v56);
            }

            v56[2] = v60 + 1;
            sub_1D90DDFAC(v85, v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, type metadata accessor for PodcastsMediaLibrary.MediaItem);
            ++v52;
            if (v58 == v55)
            {
              goto LABEL_33;
            }
          }

          if (v52 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v57 = *(v54 + 8 * v52 + 32);
          v58 = (v52 + 1);
          if (!__OFADD__(v52, 1))
          {
            goto LABEL_18;
          }

LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v55 = sub_1D917935C();
        }

        v56 = MEMORY[0x1E69E7CC0];
LABEL_33:

        sub_1D90DCCC4(v114);
        v110 = v114[10];
        v111 = v114[11];
        v112 = v114[12];
        v113 = v115;
        v106 = v114[6];
        v107 = v114[7];
        v108 = v114[8];
        v109 = v114[9];
        v102 = v114[2];
        v103 = v114[3];
        v104 = v114[4];
        v105 = v114[5];
        v100 = v114[0];
        v101 = v114[1];
        v61 = v56[2];

        v62 = 0;
        v63 = v69;
        v64 = v83;
        while (1)
        {
          v65 = v62;
          if (v61 == v62)
          {
LABEL_37:

            *&v86[168] = v110;
            *&v86[184] = v111;
            *&v86[200] = v112;
            *&v86[104] = v106;
            *&v86[120] = v107;
            *&v86[136] = v108;
            *&v86[152] = v109;
            *&v86[40] = v102;
            *&v86[56] = v103;
            *&v86[72] = v104;
            *&v86[88] = v105;
            *&v86[8] = v100;
            v86[216] = v113;
            *&v86[24] = v101;
            *v86 = v56;
            v86[217] = v61 != v65;
            sub_1D90DD9D8(v86, v81, v82);

            sub_1D90CF72C(v116);
            v97 = *&v86[160];
            v98 = *&v86[176];
            v99[0] = *&v86[192];
            *(v99 + 10) = *&v86[202];
            v93 = *&v86[96];
            v94 = *&v86[112];
            v95 = *&v86[128];
            v96 = *&v86[144];
            v89 = *&v86[32];
            v90 = *&v86[48];
            v91 = *&v86[64];
            v92 = *&v86[80];
            v87 = *v86;
            v88 = *&v86[16];
            sub_1D90DDD68(&v87);
            return;
          }

          if (v62 >= v56[2])
          {
            break;
          }

          v66 = v84;
          sub_1D90CC258(v56 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v62++, v84, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          v67 = *(v66 + *(v63 + 108));
          sub_1D90DD930(v66, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          if (v67)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
      }

      else
      {
        *&v87 = 3;
        sub_1D90DD564(&v87, v81, v40);

        sub_1D90CF72C(v116);
      }
    }

    else
    {
      v42 = [v19 episodes];
      if (v42)
      {
        v43 = v42;
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
        sub_1D8D54E74(&qword_1ECAAFC60, &qword_1EDCD5B00, off_1E85675C8);
        v44 = sub_1D9178A9C();

        v45 = sub_1D90D3D20(v44);
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      sub_1D90DCCC4(&v87);
      *&v86[160] = v97;
      *&v86[176] = v98;
      *&v86[192] = v99[0];
      v86[208] = v99[1];
      *&v86[96] = v93;
      *&v86[112] = v94;
      *&v86[128] = v95;
      *&v86[144] = v96;
      *&v86[32] = v89;
      *&v86[48] = v90;
      *&v86[64] = v91;
      *&v86[80] = v92;
      *v86 = v87;
      *&v86[16] = v88;
      sub_1D90DD19C(v45, v86, a4, a5);
    }
  }

  else
  {
    *&v87 = 3;
    sub_1D90DD564(&v87, a4, a5);
  }
}

uint64_t sub_1D90D7880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a6;
  v37 = a4;
  v13 = a9;
  v14 = sub_1D9176A7C();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v19 = [a1 playlistForUuid_];

  if (v19)
  {
    v20 = [v19 episodes];
    if (v20)
    {
      v31 = a7;
      v32 = v19;
      v33 = a9;
      v54 = MEMORY[0x1E69E7CC0];
      v30 = v20;
      v21 = MEMORY[0x1E69E7CC0];
      sub_1D9178C9C();
      sub_1D8CFBE80(&qword_1ECAB4440, MEMORY[0x1E6968EB0]);
      sub_1D91791DC();
      if (*(&v42 + 1))
      {
        v34 = MEMORY[0x1E69E7CC0];
        v29 = a8;
        do
        {
          while (1)
          {
            sub_1D8D65618(&v41, v39);
            sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
            if ((swift_dynamicCast() & 1) == 0 || !v38)
            {
              break;
            }

            MEMORY[0x1DA729B90]();
            if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v34 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D917863C();
            }

            sub_1D917869C();
            v34 = v54;
            sub_1D91791DC();
            a8 = v29;
            if (!*(&v42 + 1))
            {
              goto LABEL_16;
            }
          }

          sub_1D91791DC();
        }

        while (*(&v42 + 1));
        a8 = v29;
      }

      else
      {
        v34 = v21;
      }

LABEL_16:

      (*(v35 + 8))(v17, v14);
      v19 = v32;
      v13 = v33;
      a7 = v31;
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(a5 + 176);
    v51 = *(a5 + 160);
    v52 = v23;
    v53[0] = *(a5 + 192);
    LOBYTE(v53[1]) = *(a5 + 208);
    v24 = *(a5 + 112);
    v47 = *(a5 + 96);
    v48 = v24;
    v25 = *(a5 + 144);
    v49 = *(a5 + 128);
    v50 = v25;
    v26 = *(a5 + 48);
    v43 = *(a5 + 32);
    v44 = v26;
    v27 = *(a5 + 80);
    v45 = *(a5 + 64);
    v46 = v27;
    v28 = *(a5 + 16);
    v41 = *a5;
    v42 = v28;
    sub_1D90D8E00(&v41, v34, v36, a7, v39);

    v51 = v39[10];
    v52 = v39[11];
    v53[0] = v40[0];
    *(v53 + 10) = *(v40 + 10);
    v47 = v39[6];
    v48 = v39[7];
    v49 = v39[8];
    v50 = v39[9];
    v43 = v39[2];
    v44 = v39[3];
    v45 = v39[4];
    v46 = v39[5];
    v41 = v39[0];
    v42 = v39[1];
    v40[0] = v53[0];
    *(v40 + 10) = *(v53 + 10);
    sub_1D90DD9D8(v39, a8, v13);

    return sub_1D90DDD68(&v41);
  }

  else
  {
    *&v41 = 3;
    return sub_1D90DD564(&v41, a8, a9);
  }
}

void sub_1D90D7C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 playbackContext];

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v11[5] = v4;
  v11[6] = a3;
  v11[7] = a4;
  v14[4] = sub_1D90DDEF0;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_72_0;
  v12 = _Block_copy(v14);

  v13 = v10;

  [v13 performBlock_];
  _Block_release(v12);
}

void sub_1D90D7DF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_opt_self();
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v11 = [v9 upNextForPodcastUuid:v10 ctx:a3];

  if (v11)
  {
    v12 = [v11 episodeUuid];
    if (!v12)
    {
      sub_1D917820C();
      v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    v13 = [a3 episodeForUuid_];

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D8, &qword_1D91B6370);
      v14 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D9189080;
      v18 = v13;
      sub_1D90BFA08(v18, v17 + v16);
      sub_1D90DCCC4(v21);
      v19[10] = v21[10];
      v19[11] = v21[11];
      v19[12] = v21[12];
      v20 = v22;
      v19[6] = v21[6];
      v19[7] = v21[7];
      v19[8] = v21[8];
      v19[9] = v21[9];
      v19[2] = v21[2];
      v19[3] = v21[3];
      v19[4] = v21[4];
      v19[5] = v21[5];
      v19[0] = v21[0];
      v19[1] = v21[1];
      sub_1D90DD19C(v17, v19, a5, a6);

      return;
    }
  }

  *&v21[0] = 3;
  sub_1D90DD564(v21, a5, a6);
}

void sub_1D90D8018(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a1[11];
  v63 = a1[10];
  v64 = v10;
  v65 = a1[12];
  v66 = *(a1 + 208);
  v11 = a1[7];
  v59 = a1[6];
  v60 = v11;
  v12 = a1[9];
  v61 = a1[8];
  v62 = v12;
  v13 = a1[3];
  v55 = a1[2];
  v56 = v13;
  v14 = a1[5];
  v57 = a1[4];
  v58 = v14;
  v15 = a1[1];
  v53 = *a1;
  v54 = v15;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 playbackContext];

  v18 = a1[11];
  v49 = a1[10];
  v50 = v18;
  v51 = a1[12];
  v52 = *(a1 + 208);
  v19 = a1[7];
  v45 = a1[6];
  v46 = v19;
  v20 = a1[9];
  v47 = a1[8];
  v48 = v20;
  v21 = a1[3];
  v41 = a1[2];
  v42 = v21;
  v22 = a1[5];
  v43 = a1[4];
  v44 = v22;
  v23 = a1[1];
  aBlock = *a1;
  v40 = v23;
  v24 = sub_1D90D6C50();
  if (v24)
  {
    v25 = v24;
    v26 = swift_allocObject();
    v27 = v64;
    *(v26 + 200) = v63;
    *(v26 + 216) = v27;
    *(v26 + 232) = v65;
    v28 = v60;
    *(v26 + 136) = v59;
    *(v26 + 152) = v28;
    v29 = v62;
    *(v26 + 168) = v61;
    *(v26 + 184) = v29;
    v30 = v56;
    *(v26 + 72) = v55;
    *(v26 + 88) = v30;
    v31 = v58;
    *(v26 + 104) = v57;
    *(v26 + 120) = v31;
    v32 = v54;
    *(v26 + 40) = v53;
    *(v26 + 16) = v17;
    *(v26 + 24) = v25;
    *(v26 + 32) = v5;
    *(v26 + 248) = v66;
    *(v26 + 56) = v32;
    *(v26 + 256) = a2;
    *(v26 + 264) = a3;
    *(v26 + 272) = a4;
    v38[4] = sub_1D90DD9C0;
    v38[5] = v26;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1107296256;
    v38[2] = sub_1D8CF5F60;
    v38[3] = &block_descriptor_56_2;
    v33 = _Block_copy(v38);
    v34 = v17;
    v35 = v25;

    sub_1D90D09E0(&v53, &aBlock);

    [v34 performBlock_];
    _Block_release(v33);
  }

  else
  {
    v36 = swift_allocObject();
    v36[2] = v17;
    v36[3] = a2;
    v36[4] = v5;
    v36[5] = a3;
    v36[6] = a4;
    *&v41 = sub_1D90DD990;
    *(&v41 + 1) = v36;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v40 = sub_1D8CF5F60;
    *(&v40 + 1) = &block_descriptor_50_0;
    v37 = _Block_copy(&aBlock);
    v35 = v17;

    [v35 performBlock_];
    _Block_release(v37);
  }
}

void sub_1D90D834C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D91785DC();
  v14 = [a1 episodesForUuids_];

  if (v14)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D91785FC();

    v15 = sub_1D8F616E0(a2);
    swift_getKeyPath();
    v16 = sub_1D90D4C10(v15);

    if (v16 >> 62)
    {
      if (sub_1D917935C())
      {
        v17 = sub_1D917935C();
        if (!v17)
        {
          v23 = a5;

          v19 = MEMORY[0x1E69E7CC0];
LABEL_13:
          sub_1D90DCCC4(v27);
          v25[10] = v27[10];
          v25[11] = v27[11];
          v25[12] = v27[12];
          v26 = v28;
          v25[6] = v27[6];
          v25[7] = v27[7];
          v25[8] = v27[8];
          v25[9] = v27[9];
          v25[2] = v27[2];
          v25[3] = v27[3];
          v25[4] = v27[4];
          v25[5] = v27[5];
          v25[0] = v27[0];
          v25[1] = v27[1];
          sub_1D90DD19C(v19, v25, v24, v23);

          return;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_4:
        *&v27[0] = MEMORY[0x1E69E7CC0];
        sub_1D8E317B8(0, v17 & ~(v17 >> 63), 0);
        if ((v17 & 0x8000000000000000) == 0)
        {
          v23 = a5;
          v18 = 0;
          v19 = *&v27[0];
          do
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1DA72AA90](v18, v16);
            }

            else
            {
              v20 = *(v16 + 8 * v18 + 32);
            }

            sub_1D90BFA08(v20, v12);
            *&v27[0] = v19;
            v22 = *(v19 + 16);
            v21 = *(v19 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_1D8E317B8(v21 > 1, v22 + 1, 1);
              v19 = *&v27[0];
            }

            ++v18;
            *(v19 + 16) = v22 + 1;
            sub_1D90DDFAC(v12, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          }

          while (v17 != v18);

          goto LABEL_13;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    *&v27[0] = 3;
    sub_1D90DD564(v27, v24, a5);
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1D90D8688(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();
  if (a5[2])
  {
    v12 = a5[4];
    v13 = a5[5];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  sub_1D90D8E00(a4, v11, v12, v13, v17);

  v15[10] = v17[10];
  v15[11] = v17[11];
  v16[0] = v18[0];
  *(v16 + 10) = *(v18 + 10);
  v15[6] = v17[6];
  v15[7] = v17[7];
  v15[8] = v17[8];
  v15[9] = v17[9];
  v15[2] = v17[2];
  v15[3] = v17[3];
  v15[4] = v17[4];
  v15[5] = v17[5];
  v15[0] = v17[0];
  v15[1] = v17[1];
  sub_1D90DD9D8(v15, a6, a7);
  return sub_1D90DDD68(v17);
}

uint64_t sub_1D90D87F4(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 176);
  v50 = *(a4 + 160);
  v51 = v11;
  v52 = *(a4 + 192);
  v53 = *(a4 + 208);
  v12 = *(a4 + 112);
  v46 = *(a4 + 96);
  v47 = v12;
  v13 = *(a4 + 144);
  v48 = *(a4 + 128);
  v49 = v13;
  v14 = *(a4 + 48);
  v42 = *(a4 + 32);
  v43 = v14;
  v15 = *(a4 + 80);
  v44 = *(a4 + 64);
  v45 = v15;
  v16 = *(a4 + 16);
  v40 = *a4;
  v41 = v16;
  v17 = *(a3 + 16);

  sub_1D8D088B4(a4, v38, &qword_1ECABA5B0, &qword_1D91B5758);
  v18 = 0;
  do
  {
    v19 = v18;
    if (v17 == v18)
    {
      break;
    }

    sub_1D90CC258(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18++, v10, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    v20 = v10[*(v6 + 108)];
    sub_1D90DD930(v10, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }

  while ((v20 & 1) == 0);
  *(&v37[10] + 8) = v50;
  *(&v37[11] + 8) = v51;
  *(&v37[12] + 8) = v52;
  *(&v37[6] + 8) = v46;
  *(&v37[7] + 8) = v47;
  *(&v37[8] + 8) = v48;
  *(&v37[9] + 8) = v49;
  *(&v37[2] + 8) = v42;
  *(&v37[3] + 8) = v43;
  *(&v37[4] + 8) = v44;
  *(&v37[5] + 8) = v45;
  *(v37 + 8) = v40;
  *&v37[0] = a3;
  BYTE8(v37[13]) = v53;
  *(&v37[1] + 8) = v41;
  BYTE9(v37[13]) = v17 != v19;
  sub_1D90DD88C(v37);
  v34 = v37[10];
  v35 = v37[11];
  v36[0] = v37[12];
  *(v36 + 11) = *(&v37[12] + 11);
  v30 = v37[6];
  v31 = v37[7];
  v32 = v37[8];
  v33 = v37[9];
  v26 = v37[2];
  v27 = v37[3];
  v28 = v37[4];
  v29 = v37[5];
  v24 = v37[0];
  v25 = v37[1];
  v23(&v24);
  v38[10] = v34;
  v38[11] = v35;
  v39[0] = v36[0];
  *(v39 + 11) = *(v36 + 11);
  v38[6] = v30;
  v38[7] = v31;
  v38[8] = v32;
  v38[9] = v33;
  v38[2] = v26;
  v38[3] = v27;
  v38[4] = v28;
  v38[5] = v29;
  v38[0] = v24;
  v38[1] = v25;
  return sub_1D8D08A50(v38, &qword_1ECABA698, &unk_1D91B62E0);
}

uint64_t sub_1D90D8AB0(void (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v5 = a3[11];
  v35 = a3[10];
  v36 = v5;
  v37[0] = a3[12];
  *(v37 + 10) = *(a3 + 202);
  v6 = a3[7];
  v31 = a3[6];
  v32 = v6;
  v7 = a3[9];
  v33 = a3[8];
  v34 = v7;
  v8 = a3[3];
  v27 = a3[2];
  v28 = v8;
  v9 = a3[5];
  v29 = a3[4];
  v30 = v9;
  v10 = a3[1];
  v25 = *a3;
  v26 = v10;
  sub_1D90DD88C(&v25);
  v22 = v35;
  v23 = v36;
  v24[0] = v37[0];
  *(v24 + 11) = *(v37 + 11);
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v12 = v25;
  v13 = v26;
  sub_1D90DDE88(a3, v38);
  a1(&v12);
  v38[10] = v22;
  v38[11] = v23;
  v39[0] = v24[0];
  *(v39 + 11) = *(v24 + 11);
  v38[6] = v18;
  v38[7] = v19;
  v38[8] = v20;
  v38[9] = v21;
  v38[2] = v14;
  v38[3] = v15;
  v38[4] = v16;
  v38[5] = v17;
  v38[0] = v12;
  v38[1] = v13;
  return sub_1D8D08A50(v38, &qword_1ECABA698, &unk_1D91B62E0);
}

uint64_t sub_1D90D8BF4(void *a1, void (*a2)(__int128 *))
{
  type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (a1 == 3)
  {
    sub_1D90DCCC4(v5);
    *&v20[168] = v5[10];
    *&v20[184] = v5[11];
    *&v20[200] = v5[12];
    *&v20[104] = v5[6];
    *&v20[120] = v5[7];
    *&v20[136] = v5[8];
    *&v20[152] = v5[9];
    *&v20[40] = v5[2];
    *&v20[56] = v5[3];
    *&v20[72] = v5[4];
    *&v20[88] = v5[5];
    *&v20[8] = v5[0];
    v20[216] = v6;
    *&v20[24] = v5[1];
    *v20 = MEMORY[0x1E69E7CC0];
    v20[217] = 0;
    sub_1D90DD88C(v20);
    v17 = *&v20[160];
    v18 = *&v20[176];
    v19[0] = *&v20[192];
    *(v19 + 11) = *&v20[203];
    v13 = *&v20[96];
    v14 = *&v20[112];
    v15 = *&v20[128];
    v16 = *&v20[144];
    v9 = *&v20[32];
    v10 = *&v20[48];
    v11 = *&v20[64];
    v12 = *&v20[80];
    v7 = *v20;
    v8 = *&v20[16];
    a2(&v7);
  }

  else
  {
    *v20 = a1;
    sub_1D90DD880(v20);
    v17 = *&v20[160];
    v18 = *&v20[176];
    v19[0] = *&v20[192];
    *(v19 + 11) = *&v20[203];
    v13 = *&v20[96];
    v14 = *&v20[112];
    v15 = *&v20[128];
    v16 = *&v20[144];
    v9 = *&v20[32];
    v10 = *&v20[48];
    v11 = *&v20[64];
    v12 = *&v20[80];
    v7 = *v20;
    v8 = *&v20[16];
    sub_1D90BC378(a1);
    a2(&v7);
  }

  v21[10] = v17;
  v21[11] = v18;
  v22[0] = v19[0];
  *(v22 + 11) = *(v19 + 11);
  v21[6] = v13;
  v21[7] = v14;
  v21[8] = v15;
  v21[9] = v16;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v12;
  v21[0] = v7;
  v21[1] = v8;
  return sub_1D8D08A50(v21, &qword_1ECABA698, &unk_1D91B62E0);
}

void sub_1D90D8E00(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a5;
  v9 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[7];
  v154 = a1[6];
  v155 = v14;
  v156 = a1[8];
  v15 = a1[3];
  v150 = a1[2];
  v151 = v15;
  v16 = a1[5];
  v152 = a1[4];
  v153 = v16;
  v17 = a1[1];
  v148 = *a1;
  v149 = v17;
  v101 = *(a1 + 148);
  v100 = *(a1 + 36);
  v146 = *(a1 + 149);
  v147 = *(a1 + 151);
  v18 = *(a1 + 19);
  v19 = a1[11];
  v142 = a1[10];
  v143 = v19;
  v144 = a1[12];
  v145 = *(a1 + 208);
  v20.n128_f64[0] = sub_1D90DCCC4(&v157);
  v105 = a2;
  v102 = v18;
  v103 = v13;
  v98 = v10;
  v99 = v9;
  v96 = a2 >> 62;
  if (a4)
  {
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    v21 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v21; i = 0)
    {
      v23 = v105;
      v18 = v105 & 0xC000000000000001;
      v104 = v105 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v18)
        {
          v24 = MEMORY[0x1DA72AA90](i, v23, v20);
        }

        else
        {
          if (i >= *(v104 + 16))
          {
            goto LABEL_25;
          }

          v24 = *(v23 + 8 * i + 32);
        }

        v25 = v24;
        v26 = [v24 uuid];
        if (v26)
        {
          break;
        }

        v30 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }

LABEL_19:
        ++i;
        if (v30 == v21)
        {
          i = 0;
LABEL_21:
          v18 = v102;
          v13 = v103;
          goto LABEL_29;
        }
      }

      v9 = v26;
      a2 = sub_1D917820C();
      v28 = v27;

      if (a2 == a3 && v28 == a4)
      {

        v18 = v102;
        v13 = v103;
        goto LABEL_28;
      }

      v9 = sub_1D9179ACC();

      v23 = v105;
      if (v9)
      {
        goto LABEL_21;
      }

      v30 = i + 1;
      if (!__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v21 = sub_1D917935C();
    }

    v13 = v103;
  }

  else
  {
    i = 0;
  }

LABEL_28:
  v23 = v105;
LABEL_29:
  v31 = &v157;
  v32 = v100 | (v101 << 32);
  if (v100 == 2 || (a2 = HIDWORD(v32), !HIDWORD(v32)))
  {
    v39 = __OFADD__(i, v18);
    v18 += i;
    if (v39)
    {
      __break(1u);
    }

    else
    {
      v101 = v100 | (v101 << 32);
      a2 = v96;
      if (!v96)
      {
        v13 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13 >= v18)
        {
          v40 = v18;
        }

        else
        {
          v40 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v40 < i)
        {
          goto LABEL_118;
        }

        v41 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13 >= i)
        {
          goto LABEL_44;
        }

LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    if (v23 < 0)
    {
      v32 = v23;
    }

    else
    {
      v32 = v23 & 0xFFFFFFFFFFFFFF8;
    }

    v85 = sub_1D917935C();
    if (v85 >= v18)
    {
      v40 = v18;
    }

    else
    {
      v40 = v85;
    }

    if (v40 < i)
    {
      goto LABEL_118;
    }

    v13 = v85;
    if (sub_1D917935C() >= i)
    {
LABEL_44:
      if ((i & 0x8000000000000000) == 0)
      {
        if (a2)
        {
          v42 = sub_1D917935C();
        }

        else
        {
          v42 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v42 >= v40)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {
            if ((v23 & 0xC000000000000001) == 0 || i == v40)
            {

              if (!a2)
              {
LABEL_56:
                v45 = v23 & 0xFFFFFFFFFFFFFF8;
                v46 = (v23 & 0xFFFFFFFFFFFFFF8) + 32;
                v47 = (2 * v40) | 1;
LABEL_59:
                v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
                v140 = v104;
                v51 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8);
                v141 = v51;
                v52 = swift_allocObject();
                v139[0] = v52;
                v52[2] = v45;
                v52[3] = v46;
                v52[4] = i;
                v52[5] = v47;
                if (v18 >= v13)
                {
                  v116 = v167;
                  v117 = v168;
                  v118 = v169;
                  v119 = v170;
                  v112 = v163;
                  v113 = v164;
                  v114 = v165;
                  v115 = v166;
                  v108 = v159;
                  v109 = v160;
                  v110 = v161;
                  v111 = v162;
                  v106 = v157;
                  v107 = v158;
                }

                else
                {
                  v127 = v154;
                  v128 = v155;
                  v129 = v156;
                  v123 = v150;
                  v124 = v151;
                  v125 = v152;
                  v126 = v153;
                  v121 = v148;
                  v122 = v149;
                  v130 = v101;
                  v131 = BYTE4(v101);
                  v132 = v146;
                  v133 = v147;
                  v134 = v102;
                  v135 = v142;
                  v136 = v143;
                  v137 = v144;
                  v138 = v145;
                  sub_1D90D9BA4(v105, &v121, v40, &v106);
                }

                v53 = v98;
                v31 = v99;
                v13 = v103;
                v54 = v104;
                while (1)
                {
LABEL_126:
                  while (1)
                  {
                    __swift_project_boxed_opaque_existential_1(v139, v54);
                    v55 = 0;
                    v87 = sub_1D90D4168(sub_1D90D9B6C, 0, v54, v31, MEMORY[0x1E69E73E0], v51, MEMORY[0x1E69E7410], v86);
                    v32 = *(v87 + 16);

                    a2 = 0;
                    while (1)
                    {
                      v23 = a2;
                      if (v32 == a2)
                      {
LABEL_130:

                        v89 = v117;
                        v90 = v97;
                        *(v97 + 168) = v116;
                        *(v90 + 184) = v89;
                        *(v90 + 200) = v118;
                        v91 = v113;
                        *(v90 + 104) = v112;
                        *(v90 + 120) = v91;
                        v92 = v115;
                        *(v90 + 136) = v114;
                        *(v90 + 152) = v92;
                        v93 = v109;
                        *(v90 + 40) = v108;
                        *(v90 + 56) = v93;
                        v94 = v111;
                        *(v90 + 72) = v110;
                        *(v90 + 88) = v94;
                        v95 = v107;
                        *(v90 + 8) = v106;
                        *v90 = v87;
                        *(v90 + 216) = v119;
                        *(v90 + 24) = v95;
                        *(v90 + 217) = v32 != v23;
                        __swift_destroy_boxed_opaque_existential_1Tm(v139);
                        return;
                      }

                      if (a2 >= *(v87 + 16))
                      {
                        break;
                      }

                      v55 = type metadata accessor for PodcastsMediaLibrary.MediaItem;
                      sub_1D90CC258(v87 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * a2++, v13, type metadata accessor for PodcastsMediaLibrary.MediaItem);
                      v88 = v13[*(v31 + 27)];
                      sub_1D90DD930(v13, type metadata accessor for PodcastsMediaLibrary.MediaItem);
                      if (v88)
                      {
                        goto LABEL_130;
                      }
                    }

                    __break(1u);
LABEL_132:
                    __break(1u);
LABEL_133:
                    __break(1u);
LABEL_134:
                    v56 = sub_1D917935C();
LABEL_67:
                    v57 = v56 >= v13 ? v13 : v56;
                    if (v55 < v56)
                    {
                      break;
                    }

                    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
                    v140 = v54;
                    v51 = sub_1D8CF48EC(&qword_1ECABA6A0, &qword_1ECAB44D0, &qword_1D91B62F0);
                    v141 = v51;
                    v139[0] = MEMORY[0x1E69E7CC0];
                    v60 = *(v31 + 11);
                    v116 = *(v31 + 10);
                    v117 = v60;
                    v118 = *(v31 + 12);
                    v119 = v170;
                    v61 = *(v31 + 7);
                    v112 = *(v31 + 6);
                    v113 = v61;
                    v62 = *(v31 + 9);
                    v114 = *(v31 + 8);
                    v115 = v62;
                    v63 = *(v31 + 3);
                    v108 = *(v31 + 2);
                    v109 = v63;
                    v64 = *(v31 + 5);
                    v110 = *(v31 + 4);
                    v111 = v64;
                    v65 = *(v31 + 1);
                    v106 = *v31;
                    v107 = v65;
                    v53 = v98;
                    v31 = v99;
                    v13 = v103;
                  }

                  if (v13 < v55)
                  {
                    goto LABEL_137;
                  }

                  v58 = v96;
                  if (v96)
                  {
                    v59 = sub_1D917935C();
                  }

                  else
                  {
                    v59 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v59 < v55)
                  {
                    goto LABEL_138;
                  }

                  if (v55 < 0)
                  {
                    goto LABEL_139;
                  }

                  if (v58)
                  {
                    v74 = sub_1D917935C();
                  }

                  else
                  {
                    v74 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v74 < v57)
                  {
                    goto LABEL_140;
                  }

                  if (v57 < 0)
                  {
                    goto LABEL_141;
                  }

                  v101 = v32;
                  v104 = v56;
                  if ((v23 & 0xC000000000000001) == 0 || v55 == v57)
                  {

                    if (!v58)
                    {
                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    if (v55 >= v57)
                    {
                      goto LABEL_143;
                    }

                    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

                    v75 = v55;
                    do
                    {
                      v76 = v75 + 1;
                      sub_1D91794AC();
                      v75 = v76;
                    }

                    while (v57 != v76);
                    if (!v58)
                    {
LABEL_101:
                      v77 = v23 & 0xFFFFFFFFFFFFFF8;
                      v100 = (v23 & 0xFFFFFFFFFFFFFF8) + 32;
                      v78 = (2 * v57) | 1;
                      goto LABEL_104;
                    }
                  }

                  v77 = sub_1D917975C();
                  v100 = v79;
                  v55 = v80;
                  v78 = v81;
LABEL_104:
                  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
                  v140 = v54;
                  v82 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8);
                  v141 = v82;
                  v83 = swift_allocObject();
                  v139[0] = v83;
                  v84 = v100;
                  v83[2] = v77;
                  v83[3] = v84;
                  v83[4] = v55;
                  v83[5] = v78;
                  if (v13 >= v104)
                  {
                    v116 = v167;
                    v117 = v168;
                    v118 = v169;
                    v119 = v170;
                    v112 = v163;
                    v113 = v164;
                    v114 = v165;
                    v115 = v166;
                    v108 = v159;
                    v109 = v160;
                    v110 = v161;
                    v111 = v162;
                    v106 = v157;
                    v107 = v158;
                  }

                  else
                  {
                    v127 = v154;
                    v128 = v155;
                    v129 = v156;
                    v123 = v150;
                    v124 = v151;
                    v125 = v152;
                    v126 = v153;
                    v121 = v148;
                    v122 = v149;
                    v130 = v101;
                    v131 = a2;
                    v132 = v146;
                    v133 = v147;
                    v134 = v102;
                    v135 = v142;
                    v136 = v143;
                    v137 = v144;
                    v138 = v145;
                    sub_1D90D9BA4(v105, &v121, v57, &v106);
                  }

                  v53 = v98;
                  v31 = v99;
                  v13 = v103;
                  v51 = v82;
                }
              }

LABEL_58:

              v45 = sub_1D917975C();
              v46 = v48;
              i = v49;
              v47 = v50;
              goto LABEL_59;
            }

            if (i < v40)
            {
              sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

              v43 = i;
              do
              {
                v44 = v43 + 1;
                sub_1D91794AC();
                v43 = v44;
              }

              while (v40 != v44);
              if (!a2)
              {
                goto LABEL_56;
              }

              goto LABEL_58;
            }

LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    goto LABEL_117;
  }

  if (HIDWORD(v32) != 1)
  {
    v55 = i + 1;
    if (!__OFADD__(i, 1))
    {
      v13 = (v55 + v102);
      if (!__OFADD__(v55, v102))
      {
        if (!v96)
        {
          v56 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_67;
        }

        goto LABEL_134;
      }

      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v120 = v23;

  v33 = sub_1D90D53E8(i);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D9189070;
  *(v34 + 32) = v33;
  v35 = v120;
  *&v121 = v34;
  i = v33;
  sub_1D8E302A0(v35);
  v9 = v121;
  v31 = (v121 >> 62);
  if (!(v121 >> 62))
  {
    if (v18 < *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

LABEL_124:
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
    v140 = v54;
    v51 = sub_1D8CF48EC(&qword_1ECABA6A0, &qword_1ECAB44D0, &qword_1D91B62F0);
    v141 = v51;

    v139[0] = v9;
    v116 = v167;
    v117 = v168;
    v118 = v169;
    v119 = v170;
    v112 = v163;
    v113 = v164;
    v114 = v165;
    v115 = v166;
    v108 = v159;
    v109 = v160;
    v110 = v161;
    v111 = v162;
    v106 = v157;
    v107 = v158;
    goto LABEL_125;
  }

LABEL_123:
  if (v18 >= sub_1D917935C())
  {
    goto LABEL_124;
  }

LABEL_34:
  v101 = v32;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
  v141 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8);
  v36 = swift_allocObject();
  v139[0] = v36;
  if (v18 < -1)
  {
    __break(1u);
  }

  else
  {
    v37 = v36;
    if (v31)
    {
      if (sub_1D917935C() < 0)
      {
        goto LABEL_142;
      }

      v38 = sub_1D917935C();
    }

    else
    {
      v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v38 > v18)
    {
      v66 = v18 + 1;
      if ((v9 & 0xC000000000000001) == 0 || v18 == -1)
      {

        if (!v31)
        {
LABEL_83:
          v69 = 0;
          v70 = v9 & 0xFFFFFFFFFFFFFF8;
          v71 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
          v72 = (2 * v66) | 1;
LABEL_86:
          v73 = v102;
          v37[2] = v70;
          v37[3] = v71;
          v37[4] = v69;
          v37[5] = v72;
          v127 = v154;
          v128 = v155;
          v129 = v156;
          v123 = v150;
          v124 = v151;
          v125 = v152;
          v126 = v153;
          v121 = v148;
          v122 = v149;
          v131 = a2;
          v130 = v101;
          v132 = v146;
          v133 = v147;
          v134 = v73;
          v135 = v142;
          v136 = v143;
          v137 = v144;
          v138 = v145;
          sub_1D90D9BA4(v9, &v121, v73, &v106);

          v54 = v140;
          v51 = v141;
LABEL_125:
          v53 = v98;
          v31 = v99;
          goto LABEL_126;
        }
      }

      else
      {
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

        v67 = 0;
        do
        {
          v68 = v67 + 1;
          sub_1D91794AC();
          v67 = v68;
        }

        while (v66 != v68);
        if (!v31)
        {
          goto LABEL_83;
        }
      }

      v70 = sub_1D917975C();
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1D90D9BA4(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 32);
  v8 = *(a2 + 7);
  v76[2] = *(a2 + 6);
  v76[3] = v8;
  v77[0] = *(a2 + 8);
  *(v77 + 13) = *(a2 + 141);
  v9 = *(a2 + 5);
  v76[0] = *(a2 + 4);
  v76[1] = v9;
  v10 = a2[19];
  if (a1 >> 62)
  {
    v57 = a1;
    v58 = a3;
    v59 = a2;
    v60 = sub_1D917935C();
    a2 = v59;
    a3 = v58;
    v11 = v60;
    a1 = v57;
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 > a3)
  {
    v61 = a3;
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
      {
        v12 = a2;
        v13 = *(a1 + 8 * a3 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    v12 = a2;
    v13 = MEMORY[0x1DA72AA90](a3, a1);
LABEL_8:
    v14 = v13;
    v15 = [v13 uuid];

    if (v15)
    {
      v16 = sub_1D917820C();
      v18 = v17;

      if (v7 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1D9189080;
        *(v33 + 32) = v16;
        *(v33 + 40) = v18;
        v34 = *(v12 + 7);
        v69 = *(v12 + 6);
        v70 = v34;
        *v71 = *(v12 + 8);
        *&v71[13] = *(v12 + 141);
        v35 = *(v12 + 5);
        v67 = *(v12 + 4);
        v68 = v35;
        v63 = v33;
        v64 = 0uLL;
        LOBYTE(v65) = 2;
        *(&v65 + 1) = 0;
        v66 = 0uLL;
        *&v71[24] = v10;
        *&v72 = v61;
        WORD4(v72) = 1;
        v73 = 0u;
        v74 = 0u;
        v75 = -1;
        nullsub_1(&v63, v36, v37, v38);
        v39 = v73;
        v40 = v74;
        v41 = *&v71[16];
        *(a4 + 160) = v72;
        *(a4 + 176) = v39;
        *(a4 + 192) = v40;
        v42 = v70;
        v43 = *v71;
        v44 = v68;
        *(a4 + 96) = v69;
        *(a4 + 112) = v42;
        *(a4 + 128) = v43;
        *(a4 + 144) = v41;
        v45 = v66;
        v46 = v67;
        *(a4 + 32) = v65;
        *(a4 + 48) = v45;
        *(a4 + 208) = v75;
        *(a4 + 64) = v46;
        *(a4 + 80) = v44;
        v47 = v64;
        *a4 = v63;
        *(a4 + 16) = v47;
        sub_1D8D088B4(v76, v62, &qword_1ECAB9F78, qword_1D91B16D0);
        return;
      }

      if (v7 == 4)
      {
        v22 = *(v12 + 7);
        v69 = *(v12 + 6);
        v70 = v22;
        *v71 = *(v12 + 8);
        *&v71[13] = *(v12 + 141);
        v23 = *(v12 + 5);
        v67 = *(v12 + 4);
        v68 = v23;
        *&v63 = v6;
        *(&v63 + 1) = v5;
        *&v64 = v16;
        *(&v64 + 1) = v18;
        LOBYTE(v65) = 4;
        *(&v65 + 1) = 0;
        v66 = 0uLL;
        *&v71[24] = v10;
        *&v72 = v61;
        WORD4(v72) = 1;
        v73 = 0u;
        v74 = 0u;
        v75 = -1;
        nullsub_1(&v63, v19, v20, v21);
        v24 = v73;
        v25 = v74;
        v26 = *&v71[16];
        *(a4 + 160) = v72;
        *(a4 + 176) = v24;
        *(a4 + 192) = v25;
        v27 = v70;
        v28 = *v71;
        v29 = v68;
        *(a4 + 96) = v69;
        *(a4 + 112) = v27;
        *(a4 + 128) = v28;
        *(a4 + 144) = v26;
        v30 = v66;
        v31 = v67;
        *(a4 + 32) = v65;
        *(a4 + 48) = v30;
        *(a4 + 208) = v75;
        *(a4 + 64) = v31;
        *(a4 + 80) = v29;
        v32 = v64;
        *a4 = v63;
        *(a4 + 16) = v32;
        sub_1D8D088B4(v76, v62, &qword_1ECAB9F78, qword_1D91B16D0);

        return;
      }
    }
  }

  sub_1D90DCCC4(&v63);
  v48 = v73;
  v49 = v74;
  v50 = *&v71[16];
  *(a4 + 160) = v72;
  *(a4 + 176) = v48;
  *(a4 + 192) = v49;
  v51 = v70;
  v52 = *v71;
  v53 = v68;
  *(a4 + 96) = v69;
  *(a4 + 112) = v51;
  *(a4 + 128) = v52;
  *(a4 + 144) = v50;
  v54 = v66;
  v55 = v67;
  *(a4 + 32) = v65;
  *(a4 + 48) = v54;
  *(a4 + 208) = v75;
  *(a4 + 64) = v55;
  *(a4 + 80) = v53;
  v56 = v64;
  *a4 = v63;
  *(a4 + 16) = v56;
}

void sub_1D90D9F10(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 playbackContext];

  sub_1D90CC258(a2, v11, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  (*(v4 + 16))(v7, v21, v3);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v4 + 80) + v15 + 8) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1D90DDFAC(v11, v17 + v14, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  *(v17 + v15) = v13;
  (*(v4 + 32))(v17 + v16, v7, v3);
  aBlock[4] = sub_1D90DC130;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_81;
  v18 = _Block_copy(aBlock);
  v19 = v13;

  [v19 performBlock_];
  _Block_release(v18);
}

void sub_1D90DA1EC(uint64_t a1, void *a2, uint64_t a3)
{
  v32[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - v11;
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  sub_1D8D088B4(a1 + *(v18 + 48), v12, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D8D08A50(v12, &unk_1ECAB5910, &qword_1D9188C90);
    if (*(a1 + 88))
    {
LABEL_3:
      v19 = *(a1 + 80);
      v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v21 = [a2 episodeForUuid_];

      if (!v21)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v22 = [a2 persistentStoreCoordinator];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1D9176B1C();
      v25 = [v23 managedObjectIDForURIRepresentation_];

      if (v25)
      {
        v26 = [a2 objectWithID_];

        (*(v14 + 8))(v17, v13);
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (!v27)
        {

          goto LABEL_17;
        }

        v28 = v26;
LABEL_14:
        v29 = [v27 assetURL];
        if (v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = [v27 enclosureURL];

          if (!v30)
          {
            goto LABEL_17;
          }
        }

        v27 = v27;
        sub_1D90BFA08(v27, v8);
        v31 = 0;
        goto LABEL_20;
      }
    }

    (*(v14 + 8))(v17, v13);
    if (*(a1 + 88))
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 56))
  {
LABEL_16:
    v27 = 0;
LABEL_17:
    v31 = 1;
LABEL_20:
    (*(*(v18 - 8) + 56))(v8, v31, 1, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
    sub_1D917876C();

    return;
  }

  if ((*(a1 + 48) & 0x8000000000000000) == 0)
  {
    v21 = [a2 episodeForStoreTrackID_];
    if (v21)
    {
LABEL_13:
      v27 = v21;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1D90DA628(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v84 = a2;
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v66 - v17;
  v19 = sub_1D9176C2C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  v24 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v70 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v66 - v28;
  v30 = *(a1 + 16);
  v69 = a1;
  v66 = v30;
  if (!v30)
  {
    v31 = 0;
    v33 = MEMORY[0x1E69E7CC0];
LABEL_37:
    if (qword_1ECAB0D48 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v73 = v23;
  v31 = 0;
  v32 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v78 = *(v27 + 72);
  v80 = (v20 + 48);
  v72 = (v20 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  v71 = (v20 + 8);
  v79 = v18;
  v83 = v19;
  while (1)
  {
    sub_1D90CC258(v32, v29, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
    sub_1D8D088B4(&v29[*(v85 + 32)], v18, &unk_1ECAB5910, &qword_1D9188C90);
    if ((*v80)(v18, 1, v19) == 1)
    {
      sub_1D8D08A50(v18, &unk_1ECAB5910, &qword_1D9188C90);
      if (!*(v29 + 5))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v77 = v33;
    v35 = v31;
    v36 = v73;
    (*v72)(v73, v18, v19);
    v37 = [v84 persistentStoreCoordinator];
    if (!v37 || (v38 = v37, v39 = sub_1D9176B1C(), v40 = [v38 managedObjectIDForURIRepresentation_], v38, v39, v19 = v83, !v40))
    {
      (*v71)(v36, v19);
      goto LABEL_13;
    }

    v41 = [v84 objectWithID_];

    (*v71)(v36, v19);
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (!v42)
    {

LABEL_13:
      v31 = v35;
      v33 = v77;
      if (!*(v29 + 5))
      {
        goto LABEL_16;
      }

LABEL_14:
      v45 = *(v29 + 4);

      v46 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v47 = [v84 episodeForUuid_];

      v19 = v83;
      if (v47)
      {
        v48 = v47;
LABEL_20:
        v43 = v48;
        goto LABEL_21;
      }

LABEL_16:
      if (v29[8])
      {
        goto LABEL_28;
      }

      if ((*v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v49 = [v84 episodeForStoreTrackID_];
      if (!v49)
      {
LABEL_28:
        v43 = 0;
LABEL_29:
        v57 = v70;
        sub_1D90CC258(v29, v70, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
        v58 = v75;
        sub_1D90C8B7C(v57, v75);
        sub_1D90CC258(v58, v76, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1D8ECD960(0, v33[2] + 1, 1, v33);
        }

        v55 = v33[2];
        v59 = v33[3];
        v56 = v55 + 1;
        if (v55 >= v59 >> 1)
        {
          v33 = sub_1D8ECD960(v59 > 1, v55 + 1, 1, v33);
        }

        sub_1D90DD930(v75, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        v34 = v76;
        goto LABEL_4;
      }

      v48 = v49;
      goto LABEL_20;
    }

    v43 = v42;
    v44 = v41;
    v31 = v35;
    v33 = v77;
LABEL_21:
    v50 = [v43 assetURL];
    if (!v50)
    {
      v50 = [v43 enclosureURL];
      if (!v50)
      {

        goto LABEL_29;
      }
    }

    if (__OFADD__(v31++, 1))
    {
      break;
    }

    v52 = v43;
    v53 = v74;
    sub_1D90BFA08(v52, v74);
    sub_1D90C1DE8(*&v29[*(v85 + 60)], *&v29[*(v85 + 60) + 8], v82);
    sub_1D90DD930(v53, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1D8ECD960(0, v33[2] + 1, 1, v33);
    }

    v55 = v33[2];
    v54 = v33[3];
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v33 = sub_1D8ECD960(v54 > 1, v55 + 1, 1, v33);
    }

    v34 = v82;
    v19 = v83;
LABEL_4:
    v33[2] = v56;
    sub_1D90DDFAC(v34, v33 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v55, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    sub_1D90DD930(v29, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
    v18 = v79;
    v32 += v78;
    if (!--v30)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_38:
  v60 = sub_1D917744C();
  __swift_project_value_buffer(v60, qword_1ECAB0D50);

  v61 = sub_1D917741C();
  v62 = sub_1D9178D1C();
  if (os_log_type_enabled(v61, v62))
  {
    result = swift_slowAlloc();
    *result = 134218496;
    *(result + 4) = v31;
    *(result + 12) = 2048;
    v64 = v66;
    *(result + 14) = v66;
    *(result + 22) = 2048;
    if (!__OFSUB__(v64, v31))
    {
      *(result + 24) = v64 - v31;
      v65 = result;

      _os_log_impl(&dword_1D8CEC000, v61, v62, "Restored %ld / %ld media items. Returning %ld shallow items.", v65, 0x20u);
      MEMORY[0x1DA72CB90](v65, -1, -1);

      goto LABEL_42;
    }

    __break(1u);
  }

  else
  {

LABEL_42:
    sub_1D90DCCC4(v88);
    v86[10] = v88[10];
    v86[11] = v88[11];
    v86[12] = v88[12];
    v87 = v89;
    v86[6] = v88[6];
    v86[7] = v88[7];
    v86[8] = v88[8];
    v86[9] = v88[9];
    v86[2] = v88[2];
    v86[3] = v88[3];
    v86[4] = v88[4];
    v86[5] = v88[5];
    v86[0] = v88[0];
    v86[1] = v88[1];
    sub_1D90DD19C(v33, v86, v67, v68);
  }

  return result;
}

void sub_1D90DAF30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 playbackContext];

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3 & 1;
  *(v13 + 48) = v5;
  *(v13 + 56) = a4;
  *(v13 + 64) = a5;
  v16[4] = sub_1D90DD8A4;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D8CF5F60;
  v16[3] = &block_descriptor_32_1;
  v14 = _Block_copy(v16);

  v15 = v12;

  [v15 performBlock_];
  _Block_release(v14);
}

uint64_t sub_1D90DB09C(uint64_t a1, void *a2, id a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    *&v60 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    v11 = (a1 + 32);
    v12 = v10;
    do
    {
      v13 = *v11++;
      sub_1D9179EBC();
      sub_1D917959C();
      v14 = *(v60 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      --v12;
    }

    while (v12);
  }

  v15 = objc_opt_self();
  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  v16 = sub_1D91785DC();

  v17 = [v15 predicateForPersistentIds_];

  v18 = [a2 objectsInEntity:@"MTEpisode" predicate:v17 sortDescriptors:0];
  if (v18)
  {
    v19 = v18;
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v20 = sub_1D91785FC();

    v21 = sub_1D8FBF084(v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v23 = a3;
    a3 = v17;
    *&v60 = MEMORY[0x1E69E7CC0];
    v24 = &v60;
    sub_1D8E3148C(0, v10, 0);
    v22 = v60;
    v25 = (a1 + 32);
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if (v27 < 0)
      {
        break;
      }

      *&v60 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        v24 = &v60;
        sub_1D8E3148C((v28 > 1), v29 + 1, 1);
        v22 = v60;
      }

      *(v22 + 16) = v29 + 1;
      *(v22 + 8 * v29 + 32) = v26;
      if (!--v10)
      {
        v17 = a3;
        a3 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v32 = sub_1D917935C();
    if (!v32)
    {
      goto LABEL_57;
    }

    goto LABEL_19;
  }

LABEL_14:
  if (!v21)
  {
LABEL_32:

    v24 = 0;
    v31 = 1;
    goto LABEL_58;
  }

  KeyPath = swift_getKeyPath();
  v24 = sub_1D90D4F70(v22, KeyPath);

  v31 = v24 == 0;
  if ((a4 & 1) != 0 || !v24)
  {
LABEL_58:
    *(&v61 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
    v51 = sub_1D8CF48EC(&qword_1ECABA6A0, &qword_1ECAB44D0, &qword_1D91B62F0);
    v52 = MEMORY[0x1E69E7CC0];
    if (!v31)
    {
      v52 = v24;
    }

    *&v62 = v51;
    *&v60 = v52;
    sub_1D8D6BCE0(&v60, v74);
    v49 = v75;
    goto LABEL_61;
  }

  v25 = (v24 >> 62);
  v54 = v17;
  if (v24 >> 62)
  {
    goto LABEL_56;
  }

  v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
LABEL_57:
    v31 = 0;
    v17 = v54;
    goto LABEL_58;
  }

LABEL_19:
  v33 = 0;
  v34 = v24 & 0xC000000000000001;
  v35 = v24 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v34)
    {
      v36 = MEMORY[0x1DA72AA90](v33, v24);
    }

    else
    {
      if (v33 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v36 = *(v24 + 8 * v33 + 32);
    }

    v37 = v36;
    v38 = [v36 persistentID];

    if ((v38 & 0x8000000000000000) == 0 && v38 == a3)
    {
      break;
    }

    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_54;
    }

    ++v33;
    if (v39 == v32)
    {
      v33 = 0;
      break;
    }
  }

  v17 = v54;
  if (v25)
  {
    result = sub_1D917935C();
    if (result < v33)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v41 = result;
    result = sub_1D917935C();
  }

  else
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = result;
    if (result < v33)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  if (result < v33)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v33 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v25)
  {
    result = sub_1D917935C();
  }

  else
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v41)
  {
    goto LABEL_64;
  }

  if (v41 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v34)
  {

    goto LABEL_50;
  }

  if (v33 == v41)
  {

    goto LABEL_49;
  }

  if (v33 < v41)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

    v42 = v33;
    do
    {
      v43 = v42 + 1;
      sub_1D91794AC();
      v42 = v43;
    }

    while (v41 != v43);
LABEL_49:
    if (v25)
    {

      v35 = sub_1D917975C();
      v44 = v46;
      v33 = v47;
      v45 = v48;

      goto LABEL_52;
    }

LABEL_50:

    v44 = v35 + 32;
    v45 = (2 * v41) | 1;
LABEL_52:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
    v75 = v49;
    v76 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8);
    v50 = swift_allocObject();
    v74[0] = v50;
    v50[2] = v35;
    v50[3] = v44;
    v50[4] = v33;
    v50[5] = v45;
LABEL_61:
    __swift_project_boxed_opaque_existential_1(v74, v49);
    type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    v53 = sub_1D917843C();
    sub_1D90DCCC4(&v60);
    v58[10] = v70;
    v58[11] = v71;
    v58[12] = v72;
    v59 = v73;
    v58[6] = v66;
    v58[7] = v67;
    v58[8] = v68;
    v58[9] = v69;
    v58[2] = v62;
    v58[3] = v63;
    v58[4] = v64;
    v58[5] = v65;
    v58[0] = v60;
    v58[1] = v61;
    sub_1D90DD19C(v53, v58, a6, a7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v74);
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1D90DB724@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D90BFA08(*a1, a2);
  v3 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

void sub_1D90DB7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 playbackContext];

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v13;
  v14[4] = v6;
  v14[5] = a2;
  v14[6] = a3;
  v17[4] = a5;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D8CF5F60;
  v17[3] = a6;
  v15 = _Block_copy(v17);

  v16 = v13;

  [v16 performBlock_];
  _Block_release(v15);
}

void *sub_1D90DB914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v53 = a2;
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v46 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_40:
    if (v13[2])
    {
      sub_1D90DCCC4(v56);
      v54[10] = v56[10];
      v54[11] = v56[11];
      v54[12] = v56[12];
      v55 = v57;
      v54[6] = v56[6];
      v54[7] = v56[7];
      v54[8] = v56[8];
      v54[9] = v56[9];
      v54[2] = v56[2];
      v54[3] = v56[3];
      v54[4] = v56[4];
      v54[5] = v56[5];
      v54[0] = v56[0];
      v54[1] = v56[1];
      sub_1D90DD19C(v13, v54, v46, v47);
    }

    else
    {

      *&v56[0] = 5;
      return sub_1D90DD564(v56, v46, v47);
    }
  }

  v12 = (a1 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v52 = @"MTEpisode";
  v14 = 0x1E8567000uLL;
  while (1)
  {
    v15 = *(v12 - 4);
    v16 = *(v12 - 3);
    v17 = *(v12 - 2);
    v18 = *(v12 - 1);
    if (*v12 != 1)
    {
      break;
    }

    v51 = v13;

    v19 = v14;
    v20 = *(v14 + 1480);
    v21 = objc_opt_self();
    v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v24 = [v21 predicateForEpisodeGuid:v22 onFeedURL:v23];

    v25 = [v53 objectsInEntity:v52 predicate:v24 sortDescriptors:0];
    if (v25)
    {
      v26 = v25;
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v27 = sub_1D91785FC();

      v28 = sub_1D8FBF084(v27);

      if (v28)
      {
        v14 = v19;
        if (v28 >> 62)
        {
          result = sub_1D917935C();
          v13 = v51;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v13 = v51;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        if ((v28 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1DA72AA90](0, v28);
        }

        else
        {
          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v30 = *(v28 + 32);
        }

        v31 = v30;

        v32 = v31;
        sub_1D90BFA08(v32, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1D8ECD960(0, v13[2] + 1, 1, v13);
        }

        v34 = v13[2];
        v33 = v13[3];
        if (v34 >= v33 >> 1)
        {
          v13 = sub_1D8ECD960(v33 > 1, v34 + 1, 1, v13);
        }

        v13[2] = v34 + 1;
        v36 = v49;
        v35 = v50;
LABEL_31:
        sub_1D90DDFAC(v35, v13 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        goto LABEL_4;
      }
    }

    v14 = v19;
    v13 = v51;
LABEL_4:
    v12 += 40;
    if (!--v11)
    {
      goto LABEL_40;
    }
  }

  sub_1D8E89A08(*(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), 0);
  v37 = *(v14 + 1480);
  result = objc_opt_self();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v24 = [result predicateForEpisodeStoreTrackId_];
    v38 = [v53 objectsInEntity:v52 predicate:v24 sortDescriptors:0];
    if (!v38 || (v39 = v38, sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), v40 = sub_1D91785FC(), v39, v41 = sub_1D8FBF084(v40), , !v41))
    {

      goto LABEL_4;
    }

    if (v41 >> 62)
    {
      result = sub_1D917935C();
      if (!result)
      {
LABEL_36:

        goto LABEL_4;
      }
    }

    else
    {
      result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_36;
      }
    }

    if ((v41 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x1DA72AA90](0, v41);
    }

    else
    {
      if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v42 = *(v41 + 32);
    }

    v43 = v42;

    v44 = v43;
    sub_1D90BFA08(v44, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1D8ECD960(0, v13[2] + 1, 1, v13);
    }

    v34 = v13[2];
    v45 = v13[3];
    if (v34 >= v45 >> 1)
    {
      v13 = sub_1D8ECD960(v45 > 1, v34 + 1, 1, v13);
    }

    v13[2] = v34 + 1;
    v35 = v48;
    v36 = v49;
    goto LABEL_31;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D90DBEF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D90DBF10, 0, 0);
}

uint64_t sub_1D90DBF10()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  *v4 = v0;
  v4[1] = sub_1D90DC018;
  v6 = v0[2];

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000013, 0x80000001D91D5E90, sub_1D90DC128, v2, v5);
}

uint64_t sub_1D90DC018()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_1D90DC130()
{
  v1 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  sub_1D90DA1EC(v0 + v2, v5, v6);
}

void sub_1D90DC230(void *a1, char a2, void *a3)
{
  v45 = a1[2];
  if (!v45)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_1D8D1AC44(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8F85248();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D90095B8(v12, a2 & 1);
  v17 = *a3;
  v18 = sub_1D8D1AC44(v6);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_1D9179CFC();
    __break(1u);
LABEL_29:
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    sub_1D91796DC();
    __break(1u);
    return;
  }

  v13 = v18;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v22[6] + 8 * v13) = v6;
  *(v22[7] + 8 * v13) = v16;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v45 != 1)
  {
    v26 = (a1 + 7);
    v27 = 1;
    while (v27 < a1[2])
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v30 = *a3;
      v31 = sub_1D8D1AC44(v29);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];
      v16 = v28;
      if (v38 < v35)
      {
        sub_1D90095B8(v35, 1);
        v39 = *a3;
        v40 = sub_1D8D1AC44(v29);
        if ((v37 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v36 = v40;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v42[6] + 8 * v36) = v29;
      *(v42[7] + 8 * v36) = v16;
      v43 = v42[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v44;
      v26 += 2;
      if (v45 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_1D90DC5A4(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1D8F07098(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1D9009844(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_1D8F07098(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    v11 = sub_1D9179CFC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1D8F853A4();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    sub_1D91796DC();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = sub_1D8F07098(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_1D9009844(v34, 1);
        v35 = *a3;
        v30 = sub_1D8F07098(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1D90DC950(void *a1, char a2, void *a3)
{
  v45 = a1[2];
  if (!v45)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_1D8D490F4(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8F8550C();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D9009B08(v12, a2 & 1);
  v17 = *a3;
  v18 = sub_1D8D490F4(v6);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_1D9179CFC();
    __break(1u);
LABEL_29:
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    sub_1D91796DC();
    __break(1u);
    return;
  }

  v13 = v18;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v22[6] + 8 * v13) = v6;
  *(v22[7] + 8 * v13) = v16;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v45 != 1)
  {
    v26 = (a1 + 7);
    v27 = 1;
    while (v27 < a1[2])
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v30 = *a3;
      v31 = sub_1D8D490F4(v29);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];
      v16 = v28;
      if (v38 < v35)
      {
        sub_1D9009B08(v35, 1);
        v39 = *a3;
        v40 = sub_1D8D490F4(v29);
        if ((v37 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v36 = v40;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v42[6] + 8 * v36) = v29;
      *(v42[7] + 8 * v36) = v16;
      v43 = v42[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v44;
      v26 += 2;
      if (v45 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

double sub_1D90DCCC4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_1D90DCCF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x1DA72AA90](v7, v5);
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20[2] = v9;
      swift_getAtKeyPath();
      if (sub_1D8D1A770(v20, v20[1]))
      {
        sub_1D917959C();
        v12 = i;
        v13 = v5;
        v14 = a2;
        v15 = a3;
        v16 = *(v21 + 16);
        sub_1D91795DC();
        a3 = v15;
        a2 = v14;
        v5 = v13;
        i = v12;
        v8 = v18;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D90DCE84(unint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA72AA90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12[4] = v4;
      swift_getAtKeyPath();
      v7 = v12[2];
      v8 = v12[3];

      v9 = sub_1D8EFB66C(v12, v7, v8);

      if (v9)
      {
        sub_1D917959C();
        v10 = *(v13 + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      if (v6 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D90DD008(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x1DA72AA90](v7, v5);
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20[2] = v9;
      swift_getAtKeyPath();
      if (sub_1D8D82034(v20, v20[1]))
      {
        sub_1D917959C();
        v12 = i;
        v13 = v5;
        v14 = a2;
        v15 = a3;
        v16 = *(v21 + 16);
        sub_1D91795DC();
        a3 = v15;
        a2 = v14;
        v5 = v13;
        i = v12;
        v8 = v18;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D90DD19C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[11];
  v47 = a2[10];
  v48 = v16;
  v49 = a2[12];
  v50 = *(a2 + 208);
  v17 = a2[7];
  v43 = a2[6];
  v44 = v17;
  v18 = a2[9];
  v45 = a2[8];
  v46 = v18;
  v19 = a2[3];
  v39 = a2[2];
  v40 = v19;
  v20 = a2[5];
  v41 = a2[4];
  v42 = v20;
  v21 = a2[1];
  v37 = *a2;
  v38 = v21;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v22 = sub_1D9178E1C();
  v23 = swift_allocObject();
  v24 = v48;
  *(v23 + 200) = v47;
  *(v23 + 216) = v24;
  *(v23 + 232) = v49;
  v25 = v44;
  *(v23 + 136) = v43;
  *(v23 + 152) = v25;
  v26 = v46;
  *(v23 + 168) = v45;
  *(v23 + 184) = v26;
  v27 = v40;
  *(v23 + 72) = v39;
  *(v23 + 88) = v27;
  v28 = v42;
  *(v23 + 104) = v41;
  *(v23 + 120) = v28;
  v29 = v38;
  *(v23 + 40) = v37;
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a1;
  *(v23 + 248) = v50;
  *(v23 + 56) = v29;
  v36[4] = sub_1D90DD894;
  v36[5] = v23;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  v36[2] = sub_1D8CF5F60;
  v36[3] = &block_descriptor_26_3;
  v30 = _Block_copy(v36);

  sub_1D8D088B4(&v37, v35, &qword_1ECABA5B0, &qword_1D91B5758);

  sub_1D9177E4C();
  v35[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE80(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v30);
  _Block_release(v30);

  (*(v34 + 8))(v11, v8);
  return (*(v32 + 8))(v15, v33);
}

uint64_t sub_1D90DD564(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v15 = sub_1D9178E1C();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_1D90DD874;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_20_2;
  v17 = _Block_copy(aBlock);
  sub_1D90BC378(v14);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE80(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v17);
  _Block_release(v17);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D90DD930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90DD9D8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[11];
  v46 = a1[10];
  v47 = v14;
  v48[0] = a1[12];
  *(v48 + 10) = *(a1 + 202);
  v15 = a1[7];
  v42 = a1[6];
  v43 = v15;
  v16 = a1[9];
  v44 = a1[8];
  v45 = v16;
  v17 = a1[3];
  v38 = a1[2];
  v39 = v17;
  v18 = a1[5];
  v40 = a1[4];
  v41 = v18;
  v19 = a1[1];
  v36 = *a1;
  v37 = v19;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v20 = sub_1D9178E1C();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = v47;
  *(v21 + 192) = v46;
  *(v21 + 208) = v22;
  *(v21 + 224) = v48[0];
  *(v21 + 234) = *(v48 + 10);
  v23 = v43;
  *(v21 + 128) = v42;
  *(v21 + 144) = v23;
  v24 = v45;
  *(v21 + 160) = v44;
  *(v21 + 176) = v24;
  v25 = v39;
  *(v21 + 64) = v38;
  *(v21 + 80) = v25;
  v26 = v41;
  *(v21 + 96) = v40;
  *(v21 + 112) = v26;
  v27 = v37;
  *(v21 + 32) = v36;
  *(v21 + 48) = v27;
  v35[4] = sub_1D90DDE7C;
  v35[5] = v21;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_1D8CF5F60;
  v35[3] = &block_descriptor_62_0;
  v28 = _Block_copy(v35);

  sub_1D90DDE88(&v36, v34);

  sub_1D9177E4C();
  v34[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE80(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v28);
  _Block_release(v28);

  (*(v33 + 8))(v9, v6);
  return (*(v31 + 8))(v13, v32);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  if (*(v0 + 80) != 1)
  {
    sub_1D8CFEACC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

    v3 = *(v0 + 96);

    if (*(v0 + 184) != 2)
    {
      sub_1D90AB0F8(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
    }

    v4 = *(v0 + 248);
    if (v4 != 255)
    {
      sub_1D8CFEACC(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), v4);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D90DDFAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90DE05C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for MediaRequest.Params();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 176);
  v20 = *(a1 + 144);
  v98 = *(a1 + 160);
  v99 = v19;
  v21 = *(a1 + 176);
  v100 = *(a1 + 192);
  v22 = *(a1 + 112);
  v23 = *(a1 + 80);
  v94 = *(a1 + 96);
  v95 = v22;
  v24 = *(a1 + 112);
  v25 = *(a1 + 144);
  v96 = *(a1 + 128);
  v97 = v25;
  v26 = *(a1 + 48);
  v27 = *(a1 + 16);
  v90 = *(a1 + 32);
  v91 = v26;
  v28 = *(a1 + 48);
  v29 = *(a1 + 80);
  v92 = *(a1 + 64);
  v93 = v29;
  v30 = *(a1 + 16);
  v88 = *a1;
  v89 = v30;
  v69 = v98;
  v70 = v21;
  v71[0] = *(a1 + 192);
  v65 = v94;
  v66 = v24;
  v67 = v96;
  v68 = v20;
  v61 = v90;
  v62 = v28;
  v63 = v92;
  v64 = v23;
  v101 = *(a1 + 208);
  LOBYTE(v71[1]) = *(a1 + 208);
  v59 = v88;
  v60 = v27;
  sub_1D90D09E0(&v88, v58);
  v31 = sub_1D90D12F4(&v59);
  if (!v31)
  {
    goto LABEL_12;
  }

  v32 = v31;
  if (!v31[2])
  {

LABEL_12:
    [a4 setURLProtocolDelegate_];
    v69 = v98;
    v70 = v99;
    v71[0] = v100;
    LOBYTE(v71[1]) = v101;
    v65 = v94;
    v66 = v95;
    v67 = v96;
    v68 = v97;
    v61 = v90;
    v62 = v91;
    v63 = v92;
    v64 = v93;
    v59 = v88;
    v60 = v89;
    sub_1D90CFD54(v13);
    v42 = *(&v90 + 1);
    v43 = swift_allocObject();
    v43[2] = a2;
    v43[3] = a3;

    sub_1D904AD58(v13, v42, sub_1D90E01B0, v43);

    return sub_1D90E01B8(v13, type metadata accessor for MediaRequest.Params);
  }

  v44[0] = a2;
  v44[1] = a3;
  if (qword_1ECAB0D48 != -1)
  {
LABEL_14:
    swift_once();
  }

  v33 = sub_1D917744C();
  __swift_project_value_buffer(v33, qword_1ECAB0D50);
  v34 = sub_1D917741C();
  v35 = sub_1D9178D1C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D8CEC000, v34, v35, "Using content from Siri sidepack", v36, 2u);
    MEMORY[0x1DA72CB90](v36, -1, -1);
  }

  sub_1D90DCCC4(v86);
  v82 = v86[10];
  v83 = v86[11];
  v84 = v86[12];
  v85 = v87;
  v78 = v86[6];
  v79 = v86[7];
  v80 = v86[8];
  v81 = v86[9];
  v74 = v86[2];
  v75 = v86[3];
  v76 = v86[4];
  v77 = v86[5];
  v72 = v86[0];
  v73 = v86[1];
  v37 = v32[2];

  v38 = 0;
  do
  {
    v39 = v38;
    if (v37 == v38)
    {
      break;
    }

    if (v38 >= v32[2])
    {
      __break(1u);
      goto LABEL_14;
    }

    sub_1D90D11F4(v32 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v38++, v18);
    v40 = v18[*(v14 + 108)];
    sub_1D90E01B8(v18, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }

  while ((v40 & 1) == 0);

  *&v58[168] = v82;
  *&v58[184] = v83;
  *&v58[200] = v84;
  *&v58[104] = v78;
  *&v58[120] = v79;
  *&v58[136] = v80;
  *&v58[152] = v81;
  *&v58[40] = v74;
  *&v58[56] = v75;
  *&v58[72] = v76;
  *&v58[88] = v77;
  *&v58[8] = v72;
  v58[216] = v85;
  *&v58[24] = v73;
  *v58 = v32;
  v58[217] = v37 != v39;
  sub_1D90DD88C(v58);
  v55 = *&v58[160];
  v56 = *&v58[176];
  v57[0] = *&v58[192];
  *(v57 + 11) = *&v58[203];
  v51 = *&v58[96];
  v52 = *&v58[112];
  v53 = *&v58[128];
  v54 = *&v58[144];
  v47 = *&v58[32];
  v48 = *&v58[48];
  v49 = *&v58[64];
  v50 = *&v58[80];
  v45 = *v58;
  v46 = *&v58[16];
  (v44[0])(&v45);
  v69 = v55;
  v70 = v56;
  v71[0] = v57[0];
  *(v71 + 11) = *(v57 + 11);
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v64 = v50;
  v59 = v45;
  v60 = v46;
  return sub_1D8D08A50(&v59, &qword_1ECABA698, &unk_1D91B62E0);
}

uint64_t sub_1D90DE5D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(__int128 *), uint64_t a7)
{
  v66 = a7;
  v67 = a6;
  v9 = &v114;
  v68 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v10 = *(v68 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v13 = (v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v65 = v64 - v18;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = v64 - v21;
  if (a5)
  {
    if (!a1)
    {
LABEL_5:
      if (qword_1ECAB0D48 != -1)
      {
        swift_once();
      }

      v23 = sub_1D917744C();
      __swift_project_value_buffer(v23, qword_1ECAB0D50);
      v24 = a5;
      v25 = sub_1D917741C();
      v26 = sub_1D9178CFC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        v29 = a5;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v30;
        *v28 = v30;
        _os_log_impl(&dword_1D8CEC000, v25, v26, "Received error from request controller: %@", v27, 0xCu);
        sub_1D8D08A50(v28, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v28, -1, -1);
        MEMORY[0x1DA72CB90](v27, -1, -1);
      }

      v31 = a5;
      v32 = sub_1D917741C();
      v33 = sub_1D9178CFC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v114 = v35;
        *v34 = 136315138;
        *v113 = a5;
        v36 = a5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        v37 = sub_1D917826C();
        v39 = sub_1D8CFA924(v37, v38, &v114);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1D8CEC000, v32, v33, "Received error when fetching from MAPI: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1DA72CB90](v35, -1, -1);
        MEMORY[0x1DA72CB90](v34, -1, -1);
      }

      *v113 = a5;
      sub_1D90DD880(v113);
      v83 = *&v113[176];
      v84[0] = *&v113[192];
      *(v84 + 11) = *&v113[203];
      v79 = *&v113[112];
      v80 = *&v113[128];
      v81 = *&v113[144];
      v82 = *&v113[160];
      v74 = *&v113[32];
      v75 = *&v113[48];
      v76 = *&v113[64];
      v77 = *&v113[80];
      v78 = *&v113[96];
      v72 = *v113;
      v73 = *&v113[16];
      v40 = a5;
      v67(&v72);

      v124 = v82;
      v125 = v83;
      v126[0] = v84[0];
      *(v126 + 11) = *(v84 + 11);
      v120 = v78;
      v121 = v79;
      v122 = v80;
      v123 = v81;
      v116 = v74;
      v117 = v75;
      v118 = v76;
      v119 = v77;
      v114 = v72;
      v115 = v73;
      return sub_1D8D08A50(&v114, &qword_1ECABA698, &unk_1D91B62E0);
    }

    if (a1 >> 62)
    {
      if (sub_1D917935C() <= 0)
      {
        goto LABEL_5;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_5;
    }
  }

  else if (!a1)
  {
LABEL_55:
    *&v114 = 4;
    sub_1D90DD880(&v114);
    *&v113[160] = v124;
    *&v113[176] = v125;
    *&v113[192] = v126[0];
    *&v113[203] = *(v126 + 11);
    *&v113[96] = v120;
    *&v113[112] = v121;
    *&v113[128] = v122;
    *&v113[144] = v123;
    *&v113[32] = v116;
    *&v113[48] = v117;
    *&v113[64] = v118;
    *&v113[80] = v119;
    *v113 = v114;
    *&v113[16] = v115;
    return (v67)(v113);
  }

  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  while (2)
  {
    while (2)
    {
      v52 = sub_1D8FBECF4(a1);
      if (!v52)
      {
        goto LABEL_55;
      }

      v9 = v52;
      a1 = v52 & 0xFFFFFFFFFFFFFF8;
      if (v52 >> 62)
      {
        goto LABEL_78;
      }

      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v53)
      {
LABEL_79:
        v41 = MEMORY[0x1E69E7CC0];
LABEL_80:

        sub_1D90DCCC4(&v99);
        v95 = v109;
        v96 = v110;
        v97 = v111;
        v98 = v112;
        v91 = v105;
        v92 = v106;
        v93 = v107;
        v94 = v108;
        v87 = v101;
        v88 = v102;
        v89 = v103;
        v90 = v104;
        v85 = v99;
        v86 = v100;
        v9 = v41[2];

        v61 = 0;
        v62 = v68;
        while (1)
        {
          a1 = v61;
          if (v9 == v61)
          {
LABEL_84:

            *&v113[168] = v95;
            *&v113[184] = v96;
            *&v113[200] = v97;
            *&v113[104] = v91;
            *&v113[120] = v92;
            *&v113[136] = v93;
            *&v113[152] = v94;
            *&v113[40] = v87;
            *&v113[56] = v88;
            *&v113[72] = v89;
            *&v113[88] = v90;
            *&v113[8] = v85;
            v113[216] = v98;
            *&v113[24] = v86;
            *v113 = v41;
            v113[217] = v9 != a1;
            sub_1D90DD88C(v113);
            v83 = *&v113[176];
            v84[0] = *&v113[192];
            *(v84 + 11) = *&v113[203];
            v79 = *&v113[112];
            v80 = *&v113[128];
            v81 = *&v113[144];
            v82 = *&v113[160];
            v74 = *&v113[32];
            v75 = *&v113[48];
            v76 = *&v113[64];
            v77 = *&v113[80];
            v78 = *&v113[96];
            v72 = *v113;
            v73 = *&v113[16];
            v67(&v72);
            goto LABEL_85;
          }

          if (v61 >= v41[2])
          {
            break;
          }

          sub_1D90D11F4(v41 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v61++, v16);
          v63 = *(v16 + *(v62 + 108));
          sub_1D90E01B8(v16, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          if (v63)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

LABEL_41:
      v54 = 0;
      v71 = v9 & 0xC000000000000001;
      v41 = MEMORY[0x1E69E7CC0];
      v69 = v53;
      v70 = a1;
      while (v71)
      {
        v55 = MEMORY[0x1DA72AA90](v54, v9);
        a1 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_67;
        }

LABEL_45:
        sub_1D90C554C(v55, 0, 0, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1D8ECD960(0, v41[2] + 1, 1, v41);
        }

        v22 = v41[2];
        v56 = v41[3];
        if (v22 >= v56 >> 1)
        {
          v41 = sub_1D8ECD960(v56 > 1, v22 + 1, 1, v41);
        }

        v41[2] = v22 + 1;
        sub_1D90977D8(v13, v41 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22);
        ++v54;
        v51 = a1 == v69;
        a1 = v70;
        if (v51)
        {
          goto LABEL_80;
        }
      }

      if (v54 >= *(a1 + 16))
      {
        goto LABEL_68;
      }

      v55 = *(v9 + 8 * v54 + 32);
      a1 = v54 + 1;
      if (!__OFADD__(v54, 1))
      {
        goto LABEL_45;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      if (!sub_1D917935C())
      {
        continue;
      }

      break;
    }

LABEL_15:
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *(a1 + 32);
        swift_unknownObjectRetain();
        goto LABEL_18;
      }

      __break(1u);
LABEL_78:
      v53 = sub_1D917935C();
      if (!v53)
      {
        goto LABEL_79;
      }

      goto LABEL_41;
    }

    v41 = MEMORY[0x1DA72AA90](0, a1, v20);
LABEL_18:
    type metadata accessor for ServerPodcast();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      continue;
    }

    break;
  }

  v9 = v42;
  v43 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v16 = *(v9 + v43);
  if (v16)
  {
    a1 = v16 & 0xFFFFFFFFFFFFFF8;
    if (!(v16 >> 62))
    {
      v44 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_88:
    v44 = sub_1D917935C();
LABEL_22:
    v64[1] = v41;

    if (v44)
    {
      v45 = 0;
      v71 = v16 & 0xC000000000000001;
      v13 = MEMORY[0x1E69E7CC0];
      v69 = v44;
      v70 = a1;
      do
      {
        if (v71)
        {
          v46 = MEMORY[0x1DA72AA90](v45, v16);
        }

        else
        {
          if (v45 >= *(a1 + 16))
          {
            goto LABEL_70;
          }

          v46 = *(v16 + 8 * v45 + 32);
        }

        v47 = v46;
        a1 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_69;
        }

        v48 = v9;
        sub_1D90C554C(v47, v9, 0, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1D8ECD960(0, v13[2] + 1, 1, v13);
        }

        v50 = v13[2];
        v49 = v13[3];
        if (v50 >= v49 >> 1)
        {
          v13 = sub_1D8ECD960(v49 > 1, v50 + 1, 1, v13);
        }

        v13[2] = v50 + 1;
        sub_1D90977D8(v22, v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v50);
        ++v45;
        v51 = a1 == v69;
        a1 = v70;
      }

      while (!v51);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1D90DCCC4(&v99);
  v58 = sub_1D90BB988();
  v95 = v109;
  v96 = v110;
  v97 = v111;
  v98 = v112;
  v91 = v105;
  v92 = v106;
  v93 = v107;
  v94 = v108;
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  v85 = v99;
  v86 = v100;
  v59 = v65;
  if (v58)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v9 = v13[2];

    a1 = 0;
    do
    {
      v16 = v9 != a1;
      if (v9 == a1)
      {
        break;
      }

      if (a1 >= v13[2])
      {
        goto LABEL_71;
      }

      sub_1D90D11F4(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1++, v59);
      v60 = *(v59 + *(v68 + 108));
      sub_1D90E01B8(v59, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    while ((v60 & 1) == 0);
  }

  *&v113[168] = v95;
  *&v113[184] = v96;
  *&v113[200] = v97;
  *&v113[104] = v91;
  *&v113[120] = v92;
  *&v113[136] = v93;
  *&v113[152] = v94;
  *&v113[40] = v87;
  *&v113[56] = v88;
  *&v113[72] = v89;
  *&v113[88] = v90;
  *&v113[8] = v85;
  v113[216] = v98;
  *&v113[24] = v86;
  *v113 = v13;
  v113[217] = v16;
  sub_1D90DD88C(v113);
  v83 = *&v113[176];
  v84[0] = *&v113[192];
  *(v84 + 11) = *&v113[203];
  v79 = *&v113[112];
  v80 = *&v113[128];
  v81 = *&v113[144];
  v82 = *&v113[160];
  v74 = *&v113[32];
  v75 = *&v113[48];
  v76 = *&v113[64];
  v77 = *&v113[80];
  v78 = *&v113[96];
  v72 = *v113;
  v73 = *&v113[16];
  v67(&v72);
  swift_unknownObjectRelease();
LABEL_85:
  v124 = v82;
  v125 = v83;
  v126[0] = v84[0];
  *(v126 + 11) = *(v84 + 11);
  v120 = v78;
  v121 = v79;
  v122 = v80;
  v123 = v81;
  v116 = v74;
  v117 = v75;
  v118 = v76;
  v119 = v77;
  v114 = v72;
  v115 = v73;
  return sub_1D8D08A50(&v114, &qword_1ECABA698, &unk_1D91B62E0);
}

uint64_t sub_1D90DF268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D90DF28C, 0, 0);
}

uint64_t sub_1D90DF28C()
{
  v1 = *(v0 + 24);
  if (*(v1 + 56))
  {
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v2 = sub_1D917744C();
    __swift_project_value_buffer(v2, qword_1ECAB0D50);
    v3 = sub_1D917741C();
    v4 = sub_1D9178D1C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D8CEC000, v3, v4, "Item doesn't have an adam id. Unable to refetch from the network. Returning original.", v5, 2u);
      MEMORY[0x1DA72CB90](v5, -1, -1);
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    sub_1D90D11F4(v6, v7);
    v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v1 + 48);
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    v13 = *(v0 + 32);
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 40) = v1;
    v14 = *(MEMORY[0x1E69E88D0] + 4);
    v15 = swift_task_alloc();
    *(v0 + 56) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
    *v15 = v0;
    v15[1] = sub_1D90DF4E4;
    v17 = *(v0 + 16);

    return MEMORY[0x1EEE6DDE0](v17, 0, 0, 0xD000000000000013, 0x80000001D91D5E90, sub_1D90E00C4, v12, v16);
  }
}

uint64_t sub_1D90DF4E4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D90DF5F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v20 = a1;
  v21 = a3;
  v22 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D9189080;
  *(v14 + 32) = a2;
  v25[0] = v14;
  memset(&v25[1], 0, 24);
  v26[0] = 1;
  memset(&v26[8], 0, 96);
  v27 = 0;
  BYTE4(v28) = 0;
  LODWORD(v28) = 2;
  v29 = 0;
  *&v30 = 0;
  WORD4(v30) = 2;
  v31 = 0u;
  v32 = 0u;
  v33 = -1;
  v23[10] = v30;
  memset(&v23[11], 0, 32);
  v24 = -1;
  v23[6] = *&v26[64];
  v23[7] = *&v26[80];
  v23[8] = 0uLL;
  v23[9] = v28;
  v23[2] = *v26;
  v23[3] = *&v26[16];
  v23[4] = *&v26[32];
  v23[5] = *&v26[48];
  v23[0] = v14;
  v23[1] = 0u;
  sub_1D90D11F4(v19, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, v20, v6);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1D90977D8(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  (*(v7 + 32))(v17 + v16, v10, v6);
  sub_1D90DE05C(v23, sub_1D90E00D0, v17, v21, v22);

  return sub_1D90CF72C(v25);
}

uint64_t sub_1D90DF8BC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1E0, &qword_1D91B3658);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v65 = *(v21 - 8);
  v66 = v21;
  v22 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[11];
  v26 = a1[9];
  v81 = a1[10];
  v82 = v25;
  v27 = a1[11];
  v83[0] = a1[12];
  *(v83 + 11) = *(a1 + 203);
  v28 = a1[7];
  v29 = a1[5];
  v77 = a1[6];
  v78 = v28;
  v30 = a1[7];
  v31 = a1[9];
  v79 = a1[8];
  v80 = v31;
  v32 = a1[3];
  v33 = a1[1];
  v73 = a1[2];
  v74 = v32;
  v34 = a1[3];
  v35 = a1[5];
  v75 = a1[4];
  v76 = v35;
  v36 = a1[1];
  v71 = *a1;
  v72 = v36;
  v84[10] = v81;
  v84[11] = v27;
  v85[0] = a1[12];
  *(v85 + 11) = *(a1 + 203);
  v84[6] = v77;
  v84[7] = v30;
  v84[8] = v79;
  v84[9] = v26;
  v84[2] = v73;
  v84[3] = v34;
  v84[4] = v75;
  v84[5] = v29;
  v84[0] = v71;
  v84[1] = v33;
  if (sub_1D90E0218(v84) == 1)
  {
    v63 = a3;
    v40 = *nullsub_1(v84, v37, v38, v39);
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v41 = sub_1D917744C();
    __swift_project_value_buffer(v41, qword_1ECAB0D50);
    v69[10] = v81;
    v69[11] = v82;
    v70[0] = v83[0];
    *(v70 + 11) = *(v83 + 11);
    v69[6] = v77;
    v69[7] = v78;
    v69[8] = v79;
    v69[9] = v80;
    v69[2] = v73;
    v69[3] = v74;
    v69[4] = v75;
    v69[5] = v76;
    v69[0] = v71;
    v69[1] = v72;
    v45 = nullsub_1(v69, v42, v43, v44);
    sub_1D90BC378(*v45);
    v46 = sub_1D917741C();
    v47 = sub_1D9178D1C();
    sub_1D8D08A50(&v71, &qword_1ECABA698, &unk_1D91B62E0);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      sub_1D90CC2C0();
      swift_allocError();
      *v50 = v40;
      v67[0] = v71;
      v67[1] = v72;
      v67[4] = v75;
      v67[5] = v76;
      v67[2] = v73;
      v67[3] = v74;
      v67[8] = v79;
      v67[9] = v80;
      v67[6] = v77;
      v67[7] = v78;
      *(v68 + 11) = *(v83 + 11);
      v67[11] = v82;
      v68[0] = v83[0];
      v67[10] = v81;
      v53 = nullsub_1(v67, v50, v51, v52);
      sub_1D90BC378(*v53);
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v54;
      *v49 = v54;
      _os_log_impl(&dword_1D8CEC000, v46, v47, "Received error refreshing item. Returning original shallow item. %@", v48, 0xCu);
      sub_1D8D08A50(v49, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v49, -1, -1);
      MEMORY[0x1DA72CB90](v48, -1, -1);
    }

    (*(v65 + 56))(v14, 1, 1, v66);
    swift_storeEnumTagMultiPayload();
    sub_1D90E0220(v14, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917875C();
    }

    else
    {
      sub_1D90AA150(v11, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917876C();
    }

    return sub_1D8D08A50(v14, &qword_1ECABA1E0, &qword_1D91B3658);
  }

  else
  {
    v55 = nullsub_1(v84, v37, v38, v39);
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v56 = sub_1D917744C();
    __swift_project_value_buffer(v56, qword_1ECAB0D50);
    v57 = sub_1D917741C();
    v58 = sub_1D9178D1C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1D8CEC000, v57, v58, "Item successfully refreshed", v59, 2u);
      MEMORY[0x1DA72CB90](v59, -1, -1);
    }

    v60 = v65;
    v61 = v63;
    if (*(*v55 + 16))
    {
      v61 = *v55 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    }

    sub_1D90D11F4(v61, v24);
    sub_1D90D11F4(v24, v20);
    (*(v60 + 56))(v20, 0, 1, v66);
    swift_storeEnumTagMultiPayload();
    sub_1D90E0220(v20, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917875C();
    }

    else
    {
      sub_1D90AA150(v17, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
      sub_1D917876C();
    }

    sub_1D8D08A50(v20, &qword_1ECABA1E0, &qword_1D91B3658);
    return sub_1D90E01B8(v24, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }
}

BOOL sub_1D90DFFD4(int8x16_t *a1)
{
  v1 = a1[2].u8[0];
  result = 1;
  if (v1 >= 2)
  {
    if (v1 != 8)
    {
      return 0;
    }

    v3 = vorrq_s8(*a1, a1[1]);
    if (vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D90E0010(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D8D58924;

  return sub_1D90DF268(a1, a2, v7, v6);
}

uint64_t sub_1D90E00D0(__int128 *a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1D90DF8BC(a1, v1 + v4, v7);
}

uint64_t sub_1D90E01B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90E0220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1E0, &qword_1D91B3658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D90E02EC(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1ECAB0D50);
    v4 = sub_1D9178CFC();
    v5 = sub_1D917741C();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1D8CFA924(0x62694C6C61636F6CLL, 0xEC00000079726172, &v10);
      _os_log_impl(&dword_1D8CEC000, v5, v4, "Asking for %{public}s in a MAPI-only configuration. This is not supported.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1DA72CB90](v7, -1, -1);
      MEMORY[0x1DA72CB90](v6, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
    v9 = [objc_allocWithZone(_s19TaskMetricsDelegateCMa()) init];
    *(a2 + 24) = &_s16MediaAPIProviderVN;
    *(a2 + 32) = &off_1F54822F8;
    *a2 = v8;
    *(a2 + 8) = v9;
  }
}

uint64_t sub_1D90E0498(char a1)
{
  if (a1)
  {
    v1 = sub_1D9179ACC();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

id sub_1D90E0530@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  if (a1 - 1 >= 2)
  {
    v5 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
    result = [objc_allocWithZone(_s19TaskMetricsDelegateCMa()) init];
    a2[1] = result;
    v6 = &off_1F54822F8;
    v3 = &_s16MediaAPIProviderVN;
  }

  else
  {
    v3 = _s20LocalLibraryProviderCMa();
    result = swift_allocObject();
    v5 = result;
    v6 = &off_1F5481DA8;
  }

  a2[3] = v3;
  a2[4] = v6;
  *a2 = v5;
  return result;
}

uint64_t sub_1D90E05EC(char a1)
{
  if (a1)
  {
    v1 = sub_1D9179ACC();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void *PodcastsMediaLibrary.PlaybackQueueContext.accountForPlayback.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.SourceEvent.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.siriAssetInfo.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

id PodcastsMediaLibrary.PlaybackQueueContext.userContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v10 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v10;
  *(a1 + 48) = v3;
  v6 = v4;
  v7 = v3;
  v8 = v6;

  return v10;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.restorableSnapshot.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() + 40));
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.initialItemPlayheadOverride.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.featureName.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.sourceEvent.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.mediaQueryIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() + 60));
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.mediaQueryInitialIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() + 64));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.previousMediaIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() + 68);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;

  return sub_1D8D0B37C(v4, v5, v6, v7, v8);
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:)@<D0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a3;
  if (!a3)
  {
    v13 = sub_1D90E5C18(a1);
  }

  v14 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v15 = v14[9];
  v16 = type metadata accessor for PlaybackIntent(0);
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = v14[11];
  v18 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = a3;
  v20 = sub_1D90E5FA4();
  LOBYTE(v17) = v21;
  v22 = v14[18];
  v23 = type metadata accessor for AccountResolver();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v28 = sub_1D917734C();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v26 + v29) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a9 + v22) = v26;
  v30 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v30;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v13;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v14[14]) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(a9 + v14[10]) = MEMORY[0x1E69E7CC0];
  v32 = a9 + v14[12];
  *v32 = v20;
  *(v32 + 8) = v17 & 1;
  *(a9 + v14[15]) = v31;
  v33 = a9 + v14[16];
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = a9 + v14[17];
  result = 0.0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = -1;
  *(a9 + v14[13]) = 4;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:sourceEvent:)@<D0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a3;
  if (!a3)
  {
    v13 = sub_1D90E5C18(a1);
  }

  v14 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v15 = v14[9];
  v16 = type metadata accessor for PlaybackIntent(0);
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = v14[11];
  v18 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = a3;
  v20 = sub_1D90E5FA4();
  LOBYTE(v17) = v21;
  v22 = v14[18];
  v23 = type metadata accessor for AccountResolver();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v28 = sub_1D917734C();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v26 + v29) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a9 + v22) = v26;
  v30 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v30;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v13;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v14[14]) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(a9 + v14[10]) = MEMORY[0x1E69E7CC0];
  v32 = a9 + v14[12];
  *v32 = v20;
  *(v32 + 8) = v17 & 1;
  *(a9 + v14[15]) = v31;
  v33 = a9 + v14[16];
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = a9 + v14[17];
  result = 0.0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = -1;
  *(a9 + v14[13]) = 4;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:sourceEvent:featureName:)@<D0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v44 = *a12;
  v15 = a3;
  if (!a3)
  {
    v15 = sub_1D90E5C18(a1);
  }

  v16 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v17 = v16[9];
  v18 = type metadata accessor for PlaybackIntent(0);
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = v16[11];
  v20 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = a3;
  v22 = sub_1D90E5FA4();
  LOBYTE(v19) = v23;
  v24 = v16[18];
  v25 = type metadata accessor for AccountResolver();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v30 = sub_1D917734C();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v28 + v31) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a9 + v24) = v28;
  v32 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v32;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v15;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v16[14]) = 0;
  v33 = MEMORY[0x1E69E7CC0];
  *(a9 + v16[10]) = MEMORY[0x1E69E7CC0];
  v34 = a9 + v16[12];
  *v34 = v22;
  *(v34 + 8) = v19 & 1;
  *(a9 + v16[15]) = v33;
  v35 = a9 + v16[16];
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = a9 + v16[17];
  result = 0.0;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = -1;
  *(a9 + v16[13]) = v44;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(trackIdentifiers:privateListening:enqueuerDSID:sharedUserId:requesterUserId:siriAssetInfo:sourceEvent:initialItemPlayheadOverride:)@<D0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = a3;
  if (!a3)
  {
    v17 = sub_1D90E5C18(a1);
  }

  v18 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v19 = v18[9];
  v20 = type metadata accessor for PlaybackIntent(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = v18[11];
  v22 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = v18[18];
  v24 = type metadata accessor for AccountResolver();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v29 = sub_1D917734C();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  v31 = objc_allocWithZone(MEMORY[0x1E698D198]);
  v32 = a3;
  *(v27 + v30) = [v31 init];
  *(a9 + v23) = v27;
  v33 = sub_1D90E6070(a1);

  *a9 = a1;
  *(a9 + 8) = v33;
  *(a9 + 16) = a2 & 1;
  *(a9 + 40) = v17;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a4;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a5;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + v18[14]) = 0;
  v34 = MEMORY[0x1E69E7CC0];
  *(a9 + v18[10]) = MEMORY[0x1E69E7CC0];
  v35 = a9 + v18[12];
  *v35 = a12;
  *(v35 + 8) = a13 & 1;
  *(a9 + v18[15]) = v34;
  v36 = a9 + v18[16];
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = a9 + v18[17];
  result = 0.0;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = -1;
  *(a9 + v18[13]) = 4;
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(restorableSnapshot:privateListening:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v7 = v6[9];
  v8 = type metadata accessor for PlaybackIntent(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[11];
  v10 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = v6[18];
  v12 = type metadata accessor for AccountResolver();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v17 = sub_1D917734C();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v15 + v18) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a3 + v11) = v15;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);
  *a3 = v19;
  *(a3 + 8) = v20;
  *(a3 + 16) = a2;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + v6[14]) = 2;
  *(a3 + v6[10]) = a1;
  v22 = a3 + v6[12];
  *v22 = 0;
  *(v22 + 8) = 1;
  *(a3 + v6[15]) = v19;
  v23 = a3 + v6[16];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = a3 + v6[17];
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = -1;
  *(a3 + v6[13]) = 4;
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90E6430(a1, v7, type metadata accessor for PlaybackIntent);
  v10 = 4;
  PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:featureName:)(v7, 0, &v10, a2);
  return sub_1D90E6538(a1, type metadata accessor for PlaybackIntent);
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:featureName:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v38 = *a3;
  v6 = sub_1D90E1A6C();
  if (!v6)
  {
    v8 = [objc_opt_self() sharedAccountStore];
    v39[0] = 0;
    v7 = [v8 activeStoreAccountWithError_];

    v9 = v39[0];
    if (v7)
    {
      goto LABEL_4;
    }

    v32 = v9;
    v33 = sub_1D9176A6C();

    swift_willThrow();
  }

  v7 = 0;
LABEL_4:
  v34 = v7;
  v10 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v11 = v10[9];
  sub_1D90E6430(a1, a4 + v11, type metadata accessor for PlaybackIntent);
  v12 = type metadata accessor for PlaybackIntent(0);
  (*(*(v12 - 8) + 56))(a4 + v11, 0, 1, v12);
  sub_1D8D088B4(a1 + *(v12 + 20), a4 + v10[11], &qword_1ECAB9F70, qword_1D91B1680);
  v13 = v7;
  v14 = v6;
  v36 = PlaybackIntent.initialItemPlayheadOverride.getter();
  v35 = v15;
  v16 = v6;
  v17 = v10[18];
  v18 = type metadata accessor for AccountResolver();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v23 = sub_1D917734C();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v21 + v24) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a4 + v17) = v21;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);

  sub_1D90E6538(a1, type metadata accessor for PlaybackIntent);
  *a4 = v25;
  *(a4 + 8) = v26;
  *(a4 + 16) = a2 & 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = v16;
  result = 0.0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = v34;
  *(a4 + 88) = 0;
  *(a4 + 24) = 0;
  *(a4 + v10[14]) = 0;
  *(a4 + v10[10]) = v25;
  v28 = a4 + v10[12];
  *v28 = v36;
  *(v28 + 8) = v35 & 1;
  *(a4 + v10[15]) = v25;
  v29 = a4 + v10[16];
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = a4 + v10[17];
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = -1;
  *(a4 + v10[13]) = v38;
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlaybackIntent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D90E6430(a1, v9, type metadata accessor for PlaybackIntent);
  v12 = 4;
  PodcastsMediaLibrary.PlaybackQueueContext.init(intent:privateListening:featureName:)(v9, a2, &v12, a3);
  return sub_1D90E6538(a1, type metadata accessor for PlaybackIntent);
}

unsigned __int8 *sub_1D90E1A6C()
{
  v1 = *(v0 + *(type metadata accessor for PlaybackIntent(0) + 28));
  v2 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 48) + 24 * (v10 | (v8 << 6));
    if (*(v11 + 16) == 1)
    {
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = HIBYTE(v12) & 0xF;
      v15 = v13 & 0xFFFFFFFFFFFFLL;
      if ((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v13 & 0xFFFFFFFFFFFFLL)
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          sub_1D8D02FE4(v13, v12, 1);
          v38 = sub_1D8FF7E64(v13);
          if ((v39 & 1) == 0)
          {
            v18 = v38;
            goto LABEL_73;
          }

LABEL_4:
          result = sub_1D8D02FCC(v13, v12, 1);
        }

        else
        {
          if ((v12 & 0x2000000000000000) != 0)
          {
            v43[0] = v13;
            v43[1] = v12 & 0xFFFFFFFFFFFFFFLL;
            if (v13 == 43)
            {
              if (!v14)
              {
                goto LABEL_95;
              }

              if (--v14)
              {
                v18 = 0;
                v28 = v43 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v14)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v13 == 45)
            {
              if (!v14)
              {
                goto LABEL_93;
              }

              if (--v14)
              {
                v18 = 0;
                v22 = v43 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  v24 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v24 - v23;
                  if (__OFSUB__(v24, v23))
                  {
                    break;
                  }

                  ++v22;
                  if (!--v14)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v14)
            {
              v18 = 0;
              v33 = v43;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                v35 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  break;
                }

                ++v33;
                if (!--v14)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else
          {
            if ((v13 & 0x1000000000000000) != 0)
            {
              result = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              result = sub_1D917957C();
            }

            v17 = *result;
            if (v17 == 43)
            {
              if (v15 < 1)
              {
                goto LABEL_96;
              }

              v14 = v15 - 1;
              if (v15 != 1)
              {
                v18 = 0;
                if (!result)
                {
                  goto LABEL_63;
                }

                v25 = result + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  v27 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    break;
                  }

                  ++v25;
                  if (!--v14)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v17 == 45)
            {
              if (v15 < 1)
              {
                goto LABEL_94;
              }

              v14 = v15 - 1;
              if (v15 != 1)
              {
                v18 = 0;
                if (!result)
                {
                  goto LABEL_63;
                }

                v19 = result + 1;
                while (1)
                {
                  v20 = *v19 - 48;
                  if (v20 > 9)
                  {
                    break;
                  }

                  v21 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    break;
                  }

                  v18 = v21 - v20;
                  if (__OFSUB__(v21, v20))
                  {
                    break;
                  }

                  ++v19;
                  if (!--v14)
                  {
                    goto LABEL_72;
                  }
                }
              }
            }

            else if (v15)
            {
              v18 = 0;
              if (!result)
              {
LABEL_63:
                LOBYTE(v14) = 0;
                goto LABEL_72;
              }

              while (1)
              {
                v31 = *result - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  break;
                }

                ++result;
                if (!--v15)
                {
                  goto LABEL_63;
                }
              }
            }
          }

          v18 = 0;
          LOBYTE(v14) = 1;
LABEL_72:
          v44 = v14;
          v36 = v14;
          sub_1D8D02FE4(v13, v12, 1);
          if (v36)
          {
            goto LABEL_4;
          }

LABEL_73:
          v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          result = sub_1D8D02FCC(v13, v12, 1);
          if (v37)
          {
            MEMORY[0x1DA729B90](result);
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v40 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D917863C();
            }

            result = sub_1D917869C();
            v2 = v45;
          }
        }
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

LABEL_89:

    return 0;
  }

LABEL_88:
  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_89;
  }

LABEL_83:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x1DA72AA90](0, v2);
    goto LABEL_86;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v2 + 32);
LABEL_86:
    v42 = v41;

    return v42;
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(intent:sourceEvent:previousMediaIdentifier:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v109 = *MEMORY[0x1E69E9840];
  v8 = sub_1D9176EAC();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v83 - v15;
  v93 = *a2;
  v16 = *a3;
  v17 = *(a3 + 8);
  v18 = *(a3 + 16);
  v19 = *(a3 + 24);
  v20 = *(a3 + 32);
  v21 = type metadata accessor for PlaybackIntent(0);
  v22 = v21[6];
  v100 = a1;
  v23 = (a1 + v22);
  v24 = *(v23 + 3);
  v106[1] = *(v23 + 4);
  *&v108[13] = *(v23 + 125);
  v25 = *(v23 + 7);
  v26 = *(v23 + 5);
  v27 = *(v23 + 4);
  v107 = *(v23 + 6);
  *v108 = v25;
  v106[2] = v26;
  v106[0] = *(v23 + 3);
  *(&v105[2] + 7) = v26;
  *(&v105[3] + 7) = v107;
  *(&v105[4] + 7) = *(v23 + 7);
  *(v105 + 7) = v24;
  v28 = *v23;
  v29 = *v23;
  *(&v105[5] + 4) = *(v23 + 125);
  *(&v105[1] + 7) = v27;
  if (v108[16] != 2 && v29 == 3 && v25 == 6)
  {
    v32 = 0;
  }

  else
  {
    v32 = v28;
  }

  LOBYTE(v102) = v32;
  *(&v102 + 1) = v16;
  *&v103 = v17;
  *(&v103 + 1) = v18;
  *v104 = v19;
  v104[8] = v20;
  *&v104[41] = v105[2];
  *&v104[57] = v105[3];
  *&v104[73] = v105[4];
  *&v104[85] = *(&v105[4] + 12);
  *&v104[9] = v105[0];
  *&v104[25] = v105[1];
  v33 = objc_opt_self();
  sub_1D8D088B4(v106, v101, &qword_1ECAB9F78, qword_1D91B16D0);
  v97 = v17;
  v98 = v16;
  v95 = v19;
  v96 = v18;
  v94 = v20;
  sub_1D8D0B37C(v16, v17, v18, v19, v20);
  v34 = [v33 sharedAccountStore];
  v101[0] = 0;
  v35 = [v34 activeStoreAccountWithError_];

  v36 = v101[0];
  if (v35)
  {
    v88 = v35;
  }

  else
  {
    v37 = v36;
    v38 = sub_1D9176A6C();

    swift_willThrow();
    v88 = 0;
  }

  v39 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v40 = a4 + v39[9];
  v41 = *(v100 + 8);
  v86 = *v100;
  v42 = v86;
  v84 = v41;
  v43 = *(v100 + 16);
  v44 = *(v100 + 24);
  v85 = *(v100 + 32);
  v45 = v100;
  v46 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v47 = v99;
  (*(*(v46 - 8) + 56))(v99, 1, 1, v46);
  v87 = *(v45 + v21[7]);
  v48 = v89;
  sub_1D8D088B4(v47, v89, &qword_1ECAB9F70, qword_1D91B1680);
  v49 = v84;
  *v40 = v42;
  *(v40 + 8) = v49;
  *(v40 + 16) = v43;
  *(v40 + 24) = v44;
  LOBYTE(v42) = v85;
  *(v40 + 32) = v85;
  v50 = v40 + v21[6];
  v51 = *&v104[80];
  *(v50 + 96) = *&v104[64];
  *(v50 + 112) = v51;
  *(v50 + 125) = *&v104[93];
  v52 = *&v104[16];
  *(v50 + 32) = *v104;
  *(v50 + 48) = v52;
  v53 = *&v104[48];
  *(v50 + 64) = *&v104[32];
  *(v50 + 80) = v53;
  v54 = v103;
  *v50 = v102;
  *(v50 + 16) = v54;
  sub_1D8D088B4(v48, v40 + v21[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D092C0(v86, v49, v43, v44, v42);
  sub_1D8CFEB60(&v102, v101);
  v55 = v87;

  v56 = v90;
  sub_1D9176E9C();
  v57 = sub_1D9176E5C();
  v59 = v58;
  (*(v91 + 8))(v56, v92);
  sub_1D8D08A50(v48, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D8D08A50(v99, &qword_1ECAB9F70, qword_1D91B1680);
  v60 = (v40 + v21[8]);
  *v60 = v57;
  v60[1] = v59;
  *(v40 + v21[7]) = v55;
  *(v40 + v21[9]) = 0;
  (*(*(v21 - 1) + 56))(v40, 0, 1, v21);
  v61 = v100;
  sub_1D8D088B4(v100 + v21[5], a4 + v39[11], &qword_1ECAB9F70, qword_1D91B1680);
  v62 = PlaybackIntent.initialItemPlayheadOverride.getter();
  v64 = v63;
  v65 = v39[18];
  v66 = type metadata accessor for AccountResolver();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  v70 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v71 = sub_1D917734C();
  (*(*(v71 - 8) + 56))(v69 + v70, 1, 1, v71);
  v72 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v69 + v72) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a4 + v65) = v69;
  v73 = MEMORY[0x1E69E7CC0];
  v74 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);
  sub_1D8D0DB70(&v102);
  sub_1D90E6538(v61, type metadata accessor for PlaybackIntent);
  *a4 = v73;
  *(a4 + 8) = v74;
  *(a4 + 16) = 0;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  v76 = v88;
  *(a4 + 72) = 0;
  *(a4 + 80) = v76;
  *(a4 + 88) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + v39[14]) = v93;
  *(a4 + v39[10]) = v73;
  v77 = a4 + v39[12];
  *v77 = v62;
  *(v77 + 8) = v64 & 1;
  *(a4 + v39[15]) = v73;
  v78 = a4 + v39[16];
  *v78 = 0;
  *(v78 + 8) = 1;
  v79 = a4 + v39[17];
  v80 = v97;
  *v79 = v98;
  *(v79 + 8) = v80;
  v81 = v95;
  *(v79 + 16) = v96;
  *(v79 + 24) = v81;
  *(v79 + 32) = v94;
  *(a4 + v39[13]) = 4;
  v82 = *MEMORY[0x1E69E9840];
  return result;
}

double PodcastsMediaLibrary.PlaybackQueueContext.init(mediaQueryIdentifiers:initialIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = [objc_opt_self() sharedAccountStore];
  v33[0] = 0;
  v9 = [v8 activeStoreAccountWithError_];

  v10 = v33[0];
  if (!v9)
  {
    v11 = v10;
    v12 = sub_1D9176A6C();

    swift_willThrow();
    v9 = 0;
  }

  v13 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v14 = v13[9];
  v15 = type metadata accessor for PlaybackIntent(0);
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  v16 = v13[11];
  v17 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  v18 = v13[18];
  v19 = type metadata accessor for AccountResolver();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v24 = sub_1D917734C();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  *(v22 + v25) = [objc_allocWithZone(MEMORY[0x1E698D198]) init];
  *(a4 + v18) = v22;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = sub_1D90E6070(MEMORY[0x1E69E7CC0]);
  *a4 = v26;
  *(a4 + 8) = v27;
  *(a4 + 16) = 0;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 80) = v9;
  *(a4 + 88) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + v13[14]) = 0;
  *(a4 + v13[10]) = v26;
  v29 = a4 + v13[12];
  *v29 = 0;
  *(v29 + 8) = 1;
  *(a4 + v13[15]) = a1;
  v30 = a4 + v13[16];
  *v30 = a2;
  *(v30 + 8) = a3 & 1;
  v31 = a4 + v13[17];
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = -1;
  *(a4 + v13[13]) = 4;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D90E28D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0) - 8) + 64) + 15;
  v6[4] = swift_task_alloc();
  v8 = type metadata accessor for PlaybackIntent(0);
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[7] = v11;
  v12 = swift_task_alloc();
  v6[8] = v12;
  *v12 = v6;
  v12[1] = sub_1D90E2A08;

  return PlaybackIntent.resolvedIntent()(v11);
}

uint64_t sub_1D90E2A08()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D90E2D20;
  }

  else
  {
    v3 = sub_1D90E2B1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D90E2B1C()
{
  sub_1D91787EC();
  *(v0 + 80) = sub_1D91787DC();
  v2 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D90E2BB0, v2, v1);
}

uint64_t sub_1D90E2BB0()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  sub_1D90E6430(v2, v5, type metadata accessor for PlaybackIntent);
  (*(v3 + 56))(v5, 0, 1, v4);
  v7(v5);
  sub_1D8D08A50(v5, &qword_1ECABA6C0, &qword_1D91B64E0);

  return MEMORY[0x1EEE6DFA0](sub_1D90E2C98, 0, 0);
}

uint64_t sub_1D90E2C98()
{
  sub_1D90E6538(v0[7], type metadata accessor for PlaybackIntent);
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D90E2D20()
{
  if (qword_1ECAB0DB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0DC0);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Unable to resolve intent: %@", v7, 0xCu);
    sub_1D8D08A50(v8, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  sub_1D91787EC();
  *(v0 + 88) = sub_1D91787DC();
  v12 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D90E2EE8, v12, v11);
}

uint64_t sub_1D90E2EE8()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v3 + 56))(v4, 1, 1, v2);
  v6(v4);
  sub_1D8D08A50(v4, &qword_1ECABA6C0, &qword_1D91B64E0);

  return MEMORY[0x1EEE6DFA0](sub_1D90E2FB0, 0, 0);
}

uint64_t sub_1D90E2FB0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

void PodcastsMediaLibrary.PlaybackQueueContext.resolvedContext(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = *(v2 + *(v9 + 80));
  v11 = *(v3 + 72);
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  v14 = *(v3 + 40);
  v24 = *(v3 + 56);
  v25 = v14;
  v26[0] = v14;
  v26[1] = v24;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  sub_1D90E6430(v3, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1D90E6598(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a1;
  v17[1] = a2;
  v18 = v25;
  v19 = v13;

  v20 = v18;

  v21 = v12;
  sub_1D90B5D9C(v26, sub_1D90E6498, v16);

  v22 = v28;
  v23 = v29;
}

uint64_t sub_1D90E320C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v109 = a4;
  v107 = a3;
  v111 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v98 - v14;
  v15 = type metadata accessor for PlaybackIntent(0);
  v110 = *(v15 - 8);
  v16 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v103 = v20;
  v104 = &v98 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v98 - v22;
  v23 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v98 - v32;
  v35 = *a1;
  v34 = *(a1 + 8);
  v36 = *(a1 + 16);
  v37 = *(a1 + 17);
  v108 = v15;
  if (v37)
  {
    v100 = v31;
    v38 = v36;
    v39 = v34;
    v106 = v23;
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v40 = sub_1D917744C();
    __swift_project_value_buffer(v40, qword_1ECAB0D50);
    v41 = v35;
    sub_1D90B822C(v35);
    v42 = sub_1D917741C();
    v43 = sub_1D9178D1C();
    sub_1D90B823C(v41, v39, v38, 1);
    v44 = v24;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      sub_1D90E6EA0();
      swift_allocError();
      *v47 = v41;
      sub_1D90B822C(v41);
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_1D8CEC000, v42, v43, "Error resolving PlaybackQueueContext: %@", v45, 0xCu);
      sub_1D8D08A50(v46, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v46, -1, -1);
      MEMORY[0x1DA72CB90](v45, -1, -1);
    }

    v49 = v111;
    sub_1D90E6430(v111, v33, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v50 = v100;
    sub_1D90E6430(v33, v100, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v51 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v52 = swift_allocObject();
    sub_1D90E6598(v33, v52 + v51, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v53 = (v52 + ((v25 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
    v54 = v107;
    v55 = v109;
    *v53 = v107;
    v53[1] = v55;
    v56 = v101;
    sub_1D8D088B4(v49 + *(v106 + 36), v101, &qword_1ECABA6C0, &qword_1D91B64E0);
    v57 = v110;
    v58 = v108;
    LODWORD(v51) = (*(v110 + 48))(v56, 1, v108);

    if (v51 == 1)
    {
      sub_1D8D08A50(v56, &qword_1ECABA6C0, &qword_1D91B64E0);
      v59 = v102;
      (*(v57 + 56))(v102, 1, 1, v58);
      sub_1D90E3CA0(v59, v50, v54, v55);

      sub_1D8D08A50(v59, &qword_1ECABA6C0, &qword_1D91B64E0);
      v60 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext;
      v61 = v50;
    }

    else
    {
      sub_1D90E6538(v50, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      v80 = v99;
      sub_1D90E6598(v56, v99, type metadata accessor for PlaybackIntent);
      v81 = sub_1D917886C();
      v82 = v105;
      (*(*(v81 - 8) + 56))(v105, 1, 1, v81);
      v83 = v104;
      sub_1D90E6430(v80, v104, type metadata accessor for PlaybackIntent);
      v84 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v85 = (v103 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      *(v86 + 24) = 0;
      sub_1D90E6598(v83, v86 + v84, type metadata accessor for PlaybackIntent);
      v87 = (v86 + v85);
      *v87 = sub_1D90E68C0;
      v87[1] = v52;

      sub_1D8E91268(0, 0, v82, &unk_1D91B6600, v86);

      v61 = v80;
      v60 = type metadata accessor for PlaybackIntent;
    }
  }

  else
  {
    v62 = v36;
    sub_1D90E6430(v111, v28, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    sub_1D90E6430(v28, v106, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v63 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v64 = (v63 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v63 + v25 + 31) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    sub_1D90E6598(v28, v66 + v63, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v67 = v66 + v64;
    v68 = v35;
    *v67 = v35;
    *(v67 + 8) = v34;
    v69 = v62;
    v70 = v62 & 1;
    *(v67 + 16) = v62 & 1;
    v101 = v66;
    v71 = (v66 + v65);
    v73 = v107;
    v72 = v108;
    v74 = v109;
    *v71 = v107;
    v71[1] = v74;
    v75 = v111 + *(v23 + 36);
    v76 = v100;
    sub_1D8D088B4(v75, v100, &qword_1ECABA6C0, &qword_1D91B64E0);
    v77 = v110;
    if ((*(v110 + 48))(v76, 1, v72) == 1)
    {
      sub_1D90E6744(v68, v34, v69, 0);

      sub_1D8D08A50(v76, &qword_1ECABA6C0, &qword_1D91B64E0);
      v78 = v102;
      (*(v77 + 56))(v102, 1, 1, v72);
      v79 = v106;
      sub_1D90E4128(v78, v106, v68, v34, v70, v73, v74);

      sub_1D8D08A50(v78, &qword_1ECABA6C0, &qword_1D91B64E0);
      v60 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext;
      v61 = v79;
    }

    else
    {
      sub_1D90E6744(v68, v34, v69, 0);

      sub_1D90E6538(v106, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      v88 = v98;
      sub_1D90E6598(v76, v98, type metadata accessor for PlaybackIntent);
      v89 = sub_1D917886C();
      v90 = v105;
      (*(*(v89 - 8) + 56))(v105, 1, 1, v89);
      v91 = v104;
      sub_1D90E6430(v88, v104, type metadata accessor for PlaybackIntent);
      v92 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v93 = (v103 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = swift_allocObject();
      *(v94 + 16) = 0;
      *(v94 + 24) = 0;
      sub_1D90E6598(v91, v94 + v92, type metadata accessor for PlaybackIntent);
      v95 = (v94 + v93);
      v96 = v101;
      *v95 = sub_1D90E6690;
      v95[1] = v96;

      sub_1D8E91268(0, 0, v90, &unk_1D91B65F8, v94);

      v61 = v88;
      v60 = type metadata accessor for PlaybackIntent;
    }
  }

  return sub_1D90E6538(v61, v60);
}

uint64_t sub_1D90E3CA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v75 = a4;
  v76 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6D8, &qword_1D91B6610);
  v6 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v60 = &v49 - v7;
  v8 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a2;
  v73 = *(a2 + 16);
  v69 = *(a2 + 88);
  sub_1D8D088B4(a1, &v12[v9[11]], &qword_1ECABA6C0, &qword_1D91B64E0);
  v72 = *(a2 + v9[16]);
  v13 = v9[13];
  v14 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = *(a2 + 24);
  v70 = *(a2 + 40);
  v71 = v16;
  v58 = v70;
  v55 = *(&v16 + 1);
  v17 = *(a2 + 56);
  v67 = *(a2 + 72);
  v68 = v17;
  v57 = v17;
  v59 = v67;
  v15(&v12[v13], 1, 1, v14);
  v18 = v9[15];
  v19 = (a2 + v9[14]);
  v65 = *v19;
  v52 = *(a2 + v9[12]);
  v63 = *(v19 + 8);
  v20 = v9[18];
  v53 = *(a2 + v9[17]);
  v62 = *(a2 + v20);
  v61 = *(a2 + v20 + 8);
  v21 = v9[19];
  v56 = v9[20];
  v22 = a2 + v21;
  v24 = *v22;
  v23 = *(v22 + 8);
  v64 = *(a2 + v18);
  v26 = *(v22 + 16);
  v25 = *(v22 + 24);
  v54 = *(v22 + 32);
  v27 = type metadata accessor for AccountResolver();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v32 = sub_1D917734C();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  v51 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  v50 = objc_allocWithZone(MEMORY[0x1E698D198]);

  v33 = v66;

  v34 = v58;

  v35 = *(&v59 + 1);
  v36 = v69;
  v37 = v69;
  v38 = v54;
  sub_1D8D0B37C(v24, v23, v26, v25, v54);
  v39 = [v50 init];
  *(v30 + v51) = v39;
  *&v12[v56] = v30;
  v40 = sub_1D90E6070(v33);
  *v12 = v33;
  *(v12 + 1) = v40;
  v41 = v72;
  v12[16] = v73;
  v42 = v68;
  *(v12 + 72) = v67;
  *(v12 + 56) = v42;
  *(v12 + 11) = v36;
  v43 = v71;
  *(v12 + 40) = v70;
  *(v12 + 24) = v43;
  v12[v9[16]] = v41;
  *&v12[v9[12]] = v52;
  v44 = &v12[v9[14]];
  *v44 = v65;
  v44[8] = v63;
  *&v12[v9[17]] = v53;
  v45 = &v12[v9[18]];
  *v45 = v62;
  v45[8] = v61;
  v46 = &v12[v9[19]];
  *v46 = v24;
  *(v46 + 1) = v23;
  *(v46 + 2) = v26;
  *(v46 + 3) = v25;
  v46[32] = v38;
  v12[v9[15]] = v64;
  v47 = v60;
  sub_1D90E6430(v12, v60, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  swift_storeEnumTagMultiPayload();
  v76(v47);
  sub_1D8D08A50(v47, &qword_1ECABA6D8, &qword_1D91B6610);
  return sub_1D90E6538(v12, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
}

uint64_t sub_1D90E4128(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, void (*a6)(uint64_t), uint64_t a7)
{
  v77 = a7;
  v78 = a6;
  v74 = a3;
  v75 = a4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6D8, &qword_1D91B6610);
  v10 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v57 - v11;
  v12 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a2 + 16) | a5;
  v19 = *(a2 + 56);
  v73 = *(a2 + 64);
  v64 = *(a2 + 72);
  sub_1D8D088B4(a1, &v16[v13[11]], &qword_1ECABA6C0, &qword_1D91B64E0);
  v71 = *(a2 + v13[16]);
  v20 = v13[13];
  v21 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v22 = *(*(v21 - 8) + 56);
  v70 = v18 & 1;
  v23 = *(a2 + 24);
  v81 = *(a2 + 40);
  v82 = v23;
  v22(&v16[v20], 1, 1, v21);
  v24 = v13[15];
  v25 = (a2 + v13[14]);
  v69 = *v25;
  v59 = *(a2 + v13[12]);
  v67 = *(v25 + 8);
  v26 = v13[18];
  v61 = *(a2 + v13[17]);
  v66 = *(a2 + v26);
  v65 = *(a2 + v26 + 8);
  v27 = v13[19];
  v63 = v13[20];
  v28 = a2 + v27;
  v29 = *(v28 + 8);
  v62 = *v28;
  v68 = *(a2 + v24);
  v30 = *(v28 + 16);
  v80 = *(v28 + 24);
  v79 = *(v28 + 32);
  v31 = type metadata accessor for AccountResolver();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v60 = v34;
  v35 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver____lazy_storage___signpostID;
  v36 = sub_1D917734C();
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  v58 = OBJC_IVAR____TtC18PodcastsFoundation15AccountResolver_multiUserConnection;
  v57 = objc_allocWithZone(MEMORY[0x1E698D198]);
  v37 = v81;

  v38 = v37;

  v39 = v64;

  v40 = v74;
  v41 = v74;
  v42 = v75;
  v43 = v75;
  v44 = v62;
  sub_1D8D0B37C(v62, v29, v30, v80, v79);
  v45 = [v57 init];
  v46 = v60;
  *(v60 + v58) = v45;
  *&v16[v63] = v46;
  v47 = sub_1D90E6070(v17);
  *v16 = v17;
  *(v16 + 1) = v47;
  v48 = v71;
  v16[16] = v70;
  v49 = v73;
  *(v16 + 7) = v19;
  *(v16 + 8) = v49;
  *(v16 + 9) = v39;
  *(v16 + 10) = v40;
  *(v16 + 11) = v42;
  v50 = v82;
  *(v16 + 40) = v81;
  *(v16 + 24) = v50;
  v16[v13[16]] = v48;
  *&v16[v13[12]] = v59;
  v51 = &v16[v13[14]];
  *v51 = v69;
  v51[8] = v67;
  *&v16[v13[17]] = v61;
  v52 = &v16[v13[18]];
  *v52 = v66;
  v52[8] = v65;
  v53 = &v16[v13[19]];
  *v53 = v44;
  *(v53 + 1) = v29;
  v54 = v80;
  *(v53 + 2) = v30;
  *(v53 + 3) = v54;
  v53[32] = v79;
  v16[v13[15]] = v68;
  v55 = v72;
  sub_1D90E6430(v16, v72, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  swift_storeEnumTagMultiPayload();
  v78(v55);
  sub_1D8D08A50(v55, &qword_1ECABA6D8, &qword_1D91B6610);
  return sub_1D90E6538(v16, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
}

uint64_t static PodcastsMediaLibrary.PlaybackQueueContext.supportsTrackIdentifier(trackIdentifier:)(uint64_t a1, void *a2)
{

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  URLTrackIdentifier.init(string:)(v4);
  if (!v5)
  {
    LOBYTE(a2) = v7 != 0;
    if (v7)
    {
    }
  }

  return a2 & 1;
}

void PodcastsMediaLibrary.PlaybackQueueContext.request.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v234 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v226 - v5;
  v233 = type metadata accessor for PlaybackIntent(0);
  v7 = *(v233 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v231 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v230 = &v226 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v229 = &v226 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v228 = &v226 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v227 = &v226 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v236 = &v226 - v19;
  v232 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v20 = *(*(v232 - 1) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v226 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v226 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v226 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v226 - v29);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v31 = sub_1D917744C();
  __swift_project_value_buffer(v31, qword_1ECAB0D50);
  v32 = sub_1D917741C();
  v33 = sub_1D9178D1C();
  v34 = os_log_type_enabled(v32, v33);
  v235 = v1;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D8CEC000, v32, v33, "􀒖 Creating request from context", v35, 2u);
    v36 = v35;
    v2 = v235;
    MEMORY[0x1DA72CB90](v36, -1, -1);
  }

  if (*(*v2 + 16))
  {
    v37 = sub_1D917741C();
    v38 = sub_1D9178D1C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D8CEC000, v37, v38, " ╲╭ Using track identifiers", v39, 2u);
      MEMORY[0x1DA72CB90](v39, -1, -1);
    }

    sub_1D90E6430(v2, v30, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v40 = sub_1D917741C();
    v41 = sub_1D9178D1C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v246 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v44 = MEMORY[0x1DA729BD0](*v30, MEMORY[0x1E69E6158]);
      v46 = v45;
      sub_1D90E6538(v30, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      v47 = v44;
      v2 = v235;
      v48 = sub_1D8CFA924(v47, v46, &v246);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1D8CEC000, v40, v41, "  ╰ ID: %{private,mask.hash}s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1DA72CB90](v43, -1, -1);
      MEMORY[0x1DA72CB90](v42, -1, -1);
    }

    else
    {

      sub_1D90E6538(v30, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    }

    v58 = v234;
    sub_1D90E6430(v2, v27, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    PodcastsMediaLibrary.Request.init(playbackQueueContext:)(v27, v58);
    return;
  }

  v49 = v232;
  sub_1D8D088B4(v2 + v232[9], v6, &qword_1ECABA6C0, &qword_1D91B64E0);
  if ((*(v7 + 48))(v6, 1, v233) != 1)
  {
    sub_1D90E6598(v6, v236, type metadata accessor for PlaybackIntent);
    v59 = sub_1D917741C();
    v60 = sub_1D9178D1C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1D8CEC000, v59, v60, " ╲╭ 􀐚 Using intent", v61, 2u);
      MEMORY[0x1DA72CB90](v61, -1, -1);
    }

    v62 = v227;
    sub_1D90E6430(v236, v227, type metadata accessor for PlaybackIntent);
    v63 = sub_1D917741C();
    v64 = sub_1D9178D1C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v246 = v66;
      *v65 = 136315138;
      v67 = 0xE700000000000000;
      v68 = 0x7972617262696CLL;
      v69 = *(v62 + 32);
      if (v69 == 7)
      {
        v68 = 0xD00000000000001BLL;
        v67 = 0x80000001D91D59C0;
      }

      if (v69 == 6)
      {
        v68 = 0x657551616964656DLL;
        v67 = 0xEA00000000007972;
      }

      v70 = 0xE700000000000000;
      v71 = 0x6E6F6974617473;
      if (v69 != 4)
      {
        v71 = 0x746F687370616E73;
        v70 = 0xE800000000000000;
      }

      if (*(v62 + 32) <= 5u)
      {
        v68 = v71;
        v67 = v70;
      }

      v72 = 0xED00007365646F73;
      v73 = 0x6970456C61636F6CLL;
      if (v69 != 2)
      {
        v73 = 0x646F506C61636F6CLL;
        v72 = 0xEC00000074736163;
      }

      v74 = 0xE700000000000000;
      v75 = 0x74736163646F70;
      if (*(v62 + 32))
      {
        v75 = 0x7365646F73697065;
        v74 = 0xE800000000000000;
      }

      if (*(v62 + 32) <= 1u)
      {
        v73 = v75;
        v72 = v74;
      }

      if (*(v62 + 32) <= 3u)
      {
        v76 = v73;
      }

      else
      {
        v76 = v68;
      }

      if (*(v62 + 32) <= 3u)
      {
        v77 = v72;
      }

      else
      {
        v77 = v67;
      }

      v78 = v66;
      sub_1D90E6538(v62, type metadata accessor for PlaybackIntent);
      v79 = sub_1D8CFA924(v76, v77, &v246);

      *(v65 + 4) = v79;
      _os_log_impl(&dword_1D8CEC000, v63, v64, "  |  \\╭ identifier type: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1DA72CB90](v78, -1, -1);
      MEMORY[0x1DA72CB90](v65, -1, -1);
    }

    else
    {

      sub_1D90E6538(v62, type metadata accessor for PlaybackIntent);
    }

    v80 = v228;
    sub_1D90E6430(v236, v228, type metadata accessor for PlaybackIntent);
    v81 = sub_1D917741C();
    v82 = sub_1D9178D1C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v241 = v84;
      *v83 = 136315138;
      v85 = *(v80 + 8);
      v86 = *(v80 + 16);
      v87 = *(v80 + 24);
      v88 = *(v80 + 32);
      *&v246 = *v80;
      *(&v246 + 1) = v85;
      *&v247 = v86;
      *(&v247 + 1) = v87;
      LOBYTE(v248[0]) = v88;
      sub_1D8D092C0(v246, v85, v86, v87, v88);
      v89 = sub_1D917826C();
      v91 = v90;
      sub_1D90E6538(v80, type metadata accessor for PlaybackIntent);
      v92 = sub_1D8CFA924(v89, v91, &v241);

      *(v83 + 4) = v92;
      _os_log_impl(&dword_1D8CEC000, v81, v82, "  |   ╰ identifiers: %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1DA72CB90](v84, -1, -1);
      MEMORY[0x1DA72CB90](v83, -1, -1);
    }

    else
    {

      sub_1D90E6538(v80, type metadata accessor for PlaybackIntent);
    }

    v93 = v229;
    sub_1D90E6430(v236, v229, type metadata accessor for PlaybackIntent);
    v94 = sub_1D917741C();
    v95 = sub_1D9178D1C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v246 = v97;
      *v96 = 136446210;
      LOBYTE(v241) = *(v93 + *(v233 + 24));
      v98 = sub_1D917826C();
      v99 = v93;
      v100 = v98;
      v102 = v101;
      sub_1D90E6538(v99, type metadata accessor for PlaybackIntent);
      v103 = sub_1D8CFA924(v100, v102, &v246);

      *(v96 + 4) = v103;
      _os_log_impl(&dword_1D8CEC000, v94, v95, "  │ Origin: %{public}s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v97);
      MEMORY[0x1DA72CB90](v97, -1, -1);
      MEMORY[0x1DA72CB90](v96, -1, -1);
    }

    else
    {

      sub_1D90E6538(v93, type metadata accessor for PlaybackIntent);
    }

    v104 = v230;
    sub_1D90E6430(v236, v230, type metadata accessor for PlaybackIntent);
    v105 = sub_1D917741C();
    v106 = sub_1D9178D1C();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v107 = 136315138;
      v109 = v104 + *(v233 + 24);
      *(&v248[2] + 13) = *(v109 + 125);
      v110 = *(v109 + 112);
      v111 = *(v109 + 80);
      v112 = *(v109 + 64);
      v248[1] = *(v109 + 96);
      v248[2] = v110;
      v113 = *(v109 + 48);
      v247 = *(v109 + 64);
      v248[0] = v111;
      v246 = v113;
      v243 = v111;
      v244 = v248[1];
      v245[0] = *(v109 + 112);
      v237 = v108;
      *(v245 + 13) = *(v109 + 125);
      v241 = v113;
      v242 = v112;
      v114 = v104;
      sub_1D8D088B4(&v246, v238, &qword_1ECAB9F78, qword_1D91B16D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F78, qword_1D91B16D0);
      v115 = sub_1D917826C();
      v117 = v116;
      sub_1D90E6538(v114, type metadata accessor for PlaybackIntent);
      v118 = sub_1D8CFA924(v115, v117, &v237);

      *(v107 + 4) = v118;
      _os_log_impl(&dword_1D8CEC000, v105, v106, "  │ Settings: %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      MEMORY[0x1DA72CB90](v108, -1, -1);
      MEMORY[0x1DA72CB90](v107, -1, -1);
    }

    else
    {

      sub_1D90E6538(v104, type metadata accessor for PlaybackIntent);
    }

    v119 = v235;
    v120 = v231;
    sub_1D90E6430(v236, v231, type metadata accessor for PlaybackIntent);
    v121 = sub_1D917741C();
    v122 = sub_1D9178D1C();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *&v246 = v124;
      *v123 = 136446210;
      v125 = v233;
      v126 = *(v120 + *(v233 + 28));
      sub_1D8CF1E88();
      v127 = sub_1D9178AAC();
      v129 = v128;
      sub_1D90E6538(v120, type metadata accessor for PlaybackIntent);
      v130 = sub_1D8CFA924(v127, v129, &v246);

      *(v123 + 4) = v130;
      _os_log_impl(&dword_1D8CEC000, v121, v122, "  ╰ Options: %{public}s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      MEMORY[0x1DA72CB90](v124, -1, -1);
      MEMORY[0x1DA72CB90](v123, -1, -1);
    }

    else
    {

      sub_1D90E6538(v120, type metadata accessor for PlaybackIntent);
      v125 = v233;
    }

    v132 = *v236;
    v131 = *(v236 + 8);
    v133 = *(v236 + 16);
    v134 = *(v236 + 24);
    v135 = *(v236 + 32);
    v136 = *(v236 + *(v125 + 28));
    v137 = *(v136 + 16);
    v230 = v131;
    v233 = v133;
    LODWORD(v231) = v135;
    if (v137)
    {
      v229 = v134;
      v138 = *(v136 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B390](2);
      v139 = sub_1D9179E1C();
      v140 = -1 << *(v136 + 32);
      v141 = v139 & ~v140;
      if ((*(v136 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141))
      {
        v142 = v131;
        v143 = ~v140;
        v228 = v132;
        sub_1D8D092C0(v132, v142, v233, v229, v231);
        do
        {
          v144 = *(v136 + 48) + 24 * v141;
          v145 = *v144;
          v146 = *(v144 + 8);
          v147 = *(v144 + 16);
          if (v147 > 1)
          {
            if (v147 != 2 && !(v145 ^ 1 | v146))
            {
              v151 = v119;
              sub_1D8D02FCC(v145, v146, 3);
              v235 = 1;
              sub_1D8D02FCC(1, 0, 3);
              goto LABEL_74;
            }
          }

          else if (*(v144 + 16))
          {
            v148 = *v144;
            v149 = *(v144 + 8);
            v150 = *(v144 + 16);

            LOBYTE(v147) = v150;
            v119 = v235;
            v146 = v149;
            v145 = v148;
          }

          sub_1D8D02FCC(v145, v146, v147);
          sub_1D8D02FCC(1, 0, 3);
          v141 = (v141 + 1) & v143;
        }

        while (((*(v136 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) != 0);
        v151 = v119;
        v235 = 0;
LABEL_74:
        v186 = v228;
        v173 = v229;
        goto LABEL_77;
      }

      v151 = v119;
      v170 = v132;
      v171 = v131;
      v172 = v233;
      v173 = v229;
      v174 = v229;
      v175 = v231;
    }

    else
    {
      v151 = v119;
      v170 = v132;
      v171 = v131;
      v172 = v133;
      v173 = v134;
      v174 = v134;
      v175 = v135;
    }

    sub_1D8D092C0(v170, v171, v172, v174, v175);
    v235 = 0;
    v186 = v132;
LABEL_77:
    v187 = *(v125 + 24);
    v188 = v236;
    v189 = v236 + v187;
    v190 = *(v189 + 112);
    v191 = *(v189 + 64);
    v192 = *(v189 + 80);
    v239 = *(v189 + 96);
    v240[0] = v190;
    v193 = *(v189 + 64);
    v238[0] = *(v189 + 48);
    v238[1] = v193;
    v238[2] = v192;
    *(v240 + 13) = *(v189 + 125);
    v194 = v151 + v232[17];
    v195 = *v194;
    v196 = *(v194 + 8);
    v197 = *(v194 + 16);
    v198 = *(v194 + 24);
    v199 = *(v194 + 32);
    v241 = v238[0];
    v242 = v191;
    v200 = *(v189 + 112);
    *(v245 + 13) = *(v189 + 125);
    v244 = v239;
    v245[0] = v200;
    v243 = v192;
    sub_1D8D088B4(v238, &v246, &qword_1ECAB9F78, qword_1D91B16D0);
    sub_1D8D0B37C(v195, v196, v197, v198, v199);
    sub_1D90E6538(v188, type metadata accessor for PlaybackIntent);
    *&v246 = v186;
    *(&v246 + 1) = v230;
    *&v247 = v233;
    *(&v247 + 1) = v173;
    LOBYTE(v248[0]) = v231;
    *(&v248[0] + 1) = 0;
    v248[1] = 0uLL;
    v248[4] = v243;
    v248[5] = v244;
    v248[6] = v245[0];
    *(&v248[6] + 13) = *(v245 + 13);
    v248[2] = v241;
    v248[3] = v242;
    *(&v248[7] + 1) = v235;
    *&v249 = 0;
    WORD4(v249) = 2;
    *&v250 = v195;
    *(&v250 + 1) = v196;
    *&v251 = v197;
    *(&v251 + 1) = v198;
    v252 = v199;
    nullsub_1(&v246, v201, v202, v203);
    v204 = v250;
    v205 = v234;
    *(v234 + 160) = v249;
    *(v205 + 176) = v204;
    *(v205 + 192) = v251;
    *(v205 + 208) = v252;
    v206 = v248[5];
    *(v205 + 96) = v248[4];
    *(v205 + 112) = v206;
    v207 = v248[7];
    *(v205 + 128) = v248[6];
    *(v205 + 144) = v207;
    v208 = v248[1];
    *(v205 + 32) = v248[0];
    *(v205 + 48) = v208;
    v209 = v248[3];
    *(v205 + 64) = v248[2];
    *(v205 + 80) = v209;
    v210 = v246;
    v211 = v247;
LABEL_78:
    *v205 = v210;
    *(v205 + 16) = v211;
    return;
  }

  sub_1D8D08A50(v6, &qword_1ECABA6C0, &qword_1D91B64E0);
  v50 = *(v2 + v49[10]);
  if (*(v50 + 16))
  {
    v51 = sub_1D917741C();
    v52 = sub_1D9178D1C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D8CEC000, v51, v52, " ╲╭ Using restorable snapshot", v53, 2u);
      MEMORY[0x1DA72CB90](v53, -1, -1);
    }

    sub_1D90E6430(v2, v24, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v54 = sub_1D917741C();
    v55 = sub_1D9178D1C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134349056;
      v57 = *(*&v24[v232[10]] + 16);
      sub_1D90E6538(v24, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
      *(v56 + 4) = v57;
      _os_log_impl(&dword_1D8CEC000, v54, v55, "  ╰ Items in snapshot: %{public}ld", v56, 0xCu);
      MEMORY[0x1DA72CB90](v56, -1, -1);
    }

    else
    {
      sub_1D90E6538(v24, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    }

    v246 = v50;
    v247 = 0uLL;
    LOBYTE(v248[0]) = 5;
    *(v248 + 8) = 0u;
    *(&v248[1] + 8) = 0u;
    *(&v248[2] + 8) = 0u;
    *(&v248[3] + 8) = 0u;
    *(&v248[4] + 8) = 0u;
    *(&v248[5] + 8) = 0u;
    *(&v248[6] + 1) = 0;
    BYTE4(v248[7]) = 0;
    LODWORD(v248[7]) = 2;
    *(&v248[7] + 1) = 0;
    *&v249 = 0;
    WORD4(v249) = 2;
    v250 = 0u;
    v251 = 0u;
    v252 = -1;
    nullsub_1(&v246, v176, v177, v178);
    v179 = v250;
    v180 = v234;
    *(v234 + 160) = v249;
    *(v180 + 176) = v179;
    *(v180 + 192) = v251;
    *(v180 + 208) = v252;
    v181 = v248[5];
    *(v180 + 96) = v248[4];
    *(v180 + 112) = v181;
    v182 = v248[7];
    *(v180 + 128) = v248[6];
    *(v180 + 144) = v182;
    v183 = v248[1];
    *(v180 + 32) = v248[0];
    *(v180 + 48) = v183;
    v184 = v248[3];
    *(v180 + 64) = v248[2];
    *(v180 + 80) = v184;
    v185 = v247;
    *v180 = v246;
    *(v180 + 16) = v185;

    return;
  }

  v152 = *(v2 + v49[15]);
  if (!*(v152 + 16))
  {
    sub_1D90DCCC4(&v246);
    v212 = v250;
    v205 = v234;
    *(v234 + 160) = v249;
    *(v205 + 176) = v212;
    *(v205 + 192) = v251;
    *(v205 + 208) = v252;
    v213 = v248[5];
    *(v205 + 96) = v248[4];
    *(v205 + 112) = v213;
    v214 = v248[7];
    *(v205 + 128) = v248[6];
    *(v205 + 144) = v214;
    v215 = v248[1];
    *(v205 + 32) = v248[0];
    *(v205 + 48) = v215;
    v216 = v248[3];
    *(v205 + 64) = v248[2];
    *(v205 + 80) = v216;
    v210 = v246;
    v211 = v247;
    goto LABEL_78;
  }

  v153 = sub_1D917741C();
  v154 = sub_1D9178D1C();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    *v155 = 0;
    _os_log_impl(&dword_1D8CEC000, v153, v154, " ╲╭ Using identifiers from media query", v155, 2u);
    MEMORY[0x1DA72CB90](v155, -1, -1);
  }

  v156 = v226;
  sub_1D90E6430(v2, v226, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v157 = sub_1D917741C();
  v158 = sub_1D9178D1C();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    *&v246 = v160;
    *v159 = 141558275;
    *(v159 + 4) = 1752392040;
    *(v159 + 12) = 2081;
    v161 = v232;
    v162 = MEMORY[0x1DA729BD0](*(v156 + v232[15]), MEMORY[0x1E69E76D8]);
    v164 = v163;
    sub_1D90E6538(v156, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v165 = sub_1D8CFA924(v162, v164, &v246);
    v2 = v235;

    *(v159 + 14) = v165;
    _os_log_impl(&dword_1D8CEC000, v157, v158, "  ╰ Identifiers: %{private,mask.hash}s", v159, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v160);
    MEMORY[0x1DA72CB90](v160, -1, -1);
    MEMORY[0x1DA72CB90](v159, -1, -1);

    v169 = v234;
  }

  else
  {

    sub_1D90E6538(v156, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    v169 = v234;
    v161 = v232;
  }

  v217 = v2 + v161[16];
  v218 = *v217;
  v219 = *(v217 + 8);
  *&v246 = v152;
  *(&v246 + 1) = v218;
  v247 = v219;
  LOBYTE(v248[0]) = 6;
  *(v248 + 8) = 0u;
  *(&v248[1] + 8) = 0u;
  *(&v248[2] + 8) = 0u;
  *(&v248[3] + 8) = 0u;
  *(&v248[4] + 8) = 0u;
  *(&v248[5] + 8) = 0u;
  *(&v248[6] + 1) = 0;
  BYTE4(v248[7]) = 0;
  LODWORD(v248[7]) = 2;
  *(&v248[7] + 1) = 0;
  *&v249 = 0;
  WORD4(v249) = 2;
  v250 = 0u;
  v251 = 0u;
  v252 = -1;
  nullsub_1(&v246, v166, v167, v168);
  v220 = v250;
  *(v169 + 160) = v249;
  *(v169 + 176) = v220;
  *(v169 + 192) = v251;
  *(v169 + 208) = v252;
  v221 = v248[5];
  *(v169 + 96) = v248[4];
  *(v169 + 112) = v221;
  v222 = v248[7];
  *(v169 + 128) = v248[6];
  *(v169 + 144) = v222;
  v223 = v248[1];
  *(v169 + 32) = v248[0];
  *(v169 + 48) = v223;
  v224 = v248[3];
  *(v169 + 64) = v248[2];
  *(v169 + 80) = v224;
  v225 = v247;
  *v169 = v246;
  *(v169 + 16) = v225;
}

unsigned __int8 *sub_1D90E5C18(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[4];
  v2 = a1[5];

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  URLTrackIdentifier.init(string:)(v3);
  if (v4)
  {

    return 0;
  }

  if (!v35[0])
  {
    return 0;
  }

  if (!*(v35[0] + 16))
  {
    goto LABEL_27;
  }

  v5 = sub_1D8F06F8C(16);
  if ((v6 & 1) == 0)
  {
    goto LABEL_27;
  }

  v7 = (*(v35[0] + 56) + 16 * v5);
  v9 = *v7;
  v8 = v7[1];

  if (!v8)
  {
    return 0;
  }

  v11 = HIBYTE(v8) & 0xF;
  v12 = v9 & 0xFFFFFFFFFFFFLL;
  if (!((v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v9 & 0xFFFFFFFFFFFFLL))
  {
LABEL_27:

    return 0;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v15 = sub_1D8FF7E64(v9);
    v33 = v34;
    goto LABEL_72;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v35[0] = v9;
    v35[1] = v8 & 0xFFFFFFFFFFFFFFLL;
    if (v9 == 43)
    {
      if (v11)
      {
        if (--v11)
        {
          v15 = 0;
          v25 = v35 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v11)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_80:
      __break(1u);
      return result;
    }

    if (v9 != 45)
    {
      if (v11)
      {
        v15 = 0;
        v30 = v35;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v11)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v11)
    {
      if (--v11)
      {
        v15 = 0;
        v19 = v35 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v11)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_78;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1D917957C();
  }

  v14 = *result;
  if (v14 == 43)
  {
    if (v12 < 1)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v11 = v12 - 1;
    if (v12 != 1)
    {
      v15 = 0;
      if (result)
      {
        v22 = result + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            goto LABEL_70;
          }

          v24 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            goto LABEL_70;
          }

          v15 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            goto LABEL_70;
          }

          ++v22;
          if (!--v11)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_62;
    }

LABEL_70:
    v15 = 0;
    LOBYTE(v11) = 1;
    goto LABEL_71;
  }

  if (v14 != 45)
  {
    if (v12)
    {
      v15 = 0;
      if (result)
      {
        while (1)
        {
          v28 = *result - 48;
          if (v28 > 9)
          {
            goto LABEL_70;
          }

          v29 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            goto LABEL_70;
          }

          v15 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_70;
          }

          ++result;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_70;
  }

  if (v12 < 1)
  {
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v11 = v12 - 1;
  if (v12 == 1)
  {
    goto LABEL_70;
  }

  v15 = 0;
  if (result)
  {
    v16 = result + 1;
    while (1)
    {
      v17 = *v16 - 48;
      if (v17 > 9)
      {
        goto LABEL_70;
      }

      v18 = 10 * v15;
      if ((v15 * 10) >> 64 != (10 * v15) >> 63)
      {
        goto LABEL_70;
      }

      v15 = v18 - v17;
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_70;
      }

      ++v16;
      if (!--v11)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_62:
  LOBYTE(v11) = 0;
LABEL_71:
  v36 = v11;
  v33 = v11;
LABEL_72:

  if (v33)
  {
    return 0;
  }

  return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
}