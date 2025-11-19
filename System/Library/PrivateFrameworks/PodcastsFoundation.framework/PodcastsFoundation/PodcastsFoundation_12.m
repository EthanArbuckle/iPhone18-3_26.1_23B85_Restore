uint64_t sub_1D8E4A850(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ShazamSignatureRequest();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v14;
  v26 = *(a2 + 32);
  sub_1D8DAC03C(a1, v13, type metadata accessor for ShazamSignatureRequest);
  sub_1D9176E0C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4990, &unk_1D918B0F0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_1D8E50CDC(v13, v18 + *(*v18 + 120), type metadata accessor for ShazamSignatureRequest);
  *(v18 + *(*v18 + 128)) = 1;
  (*(v6 + 32))(v18 + *(*v18 + 136), v9, v5);
  v19 = *(v2 + 16);
  v22 = v25;
  v23 = v2;
  v24 = v18;
  os_unfair_lock_lock(v19 + 10);
  sub_1D8E50510(&v19[4]);
  os_unfair_lock_unlock(v19 + 10);
}

uint64_t sub_1D8E4AA64(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TTMLRequest();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v14;
  v26 = *(a2 + 32);
  sub_1D8DAC03C(a1, v13, type metadata accessor for TTMLRequest);
  sub_1D9176E0C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49A0, &qword_1D918B108);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_1D8E50CDC(v13, v18 + *(*v18 + 120), type metadata accessor for TTMLRequest);
  *(v18 + *(*v18 + 128)) = 1;
  (*(v6 + 32))(v18 + *(*v18 + 136), v9, v5);
  v19 = *(v2 + 16);
  v22 = v25;
  v23 = v2;
  v24 = v18;
  os_unfair_lock_lock(v19 + 10);
  sub_1D8E50E9C(&v19[4]);
  os_unfair_lock_unlock(v19 + 10);
}

void sub_1D8E4AC78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ArtworkRequest.key.getter();
  v8 = sub_1D8F7E958(v7);

  if (v8)
  {
    v9 = *(v8 + *(*v8 + 128));

    v10 = a1[1];
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_43;
    }

    a1[1] = v12;
  }

  v13 = *(a4 + *(*a4 + 128));
  v14 = *a1;
  if (*a1 < v13)
  {
    return;
  }

  v51 = *(*a4 + 128);
  v15 = a1[2];
  if (v13 == v14)
  {
    v16 = a1[2];

    v15 = MEMORY[0x1E69E7CC8];
    a1[1] = 0;
    a1[2] = v15;
LABEL_29:
    v39 = *(a4 + v51);
    v40 = a1[1];
    v11 = __CFADD__(v40, v39);
    v41 = v40 + v39;
    if (v11)
    {
      goto LABEL_44;
    }

    a1[1] = v41;
    v42 = a1;
    v43 = ArtworkRequest.key.getter();
    if ((v15 & 0xC000000000000001) != 0)
    {
      v44 = v42;
      if (v15 < 0)
      {
        v45 = v15;
      }

      else
      {
        v45 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v46 = sub_1D917935C();
      if (__OFADD__(v46, 1))
      {
        goto LABEL_45;
      }

      v47 = sub_1D8F7EE2C(v45, v46 + 1);
      v42 = v44;
      v44[2] = v47;
    }

    else
    {

      v48 = v42[2];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v42[2];
    sub_1D8F4F1EC(a4, v43, isUniquelyReferenced_nonNull_native);

    v42[2] = v57;
    return;
  }

  v57 = sub_1D90D02E0(a1[2]);
  sub_1D8E4D4B0(&v57);
  if (v4)
  {
    goto LABEL_46;
  }

  v50 = a4;
  v17 = v57;
  v56 = v57[2];
  if (!v56)
  {
LABEL_28:

    a4 = v50;
    goto LABEL_29;
  }

  v18 = 0;
  v19 = v57 + 5;
  v52 = a1;
  v53 = v57;
  v54 = v14;
  v55 = v13;
  while (v18 < v17[2])
  {
    v20 = a1[1];
    if (__CFADD__(v20, v13))
    {
      goto LABEL_40;
    }

    if (v14 >= v20 + v13)
    {
      goto LABEL_28;
    }

    v21 = *(v19 - 1);
    v22 = *v19;
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v23 = v15;
      }

      else
      {
        v23 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = v21;

      v24 = v4;
      v25 = sub_1D91796BC();

      if (!v25)
      {
LABEL_25:

        goto LABEL_26;
      }

      swift_unknownObjectRelease();

      v26 = sub_1D917935C();
      v27 = sub_1D8F7EE2C(v23, v26);

      v28 = sub_1D8F068B0(v24);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_42;
      }

      v31 = *(*(v27 + 56) + 8 * v28);
      sub_1D8F7F488(v28, v27);

      a1 = v52;
      v52[2] = v27;
      v15 = v27;
    }

    else
    {
      v24 = v21;

      v32 = sub_1D8F068B0(v24);
      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }

      v34 = v32;
      v35 = a1[2];
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v15 = a1[2];
      v57 = v15;
      if ((v36 & 1) == 0)
      {
        sub_1D8F82144();
        v15 = v57;
      }

      v37 = *(*(v15 + 56) + 8 * v34);
      sub_1D8F7F488(v34, v15);

      a1[2] = v15;
    }

LABEL_26:
    v38 = *(v22 + *(*v22 + 128));

    if (v20 < v38)
    {
      goto LABEL_41;
    }

    ++v18;
    a1[1] = v20 - v38;
    v19 += 2;
    v13 = v55;
    v17 = v53;
    v14 = v54;
    if (v56 == v18)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:

  __break(1u);
}

uint64_t sub_1D8E4B048(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 + *(type metadata accessor for TTMLRequest() + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = sub_1D8F7EB3C(*v6, v7);
  if (v9)
  {
    v10 = *(v9 + 72);

    v12 = a1[1];
    v13 = v12 >= v10;
    v14 = v12 - v10;
    if (!v13)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    a1[1] = v14;
  }

  result = sub_1D8E50564(*(a4 + 72), a1);
  if (result)
  {
    v15 = *(a4 + 72);
    v16 = a1[1];
    v13 = __CFADD__(v16, v15);
    v17 = v16 + v15;
    if (v13)
    {
      goto LABEL_9;
    }

    a1[1] = v17;

    v18 = a1[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = a1[2];
    sub_1D8F4F5B4(a4, v8, v7, isUniquelyReferenced_nonNull_native);

    a1[2] = v20;
  }

  return result;
}

uint64_t sub_1D8E4B144(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 + *(type metadata accessor for ShazamSignatureRequest() + 24));
  v8 = *v6;
  v7 = v6[1];
  v9 = sub_1D8F7EB50(*v6, v7);
  if (v9)
  {
    v10 = *(v9 + 24);

    v12 = a1[1];
    v13 = v12 >= v10;
    v14 = v12 - v10;
    if (!v13)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    a1[1] = v14;
  }

  result = sub_1D8E507E0(*(a4 + 24), a1);
  if (result)
  {
    v15 = *(a4 + 24);
    v16 = a1[1];
    v13 = __CFADD__(v16, v15);
    v17 = v16 + v15;
    if (v13)
    {
      goto LABEL_9;
    }

    a1[1] = v17;

    v18 = a1[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = a1[2];
    sub_1D8F4F5F4(a4, v8, v7, isUniquelyReferenced_nonNull_native);

    a1[2] = v20;
  }

  return result;
}

uint64_t sub_1D8E4B240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t (*a6)(void, uint64_t), void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v12 = sub_1D8E4D3C4();
  v13 = a5(v12);

  if (v13)
  {
    v14 = *(v13 + *(*v13 + 128));

    v16 = *(a1 + 8);
    v17 = v16 >= v14;
    v18 = v16 - v14;
    if (!v17)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    *(a1 + 8) = v18;
  }

  v19 = *(*a4 + 128);
  result = a6(*(a4 + v19), a1);
  if (result)
  {
    v20 = *(a4 + v19);
    v21 = *(a1 + 8);
    v17 = __CFADD__(v21, v20);
    v22 = v21 + v20;
    if (v17)
    {
      goto LABEL_9;
    }

    *(a1 + 8) = v22;
    v23 = sub_1D8E4D3C4();
    v25 = v24;

    v26 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a1 + 16);
    a7(a4, v23, v25, isUniquelyReferenced_nonNull_native);

    *(a1 + 16) = v28;
  }

  return result;
}

void sub_1D8E4B38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8E4B404(a2, a3);
  v4 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v4 + 10);
  sub_1D8E515A4(&v4[4]);
  os_unfair_lock_unlock(v4 + 10);
}

uint64_t sub_1D8E4B404(uint64_t a1, uint64_t a2)
{
  v18[3] = a2;
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  sub_1D9176B5C();
  v10 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 fileExistsAtPath_];

  if ((v12 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v9, 1);
  }

  v13 = *(v4 + 8);
  v18[1] = v4 + 8;
  v13(v9, v3);
  v14 = ArtworkRequest.encode(_:)(a1);
  v16 = v15;
  sub_1D9176CAC();
  if ((*(v18[0] + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v18[0] + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v14, v16);
}

void sub_1D8E4BA00(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v18 = type metadata accessor for TTMLRequest();
  v3 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1D9176B5C();
  v11 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v13 = [v11 fileExistsAtPath_];

  if ((v13 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v10, 1);
  }

  v17 = *(v6 + 8);
  v17(v10, v5);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  sub_1D9176CAC();
  if ((*(v19 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v19 + qword_1EDCDE888));
  }
}

uint64_t sub_1D8E4C058(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for ShazamSignatureRequest();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v23 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v22 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  sub_1D9176B5C();
  v13 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v15 = [v13 fileExistsAtPath_];

  if ((v15 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v12, 1);
  }

  v20[1] = v3;

  (*(v7 + 8))(v12, v6);
  v16 = ShazamSignatureRequest.encode(_:)(a1);
  v18 = v17;
  sub_1D9176CAC();
  if ((*(v21 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v21 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v16, v18);
}

uint64_t sub_1D8E4C6EC(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  sub_1D9176B5C();
  v8 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10 = [v8 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v7, 1);
  }

  v18 = *(v3 + 8);
  v18(v7, v2);
  v11 = *(v19 + 24);
  type metadata accessor for ShazamSignatureRequest();
  sub_1D8E50498(&qword_1ECAB1CA0, type metadata accessor for ShazamSignatureRequest);
  v12 = sub_1D91769CC();
  v14 = v13;
  sub_1D9176CAC();
  if ((*(v17 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v17 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v12, v14);
}

uint64_t sub_1D8E4CD58(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  sub_1D9176B5C();
  v8 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10 = [v8 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v7, 1);
  }

  v18 = *(v3 + 8);
  v18(v7, v2);
  v11 = *(v19 + 24);
  type metadata accessor for TTMLRequest();
  sub_1D8E50498(&qword_1ECAB2A88, type metadata accessor for TTMLRequest);
  v12 = sub_1D91769CC();
  v14 = v13;
  sub_1D9176CAC();
  if ((*(v17 + qword_1EDCDE888 + 4) & 1) == 0)
  {
    sub_1D8F4E4E8(*(v17 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v12, v14);
}

unint64_t sub_1D8E4D3C4()
{
  v2 = v0[1];
  v1 = v0[2];

  sub_1D917946C();

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (!v1)
  {
    v1 = 0x80000001D91CA220;
  }

  v4 = *v0;
  MEMORY[0x1DA7298F0](v3, v1);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v5 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v5);

  return 0xD000000000000014;
}

void sub_1D8E4D4B0(void **a1)
{
  v42 = sub_1D9176E3C();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v30 - v7;
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D8F5DE48(v8);
  }

  v9 = v8[2];
  v34 = v8 + 4;
  v47[0] = (v8 + 4);
  v47[1] = v9;
  v10 = sub_1D9179A2C();
  if (v10 >= v9)
  {
    if (v9 >= 2)
    {
      v30 = v8;
      v31 = a1;
      v32 = v1;
      v38 = (v3 + 8);
      v39 = (v3 + 16);
      v13 = -1;
      v14 = 1;
      v15 = v34;
      v33 = v9;
      do
      {
        v36 = v14;
        v37 = v13;
        v16 = *&v34[2 * v14];
        v35 = v15;
        do
        {
          v44 = v16;
          v17 = v15[1];
          v48 = *v15;
          v18 = *(&v16 + 1);
          v19 = *(**(&v16 + 1) + 136);
          swift_beginAccess();
          v20 = v40;
          v21 = *v39;
          v22 = v42;
          (*v39)(v40, v18 + v19, v42);
          v23 = *(*v17 + 136);
          swift_beginAccess();
          v24 = v17 + v23;
          v25 = v41;
          v21(v41, v24, v22);
          *&v44 = v44;

          v48 = v48;

          v43 = sub_1D9176DAC();
          v26 = *v38;
          (*v38)(v25, v22);
          v26(v20, v22);

          if ((v43 & 1) == 0)
          {
            break;
          }

          v27 = *v15;
          v16 = *(v15 + 1);
          *v15 = v16;
          *(v15 + 1) = v27;
          v15 -= 2;
        }

        while (!__CFADD__(v13++, 1));
        v14 = v36 + 1;
        v15 = v35 + 2;
        v13 = v37 - 1;
      }

      while (v36 + 1 != v33);
      a1 = v31;
      v8 = v30;
    }
  }

  else
  {
    v11 = v10;
    if (v9 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4780, &qword_1D918B150);
      v12 = sub_1D917867C();
      *(v12 + 16) = v9 >> 1;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v46[0] = v12 + 32;
    v46[1] = v9 >> 1;
    v29 = v12;
    sub_1D8E4DBD8(v46, v45, v47, v11);
    *(v29 + 16) = 0;
  }

  *a1 = v8;
}

uint64_t sub_1D8E4D830(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v48 = sub_1D9176E3C();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v35 - v13;
  v14 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = a2(v14);
  }

  v15 = *(v14 + 16);
  v40 = v14 + 32;
  v54[0] = v14 + 32;
  v54[1] = v15;
  result = sub_1D9179A2C();
  if (result >= v15)
  {
    if (v15 >= 2)
    {
      v37 = a1;
      v38 = v4;
      v44 = (v9 + 8);
      v45 = (v9 + 16);
      v36 = v14;
      v19 = (v14 + 40);
      v20 = -1;
      v21 = 1;
      v39 = v15;
      do
      {
        v41 = v21;
        v42 = v20;
        v22 = v40 + 24 * v21;
        v23 = *(v22 + 8);
        v24 = *(v22 + 16);
        v49 = v20;
        v43 = v19;
        do
        {
          v54[4] = v23;
          v25 = v19[1];
          v51 = *v19;
          v26 = *(*v24 + 136);
          swift_beginAccess();
          v27 = v46;
          v28 = *v45;
          v29 = v48;
          (*v45)(v46, v24 + v26, v48);
          v30 = *(*v25 + 136);
          swift_beginAccess();
          v31 = v47;
          v28(v47, v25 + v30, v29);

          v50 = sub_1D9176DAC();
          v32 = *v44;
          (*v44)(v31, v29);
          v32(v27, v29);

          if ((v50 & 1) == 0)
          {
            break;
          }

          v33 = v19[2];
          v23 = v19[3];
          v24 = v19[4];
          *(v19 + 1) = *(v19 - 1);
          v19[4] = v19[1];
          *(v19 - 1) = v33;
          *v19 = v23;
          v19[1] = v24;
          v19 -= 3;
        }

        while (!__CFADD__(v49++, 1));
        v21 = v41 + 1;
        v19 = v43 + 3;
        v20 = v42 - 1;
      }

      while (v41 + 1 != v39);
      a1 = v37;
      v14 = v36;
    }
  }

  else
  {
    v17 = result;
    if (v15 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v18 = sub_1D917867C();
      *(v18 + 16) = v15 >> 1;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v53[0] = v18 + 32;
    v53[1] = v15 >> 1;
    sub_1D8E4E740(v53, v52, v54, v17);
    *(v18 + 16) = 0;
  }

  *a1 = v14;
  return result;
}

void sub_1D8E4DBD8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v132 = sub_1D9176E3C();
  v9 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v116 - v13;
  v124 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v16 = sub_1D8F5DE20(v16);
    }

    v136 = v16;
    v112 = *(v16 + 2);
    if (v112 >= 2)
    {
      while (*v124)
      {
        v113 = *&v16[16 * v112];
        v114 = *&v16[16 * v112 + 24];
        sub_1D8E4F2D0((*v124 + 16 * v113), (*v124 + 16 * *&v16[16 * v112 + 16]), (*v124 + 16 * v114), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v114 < v113)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8F5DE20(v16);
        }

        if (v112 - 2 >= *(v16 + 2))
        {
          goto LABEL_115;
        }

        v115 = &v16[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v136 = v16;
        sub_1D8F5DD94(v112 - 1);
        v16 = v136;
        v112 = *(v136 + 2);
        if (v112 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v117 = a4;
  v15 = 0;
  v129 = (v12 + 16);
  v128 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v15;
    v119 = v15;
    if (v15 + 1 >= v14)
    {
      v31 = v15 + 1;
    }

    else
    {
      v126 = v14;
      v18 = *v124;
      v19 = *v124 + 16 * (v15 + 1);
      v20 = *(v19 + 8);
      v133 = *v19;
      v120 = 16 * v15;
      v135 = (v18 + 16 * v15);
      v21 = v135[1];
      *&v134 = *v135;
      v22 = *(*v20 + 136);
      swift_beginAccess();
      v23 = *v129;
      v24 = v130;
      v25 = v132;
      (*v129)(v130, v20 + v22, v132);
      v26 = *(*v21 + 136);
      swift_beginAccess();
      v27 = v21 + v26;
      v28 = v131;
      v122 = v23;
      v23(v131, v27, v25);
      v133 = v133;

      *&v134 = v134;

      LODWORD(v127) = sub_1D9176DAC();
      v29 = *v128;
      (*v128)(v28, v25);
      v121 = v29;
      (v29)(v24, v25);

      v5 = v119 + 2;
      v30 = v135 + 3;
      v123 = v16;
      while (1)
      {
        v31 = v126;
        if (v126 == v5)
        {
          break;
        }

        v125 = v6;
        v32 = v30[2];
        v135 = v30 + 2;
        v33 = *v30;
        v133 = v30[1];
        *&v134 = *(v30 - 1);
        v34 = *(*v32 + 136);
        swift_beginAccess();
        v35 = v130;
        v36 = v132;
        v37 = v122;
        v122(v130, v32 + v34, v132);
        v38 = *(*v33 + 136);
        swift_beginAccess();
        v39 = v131;
        v37(v131, v33 + v38, v36);
        v133 = v133;

        v40 = v134;

        v41 = sub_1D9176DAC() & 1;
        v42 = v121;
        (v121)(v39, v36);
        v42(v35, v36);

        ++v5;
        v30 = v135;
        v16 = v123;
        v6 = v125;
        if ((v127 & 1) != v41)
        {
          v31 = v5 - 1;
          break;
        }
      }

      v17 = v119;
      v43 = v120;
      if (v127)
      {
        if (v31 < v119)
        {
          goto LABEL_118;
        }

        if (v119 < v31)
        {
          v44 = 16 * v31 - 16;
          v45 = v31;
          v46 = v119;
          do
          {
            if (v46 != --v45)
            {
              v48 = *v124;
              if (!*v124)
              {
                goto LABEL_124;
              }

              v47 = *(v48 + v43);
              *(v48 + v43) = *(v48 + v44);
              *(v48 + v44) = v47;
            }

            ++v46;
            v44 -= 16;
            v43 += 16;
          }

          while (v46 < v45);
        }
      }
    }

    v49 = v124[1];
    if (v31 < v49)
    {
      if (__OFSUB__(v31, v17))
      {
        goto LABEL_117;
      }

      if (v31 - v17 < v117)
      {
        if (__OFADD__(v17, v117))
        {
          goto LABEL_119;
        }

        if (v17 + v117 >= v49)
        {
          v50 = v124[1];
        }

        else
        {
          v50 = v17 + v117;
        }

        if (v50 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v31 != v50)
        {
          break;
        }
      }
    }

    v15 = v31;
    if (v31 < v17)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D8ECC734(0, *(v16 + 2) + 1, 1, v16);
    }

    v52 = *(v16 + 2);
    v51 = *(v16 + 3);
    v5 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v16 = sub_1D8ECC734((v51 > 1), v52 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v53 = &v16[16 * v52];
    *(v53 + 4) = v119;
    *(v53 + 5) = v15;
    v54 = *v118;
    if (!*v118)
    {
      goto LABEL_126;
    }

    if (v52)
    {
      while (1)
      {
        v55 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v56 = *(v16 + 4);
          v57 = *(v16 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_48:
          if (v59)
          {
            goto LABEL_105;
          }

          v72 = &v16[16 * v5];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_108;
          }

          v78 = &v16[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_112;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v5 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v82 = &v16[16 * v5];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_62:
        if (v77)
        {
          goto LABEL_107;
        }

        v85 = &v16[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_110;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_69:
        v93 = v55 - 1;
        if (v55 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v124)
        {
          goto LABEL_123;
        }

        v94 = *&v16[16 * v93 + 32];
        v95 = *&v16[16 * v55 + 40];
        sub_1D8E4F2D0((*v124 + 16 * v94), (*v124 + 16 * *&v16[16 * v55 + 32]), (*v124 + 16 * v95), v54);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v95 < v94)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8F5DE20(v16);
        }

        if (v93 >= *(v16 + 2))
        {
          goto LABEL_102;
        }

        v96 = &v16[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v136 = v16;
        sub_1D8F5DD94(v55);
        v16 = v136;
        v5 = *(v136 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v16[16 * v5 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_103;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_104;
      }

      v67 = &v16[16 * v5];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_106;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_109;
      }

      if (v71 >= v63)
      {
        v89 = &v16[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_113;
        }

        if (v58 < v92)
        {
          v55 = v5 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v14 = v124[1];
    if (v15 >= v14)
    {
      goto LABEL_89;
    }
  }

  v123 = v16;
  v125 = v6;
  v127 = *v124;
  v97 = v127 + 16 * v31 - 16;
  v98 = (v17 - v31);
  v120 = v50;
LABEL_80:
  v126 = v31;
  v99 = *(v127 + 16 * v31);
  v121 = v98;
  v122 = v97;
  v100 = v97;
  while (1)
  {
    v134 = v99;
    v5 = *(v100 + 8);
    v135 = *v100;
    v101 = *(&v99 + 1);
    v102 = *(**(&v99 + 1) + 136);
    swift_beginAccess();
    v103 = *v129;
    v104 = v130;
    v105 = v132;
    (*v129)(v130, v101 + v102, v132);
    v106 = *(*v5 + 136);
    swift_beginAccess();
    v107 = v5 + v106;
    v108 = v131;
    v103(v131, v107, v105);
    *&v134 = v134;

    v135 = v135;

    LODWORD(v133) = sub_1D9176DAC();
    v109 = *v128;
    (*v128)(v108, v105);
    v109(v104, v105);

    if ((v133 & 1) == 0)
    {
LABEL_79:
      v31 = v126 + 1;
      v97 = v122 + 16;
      v98 = v121 - 1;
      v15 = v120;
      if (v126 + 1 != v120)
      {
        goto LABEL_80;
      }

      v6 = v125;
      v16 = v123;
      if (v120 < v119)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v127)
    {
      break;
    }

    v110 = *v100;
    v99 = *(v100 + 16);
    *v100 = v99;
    *(v100 + 16) = v110;
    v100 -= 16;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_79;
    }
  }

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
}

void sub_1D8E4E740(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v125 = a1;
  v136 = sub_1D9176E3C();
  v9 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v120 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v16 = sub_1D8F5DE20(v16);
    }

    v141 = v16;
    v115 = *(v16 + 16);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *(v16 + 16 * v115);
        v117 = v16;
        v118 = *(v16 + 16 * (v115 - 1) + 32);
        v16 = *(v16 + 16 * (v115 - 1) + 40);
        sub_1D8E4F848((*a3 + 24 * v116), (*a3 + 24 * v118), *a3 + 24 * v16, v5);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v16 < v116)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1D8F5DE20(v117);
        }

        if (v115 - 2 >= *(v117 + 2))
        {
          goto LABEL_116;
        }

        v119 = &v117[16 * v115];
        *v119 = v116;
        *(v119 + 1) = v16;
        v141 = v117;
        sub_1D8F5DD94(v115 - 1);
        v16 = v141;
        v115 = *(v141 + 16);
        if (v115 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v121 = a4;
  v15 = 0;
  v133 = (v12 + 16);
  v132 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v122 = a3;
  while (1)
  {
    v126 = v15;
    if (v15 + 1 >= v14)
    {
      v30 = v15 + 1;
    }

    else
    {
      v130 = v14;
      v123 = v16;
      v124 = v6;
      v17 = *a3;
      v18 = *a3 + 24 * (v15 + 1);
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      v127 = 24 * v15;
      v21 = v17 + 24 * v15;
      v22 = *(v21 + 16);
      v139 = *(v21 + 8);
      v140 = v21;
      v23 = *(*v20 + 136);
      swift_beginAccess();
      v24 = *v133;
      v25 = v134;
      v5 = v136;
      (*v133)(v134, v20 + v23, v136);
      v26 = *(*v22 + 136);
      swift_beginAccess();
      v16 = v135;
      v129 = v24;
      (v24)(v135, v22 + v26, v5);

      LODWORD(v131) = sub_1D9176DAC();
      v27 = *v132;
      (*v132)(v16, v5);
      v128 = v27;
      v27(v25, v5);

      v28 = v126 + 2;
      v29 = (v140 + 64);
      while (1)
      {
        v30 = v130;
        if (v130 == v28)
        {
          break;
        }

        v31 = *v29;
        v32 = *(v29 - 4);
        v33 = *(v29 - 3);
        v138 = *(v29 - 1);
        v139 = v32;
        v34 = *(*v31 + 136);
        v140 = v28;
        swift_beginAccess();
        v35 = v134;
        v16 = v136;
        v36 = v129;
        (v129)(v134, v31 + v34, v136);
        v37 = *(*v33 + 136);
        swift_beginAccess();
        v38 = v135;
        v36(v135, v33 + v37, v16);
        v5 = v138;

        LOBYTE(v137) = sub_1D9176DAC() & 1;
        LODWORD(v137) = v137;
        v39 = v128;
        (v128)(v38, v16);
        v39(v35, v16);

        v28 = v140 + 1;
        v29 += 3;
        if ((v131 & 1) != v137)
        {
          v30 = v140;
          goto LABEL_9;
        }
      }

      v6 = v124;
      a3 = v122;
      v15 = v126;
      v40 = v127;
      if ((v131 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v30 < v126)
      {
        goto LABEL_119;
      }

      if (v126 < v30)
      {
        v41 = 0;
        v42 = 24 * v30;
        v43 = v126;
        v16 = v123;
        do
        {
          if (v43 != v30 + v41 - 1)
          {
            v49 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v44 = (v49 + v40);
            v45 = v49 + v42;
            v46 = *v44;
            v47 = *(v44 + 1);
            v48 = *(v45 - 24);
            v44[2] = *(v45 - 8);
            *v44 = v48;
            *(v45 - 24) = v46;
            *(v45 - 16) = v47;
          }

          ++v43;
          --v41;
          v42 -= 24;
          v40 += 24;
        }

        while (v43 < v30 + v41);
      }

      else
      {
LABEL_19:
        v16 = v123;
      }
    }

    v50 = a3[1];
    if (v30 < v50)
    {
      if (__OFSUB__(v30, v15))
      {
        goto LABEL_118;
      }

      if (v30 - v15 < v121)
      {
        if (__OFADD__(v15, v121))
        {
          goto LABEL_120;
        }

        if (v15 + v121 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v15 + v121;
        }

        if (v51 < v15)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v30 != v51)
        {
          break;
        }
      }
    }

    v52 = v30;
    if (v30 < v15)
    {
      goto LABEL_117;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D8ECC734(0, *(v16 + 16) + 1, 1, v16);
    }

    v54 = *(v16 + 16);
    v53 = *(v16 + 24);
    v5 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v16 = sub_1D8ECC734((v53 > 1), v54 + 1, 1, v16);
    }

    *(v16 + 16) = v5;
    v55 = v16 + 16 * v54;
    *(v55 + 32) = v126;
    *(v55 + 40) = v52;
    v56 = *v125;
    if (!*v125)
    {
      goto LABEL_127;
    }

    v127 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v16 + 32);
          v59 = *(v16 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_49:
          if (v61)
          {
            goto LABEL_106;
          }

          v74 = (v16 + 16 * v5);
          v76 = *v74;
          v75 = v74[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_109;
          }

          v80 = (v16 + 32 + 16 * v57);
          v82 = *v80;
          v81 = v80[1];
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_113;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v5 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v84 = (v16 + 16 * v5);
        v86 = *v84;
        v85 = v84[1];
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_63:
        if (v79)
        {
          goto LABEL_108;
        }

        v87 = v16 + 16 * v57;
        v89 = *(v87 + 32);
        v88 = *(v87 + 40);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_111;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_70:
        v95 = v57 - 1;
        if (v57 - 1 >= v5)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v96 = *(v16 + 32 + 16 * v95);
        v97 = *(v16 + 32 + 16 * v57 + 8);
        sub_1D8E4F848((*a3 + 24 * v96), (*a3 + 24 * *(v16 + 32 + 16 * v57)), *a3 + 24 * v97, v56);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v97 < v96)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8F5DE20(v16);
        }

        if (v95 >= *(v16 + 16))
        {
          goto LABEL_103;
        }

        v98 = v16 + 16 * v95;
        *(v98 + 32) = v96;
        *(v98 + 40) = v97;
        v141 = v16;
        sub_1D8F5DD94(v57);
        v16 = v141;
        v5 = *(v141 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = v16 + 32 + 16 * v5;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_104;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_105;
      }

      v69 = (v16 + 16 * v5);
      v71 = *v69;
      v70 = v69[1];
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_107;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_110;
      }

      if (v73 >= v65)
      {
        v91 = (v16 + 32 + 16 * v57);
        v93 = *v91;
        v92 = v91[1];
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_114;
        }

        if (v60 < v94)
        {
          v57 = v5 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v14 = a3[1];
    v15 = v127;
    if (v127 >= v14)
    {
      goto LABEL_90;
    }
  }

  v123 = v16;
  v124 = v6;
  v131 = *a3;
  v99 = (v131 + 24 * v30);
  v100 = (v15 - v30);
  v127 = v51;
LABEL_81:
  v130 = v30;
  v101 = v131 + 24 * v30;
  v102 = *(v101 + 8);
  v103 = *(v101 + 16);
  v128 = v100;
  v129 = v99;
  while (1)
  {
    v140 = v102;
    v137 = v100;
    v104 = *(v99 - 1);
    v139 = *(v99 - 2);
    v105 = *(*v103 + 136);
    swift_beginAccess();
    v106 = *v133;
    v107 = v134;
    v108 = v136;
    (*v133)(v134, v103 + v105, v136);
    v109 = *(*v104 + 136);
    swift_beginAccess();
    v110 = v135;
    (v106)(v135, v104 + v109, v108);

    LODWORD(v138) = sub_1D9176DAC();
    v5 = v132;
    v111 = *v132;
    (*v132)(v110, v108);
    v111(v107, v108);

    if ((v138 & 1) == 0)
    {
LABEL_80:
      v30 = v130 + 1;
      v99 = v129 + 24;
      v100 = v128 - 1;
      v52 = v127;
      if (v130 + 1 != v127)
      {
        goto LABEL_81;
      }

      v6 = v124;
      a3 = v122;
      v16 = v123;
      if (v127 < v126)
      {
        goto LABEL_117;
      }

      goto LABEL_30;
    }

    v112 = v137;
    if (!v131)
    {
      break;
    }

    v113 = *v99;
    v102 = *(v99 + 1);
    v103 = *(v99 + 2);
    *v99 = *(v99 - 24);
    *(v99 + 2) = *(v99 - 1);
    *(v99 - 2) = v102;
    *(v99 - 1) = v103;
    *(v99 - 3) = v113;
    v99 -= 24;
    v114 = __CFADD__(v112, 1);
    v100 = v112 + 1;
    if (v114)
    {
      goto LABEL_80;
    }
  }

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
}

uint64_t sub_1D8E4F2D0(void **a1, id *a2, char *a3, void **a4)
{
  v57 = sub_1D9176E3C();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v47 - v12;
  v13 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 4;
  v15 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 4;
  if (v14 >= v15 >> 4)
  {
    v58 = a1;
    if (a4 != a2 || &a2[2 * v16] <= a4)
    {
      memmove(a4, a2, 16 * v16);
    }

    v61 = &a4[2 * v16];
    if (a3 - a2 >= 16 && a2 > v58)
    {
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v59 = a4;
LABEL_26:
      v48 = a2 - 2;
      v31 = (a3 - 16);
      v32 = v61;
      v51 = a2;
      do
      {
        v60 = v31;
        v33 = *(v32 - 2);
        v34 = *(v32 - 1);
        v32 -= 2;
        v52 = v33;
        v35 = *(a2 - 1);
        v53 = *(a2 - 2);
        v54 = v31 + 2;
        v36 = *(*v34 + 136);
        swift_beginAccess();
        v37 = *v50;
        v38 = v55;
        v39 = v57;
        (*v50)(v55, v34 + v36, v57);
        v40 = *(*v35 + 136);
        swift_beginAccess();
        v41 = v56;
        v37(v56, v35 + v40, v39);
        v52 = v52;

        v53 = v53;

        LOBYTE(v40) = sub_1D9176DAC();
        v42 = *v49;
        (*v49)(v41, v39);
        v42(v38, v39);

        if (v40)
        {
          v44 = v58;
          a4 = v59;
          a3 = v60;
          v45 = v48;
          if (v54 != v51)
          {
            *v60 = *v48;
          }

          if (v61 <= a4 || (a2 = v45, v45 <= v44))
          {
            a2 = v45;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        a4 = v59;
        v43 = v60;
        if (v54 != v61)
        {
          *v60 = *v32;
        }

        v31 = v43 - 2;
        v61 = v32;
        a2 = v51;
      }

      while (v32 > a4);
      v61 = v32;
    }
  }

  else
  {
    if (a4 != a1 || &a1[2 * v14] <= a4)
    {
      memmove(a4, a1, 16 * v14);
    }

    v61 = &a4[2 * v14];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v51 = (v8 + 8);
      v52 = (v8 + 16);
      v60 = a3;
      while (1)
      {
        v58 = a1;
        v59 = a4;
        v17 = a2[1];
        v18 = *a4;
        v19 = a4[1];
        v53 = *a2;
        v54 = v18;
        v20 = *(*v17 + 136);
        swift_beginAccess();
        v21 = *v52;
        v22 = v55;
        v23 = v57;
        (*v52)(v55, &v17[v20], v57);
        v24 = *(*v19 + 136);
        swift_beginAccess();
        v25 = v56;
        v21(v56, &v19[v24], v23);
        v53 = v53;

        v54 = v54;

        v26 = a2;
        v27 = sub_1D9176DAC();
        v28 = *v51;
        (*v51)(v25, v23);
        v28(v22, v23);

        if ((v27 & 1) == 0)
        {
          break;
        }

        v29 = v26;
        a2 = v26 + 2;
        v30 = v58;
        a4 = v59;
        if (v58 != v26)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 = v30 + 2;
        if (a4 >= v61 || a2 >= v60)
        {
          goto LABEL_19;
        }
      }

      v30 = v58;
      v29 = v59;
      a4 = v59 + 2;
      a2 = v26;
      if (v58 == v59)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v30 = *v29;
      goto LABEL_17;
    }

LABEL_19:
    a2 = a1;
  }

LABEL_37:
  if (a2 != a4 || a2 >= (a4 + ((v61 - a4 + (v61 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(a2, a4, 16 * ((v61 - a4) / 16));
  }

  return 1;
}

uint64_t sub_1D8E4F848(char *a1, char *a2, unint64_t a3, char *a4)
{
  v59 = sub_1D9176E3C();
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v51 - v12;
  v13 = (a2 - a1) / 24;
  v64 = a3;
  v14 = a3 - a2;
  v15 = v14 / 24;
  if (v13 >= v14 / 24)
  {
    v60 = a1;
    if (a4 != a2 || &a2[24 * v15] <= a4)
    {
      memmove(a4, a2, 24 * v15);
    }

    v16 = &a4[24 * v15];
    if (v14 >= 24 && a2 > v60)
    {
      v52 = (v8 + 8);
      v53 = (v8 + 16);
      v32 = v64;
      v62 = a4;
      v33 = v58;
LABEL_23:
      v63 = a2;
      v34 = v32 - 24;
      do
      {
        v64 = v34;
        v35 = *(v16 - 1);
        v61 = *(v16 - 2);
        v36 = *(v63 - 1);
        v55 = *(v63 - 2);
        v56 = v34 + 24;
        v37 = *(*v35 + 136);
        swift_beginAccess();
        v38 = *v53;
        v39 = v57;
        v40 = v59;
        (*v53)(v57, v35 + v37, v59);
        v41 = *(*v36 + 136);
        swift_beginAccess();
        (v38)(v33, v36 + v41, v40);

        LODWORD(v54) = sub_1D9176DAC();
        v42 = *v52;
        (*v52)(v33, v40);
        v42(v39, v40);

        if (v54)
        {
          v46 = v63 - 24;
          v47 = v60;
          v32 = v64;
          if (v56 != v63)
          {
            v48 = *v46;
            *(v64 + 16) = *(v63 - 1);
            *v32 = v48;
          }

          a4 = v62;
          if (v16 <= v62 || (a2 = v46, v46 <= v47))
          {
            a2 = v46;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        v43 = v16 - 24;
        v44 = v64;
        if (v56 != v16)
        {
          v45 = *v43;
          *(v64 + 16) = *(v16 - 1);
          *v44 = v45;
        }

        v34 = v44 - 24;
        v16 -= 24;
        a4 = v62;
      }

      while (v43 > v62);
      v16 = v43;
      a2 = v63;
    }
  }

  else
  {
    if (a4 != a1 || &a1[24 * v13] <= a4)
    {
      memmove(a4, a1, 24 * v13);
    }

    v16 = &a4[24 * v13];
    if (a2 - a1 >= 24 && a2 < v64)
    {
      v53 = (v8 + 8);
      v54 = (v8 + 16);
      v55 = v16;
      v17 = v58;
      do
      {
        v62 = a4;
        v63 = a2;
        v18 = *(a2 + 1);
        v19 = *(a2 + 2);
        v56 = v18;
        v20 = *(a4 + 1);
        v21 = *(a4 + 2);
        v60 = a1;
        v61 = v20;
        v22 = *(*v19 + 136);
        swift_beginAccess();
        v23 = *v54;
        v24 = v57;
        v25 = v59;
        (*v54)(v57, v19 + v22, v59);
        v26 = *(*v21 + 136);
        swift_beginAccess();
        v23(v17, v21 + v26, v25);

        LOBYTE(v18) = sub_1D9176DAC();
        v27 = *v53;
        (*v53)(v17, v25);
        v27(v24, v25);

        if (v18)
        {
          a4 = v62;
          v28 = v63;
          v29 = v63;
          a2 = v63 + 24;
        }

        else
        {
          v28 = v62;
          a2 = v63;
          v29 = v62;
          a4 = v62 + 24;
        }

        v30 = v60;
        if (v60 != v28)
        {
          v31 = *v29;
          *(v60 + 2) = *(v29 + 2);
          *v30 = v31;
        }

        a1 = v30 + 24;
        v16 = v55;
      }

      while (a4 < v55 && a2 < v64);
    }

    a2 = a1;
  }

LABEL_34:
  v49 = (v16 - a4) / 24;
  if (a2 != a4 || a2 >= &a4[24 * v49])
  {
    memmove(a2, a4, 24 * v49);
  }

  return 1;
}

uint64_t sub_1D8E4FDEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A40, &qword_1D918B1D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - v3;
  type metadata accessor for ArtworkContent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A48, &unk_1D918B1D8);
  sub_1D8CF48EC(&qword_1ECAB4A50, &qword_1ECAB4A48, &unk_1D918B1D8);
  v7[1] = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917799C();
  sub_1D8CF48EC(&qword_1ECAB4A58, &qword_1ECAB4A40, &qword_1D918B1D0);
  v5 = sub_1D9177B1C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1D8E4FFB0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C0, &qword_1D918B140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  sub_1D8EE6F40(a1, *a2, &v10 - v6);
  sub_1D8CF48EC(&qword_1ECAB27E8, &qword_1ECAB49C0, &qword_1D918B140);
  v8 = sub_1D9177B1C();
  sub_1D8D08A50(v7, &qword_1ECAB49C0, &qword_1D918B140);
  return v8;
}

void sub_1D8E500A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  sub_1D8E4BA00(v6, a3);
  v5 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v5 + 10);
  sub_1D8E51328(&v5[4]);
  os_unfair_lock_unlock(v5 + 10);
}

void sub_1D8E50134(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1D8E4C058(*a2, a3);
  v4 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v4 + 10);
  sub_1D8E51418(&v4[4]);
  os_unfair_lock_unlock(v4 + 10);
}

void sub_1D8E501AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = *(a3 + 32);
  sub_1D8E4C6EC(a2, v6);
  v5 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v5 + 10);
  sub_1D8E504E0(&v5[4]);
  os_unfair_lock_unlock(v5 + 10);
}

void sub_1D8E50248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = *(a3 + 32);
  sub_1D8E4CD58(a2, v6);
  v5 = *(*(a1 + qword_1EDCD6AC8) + 16);
  os_unfair_lock_lock(v5 + 10);
  sub_1D8E50E6C(&v5[4]);
  os_unfair_lock_unlock(v5 + 10);
}

uint64_t sub_1D8E502E4(uint64_t a1, __int128 *a2, uint64_t (*a3)(unint64_t))
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 4);
  v5 = sub_1D8E4D3C4();
  v6 = a3(v5);

  if (v6)
  {
    v8 = *(v6 + *(*v6 + 128));

    v9 = *(a1 + 8);
    v10 = v9 >= v8;
    v11 = v9 - v8;
    if (v10)
    {
      *(a1 + 8) = v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1D8E50398()
{
  result = qword_1ECAB2008;
  if (!qword_1ECAB2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2008);
  }

  return result;
}

unint64_t sub_1D8E503F0()
{
  result = qword_1ECAB4978;
  if (!qword_1ECAB4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4978);
  }

  return result;
}

uint64_t sub_1D8E50498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8E50564(void *a1, unint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= v2;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {
    v6 = a2[2];

    v7 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v7;
    return v3 >= v2;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v10 = *a2;
    v11 = sub_1D8F06218(*(v5 + 16), 0);
    v30 = sub_1D8F0CAD4(&v32, v11 + 4, v8, v5);

    sub_1D8D1B144();
    if (v30 != v8)
    {
      goto LABEL_25;
    }

    v3 = v10;
    v2 = a1;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v32 = v11;
  v11 = 0;
  sub_1D8E4D830(&v32, sub_1D8F5DE5C, &qword_1ECAB4760, &unk_1D918B130);
  v31 = v32;
  v29 = v32[2];
  if (!v29)
  {
LABEL_20:

    return v3 >= v2;
  }

  v12 = 0;
  v13 = v32 + 6;
  while (v12 < *(v31 + 16))
  {
    v14 = a2[1];
    if (__CFADD__(v14, v2))
    {
      goto LABEL_23;
    }

    if (v3 >= v2 + v14)
    {
      goto LABEL_20;
    }

    v11 = v2;
    v15 = v3;
    v17 = *(v13 - 2);
    v16 = *(v13 - 1);
    v18 = *v13;

    v19 = sub_1D8D33C70(v17, v16);
    if (v20)
    {
      v21 = v19;
      v22 = a2[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = a2[2];
      v32 = v24;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F826FC();
        v24 = v32;
      }

      v25 = *(*(v24 + 48) + 16 * v21 + 8);

      v26 = *(*(v24 + 56) + 8 * v21);

      sub_1D8DA2AF4(v21, v24);

      a2[2] = v24;
    }

    else
    {
    }

    v27 = *(v18 + 72);

    if (v14 < v27)
    {
      goto LABEL_24;
    }

    ++v12;
    a2[1] = v14 - v27;
    v13 += 3;
    v3 = v15;
    v2 = v11;
    if (v29 == v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E507E0(void *a1, unint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= v2;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {
    v6 = a2[2];

    v7 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v7;
    return v3 >= v2;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v10 = *a2;
    v11 = sub_1D8F0622C(*(v5 + 16), 0);
    v30 = sub_1D8F0CAD4(&v32, v11 + 4, v8, v5);

    sub_1D8D1B144();
    if (v30 != v8)
    {
      goto LABEL_25;
    }

    v3 = v10;
    v2 = a1;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v32 = v11;
  v11 = 0;
  sub_1D8E4D830(&v32, sub_1D8F5DE70, &qword_1ECAB4750, &qword_1D918B120);
  v31 = v32;
  v29 = v32[2];
  if (!v29)
  {
LABEL_20:

    return v3 >= v2;
  }

  v12 = 0;
  v13 = v32 + 6;
  while (v12 < *(v31 + 16))
  {
    v14 = a2[1];
    if (__CFADD__(v14, v2))
    {
      goto LABEL_23;
    }

    if (v3 >= v2 + v14)
    {
      goto LABEL_20;
    }

    v11 = v2;
    v15 = v3;
    v17 = *(v13 - 2);
    v16 = *(v13 - 1);
    v18 = *v13;

    v19 = sub_1D8D33C70(v17, v16);
    if (v20)
    {
      v21 = v19;
      v22 = a2[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = a2[2];
      v32 = v24;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F82710();
        v24 = v32;
      }

      v25 = *(*(v24 + 48) + 16 * v21 + 8);

      v26 = *(*(v24 + 56) + 8 * v21);

      sub_1D8DA2AF4(v21, v24);

      a2[2] = v24;
    }

    else
    {
    }

    v27 = *(v18 + 24);

    if (v14 < v27)
    {
      goto LABEL_24;
    }

    ++v12;
    a2[1] = v14 - v27;
    v13 += 3;
    v3 = v15;
    v2 = v11;
    if (v29 == v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E50A5C(unint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= a1;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {
    v6 = a2[2];

    v7 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v7;
    return v3 >= a1;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = *a2;
    v10 = sub_1D8F06240(*(v5 + 16), 0);
    v28 = sub_1D8F0CAD4(&v30, v10 + 4, v8, v5);

    sub_1D8D1B144();
    if (v28 != v8)
    {
      goto LABEL_25;
    }

    v3 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v30 = v10;
  v10 = 0;
  sub_1D8E4D830(&v30, sub_1D8F5DE84, &qword_1ECAB4730, &qword_1D918A140);
  v29 = v30;
  v27 = v30[2];
  if (!v27)
  {
LABEL_20:

    return v3 >= a1;
  }

  v11 = 0;
  v12 = v30 + 6;
  while (v11 < *(v29 + 16))
  {
    v13 = a2[1];
    if (__CFADD__(v13, a1))
    {
      goto LABEL_23;
    }

    if (v3 >= v13 + a1)
    {
      goto LABEL_20;
    }

    v10 = v3;
    v15 = *(v12 - 2);
    v14 = *(v12 - 1);
    v16 = *v12;

    v17 = sub_1D8D33C70(v15, v14);
    if (v18)
    {
      v19 = v17;
      v20 = a2[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = a2[2];
      v30 = v22;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F832F0();
        v22 = v30;
      }

      v23 = *(*(v22 + 48) + 16 * v19 + 8);

      v24 = *(*(v22 + 56) + 8 * v19);

      sub_1D8DA2AF4(v19, v22);

      a2[2] = v22;
    }

    else
    {
    }

    v25 = *(v16 + *(*v16 + 128));

    if (v13 < v25)
    {
      goto LABEL_24;
    }

    ++v11;
    a2[1] = v13 - v25;
    v12 += 3;
    v3 = v10;
    if (v27 == v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8E50CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8E50D70(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1D9176C2C() - 8);
  v7 = *(v2 + 16);
  v8 = v2 + ((v5 + *(v6 + 80) + 40) & ~*(v6 + 80));

  return a2(v7, v2 + v4, v2 + v5, v8);
}

uint64_t sub_1D8E50EF0(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t (*a3)(void, uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v10 = *(v8 + 16);
  v12[0] = *v8;
  v12[1] = v10;
  v13 = *(v8 + 32);
  return sub_1D8E4B240(a1, v12, v7, v9, a2, a3, a4);
}

uint64_t sub_1D8E50F38(unint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  if (*a2 < a1)
  {
    return v3 >= a1;
  }

  v5 = a2[2];
  if (*a2 == a1)
  {
    v6 = a2[2];

    v7 = MEMORY[0x1E69E7CC8];
    a2[1] = 0;
    a2[2] = v7;
    return v3 >= a1;
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = *a2;
    v10 = sub_1D8F06254(*(v5 + 16), 0);
    v28 = sub_1D8F0CAD4(&v30, v10 + 4, v8, v5);

    sub_1D8D1B144();
    if (v28 != v8)
    {
      goto LABEL_25;
    }

    v3 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v30 = v10;
  v10 = 0;
  sub_1D8E4D830(&v30, sub_1D8F5DE98, &qword_1ECAB4740, &qword_1D918B110);
  v29 = v30;
  v27 = v30[2];
  if (!v27)
  {
LABEL_20:

    return v3 >= a1;
  }

  v11 = 0;
  v12 = v30 + 6;
  while (v11 < *(v29 + 16))
  {
    v13 = a2[1];
    if (__CFADD__(v13, a1))
    {
      goto LABEL_23;
    }

    if (v3 >= v13 + a1)
    {
      goto LABEL_20;
    }

    v10 = v3;
    v15 = *(v12 - 2);
    v14 = *(v12 - 1);
    v16 = *v12;

    v17 = sub_1D8D33C70(v15, v14);
    if (v18)
    {
      v19 = v17;
      v20 = a2[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = a2[2];
      v30 = v22;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83304();
        v22 = v30;
      }

      v23 = *(*(v22 + 48) + 16 * v19 + 8);

      v24 = *(*(v22 + 56) + 8 * v19);

      sub_1D8DA2AF4(v19, v22);

      a2[2] = v22;
    }

    else
    {
    }

    v25 = *(v16 + *(*v16 + 128));

    if (v13 < v25)
    {
      goto LABEL_24;
    }

    ++v11;
    a2[1] = v13 - v25;
    v12 += 3;
    v3 = v10;
    if (v27 == v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1D8E51254()
{
  v1 = *(type metadata accessor for TTMLRequest() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D9176C2C() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1D8E500A4(v5, v0 + 24, v0 + v2);
}

void sub_1D8E51344()
{
  v1 = *(type metadata accessor for ShazamSignatureRequest() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D9176C2C() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1D8E50134(v5, (v0 + 24), v0 + v2);
}

uint64_t sub_1D8E51434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8E514C4()
{
  v1 = *(type metadata accessor for ArtworkContent() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D9176C2C() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80) + 264) & ~*(v4 + 80));

  sub_1D8E4B38C(v5, v0 + v2, v0 + v3);
}

uint64_t sub_1D8E515E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8ED317C(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 80);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v3);
  }

  v4 = *(v0 + 96);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v4);
  }

  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v5);
  }

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v6);
  }

  v7 = *(v0 + 144);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v7);
  }

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 224);

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v11 = *(v0 + 288);

  return swift_deallocObject();
}

uint64_t CGImageResizer.resizedImage(at:to:displayScale:subsampleFactor:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v85 = a3;
  v87 = sub_1D9176C2C();
  v11 = *(v87 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v87);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v80 - v22;
  v23 = sub_1D8E52594(a2);
  v86 = sub_1D8E526C0(a4, a5, a6);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  v24 = byte_1EDCD7898;
  sub_1D8E520E8(byte_1EDCD7898, v88);
  v25 = sub_1D9176B1C();
  v84 = v23;
  v26 = CGImageSourceCreateWithURL(v25, v23);

  if (!v26)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1EDCD5E28);
    (v11[2])(v14, a1, v87);
    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();
    if (!os_log_type_enabled(v34, v35))
    {

      v58 = v11[1];
      v59 = v14;
      goto LABEL_27;
    }

    v36 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v89 = v83;
    *v36 = 136315138;
    sub_1D8E53198(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
    v37 = v87;
    v38 = sub_1D9179A4C();
    v39 = v11;
    v41 = v40;
    v42 = v39[1];
    v42(v14, v37);
    v43 = sub_1D8CFA924(v38, v41, &v89);
    v11 = v39;

    *(v36 + 4) = v43;
    _os_log_impl(&dword_1D8CEC000, v34, v35, "Unable to create CGSource from URL: %s", v36, 0xCu);
    v44 = v83;
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1DA72CB90](v44, -1, -1);
    MEMORY[0x1DA72CB90](v36, -1, -1);

    v42(v88, v37);
LABEL_30:
    v32 = 1;
    return (v11[7])(v85, v32, 1, v87);
  }

  v27 = sub_1D9176B1C();
  v28 = ArtworkFormat.cgIdentifier.getter(v24);
  v29 = CGImageDestinationCreateWithURL(v27, v28, 1uLL, 0);

  if (!v29)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v45 = sub_1D917744C();
    __swift_project_value_buffer(v45, qword_1EDCD5E28);
    (v11[2])(v17, v88, v87);
    v46 = sub_1D917741C();
    v47 = sub_1D9178CFC();
    if (!os_log_type_enabled(v46, v47))
    {

      v58 = v11[1];
      v59 = v17;
      goto LABEL_27;
    }

    v48 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v89 = v83;
    *v48 = 136315138;
    sub_1D8E53198(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
    v49 = v87;
    v50 = sub_1D9179A4C();
    v51 = v11;
    v53 = v52;
    v82 = v46;
    v54 = v51[1];
    v54(v17, v49);
    v55 = sub_1D8CFA924(v50, v53, &v89);
    v11 = v51;

    *(v48 + 4) = v55;
    v56 = v82;
    _os_log_impl(&dword_1D8CEC000, v82, v47, "Unable to create destination for temporary URL: %s", v48, 0xCu);
    v57 = v83;
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1DA72CB90](v57, -1, -1);
    MEMORY[0x1DA72CB90](v48, -1, -1);

    v54(v88, v49);
    goto LABEL_30;
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v26, 0, v86);
  if (!ThumbnailAtIndex)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v60 = sub_1D917744C();
    __swift_project_value_buffer(v60, qword_1EDCD5E28);
    (v11[2])(v20, a1, v87);
    v61 = sub_1D917741C();
    v62 = sub_1D9178CFC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v81 = v63;
      v82 = swift_slowAlloc();
      v89 = v82;
      *v63 = 136315138;
      sub_1D8E53198(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
      v64 = v87;
      v65 = sub_1D9179A4C();
      v67 = v66;
      v83 = v11;
      v68 = v11[1];
      v68(v20, v64);
      v69 = sub_1D8CFA924(v65, v67, &v89);

      v70 = v81;
      *(v81 + 1) = v69;
      _os_log_impl(&dword_1D8CEC000, v61, v62, "Unable to create thumbnail from artwork at URL: %s", v70, 0xCu);
      v71 = v82;
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1DA72CB90](v71, -1, -1);
      MEMORY[0x1DA72CB90](v70, -1, -1);

      v68(v88, v64);
      v11 = v83;
      goto LABEL_30;
    }

    v58 = v11[1];
    v59 = v20;
LABEL_27:
    v78 = v87;
    v58(v59, v87);
    v58(v88, v78);
    goto LABEL_30;
  }

  v31 = ThumbnailAtIndex;
  CGImageDestinationAddImage(v29, ThumbnailAtIndex, 0);
  if (!CGImageDestinationFinalize(v29))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v72 = sub_1D917744C();
    __swift_project_value_buffer(v72, qword_1EDCD5E28);
    v73 = sub_1D917741C();
    v74 = sub_1D9178CFC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1D8CEC000, v73, v74, "Encountered unspecified error finalizing resize destination.", v75, 2u);
      MEMORY[0x1DA72CB90](v75, -1, -1);
      v76 = v84;
      v77 = v86;
    }

    else
    {
      v76 = v73;
      v77 = v26;
      v73 = v29;
      v26 = v31;
      v29 = v86;
      v31 = v84;
    }

    (v11[1])(v88, v87);
    goto LABEL_30;
  }

  (v11[4])(v85, v88, v87);
  v32 = 0;
  return (v11[7])(v85, v32, 1, v87);
}

uint64_t sub_1D8E520E8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v7, v3);
  sub_1D9176B3C();

  v18 = *(v9 + 8);
  v18(v12, v8);
  v19 = 6778480;
  v27[2] = 0x697365722E706D74;
  v27[3] = 0xEB000000002E657ALL;
  v20 = 0xE400000000000000;
  v21 = 1734701162;
  v22 = 0xE400000000000000;
  v23 = 1667851624;
  if (a1 != 3)
  {
    v23 = 6778217;
    v22 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v21 = v23;
    v20 = v22;
  }

  if (a1)
  {
    v19 = 6778986;
  }

  if (a1 <= 1u)
  {
    v24 = v19;
  }

  else
  {
    v24 = v21;
  }

  if (a1 <= 1u)
  {
    v25 = 0xE300000000000000;
  }

  else
  {
    v25 = v20;
  }

  MEMORY[0x1DA7298F0](v24, v25);

  sub_1D9176B4C();

  return (v18)(v15, v8);
}

uint64_t CGImageResizer.ConversionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8E52484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB4A70, &qword_1D918B320);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E696E0A0];
  *(inited + 32) = *MEMORY[0x1E696E0A0];
  *(inited + 16) = xmmword_1D918B210;
  v2 = MEMORY[0x1E69E6370];
  v3 = MEMORY[0x1E696DFE8];
  *(inited + 40) = 1;
  v4 = *v3;
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v5 = MEMORY[0x1E696E000];
  *(inited + 80) = 1;
  v6 = *v5;
  *(inited + 104) = v2;
  *(inited + 112) = v6;
  v7 = MEMORY[0x1E696E138];
  *(inited + 120) = 1;
  v8 = *v7;
  *(inited + 144) = v2;
  *(inited + 152) = v8;
  *(inited + 184) = v2;
  *(inited + 160) = 1;
  v9 = v1;
  v10 = v4;
  v11 = v6;
  v12 = v8;
  v13 = sub_1D8DAE1A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B0, &qword_1D9188F18);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_1D8E52594(unsigned __int8 a1)
{
  v2 = a1;
  sub_1D8E52484();
  if (v2 != 3)
  {
    v3 = *MEMORY[0x1E696E0F8];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    type metadata accessor for CFNumber(0);
    v11 = v5;
    *&v10 = v4;
    sub_1D8D65618(&v10, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8DAE5B8(v9, v3, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for CFString(0);
  sub_1D8E53198(&qword_1EDCD5BB0, type metadata accessor for CFString);
  v7 = sub_1D917802C();

  return v7;
}

uint64_t sub_1D8E526C0(double a1, double a2, double a3)
{
  sub_1D8E52484();
  v6 = *MEMORY[0x1E696E100];
  if (a1 > a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v13 = MEMORY[0x1E69E7DE0];
  v12[0] = v7 * a3;
  sub_1D8D65618(v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8DAE5B8(v11, v6, isUniquelyReferenced_nonNull_native);
  type metadata accessor for CFString(0);
  sub_1D8E53198(&qword_1EDCD5BB0, type metadata accessor for CFString);
  v9 = sub_1D917802C();

  return v9;
}

CFDictionaryRef sub_1D8E527D4(CGImageSource *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  if (result)
  {
    v2 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 0;
      sub_1D917804C();
    }

    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8E52AF4(CGImageSource *a1, double a2, double a3)
{
  v5 = COERCE_DOUBLE(sub_1D8E527D4(a1));
  if (v7)
  {
    return 3;
  }

  v8 = v5;
  v9 = dbl_1D918B340[byte_1F545D6A0];
  v10 = v5 / v9;
  v11 = v6 / v9;
  if (v10 < a2 || v11 < a3)
  {
    return 3;
  }

  result = byte_1F545D6A0;
  v14 = dbl_1D918B340[byte_1F545D6A1];
  if (v8 / v14 >= a2 && v6 / v14 >= a3)
  {
    v15 = dbl_1D918B340[byte_1F545D6A2];
    v16 = v8 / v15;
    if (v6 / v15 < a3 || v16 < a2)
    {
      return byte_1F545D6A1;
    }

    else
    {
      return byte_1F545D6A2;
    }
  }

  return result;
}

void sub_1D8E52BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8E52484();
  type metadata accessor for CFString(0);
  sub_1D8E53198(&qword_1EDCD5BB0, type metadata accessor for CFString);
  v4 = sub_1D917802C();

  v5 = sub_1D9176B1C();
  v6 = CGImageSourceCreateWithURL(v5, v4);

  if (!v6)
  {
    sub_1D8E531E0();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    v23 = v4;
LABEL_23:

    return;
  }

  v7 = sub_1D9176B1C();
  v8 = ArtworkFormat.cgIdentifier.getter(*(a3 + 152));
  v9 = CGImageDestinationCreateWithURL(v7, v8, 1uLL, 0);

  if (!v9)
  {
    sub_1D8E531E0();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v23 = v6;
    goto LABEL_23;
  }

  v10 = COERCE_DOUBLE(sub_1D8E527D4(v6));
  if (v12)
  {
    goto LABEL_20;
  }

  v13 = v10;
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  if (v14 == v10 && v15 == v11)
  {
    goto LABEL_20;
  }

  v43 = v11;
  v42 = sub_1D8E52AF4(v6, v14, v15);
  v17 = sub_1D8E52594(v42);
  v18 = sub_1D9176B1C();
  v44 = v17;
  v19 = CGImageSourceCreateWithURL(v18, v17);

  if (!v19)
  {
LABEL_19:

LABEL_20:
    CGImageDestinationAddImageFromSource(v9, v6, 0, 0);
    if (CGImageDestinationFinalize(v9))
    {

      return;
    }

    sub_1D8E531E0();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    v23 = v9;
    goto LABEL_23;
  }

  v20 = sub_1D8E526C0(v14, v15, 1.0);
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v19, 0, v20);
  v22 = v19;
  if (!ThumbnailAtIndex)
  {

    goto LABEL_19;
  }

  v23 = ThumbnailAtIndex;
  v41 = v22;
  CGImageDestinationAddImage(v9, ThumbnailAtIndex, 0);
  if (!CGImageDestinationFinalize(v9))
  {
    sub_1D8E531E0();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();

    goto LABEL_23;
  }

  if (qword_1EDCD5E20 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD5E28);
  sub_1D8D41388(a3, v49);
  sub_1D8D41388(a3, v47);
  sub_1D8D41388(a3, v45);
  v25 = sub_1D917741C();
  v26 = sub_1D9178D1C();
  log = v25;
  if (os_log_type_enabled(v25, v26))
  {
    v39 = v26;
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53 = v38;
    *v27 = 136316418;
    if (v52 == 255)
    {
      v29 = 0xE700000000000000;
      v37 = 0x6E776F6E6B6E75;
    }

    else
    {
      v37 = LibraryEntity.description.getter(v50, v51, v52);
      v29 = v28;
    }

    sub_1D8D58578(v49);
    v34 = sub_1D8CFA924(v37, v29, &v53);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v13;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v43;
    *(v27 + 32) = 2048;
    v35 = v48;
    sub_1D8D58578(v47);
    *(v27 + 34) = v35;
    *(v27 + 42) = 2048;
    v36 = v46;
    sub_1D8D58578(v45);
    *(v27 + 44) = v36;
    *(v27 + 52) = 2048;
    *(v27 + 54) = qword_1D918B358[v42];
    _os_log_impl(&dword_1D8CEC000, log, v39, "Resizing original artwork during image conversion for %s - (%f,%f) -> (%f,%f) w/ subsample factor %ld", v27, 0x3Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1DA72CB90](v38, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  else
  {

    sub_1D8D58578(v49);
    sub_1D8D58578(v47);
    sub_1D8D58578(v45);
  }
}

unint64_t sub_1D8E53124()
{
  result = qword_1ECAB4A60;
  if (!qword_1ECAB4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4A60);
  }

  return result;
}

uint64_t sub_1D8E53198(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8E531E0()
{
  result = qword_1ECAB4A68;
  if (!qword_1ECAB4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4A68);
  }

  return result;
}

uint64_t AssetProcessingStep<>.resizeOnDisk(to:scale:subsampleFactor:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v10 = a1;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD9D8(v19, v22);
  (*(v15 + 16))(v18, v7, a2);
  return sub_1D8E5336C(v10, v22, v18, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1D8E5336C@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v18 = type metadata accessor for DiskResizeArtworkProcessingStep();
  v19 = *(a4 - 8);
  (*(v19 + 16))(a6 + v18[9], a3, a4);
  (*(a5 + 40))(v22, a4, a5);
  ArtworkRequest.resized(to:displayScale:)(a9, 0, a6, a7, a8);
  (*(v19 + 8))(a3, a4);
  sub_1D8D58578(v22);
  v20 = (a6 + v18[10]);
  *v20 = a7;
  v20[1] = a8;
  *(a6 + v18[11]) = a9;
  *(a6 + v18[12]) = a1;
  return sub_1D8D6BCE0(a2, a6 + v18[13]);
}

uint64_t DiskResizeArtworkProcessingStep.publisher.getter@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v74 = a1;
  v4 = a1 - 2;
  v64 = *(a1 - 1);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v60 = v6;
  v7 = &v58 - ((&v6->height + 7) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 3);
  v9 = *(v4 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ArtworkContent();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v11;
  v72 = AssociatedConformanceWitness;
  v13 = sub_1D917770C();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v58 - v15;
  WitnessTable = swift_getWitnessTable();
  v63 = v13;
  v61 = WitnessTable;
  v17 = type metadata accessor for EmitLifecycle();
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v58 - v19;
  v73 = AssociatedTypeWitness;
  v70 = *(AssociatedTypeWitness - 8);
  v20 = *(v70 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v75 = &v58 - v23;
  v24 = v4[11];
  v25 = *(v9 + 40);
  v26 = v9;
  v27 = v9;
  v28 = v8;
  v25(v76, v8, v27, v22);
  v29 = v77;
  v30 = v78;
  sub_1D8D58578(v76);
  v80.width = v29;
  v80.height = v30;
  if (CGSizeEqualToSize(v80, v3[11]) && ((v25)(v76, v8, v26), v31 = v79, sub_1D8D58578(v76), v31 == v3[12].width) && *(&v3->width + v74[12]) == 3)
  {
    v32 = v75;
    (*(v26 + 48))(v8, v26);
    v33 = v73;
    v34 = sub_1D9177B1C();
    v35 = v70;
  }

  else
  {
    v36 = v7;
    v58 = v7;
    v37 = v26;
    (*(v26 + 48))(v8, v26);
    v38 = v74;
    v39 = (v3 + v74[10]);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(&v3->width + v74[11]);
    v43 = v74[13];
    v59 = *(&v3->width + v74[12]);
    v44 = v64;
    (*(v64 + 16))(v36, v3, v74);
    sub_1D8CFD9D8(v3 + v43, v76);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v46 = (&v60->width + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 47) & 0xFFFFFFFFFFFFFFF8;
    v60 = v3;
    v48 = swift_allocObject();
    *(v48 + 16) = v28;
    *(v48 + 24) = v37;
    (*(v44 + 32))(v48 + v45, v58, v38);
    sub_1D8D6BCE0(v76, v48 + v46);
    v49 = (v48 + v47);
    *v49 = v40;
    v49[1] = v41;
    v50 = v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v50 = v42;
    *(v50 + 8) = v59;
    v51 = v66;
    v52 = v73;
    v53 = v75;
    sub_1D9177C6C();

    (*(v70 + 8))(v53, v52);
    v54 = swift_getWitnessTable();
    AssetProcessingStep.metadataTrace.getter(v38, v54, v76);
    v55 = v63;
    v56 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
    v32 = v65;
    Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v76, "DiskResizeOperation", 19, 2, 0, 0, 0, v56 & 1, v65, v55);
    sub_1D8D08A50(v76, &qword_1ECAB4928, &qword_1D918B380);
    (*(v69 + 8))(v51, v55);
    v33 = v68;
    swift_getWitnessTable();
    v34 = sub_1D9177B1C();
    v35 = v67;
  }

  result = (*(v35 + 8))(v32, v33);
  *v71 = v34;
  return result;
}

uint64_t sub_1D8E53B04@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v107 = a3;
  v110 = a5;
  v111 = a6;
  v100 = a4;
  v105 = a1;
  v97 = a7;
  v14 = sub_1D91773AC();
  v94 = *(v14 - 8);
  v95 = v14;
  v15 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v99 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - v21;
  v23 = sub_1D9176C2C();
  v103 = *(v23 - 8);
  v104 = v23;
  v24 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v108 = &v93 - v27;
  v109 = sub_1D917734C();
  v113 = *(v109 - 8);
  v28 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v98 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v93 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v93 - v34;
  v36 = sub_1D9176EAC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a2;
  sub_1D8D088B4((a2 + 224), v114, &qword_1ECAB4928, &qword_1D918B380);
  v41 = v115;
  if (v115)
  {
    v42 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v43 = (*(v42 + 8))(v41, v42);
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
  }

  else
  {
    sub_1D8D08A50(v114, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D9176E9C();
    v43 = sub_1D9176E5C();
    v45 = v46;
    (*(v37 + 8))(v40, v36);
  }

  v102 = v22;
  if (qword_1EDCD1168 != -1)
  {
    swift_once();
  }

  v47 = sub_1D917739C();
  v48 = __swift_project_value_buffer(v47, qword_1EDCD1170);
  sub_1D917737C();
  sub_1D917731C();

  v96 = v48;
  v49 = sub_1D917737C();
  v50 = sub_1D9178F5C();

  if (sub_1D917918C())
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v43;
    v54 = v52;
    v114[0] = v52;
    *v51 = 136315138;
    v55 = sub_1D8CFA924(v53, v45, v114);

    *(v51 + 4) = v55;
    v56 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v49, v50, v56, "ResizeImage", "[identifier=%{name=identifier}s] Resize", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1DA72CB90](v54, -1, -1);
    MEMORY[0x1DA72CB90](v51, -1, -1);
  }

  else
  {
  }

  v58 = v110;
  v57 = v111;
  v59 = v113;
  v60 = v109;
  (*(v113 + 16))(v32, v35, v109);
  v61 = sub_1D91773FC();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  sub_1D91773EC();
  v64 = *(v59 + 8);
  v113 = v59 + 8;
  v64(v35, v60);
  v65 = type metadata accessor for DiskResizeArtworkProcessingStep();
  WitnessTable = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v65, WitnessTable, v114);
  v67 = v115;
  if (v115)
  {
    v68 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    __swift_project_boxed_opaque_existential_1(v107, v107[3]);
    swift_getDynamicType();
    v69 = sub_1D9179FEC();
    (*(v68 + 24))(v117, "ResizeImage", 11, 2, v69, v70, v67, v68);
    v58 = v110;
    v57 = v111;

    __swift_destroy_boxed_opaque_existential_1Tm(v114);
  }

  else
  {
    sub_1D8D08A50(v114, &qword_1ECAB4928, &qword_1D918B380);
    memset(v117, 0, 40);
  }

  v71 = v108;
  v72 = &v112[*(v65 + 36)];
  (*(v57 + 40))(v114, v58, v57);
  v73 = v106;
  sub_1D8E546BC(v105, v71);
  if (v73)
  {

    sub_1D8D58578(v114);
    return sub_1D8D08A50(v117, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  sub_1D8D58578(v114);
  v74 = v107[3];
  v75 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v74);
  v76 = v102;
  (*(v75 + 8))(v71, v100, v74, v75, a8, a9, a10);
  v77 = v99;
  sub_1D8D088B4(v76, v99, &unk_1ECAB5910, &qword_1D9188C90);
  v79 = v103;
  v78 = v104;
  if ((*(v103 + 48))(v77, 1, v104) == 1)
  {
    sub_1D8D08A50(v77, &unk_1ECAB5910, &qword_1D9188C90);
    type metadata accessor for DiskResizeArtworkProcessingStep.ResizeError();
    swift_getWitnessTable();
    swift_allocError();
    *v80 = 0;
    swift_willThrow();

    sub_1D8D08A50(v76, &unk_1ECAB5910, &qword_1D9188C90);
    (*(v79 + 8))(v71, v78);
    return sub_1D8D08A50(v117, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  v112 = *(v79 + 32);
  (v112)(v101, v77, v78);
  sub_1D8D088B4(v117, v114, &unk_1ECAB6E00, &qword_1D91952E0);
  if (v115)
  {
    __swift_project_boxed_opaque_existential_1(v114, v115);
    TraceInterval.end()();
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
  }

  else
  {
    sub_1D8D08A50(v114, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  v82 = v98;
  v83 = sub_1D917737C();
  sub_1D91773DC();
  LODWORD(v111) = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    v84 = v93;
    sub_1D917740C();

    v86 = v94;
    v85 = v95;
    if ((*(v94 + 88))(v84, v95) == *MEMORY[0x1E69E93E8])
    {
      v87 = "[Error] Interval already ended";
    }

    else
    {
      (*(v86 + 8))(v84, v85);
      v87 = "";
    }

    v88 = swift_slowAlloc();
    *v88 = 0;
    v89 = v98;
    v90 = sub_1D917732C();
    v91 = v87;
    v82 = v89;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v83, v111, v90, "ResizeImage", v91, v88, 2u);
    MEMORY[0x1DA72CB90](v88, -1, -1);
    v71 = v108;
  }

  v64(v82, v109);
  sub_1D8D08A50(v102, &unk_1ECAB5910, &qword_1D9188C90);
  v92 = v104;
  (*(v103 + 8))(v71, v104);
  sub_1D8D08A50(v117, &unk_1ECAB6E00, &qword_1D91952E0);
  (v112)(v97, v101, v92);
  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8E545D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DiskResizeArtworkProcessingStep() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8E53B04(a1, (v2 + v8), (v2 + v9), *(v2 + ((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v5, v6, a2, *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D8E546BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArtworkContent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v12;
  }

  else
  {
    v13 = *v12;
    v14 = v12[1];
    sub_1D8E5487C(4u, v8);
    sub_1D9176CAC();
    if (v2)
    {
      (*(v5 + 8))(v8, v4);
      return sub_1D8D7567C(v13, v14);
    }

    sub_1D8D7567C(v13, v14);
  }

  return (*(v5 + 32))(v17, v8, v4);
}

uint64_t sub_1D8E5487C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v7, v3);
  sub_1D9176B3C();

  v18 = *(v9 + 8);
  v18(v12, v8);
  v19 = 6778480;
  v27[2] = 0x697365722E706D74;
  v27[3] = 0xEB000000002E657ALL;
  v20 = 0xE400000000000000;
  v21 = 1734701162;
  v22 = 0xE400000000000000;
  v23 = 1667851624;
  if (a1 != 3)
  {
    v23 = 6778217;
    v22 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v21 = v23;
    v20 = v22;
  }

  if (a1)
  {
    v19 = 6778986;
  }

  if (a1 <= 1u)
  {
    v24 = v19;
  }

  else
  {
    v24 = v21;
  }

  if (a1 <= 1u)
  {
    v25 = 0xE300000000000000;
  }

  else
  {
    v25 = v20;
  }

  MEMORY[0x1DA7298F0](v24, v25);

  sub_1D9176B4C();

  return (v18)(v15, v8);
}

uint64_t DiskResizeArtworkProcessingStep.ResizeError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E54BF4()
{
  sub_1D9179DBC();
  DiskResizeArtworkProcessingStep.ResizeError.hash(into:)();
  return sub_1D9179E1C();
}

void sub_1D8E54CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v3 <= 0x3F)
    {
      sub_1D8E550E0();
      if (v4 <= 0x3F)
      {
        sub_1D8CF33CC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D8E54D74(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 264) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 264) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1D8E54EC4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = &a1[v8 + 264] & ~v8;

        v19(v20);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 232) = 0u;
        *(a1 + 216) = 0u;
        *(a1 + 200) = 0u;
        *(a1 + 184) = 0u;
        *(a1 + 168) = 0u;
        *(a1 + 152) = 0u;
        *(a1 + 136) = 0u;
        *(a1 + 120) = 0u;
        *(a1 + 104) = 0u;
        *(a1 + 88) = 0u;
        *(a1 + 72) = 0u;
        *(a1 + 56) = 0u;
        *(a1 + 40) = 0u;
        *(a1 + 24) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 248) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 264) & ~v8) + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFD8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

void sub_1D8E550E0()
{
  if (!qword_1ECAB2668)
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB2668);
    }
  }
}

uint64_t sub_1D8E55148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssetProcessingStep<>.normalized()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(*(a1 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a1, v7);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  return ImageNormalizationProcessingStep.init(upstream:format:)(v9, byte_1EDCD7898, a1, a2, a3);
}

uint64_t ImageNormalizationProcessingStep.init(upstream:format:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  (*(a4 + 40))(v11, a3, a4);
  ArtworkRequest.with(format:)(a2, a5);
  sub_1D8D58578(v11);
  v9 = type metadata accessor for ImageNormalizationProcessingStep();
  result = (*(*(a3 - 8) + 32))(&a5[*(v9 + 36)], a1, a3);
  a5[*(v9 + 40)] = a2;
  return result;
}

uint64_t ImageNormalizationProcessingStep.publisher.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v30 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v24 - v10;
  v27 = type metadata accessor for ArtworkContent();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1D917770C();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = v1;
  v17 = v1 + *(a1 + 36);
  (*(v6 + 48))(v7, v6, v13);
  v18 = v28;
  (*(v3 + 16))(v28, v16, a1);
  v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v6;
  (*(v3 + 32))(v20 + v19, v18, a1);
  v21 = v25;
  sub_1D9177C6C();

  (*(v31 + 8))(v21, AssociatedTypeWitness);
  swift_getWitnessTable();
  v22 = sub_1D9177B1C();
  (*(v29 + 8))(v15, v11);
  return v22;
}

uint64_t sub_1D8E55738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v26 = a5;
  v34 = sub_1D9176C2C();
  v31 = *(v34 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ImageNormalizationProcessingStep();
  v15 = *(a2 + *(v14 + 40));
  v32 = v13;
  sub_1D8E559C8(v15, v13);
  v16 = *(v14 + 36);
  v17 = *(a4 + 40);
  v27 = a2;
  v18 = v17;
  v17(v33, a3, a4);
  v28 = v10;
  v19 = v30;
  sub_1D8E55C8C(v29, v15, a4, v10);
  sub_1D8D58578(v33);
  if (v19)
  {
    return (*(v31 + 8))(v32, v34);
  }

  v18(v33, a3, a4);
  v21 = v28;
  v22 = v32;
  sub_1D8E52BA4(v28, v32, v33);
  sub_1D8D58578(v33);
  v23 = v31;
  v24 = v34;
  (*(v31 + 8))(v21, v34);
  (*(v23 + 32))(v26, v22, v24);
  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8E559C8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v7, v3);
  sub_1D9176B3C();

  v18 = *(v9 + 8);
  v18(v12, v8);
  v24[2] = 0x6D726F662E706D74;
  v24[3] = 0xEB000000002E7461;
  v19 = 1734701162;
  if (a1 != 2)
  {
    v19 = 1667851624;
  }

  v20 = 6778986;
  if (!a1)
  {
    v20 = 6778480;
  }

  if (a1 <= 1u)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  if (a1 <= 1u)
  {
    v22 = 0xE300000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1DA7298F0](v21, v22);

  sub_1D9176B4C();

  return (v18)(v15, v8);
}

uint64_t sub_1D8E55C8C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v19[1] = a3;
  v20 = a4;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArtworkContent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v15;
  }

  else
  {
    v16 = *v15;
    v17 = v15[1];
    sub_1D8E559C8(a2, v11);
    sub_1D9176CAC();
    if (v4)
    {
      (*(v8 + 8))(v11, v7);
      return sub_1D8D7567C(v16, v17);
    }

    sub_1D8D7567C(v16, v17);
  }

  return (*(v8 + 32))(v20, v11, v7);
}

uint64_t sub_1D8E55E64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ImageNormalizationProcessingStep.publisher.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8E55EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ImageNormalizationProcessingStep() - 8);
  return sub_1D8E55738(a1, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a2);
}

uint64_t sub_1D8E55F40(uint64_t a1)
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

uint64_t sub_1D8E55FC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 264) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 264) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1D8E56150(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 264) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 264) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 264] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 248) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

PodcastsFoundation::ImageCacheDeleteLevels __swiftcall ImageCacheDeleteLevels.init(original:resizes:)(PodcastsFoundation::CacheDeleteUrgency original, PodcastsFoundation::CacheDeleteUrgency resizes)
{
  *v2 = original;
  *(v2 + 1) = resizes;
  result.original = original;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageCacheDeleteLevels(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ImageCacheDeleteLevels(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ImageCacheDeleteStrategy.cacheDeleteLevels(for:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 8 * (*(result + 32) + 1);
  *a2 = 0x301u >> v2;
  a2[1] = 0x3030101u >> v2;
  return result;
}

uint64_t sub_1D8E565A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D8D088B4(a3, v24 - v10, &qword_1ECABB890, &qword_1D918B960);
  v12 = sub_1D917886C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D8D08A50(v11, &qword_1ECABB890, &qword_1D918B960);
  }

  else
  {
    sub_1D917885C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D917874C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D917829C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D8E56860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D8D088B4(a3, v24 - v10, &qword_1ECABB890, &qword_1D918B960);
  v12 = sub_1D917886C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D8D08A50(v11, &qword_1ECABB890, &qword_1D918B960);
  }

  else
  {
    sub_1D917885C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D917874C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1D917829C() + 32;
      type metadata accessor for ArtworkContent();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8D08A50(a3, &qword_1ECABB890, &qword_1D918B960);
  type metadata accessor for ArtworkContent();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D8E56B18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8E574F8(a1, a2);
}

uint64_t sub_1D8E56BD4()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[47];
  v4 = v0[45];
  v6 = v0[42];
  v5 = v0[43];

  v7 = v0[1];
  v8 = v0[54];

  return v7();
}

uint64_t sub_1D8E56C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8D58924;

  return ImageContentProvider.url(for:)(a1, a2, a3, a4);
}

uint64_t ImageContentProvider.image(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9176C2C();
  v3[2] = v7;
  v8 = *(v7 - 8);
  v3[3] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[4] = v10;
  v11 = *(a3 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v3[5] = v13;
  *v13 = v3;
  v13[1] = sub_1D8E56ECC;

  return v15(v10, a1, a2, a3);
}

uint64_t sub_1D8E56ECC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1D8E57078;
  }

  else
  {
    v3 = sub_1D8E56FE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E56FE0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4.value = URL.cgImage()().value;
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4.value);
}

uint64_t sub_1D8E57078()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t dispatch thunk of ImageContentProvider.content(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D8D5FF18;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ImageContentProvider.url(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D8D58924;

  return v13(a1, a2, a3, a4);
}

unint64_t ImageProviderError.description.getter()
{
  v1 = 0xD00000000000004FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000057;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000009ALL;
  }

  *v0;
  return result;
}

uint64_t ImageProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8E5743C()
{
  result = qword_1ECAB4AF8;
  if (!qword_1ECAB4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4AF8);
  }

  return result;
}

unint64_t sub_1D8E57490()
{
  v1 = 0xD00000000000004FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000057;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000009ALL;
  }

  *v0;
  return result;
}

uint64_t sub_1D8E574F8(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = type metadata accessor for ArtworkContent();
  v3[38] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v6 = *(type metadata accessor for CachingImageContentProvider() - 8);
  v3[40] = v6;
  v3[41] = *(v6 + 64);
  v3[42] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E57628, 0, 0);
}

uint64_t sub_1D8E57628()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[36];
  v5 = v0[37];
  v7 = sub_1D917886C();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1D8E57C3C(v5, v1);
  sub_1D8D41388(v6, (v0 + 2));
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1D8E59564(v1, v9 + v8);
  memcpy((v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v0 + 2, 0x108uLL);
  v10 = sub_1D8E56860(0, 0, v2, &unk_1D918B9A8, v9);
  v0[44] = v10;
  v11 = *(MEMORY[0x1E69E86A8] + 4);
  v12 = swift_task_alloc();
  v0[45] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  *v12 = v0;
  v12[1] = sub_1D8E577D8;
  v15 = v0[38];
  v14 = v0[39];
  v16 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v14, v10, v15, v13, v16);
}

uint64_t sub_1D8E577D8()
{
  v2 = *v1;
  v3 = (*v1)[45];
  v4 = *v1;
  v2[46] = v0;

  v5 = v2[44];
  if (v0)
  {

    v6 = sub_1D8E579EC;
  }

  else
  {
    sub_1D8E596E4(v2[39], type metadata accessor for ArtworkContent);

    v6 = sub_1D8E57934;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D8E57934()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v7 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0) + 60);
  sub_1D8DADA18(v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D8E579EC()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];

  v4 = v0[1];
  v5 = v0[46];

  return v4();
}

uint64_t sub_1D8E57A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1D8D58924;

  return CachingImageContentProvider.content(for:)(a1, a5);
}

id static ObjCCachingImageContentProviderBridge.extensionBridge()()
{
  v0 = type metadata accessor for CachingImageContentProvider();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD60B8 != -1)
  {
    v10 = v2;
    swift_once();
    v2 = v10;
  }

  v5 = __swift_project_value_buffer(v2, qword_1EDCD60C0);
  sub_1D8E57C3C(v5, v4);
  v6 = type metadata accessor for ObjCCachingImageContentProviderBridge();
  v7 = objc_allocWithZone(v6);
  sub_1D8E57C3C(v4, v7 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  sub_1D8E596E4(v4, type metadata accessor for CachingImageContentProvider);
  return v8;
}

uint64_t sub_1D8E57C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingImageContentProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ObjCCachingImageContentProviderBridge.__allocating_init(wrapping:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1D8E57C3C(a1, v3 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1D8E596E4(a1, type metadata accessor for CachingImageContentProvider);
  return v4;
}

uint64_t type metadata accessor for ObjCCachingImageContentProviderBridge()
{
  result = qword_1ECAB1278;
  if (!qword_1ECAB1278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ObjCCachingImageContentProviderBridge.init(wrapping:)(uint64_t a1)
{
  sub_1D8E57C3C(a1, v1 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ObjCCachingImageContentProviderBridge();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1D8E596E4(a1, type metadata accessor for CachingImageContentProvider);
  return v3;
}

uint64_t sub_1D8E57F20(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 1104) = v4;
  *(v5 + 1096) = a4;
  *(v5 + 1088) = a3;
  *(v5 + 1080) = a2;
  *(v5 + 1072) = a1;
  v6 = sub_1D917906C();
  *(v5 + 1112) = v6;
  v7 = *(v6 - 8);
  *(v5 + 1120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 1128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E57FF0, 0, 0);
}

uint64_t sub_1D8E57FF0()
{
  v1 = [*(v0 + 1080) managedObjectContext];
  *(v0 + 1136) = v1;
  if (v1)
  {
    v2 = *(v0 + 1128);
    v3 = *(v0 + 1120);
    v4 = *(v0 + 1112);
    v5 = *(v0 + 1080);
    v6 = swift_allocObject();
    *(v0 + 1144) = v6;
    *(v6 + 16) = v5;
    (*(v3 + 104))(v2, *MEMORY[0x1E695D2B8], v4);
    v7 = *(MEMORY[0x1E695D2C0] + 4);
    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 1152) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B00, &unk_1D9192690);
    *v9 = v0;
    v9[1] = sub_1D8E58314;
    v11 = *(v0 + 1128);

    return MEMORY[0x1EEDB6538](v0 + 16, v11, sub_1D8E58A20, v6, v10);
  }

  else
  {
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D8E58858(v0 + 16, v0 + 544);
    if (*(v0 + 552))
    {
      v12 = *(v0 + 1104);
      v13 = *(v0 + 1096);
      v14 = *(v0 + 1088);
      memcpy((v0 + 280), (v0 + 544), 0x108uLL);
      ArtworkRequest.resized(to:displayScale:)(0.0, 1, v0 + 808, v14, v13);
      v15 = swift_task_alloc();
      *(v0 + 1160) = v15;
      *v15 = v0;
      v15[1] = sub_1D8E58630;
      v16 = *(v0 + 1072);

      return sub_1D8E574F8(v16, v0 + 808);
    }

    else
    {
      sub_1D8D08A50(v0 + 544, &qword_1ECAB4B00, &unk_1D9192690);
      sub_1D8E588C8();
      swift_allocError();
      swift_willThrow();
      sub_1D8D08A50(v0 + 16, &qword_1ECAB4B00, &unk_1D9192690);
      v17 = *(v0 + 1128);

      v18 = *(v0 + 8);

      return v18();
    }
  }
}

void sub_1D8E58314()
{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v6 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[143];
    v5 = v2[142];
    (*(v2[140] + 8))(v2[141], v2[139]);

    MEMORY[0x1EEE6DFA0](sub_1D8E58474, 0, 0);
  }
}

uint64_t sub_1D8E58474()
{
  sub_1D8E58858((v0 + 2), (v0 + 68));
  if (*(v0 + 69))
  {
    v1 = *(v0 + 138);
    v2 = v0[137];
    v3 = v0[136];
    memcpy(v0 + 35, v0 + 68, 0x108uLL);
    ArtworkRequest.resized(to:displayScale:)(0.0, 1, (v0 + 101), v3, v2);
    v4 = swift_task_alloc();
    *(v0 + 145) = v4;
    *v4 = v0;
    v4[1] = sub_1D8E58630;
    v5 = *(v0 + 134);

    return sub_1D8E574F8(v5, (v0 + 101));
  }

  else
  {
    sub_1D8D08A50((v0 + 68), &qword_1ECAB4B00, &unk_1D9192690);
    sub_1D8E588C8();
    swift_allocError();
    swift_willThrow();
    sub_1D8D08A50((v0 + 2), &qword_1ECAB4B00, &unk_1D9192690);
    v7 = *(v0 + 141);

    v8 = *(v0 + 1);

    return v8();
  }
}

uint64_t sub_1D8E58630()
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v6 = *v1;
  *(v2 + 1168) = v0;

  sub_1D8D58578(v2 + 808);
  if (v0)
  {
    v4 = sub_1D8E587D4;
  }

  else
  {
    v4 = sub_1D8E5874C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8E5874C()
{
  v1 = *(v0 + 1128);
  sub_1D8D58578(v0 + 280);
  sub_1D8D08A50(v0 + 16, &qword_1ECAB4B00, &unk_1D9192690);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8E587D4()
{
  sub_1D8D58578((v0 + 35));
  sub_1D8D08A50((v0 + 2), &qword_1ECAB4B00, &unk_1D9192690);
  v1 = v0[146];
  v2 = v0[141];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8E58858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B00, &unk_1D9192690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8E588C8()
{
  result = qword_1ECAB4B08;
  if (!qword_1ECAB4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4B08);
  }

  return result;
}

uint64_t sub_1D8E5891C@<X0>(uint64_t a1@<X8>)
{
  MTPodcast.artworkModel.getter(v3);
  v4[8] = v3[8];
  v4[9] = v3[9];
  v4[10] = v3[10];
  v4[4] = v3[4];
  v4[5] = v3[5];
  v4[6] = v3[6];
  v4[7] = v3[7];
  v4[0] = v3[0];
  v4[1] = v3[1];
  v4[2] = v3[2];
  v4[3] = v3[3];
  result = sub_1D8D2E02C(v4);
  if (result == 1)
  {
    *(a1 + 256) = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    ArtworkModel.baseRequest.getter(a1);
    return sub_1D8D08A50(v3, &qword_1ECAB4B18, &qword_1D918B988);
  }

  return result;
}

uint64_t sub_1D8E58BD8(void *a1, const void *a2, void *a3, double a4, double a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v11 = sub_1D9176C2C();
  v5[4] = v11;
  v12 = *(v11 - 8);
  v5[5] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[6] = v14;
  v5[7] = _Block_copy(a2);
  v15 = a1;
  a3;
  v16 = swift_task_alloc();
  v5[8] = v16;
  *v16 = v5;
  v16[1] = sub_1D8E58D20;

  return sub_1D8E57F20(v14, v15, a4, a5);
}

uint64_t sub_1D8E58D20()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v0)
  {
    v7 = sub_1D9176A5C();

    v8 = v7;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v12 = v2[5];
    v11 = v2[6];
    v13 = v2[4];
    v10 = sub_1D9176B1C();
    (*(v12 + 8))(v11, v13);
    v9 = v10;
    v8 = 0;
  }

  v14 = v2[7];
  (v14)[2](v14, v9, v8);

  _Block_release(v14);

  v15 = *(v6 + 8);

  return v15();
}

uint64_t ObjCCachingImageContentProviderBridge.CachingContentBridgeError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

id ObjCCachingImageContentProviderBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCCachingImageContentProviderBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCCachingImageContentProviderBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E5901C()
{
  result = qword_1ECAB4B10;
  if (!qword_1ECAB4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4B10);
  }

  return result;
}

uint64_t sub_1D8E590B0()
{
  result = type metadata accessor for CachingImageContentProvider();
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

uint64_t dispatch thunk of ObjCCachingImageContentProviderBridge.artwork(for:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1D8D5FF18;
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;

  return v16(a1, a2, v13, v14);
}

uint64_t sub_1D8E592D0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D8D58924;

  return sub_1D8E58BD8(v2, v6, v5, v3, v4);
}

uint64_t sub_1D8E59398()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D8D5FF18;

  return sub_1D9012F5C(v2, v3, v5);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8E59498(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8D5FF18;

  return sub_1D9013044(a1, v4, v5, v7);
}

uint64_t sub_1D8E59564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachingImageContentProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E595C8(uint64_t a1)
{
  v4 = *(type metadata accessor for CachingImageContentProvider() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D8E57A64(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1D8E596E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UniformBucketingStrategy.thresholds.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t UniformBucketingStrategy.init(maxDimensionsInPoints:thresholds:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = a1;

  sub_1D8D26E64(&v7);

  v6 = v7;
  *a2 = a3;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1D8E59848(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8F5DE20(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D8E59DA4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8ECC734(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1D8ECC734((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1D8E59DA4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D8E59DA4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D8E59FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v16 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v28 - v17;
  v33[0] = a2;
  v33[1] = a3;
  v33[2] = a4;
  v33[3] = a5;
  v19 = type metadata accessor for AssetSourceStep();
  v20 = *(v19 + 52);
  (*(a5 + 40))(a1, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v22 = AssetProcessingStep.metadataTrace.getter(v19, WitnessTable, v33);
  (*(v11 + 16))(v14, a1 + v20, a3, v22);
  swift_getDynamicType();
  (*(v11 + 8))(v14, a3);
  v31 = sub_1D9179FEC();
  v32 = v23;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v24 = v31;
  v25 = v32;
  swift_getAssociatedConformanceWitness();
  v26 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v33, "FetchFromSource", 15, 2, 0, v24, v25, v26 & 1, v30, AssociatedTypeWitness);

  sub_1D8D7621C(v33);
  return (*(v29 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_1D8E5A29C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for AssetSourceStep() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1D8E59FD0(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_1D8E5A348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1D8E5A524(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1D8E5A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v19 - v16;
  (*(a5 + 40))(a3, a5, v15);
  (*(a9 + 16))(a1, AssociatedTypeWitness, a9);
  return (*(v13 + 8))(v17, AssociatedTypeWitness);
}

uint64_t sub_1D8E5A96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(a2 + 24);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8E5A98C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[4] - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = a3[2];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 80);
  v14 = *(*(a3[4] - 8) + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v12 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = *(v11 + 84);
  }

  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v13;
  v19 = a2 - v17;
  if (a2 > v17)
  {
    v20 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_12;
    }

    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v23 >= 2)
    {
LABEL_12:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_32;
      }

LABEL_19:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) == -1)
      {
        v26 = 0;
      }

      else
      {
        if (v20 <= 3)
        {
          v25 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
        }

        else
        {
          v25 = 4;
        }

        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v26 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v26 = *a1;
          }
        }

        else if (v25 == 1)
        {
          v26 = *a1;
        }

        else
        {
          v26 = *a1;
        }
      }

      v34 = v17 + (v26 | v24);
      return (v34 + 1);
    }
  }

LABEL_32:
  if (v6 == v17)
  {
    v27 = *(v5 + 48);

    return v27();
  }

  v29 = (a1 + v18) & ~v13;
  if (v8 == v17)
  {
    v30 = *(v7 + 48);

    return v30(v29);
  }

  v31 = (v29 + v14 + v15) & ~v15;
  if (v12 != v17)
  {
    v33 = *(v31 + v16);
    if (v33 < 2)
    {
      return 0;
    }

    v34 = (v33 + 2147483646) & 0x7FFFFFFF;
    return (v34 + 1);
  }

  v32 = *(v11 + 48);

  return v32(v31, v12, v10);
}

char *sub_1D8E5AC78(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  v7 = *(a4[4] - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a4[2] - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4[3] - 8) + 64);
  v13 = *(v7 + 80);
  v14 = *(*(a4[4] - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v11 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  v18 = v16 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15) + 1;
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_56:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v12 + v13] & ~v13;
    if (v8 == v17)
    {
      v31 = *(v7 + 56);

      return v31(v30);
    }

    else
    {
      result = ((v30 + v14 + v15) & ~v15);
      if (v11 == v17)
      {
        v32 = *(v10 + 56);

        return v32(result);
      }

      else
      {
        result[v16] = a2 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D8E5B088@<X0>(void **a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a4;
  v36 = a6;
  v38 = a3;
  v39 = a8;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v32[1] = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v41 = v15;
  v42 = AssociatedConformanceWitness;
  v43 = MEMORY[0x1E69E7288];
  v17 = sub_1D917772C();
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  v22 = *a1;
  (*(a7 + 48))(a5, a7, v19);
  v23 = swift_allocObject();
  *(v23 + 16) = v33;
  *(v23 + 24) = v22;
  v24 = v22;
  sub_1D9177D0C();

  (*(v34 + 8))(v14, AssociatedTypeWitness);
  v40 = v35;
  v41 = a5;
  v42 = v36;
  v43 = a7;
  v25 = type metadata accessor for FallbackProcessingStep();
  WitnessTable = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v25, WitnessTable, &v40);
  v27 = sub_1D9179FEC();
  v29 = v28;
  swift_getWitnessTable();
  v30 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v40, "FallbackBackupSource", 20, 2, 0, v27, v29, v30 & 1, v39, v17);

  sub_1D8D7621C(&v40);
  return (*(v37 + 8))(v21, v17);
}

uint64_t sub_1D8E5B3DC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((*(*(v2[3] - 8) + 80) + 48) & ~*(*(v2[3] - 8) + 80)) + *(*(v2[3] - 8) + 64);
  v10 = v2[2];
  v11 = v2[3];
  v12 = v2[4];
  v13 = v2[5];
  v6 = *(type metadata accessor for FallbackProcessingStep() - 8);
  v7 = *(v2 + v5);
  v8 = v2 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_1D8E5B088(a1, v7, v8, v10, v11, v12, v13, a2);
}

id sub_1D8E5B4FC@<X0>(void **a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  if ((a2 & 1) == 0)
  {
    a3 = *a1;
  }

  *a4 = a3;
  return a3;
}

uint64_t sub_1D8E5B510(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_1D8E5B720(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

id sub_1D8E5BA04@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  if (*(v2 + 16))
  {
    v3 = (v2 + 24);
  }

  else
  {
    v3 = a1;
  }

  v4 = *v3;
  *a2 = *v3;
  return v4;
}

uint64_t JustAssetProcessingStep.asset.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t JustAssetProcessingStep.init(asset:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for JustAssetProcessingStep();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t JustAssetProcessingStep.publisher.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - v7;
  v9 = sub_1D91779FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v16 - v13;
  (*(v5 + 16))(v8, v1, AssociatedTypeWitness, v12);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1D8E5BDD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8E5BE74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v15 = (v14 & ~v12) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v9 >= v11)
        {
          v24 = *(v8 + 48);

          return v24(a1);
        }

        else
        {
          v22 = *(v10 + 48);

          return v22((a1 + v14) & ~v12, v11, v6);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = (v14 & ~v12) + *(*(v6 - 8) + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1D8E5C0C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  if (v12 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = v13 + v14;
  v17 = ((v13 + v14) & ~v14) + *(*(v8 - 8) + 64);
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 >= v12)
  {
    v25 = *(v9 + 56);

    v25(a1, a2);
  }

  else
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v14, a2, v12, v8);
  }
}

uint64_t ReceiveAndSubscribeOnAssetProcessingStep.init(upstream:receiveQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ReceiveAndSubscribeOnAssetProcessingStep();
  result = (*(*(a3 - 8) + 32))(&a4[*(v8 + 36)], a1, a3);
  *a4 = a2;
  return result;
}

uint64_t sub_1D8E5C468(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8E5C484(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1D8E5C608(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1D8E5C8C4(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  v15 = *(*(v6 - 8) + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_29;
  }

  v16 = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v9 == v13)
  {
    v25 = *(v8 + 48);

    return v25(a1);
  }

  else
  {
    v26 = (a1 + v14) & ~v12;
    if (v11 == v13)
    {
      v27 = *(v10 + 48);

      return v27(v26, v11, v6);
    }

    else
    {
      v28 = *((v15 + v26) & 0xFFFFFFFFFFFFFFF8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }
}

void sub_1D8E5CB0C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  v18 = v14 + v15;
  v19 = (v14 + v15) & ~v15;
  v20 = v16 + 7;
  v21 = ((v16 + 7 + v19) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v16 + 7 + v19) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = a3 - v17 + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v17 < a3)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (a2 > v17)
  {
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = a2 - v17;
    }

    if (v21)
    {
      v27 = ~v17 + a2;
      bzero(a1, v21);
      *a1 = v27;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        *(a1 + v21) = v26;
      }

      else
      {
        *(a1 + v21) = v26;
      }
    }

    else if (v25)
    {
      *(a1 + v21) = v26;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v21) = 0;
  }

  else if (v25)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v11 == v17)
  {
    v28 = *(v10 + 56);

    v28(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v29 = (a1 + v18) & ~v15;
    if (v13 == v17)
    {
      v30 = *(v12 + 56);

      v30(v29, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v31 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v31 = (a2 - 1);
      }

      *((v20 + v29) & 0xFFFFFFFFFFFFFFF8) = v31;
    }
  }
}

uint64_t sub_1D8E5CD94()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_getAssociatedTypeWitness();
  v5 = *(v4 + 8);
  return sub_1D91781BC() & 1;
}

uint64_t sub_1D8E5CE70@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

char *sub_1D8E5CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return sub_1D8D72358(a1, a2, a3, a4, a5, a6);
}

void sub_1D8E5CFDC()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v0 + v2, &v5);
  if (v7 >= 2)
  {
    sub_1D8D6BCE0(&v5, v8);
    v5 = 0uLL;
    v6 = 0;
    v7 = xmmword_1D918BEE0;
    swift_beginAccess();
    sub_1D8D74118(&v5, v0 + v2);
    swift_endAccess();
    os_unfair_lock_unlock(v1 + 4);
    v3 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = *(v3 + 8);
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_1D8D740C4(&v5);
    os_unfair_lock_unlock(v1 + 4);
  }
}

uint64_t sub_1D8E5D100(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[5];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v5 - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (v15 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (v20 <= 0xFE)
  {
    v20 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v7 + 64) + v16;
  if (a2 > v20)
  {
    v22 = v19 + ((v17 + v18 + (v21 & ~v16)) & ~v18) + 2;
    v23 = 8 * v22;
    if (v22 > 3)
    {
      goto LABEL_12;
    }

    v25 = ((a2 - v20 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v25))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v25 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v25 >= 2)
    {
LABEL_12:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_32;
      }

LABEL_19:
      v26 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v26 = 0;
      }

      if (v19 + ((v17 + v18 + (v21 & ~v16)) & ~v18) == -2)
      {
        v28 = 0;
      }

      else
      {
        if (v22 <= 3)
        {
          v27 = v19 + ((v17 + v18 + (v21 & ~v16)) & ~v18) + 2;
        }

        else
        {
          v27 = 4;
        }

        if (v27 > 2)
        {
          if (v27 == 3)
          {
            v28 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v28 = *a1;
          }
        }

        else if (v27 == 1)
        {
          v28 = *a1;
        }

        else
        {
          v28 = *a1;
        }
      }

      v37 = v20 + (v28 | v26);
      return (v37 + 1);
    }
  }

LABEL_32:
  if (v8 == v20)
  {
    v29 = *(v7 + 48);
    v30 = a1;
    v31 = v8;
    v32 = v6;
LABEL_34:

    return v29(v30, v31, v32);
  }

  v34 = (a1 + v21) & ~v16;
  if (v12 != v20)
  {
    v30 = ((v34 + v17 + v18) & ~v18);
    if (v15 == v20)
    {
      v29 = *(v14 + 48);
      v31 = *(v14 + 84);
      v32 = v5;
      goto LABEL_34;
    }

    v36 = *(v30 + v19);
    if (v36 < 2)
    {
      return 0;
    }

    v37 = (v36 + 2147483646) & 0x7FFFFFFF;
    return (v37 + 1);
  }

  v35 = *(v11 + 48);

  return v35(v34);
}

void sub_1D8E5D444(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v7 = a4[3];
  v9 = *(v8 - 8);
  v38 = v9;
  v10 = *(v9 + 84);
  v11 = a4[5];
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v7 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  v22 = *(v16 + 64);
  if (v17 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = *(v16 + 84);
  }

  if (v23 <= 0xFE)
  {
    v23 = 254;
  }

  v24 = v22 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + 2;
  if (a3 <= v23)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v23 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v23 < a2)
  {
    v26 = ~v23 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v22 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) != -2)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_55:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v25 == 2)
  {
    *&a1[v24] = 0;
    goto LABEL_35;
  }

  *&a1[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 == v23)
  {
    v31 = *(v38 + 56);
    v32 = a1;
    v33 = a2;
    v34 = v10;
    v35 = v8;
LABEL_38:

    v31(v32, v33, v34, v35);
    return;
  }

  v36 = &a1[v18 + v19] & ~v19;
  if (v14 != v23)
  {
    v32 = ((v36 + v20 + v21) & ~v21);
    if (v17 != v23)
    {
      v32[v22] = a2 + 1;
      return;
    }

    v31 = *(v16 + 56);
    v33 = a2;
    v34 = v17;
    v35 = v7;
    goto LABEL_38;
  }

  v37 = *(v13 + 56);

  v37(v36, a2);
}