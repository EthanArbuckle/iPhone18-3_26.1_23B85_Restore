char *sub_1D8ECE614(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA8, &qword_1D9191F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8ECE750(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D8ECE86C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FB0, &qword_1D9191F28);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8ECE98C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4540, &qword_1D9189FD0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t _s18PodcastsFoundation22ShazamSignatureRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - v15;
  v18 = *(v17 + 56);
  sub_1D8D088B4(a1, &v34 - v15, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(a2, &v16[v18], &unk_1ECAB5910, &qword_1D9188C90);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1D8D088B4(v16, v12, &unk_1ECAB5910, &qword_1D9188C90);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1D8D68BC8(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
      v22 = sub_1D91781BC();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1D8D08A50(v16, &qword_1ECAB6178, &unk_1D9193430);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_10:
  v24 = type metadata accessor for ShazamSignatureRequest();
  v25 = v24[5];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      if (v26 != 2)
      {
        goto LABEL_7;
      }
    }

    else if (v26 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v27)
  {
    if (v26 != 1)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  v28 = v24[6];
  v30 = *(a1 + v28);
  v29 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if (v30 == *v31 && v29 == v31[1] || (v32 = v24, v33 = sub_1D9179ACC(), v24 = v32, (v33 & 1) != 0))
  {
    v20 = sub_1D8FDD9D0(*(a1 + v24[7]), *(a2 + v24[7]));
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

id sub_1D8ECEE54()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v7[0] = 0;
  v2 = [v0 initWithDataRepresentation:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1D8ECEF14()
{
  result = qword_1ECAB1CB8;
  if (!qword_1ECAB1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1CB8);
  }

  return result;
}

unint64_t sub_1D8ECEF68()
{
  result = qword_1ECAB1E38;
  if (!qword_1ECAB1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E38);
  }

  return result;
}

unint64_t sub_1D8ECEFBC()
{
  result = qword_1ECAB2B50;
  if (!qword_1ECAB2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B50);
  }

  return result;
}

unint64_t sub_1D8ECF010()
{
  result = qword_1ECAB28D0;
  if (!qword_1ECAB28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28D0);
  }

  return result;
}

unint64_t sub_1D8ECF064()
{
  result = qword_1ECAB1E28;
  if (!qword_1ECAB1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E28);
  }

  return result;
}

unint64_t sub_1D8ECF0B8()
{
  result = qword_1ECAB2B40;
  if (!qword_1ECAB2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B40);
  }

  return result;
}

unint64_t sub_1D8ECF10C()
{
  result = qword_1ECAB28C0;
  if (!qword_1ECAB28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28C0);
  }

  return result;
}

uint64_t sub_1D8ECF160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSignatureRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8ECF1C4(uint64_t a1)
{
  v2 = type metadata accessor for ShazamSignatureRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8ECF224()
{
  result = qword_1ECAB5F80;
  if (!qword_1ECAB5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F80);
  }

  return result;
}

unint64_t sub_1D8ECF2C4()
{
  result = qword_1ECAB5F90;
  if (!qword_1ECAB5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F90);
  }

  return result;
}

unint64_t sub_1D8ECF31C()
{
  result = qword_1ECAB1CA8;
  if (!qword_1ECAB1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1CA8);
  }

  return result;
}

unint64_t sub_1D8ECF374()
{
  result = qword_1ECAB1CB0;
  if (!qword_1ECAB1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1CB0);
  }

  return result;
}

uint64_t sub_1D8ECF3C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x725565746F6D6572 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F46656C6966 && a2 == 0xEA00000000007461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_1D8ECF58C()
{
  result = sub_1D8ECF5AC();
  qword_1ECAAFCD8 = result;
  return result;
}

id sub_1D8ECF5AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E697B790]) init];
  [v0 setNumHistogramBuckets_];
  LODWORD(v1) = 2.0;
  [v0 setScoreThreshold_];
  v2 = objc_allocWithZone(MEMORY[0x1E697B7B8]);
  v3 = v0;
  v4 = [v2 initWithLowerBound:1.0 upperBound:86400.0];
  [v3 setSignatureDurationRange_];

  [v3 setSupportsSignatureTracking_];
  [v3 setBoundingBox_];
  [v3 setRefineStartEnd_];
  return v3;
}

id sub_1D8ECF6A0(unint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (qword_1ECAAFCD0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = qword_1ECAAFCD8;
    v3 = objc_allocWithZone(MEMORY[0x1E697B788]);
    v19[0] = 0;
    v4 = v2;
    v18 = [v3 initWithConfiguration:v4 error:v19];
    if (!v18)
    {
      break;
    }

    v5 = v19[0];

    if (a1 >> 62)
    {
      v6 = sub_1D917935C();
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72AA90](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1D8ECF8E0();
      v11 = sub_1D91785DC();
      v19[0] = 0;
      v12 = [v18 addReferenceSignature:v9 representingMediaItems:v11 error:v19];

      if (!v12)
      {
        v15 = v19[0];
        sub_1D9176A6C();

        swift_willThrow();
        goto LABEL_16;
      }

      v13 = v19[0];

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v14 = v19[0];
  sub_1D9176A6C();

  swift_willThrow();
LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v18;
}

unint64_t sub_1D8ECF8E0()
{
  result = qword_1ECAAFE38;
  if (!qword_1ECAAFE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAFE38);
  }

  return result;
}

uint64_t sub_1D8ECF92C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6440, &qword_1D91926D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6448, &qword_1D91926D8);
  v10 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v35 - v11;
  v13 = v1 + 264;
  if (CGSizeEqualToSize(*(v1 + 440), *(v1 + 176)) && *(v1 + 456) == *(v1 + 192) && *(v1 + 1680) == 3)
  {
    v14 = sub_1D8ED1A50(v42);
    v15 = *(v1 + 1648);
    MEMORY[0x1EEE9AC00](v14);
    *(&v35 - 2) = v13;
    *(&v35 - 1) = v42;
    os_unfair_lock_lock((v15 + 24));
    sub_1D8EDCF90((v15 + 16), v41);
    os_unfair_lock_unlock((v15 + 24));
    v16 = *&v41[0];
    sub_1D8D08A50(v42, &qword_1ECAB49F0, &unk_1D918B180);
    v42[0] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
    sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520);
    v17 = sub_1D9177B1C();
  }

  else
  {
    v38 = v3;
    v39 = v2;
    v18 = sub_1D8ED1A50(v42);
    v36 = v9;
    v37 = v6;
    v19 = *(v1 + 1648);
    MEMORY[0x1EEE9AC00](v18);
    *(&v35 - 2) = v13;
    *(&v35 - 1) = v42;
    os_unfair_lock_lock((v19 + 24));
    sub_1D8EDCE10((v19 + 16), v41);
    os_unfair_lock_unlock((v19 + 24));
    v20 = *&v41[0];
    sub_1D8D08A50(v42, &qword_1ECAB49F0, &unk_1D918B180);
    v42[217] = v20;
    v35 = *(v1 + 1656);
    v21 = *(v1 + 1672);
    v22 = *(v1 + 1680);
    sub_1D8D088B4(v1, v42, &qword_1ECAB4958, &unk_1D91926E0);
    sub_1D8CFD9D8(v1 + 1688, v41);
    v23 = swift_allocObject();
    memcpy((v23 + 16), v42, 0x6C0uLL);
    sub_1D8D6BCE0(v41, v23 + 1744);
    *(v23 + 1784) = v35;
    *(v23 + 1800) = v21;
    *(v23 + 1808) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
    type metadata accessor for ArtworkContent();
    sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520);
    v24 = v36;
    sub_1D9177C6C();

    sub_1D8D41388(v1, v42);
    sub_1D8D088B4(&v42[28], v41, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v42);
    v25 = v37;
    v26 = v38;
    v27 = *(v38 + 16);
    v28 = v12;
    v30 = v39;
    v29 = v40;
    v27(v37, v24, v39);
    sub_1D8D088B4(v41, v42, &qword_1ECAB4928, &qword_1D918B380);
    v27(v28, v25, v30);
    sub_1D8D088B4(v42, v28 + v29[9], &qword_1ECAB4928, &qword_1D918B380);
    v31 = v28 + v29[10];
    *v31 = "DiskResizeOperation";
    *(v31 + 8) = 19;
    *(v31 + 16) = 2;
    *(v28 + v29[12]) = 0;
    sub_1D8D08A50(v42, &qword_1ECAB4928, &qword_1D918B380);
    v32 = *(v26 + 8);
    v32(v25, v30);
    sub_1D8D08A50(v41, &qword_1ECAB4928, &qword_1D918B380);
    v32(v24, v30);
    v33 = (v28 + v29[11]);
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    *(v28 + v29[13]) = 0;
    sub_1D8CF48EC(&qword_1ECAB27F0, &qword_1ECAB6448, &qword_1D91926D8);
    v17 = sub_1D9177B1C();
    sub_1D8D08A50(v28, &qword_1ECAB6448, &qword_1D91926D8);
  }

  return v17;
}

uint64_t sub_1D8ECFEE4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, void *a3@<X2>, unsigned int a4@<W3>, char *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v107 = a4;
  v115 = a3;
  v111 = a1;
  v104 = a5;
  v12 = sub_1D91773AC();
  v100 = *(v12 - 8);
  v101 = v12;
  v13 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  v117 = type metadata accessor for ArtworkContent();
  v21 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v109 = (&v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1D9176C2C();
  v120 = *(v23 - 8);
  v121 = v23;
  v24 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v108 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v99 - v29;
  v116 = sub_1D917734C();
  v122 = *(v116 - 8);
  v30 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v105 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v114 = &v99 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v99 - v35;
  v37 = sub_1D9176EAC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a2;
  sub_1D8D088B4(a2 + 224, v123, &qword_1ECAB4928, &qword_1D918B380);
  v42 = v124;
  if (v124)
  {
    v43 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v44 = (*(v43 + 8))(v42, v43);
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
  }

  else
  {
    sub_1D8D08A50(v123, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D9176E9C();
    v44 = sub_1D9176E5C();
    v46 = v47;
    (*(v38 + 8))(v41, v37);
  }

  if (qword_1EDCD1168 != -1)
  {
    swift_once();
  }

  v48 = sub_1D917739C();
  v49 = __swift_project_value_buffer(v48, qword_1EDCD1170);
  sub_1D917737C();
  sub_1D917731C();

  v103 = v49;
  v50 = sub_1D917737C();
  v51 = sub_1D9178F5C();

  v52 = sub_1D917918C();
  v113 = v20;
  if (v52)
  {
    v53 = v44;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v123[0] = v55;
    *v54 = 136315138;
    v56 = sub_1D8CFA924(v53, v46, v123);

    *(v54 + 4) = v56;
    v57 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v50, v51, v57, "ResizeImage", "[identifier=%{name=identifier}s] Resize", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v58 = v118;
    MEMORY[0x1DA72CB90](v55, -1, -1);
    MEMORY[0x1DA72CB90](v54, -1, -1);

    v59 = v121;
  }

  else
  {

    v59 = v121;
    v58 = v118;
  }

  v60 = v122;
  v61 = v116;
  (*(v122 + 16))(v114, v36, v116);
  v62 = sub_1D91773FC();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v114 = sub_1D91773EC();
  v66 = *(v60 + 8);
  v65 = v60 + 8;
  v102 = v66;
  v66(v36, v61);
  sub_1D8D41388(v112, v123);
  sub_1D8D088B4(&v126, v127, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v123);
  v67 = v128;
  if (v128)
  {
    v68 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    __swift_project_boxed_opaque_existential_1(v115, v115[3]);
    swift_getDynamicType();
    v69 = sub_1D9179FEC();
    (*(v68 + 24))(v130, "ResizeImage", 11, 2, v69, v70, v67, v68);

    __swift_destroy_boxed_opaque_existential_1Tm(v127);
  }

  else
  {
    sub_1D8D08A50(v127, &qword_1ECAB4928, &qword_1D918B380);
    memset(v130, 0, sizeof(v130));
    v131 = 0;
  }

  v71 = v109;
  sub_1D8EDCD8C(v111, v109, type metadata accessor for ArtworkContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72 = v59;
    v122 = v65;
    v73 = v71;
  }

  else
  {
    v74 = *v71;
    v75 = v71[1];
    sub_1D8ED0AA4(4u, v110);
    sub_1D9176CAC();
    if (v58)
    {
      sub_1D8D7567C(v74, v75);

      v76 = v110;
LABEL_19:
      (*(v120 + 8))(v76, v59);
      return sub_1D8D08A50(v130, &unk_1ECAB6E00, &qword_1D91952E0);
    }

    v72 = v59;
    v122 = v65;
    v118 = 0;
    sub_1D8D7567C(v74, v75);
    v73 = v110;
  }

  v77 = v119;
  v78 = v120;
  v112 = *(v120 + 32);
  v112(v119, v73, v72);
  v79 = v115[3];
  v80 = v115[4];
  __swift_project_boxed_opaque_existential_1(v115, v79);
  v81 = v113;
  (*(v80 + 8))(v77, v107, v79, v80, a6, a7, a8);
  v82 = v106;
  sub_1D8D088B4(v81, v106, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v78 + 48))(v82, 1, v72) == 1)
  {
    sub_1D8D08A50(v82, &unk_1ECAB5910, &qword_1D9188C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6450, &qword_1D91926F0);
    sub_1D8CF48EC(&qword_1ECAB6458, &qword_1ECAB6450, &qword_1D91926F0);
    v59 = v121;
    swift_allocError();
    *v83 = 0;
    swift_willThrow();

    sub_1D8D08A50(v81, &unk_1ECAB5910, &qword_1D9188C90);
    v76 = v119;
    goto LABEL_19;
  }

  v112(v108, v82, v72);
  sub_1D8D088B4(v130, v123, &unk_1ECAB6E00, &qword_1D91952E0);
  if (v124)
  {
    __swift_project_boxed_opaque_existential_1(v123, v124);
    TraceInterval.end()();
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
  }

  else
  {
    sub_1D8D08A50(v123, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  v85 = v119;
  v86 = v105;
  v87 = sub_1D917737C();
  sub_1D91773DC();
  v88 = sub_1D9178F4C();
  v89 = sub_1D917918C();
  v90 = v121;
  if (v89)
  {

    v91 = v99;
    sub_1D917740C();

    v93 = v100;
    v92 = v101;
    if ((*(v100 + 88))(v91, v101) == *MEMORY[0x1E69E93E8])
    {
      v94 = "[Error] Interval already ended";
    }

    else
    {
      (*(v93 + 8))(v91, v92);
      v94 = "";
    }

    v95 = swift_slowAlloc();
    *v95 = 0;
    v96 = v105;
    v97 = sub_1D917732C();
    v98 = v94;
    v86 = v96;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v87, v88, v97, "ResizeImage", v98, v95, 2u);
    MEMORY[0x1DA72CB90](v95, -1, -1);
    v90 = v121;
    v85 = v119;
  }

  v102(v86, v116);
  sub_1D8D08A50(v113, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v120 + 8))(v85, v90);
  sub_1D8D08A50(v130, &unk_1ECAB6E00, &qword_1D91952E0);
  v112(v104, v108, v90);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8ED0AA4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
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

uint64_t sub_1D8ED0D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a1;
  v26 = a3;
  v5 = type metadata accessor for ArtworkContent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  v27 = a2;
  v20 = *(a2 + 833);
  sub_1D8ED1030(v20, &v26 - v18);
  sub_1D8EDCD8C(v28, v8, type metadata accessor for ArtworkContent);
  v28 = v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v8;
  }

  else
  {
    v21 = *v8;
    v22 = v8[1];
    sub_1D8ED1030(v20, v13);
    sub_1D9176CAC();
    if (v3)
    {
      sub_1D8D7567C(v21, v22);
LABEL_8:
      v24 = v10[1];
      v24(v13, v9);
      return (v24)(v19, v9);
    }

    sub_1D8D7567C(v21, v22);
  }

  v23 = v10[4];
  v23(v16, v13, v9);
  sub_1D8E52BA4(v16, v19, v27 + 272);
  if (v3)
  {
    v13 = v16;
    goto LABEL_8;
  }

  (v10[1])(v16, v9);
  v23(v26, v19, v9);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8ED1030@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
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

uint64_t sub_1D8ED12F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 272);
  v5 = (*(a1 + 264))();
  sub_1D8D41388(a1, &v10);
  sub_1D8D088B4(&v12, v13, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6460, &qword_1D91926F8);
  v10 = sub_1D9179FEC();
  v11 = v6;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v7 = v10;
  v8 = v11;
  sub_1D8D088B4(v13, &v10, &qword_1ECAB4928, &qword_1D918B380);
  *a2 = v5;
  sub_1D8D088B4(&v10, a2 + 8, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 48) = "FetchFromSource";
  *(a2 + 56) = 15;
  *(a2 + 64) = 2;
  *(a2 + 88) = 0;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  sub_1D8D08A50(&v10, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v13, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 89) = 0;
  return result;
}

uint64_t sub_1D8ED1460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTMLRequest();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6288, &qword_1D91924E0) + 52);
  v10 = *(v9 + 8);
  v11 = (*v9)(a1);
  sub_1D8EDCD8C(a1, v8, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v8[*(v5 + 44)], v22, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D671A8(v8, type metadata accessor for TTMLRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6310, &qword_1D9192570);
  v20 = sub_1D9179FEC();
  v21 = v12;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v13 = v20;
  v14 = v21;
  sub_1D8D088B4(v22, &v20, &qword_1ECAB4928, &qword_1D918B380);
  *a2 = v11;
  sub_1D8D088B4(&v20, a2 + 8, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 48) = "FetchFromSource";
  *(a2 + 56) = 15;
  *(a2 + 64) = 2;
  *(a2 + 88) = 0;
  v18 = v13;
  v19 = v14;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v15 = v18;
  v16 = v19;
  sub_1D8D08A50(&v20, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v22, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 89) = 0;
  return result;
}

uint64_t sub_1D8ED1654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShazamSignatureRequest();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6340, &qword_1D91925A8) + 52);
  v10 = *(v9 + 8);
  v11 = (*v9)(a1);
  sub_1D8EDCD8C(a1, v8, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v8[*(v5 + 44)], v22, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D671A8(v8, type metadata accessor for ShazamSignatureRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63C0, &qword_1D9192628);
  v20 = sub_1D9179FEC();
  v21 = v12;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v13 = v20;
  v14 = v21;
  sub_1D8D088B4(v22, &v20, &qword_1ECAB4928, &qword_1D918B380);
  *a2 = v11;
  sub_1D8D088B4(&v20, a2 + 8, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 48) = "FetchFromSource";
  *(a2 + 56) = 15;
  *(a2 + 64) = 2;
  *(a2 + 88) = 0;
  v18 = v13;
  v19 = v14;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v15 = v18;
  v16 = v19;
  sub_1D8D08A50(&v20, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v22, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 89) = 0;
  return result;
}

uint64_t sub_1D8ED1848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8ECF92C();
  v5 = *(v2 + 2000);
  v6 = *(v2 + 1728);
  sub_1D8D41388(v2 + 1736, v18);
  v17 = v4;
  v18[33] = v6;
  v19 = v5;
  v20 = 0;
  sub_1D8D41388(v2 + 1736, &v13);
  sub_1D8D088B4(&v15, v16, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D58578(&v13);
  v13 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6430, &qword_1D91926C0);
  v13 = sub_1D917826C();
  v14 = v7;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  v8 = ArtworkRequest.fileName.getter();
  MEMORY[0x1DA7298F0](v8);

  v9 = v13;
  v10 = v14;
  sub_1D8D088B4(&v17, &v13, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v16, v12, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v13, a1, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v12, a1 + 288, &qword_1ECAB4928, &qword_1D918B380);
  *(a1 + 328) = "Cache";
  *(a1 + 336) = 5;
  *(a1 + 344) = 2;
  *(a1 + 368) = 0;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  sub_1D8D08A50(v12, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(&v13, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D08A50(v16, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(&v17, &qword_1ECAB6438, &qword_1D91926C8);
  *(a1 + 352) = v9;
  *(a1 + 360) = v10;
  *(a1 + 369) = 0;
  return result;
}

uint64_t sub_1D8ED1A50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6440, &qword_1D91926D0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v25 = sub_1D8E46340();
  sub_1D8D088B4(v1, v29, &qword_1ECAB4940, &qword_1D918AFF0);
  v9 = swift_allocObject();
  memcpy((v9 + 16), v29, 0x342uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
  type metadata accessor for ArtworkContent();
  sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520);
  sub_1D9177C6C();

  sub_1D8CF48EC(&qword_1ECAB0698, &qword_1ECAB6440, &qword_1D91926D0);
  v10 = v20;
  v11 = sub_1D9177B1C();
  (*(v21 + 8))(v8, v10);
  LOBYTE(v10) = *(v2 + 1112);
  v12 = *(v2 + 840);
  sub_1D8D41388(v2 + 848, &v29[1]);
  v29[0] = v11;
  v29[34] = v12;
  LOWORD(v29[35]) = v10;
  sub_1D8D41388(v2 + 848, &v25);
  sub_1D8D088B4(&v27, v28, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D58578(&v25);
  v25 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6430, &qword_1D91926C0);
  v25 = sub_1D917826C();
  v26 = v13;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  v14 = ArtworkRequest.fileName.getter();
  MEMORY[0x1DA7298F0](v14);

  v15 = v25;
  v16 = v26;
  sub_1D8D088B4(v29, &v25, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v28, v24, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v25, a1, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v24, a1 + 288, &qword_1ECAB4928, &qword_1D918B380);
  *(a1 + 328) = "Cache";
  *(a1 + 336) = 5;
  *(a1 + 344) = 2;
  *(a1 + 368) = 0;
  v22 = v15;
  v23 = v16;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v17 = v22;
  v18 = v23;
  sub_1D8D08A50(v24, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(&v25, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D08A50(v28, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v29, &qword_1ECAB6438, &qword_1D91926C8);
  *(a1 + 352) = v17;
  *(a1 + 360) = v18;
  *(a1 + 369) = 0;
  return result;
}

uint64_t sub_1D8ED1E24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = type metadata accessor for TTMLRequest();
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A8, &qword_1D9192500);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62B0, &qword_1D9192508);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v39 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6298, &qword_1D91924F0);
  v17 = v1 + *(v16 + 44);
  sub_1D8ED22B4(v9);
  v18 = *(v2 + *(v16 + 48));
  v43 = v2;
  v44 = v9;
  os_unfair_lock_lock(v18 + 6);
  sub_1D8EDC668(&v18[4], &v55);
  os_unfair_lock_unlock(v18 + 6);
  v19 = v55;
  sub_1D8D08A50(v9, &qword_1ECAB62A8, &qword_1D9192500);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A0, &qword_1D91924F8);
  v21 = v2 + v20[20];
  v22 = (v2 + v20[19]);
  LOBYTE(v2) = *(v2 + v20[21]);
  v23 = v22[1];
  v48 = *v22;
  v49 = v23;
  v24 = v22[3];
  v50 = v22[2];
  v51 = v24;
  sub_1D8EDCD8C(v21, v15 + v10[13], type metadata accessor for TTMLRequest);
  *v15 = v19;
  v25 = (v15 + v10[14]);
  v26 = v51;
  v25[2] = v50;
  v25[3] = v26;
  v27 = v49;
  *v25 = v48;
  v25[1] = v27;
  *(v15 + v10[15]) = v2;
  *(v15 + v10[16]) = 0;
  sub_1D8EDCD8C(v21, v5, type metadata accessor for TTMLRequest);
  v28 = v41;
  sub_1D8D088B4(&v5[*(v41 + 36)], v47, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v48, v52, &qword_1ECAB6190, &qword_1D91921D0);
  sub_1D8D671A8(v5, type metadata accessor for TTMLRequest);
  v29 = v22[1];
  v52[0] = *v22;
  v52[1] = v29;
  v30 = v22[3];
  v53 = v22[2];
  v54 = v30;
  v46[0] = v52[0];
  v46[1] = v29;
  v46[2] = v53;
  v46[3] = v30;
  sub_1D8D088B4(v52, &v45, &qword_1ECAB6190, &qword_1D91921D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6190, &qword_1D91921D0);
  *&v46[0] = sub_1D917826C();
  *(&v46[0] + 1) = v31;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v21 + *(v28 + 24)), *(v21 + *(v28 + 24) + 8));
  v32 = v46[0];
  v33 = v42;
  sub_1D8D088B4(v15, v42, &qword_1ECAB62B0, &qword_1D9192508);
  sub_1D8D088B4(v47, v46, &qword_1ECAB4928, &qword_1D918B380);
  v34 = v40;
  sub_1D8D088B4(v33, v40, &qword_1ECAB62B0, &qword_1D9192508);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6280, &qword_1D91924D8);
  sub_1D8D088B4(v46, v34 + v35[9], &qword_1ECAB4928, &qword_1D918B380);
  v36 = v34 + v35[10];
  *v36 = "Cache";
  *(v36 + 8) = 5;
  *(v36 + 16) = 2;
  *(v34 + v35[12]) = 0;
  v45 = v32;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v37 = v45;
  sub_1D8D08A50(v46, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v33, &qword_1ECAB62B0, &qword_1D9192508);
  sub_1D8D08A50(v47, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v15, &qword_1ECAB62B0, &qword_1D9192508);
  *(v34 + v35[11]) = v37;
  *(v34 + v35[13]) = 0;
  return result;
}

uint64_t sub_1D8ED22B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for TTMLRequest();
  v4 = *(v3 - 8);
  v45 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6288, &qword_1D91924E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6308, &qword_1D9192568);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  sub_1D8D088B4(v2, v12, &qword_1ECAB6288, &qword_1D91924E0);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_1D8D6734C(v12, v21 + v20, &qword_1ECAB6288, &qword_1D91924E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62D8, &qword_1D9192530);
  sub_1D8CF48EC(&qword_1ECAB2798, &qword_1ECAB62D8, &qword_1D9192530);
  sub_1D9177A7C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6290, &qword_1D91924E8);
  v23 = v2 + v22[20];
  v24 = (v2 + v22[19]);
  LOBYTE(v20) = *(v2 + v22[21]);
  v25 = v24[1];
  v52 = *v24;
  v53 = v25;
  v26 = v24[3];
  v54 = v24[2];
  v55 = v26;
  sub_1D8EDCD8C(v23, &v19[v14[15]], type metadata accessor for TTMLRequest);
  v27 = &v19[v14[16]];
  v28 = v53;
  *v27 = v52;
  *(v27 + 1) = v28;
  v29 = v55;
  *(v27 + 2) = v54;
  *(v27 + 3) = v29;
  v19[v14[17]] = v20;
  v19[v14[18]] = 0;
  sub_1D8EDCD8C(v23, v7, type metadata accessor for TTMLRequest);
  v30 = v45;
  sub_1D8D088B4(&v7[*(v45 + 44)], v51, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v52, v56, &qword_1ECAB6190, &qword_1D91921D0);
  sub_1D8D671A8(v7, type metadata accessor for TTMLRequest);
  v31 = v24[1];
  v56[0] = *v24;
  v56[1] = v31;
  v32 = v24[3];
  v57 = v24[2];
  v58 = v32;
  v50[0] = v56[0];
  v50[1] = v31;
  v50[2] = v57;
  v50[3] = v32;
  sub_1D8D088B4(v56, &v48, &qword_1ECAB6190, &qword_1D91921D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6190, &qword_1D91921D0);
  *&v50[0] = sub_1D917826C();
  *(&v50[0] + 1) = v33;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v23 + *(v30 + 32)), *(v23 + *(v30 + 32) + 8));
  v34 = *(&v50[0] + 1);
  v45 = *&v50[0];
  v35 = v46;
  sub_1D8D088B4(v19, v46, &qword_1ECAB6308, &qword_1D9192568);
  sub_1D8D088B4(v51, v50, &qword_1ECAB4928, &qword_1D918B380);
  v36 = v47;
  sub_1D8D088B4(v35, v47, &qword_1ECAB6308, &qword_1D9192568);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A8, &qword_1D9192500);
  sub_1D8D088B4(v50, v36 + v37[9], &qword_1ECAB4928, &qword_1D918B380);
  v38 = v36 + v37[10];
  *v38 = "Cache";
  *(v38 + 8) = 5;
  *(v38 + 16) = 2;
  *(v36 + v37[12]) = 0;
  v39 = v36;
  v48 = v45;
  v49 = v34;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v40 = v48;
  v41 = v49;
  sub_1D8D08A50(v50, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v35, &qword_1ECAB6308, &qword_1D9192568);
  sub_1D8D08A50(v51, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v19, &qword_1ECAB6308, &qword_1D9192568);
  v43 = (v39 + v37[11]);
  *v43 = v40;
  v43[1] = v41;
  *(v39 + v37[13]) = 0;
  return result;
}

uint64_t sub_1D8ED27D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = type metadata accessor for ShazamSignatureRequest();
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6360, &qword_1D91925C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6368, &qword_1D91925D0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v39 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6350, &qword_1D91925B8);
  v17 = v1 + *(v16 + 44);
  sub_1D8ED2C60(v9);
  v18 = *(v2 + *(v16 + 48));
  v43 = v2;
  v44 = v9;
  os_unfair_lock_lock(v18 + 6);
  sub_1D8EDC7B0(&v18[4], &v55);
  os_unfair_lock_unlock(v18 + 6);
  v19 = v55;
  sub_1D8D08A50(v9, &qword_1ECAB6360, &qword_1D91925C8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6358, &qword_1D91925C0);
  v21 = v2 + v20[20];
  v22 = (v2 + v20[19]);
  LOBYTE(v2) = *(v2 + v20[21]);
  v23 = v22[1];
  v48 = *v22;
  v49 = v23;
  v24 = v22[3];
  v50 = v22[2];
  v51 = v24;
  sub_1D8EDCD8C(v21, v15 + v10[13], type metadata accessor for ShazamSignatureRequest);
  *v15 = v19;
  v25 = (v15 + v10[14]);
  v26 = v51;
  v25[2] = v50;
  v25[3] = v26;
  v27 = v49;
  *v25 = v48;
  v25[1] = v27;
  *(v15 + v10[15]) = v2;
  *(v15 + v10[16]) = 0;
  sub_1D8EDCD8C(v21, v5, type metadata accessor for ShazamSignatureRequest);
  v28 = v41;
  sub_1D8D088B4(&v5[*(v41 + 36)], v47, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v48, v52, &qword_1ECAB6198, &qword_1D91921D8);
  sub_1D8D671A8(v5, type metadata accessor for ShazamSignatureRequest);
  v29 = v22[1];
  v52[0] = *v22;
  v52[1] = v29;
  v30 = v22[3];
  v53 = v22[2];
  v54 = v30;
  v46[0] = v52[0];
  v46[1] = v29;
  v46[2] = v53;
  v46[3] = v30;
  sub_1D8D088B4(v52, &v45, &qword_1ECAB6198, &qword_1D91921D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6198, &qword_1D91921D8);
  *&v46[0] = sub_1D917826C();
  *(&v46[0] + 1) = v31;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v21 + *(v28 + 24)), *(v21 + *(v28 + 24) + 8));
  v32 = v46[0];
  v33 = v42;
  sub_1D8D088B4(v15, v42, &qword_1ECAB6368, &qword_1D91925D0);
  sub_1D8D088B4(v47, v46, &qword_1ECAB4928, &qword_1D918B380);
  v34 = v40;
  sub_1D8D088B4(v33, v40, &qword_1ECAB6368, &qword_1D91925D0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6338, &qword_1D91925A0);
  sub_1D8D088B4(v46, v34 + v35[9], &qword_1ECAB4928, &qword_1D918B380);
  v36 = v34 + v35[10];
  *v36 = "Cache";
  *(v36 + 8) = 5;
  *(v36 + 16) = 2;
  *(v34 + v35[12]) = 0;
  v45 = v32;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v37 = v45;
  sub_1D8D08A50(v46, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v33, &qword_1ECAB6368, &qword_1D91925D0);
  sub_1D8D08A50(v47, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v15, &qword_1ECAB6368, &qword_1D91925D0);
  *(v34 + v35[11]) = v37;
  *(v34 + v35[13]) = 0;
  return result;
}

uint64_t sub_1D8ED2C60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = type metadata accessor for ShazamSignatureRequest();
  v4 = *(v3 - 8);
  v45 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6340, &qword_1D91925A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63B8, &qword_1D9192620);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  sub_1D8D088B4(v2, v12, &qword_1ECAB6340, &qword_1D91925A8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_1D8D6734C(v12, v21 + v20, &qword_1ECAB6340, &qword_1D91925A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6388, &qword_1D91925F0);
  sub_1D8CF48EC(&qword_1ECAB2790, &qword_1ECAB6388, &qword_1D91925F0);
  sub_1D9177A7C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6348, &qword_1D91925B0);
  v23 = v2 + v22[20];
  v24 = (v2 + v22[19]);
  LOBYTE(v20) = *(v2 + v22[21]);
  v25 = v24[1];
  v52 = *v24;
  v53 = v25;
  v26 = v24[3];
  v54 = v24[2];
  v55 = v26;
  sub_1D8EDCD8C(v23, &v19[v14[15]], type metadata accessor for ShazamSignatureRequest);
  v27 = &v19[v14[16]];
  v28 = v53;
  *v27 = v52;
  *(v27 + 1) = v28;
  v29 = v55;
  *(v27 + 2) = v54;
  *(v27 + 3) = v29;
  v19[v14[17]] = v20;
  v19[v14[18]] = 0;
  sub_1D8EDCD8C(v23, v7, type metadata accessor for ShazamSignatureRequest);
  v30 = v45;
  sub_1D8D088B4(&v7[*(v45 + 44)], v51, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v52, v56, &qword_1ECAB6198, &qword_1D91921D8);
  sub_1D8D671A8(v7, type metadata accessor for ShazamSignatureRequest);
  v31 = v24[1];
  v56[0] = *v24;
  v56[1] = v31;
  v32 = v24[3];
  v57 = v24[2];
  v58 = v32;
  v50[0] = v56[0];
  v50[1] = v31;
  v50[2] = v57;
  v50[3] = v32;
  sub_1D8D088B4(v56, &v48, &qword_1ECAB6198, &qword_1D91921D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6198, &qword_1D91921D8);
  *&v50[0] = sub_1D917826C();
  *(&v50[0] + 1) = v33;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v23 + *(v30 + 32)), *(v23 + *(v30 + 32) + 8));
  v34 = *(&v50[0] + 1);
  v45 = *&v50[0];
  v35 = v46;
  sub_1D8D088B4(v19, v46, &qword_1ECAB63B8, &qword_1D9192620);
  sub_1D8D088B4(v51, v50, &qword_1ECAB4928, &qword_1D918B380);
  v36 = v47;
  sub_1D8D088B4(v35, v47, &qword_1ECAB63B8, &qword_1D9192620);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6360, &qword_1D91925C8);
  sub_1D8D088B4(v50, v36 + v37[9], &qword_1ECAB4928, &qword_1D918B380);
  v38 = v36 + v37[10];
  *v38 = "Cache";
  *(v38 + 8) = 5;
  *(v38 + 16) = 2;
  *(v36 + v37[12]) = 0;
  v39 = v36;
  v48 = v45;
  v49 = v34;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v40 = v48;
  v41 = v49;
  sub_1D8D08A50(v50, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v35, &qword_1ECAB63B8, &qword_1D9192620);
  sub_1D8D08A50(v51, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v19, &qword_1ECAB63B8, &qword_1D9192620);
  v43 = (v39 + v37[11]);
  *v43 = v40;
  v43[1] = v41;
  *(v39 + v37[13]) = 0;
  return result;
}

uint64_t sub_1D8ED317C(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F8, &qword_1D9192678);
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6400, &qword_1D9192680);
  v9 = *(v58 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v58);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v50 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6408, &qword_1D9192688);
  v15 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v17 = &v50 - v16;
  v18 = *a1;
  if (*(*a1 + 16) && (v19 = sub_1D8F06844(a2), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    sub_1D8D41388(a2, v71);
    sub_1D8D088B4(&v71[14], &v62, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D58578(v71);
    if (v63)
    {
      sub_1D8D6BCE0(&v62, v68);
      v22 = sub_1D8D41388(a2, &v62);
      MEMORY[0x1EEE9AC00](v22);

      v23 = v72;
      sub_1D8F4DEA8(sub_1D8EDCD5C, v18, v71);
      v72 = v23;

      sub_1D8D58578(&v62);
      if (*(&v71[0] + 1))
      {
        v65 = &type metadata for ArtworkRequest;
        v66 = &protocol witness table for ArtworkRequest;
        *&v64 = swift_allocObject();
        memcpy((v64 + 16), v71, 0x108uLL);
        sub_1D8D6BCE0(&v64, v67);
        v24 = __swift_project_boxed_opaque_existential_1(v67, v67[3]);
        sub_1D8D088B4((v24 + 28), &v62, &qword_1ECAB4928, &qword_1D918B380);
        if (v63)
        {
          sub_1D8D6BCE0(&v62, v71);
          v25 = v69;
          v26 = v70;
          __swift_project_boxed_opaque_existential_1(v68, v69);
          v61 = a2;
          v27 = *(&v71[1] + 1);
          v28 = *&v71[2];
          __swift_project_boxed_opaque_existential_1(v71, *(&v71[1] + 1));
          v29 = (*(v28 + 8))(v27, v28);
          a2 = v61;
          (*(v26 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v29, v30, v25, v26);

          __swift_destroy_boxed_opaque_existential_1Tm(v71);
        }

        else
        {
          sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      else
      {
        sub_1D8D08A50(v71, &qword_1ECAB4B00, &unk_1D9192690);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    else
    {
      sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8D41388(a2, v71);
    sub_1D8D088B4(&v71[14], &v62, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v71);
    sub_1D8D088B4(&v62, v68, &qword_1ECAB4928, &qword_1D918B380);
    *&v71[0] = v21;
    sub_1D8D088B4(v68, v71 + 8, &qword_1ECAB4928, &qword_1D918B380);
    *&v71[3] = "FromUniquePipeline";
    *(&v71[3] + 1) = 18;
    LOBYTE(v71[4]) = 2;
    BYTE8(v71[5]) = 0;

    sub_1D8D08A50(v68, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
    *(&v71[4] + 1) = 0;
    *&v71[5] = 0xE000000000000000;
    BYTE9(v71[5]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
    sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020);
    v45 = sub_1D9177B1C();

    sub_1D8D08A50(v71, &qword_1ECAB4970, &qword_1D918B020);
  }

  else
  {
    v31 = *(a2 + 284);
    sub_1D8D41388(a2, v71);
    v32 = swift_allocObject();
    v51 = v5;
    v33 = v32;
    *(v32 + 16) = v31;
    memcpy((v32 + 24), v71, 0x108uLL);
    v34 = swift_allocObject();
    v52 = v12;
    v61 = a2;
    *(v34 + 16) = sub_1D8EDCD50;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    v54 = a1;
    v55 = v33;
    *(v35 + 16) = sub_1D8EDCD50;
    *(v35 + 24) = v33;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F0, &unk_1D918B180);
    v53 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27C0, &qword_1ECAB49F0, &unk_1D918B180);
    sub_1D9177B3C();

    v36 = v59;
    sub_1D8ED5EE0(v59);
    (*(v57 + 8))(v8, v51);
    sub_1D8D41388(v61, v71);
    sub_1D8D088B4(&v71[14], &v62, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v71);
    v37 = v9[2];
    v38 = v52;
    v39 = v58;
    v37(v52, v36, v58);
    sub_1D8D088B4(&v62, v71, &qword_1ECAB4928, &qword_1D918B380);
    v40 = v38;
    v37(v17, v38, v39);
    v41 = v60;
    sub_1D8D088B4(v71, &v17[*(v60 + 36)], &qword_1ECAB4928, &qword_1D918B380);
    v42 = &v17[v41[10]];
    *v42 = "UniquePipeline";
    *(v42 + 1) = 14;
    v42[16] = 2;
    v17[v41[12]] = 0;
    sub_1D8D08A50(v71, &qword_1ECAB4928, &qword_1D918B380);
    v43 = v9[1];
    v43(v40, v39);
    sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
    v43(v36, v39);
    v44 = &v17[v41[11]];
    *v44 = 0;
    *(v44 + 1) = 0xE000000000000000;
    v17[v41[13]] = 0;
    sub_1D8CF48EC(qword_1ECAB2810, &qword_1ECAB6408, &qword_1D9192688);
    v45 = sub_1D9177B1C();
    sub_1D8D08A50(v17, &qword_1ECAB6408, &qword_1D9192688);

    v46 = v54;
    v47 = *v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = *v46;
    sub_1D8F4F0AC(v45, v61, isUniquelyReferenced_nonNull_native);

    *v46 = *&v71[0];
  }

  return v45;
}

uint64_t sub_1D8ED3A74(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F8, &qword_1D9192678);
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6400, &qword_1D9192680);
  v9 = *(v58 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v58);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v50 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6408, &qword_1D9192688);
  v15 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v17 = &v50 - v16;
  v18 = *a1;
  if (*(*a1 + 16) && (v19 = sub_1D8F06844(a2), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    sub_1D8D41388(a2, v71);
    sub_1D8D088B4(&v71[14], &v62, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D58578(v71);
    if (v63)
    {
      sub_1D8D6BCE0(&v62, v68);
      v22 = sub_1D8D41388(a2, &v62);
      MEMORY[0x1EEE9AC00](v22);

      v23 = v72;
      sub_1D8F4DEA8(sub_1D8EDCFC0, v18, v71);
      v72 = v23;

      sub_1D8D58578(&v62);
      if (*(&v71[0] + 1))
      {
        v65 = &type metadata for ArtworkRequest;
        v66 = &protocol witness table for ArtworkRequest;
        *&v64 = swift_allocObject();
        memcpy((v64 + 16), v71, 0x108uLL);
        sub_1D8D6BCE0(&v64, v67);
        v24 = __swift_project_boxed_opaque_existential_1(v67, v67[3]);
        sub_1D8D088B4((v24 + 28), &v62, &qword_1ECAB4928, &qword_1D918B380);
        if (v63)
        {
          sub_1D8D6BCE0(&v62, v71);
          v25 = v69;
          v26 = v70;
          __swift_project_boxed_opaque_existential_1(v68, v69);
          v61 = a2;
          v27 = *(&v71[1] + 1);
          v28 = *&v71[2];
          __swift_project_boxed_opaque_existential_1(v71, *(&v71[1] + 1));
          v29 = (*(v28 + 8))(v27, v28);
          a2 = v61;
          (*(v26 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v29, v30, v25, v26);

          __swift_destroy_boxed_opaque_existential_1Tm(v71);
        }

        else
        {
          sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      else
      {
        sub_1D8D08A50(v71, &qword_1ECAB4B00, &unk_1D9192690);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    else
    {
      sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8D41388(a2, v71);
    sub_1D8D088B4(&v71[14], &v62, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v71);
    sub_1D8D088B4(&v62, v68, &qword_1ECAB4928, &qword_1D918B380);
    *&v71[0] = v21;
    sub_1D8D088B4(v68, v71 + 8, &qword_1ECAB4928, &qword_1D918B380);
    *&v71[3] = "FromUniquePipeline";
    *(&v71[3] + 1) = 18;
    LOBYTE(v71[4]) = 2;
    BYTE8(v71[5]) = 0;

    sub_1D8D08A50(v68, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
    *(&v71[4] + 1) = 0;
    *&v71[5] = 0xE000000000000000;
    BYTE9(v71[5]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
    sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020);
    v45 = sub_1D9177B1C();

    sub_1D8D08A50(v71, &qword_1ECAB4970, &qword_1D918B020);
  }

  else
  {
    v31 = *(a2 + 173);
    sub_1D8D41388(a2, v71);
    v32 = swift_allocObject();
    v51 = v5;
    v33 = v32;
    *(v32 + 16) = v31;
    memcpy((v32 + 24), v71, 0x108uLL);
    v34 = swift_allocObject();
    v52 = v12;
    v61 = a2;
    *(v34 + 16) = sub_1D8EDCF68;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    v54 = a1;
    v55 = v33;
    *(v35 + 16) = sub_1D8EDCF68;
    *(v35 + 24) = v33;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F0, &unk_1D918B180);
    v53 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27C0, &qword_1ECAB49F0, &unk_1D918B180);
    sub_1D9177B3C();

    v36 = v59;
    sub_1D8ED5EE0(v59);
    (*(v57 + 8))(v8, v51);
    sub_1D8D41388(v61, v71);
    sub_1D8D088B4(&v71[14], &v62, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v71);
    v37 = v9[2];
    v38 = v52;
    v39 = v58;
    v37(v52, v36, v58);
    sub_1D8D088B4(&v62, v71, &qword_1ECAB4928, &qword_1D918B380);
    v40 = v38;
    v37(v17, v38, v39);
    v41 = v60;
    sub_1D8D088B4(v71, &v17[*(v60 + 36)], &qword_1ECAB4928, &qword_1D918B380);
    v42 = &v17[v41[10]];
    *v42 = "UniquePipeline";
    *(v42 + 1) = 14;
    v42[16] = 2;
    v17[v41[12]] = 0;
    sub_1D8D08A50(v71, &qword_1ECAB4928, &qword_1D918B380);
    v43 = v9[1];
    v43(v40, v39);
    sub_1D8D08A50(&v62, &qword_1ECAB4928, &qword_1D918B380);
    v43(v36, v39);
    v44 = &v17[v41[11]];
    *v44 = 0;
    *(v44 + 1) = 0xE000000000000000;
    v17[v41[13]] = 0;
    sub_1D8CF48EC(qword_1ECAB2810, &qword_1ECAB6408, &qword_1D9192688);
    v45 = sub_1D9177B1C();
    sub_1D8D08A50(v17, &qword_1ECAB6408, &qword_1D9192688);

    v46 = v54;
    v47 = *v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = *v46;
    sub_1D8F4F0AC(v45, v61, isUniquelyReferenced_nonNull_native);

    *v46 = *&v71[0];
  }

  return v45;
}

uint64_t sub_1D8ED436C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62B8, &qword_1D9192510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v63 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62C0, &qword_1D9192518);
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v63 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62C8, &qword_1D9192520);
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62D0, &qword_1D9192528);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - v18;
  v76 = type metadata accessor for TTMLRequest();
  v20 = *(v76 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v23 = *a1;
  if (*(v23 + 16) && (v24 = sub_1D8F06B6C(a2), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
    v27 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v27, type metadata accessor for TTMLRequest);
    v28 = v76;
    sub_1D8D088B4(&v22[*(v76 + 36)], &v93, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D671A8(v22, type metadata accessor for TTMLRequest);
    if (v94)
    {
      sub_1D8D6BCE0(&v93, &v82);
      v29 = sub_1D8EDCD8C(a2, v22, type metadata accessor for TTMLRequest);
      MEMORY[0x1EEE9AC00](v29);

      v30 = v95;
      sub_1D8F4E148(sub_1D8EDC6C0, v23, v8);
      v95 = v30;

      v28 = v76;
      sub_1D8D671A8(v22, type metadata accessor for TTMLRequest);
      if ((*(v20 + 48))(v8, 1, v28) == 1)
      {
        sub_1D8D08A50(v8, &qword_1ECAB62B8, &qword_1D9192510);
      }

      else
      {
        v80 = v28;
        v81 = &protocol witness table for TTMLRequest;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v79);
        sub_1D8EDC968(v8, boxed_opaque_existential_0, type metadata accessor for TTMLRequest);
        sub_1D8D6BCE0(&v79, &v93);
        v52 = __swift_project_boxed_opaque_existential_1(&v93, v94);
        sub_1D8D088B4(v52 + *(v28 + 36), &v77, &qword_1ECAB4928, &qword_1D918B380);
        if (v78)
        {
          sub_1D8D6BCE0(&v77, &v79);
          v53 = v84;
          v54 = v85;
          __swift_project_boxed_opaque_existential_1(&v82, v84);
          v75 = a2;
          v55 = v80;
          v56 = v81;
          __swift_project_boxed_opaque_existential_1(&v79, v80);
          v57 = v56[1];
          v58 = v56;
          v27 = v22;
          v59 = v57(v55, v58);
          v60 = v53;
          v28 = v76;
          (*(v54 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v59, v61, v60, v54);
          a2 = v75;

          __swift_destroy_boxed_opaque_existential_1Tm(&v79);
        }

        else
        {
          sub_1D8D08A50(&v77, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    }

    else
    {
      sub_1D8D08A50(&v93, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8EDCD8C(a2, v27, type metadata accessor for TTMLRequest);
    sub_1D8D088B4(&v27[*(v28 + 36)], &v93, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v27, type metadata accessor for TTMLRequest);
    sub_1D8D088B4(&v93, &v79, &qword_1ECAB4928, &qword_1D918B380);
    v82 = v26;
    sub_1D8D088B4(&v79, &v83, &qword_1ECAB4928, &qword_1D918B380);
    v86 = "FromUniquePipeline";
    v87 = 18;
    v88 = 2;
    v91 = 0;

    sub_1D8D08A50(&v79, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v93, &qword_1ECAB4928, &qword_1D918B380);
    v89 = 0;
    v90 = 0xE000000000000000;
    v92 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62D8, &qword_1D9192530);
    sub_1D8CF48EC(&qword_1ECAB2798, &qword_1ECAB62D8, &qword_1D9192530);
    v47 = sub_1D9177B1C();

    sub_1D8D08A50(&v82, &qword_1ECAB62D8, &qword_1D9192530);
  }

  else
  {
    v31 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6298, &qword_1D91924F0) + 48));
    v64 = type metadata accessor for TTMLRequest;
    v32 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v32, type metadata accessor for TTMLRequest);
    v33 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    sub_1D8EDC968(v32, v34 + v33, type metadata accessor for TTMLRequest);
    v35 = swift_allocObject();
    v75 = a2;
    v63 = v13;
    *(v35 + 16) = sub_1D8EDC694;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1D8EDC694;
    *(v36 + 24) = v34;
    v66 = v34;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A8, &qword_1D9192500);
    v65 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27B8, &qword_1ECAB62A8, &qword_1D9192500);
    v37 = v67;
    sub_1D9177B3C();

    v38 = v71;
    sub_1D8ED6714(v71);
    (*(v68 + 8))(v37, v69);
    sub_1D8EDCD8C(v75, v32, v64);
    sub_1D8D088B4(&v32[*(v76 + 36)], &v82, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v32, type metadata accessor for TTMLRequest);
    v39 = v72;
    v40 = *(v72 + 16);
    v41 = v16;
    v42 = v63;
    v43 = v73;
    v40(v63, v38, v73);
    sub_1D8D088B4(&v82, &v93, &qword_1ECAB4928, &qword_1D918B380);
    v40(v19, v42, v43);
    sub_1D8D088B4(&v93, &v19[v41[9]], &qword_1ECAB4928, &qword_1D918B380);
    v44 = &v19[v41[10]];
    *v44 = "UniquePipeline";
    *(v44 + 1) = 14;
    v44[16] = 2;
    v19[v41[12]] = 0;
    sub_1D8D08A50(&v93, &qword_1ECAB4928, &qword_1D918B380);
    v45 = *(v39 + 8);
    v45(v42, v43);
    sub_1D8D08A50(&v82, &qword_1ECAB4928, &qword_1D918B380);
    v45(v38, v43);
    v46 = &v19[v41[11]];
    *v46 = 0;
    *(v46 + 1) = 0xE000000000000000;
    v19[v41[13]] = 0;
    sub_1D8CF48EC(&qword_1ECAB2808, &qword_1ECAB62D0, &qword_1D9192528);
    v47 = sub_1D9177B1C();
    sub_1D8D08A50(v19, &qword_1ECAB62D0, &qword_1D9192528);

    v48 = v74;
    v49 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *v48;
    sub_1D8F4FD68(v47, v75, isUniquelyReferenced_nonNull_native);

    *v48 = v82;
  }

  return v47;
}

uint64_t sub_1D8ED4EC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6318, &qword_1D9192578);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v63 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6370, &qword_1D91925D8);
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v63 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6378, &qword_1D91925E0);
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6380, &qword_1D91925E8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - v18;
  v76 = type metadata accessor for ShazamSignatureRequest();
  v20 = *(v76 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v23 = *a1;
  if (*(v23 + 16) && (v24 = sub_1D8F06B18(a2), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
    v27 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v27, type metadata accessor for ShazamSignatureRequest);
    v28 = v76;
    sub_1D8D088B4(&v22[*(v76 + 36)], &v93, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D671A8(v22, type metadata accessor for ShazamSignatureRequest);
    if (v94)
    {
      sub_1D8D6BCE0(&v93, &v82);
      v29 = sub_1D8EDCD8C(a2, v22, type metadata accessor for ShazamSignatureRequest);
      MEMORY[0x1EEE9AC00](v29);

      v30 = v95;
      sub_1D8F4E178(sub_1D8EDCA7C, v23, v8);
      v95 = v30;

      v28 = v76;
      sub_1D8D671A8(v22, type metadata accessor for ShazamSignatureRequest);
      if ((*(v20 + 48))(v8, 1, v28) == 1)
      {
        sub_1D8D08A50(v8, &qword_1ECAB6318, &qword_1D9192578);
      }

      else
      {
        v80 = v28;
        v81 = &protocol witness table for ShazamSignatureRequest;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v79);
        sub_1D8EDC968(v8, boxed_opaque_existential_0, type metadata accessor for ShazamSignatureRequest);
        sub_1D8D6BCE0(&v79, &v93);
        v52 = __swift_project_boxed_opaque_existential_1(&v93, v94);
        sub_1D8D088B4(v52 + *(v28 + 36), &v77, &qword_1ECAB4928, &qword_1D918B380);
        if (v78)
        {
          sub_1D8D6BCE0(&v77, &v79);
          v53 = v84;
          v54 = v85;
          __swift_project_boxed_opaque_existential_1(&v82, v84);
          v75 = a2;
          v55 = v80;
          v56 = v81;
          __swift_project_boxed_opaque_existential_1(&v79, v80);
          v57 = v56[1];
          v58 = v56;
          v27 = v22;
          v59 = v57(v55, v58);
          v60 = v53;
          v28 = v76;
          (*(v54 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v59, v61, v60, v54);
          a2 = v75;

          __swift_destroy_boxed_opaque_existential_1Tm(&v79);
        }

        else
        {
          sub_1D8D08A50(&v77, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    }

    else
    {
      sub_1D8D08A50(&v93, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8EDCD8C(a2, v27, type metadata accessor for ShazamSignatureRequest);
    sub_1D8D088B4(&v27[*(v28 + 36)], &v93, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v27, type metadata accessor for ShazamSignatureRequest);
    sub_1D8D088B4(&v93, &v79, &qword_1ECAB4928, &qword_1D918B380);
    v82 = v26;
    sub_1D8D088B4(&v79, &v83, &qword_1ECAB4928, &qword_1D918B380);
    v86 = "FromUniquePipeline";
    v87 = 18;
    v88 = 2;
    v91 = 0;

    sub_1D8D08A50(&v79, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v93, &qword_1ECAB4928, &qword_1D918B380);
    v89 = 0;
    v90 = 0xE000000000000000;
    v92 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6388, &qword_1D91925F0);
    sub_1D8CF48EC(&qword_1ECAB2790, &qword_1ECAB6388, &qword_1D91925F0);
    v47 = sub_1D9177B1C();

    sub_1D8D08A50(&v82, &qword_1ECAB6388, &qword_1D91925F0);
  }

  else
  {
    v31 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6350, &qword_1D91925B8) + 48));
    v64 = type metadata accessor for ShazamSignatureRequest;
    v32 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v32, type metadata accessor for ShazamSignatureRequest);
    v33 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    sub_1D8EDC968(v32, v34 + v33, type metadata accessor for ShazamSignatureRequest);
    v35 = swift_allocObject();
    v75 = a2;
    v63 = v13;
    *(v35 + 16) = sub_1D8EDC9D0;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1D8EDC9D0;
    *(v36 + 24) = v34;
    v66 = v34;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6360, &qword_1D91925C8);
    v65 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27B0, &qword_1ECAB6360, &qword_1D91925C8);
    v37 = v67;
    sub_1D9177B3C();

    v38 = v71;
    sub_1D8ED6A88(v71);
    (*(v68 + 8))(v37, v69);
    sub_1D8EDCD8C(v75, v32, v64);
    sub_1D8D088B4(&v32[*(v76 + 36)], &v82, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v32, type metadata accessor for ShazamSignatureRequest);
    v39 = v72;
    v40 = *(v72 + 16);
    v41 = v16;
    v42 = v63;
    v43 = v73;
    v40(v63, v38, v73);
    sub_1D8D088B4(&v82, &v93, &qword_1ECAB4928, &qword_1D918B380);
    v40(v19, v42, v43);
    sub_1D8D088B4(&v93, &v19[v41[9]], &qword_1ECAB4928, &qword_1D918B380);
    v44 = &v19[v41[10]];
    *v44 = "UniquePipeline";
    *(v44 + 1) = 14;
    v44[16] = 2;
    v19[v41[12]] = 0;
    sub_1D8D08A50(&v93, &qword_1ECAB4928, &qword_1D918B380);
    v45 = *(v39 + 8);
    v45(v42, v43);
    sub_1D8D08A50(&v82, &qword_1ECAB4928, &qword_1D918B380);
    v45(v38, v43);
    v46 = &v19[v41[11]];
    *v46 = 0;
    *(v46 + 1) = 0xE000000000000000;
    v19[v41[13]] = 0;
    sub_1D8CF48EC(&qword_1ECAB2800, &qword_1ECAB6380, &qword_1D91925E8);
    v47 = sub_1D9177B1C();
    sub_1D8D08A50(v19, &qword_1ECAB6380, &qword_1D91925E8);

    v48 = v74;
    v49 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *v48;
    sub_1D8F4FF0C(v47, v75, isUniquelyReferenced_nonNull_native);

    *v48 = v82;
  }

  return v47;
}

uint64_t sub_1D8ED5A14(uint64_t a1, uint64_t a2)
{
  sub_1D8D41388(a2, v4);
  os_unfair_lock_lock((a1 + 24));
  sub_1D8EDCDF4((a1 + 16));
  os_unfair_lock_unlock((a1 + 24));
  return sub_1D8D58578(v4);
}

uint64_t sub_1D8ED5A84(uint64_t a1, uint64_t a2)
{
  sub_1D8D41388(a2, v4);
  os_unfair_lock_lock((a1 + 24));
  sub_1D8EDCFA8((a1 + 16));
  os_unfair_lock_unlock((a1 + 24));
  return sub_1D8D58578(v4);
}

uint64_t sub_1D8ED5AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLRequest();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8EDCD8C(a2, v7, type metadata accessor for TTMLRequest);
  v10 = v7;
  os_unfair_lock_lock((a1 + 24));
  sub_1D8EDC6F0((a1 + 16));
  os_unfair_lock_unlock((a1 + 24));
  return sub_1D8D671A8(v7, type metadata accessor for TTMLRequest);
}

uint64_t sub_1D8ED5BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSignatureRequest();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8EDCD8C(a2, v7, type metadata accessor for ShazamSignatureRequest);
  v10 = v7;
  os_unfair_lock_lock((a1 + 24));
  sub_1D8EDCAAC((a1 + 16));
  os_unfair_lock_unlock((a1 + 24));
  return sub_1D8D671A8(v7, type metadata accessor for ShazamSignatureRequest);
}

unint64_t sub_1D8ED5CB4(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  result = sub_1D8F06844(a2);
  if (v5)
  {
    v6 = result;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v11 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F81FB4();
      v9 = v11;
    }

    sub_1D8D58578(*(v9 + 48) + 264 * v6);
    v10 = *(*(v9 + 56) + 8 * v6);

    result = sub_1D8F7F2D8(v6, v9);
    *a1 = v9;
  }

  return result;
}

void sub_1D8ED5D50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1D8F06B6C(a2);
  if (v5)
  {
    v6 = v4;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F83038();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TTMLRequest();
    sub_1D8D671A8(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for TTMLRequest);
    v12 = *(*(v9 + 56) + 8 * v6);

    sub_1D8F7FE44(v6, v9);
    *a1 = v9;
  }
}

void sub_1D8ED5E18(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1D8F06B18(a2);
  if (v5)
  {
    v6 = v4;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F83074();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ShazamSignatureRequest();
    sub_1D8D671A8(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for ShazamSignatureRequest);
    v12 = *(*(v9 + 56) + 8 * v6);

    sub_1D8F803C0(v6, v9);
    *a1 = v9;
  }
}

uint64_t sub_1D8ED5EE0@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4920, &unk_1D918AFD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6410, &qword_1D91926A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F8, &qword_1D9192678);
  sub_1D8CF48EC(&qword_1ECAB0980, &qword_1ECAB63F8, &qword_1D9192678);
  sub_1D9177B9C();
  v10 = type metadata accessor for ArtworkContent();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6418, &qword_1D91926A8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 1;
  *(v14 + 32) = xmmword_1D918BEE0;
  *(v14 + 48) = 2;
  *(v14 + *(*v14 + 144)) = MEMORY[0x1E69E7CC0];
  sub_1D8D6734C(v4, v14 + *(*v14 + 136), &qword_1ECAB4920, &unk_1D918AFD0);
  sub_1D8CF48EC(&qword_1ECAB0798, &qword_1ECAB6410, &qword_1D91926A0);
  sub_1D8CF48EC(&qword_1ECAB1980, &qword_1ECAB6418, &qword_1D91926A8);
  v16 = sub_1D9177D2C();

  (*(v6 + 8))(v9, v5);
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6420, &qword_1D91926B0);
  sub_1D8CF48EC(&qword_1ECAB04E0, &qword_1ECAB6420, &qword_1D91926B0);
  v17 = sub_1D917796C();

  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6428, &qword_1D91926B8);
  sub_1D8CF48EC(&qword_1ECAB0AD0, &qword_1ECAB6428, &qword_1D91926B8);
  sub_1D9177B2C();
}

uint64_t sub_1D8ED6300@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63D0, &qword_1D9192648);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63D8, &unk_1D9192650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F48, &qword_1D9191B60);
  sub_1D8CF48EC(&qword_1ECAB0740, &qword_1ECAB5F48, &qword_1D9191B60);
  sub_1D9177B9C();
  v10 = type metadata accessor for TranscriptData.TimeBombedURLs();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63E0, &qword_1D9192660);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 1;
  *(v14 + 32) = xmmword_1D918BEE0;
  *(v14 + 48) = 2;
  *(v14 + *(*v14 + 144)) = MEMORY[0x1E69E7CC0];
  sub_1D8D6734C(v4, v14 + *(*v14 + 136), &qword_1ECAB63D0, &qword_1D9192648);
  sub_1D8CF48EC(&qword_1ECAB0708, &qword_1ECAB63D8, &unk_1D9192650);
  sub_1D8CF48EC(&qword_1ECAB1978, &qword_1ECAB63E0, &qword_1D9192660);
  v16 = sub_1D9177D2C();

  (*(v6 + 8))(v9, v5);
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63E8, &qword_1D9192668);
  sub_1D8CF48EC(&qword_1ECAB04B8, &qword_1ECAB63E8, &qword_1D9192668);
  v17 = sub_1D917796C();

  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F0, &qword_1D9192670);
  sub_1D8CF48EC(&qword_1ECAB0AA8, &qword_1ECAB63F0, &qword_1D9192670);
  sub_1D9177B2C();
}

uint64_t sub_1D8ED6714@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62E0, &qword_1D9192538);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62C0, &qword_1D9192518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62E8, &qword_1D9192540);
  sub_1D8CF48EC(&qword_1ECAB0978, &qword_1ECAB62C0, &qword_1D9192518);
  sub_1D9177B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62F0, &unk_1D9192548);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = 1;
  *(v6 + 32) = xmmword_1D918BEE0;
  *(v6 + 48) = 2;
  *(v6 + 112) = MEMORY[0x1E69E7CC0];
  sub_1D8CF48EC(&qword_1ECAB0790, &qword_1ECAB62E0, &qword_1D9192538);
  sub_1D8CF48EC(&qword_1ECAB1970, &qword_1ECAB62F0, &unk_1D9192548);
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0;
  v8 = sub_1D9177D2C();

  (*(v2 + 8))(v5, v1);
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62F8, &qword_1D9192558);
  sub_1D8CF48EC(&qword_1ECAB04D8, &qword_1ECAB62F8, &qword_1D9192558);
  v9 = sub_1D917796C();

  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6300, &qword_1D9192560);
  sub_1D8CF48EC(&qword_1ECAB0AC8, &qword_1ECAB6300, &qword_1D9192560);
  sub_1D9177B2C();
}

uint64_t sub_1D8ED6A88@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6390, &qword_1D91925F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6370, &qword_1D91925D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6398, &qword_1D9192600);
  sub_1D8CF48EC(&qword_1ECAB0970, &qword_1ECAB6370, &qword_1D91925D8);
  sub_1D9177B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63A0, &qword_1D9192608);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = 1;
  *(v6 + 32) = xmmword_1D918BEE0;
  *(v6 + 48) = 2;
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 56) = 0;
  *(v6 + 64) = v8;
  sub_1D8CF48EC(&qword_1ECAB0788, &qword_1ECAB6390, &qword_1D91925F8);
  sub_1D8CF48EC(&qword_1ECAB1968, &qword_1ECAB63A0, &qword_1D9192608);
  v9 = sub_1D9177D2C();

  (*(v2 + 8))(v5, v1);
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63A8, &qword_1D9192610);
  sub_1D8CF48EC(&qword_1ECAB04D0, &qword_1ECAB63A8, &qword_1D9192610);
  v10 = sub_1D917796C();

  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63B0, &qword_1D9192618);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&qword_1ECAB0AC0, &qword_1ECAB63B0, &qword_1D9192618);
  sub_1D9177B2C();
}

uint64_t TimeBombedTranscriptProvider.ttmlPersistentCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6190, &qword_1D91921D0);
}

uint64_t TimeBombedTranscriptProvider.signaturePersistentCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v7[0] = v1[4];
  v7[1] = v2;
  v4 = v1[7];
  v8 = v1[6];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6198, &qword_1D91921D8);
}

uint64_t TimeBombedTranscriptProvider.ttmlVolatileCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v7[0] = v1[8];
  v7[1] = v2;
  v4 = v1[11];
  v8 = v1[10];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6190, &qword_1D91921D0);
}

uint64_t TimeBombedTranscriptProvider.signatureVolatileCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v7[0] = v1[12];
  v7[1] = v2;
  v4 = v1[15];
  v8 = v1[14];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6198, &qword_1D91921D8);
}

uint64_t TimeBombedTranscriptProvider.ttmlSource.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 264);
  *a1 = *(v1 + 256);
  a1[1] = v2;
}

uint64_t TimeBombedTranscriptProvider.shazamSignatureSource.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 280);
  *a1 = *(v1 + 272);
  a1[1] = v2;
}

uint64_t TimeBombedTranscriptProvider.init(ttmlPersistentCache:signaturePersistentCache:ttmlVolatileCache:signatureVolatileCache:ttmlSource:shazamSignatureSource:timeBombedURLsProvider:workQueue:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v12;
  v13 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v13;
  v14 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v14;
  v15 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v15;
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[3];
  *(a9 + 160) = a3[2];
  *(a9 + 176) = v18;
  *(a9 + 128) = v16;
  *(a9 + 144) = v17;
  v19 = a4[3];
  *(a9 + 224) = a4[2];
  *(a9 + 240) = v19;
  v20 = a4[1];
  *(a9 + 192) = *a4;
  *(a9 + 208) = v20;
  v21 = *a6;
  *(a9 + 256) = *a5;
  *(a9 + 272) = v21;
  sub_1D8CFD9D8(a7, a9 + 288);
  *(a9 + 328) = a8;
  v22 = a8;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = sub_1D8D688C4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A0, &qword_1D91921E0);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  *(a9 + 336) = v25;
  v26 = sub_1D8D68C58(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A8, &unk_1D91921E8);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  *(a9 + 344) = v27;
  v28 = sub_1D8D68E84(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  *(v29 + 16) = v28;

  *(a9 + 352) = v29;
  return result;
}

uint64_t TimeBombedTranscriptProvider.prefetch(request:)()
{
  v1 = *(v0 + 352);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EDC278((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1D8ED7148@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a4;
  v48 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F08, &unk_1D9191980);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F10, &qword_1D9192640);
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v37 - v16;
  v47 = sub_1D9176EAC();
  v39 = *(v47 - 8);
  v17 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v42 = &v37 - v19;
  sub_1D9176E9C();
  v44 = a2;
  v20 = TimeBombedTranscriptProvider.transcript(for:)(a3);
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDCD0998;
  v22 = sub_1D9178DBC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v50[0] = v21;
  v50[47] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v37 = v20;
  sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A80, &qword_1ECAB5F08, &unk_1D9191980);
  v23 = v43;
  v24 = v41;
  sub_1D9177CEC();

  (*(v40 + 8))(v9, v24);
  sub_1D8D08A50(v13, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D6906C(v44, v50);
  v26 = v38;
  v25 = v39;
  v27 = v42;
  v28 = v47;
  (*(v39 + 16))(v38, v42, v47);
  v29 = (*(v25 + 80) + 376) & ~*(v25 + 80);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v50, 0x168uLL);
  (*(v25 + 32))(v30 + v29, v26, v28);
  sub_1D8CF48EC(&qword_1ECAB04A8, &qword_1ECAB5F10, &qword_1D9192640);
  v31 = v46;
  v32 = sub_1D9177BCC();

  (*(v45 + 8))(v23, v31);

  v33 = v48;
  v34 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50[0] = *v33;
  sub_1D8F4FA5C(v32, v27, isUniquelyReferenced_nonNull_native);
  *v33 = v50[0];
  result = (*(v25 + 8))(v27, v28);
  *v49 = v32;
  return result;
}

uint64_t TimeBombedTranscriptProvider.transcript(for:)(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61B0, &unk_1D91921F8);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v38 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61B8, &qword_1D9192208);
  v47 = *(v44 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61C0, &qword_1D9192210);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v43 = v38 - v18;
  sub_1D8EC8C5C(a1, v50);
  v19 = swift_allocObject();
  v20 = v50[3];
  *(v19 + 48) = v50[2];
  *(v19 + 64) = v20;
  *(v19 + 80) = *&v50[4];
  v21 = v50[1];
  *(v19 + 16) = v50[0];
  *(v19 + 32) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61C8, &unk_1D9192218);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1D9177A5C();
  v26 = *(v2 + 328);
  v27 = sub_1D9178DBC();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  *&v50[0] = v26;
  *&v48[0] = v25;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0280, &qword_1ECAB61C8, &unk_1D9192218);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A38, &qword_1ECAB61B0, &unk_1D91921F8);
  v28 = v39;
  v29 = v41;
  sub_1D9177CEC();

  (*(v42 + 8))(v8, v29);
  sub_1D8D08A50(v12, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D6906C(v38[1], v50);
  sub_1D8EC8C5C(v40, v48);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v50, 0x168uLL);
  v31 = v48[3];
  *(v30 + 408) = v48[2];
  *(v30 + 424) = v31;
  *(v30 + 440) = v49;
  v32 = v48[1];
  *(v30 + 376) = v48[0];
  *(v30 + 392) = v32;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8CF48EC(&unk_1ECAB0458, &qword_1ECAB61B8, &qword_1D9192208);
  sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990);
  v34 = v43;
  v33 = v44;
  sub_1D9177CBC();

  (*(v47 + 8))(v28, v33);
  sub_1D8CF48EC(&qword_1ECAB05F0, &qword_1ECAB61C0, &qword_1D9192210);
  v35 = v45;
  v36 = sub_1D9177B1C();
  (*(v46 + 8))(v34, v35);
  return v36;
}

void sub_1D8ED7C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 352);
  os_unfair_lock_lock((v2 + 24));
  sub_1D8EC8DE4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1D8ED7CEC(void (*a1)(_BYTE *), uint64_t a2, uint64_t *a3)
{
  v47 = a2;
  v48 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63C8, &unk_1D9192630);
  v4 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v37[-v5];
  v6 = type metadata accessor for TTMLRequest();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37[-v13];
  v15 = type metadata accessor for ShazamSignatureRequest();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_1D9176C2C();
  v20 = *(v43 - 8);
  v42 = *(v20 + 56);
  v44 = v20 + 56;
  v42(v14, 1, 1, v43);
  sub_1D8D088B4(v14, v19, &unk_1ECAB5910, &qword_1D9188C90);
  v38 = *(a3 + 24);
  v21 = a3[2];
  v41 = a3[1];
  v50 = v41;
  v51 = v21;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v40 = *a3;
  v49 = v40;
  v39 = sub_1D8E40D20();
  v22 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v22);

  v23 = v50;
  v24 = v51;
  sub_1D8D08A50(v14, &unk_1ECAB5910, &qword_1D9188C90);
  v25 = &v19[v16[11]];
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v19[v16[7]] = v38;
  v26 = *(a3 + 25);
  v27 = &v19[v16[8]];
  *v27 = v23;
  v27[1] = v24;
  v19[v16[10]] = v26;
  v19[v16[9]] = 6;
  sub_1D8EDC2A8((a3 + 4), v25);
  v42(v14, 1, 1, v43);
  sub_1D8D088B4(v14, v10, &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v16) = *(a3 + 24);
  v50 = v41;
  v51 = v21;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v49 = v40;
  v28 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v28);

  v29 = v50;
  v30 = v51;
  sub_1D8D08A50(v14, &unk_1ECAB5910, &qword_1D9188C90);
  v31 = &v10[v7[11]];
  *(v31 + 32) = 0;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  v10[v7[7]] = v16;
  v32 = *(a3 + 25);
  v33 = &v10[v7[8]];
  *v33 = v29;
  v33[1] = v30;
  v10[v7[10]] = v32;
  v10[v7[9]] = 7;
  sub_1D8EDC2A8((a3 + 4), v31);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61D8, &qword_1D9192440) + 48);
  v35 = v45;
  sub_1D8EDCD8C(v10, v45, type metadata accessor for TTMLRequest);
  sub_1D8EDCD8C(v19, &v35[v34], type metadata accessor for ShazamSignatureRequest);
  swift_storeEnumTagMultiPayload();
  v48(v35);
  sub_1D8D08A50(v35, &qword_1ECAB63C8, &unk_1D9192630);
  sub_1D8D671A8(v10, type metadata accessor for TTMLRequest);
  return sub_1D8D671A8(v19, type metadata accessor for ShazamSignatureRequest);
}

uint64_t sub_1D8ED8160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61D8, &qword_1D9192440);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1D8D088B4(a1, &v14 - v9, &qword_1ECAB61D8, &qword_1D9192440);
  v11 = *(v7 + 56);
  v12 = sub_1D8ED8268(a2, v10, &v10[v11]);
  sub_1D8D671A8(&v10[v11], type metadata accessor for ShazamSignatureRequest);
  result = sub_1D8D671A8(v10, type metadata accessor for TTMLRequest);
  *a3 = v12;
  return result;
}

uint64_t sub_1D8ED8268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E0, &qword_1D9192448);
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v54 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E8, &qword_1D9192450);
  v62 = *(v64 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61F0, &qword_1D9192458);
  v13 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v65 = (&v54 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61D8, &qword_1D9192440);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  sub_1D8EDCD8C(a2, &v54 - v18, type metadata accessor for TTMLRequest);
  v20 = *(v16 + 56);
  sub_1D8EDCD8C(a3, &v19[v20], type metadata accessor for ShazamSignatureRequest);
  v21 = *(v4 + 136);
  (*(v4 + 128))(&v73, v19);
  v22 = v78;
  v71 = v19;
  if (v78)
  {
    v23 = v79;
    v24 = v76;
    v25 = v77;
    v26 = v74;
    v27 = v75;
    v28 = v73;
  }

  else
  {
    v29 = *(v4 + 8);
    (*v4)(&v73, v19);
    v22 = v78;
    if (v78)
    {
      v30 = v19;
      v31 = *(v4 + 144);
      v32 = *(v4 + 152);
      v28 = v73;
      v26 = v74;
      v27 = v75;
      LOBYTE(v75) = v75 & 1;
      v24 = v76;
      v25 = v77;
      v23 = v79;
      v31(&v73, v30);
    }

    else
    {
      v28 = v73;
      v26 = v74;
      v27 = v75;
      v24 = v76;
      v25 = v77;
      v23 = v79;
    }
  }

  v33 = sub_1D8ED8DC4(&v71[v20]);
  v34 = v33;
  v68 = v24;
  v69 = v27;
  v67 = v28;
  v66 = v26;
  if (v22 && v33)
  {
    v72[0] = v27 & 1;
    v73 = v33;
    v74 = v28;
    v75 = v26;
    LOBYTE(v76) = v27 & 1;
    v77 = v24;
    v78 = v25;
    v55 = v25;
    v79 = v22;
    v80 = v23;
    v56 = v23;
    v81 = 2;
    sub_1D8EDC4C0(v28, v26, v27, v24, v25, v22);
    v54 = v34;
    v35 = v57;
    sub_1D9177A0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v36 = v60;
    v37 = v59;
    sub_1D91779DC();
    (*(v58 + 8))(v35, v37);
    v38 = v62;
    v39 = *(v62 + 16);
    v40 = v61;
    v41 = v64;
    v39(v61, v36, v64);
    sub_1D8D088B4(v70 + 32, &v73, &qword_1ECAB4928, &qword_1D918B380);
    v42 = v65;
    v39(v65, v40, v41);
    v43 = v63;
    sub_1D8D088B4(&v73, v42 + *(v63 + 36), &qword_1ECAB4928, &qword_1D918B380);
    v44 = v42 + v43[10];
    *v44 = "LocallyFulfillTranscriptRequest";
    *(v44 + 1) = 31;
    v44[16] = 2;
    *(v42 + v43[12]) = 1;
    sub_1D8D08A50(&v73, &qword_1ECAB4928, &qword_1D918B380);
    v45 = *(v38 + 8);
    v45(v40, v41);
    v45(v36, v41);
    v46 = (v42 + v43[11]);
    *v46 = 0;
    v46[1] = 0xE000000000000000;
    *(v42 + v43[13]) = 0;
    sub_1D8CF48EC(&qword_1ECAB2760, &qword_1ECAB61F0, &qword_1D9192458);
    v47 = sub_1D9177B1C();

    sub_1D8EDC46C(v67, v66, v69, v68, v55, v22);
    v48 = v42;
    v49 = &qword_1ECAB61F0;
    v50 = &qword_1D9192458;
  }

  else
  {
    v73 = v28;
    v74 = v26;
    v75 = v27;
    v76 = v24;
    v77 = v25;
    v78 = v22;
    v79 = v23;
    v51 = v70;
    v52 = sub_1D8ED8E64(v70, &v73, v33);
    sub_1D8D088B4(v51 + 32, v72, &qword_1ECAB4928, &qword_1D918B380);
    v73 = v52;
    sub_1D8D088B4(v72, &v74, &qword_1ECAB4928, &qword_1D918B380);
    v79 = "RemotelyFulfillTranscriptRequest";
    v80 = 32;
    v81 = 2;
    v84 = 1;
    sub_1D8D08A50(v72, &qword_1ECAB4928, &qword_1D918B380);
    v82 = 0;
    v83 = 0xE000000000000000;
    v85 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61F8, &unk_1D9192460);
    sub_1D8CF48EC(&qword_1ECAB27A0, &qword_1ECAB61F8, &unk_1D9192460);
    v47 = sub_1D9177B1C();

    sub_1D8EDC46C(v67, v66, v69, v68, v25, v22);
    v48 = &v73;
    v49 = &qword_1ECAB61F8;
    v50 = &unk_1D9192460;
  }

  sub_1D8D08A50(v48, v49, v50);
  sub_1D8D08A50(v71, &qword_1ECAB61D8, &qword_1D9192440);
  return v47;
}

uint64_t TimeBombedTranscriptProvider.invalidate(for:)(uint64_t *a1)
{
  v2 = type metadata accessor for ShazamSignatureRequest();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38[-v8];
  v10 = type metadata accessor for TTMLRequest();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1D9176C2C();
  v16 = *(v15 - 8);
  v43 = *(v16 + 56);
  v44 = v16 + 56;
  v48 = 1;
  v43(v9, 1, 1, v15);
  sub_1D8D088B4(v9, v14, &unk_1ECAB5910, &qword_1D9188C90);
  v39 = *(a1 + 24);
  v17 = a1[2];
  v42 = a1[1];
  v49 = v42;
  v50 = v17;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v41 = *a1;
  v51 = v41;
  v40 = sub_1D8E40D20();
  v18 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v18);

  v19 = v49;
  v20 = v50;
  sub_1D8D08A50(v9, &unk_1ECAB5910, &qword_1D9188C90);
  v21 = &v14[v11[11]];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v14[v11[7]] = v39;
  v22 = *(a1 + 25);
  v23 = &v14[v11[8]];
  *v23 = v19;
  v23[1] = v20;
  v14[v11[10]] = v22;
  v14[v11[9]] = 7;
  sub_1D8EDC2A8((a1 + 4), v21);
  v43(v9, 1, 1, v15);
  v24 = v45;
  sub_1D8D088B4(v9, v45, &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v11) = *(a1 + 24);
  v49 = v42;
  v50 = v17;
  v25 = v46;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v51 = v41;
  v26 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v26);

  v27 = v49;
  v28 = v50;
  sub_1D8D08A50(v9, &unk_1ECAB5910, &qword_1D9188C90);
  v29 = &v24[v3[11]];
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v24[v3[7]] = v11;
  v30 = *(a1 + 25);
  v31 = &v24[v3[8]];
  *v31 = v27;
  v31[1] = v28;
  v24[v3[10]] = v30;
  v24[v3[9]] = 6;
  sub_1D8EDC2A8((a1 + 4), v29);
  v32 = *(v25 + 40);
  if (((*(v25 + 32))(v14) & 1) == 0)
  {
    v33 = *(v25 + 104);
    v48 = (*(v25 + 96))(v24);
  }

  v34 = *(v25 + 56);
  v35 = v47;
  (*(v25 + 48))(v14);
  if (!v35)
  {
    v36 = *(v25 + 120);
    (*(v25 + 112))(v24);
  }

  sub_1D8D671A8(v24, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D671A8(v14, type metadata accessor for TTMLRequest);
  return v48 & 1;
}

id sub_1D8ED8DC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v4(&v11);
  v6 = v11;
  if (!v11)
  {
    v7 = *(v2 + 72);
    (*(v2 + 64))(&v11, a1);
    v6 = v11;
    if (!v11)
    {
      return 0;
    }

    v8 = *(v2 + 216);
    (*(v2 + 208))(&v11, a1);
  }

  v9 = sub_1D8EDB648(v6);

  return v9;
}

uint64_t sub_1D8ED8E64(uint64_t a1, uint64_t *a2, void *a3)
{
  v136 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6200, &qword_1D9192470);
  v130 = *(v6 - 8);
  v131 = v6;
  v7 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v125 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6208, &qword_1D9192478);
  v127 = *(v9 - 8);
  v128 = v9;
  v10 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v126 = &v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6210, &qword_1D9192480);
  v133 = *(v12 - 8);
  v134 = v12;
  v13 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v125 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6218, &qword_1D9192488);
  v137 = *(v15 - 8);
  v138 = v15;
  v16 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v125 - v17;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6220, &qword_1D9192490);
  v139 = *(v143 - 8);
  v18 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v149 = &v125 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6228, &qword_1D9192498);
  v141 = *(v20 - 8);
  v142 = v20;
  v21 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v125 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E0, &qword_1D9192448);
  v154 = *(v23 - 8);
  v155 = v23;
  v24 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v153 = &v125 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E8, &qword_1D9192450);
  v157 = *(v26 - 8);
  v158 = v26;
  v27 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v125 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6230, &qword_1D91924A0);
  v147 = *(v29 - 8);
  v148 = v29;
  v30 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v146 = &v125 - v31;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6238, &qword_1D91924A8);
  v150 = *(v160 - 8);
  v32 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v125 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6240, &qword_1D91924B0);
  v35 = *(v34 - 8);
  v151 = v34;
  v152 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v167 = &v125 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6248, &qword_1D91924B8);
  v39 = *(v38 - 8);
  v169 = v38;
  v170 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v125 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v125 - v47;
  v49 = *a2;
  v164 = a2[1];
  v165 = v49;
  v50 = a2[3];
  v166 = a2[2];
  v163 = v50;
  v51 = a2[4];
  v168 = a2[5];
  v144 = a2[6];
  v145 = v51;
  v161 = v3;
  v52 = *(v3 + 39);
  v53 = *(v3 + 40);
  __swift_project_boxed_opaque_existential_1(v3 + 36, v52);
  v177[0] = (*(v53 + 8))(a1, v52, v53);
  sub_1D8EC8C5C(a1, v178);
  v54 = swift_allocObject();
  v55 = v178[3];
  *(v54 + 48) = v178[2];
  *(v54 + 64) = v55;
  *(v54 + 80) = v179;
  v56 = v178[1];
  *(v54 + 16) = v178[0];
  *(v54 + 32) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6250, &qword_1D91924C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8);
  sub_1D8CF48EC(&qword_1ECAB0388, &qword_1ECAB6250, &qword_1D91924C0);
  v57 = v45;
  sub_1D9177B9C();
  v58 = v169;

  v59 = *(v170 + 16);
  v59(v45, v48, v58);
  v60 = v161;
  sub_1D8D6906C(v161, v178);
  v61 = v42;
  v59(v42, v48, v58);
  sub_1D8D6906C(v60, v177);
  v162 = v48;
  if (v168)
  {
    LODWORD(v149) = v166 & 1;
    LOBYTE(v172) = v166 & 1;
    v62 = v163;
    v63 = v145;
    sub_1D8D752C4(v163, v145);

    v64 = v144;

    sub_1D8EDC540(v178);
    v65 = v169;
    v66 = v170 + 8;
    v67 = *(v170 + 8);
    v67(v57, v169);
    v161 = v67;
    v170 = v66;
    v68 = v159;
    sub_1D8EDAB00(v177, v159);
    sub_1D8EDC540(v177);
    v67(v61, v65);
    v69 = swift_allocObject();
    v71 = v164;
    v70 = v165;
    *(v69 + 16) = v165;
    *(v69 + 24) = v71;
    *(v69 + 32) = v172;
    *(v69 + 40) = v62;
    *(v69 + 48) = v63;
    v72 = v63;
    v73 = v168;
    *(v69 + 56) = v168;
    *(v69 + 64) = v64;
    v74 = v62;
    v75 = v62;
    v76 = v72;
    sub_1D8D752C4(v74, v72);

    v77 = v160;
    sub_1D917758C();

    (*(v150 + 8))(v68, v77);
    v171 = v149;
    v176[0] = v70;
    v176[1] = v71;
    LOBYTE(v176[2]) = v149;
    v176[3] = v75;
    v176[4] = v76;
    v176[5] = v73;
    v176[6] = v64;
    LOBYTE(v176[8]) = 1;
    sub_1D8D752C4(v75, v76);

    v78 = v153;
    sub_1D9177A0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v79 = v155;
    v80 = v156;
    sub_1D91779DC();
    (*(v154 + 8))(v78, v79);
    sub_1D8CF48EC(&qword_1ECAB6268, &qword_1ECAB61E8, &qword_1D9192450);
    sub_1D8CF48EC(&qword_1ECAB0BA0, &qword_1ECAB6240, &qword_1D91924B0);
    v81 = v146;
    v82 = v167;
    v83 = v158;
    v84 = v151;
    sub_1D9177BEC();
    (*(v157 + 8))(v80, v83);
    sub_1D8CF48EC(&qword_1ECAB6278, &qword_1ECAB6230, &qword_1D91924A0);
    v85 = v148;
    v86 = sub_1D9177B1C();
    sub_1D8EDC46C(v165, v164, v166, v163, v76, v73);
    (*(v147 + 8))(v81, v85);
    (*(v152 + 8))(v82, v84);
    v161(v162, v169);
  }

  else
  {
    v168 = v42;
    v87 = v135;
    v88 = v149;
    v125 = v45;
    if (v136)
    {
      v167 = v136;
      sub_1D8EDC540(v177);
      v89 = v170 + 8;
      v166 = *(v170 + 8);
      (v166)(v168, v169);
      type metadata accessor for TTMLRequest();
      v168 = MEMORY[0x1E695BD60];
      sub_1D8CF48EC(&qword_1ECAB07D0, &qword_1ECAB6248, &qword_1D91924B8);
      sub_1D9177B2C();
      sub_1D8D6906C(v178, v176);
      v90 = swift_allocObject();
      memcpy((v90 + 16), v176, 0x168uLL);
      sub_1D91777FC();
      v170 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6260, &qword_1D91924D0);
      sub_1D8CF48EC(&qword_1ECAB0B70, &qword_1ECAB6218, &qword_1D9192488);
      sub_1D8CF48EC(&qword_1ECAB2770, &qword_1ECAB6260, &qword_1D91924D0);
      v91 = v138;
      sub_1D9177CBC();

      (*(v137 + 8))(v87, v91);
      sub_1D8EDC540(v178);
      v92 = v169;
      v93 = v166;
      (v166)(v125, v169);
      v94 = swift_allocObject();
      v95 = v167;
      *(v94 + 16) = v167;
      sub_1D8CF48EC(&qword_1ECAB0620, &qword_1ECAB6220, &qword_1D9192490);
      v96 = v95;
      v97 = v140;
      v98 = v143;
      sub_1D9177B9C();

      (*(v139 + 8))(v88, v98);
      v176[0] = v96;
      *&v176[1] = v172;
      *&v176[3] = v173;
      *&v176[5] = v174;
      v176[7] = v175;
      LOBYTE(v176[8]) = 0;
      v99 = v96;
      v100 = v153;
      sub_1D9177A0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v101 = v155;
      v102 = v156;
      sub_1D91779DC();
      (*(v154 + 8))(v100, v101);
      sub_1D8CF48EC(&qword_1ECAB6268, &qword_1ECAB61E8, &qword_1D9192450);
      sub_1D8CF48EC(&qword_1ECAB07C0, &qword_1ECAB6228, &qword_1D9192498);
      v103 = v132;
      v104 = v158;
      v105 = v142;
      sub_1D9177BEC();
      (*(v157 + 8))(v102, v104);
      sub_1D8CF48EC(&qword_1ECAB6270, &qword_1ECAB6210, &qword_1D9192480);
      v106 = v134;
      v86 = sub_1D9177B1C();

      (*(v133 + 8))(v103, v106);
      (*(v141 + 8))(v97, v105);
      v93(v162, v92);
    }

    else
    {
      type metadata accessor for TTMLRequest();
      v165 = MEMORY[0x1E695BD60];
      sub_1D8CF48EC(&qword_1ECAB07D0, &qword_1ECAB6248, &qword_1D91924B8);
      v108 = v87;
      sub_1D9177B2C();
      sub_1D8D6906C(v178, v176);
      v109 = swift_allocObject();
      memcpy((v109 + 16), v176, 0x168uLL);
      sub_1D91777FC();
      v110 = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6260, &qword_1D91924D0);
      v166 = MEMORY[0x1E695BC80];
      sub_1D8CF48EC(&qword_1ECAB0B70, &qword_1ECAB6218, &qword_1D9192488);
      sub_1D8CF48EC(&qword_1ECAB2770, &qword_1ECAB6260, &qword_1D91924D0);
      v111 = v138;
      sub_1D9177CBC();

      (*(v137 + 8))(v108, v111);
      sub_1D8EDC540(v178);
      v112 = *(v110 + 8);
      v113 = v169;
      v112(v125, v169);
      v164 = v112;
      v170 = v110 + 8;
      v114 = v168;
      sub_1D8EDAB00(v177, v159);
      sub_1D8EDC540(v177);
      v112(v114, v113);
      sub_1D8CF48EC(&qword_1ECAB0620, &qword_1ECAB6220, &qword_1D9192490);
      sub_1D8CF48EC(&qword_1ECAB0B98, &qword_1ECAB6238, &qword_1D91924A8);
      v115 = v126;
      sub_1D9177B6C();
      sub_1D8CF48EC(&qword_1ECAB07A8, &qword_1ECAB6208, &qword_1D9192478);
      v116 = v128;
      v117 = sub_1D9177B1C();
      (*(v127 + 8))(v115, v116);
      v118 = v140;
      sub_1D9177B9C();
      v119 = v167;
      sub_1D917758C();
      v176[0] = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
      sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990);
      sub_1D8CF48EC(&qword_1ECAB07C0, &qword_1ECAB6228, &qword_1D9192498);
      sub_1D8CF48EC(&qword_1ECAB0BA0, &qword_1ECAB6240, &qword_1D91924B0);
      v120 = v129;
      v121 = v118;
      v122 = v142;
      v123 = v151;
      sub_1D9177C0C();
      sub_1D8CF48EC(&qword_1ECAB06A0, &qword_1ECAB6200, &qword_1D9192470);
      v124 = v131;
      v86 = sub_1D9177B1C();

      (*(v130 + 8))(v120, v124);
      (*(v152 + 8))(v119, v123);
      (*(v141 + 8))(v121, v122);
      (*(v150 + 8))(v159, v160);
      (*(v139 + 8))(v149, v143);
      v164(v162, v169);
    }
  }

  return v86;
}

uint64_t sub_1D8EDA3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1D8D088B4(a1, &v14 - v10, &qword_1ECAB6258, &qword_1D91924C8);
  v12 = *(v5 + 56);
  sub_1D8D6734C(v11, v8, &qword_1ECAB6318, &qword_1D9192578);
  sub_1D8D6734C(&v11[v12], &v8[v12], &qword_1ECAB62B8, &qword_1D9192510);
  sub_1D8D088B4(&v8[v12], a2, &qword_1ECAB62B8, &qword_1D9192510);
  return sub_1D8D08A50(v8, &qword_1ECAB6258, &qword_1D91924C8);
}

uint64_t sub_1D8EDA4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6280, &qword_1D91924D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6288, &qword_1D91924E0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6290, &qword_1D91924E8);
  v14 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6298, &qword_1D91924F0);
  v20 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v22 = &v54 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A0, &qword_1D91924F8);
  v23 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v25 = &v54 - v24;
  v26 = *(v2 + 32);
  v27 = *(v2 + 33);
  sub_1D8EDCD8C(a1, v13, type metadata accessor for TTMLRequest);
  v28 = &v13[*(v10 + 60)];
  *v28 = v26;
  *(v28 + 1) = v27;
  v59 = v27;
  v61 = type metadata accessor for TTMLRequest();
  v29 = *(v61 + 32);
  v63 = a1;
  if (*(a1 + v29))
  {
    v30 = v2[3];
    v70 = v2[2];
    v71 = v30;
    v32 = *v2;
    v31 = v2[1];
  }

  else
  {
    v33 = v2[11];
    v70 = v2[10];
    v71 = v33;
    v32 = v2[8];
    v31 = v2[9];
  }

  v68 = v32;
  v69 = v31;
  v57 = v71;
  v56 = v70;
  v55 = v31;
  v54 = v32;
  sub_1D8D088B4(&v68, v67, &qword_1ECAB6190, &qword_1D91921D0);
  sub_1D8D088B4(v13, v19, &qword_1ECAB6288, &qword_1D91924E0);
  v34 = v58;
  sub_1D8EDCD8C(v13, &v19[*(v58 + 80)], type metadata accessor for TTMLRequest);

  sub_1D8D08A50(v13, &qword_1ECAB6288, &qword_1D91924E0);
  v35 = &v19[v34[19]];
  v36 = v55;
  *v35 = v54;
  *(v35 + 1) = v36;
  v37 = v57;
  *(v35 + 2) = v56;
  *(v35 + 3) = v37;
  v19[v34[21]] = 1;
  v38 = *(v2 + 42);
  sub_1D8D6734C(v19, v16, &qword_1ECAB6290, &qword_1D91924E8);
  v39 = v60;
  *&v22[*(v60 + 48)] = v38;
  sub_1D8D088B4(v16, &v22[*(v39 + 44)], &qword_1ECAB6290, &qword_1D91924E8);
  sub_1D8EDCD8C(&v16[v34[20]], v22, type metadata accessor for TTMLRequest);

  sub_1D8D08A50(v16, &qword_1ECAB6290, &qword_1D91924E8);
  v40 = v2[9];
  v68 = v2[8];
  v69 = v40;
  v41 = v2[11];
  v70 = v2[10];
  v71 = v41;
  sub_1D8D088B4(v22, v25, &qword_1ECAB6298, &qword_1D91924F0);
  v42 = v62;
  sub_1D8EDCD8C(v22, &v25[*(v62 + 80)], type metadata accessor for TTMLRequest);
  sub_1D8D08A50(v22, &qword_1ECAB6298, &qword_1D91924F0);
  v43 = &v25[*(v42 + 76)];
  v44 = v69;
  *v43 = v68;
  *(v43 + 1) = v44;
  v45 = v71;
  *(v43 + 2) = v70;
  *(v43 + 3) = v45;
  v25[*(v42 + 84)] = 1;
  sub_1D8D088B4(&v68, v67, &qword_1ECAB6190, &qword_1D91921D0);
  v46 = v64;
  sub_1D8ED1E24(v64);
  sub_1D8D08A50(v25, &qword_1ECAB62A0, &qword_1D91924F8);
  v47 = *(v61 + 36);
  v48 = v65;
  sub_1D8D088B4(v46, v65, &qword_1ECAB6280, &qword_1D91924D8);
  sub_1D8D088B4(v63 + v47, v67, &qword_1ECAB4928, &qword_1D918B380);
  v49 = v66;
  sub_1D8D088B4(v48, v66, &qword_1ECAB6280, &qword_1D91924D8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6260, &qword_1D91924D0);
  sub_1D8D088B4(v67, v49 + v50[9], &qword_1ECAB4928, &qword_1D918B380);
  v51 = v49 + v50[10];
  *v51 = "FetchTTMLFile";
  *(v51 + 8) = 13;
  *(v51 + 16) = 2;
  *(v49 + v50[12]) = 1;
  sub_1D8D08A50(v67, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v48, &qword_1ECAB6280, &qword_1D91924D8);
  result = sub_1D8D08A50(v46, &qword_1ECAB6280, &qword_1D91924D8);
  v53 = (v49 + v50[11]);
  *v53 = 0;
  v53[1] = 0xE000000000000000;
  *(v49 + v50[13]) = 0;
  return result;
}

uint64_t sub_1D8EDAB00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6320, &qword_1D9192580);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6328, &qword_1D9192588);
  v9 = *(v8 - 8);
  v22 = v8;
  v23 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6248, &qword_1D91924B8);
  type metadata accessor for ShazamSignatureRequest();
  sub_1D8CF48EC(&qword_1ECAB07D0, &qword_1ECAB6248, &qword_1D91924B8);
  sub_1D9177B2C();
  sub_1D8D6906C(a1, v25);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v25, 0x168uLL);
  sub_1D91777FC();
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6330, &unk_1D9192590);
  sub_1D8CF48EC(&qword_1ECAB0B78, &qword_1ECAB6320, &qword_1D9192580);
  sub_1D8CF48EC(&qword_1ECAB2768, &qword_1ECAB6330, &unk_1D9192590);
  v14 = v20;
  sub_1D9177CBC();

  (*(v21 + 8))(v7, v14);
  sub_1D8D6906C(v19, v25);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v25, 0x168uLL);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D8EDC758;
  *(v16 + 24) = v15;
  sub_1D8CF2154(0, &unk_1ECAAFBD0, 0x1E697B780);
  sub_1D8CF48EC(&qword_1ECAB0618, &qword_1ECAB6328, &qword_1D9192588);
  v17 = v22;
  sub_1D9177B2C();

  return (*(v23 + 8))(v12, v17);
}

uint64_t sub_1D8EDAF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1D8D088B4(a1, &v14 - v10, &qword_1ECAB6258, &qword_1D91924C8);
  v12 = *(v5 + 56);
  sub_1D8D6734C(v11, v8, &qword_1ECAB6318, &qword_1D9192578);
  sub_1D8D6734C(&v11[v12], &v8[v12], &qword_1ECAB62B8, &qword_1D9192510);
  sub_1D8D088B4(v8, a2, &qword_1ECAB6318, &qword_1D9192578);
  return sub_1D8D08A50(v8, &qword_1ECAB6258, &qword_1D91924C8);
}

uint64_t sub_1D8EDB044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6338, &qword_1D91925A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6340, &qword_1D91925A8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6348, &qword_1D91925B0);
  v14 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6350, &qword_1D91925B8);
  v20 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v22 = &v54 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6358, &qword_1D91925C0);
  v23 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v25 = &v54 - v24;
  v26 = *(v2 + 272);
  v27 = *(v2 + 280);
  sub_1D8EDCD8C(a1, v13, type metadata accessor for ShazamSignatureRequest);
  v28 = &v13[*(v10 + 60)];
  *v28 = v26;
  *(v28 + 1) = v27;
  v59 = v27;
  v61 = type metadata accessor for ShazamSignatureRequest();
  v29 = *(v61 + 32);
  v63 = a1;
  if (*(a1 + v29))
  {
    v30 = *(v2 + 112);
    v70 = *(v2 + 96);
    v71 = v30;
    v32 = *(v2 + 64);
    v31 = *(v2 + 80);
  }

  else
  {
    v33 = *(v2 + 240);
    v70 = *(v2 + 224);
    v71 = v33;
    v32 = *(v2 + 192);
    v31 = *(v2 + 208);
  }

  v68 = v32;
  v69 = v31;
  v57 = v71;
  v56 = v70;
  v55 = v31;
  v54 = v32;
  sub_1D8D088B4(&v68, v67, &qword_1ECAB6198, &qword_1D91921D8);
  sub_1D8D088B4(v13, v19, &qword_1ECAB6340, &qword_1D91925A8);
  v34 = v58;
  sub_1D8EDCD8C(v13, &v19[*(v58 + 80)], type metadata accessor for ShazamSignatureRequest);

  sub_1D8D08A50(v13, &qword_1ECAB6340, &qword_1D91925A8);
  v35 = &v19[v34[19]];
  v36 = v55;
  *v35 = v54;
  *(v35 + 1) = v36;
  v37 = v57;
  *(v35 + 2) = v56;
  *(v35 + 3) = v37;
  v19[v34[21]] = 1;
  v38 = *(v2 + 344);
  sub_1D8D6734C(v19, v16, &qword_1ECAB6348, &qword_1D91925B0);
  v39 = v60;
  *&v22[*(v60 + 48)] = v38;
  sub_1D8D088B4(v16, &v22[*(v39 + 44)], &qword_1ECAB6348, &qword_1D91925B0);
  sub_1D8EDCD8C(&v16[v34[20]], v22, type metadata accessor for ShazamSignatureRequest);

  sub_1D8D08A50(v16, &qword_1ECAB6348, &qword_1D91925B0);
  v40 = *(v2 + 208);
  v68 = *(v2 + 192);
  v69 = v40;
  v41 = *(v2 + 240);
  v70 = *(v2 + 224);
  v71 = v41;
  sub_1D8D088B4(v22, v25, &qword_1ECAB6350, &qword_1D91925B8);
  v42 = v62;
  sub_1D8EDCD8C(v22, &v25[*(v62 + 80)], type metadata accessor for ShazamSignatureRequest);
  sub_1D8D08A50(v22, &qword_1ECAB6350, &qword_1D91925B8);
  v43 = &v25[*(v42 + 76)];
  v44 = v69;
  *v43 = v68;
  *(v43 + 1) = v44;
  v45 = v71;
  *(v43 + 2) = v70;
  *(v43 + 3) = v45;
  v25[*(v42 + 84)] = 1;
  sub_1D8D088B4(&v68, v67, &qword_1ECAB6198, &qword_1D91921D8);
  v46 = v64;
  sub_1D8ED27D0(v64);
  sub_1D8D08A50(v25, &qword_1ECAB6358, &qword_1D91925C0);
  v47 = *(v61 + 36);
  v48 = v65;
  sub_1D8D088B4(v46, v65, &qword_1ECAB6338, &qword_1D91925A0);
  sub_1D8D088B4(v63 + v47, v67, &qword_1ECAB4928, &qword_1D918B380);
  v49 = v66;
  sub_1D8D088B4(v48, v66, &qword_1ECAB6338, &qword_1D91925A0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6330, &unk_1D9192590);
  sub_1D8D088B4(v67, v49 + v50[9], &qword_1ECAB4928, &qword_1D918B380);
  v51 = v49 + v50[10];
  *v51 = "FetchShazamSignature";
  *(v51 + 8) = 20;
  *(v51 + 16) = 2;
  *(v49 + v50[12]) = 1;
  sub_1D8D08A50(v67, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v48, &qword_1ECAB6338, &qword_1D91925A0);
  result = sub_1D8D08A50(v46, &qword_1ECAB6338, &qword_1D91925A0);
  v53 = (v49 + v50[11]);
  *v53 = 0;
  v53[1] = 0xE000000000000000;
  *(v49 + v50[13]) = 0;
  return result;
}

id sub_1D8EDB648(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189070;
  *(inited + 32) = a1;
  v3 = a1;
  v4 = sub_1D8ECF6A0(inited);
  swift_setDeallocating();
  v5 = *(inited + 16);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1D8EDB874@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v10 = *(a2 + 16) & 1;
  v5 = v10;
  *a3 = v4;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  v6 = *(a2 + 40);
  *(a3 + 32) = *(a2 + 24);
  *(a3 + 48) = v6;
  *(a3 + 64) = 2;
  v7 = v4;
  return sub_1D8E511D8(a2, &v9);
}

uint64_t sub_1D8EDB8E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a3 = a2;
  *(a3 + 8) = *a1;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = 2;
  v8 = a2;
  sub_1D8D752C4(v4, v5);
}

uint64_t sub_1D8EDB968@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v3 = *(a1 + 16);
  *a3 = *a2;
  *(a3 + 8) = *a1;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = 2;
  v9 = v8;
  sub_1D8D752C4(v4, v5);
}

id sub_1D8EDB9F4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 64) = 0;
  return v2;
}

uint64_t sub_1D8EDBA04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46[-v18];
  v51 = a1;
  sub_1D8D088B4(a1, &v46[-v18], &unk_1ECAB5910, &qword_1D9188C90);
  v20 = *(v7 + 48);
  v21 = v20(v19, 1, v6);
  v49 = v10;
  if (v21 == 1)
  {
    v22 = type metadata accessor for ShazamSignatureRequest();
    (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  else
  {
    (*(v7 + 32))(v10, v19, v6);
    (*(v7 + 16))(v16, v10, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
    sub_1D8D088B4(v16, a3, &unk_1ECAB5910, &qword_1D9188C90);
    v47 = *(a2 + 24);
    v23 = a2[2];
    v53 = a2[1];
    v54 = v23;

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);
    v52 = *a2;
    sub_1D8E40D20();
    v24 = sub_1D917927C();
    v48 = v20;
    MEMORY[0x1DA7298F0](v24);

    v25 = v53;
    v26 = v54;
    sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
    (*(v7 + 8))(v10, v6);
    v27 = *(a2 + 25);
    v28 = type metadata accessor for ShazamSignatureRequest();
    v29 = a3 + v28[9];
    *(v29 + 32) = 0;
    *v29 = 0u;
    *(v29 + 16) = 0u;
    *(a3 + v28[5]) = v47;
    v30 = (a3 + v28[6]);
    *v30 = v25;
    v30[1] = v26;
    v20 = v48;
    *(a3 + v28[8]) = v27;
    *(a3 + v28[7]) = 6;
    sub_1D8EDC2A8((a2 + 4), v29);
    (*(*(v28 - 1) + 56))(a3, 0, 1, v28);
  }

  v31 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8) + 48);
  v32 = type metadata accessor for TranscriptData.TimeBombedURLs();
  v33 = v50;
  sub_1D8D088B4(v51 + *(v32 + 20), v50, &unk_1ECAB5910, &qword_1D9188C90);
  if (v20(v33, 1, v6) == 1)
  {
    v34 = type metadata accessor for TTMLRequest();
    return (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  }

  else
  {
    v36 = v49;
    (*(v7 + 32))(v49, v33, v6);
    (*(v7 + 16))(v16, v36, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
    sub_1D8D088B4(v16, v31, &unk_1ECAB5910, &qword_1D9188C90);
    v37 = *(a2 + 24);
    v38 = a2[2];
    v53 = a2[1];
    v54 = v38;

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);
    v52 = *a2;
    sub_1D8E40D20();
    v39 = sub_1D917927C();
    MEMORY[0x1DA7298F0](v39);

    v40 = v53;
    v41 = v54;
    sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
    (*(v7 + 8))(v36, v6);
    v42 = *(a2 + 25);
    v43 = type metadata accessor for TTMLRequest();
    v44 = v31 + v43[9];
    *(v44 + 32) = 0;
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v31 + v43[5]) = v37;
    v45 = (v31 + v43[6]);
    *v45 = v40;
    v45[1] = v41;
    *(v31 + v43[8]) = v42;
    *(v31 + v43[7]) = 7;
    sub_1D8EDC2A8((a2 + 4), v44);
    return (*(*(v43 - 1) + 56))(v31, 0, 1, v43);
  }
}

uint64_t sub_1D8EDBFC4()
{
  v1 = *(v0 + 352);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EDCFE4((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t TranscriptProviderError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EDC10C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_1D8EDCD8C(a1, a4, a2);
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, 0, 1, v6);
}

uint64_t sub_1D8EDC1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  sub_1D8D752C4(v4, v3);
}

uint64_t sub_1D8EDC244@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  return sub_1D8EDC4C0(v3, v2, v4, v5, v6, v7);
}

id sub_1D8EDC26C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1D8EDC2A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8EDC31C()
{
  result = qword_1ECAB61D0;
  if (!qword_1ECAB61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB61D0);
  }

  return result;
}

uint64_t sub_1D8EDC378(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8EDC3C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8EDC46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D8D7567C(a4, a5);
  }

  return result;
}

uint64_t sub_1D8EDC4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D8D752C4(a4, a5);
  }

  return result;
}

uint64_t objectdestroy_13Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 168);

  v11 = *(v0 + 184);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  v14 = *(v0 + 232);

  v15 = *(v0 + 248);

  v16 = *(v0 + 264);

  v17 = *(v0 + 280);

  v18 = *(v0 + 296);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

  v19 = *(v0 + 352);

  v20 = *(v0 + 360);

  v21 = *(v0 + 368);

  return swift_deallocObject();
}

uint64_t sub_1D8EDC77C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8EDC7DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t objectdestroy_26Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(v1 + 16);

  v6 = v1 + v3;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v1 + v3, 1, v7))
  {
    (*(v8 + 8))(v1 + v3, v7);
  }

  v9 = *(v6 + *(v2 + 24) + 8);

  v10 = (v6 + *(v2 + 36));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EDC968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8EDC9FC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_35Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = v3 + v6;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v6, 1, v9))
  {
    (*(v10 + 8))(v3 + v6, v9);
  }

  v11 = a3(0);
  v12 = *(v8 + *(v11 + 24) + 8);

  v13 = (v8 + *(v11 + 36));
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = *(v8 + *(v5 + 52) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8EDCC5C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

void sub_1D8EDCCDC(uint64_t a1)
{
  v3 = *(*(sub_1D9176EAC() - 8) + 80);

  sub_1D8ED7C98(a1, v1 + 16);
}

uint64_t sub_1D8EDCD8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8EDCE58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8ED3A74(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);
  if (v3 != 255)
  {
    sub_1D8DADC60(*(v0 + 40), *(v0 + 48), v3);
  }

  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 80), v4);
  }

  v5 = *(v0 + 104);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 96), v5);
  }

  v6 = *(v0 + 120);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 112), v6);
  }

  v7 = *(v0 + 136);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v0 + 128), v7);
  }

  v8 = *(v0 + 152);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v0 + 144), v8);
  }

  v9 = *(v0 + 168);

  v10 = *(v0 + 192);

  v11 = *(v0 + 232);

  if (*(v0 + 272))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  }

  return swift_deallocObject();
}

void sub_1D8EDD000(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9178FBC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 * 0.1;
  if (v17 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v17 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = a2 - v17;
  if (a2 >= v17)
  {
    sub_1D9178FCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65B0, &qword_1D9192878);
    swift_allocObject();
    *a4 = sub_1D8D618BC(v19, v16);
    (*(v9 + 16))(v12, a1, v8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
    sub_1D8D61D00(v12, v18, a4 + *(v20 + 60));

    (*(v9 + 8))(a1, v8);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1D8EDD21C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9178FBC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 * 0.1;
  if (v17 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v17 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = a2 - v17;
  if (a2 >= v17)
  {
    sub_1D9178FCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6598, &qword_1D9192860);
    swift_allocObject();
    *a4 = sub_1D8D62DC8(v19, v16);
    (*(v9 + 16))(v12, a1, v8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
    sub_1D8D62FB4(v12, v18, a4 + *(v20 + 60));

    (*(v9 + 8))(a1, v8);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D8EDD438()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    os_unfair_lock_lock(v1 + 10);
    sub_1D8EEFD98(&v1[4]);
    os_unfair_lock_unlock(v1 + 10);
  }

  return result;
}

id sub_1D8EDD4B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShazamSignatureRequest();
  v10 = *(a1 + 16);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_1D8D33C70(*(a2 + *(v9 + 24)), *(a2 + *(v9 + 24) + 8));
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  sub_1D9176E0C();
  v14 = *(*v13 + 17);
  swift_beginAccess();
  (*(v5 + 40))(v13 + v14, v8, v4);
  swift_endAccess();
  v15 = v13[2];

  return v15;
}

double sub_1D8EDD61C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTMLRequest();
  v12 = *(a1 + 16);
  if (*(v12 + 16) && (v13 = sub_1D8D33C70(*(a2 + *(v11 + 24)), *(a2 + *(v11 + 24) + 8)), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    sub_1D9176E0C();
    v16 = *(*v15 + 136);
    swift_beginAccess();
    (*(v7 + 40))(v15 + v16, v10, v6);
    swift_endAccess();
    v17 = *(v15 + 32);
    v18 = *(v15 + 40);
    v19 = *(v15 + 48);
    v20 = *(v15 + 56);
    v21 = *(v15 + 64);
    *a3 = *(v15 + 16);
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
    *(a3 + 40) = v20;
    *(a3 + 48) = v21;
    sub_1D8D752C4(v18, v19);
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_1D8EDD7C0(uint64_t a1)
{
  v2 = ArtworkRequest.key.getter();
  v3 = sub_1D8F7E958(v2);

  if (v3)
  {
    v4 = *(v3 + *(*v3 + 128));

    v5 = *(a1 + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *(a1 + 8) = v7;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D8EDD844(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for TTMLRequest() + 24));
  v4 = *(a1 + 16);
  result = sub_1D8D33C70(*v3, v3[1]);
  if (v6)
  {
    v7 = result;
    v8 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F826FC();
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(*(v10 + 56) + 8 * v7);
    sub_1D8DA2AF4(v7, v10);
    *(a1 + 16) = v10;
    v13 = *(v12 + 72);

    v14 = *(a1 + 8);
    v15 = v14 >= v13;
    v16 = v14 - v13;
    if (v15)
    {
      *(a1 + 8) = v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D8EDD910(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for ShazamSignatureRequest() + 24));
  v4 = *(a1 + 16);
  result = sub_1D8D33C70(*v3, v3[1]);
  if (v6)
  {
    v7 = result;
    v8 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82710();
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(*(v10 + 56) + 8 * v7);
    sub_1D8DA2AF4(v7, v10);
    *(a1 + 16) = v10;
    v13 = *(v12 + 24);

    v14 = *(a1 + 8);
    v15 = v14 >= v13;
    v16 = v14 - v13;
    if (v15)
    {
      *(a1 + 8) = v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1D8EDD9DC(uint64_t a1)
{
  v2 = v1;
  v53 = type metadata accessor for ShazamSignatureRequest();
  v4 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = sub_1D9176C2C();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  sub_1D8E459BC(&v51 - v14);
  v16 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v18 = [v16 contentsAtPath_];

  if (!v18)
  {
    v23 = *(*(v2 + qword_1EDCD6AC8) + 16);
    MEMORY[0x1EEE9AC00](v19);
    *(&v51 - 2) = a1;
    os_unfair_lock_lock(v23 + 10);
    sub_1D8EEFD2C(&v23[4], &v56);
    os_unfair_lock_unlock(v23 + 10);
    v24 = v56;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD5E70);
    sub_1D8D65C38(a1, v6, type metadata accessor for ShazamSignatureRequest);
    v26 = v24;
    v27 = sub_1D917741C();
    v28 = sub_1D9178CEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56 = v30;
      *v29 = 136315394;
      if (v24)
      {

        v31 = 0xE300000000000000;
        v32 = 7629160;
      }

      else
      {
        v31 = 0xE400000000000000;
        v32 = 1936943469;
      }

      v45 = sub_1D8CFA924(v32, v31, &v56);

      *(v29 + 4) = v45;
      *(v29 + 12) = 2080;
      v46 = &v6[*(v53 + 24)];
      v47 = *v46;
      v48 = v46[1];

      sub_1D8D67208(v6, type metadata accessor for ShazamSignatureRequest);
      v49 = sub_1D8CFA924(v47, v48, &v56);

      *(v29 + 14) = v49;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Cache %s for asset at %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);

      goto LABEL_17;
    }

    v44 = v6;
LABEL_14:
    sub_1D8D67208(v44, type metadata accessor for ShazamSignatureRequest);
LABEL_17:
    (*(v54 + 8))(v15, v55);
    return v24;
  }

  v20 = sub_1D9176C8C();
  v22 = v21;

  v52 = v20;
  v24 = ShazamSignatureRequest.decode(_:)(v20, v22);
  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  v33 = sub_1D917744C();
  __swift_project_value_buffer(v33, qword_1EDCD5E70);
  sub_1D8D65C38(a1, v10, type metadata accessor for ShazamSignatureRequest);
  v34 = sub_1D917741C();
  v35 = sub_1D9178CEC();
  if (!os_log_type_enabled(v34, v35))
  {
    sub_1D8D7567C(v52, v22);

    v44 = v10;
    goto LABEL_14;
  }

  v36 = swift_slowAlloc();
  v37 = v15;
  v38 = v22;
  v39 = swift_slowAlloc();
  v56 = v39;
  *v36 = 136315138;
  v40 = &v10[*(v53 + 24)];
  v41 = *v40;
  v42 = v40[1];

  sub_1D8D67208(v10, type metadata accessor for ShazamSignatureRequest);
  v43 = sub_1D8CFA924(v41, v42, &v56);

  *(v36 + 4) = v43;
  _os_log_impl(&dword_1D8CEC000, v34, v35, "Cache hit for asset at %s", v36, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  MEMORY[0x1DA72CB90](v39, -1, -1);
  MEMORY[0x1DA72CB90](v36, -1, -1);
  sub_1D8D7567C(v52, v38);

  (*(v54 + 8))(v37, v55);
  return v24;
}

double sub_1D8EDE34C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = type metadata accessor for TTMLRequest();
  v6 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  v13 = sub_1D9176C2C();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  sub_1D8E459A4(&v62 - v17);
  v19 = [objc_opt_self() defaultManager];
  v68 = v18;
  sub_1D9176BCC();
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v21 = [v19 contentsAtPath_];

  if (v21)
  {
    v23 = sub_1D9176C8C();
    v25 = v24;

    v65 = v23;
    TranscriptParser.parse(ttmlData:)(v23, v25, &v71);
    v38 = a2;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v39 = sub_1D917744C();
    __swift_project_value_buffer(v39, qword_1EDCD5E70);
    sub_1D8D65C38(a1, v12, type metadata accessor for TTMLRequest);
    v40 = sub_1D917741C();
    v41 = sub_1D9178CEC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v25;
      v44 = swift_slowAlloc();
      v70[0] = v44;
      *v42 = 136315138;
      v45 = &v12[*(v67 + 24)];
      v46 = v13;
      v47 = *v45;
      v48 = v45[1];

      sub_1D8D67208(v12, type metadata accessor for TTMLRequest);
      v49 = sub_1D8CFA924(v47, v48, v70);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_1D8CEC000, v40, v41, "Cache hit for asset at %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1DA72CB90](v44, -1, -1);
      MEMORY[0x1DA72CB90](v42, -1, -1);
      sub_1D8D7567C(v65, v43);

      (*(v69 + 8))(v68, v46);
    }

    else
    {
      sub_1D8D7567C(v65, v25);

      sub_1D8D67208(v12, type metadata accessor for TTMLRequest);
      (*(v69 + 8))(v68, v13);
    }

    v51 = v72[0];
    *v38 = v71;
    *(v38 + 16) = v51;
    *(v38 + 24) = *&v72[8];
    result = *&v72[24];
    *(v38 + 40) = *&v72[24];
  }

  else
  {
    v65 = v13;
    v66 = v8;
    v64 = a2;
    v26 = *(*(v3 + qword_1EDCD6AC8) + 16);
    MEMORY[0x1EEE9AC00](v22);
    *(&v62 - 2) = a1;
    os_unfair_lock_lock(v26 + 10);
    sub_1D8EEFD80(&v26[4], &v71);
    os_unfair_lock_unlock(v26 + 10);
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD5E70);
    v28 = v71;
    v29 = *v72;
    v30 = *&v72[16];
    v31 = *&v72[24];
    v32 = v66;
    sub_1D8D65C38(a1, v66, type metadata accessor for TTMLRequest);
    sub_1D8EDC4C0(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
    v33 = sub_1D917741C();
    v34 = sub_1D9178CEC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v70[0] = v63;
      *v35 = 136315394;
      if (v31)
      {
        sub_1D8EDC46C(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
        v36 = 0xE300000000000000;
        v37 = 7629160;
      }

      else
      {
        v36 = 0xE400000000000000;
        v37 = 1936943469;
      }

      v50 = v64;
      v53 = sub_1D8CFA924(v37, v36, v70);

      *(v35 + 4) = v53;
      *(v35 + 12) = 2080;
      v54 = v66;
      v55 = &v66[*(v67 + 24)];
      v56 = *v55;
      v57 = v55[1];

      sub_1D8D67208(v54, type metadata accessor for TTMLRequest);
      v58 = sub_1D8CFA924(v56, v57, v70);

      *(v35 + 14) = v58;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Cache %s for asset at %s", v35, 0x16u);
      v59 = v63;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v59, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);

      (*(v69 + 8))(v68, v65);
    }

    else
    {
      sub_1D8EDC46C(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);

      sub_1D8D67208(v32, type metadata accessor for TTMLRequest);
      (*(v69 + 8))(v68, v65);
      v50 = v64;
    }

    v60 = *&v72[32];
    v61 = *v72;
    *v50 = v71;
    *(v50 + 16) = v61;
    result = *&v72[16];
    *(v50 + 32) = *&v72[16];
    *(v50 + 48) = v60;
  }

  return result;
}

uint64_t sub_1D8EDEDC0(void *a1, uint64_t (*a2)(void), void (*a3)(uint64_t, double), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v59 = a5;
  v56 = a4;
  v60[1] = *MEMORY[0x1E69E9840];
  v54 = a2(0);
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v52 - v9;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - v16;
  v55 = a1;
  a3(v5 + qword_1EDCDE890, v15);
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  sub_1D9176BCC();
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    v22 = [v18 defaultManager];
    v23 = sub_1D9176B1C();
    v60[0] = 0;
    v24 = [v22 removeItemAtURL:v23 error:v60];

    if (v24)
    {
      v25 = *(v11 + 8);
      v26 = v60[0];
      result = v25(v17, v10);
    }

    else
    {
      v28 = v60[0];
      v29 = sub_1D9176A6C();

      v53 = v29;
      swift_willThrow();
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v30 = sub_1D917744C();
      __swift_project_value_buffer(v30, qword_1EDCD5E70);
      v31 = v57;
      sub_1D8D65C38(v55, v57, v56);
      v32 = v58;
      (*(v11 + 16))(v58, v17, v10);
      v33 = sub_1D917741C();
      v34 = sub_1D9178CFC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v56 = v10;
        v36 = v35;
        v55 = swift_slowAlloc();
        v60[0] = v55;
        *v36 = 136315394;
        v37 = (v31 + *(v54 + 24));
        v38 = v31;
        v39 = v32;
        LODWORD(v54) = v34;
        v40 = *v37;
        v41 = v37[1];

        sub_1D8D67208(v38, v59);
        v42 = sub_1D8CFA924(v40, v41, v60);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        sub_1D8CFBCD0(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
        v43 = sub_1D9179A4C();
        v45 = v44;
        v46 = *(v11 + 8);
        v46(v39, v56);
        v47 = sub_1D8CFA924(v43, v45, v60);

        *(v36 + 14) = v47;
        _os_log_impl(&dword_1D8CEC000, v33, v54, "Error deleting file for key %s, url: %s", v36, 0x16u);
        v48 = v55;
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v48, -1, -1);
        v49 = v36;
        v10 = v56;
        MEMORY[0x1DA72CB90](v49, -1, -1);
      }

      else
      {

        v46 = *(v11 + 8);
        v46(v32, v10);
        sub_1D8D67208(v31, v59);
      }

      sub_1D8E66024();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();

      result = (v46)(v17, v10);
    }
  }

  else
  {
    result = (*(v11 + 8))(v17, v10);
  }

  v51 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8EDF30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v57 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v41 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D18, &qword_1D918D4C8);
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v41 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D20, &qword_1D918D4D0);
  v52 = *(v50 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D28, &qword_1D918D4D8);
  v17 = *(v16 - 8);
  v53 = v16;
  v54 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v41 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  v21 = *(v20 - 8);
  v55 = v20;
  v56 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v41 - v23;
  v24 = type metadata accessor for ShazamSignatureRequest();
  v25 = v24 - 8;
  v42 = *(v24 - 8);
  v26 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v43 = v26;
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ShazamSignatureRequest;
  sub_1D8D65C38(a1, v27, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v27[*(v25 + 44)], v60, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D67208(v27, type metadata accessor for ShazamSignatureRequest);
  v45 = a1;
  sub_1D8D088B4(a1, v8, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D9177A0C();
  sub_1D917653C();
  v28 = v46;
  sub_1D91779CC();
  (*(v9 + 8))(v12, v28);
  sub_1D8D65C38(a1, v27, type metadata accessor for ShazamSignatureRequest);
  v29 = *(v42 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v51;
  *(v30 + 24) = a3;
  sub_1D8D66338(v27, v30 + ((v29 + 32) & ~v29), type metadata accessor for ShazamSignatureRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAAFBC8, &qword_1ECAB4D20, &qword_1D918D4D0);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v31 = v48;
  v32 = v50;
  sub_1D9177DCC();

  (*(v52 + 8))(v15, v32);
  sub_1D8D088B4(v60, v58, &qword_1ECAB4928, &qword_1D918B380);
  v33 = swift_allocObject();
  v34 = v58[1];
  *(v33 + 16) = v58[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v59;
  sub_1D8CF48EC(&qword_1ECAB05F8, &qword_1ECAB4D28, &qword_1D918D4D8);
  v35 = v49;
  v36 = v53;
  sub_1D9177B7C();

  (*(v54 + 8))(v31, v36);
  sub_1D8D65C38(v45, v27, v44);
  v37 = swift_allocObject();
  sub_1D8D66338(v27, v37 + ((v29 + 16) & ~v29), type metadata accessor for ShazamSignatureRequest);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D8EEF5CC;
  *(v38 + 24) = v37;
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0);
  v39 = v55;
  sub_1D9177C6C();

  (*(v56 + 8))(v35, v39);
  return sub_1D8D08A50(v60, &qword_1ECAB4928, &qword_1D918B380);
}

uint64_t sub_1D8EDFA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v57 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v41 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D18, &qword_1D918D4C8);
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v41 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D20, &qword_1D918D4D0);
  v52 = *(v50 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D28, &qword_1D918D4D8);
  v17 = *(v16 - 8);
  v53 = v16;
  v54 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v41 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  v21 = *(v20 - 8);
  v55 = v20;
  v56 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v41 - v23;
  v24 = type metadata accessor for TTMLRequest();
  v25 = v24 - 8;
  v42 = *(v24 - 8);
  v26 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v43 = v26;
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TTMLRequest;
  sub_1D8D65C38(a1, v27, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v27[*(v25 + 44)], v60, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D67208(v27, type metadata accessor for TTMLRequest);
  v45 = a1;
  sub_1D8D088B4(a1, v8, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D9177A0C();
  sub_1D917653C();
  v28 = v46;
  sub_1D91779CC();
  (*(v9 + 8))(v12, v28);
  sub_1D8D65C38(a1, v27, type metadata accessor for TTMLRequest);
  v29 = *(v42 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v51;
  *(v30 + 24) = a3;
  sub_1D8D66338(v27, v30 + ((v29 + 32) & ~v29), type metadata accessor for TTMLRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAAFBC8, &qword_1ECAB4D20, &qword_1D918D4D0);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v31 = v48;
  v32 = v50;
  sub_1D9177DCC();

  (*(v52 + 8))(v15, v32);
  sub_1D8D088B4(v60, v58, &qword_1ECAB4928, &qword_1D918B380);
  v33 = swift_allocObject();
  v34 = v58[1];
  *(v33 + 16) = v58[0];
  *(v33 + 32) = v34;
  *(v33 + 48) = v59;
  sub_1D8CF48EC(&qword_1ECAB05F8, &qword_1ECAB4D28, &qword_1D918D4D8);
  v35 = v49;
  v36 = v53;
  sub_1D9177B7C();

  (*(v54 + 8))(v31, v36);
  sub_1D8D65C38(v45, v27, v44);
  v37 = swift_allocObject();
  sub_1D8D66338(v27, v37 + ((v29 + 16) & ~v29), type metadata accessor for TTMLRequest);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D8EEFA24;
  *(v38 + 24) = v37;
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0);
  v39 = v55;
  sub_1D9177C6C();

  (*(v56 + 8))(v35, v39);
  return sub_1D8D08A50(v60, &qword_1ECAB4928, &qword_1D918B380);
}

uint64_t sub_1D8EE01DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v83 = a2;
  v91 = sub_1D9176C2C();
  v89 = *(v91 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v85 = v5;
  v86 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShazamSignatureRequest();
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = v8;
  v84 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor();
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = v11;
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64F8, &qword_1D91927C0);
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v68 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6500, &qword_1D91927C8);
  v93 = *(v95 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v68 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6508, &qword_1D91927D0);
  v94 = *(v96 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v68 - v18;
  v19 = sub_1D917734C();
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D917739C();
  __swift_project_value_buffer(v26, qword_1ECAB0FE8);
  sub_1D917737C();
  sub_1D917731C();
  v27 = sub_1D917737C();
  v28 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v29 = v22;
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v27, v28, v31, "backgroundStash", "Start background stash", v30, 2u);
    v32 = v30;
    v22 = v29;
    MEMORY[0x1DA72CB90](v32, -1, -1);
  }

  v33 = v101 + 16;
  v34 = *(v101 + 16);
  v34(v22, v25, v19);
  v35 = sub_1D91773FC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v76 = sub_1D91773EC();
  v38 = sub_1D917737C();
  v39 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v38, v39, v41, "Start loading from source", "", v40, 2u);
    MEMORY[0x1DA72CB90](v40, -1, -1);
  }

  v72 = a1;
  v42 = a1;
  v43 = v82;
  v102 = ShazamSignatureBackgroundSessionDescriptor.load(data:)(v42);
  v71 = v34;
  v34(v22, v25, v19);
  v44 = v101;
  v97 = v19;
  v98 = v25;
  v45 = *(v101 + 80);
  v46 = swift_allocObject();
  v47 = *(v44 + 32);
  v73 = v44 + 32;
  v74 = v47;
  v70 = v33;
  v47(v46 + ((v45 + 16) & ~v45), v22, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6510, &qword_1D91927D8);
  v48 = v22;
  v69 = v22;
  v75 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&unk_1ECAB0338, &qword_1ECAB6510, &qword_1D91927D8);
  sub_1D9177B3C();

  v49 = v79;
  sub_1D8D65C38(v43, v79, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v50 = v84;
  sub_1D8D65C38(v83, v84, type metadata accessor for ShazamSignatureRequest);
  v51 = v89;
  v52 = v86;
  v53 = v91;
  (*(v89 + 16))(v86, v72, v91);
  v71(v48, v98, v97);
  v54 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v55 = (v78 + *(v80 + 80) + v54) & ~*(v80 + 80);
  v56 = (v81 + *(v51 + 80) + v55) & ~*(v51 + 80);
  v57 = (v85 + v45 + v56) & ~v45;
  v58 = swift_allocObject();
  sub_1D8D66338(v49, v58 + v54, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  sub_1D8D66338(v50, v58 + v55, type metadata accessor for ShazamSignatureRequest);
  (*(v51 + 32))(v58 + v56, v52, v53);
  v59 = v97;
  v74(v58 + v57, v69, v97);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A20, &qword_1D9190B78);
  sub_1D8CF48EC(&qword_1ECAB0950, &qword_1ECAB64F8, &qword_1D91927C0);
  sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78);
  v60 = v90;
  v61 = v88;
  v62 = v100;
  sub_1D9177DDC();

  (*(v87 + 8))(v62, v61);
  sub_1D8CF48EC(&qword_1ECAB05B8, &qword_1ECAB6500, &qword_1D91927C8);

  v63 = v95;
  v64 = v92;
  sub_1D9177B3C();

  (*(v93 + 8))(v60, v63);
  sub_1D8CF48EC(&qword_1ECAB0920, &qword_1ECAB6508, &qword_1D91927D0);
  v65 = v96;
  v66 = sub_1D9177B1C();

  (*(v94 + 8))(v64, v65);
  (*(v101 + 8))(v98, v59);
  return v66;
}

uint64_t sub_1D8EE0C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v83 = a2;
  v91 = sub_1D9176C2C();
  v89 = *(v91 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v85 = v5;
  v86 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTMLRequest();
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = v8;
  v84 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptsBackgroundSessionDescriptor();
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = v11;
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6558, &qword_1D9192820);
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v68 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6560, &qword_1D9192828);
  v93 = *(v95 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v68 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6568, &qword_1D9192830);
  v94 = *(v96 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v68 - v18;
  v19 = sub_1D917734C();
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D917739C();
  __swift_project_value_buffer(v26, qword_1ECAB0FE8);
  sub_1D917737C();
  sub_1D917731C();
  v27 = sub_1D917737C();
  v28 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v29 = v22;
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v27, v28, v31, "backgroundStash", "Start background stash", v30, 2u);
    v32 = v30;
    v22 = v29;
    MEMORY[0x1DA72CB90](v32, -1, -1);
  }

  v33 = v101 + 16;
  v34 = *(v101 + 16);
  v34(v22, v25, v19);
  v35 = sub_1D91773FC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v76 = sub_1D91773EC();
  v38 = sub_1D917737C();
  v39 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v38, v39, v41, "Start loading from source", "", v40, 2u);
    MEMORY[0x1DA72CB90](v40, -1, -1);
  }

  v72 = a1;
  v42 = a1;
  v43 = v82;
  v102 = TranscriptsBackgroundSessionDescriptor.load(data:)(v42);
  v71 = v34;
  v34(v22, v25, v19);
  v44 = v101;
  v97 = v19;
  v98 = v25;
  v45 = *(v101 + 80);
  v46 = swift_allocObject();
  v47 = *(v44 + 32);
  v73 = v44 + 32;
  v74 = v47;
  v70 = v33;
  v47(v46 + ((v45 + 16) & ~v45), v22, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6570, &qword_1D9192838);
  v48 = v22;
  v69 = v22;
  v75 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECAB0378, &qword_1ECAB6570, &qword_1D9192838);
  sub_1D9177B3C();

  v49 = v79;
  sub_1D8D65C38(v43, v79, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v50 = v84;
  sub_1D8D65C38(v83, v84, type metadata accessor for TTMLRequest);
  v51 = v89;
  v52 = v86;
  v53 = v91;
  (*(v89 + 16))(v86, v72, v91);
  v71(v48, v98, v97);
  v54 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v55 = (v78 + *(v80 + 80) + v54) & ~*(v80 + 80);
  v56 = (v81 + *(v51 + 80) + v55) & ~*(v51 + 80);
  v57 = (v85 + v45 + v56) & ~v45;
  v58 = swift_allocObject();
  sub_1D8D66338(v49, v58 + v54, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  sub_1D8D66338(v50, v58 + v55, type metadata accessor for TTMLRequest);
  (*(v51 + 32))(v58 + v56, v52, v53);
  v59 = v97;
  v74(v58 + v57, v69, v97);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A20, &qword_1D9190B78);
  sub_1D8CF48EC(&qword_1ECAB0960, &qword_1ECAB6558, &qword_1D9192820);
  sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78);
  v60 = v90;
  v61 = v88;
  v62 = v100;
  sub_1D9177DDC();

  (*(v87 + 8))(v62, v61);
  sub_1D8CF48EC(&qword_1ECAB05C0, &qword_1ECAB6560, &qword_1D9192828);

  v63 = v95;
  v64 = v92;
  sub_1D9177B3C();

  (*(v93 + 8))(v60, v63);
  sub_1D8CF48EC(&qword_1ECAB0928, &qword_1ECAB6568, &qword_1D9192830);
  v65 = v96;
  v66 = sub_1D9177B1C();

  (*(v94 + 8))(v64, v65);
  (*(v101 + 8))(v98, v59);
  return v66;
}

uint64_t sub_1D8EE175C(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v65 = sub_1D917653C();
  v64 = *(v65 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = v5;
  v63 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  v7 = v6 - 8;
  v53 = *(v6 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v46 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5840, &unk_1D9190AB8);
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v46 - v15;
  v17 = type metadata accessor for ShazamSignatureRequest();
  v18 = v17 - 8;
  v48 = *(v17 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v49 = v20;
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5848, &qword_1D9190AC8);
  v56 = *(v58 - 8);
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v66 = &v46 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5850, &unk_1D9190AD0);
  v55 = *(v57 - 8);
  v24 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v46 - v25;
  v26 = *(v7 + 56);
  v59 = v2;
  v27 = *(v2 + v26);
  v62 = a2;
  sub_1D8D65C38(a2, v21, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v21[*(v18 + 44)], v68, &qword_1ECAB4928, &qword_1D918B380);
  v50 = v21;
  sub_1D8D67208(v21, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(v68, v67, &qword_1ECAB4928, &qword_1D918B380);
  v69 = v27;
  sub_1D8D088B4(v67, v70, &qword_1ECAB4928, &qword_1D918B380);
  v70[5] = "AWAIT-SESSION";
  v70[6] = 13;
  v71 = 2;
  v74 = 0;

  sub_1D8D08A50(v67, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v68, &qword_1ECAB4928, &qword_1D918B380);
  v72 = 0;
  v73 = 0xE000000000000000;
  v75 = 0;
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDCD5B58;
  v29 = sub_1D9178DBC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v68[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB2780, &qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A90, &qword_1ECAB5840, &unk_1D9190AB8);
  v30 = v47;
  sub_1D9177CEC();
  (*(v9 + 8))(v12, v30);
  sub_1D8D08A50(v16, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(&v69, &qword_1ECAB5858, &qword_1D9190AE0);
  v31 = v52;
  sub_1D8D088B4(v59, v52, &qword_1ECAB64B8, &qword_1D9192760);
  v32 = v64;
  v33 = v63;
  v34 = v65;
  (*(v64 + 16))(v63, v60, v65);
  v35 = v50;
  sub_1D8D65C38(v62, v50, type metadata accessor for ShazamSignatureRequest);
  v36 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v37 = (v54 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v61 + *(v48 + 80) + v37) & ~*(v48 + 80);
  v39 = swift_allocObject();
  sub_1D8D6734C(v31, v39 + v36, &qword_1ECAB64B8, &qword_1D9192760);
  (*(v32 + 32))(v39 + v37, v33, v34);
  sub_1D8D66338(v35, v39 + v38, type metadata accessor for ShazamSignatureRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5860, &qword_1D9190AE8);
  sub_1D8CF48EC(&qword_1ECAB04B0, &qword_1ECAB5848, &qword_1D9190AC8);
  sub_1D8CF48EC(&qword_1ECAB0600, &qword_1ECAB5860, &qword_1D9190AE8);
  v40 = v51;
  v41 = v58;
  v42 = v66;
  sub_1D9177DCC();

  (*(v56 + 8))(v42, v41);
  sub_1D8CF48EC(&qword_1ECAB0540, &qword_1ECAB5850, &unk_1D9190AD0);
  v43 = v57;
  v44 = sub_1D9177B1C();
  (*(v55 + 8))(v40, v43);
  return v44;
}

uint64_t sub_1D8EE20A8(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v65 = sub_1D917653C();
  v64 = *(v65 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = v5;
  v63 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  v7 = v6 - 8;
  v53 = *(v6 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v46 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5840, &unk_1D9190AB8);
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v46 - v15;
  v17 = type metadata accessor for TTMLRequest();
  v18 = v17 - 8;
  v48 = *(v17 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v49 = v20;
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5848, &qword_1D9190AC8);
  v56 = *(v58 - 8);
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v66 = &v46 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5850, &unk_1D9190AD0);
  v55 = *(v57 - 8);
  v24 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v46 - v25;
  v26 = *(v7 + 56);
  v59 = v2;
  v27 = *(v2 + v26);
  v62 = a2;
  sub_1D8D65C38(a2, v21, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v21[*(v18 + 44)], v68, &qword_1ECAB4928, &qword_1D918B380);
  v50 = v21;
  sub_1D8D67208(v21, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(v68, v67, &qword_1ECAB4928, &qword_1D918B380);
  v69 = v27;
  sub_1D8D088B4(v67, v70, &qword_1ECAB4928, &qword_1D918B380);
  v70[5] = "AWAIT-SESSION";
  v70[6] = 13;
  v71 = 2;
  v74 = 0;

  sub_1D8D08A50(v67, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v68, &qword_1ECAB4928, &qword_1D918B380);
  v72 = 0;
  v73 = 0xE000000000000000;
  v75 = 0;
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDCD5B58;
  v29 = sub_1D9178DBC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v68[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB2780, &qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A90, &qword_1ECAB5840, &unk_1D9190AB8);
  v30 = v47;
  sub_1D9177CEC();
  (*(v9 + 8))(v12, v30);
  sub_1D8D08A50(v16, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(&v69, &qword_1ECAB5858, &qword_1D9190AE0);
  v31 = v52;
  sub_1D8D088B4(v59, v52, &qword_1ECAB64C0, &qword_1D9192768);
  v32 = v64;
  v33 = v63;
  v34 = v65;
  (*(v64 + 16))(v63, v60, v65);
  v35 = v50;
  sub_1D8D65C38(v62, v50, type metadata accessor for TTMLRequest);
  v36 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v37 = (v54 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v61 + *(v48 + 80) + v37) & ~*(v48 + 80);
  v39 = swift_allocObject();
  sub_1D8D6734C(v31, v39 + v36, &qword_1ECAB64C0, &qword_1D9192768);
  (*(v32 + 32))(v39 + v37, v33, v34);
  sub_1D8D66338(v35, v39 + v38, type metadata accessor for TTMLRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5860, &qword_1D9190AE8);
  sub_1D8CF48EC(&qword_1ECAB04B0, &qword_1ECAB5848, &qword_1D9190AC8);
  sub_1D8CF48EC(&qword_1ECAB0600, &qword_1ECAB5860, &qword_1D9190AE8);
  v40 = v51;
  v41 = v58;
  v42 = v66;
  sub_1D9177DCC();

  (*(v56 + 8))(v42, v41);
  sub_1D8CF48EC(&qword_1ECAB0540, &qword_1ECAB5850, &unk_1D9190AD0);
  v43 = v57;
  v44 = sub_1D9177B1C();
  (*(v55 + 8))(v40, v43);
  return v44;
}

uint64_t sub_1D8EE29F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v39 = a5;
  v8 = type metadata accessor for ShazamSignatureRequest();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5898, &qword_1D9190BC0);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v33 - v20;
  v34 = *(a2 + *(v12 + 52));
  v40 = sub_1D8EE3324(a3, a1, &unk_1F546BB30, sub_1D8EEFDB4);
  sub_1D8D088B4(a2, v16, &qword_1ECAB64B8, &qword_1D9192760);
  sub_1D8D65C38(v35, v10, type metadata accessor for ShazamSignatureRequest);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = (v14 + *(v33 + 80) + v21) & ~*(v33 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1D8D6734C(v16, v24 + v21, &qword_1ECAB64B8, &qword_1D9192760);
  sub_1D8D66338(v10, v24 + v22, type metadata accessor for ShazamSignatureRequest);
  *(v24 + v23) = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8);
  v26 = v36;
  sub_1D9177B3C();

  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v34;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D8EEE6E8;
  *(v29 + 24) = v27;
  v30 = v28;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0958, &qword_1ECAB5898, &qword_1D9190BC0);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v31 = v37;
  sub_1D9177DCC();

  return (*(v38 + 8))(v26, v31);
}

uint64_t sub_1D8EE2E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v39 = a5;
  v8 = type metadata accessor for TTMLRequest();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5898, &qword_1D9190BC0);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v33 - v20;
  v34 = *(a2 + *(v12 + 52));
  v40 = sub_1D8EE3324(a3, a1, &unk_1F546BE50, sub_1D8EEEF48);
  sub_1D8D088B4(a2, v16, &qword_1ECAB64C0, &qword_1D9192768);
  sub_1D8D65C38(v35, v10, type metadata accessor for TTMLRequest);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = (v14 + *(v33 + 80) + v21) & ~*(v33 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1D8D6734C(v16, v24 + v21, &qword_1ECAB64C0, &qword_1D9192768);
  sub_1D8D66338(v10, v24 + v22, type metadata accessor for TTMLRequest);
  *(v24 + v23) = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8);
  v26 = v36;
  sub_1D9177B3C();

  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v34;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D8EEEE24;
  *(v29 + 24) = v27;
  v30 = v28;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0958, &qword_1ECAB5898, &qword_1D9190BC0);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v31 = v37;
  sub_1D9177DCC();

  return (*(v38 + 8))(v26, v31);
}

uint64_t sub_1D8EE3324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a4;
  v46 = a3;
  v39 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58A8, &unk_1D9190D20);
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_1D917653C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58B8, &qword_1D9190D30);
  v40 = *(v17 - 8);
  v18 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C0, &qword_1D9190D38);
  v42 = *(v44 - 8);
  v21 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v23 = &v39 - v22;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C8, &qword_1D9190D40);
  v41 = *(v43 - 8);
  v24 = *(v41 + 64);
  v25 = MEMORY[0x1EEE9AC00](v43);
  v27 = &v39 - v26;
  (*(v13 + 16))(v16, v39, v12, v25);
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v28 = qword_1ECAB10D0;
  v29 = sub_1D9178DBC();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  v50 = v28;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB02D8, &qword_1ECAB58B8, &qword_1D9190D30);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A58, &unk_1ECAB58A8, &unk_1D9190D20);
  sub_1D9177CEC();
  (*(v45 + 8))(v7, v4);
  sub_1D8D08A50(v11, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v40 + 8))(v20, v17);
  v30 = swift_allocObject();
  v32 = v47;
  v31 = v48;
  *(v30 + 16) = v47;
  *(v30 + 24) = v31;
  sub_1D8CF48EC(&qword_1ECAB0480, &qword_1ECAB58C0, &qword_1D9190D38);
  v33 = v32;
  v34 = v31;
  v35 = v44;
  sub_1D9177B9C();

  (*(v42 + 8))(v23, v35);
  sub_1D8CF48EC(&qword_1ECAB0758, &qword_1ECAB58C8, &qword_1D9190D40);
  v36 = v43;
  v37 = sub_1D9177B1C();
  (*(v41 + 8))(v27, v36);
  return v37;
}

uint64_t sub_1D8EE390C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760) + 52));
  v8 = [a4 configuration];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = sub_1D917820C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_1D91769EC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1D91769DC();
  v17 = sub_1D91769AC();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = sub_1D917699C();
  sub_1D91769BC();

  v22[0] = a1;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = v16;
  v22[4] = v20;
  sub_1D8E48784(a3, v22);
  return sub_1D8D08A50(v22, &qword_1ECAB4988, &qword_1D918B0D8);
}

uint64_t sub_1D8EE3A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768) + 52));
  v8 = [a4 configuration];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = sub_1D917820C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_1D91769EC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1D91769DC();
  v17 = sub_1D91769AC();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = sub_1D917699C();
  sub_1D91769BC();

  v22[0] = a1;
  v22[1] = v10;
  v22[2] = v12;
  v22[3] = v16;
  v22[4] = v20;
  sub_1D8E48E70(a3, v22);
  return sub_1D8D08A50(v22, &qword_1ECAB4998, &qword_1D918B100);
}

uint64_t sub_1D8EE3BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D0, &qword_1D9190D48);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D8, &qword_1D9190D50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58E0, &qword_1D9190D58);
  v36 = *(v38 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v35 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C8, &qword_1D9192770);
  v43 = *(v45 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v35 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64D0, &qword_1D9192778);
  v42 = *(v44 - 8);
  v20 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v35 - v21;
  v46 = a1;
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v22 = qword_1ECAB10D0;
  v23 = sub_1D9178DBC();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v46 = v22;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB02B8, &qword_1ECAB58D8, &qword_1D9190D50);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A40, &qword_1ECAB58D0, &qword_1D9190D48);
  sub_1D9177CEC();
  (*(v37 + 8))(v5, v2);
  sub_1D8D08A50(v9, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v11 + 8))(v14, v10);
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 16) = v39;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64D8, &qword_1D9192780);
  sub_1D8CF48EC(&qword_1ECAB0468, &unk_1ECAB58E0, &qword_1D9190D58);
  v27 = v41;
  v28 = v38;
  sub_1D9177B2C();

  v29 = (*(v36 + 8))(v17, v28);
  MEMORY[0x1EEE9AC00](v29);
  *(&v35 - 6) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64E0, &qword_1D91927A8);
  *(&v35 - 5) = sub_1D8EEE740();
  *(&v35 - 4) = &protocol witness table for ShazamSignatureRequest;
  *(&v35 - 3) = &protocol witness table for ShazamSignatureRequest;
  *(&v35 - 2) = sub_1D8CFBCD0(&qword_1ECAB1C90, type metadata accessor for ShazamSignatureRequest);
  *(&v35 - 1) = sub_1D8CFBCD0(&qword_1ECAB1CA0, type metadata accessor for ShazamSignatureRequest);
  swift_getKeyPath();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0B10, &qword_1ECAB64C8, &qword_1D9192770);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v30 = v40;
  v31 = v45;
  sub_1D9177DCC();

  (*(v43 + 8))(v27, v31);
  sub_1D8CF48EC(&qword_1ECAB0608, &qword_1ECAB64D0, &qword_1D9192778);
  v32 = v44;
  v33 = sub_1D9177B1C();
  (*(v42 + 8))(v30, v32);
  return v33;
}

uint64_t sub_1D8EE4370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D0, &qword_1D9190D48);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D8, &qword_1D9190D50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58E0, &qword_1D9190D58);
  v36 = *(v38 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v35 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6528, &qword_1D91927F0);
  v43 = *(v45 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v35 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6530, &qword_1D91927F8);
  v42 = *(v44 - 8);
  v20 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v35 - v21;
  v46 = a1;
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v22 = qword_1ECAB10D0;
  v23 = sub_1D9178DBC();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v46 = v22;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB02B8, &qword_1ECAB58D8, &qword_1D9190D50);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A40, &qword_1ECAB58D0, &qword_1D9190D48);
  sub_1D9177CEC();
  (*(v37 + 8))(v5, v2);
  sub_1D8D08A50(v9, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v11 + 8))(v14, v10);
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 16) = v39;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6538, &qword_1D9192800);
  sub_1D8CF48EC(&qword_1ECAB0468, &unk_1ECAB58E0, &qword_1D9190D58);
  v27 = v41;
  v28 = v38;
  sub_1D9177B2C();

  v29 = (*(v36 + 8))(v17, v28);
  MEMORY[0x1EEE9AC00](v29);
  *(&v35 - 6) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6540, &qword_1D9192808);
  *(&v35 - 5) = sub_1D8EEEE7C();
  *(&v35 - 4) = &protocol witness table for TTMLRequest;
  *(&v35 - 3) = &protocol witness table for TTMLRequest;
  *(&v35 - 2) = sub_1D8CFBCD0(&qword_1ECAB2A78, type metadata accessor for TTMLRequest);
  *(&v35 - 1) = sub_1D8CFBCD0(&qword_1ECAB2A88, type metadata accessor for TTMLRequest);
  swift_getKeyPath();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0B18, &qword_1ECAB6528, &qword_1D91927F0);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v30 = v40;
  v31 = v45;
  sub_1D9177DCC();

  (*(v43 + 8))(v27, v31);
  sub_1D8CF48EC(&qword_1ECAB0610, &qword_1ECAB6530, &qword_1D91927F8);
  v32 = v44;
  v33 = sub_1D9177B1C();
  (*(v42 + 8))(v30, v32);
  return v33;
}

uint64_t sub_1D8EE4B2C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_1D8EE4B60(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v66 = a4;
  v57 = a3;
  v64 = sub_1D9176C2C();
  v7 = *(v64 - 8);
  v62 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v77 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5868, &qword_1D9190B80);
  v65 = *(v63 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5870, &qword_1D9190B88);
  v16 = *(v15 - 8);
  v69 = v15;
  v70 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5878, &qword_1D9190B90);
  v20 = *(v19 - 8);
  v71 = v19;
  v72 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v53 - v22;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5880, &qword_1D9190B98);
  v76 = *(v73 - 8);
  v23 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v53 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5888, &unk_1D9190BA0);
  v26 = *(v25 - 8);
  v74 = v25;
  v75 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v68 = &v53 - v28;
  v79 = a1;
  v29 = sub_1D8CFBCD0(&qword_1ECAB1198, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v30 = *(v29 + 64);
  v31 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor();
  v78 = v30(&v79, v57, v31, v29);
  v57 = *(v10 + 16);
  v53 = v12;
  v54 = v9;
  v57(v12, a5, v9);
  v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = swift_allocObject();
  v55 = *(v10 + 32);
  v55(v33 + v32, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0);
  v34 = v58;
  sub_1D9177B3C();

  v35 = v60;
  v36 = v64;
  (*(v7 + 16))(v60, v66, v64);
  v37 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v38 = swift_allocObject();
  (*(v7 + 32))(v38 + v37, v35, v36);
  sub_1D8CF48EC(&qword_1ECAB0948, &qword_1ECAB5868, &qword_1D9190B80);
  v39 = v59;
  v40 = v63;
  sub_1D9177C6C();

  (*(v65 + 8))(v34, v40);
  v41 = v53;
  v42 = v54;
  v57(v53, v56, v54);
  v43 = swift_allocObject();
  v55(v43 + v32, v41, v42);
  sub_1D8CF48EC(&qword_1ECAB0670, &qword_1ECAB5870, &qword_1D9190B88);
  v44 = v69;
  v45 = v61;
  sub_1D9177B3C();

  (*(v70 + 8))(v39, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  sub_1D8CF48EC(&qword_1ECAB0930, &qword_1ECAB5878, &qword_1D9190B90);
  sub_1D8CF48EC(&unk_1ECAB02A8, &qword_1ECAB5890, &unk_1D9190BB0);
  v46 = v67;
  v47 = v71;
  sub_1D9177BDC();
  (*(v72 + 8))(v45, v47);
  sub_1D8CF48EC(&qword_1ECAB06F0, &qword_1ECAB5880, &qword_1D9190B98);
  v48 = v68;
  v49 = v73;
  sub_1D9177D8C();
  (*(v76 + 8))(v46, v49);
  sub_1D8CF48EC(&qword_1ECAB0910, &qword_1ECAB5888, &unk_1D9190BA0);
  v50 = v74;
  v51 = sub_1D9177B1C();
  (*(v75 + 8))(v48, v50);
  return v51;
}

uint64_t sub_1D8EE54B8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v67 = a4;
  v58 = a3;
  v65 = sub_1D9176C2C();
  v7 = *(v65 - 8);
  v63 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v78 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5868, &qword_1D9190B80);
  v66 = *(v64 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5870, &qword_1D9190B88);
  v16 = *(v15 - 8);
  v70 = v15;
  v71 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5878, &qword_1D9190B90);
  v20 = *(v19 - 8);
  v72 = v19;
  v73 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v54 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5880, &qword_1D9190B98);
  v77 = *(v74 - 8);
  v23 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v54 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5888, &unk_1D9190BA0);
  v26 = *(v25 - 8);
  v75 = v25;
  v76 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v69 = &v54 - v28;
  v29 = *(a1 + 16);
  v80[0] = *a1;
  v80[1] = v29;
  v80[2] = *(a1 + 32);
  v81 = *(a1 + 48);
  v30 = sub_1D8CFBCD0(&qword_1ECAB1250, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v31 = *(v30 + 64);
  v32 = type metadata accessor for TranscriptsBackgroundSessionDescriptor();
  v79 = v31(v80, v58, v32, v30);
  v58 = *(v10 + 16);
  v54 = v12;
  v55 = v9;
  v58(v12, a5, v9);
  v33 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v34 = swift_allocObject();
  v56 = *(v10 + 32);
  v56(v34 + v33, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0);
  v35 = v59;
  sub_1D9177B3C();

  v36 = v61;
  v37 = v65;
  (*(v7 + 16))(v61, v67, v65);
  v38 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v39 = swift_allocObject();
  (*(v7 + 32))(v39 + v38, v36, v37);
  sub_1D8CF48EC(&qword_1ECAB0948, &qword_1ECAB5868, &qword_1D9190B80);
  v40 = v60;
  v41 = v64;
  sub_1D9177C6C();

  (*(v66 + 8))(v35, v41);
  v42 = v54;
  v43 = v55;
  v58(v54, v57, v55);
  v44 = swift_allocObject();
  v56(v44 + v33, v42, v43);
  sub_1D8CF48EC(&qword_1ECAB0670, &qword_1ECAB5870, &qword_1D9190B88);
  v45 = v70;
  v46 = v62;
  sub_1D9177B3C();

  (*(v71 + 8))(v40, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  sub_1D8CF48EC(&qword_1ECAB0930, &qword_1ECAB5878, &qword_1D9190B90);
  sub_1D8CF48EC(&unk_1ECAB02A8, &qword_1ECAB5890, &unk_1D9190BB0);
  v47 = v68;
  v48 = v72;
  sub_1D9177BDC();
  (*(v73 + 8))(v46, v48);
  sub_1D8CF48EC(&qword_1ECAB06F0, &qword_1ECAB5880, &qword_1D9190B98);
  v49 = v69;
  v50 = v74;
  sub_1D9177D8C();
  (*(v77 + 8))(v47, v50);
  sub_1D8CF48EC(&qword_1ECAB0910, &qword_1ECAB5888, &unk_1D9190BA0);
  v51 = v75;
  v52 = sub_1D9177B1C();
  (*(v76 + 8))(v49, v51);
  return v52;
}

uint64_t sub_1D8EE5E54(uint64_t a1, void *a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x98);
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (*(v5 + 16) && (v6 = sub_1D8D490F4(a1), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

id sub_1D8EE5F10(uint64_t a1, void *a2, void *a3)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_1D917734C();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917653C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xA0);
  swift_beginAccess();
  v19 = *(a2 + v18);
  if (*(v19 + 16) && (v20 = sub_1D8F069D8(a1), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
  }

  else
  {
    v55 = v9;
    swift_endAccess();
    if (qword_1ECAB0FE0 != -1)
    {
      swift_once();
    }

    v56 = v8;
    v23 = sub_1D917739C();
    __swift_project_value_buffer(v23, qword_1ECAB0FE8);
    v53 = *(v14 + 16);
    v54 = v14 + 16;
    v53(v17, a1, v13);
    v24 = v12;
    sub_1D917733C();
    v25 = sub_1D917737C();
    v26 = sub_1D9178F6C();
    if (sub_1D917918C())
    {
      v27 = swift_slowAlloc();
      v51 = v26;
      v28 = v27;
      v29 = swift_slowAlloc();
      v50 = v24;
      v30 = v29;
      v60[0] = v29;
      *v28 = 136315138;
      v31 = sub_1D91764AC();
      v52 = a1;
      v33 = v32;
      v34 = v17;
      v35 = v14;
      (*(v14 + 8))(v34, v13);
      v36 = sub_1D8CFA924(v31, v33, v60);
      a1 = v52;

      *(v28 + 4) = v36;
      v37 = v50;
      v38 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v25, v51, v38, "Start Asset Download", "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v28, -1, -1);

      (*(v57 + 8))(v37, v55);
    }

    else
    {

      (*(v57 + 8))(v24, v55);
      (*(v14 + 8))(v17, v13);
      v35 = v14;
    }

    v39 = sub_1D91764BC();
    v40 = [v58 downloadTaskWithRequest_];

    v41 = v40;
    v42 = [v41 taskIdentifier];
    swift_beginAccess();
    v43 = *(a2 + v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(a2 + v18);
    *(a2 + v18) = 0x8000000000000000;
    sub_1D8F4F79C(v42, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + v18) = v59;
    swift_endAccess();
    v45 = [v41 taskIdentifier];
    v46 = v56;
    v53(v56, a1, v13);
    (*(v35 + 56))(v46, 0, 1, v13);
    v47 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xA8);
    swift_beginAccess();
    sub_1D8F7CC9C(v46, v45);
    swift_endAccess();
    [v41 resume];
    v22 = [v41 taskIdentifier];
  }

  return v22;
}

uint64_t sub_1D8EE6468(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D9177E0C();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_1EDCD5B38;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = sub_1D8D49C40;
  *(v16 + 32) = v14;
  aBlock[4] = sub_1D8EEFE44;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_334;
  v17 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v17);
  _Block_release(v17);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_1D8EE67A4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D9177E0C();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_1EDCD5B38;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = sub_1D8D9F2C8;
  *(v16 + 32) = v14;
  aBlock[4] = sub_1D8EEFE44;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_99_0;
  v17 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v17);
  _Block_release(v17);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_1D8EE6AE0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D9177E0C();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_1EDCD5B38;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = sub_1D8D49C40;
  *(v16 + 32) = v14;
  aBlock[4] = sub_1D8EEEAFC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_160;
  v17 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v17);
  _Block_release(v17);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

void sub_1D8EE6E1C(char a1, void (*a2)(uint64_t, void))
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1ECAB1378 != -1)
      {
        swift_once();
      }

      v3 = &qword_1ECAB1380;
    }

    else
    {
      if (qword_1ECAB34B0 != -1)
      {
        swift_once();
      }

      v3 = &qword_1ECAB5B20;
    }
  }

  else
  {
    if (qword_1EDCD6008 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDCD6010;
  }

  v4 = *v3;
  v5 = *v3;
  a2(v4, 0);
}

uint64_t sub_1D8EE6F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C0, &qword_1D918B140);
  v6 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65C8, &qword_1D9192890);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v79 = *(v81 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v73 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v80 = *(v82 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v84 = *(v19 - 8);
  v85 = v19;
  v20 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v87 = *(v22 - 8);
  v88 = v22;
  v23 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v73 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65D0, &qword_1D9192898);
  v95 = *(v25 - 8);
  v26 = v95[8];
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v96 = &v73 - v29;
  v30 = sub_1D9176EAC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D41388(a1, v99);
  sub_1D8D088B4(&v99[28], &v100, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v99);
  v93 = a3;
  v89 = v25;
  if (v101)
  {
    sub_1D8D6BCE0(&v100, v102);
  }

  else
  {
    v73 = a2;
    v74 = a1;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v35 = sub_1D917744C();
    v36 = __swift_project_value_buffer(v35, qword_1EDCD5E70);
    v37 = type metadata accessor for LoggerTrace(0);
    v102[3] = v37;
    v102[4] = &protocol witness table for LoggerTrace;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v102);
    (*(*(v35 - 8) + 16))(boxed_opaque_existential_0 + *(v37 + 20), v36, v35);
    LOBYTE(v35) = sub_1D9178CDC();
    sub_1D9176E9C();
    v39 = sub_1D9176E5C();
    v41 = v40;
    (*(v31 + 8))(v34, v30);
    *boxed_opaque_existential_0 = v39;
    boxed_opaque_existential_0[1] = v41;
    *(boxed_opaque_existential_0 + *(v37 + 24)) = v35;
    a2 = v73;
    a1 = v74;
    if (v101)
    {
      sub_1D8D08A50(&v100, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = 0;
  *(v42 + 40) = 0;
  sub_1D8D41388(a1, v99);
  sub_1D9177A0C();
  v43 = sub_1D9176C2C();
  v44 = v76;
  v45 = v77;
  sub_1D91779EC();
  (*(v75 + 8))(v14, v44);
  v99[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v46 = a1;
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140);
  v47 = v78;
  v48 = v81;
  sub_1D9177B5C();
  (*(v79 + 8))(v45, v48);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158);
  v49 = v82;
  v50 = v83;
  sub_1D9177C5C();
  (*(v80 + 8))(v47, v49);
  sub_1D8D41388(a1, v99);
  sub_1D8CFD9D8(v102, &v100);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v99, 0x108uLL);
  *(v51 + 280) = v42;
  *(v51 + 288) = "ForegroundNetworkFetch";
  *(v51 + 296) = 22;
  *(v51 + 304) = 2;
  sub_1D8D6BCE0(&v100, v51 + 312);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1D8EEFAC0;
  *(v52 + 24) = v51;
  v82 = v42;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180);
  v53 = v85;
  v54 = v86;
  sub_1D9177CBC();

  (*(v84 + 8))(v50, v53);
  sub_1D8CFD9D8(v102, &v100);
  sub_1D8D41388(v46, v99);
  v55 = swift_allocObject();
  sub_1D8D6BCE0(&v100, v55 + 16);
  memcpy((v55 + 56), v99, 0x108uLL);
  type metadata accessor for ArtworkContent();
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168);
  v56 = v88;
  sub_1D9177C6C();

  (*(v87 + 8))(v54, v56);
  sub_1D8CFD9D8(v102, v99);
  v57 = v90;
  ArtworkRequest.remoteUrl.getter();
  v58 = *(v43 - 8);
  if ((*(v58 + 48))(v57, 1, v43) == 1)
  {
    sub_1D8D08A50(v57, &unk_1ECAB5910, &qword_1D9188C90);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v59 = sub_1D9176BCC();
    v60 = v61;
    (*(v58 + 8))(v57, v43);
  }

  v62 = v91;
  v63 = v89;
  v64 = v94;
  v65 = v95[2];
  v65(v94, v96, v89);
  sub_1D8D088B4(v99, &v100, &qword_1ECAB4928, &qword_1D918B380);
  v65(v62, v64, v63);
  v66 = v92;
  sub_1D8D088B4(&v100, v62 + *(v92 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v67 = v62 + v66[10];
  *v67 = "ForegroundDownload";
  *(v67 + 8) = 18;
  *(v67 + 16) = 2;
  *(v62 + v66[12]) = 1;
  if (v60)
  {
    v97 = v59;
    v98 = v60;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v68 = v97;
    v69 = v98;
  }

  else
  {

    v68 = 0;
    v69 = 0xE000000000000000;
  }

  sub_1D8D08A50(&v100, &qword_1ECAB4928, &qword_1D918B380);
  v70 = v95[1];
  v70(v94, v63);
  sub_1D8D08A50(v99, &qword_1ECAB4928, &qword_1D918B380);
  v70(v96, v63);
  v71 = (v62 + v66[11]);
  *v71 = v68;
  v71[1] = v69;
  *(v62 + v66[13]) = 0;
  sub_1D8D6734C(v62, v93, &qword_1ECAB49C0, &qword_1D918B140);
  return __swift_destroy_boxed_opaque_existential_1Tm(v102);
}

uint64_t sub_1D8EE7BCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  v104 = a3;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6468, &qword_1D9192720);
  v9 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v11 = &v81 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = &v81 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6470, &qword_1D9192728);
  v85 = *(v86 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v17 = &v81 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v89 = *(v91 - 1);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v81 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v90 = *(v92 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v81 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v97 = *(v24 - 8);
  v25 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v81 - v26;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6478, &qword_1D9192730);
  v27 = *(v100 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v106 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v81 - v31;
  v32 = type metadata accessor for ShazamSignatureRequest();
  v84 = *(v32 - 8);
  v33 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v105 = v34;
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D65C38(a1, v35, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v35[*(v32 + 36)], &v112, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D67208(v35, type metadata accessor for ShazamSignatureRequest);
  v102 = v11;
  v107 = a1;
  v99 = v27;
  v98 = v24;
  if (v113)
  {
    sub_1D8D6BCE0(&v112, v114);
  }

  else
  {
    v81 = v5;
    v82 = a2;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v36 = sub_1D917744C();
    v37 = __swift_project_value_buffer(v36, qword_1EDCD5E70);
    v38 = type metadata accessor for LoggerTrace(0);
    v114[3] = v38;
    v114[4] = &protocol witness table for LoggerTrace;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v114);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_0 + *(v38 + 20), v37, v36);
    LOBYTE(v36) = sub_1D9178CDC();
    v40 = v83;
    sub_1D9176E9C();
    v41 = sub_1D9176E5C();
    v43 = v42;
    (*(v6 + 8))(v40, v81);
    *boxed_opaque_existential_0 = v41;
    boxed_opaque_existential_0[1] = v43;
    *(boxed_opaque_existential_0 + *(v38 + 24)) = v36;
    a1 = v107;
    a2 = v82;
    if (v113)
    {
      sub_1D8D08A50(&v112, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = 0;
  *(v44 + 40) = 0;
  v82 = type metadata accessor for ShazamSignatureRequest;
  sub_1D8D65C38(a1, v35, type metadata accessor for ShazamSignatureRequest);
  sub_1D9177A0C();
  v83 = sub_1D9176C2C();
  v45 = v87;
  v46 = v86;
  sub_1D91779EC();
  (*(v85 + 8))(v17, v46);
  *&v112 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140);
  v47 = v88;
  v48 = v91;
  sub_1D9177B5C();
  (*(v89 + 8))(v45, v48);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158);
  v49 = v93;
  v50 = v92;
  sub_1D9177C5C();
  (*(v90 + 8))(v47, v50);
  sub_1D8D65C38(v107, v35, type metadata accessor for ShazamSignatureRequest);
  sub_1D8CFD9D8(v114, &v112);
  v51 = *(v84 + 80);
  v52 = (v51 + 16) & ~v51;
  v53 = (v105 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v91 = type metadata accessor for ShazamSignatureRequest;
  sub_1D8D66338(v35, v54 + v52, type metadata accessor for ShazamSignatureRequest);
  *(v54 + v53) = v44;
  v55 = v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v55 = "ForegroundNetworkFetch";
  *(v55 + 8) = 22;
  *(v55 + 16) = 2;
  sub_1D8D6BCE0(&v112, v54 + ((v53 + 39) & 0xFFFFFFFFFFFFFFF8));
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1D8EEDBF4;
  *(v56 + 24) = v54;
  v92 = v44;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180);
  v57 = v96;
  v58 = v95;
  sub_1D9177CBC();

  (*(v94 + 8))(v49, v58);
  sub_1D8CFD9D8(v114, &v112);
  v59 = v107;
  sub_1D8D65C38(v107, v35, v82);
  v60 = swift_allocObject();
  sub_1D8D6BCE0(&v112, v60 + 16);
  sub_1D8D66338(v35, v60 + ((v51 + 56) & ~v51), v91);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168);
  v61 = v98;
  sub_1D9177C6C();

  v62 = v57;
  v63 = v83;
  (*(v97 + 8))(v62, v61);
  sub_1D8CFD9D8(v114, &v112);
  v64 = v101;
  sub_1D8D088B4(v59, v101, &unk_1ECAB5910, &qword_1D9188C90);
  v65 = *(v63 - 1);
  if ((*(v65 + 48))(v64, 1, v63) == 1)
  {
    sub_1D8D08A50(v64, &unk_1ECAB5910, &qword_1D9188C90);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v66 = sub_1D9176BCC();
    v67 = v68;
    (*(v65 + 8))(v64, v63);
  }

  v69 = v102;
  v70 = v100;
  v71 = v99;
  v72 = *(v99 + 16);
  v73 = v106;
  v72(v106, v108, v100);
  sub_1D8D088B4(&v112, v111, &qword_1ECAB4928, &qword_1D918B380);
  v72(v69, v73, v70);
  v74 = v103;
  sub_1D8D088B4(v111, v69 + *(v103 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v75 = v69 + v74[10];
  *v75 = "ForegroundDownload";
  *(v75 + 8) = 18;
  *(v75 + 16) = 2;
  *(v69 + v74[12]) = 1;
  if (v67)
  {
    v109 = v66;
    v110 = v67;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v76 = v109;
    v77 = v110;
  }

  else
  {

    v76 = 0;
    v77 = 0xE000000000000000;
  }

  sub_1D8D08A50(v111, &qword_1ECAB4928, &qword_1D918B380);
  v78 = *(v71 + 8);
  v78(v106, v70);
  sub_1D8D08A50(&v112, &qword_1ECAB4928, &qword_1D918B380);
  v78(v108, v70);
  v79 = (v69 + v74[11]);
  *v79 = v76;
  v79[1] = v77;
  *(v69 + v74[13]) = 0;
  sub_1D8D6734C(v69, v104, &qword_1ECAB6468, &qword_1D9192720);
  return __swift_destroy_boxed_opaque_existential_1Tm(v114);
}

uint64_t sub_1D8EE8AA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  v104 = a3;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6490, &qword_1D9192740);
  v9 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v11 = &v81 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = &v81 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6498, &qword_1D9192748);
  v85 = *(v86 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v17 = &v81 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v89 = *(v91 - 1);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v81 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v90 = *(v92 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v81 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v97 = *(v24 - 8);
  v25 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v81 - v26;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64A0, &qword_1D9192750);
  v27 = *(v100 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v106 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v81 - v31;
  v32 = type metadata accessor for TTMLRequest();
  v84 = *(v32 - 8);
  v33 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v105 = v34;
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D65C38(a1, v35, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v35[*(v32 + 36)], &v112, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D67208(v35, type metadata accessor for TTMLRequest);
  v102 = v11;
  v107 = a1;
  v99 = v27;
  v98 = v24;
  if (v113)
  {
    sub_1D8D6BCE0(&v112, v114);
  }

  else
  {
    v81 = v5;
    v82 = a2;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v36 = sub_1D917744C();
    v37 = __swift_project_value_buffer(v36, qword_1EDCD5E70);
    v38 = type metadata accessor for LoggerTrace(0);
    v114[3] = v38;
    v114[4] = &protocol witness table for LoggerTrace;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v114);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_0 + *(v38 + 20), v37, v36);
    LOBYTE(v36) = sub_1D9178CDC();
    v40 = v83;
    sub_1D9176E9C();
    v41 = sub_1D9176E5C();
    v43 = v42;
    (*(v6 + 8))(v40, v81);
    *boxed_opaque_existential_0 = v41;
    boxed_opaque_existential_0[1] = v43;
    *(boxed_opaque_existential_0 + *(v38 + 24)) = v36;
    a1 = v107;
    a2 = v82;
    if (v113)
    {
      sub_1D8D08A50(&v112, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = 0;
  *(v44 + 40) = 0;
  v82 = type metadata accessor for TTMLRequest;
  sub_1D8D65C38(a1, v35, type metadata accessor for TTMLRequest);
  sub_1D9177A0C();
  v83 = sub_1D9176C2C();
  v45 = v87;
  v46 = v86;
  sub_1D91779EC();
  (*(v85 + 8))(v17, v46);
  *&v112 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140);
  v47 = v88;
  v48 = v91;
  sub_1D9177B5C();
  (*(v89 + 8))(v45, v48);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158);
  v49 = v93;
  v50 = v92;
  sub_1D9177C5C();
  (*(v90 + 8))(v47, v50);
  sub_1D8D65C38(v107, v35, type metadata accessor for TTMLRequest);
  sub_1D8CFD9D8(v114, &v112);
  v51 = *(v84 + 80);
  v52 = (v51 + 16) & ~v51;
  v53 = (v105 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v91 = type metadata accessor for TTMLRequest;
  sub_1D8D66338(v35, v54 + v52, type metadata accessor for TTMLRequest);
  *(v54 + v53) = v44;
  v55 = v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v55 = "ForegroundNetworkFetch";
  *(v55 + 8) = 22;
  *(v55 + 16) = 2;
  sub_1D8D6BCE0(&v112, v54 + ((v53 + 39) & 0xFFFFFFFFFFFFFFF8));
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1D8EEDD44;
  *(v56 + 24) = v54;
  v92 = v44;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180);
  v57 = v96;
  v58 = v95;
  sub_1D9177CBC();

  (*(v94 + 8))(v49, v58);
  sub_1D8CFD9D8(v114, &v112);
  v59 = v107;
  sub_1D8D65C38(v107, v35, v82);
  v60 = swift_allocObject();
  sub_1D8D6BCE0(&v112, v60 + 16);
  sub_1D8D66338(v35, v60 + ((v51 + 56) & ~v51), v91);
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168);
  v61 = v98;
  sub_1D9177C6C();

  v62 = v57;
  v63 = v83;
  (*(v97 + 8))(v62, v61);
  sub_1D8CFD9D8(v114, &v112);
  v64 = v101;
  sub_1D8D088B4(v59, v101, &unk_1ECAB5910, &qword_1D9188C90);
  v65 = *(v63 - 1);
  if ((*(v65 + 48))(v64, 1, v63) == 1)
  {
    sub_1D8D08A50(v64, &unk_1ECAB5910, &qword_1D9188C90);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v66 = sub_1D9176BCC();
    v67 = v68;
    (*(v65 + 8))(v64, v63);
  }

  v69 = v102;
  v70 = v100;
  v71 = v99;
  v72 = *(v99 + 16);
  v73 = v106;
  v72(v106, v108, v100);
  sub_1D8D088B4(&v112, v111, &qword_1ECAB4928, &qword_1D918B380);
  v72(v69, v73, v70);
  v74 = v103;
  sub_1D8D088B4(v111, v69 + *(v103 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v75 = v69 + v74[10];
  *v75 = "ForegroundDownload";
  *(v75 + 8) = 18;
  *(v75 + 16) = 2;
  *(v69 + v74[12]) = 1;
  if (v67)
  {
    v109 = v66;
    v110 = v67;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v76 = v109;
    v77 = v110;
  }

  else
  {

    v76 = 0;
    v77 = 0xE000000000000000;
  }

  sub_1D8D08A50(v111, &qword_1ECAB4928, &qword_1D918B380);
  v78 = *(v71 + 8);
  v78(v106, v70);
  sub_1D8D08A50(&v112, &qword_1ECAB4928, &qword_1D918B380);
  v78(v108, v70);
  v79 = (v69 + v74[11]);
  *v79 = v76;
  v79[1] = v77;
  *(v69 + v74[13]) = 0;
  sub_1D8D6734C(v69, v104, &qword_1ECAB6490, &qword_1D9192740);
  return __swift_destroy_boxed_opaque_existential_1Tm(v114);
}

uint64_t sub_1D8EE996C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  ArtworkRequest.remoteUrl.getter();
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_1D8D08A50(v5, &unk_1ECAB5910, &qword_1D9188C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65D8, &qword_1D91928A0);
  sub_1D8CF48EC(&qword_1ECAB65E0, &qword_1ECAB65D8, &qword_1D91928A0);
  swift_allocError();
  *v8 = 0;
  return swift_willThrow();
}

uint64_t sub_1D8EE9B60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v18 - v12;
  sub_1D8D088B4(a1, v18 - v12, &unk_1ECAB5910, &qword_1D9188C90);
  v14 = sub_1D9176C2C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    return (*(v15 + 32))(a5, v13, v14);
  }

  sub_1D8D08A50(v13, &unk_1ECAB5910, &qword_1D9188C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1D8CF48EC(a4, a2, a3);
  swift_allocError();
  *v16 = 0;
  return swift_willThrow();
}

uint64_t sub_1D8EE9D10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v74 = a8;
  v64 = a7;
  v62 = a2;
  v63 = a6;
  v66 = a3;
  v72 = a9;
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v67 = *(v65 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v70 = *(v19 - 8);
  v71 = v19;
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v73 = &v60 - v24;
  v25 = *(v14 + 16);
  v68 = a1;
  v25(v16, a1, v13, v23);
  sub_1D8D41388(a3, v79);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v14 + 32))(v28 + v26, v16, v13);
  v29 = v62;
  *(v28 + v27) = v62;
  memcpy((v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)), v79, 0x108uLL);
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8);
  v31 = v61;
  sub_1D9177A7C();
  sub_1D8CFD9D8(v74, v79);
  v32 = swift_allocObject();
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  v33 = v63;
  *(v32 + 32) = v63;
  LOBYTE(v27) = v64;
  *(v32 + 40) = v64;
  sub_1D8D6BCE0(v79, v32 + 48);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = a5;
  *(v34 + 32) = v33;
  *(v34 + 40) = v27;
  v35 = swift_allocObject();
  *(v35 + 16) = a4;
  *(v35 + 24) = a5;
  *(v35 + 32) = v33;
  *(v35 + 40) = v27;
  v36 = swift_allocObject();
  *(v36 + 16) = a4;
  *(v36 + 24) = a5;
  *(v36 + 32) = v33;
  *(v36 + 40) = v27;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8);
  swift_retain_n();
  v37 = v65;
  v38 = v73;
  sub_1D9177B3C();

  (*(v67 + 8))(v31, v37);
  sub_1D8CFD9D8(v74, v79);
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_1D917946C();

  v77 = 60;
  v78 = 0xE100000000000000;
  v39 = 0xEA0000000000646ELL;
  v40 = 0x756F72676B636142;
  v41 = 0xED00006465746169;
  v42 = 0x74696E4972657355;
  if (*(v66 + 203) != 2)
  {
    v42 = 0x65746E4972657355;
    v41 = 0xEF65766974636172;
  }

  if (*(v66 + 203))
  {
    v40 = 0x7974696C697455;
    v39 = 0xE700000000000000;
  }

  if (*(v66 + 203) <= 1u)
  {
    v43 = v40;
  }

  else
  {
    v43 = v42;
  }

  if (*(v66 + 203) <= 1u)
  {
    v44 = v39;
  }

  else
  {
    v44 = v41;
  }

  MEMORY[0x1DA7298F0](v43, v44);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v45 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v45);

  v46 = v77;
  v47 = v78;
  v48 = v69;
  v49 = v70;
  v50 = *(v70 + 16);
  v51 = v71;
  v50(v69, v38, v71);
  sub_1D8D088B4(v79, &v77, &qword_1ECAB4928, &qword_1D918B380);
  v52 = v72;
  v50(v72, v48, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D088B4(&v77, &v52[v53[9]], &qword_1ECAB4928, &qword_1D918B380);
  v54 = &v52[v53[10]];
  *v54 = "DOWNLOAD";
  *(v54 + 1) = 8;
  v54[16] = 2;
  v52[v53[12]] = 0;
  v75 = v46;
  v76 = v47;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v55 = v75;
  v56 = v76;
  sub_1D8D08A50(&v77, &qword_1ECAB4928, &qword_1D918B380);
  v57 = *(v49 + 8);
  v57(v48, v51);
  sub_1D8D08A50(v79, &qword_1ECAB4928, &qword_1D918B380);
  result = (v57)(v73, v51);
  v59 = &v52[v53[11]];
  *v59 = v55;
  v59[1] = v56;
  v52[v53[13]] = 0;
  return result;
}

uint64_t sub_1D8EEA458@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v65 = a8;
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v66 = a4;
  v71 = a3;
  v78 = a9;
  v12 = type metadata accessor for ShazamSignatureRequest();
  v13 = *(v12 - 8);
  v73 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v72 = *(v70 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v79 = &v63 - v27;
  v28 = *(v17 + 16);
  v74 = a1;
  v28(v19, a1, v16, v26);
  sub_1D8D65C38(a3, v15, type metadata accessor for ShazamSignatureRequest);
  v29 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v13 + 80) + v30 + 8) & ~*(v13 + 80);
  v32 = swift_allocObject();
  (*(v17 + 32))(v32 + v29, v19, v16);
  *(v32 + v30) = a2;
  sub_1D8D66338(v15, v32 + v31, type metadata accessor for ShazamSignatureRequest);
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8);
  v34 = v64;
  sub_1D9177A7C();
  v35 = v65;
  sub_1D8CFD9D8(v65, v84);
  v36 = swift_allocObject();
  v37 = v66;
  v38 = v67;
  *(v36 + 16) = v66;
  *(v36 + 24) = v38;
  v39 = v68;
  *(v36 + 32) = v68;
  LOBYTE(v17) = v69;
  *(v36 + 40) = v69;
  sub_1D8D6BCE0(v84, v36 + 48);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v38;
  *(v40 + 32) = v39;
  *(v40 + 40) = v17;
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = v38;
  *(v41 + 32) = v39;
  *(v41 + 40) = v17;
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  *(v42 + 24) = v38;
  *(v42 + 32) = v39;
  *(v42 + 40) = v17;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8);
  swift_retain_n();
  v43 = v70;
  v44 = v79;
  sub_1D9177B3C();

  (*(v72 + 8))(v34, v43);
  sub_1D8CFD9D8(v35, v84);
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_1D917946C();

  v82 = 60;
  v83 = 0xE100000000000000;
  v45 = *(v71 + *(v73 + 28));
  if (v45 > 1)
  {
    if (v45 == 2)
    {
      v46 = 0xED00006465746169;
      v47 = 0x74696E4972657355;
    }

    else
    {
      v46 = 0xEF65766974636172;
      v47 = 0x65746E4972657355;
    }
  }

  else if (*(v71 + *(v73 + 28)))
  {
    v46 = 0xE700000000000000;
    v47 = 0x7974696C697455;
  }

  else
  {
    v46 = 0xEA0000000000646ELL;
    v47 = 0x756F72676B636142;
  }

  MEMORY[0x1DA7298F0](v47, v46);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v48 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v48);

  v49 = v82;
  v50 = v83;
  v52 = v75;
  v51 = v76;
  v53 = *(v76 + 16);
  v54 = v77;
  v53(v75, v44, v77);
  sub_1D8D088B4(v84, &v82, &qword_1ECAB4928, &qword_1D918B380);
  v55 = v78;
  v53(v78, v52, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D088B4(&v82, &v55[v56[9]], &qword_1ECAB4928, &qword_1D918B380);
  v57 = &v55[v56[10]];
  *v57 = "DOWNLOAD";
  *(v57 + 1) = 8;
  v57[16] = 2;
  v55[v56[12]] = 0;
  v80 = v49;
  v81 = v50;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v58 = v80;
  v59 = v81;
  sub_1D8D08A50(&v82, &qword_1ECAB4928, &qword_1D918B380);
  v60 = *(v51 + 8);
  v60(v52, v54);
  sub_1D8D08A50(v84, &qword_1ECAB4928, &qword_1D918B380);
  result = (v60)(v79, v54);
  v62 = &v55[v56[11]];
  *v62 = v58;
  v62[1] = v59;
  v55[v56[13]] = 0;
  return result;
}

uint64_t sub_1D8EEAC84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v65 = a8;
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v66 = a4;
  v71 = a3;
  v78 = a9;
  v12 = type metadata accessor for TTMLRequest();
  v13 = *(v12 - 8);
  v73 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v72 = *(v70 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v79 = &v63 - v27;
  v28 = *(v17 + 16);
  v74 = a1;
  v28(v19, a1, v16, v26);
  sub_1D8D65C38(a3, v15, type metadata accessor for TTMLRequest);
  v29 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v13 + 80) + v30 + 8) & ~*(v13 + 80);
  v32 = swift_allocObject();
  (*(v17 + 32))(v32 + v29, v19, v16);
  *(v32 + v30) = a2;
  sub_1D8D66338(v15, v32 + v31, type metadata accessor for TTMLRequest);
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8);
  v34 = v64;
  sub_1D9177A7C();
  v35 = v65;
  sub_1D8CFD9D8(v65, v84);
  v36 = swift_allocObject();
  v37 = v66;
  v38 = v67;
  *(v36 + 16) = v66;
  *(v36 + 24) = v38;
  v39 = v68;
  *(v36 + 32) = v68;
  LOBYTE(v17) = v69;
  *(v36 + 40) = v69;
  sub_1D8D6BCE0(v84, v36 + 48);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v38;
  *(v40 + 32) = v39;
  *(v40 + 40) = v17;
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = v38;
  *(v41 + 32) = v39;
  *(v41 + 40) = v17;
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  *(v42 + 24) = v38;
  *(v42 + 32) = v39;
  *(v42 + 40) = v17;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8);
  swift_retain_n();
  v43 = v70;
  v44 = v79;
  sub_1D9177B3C();

  (*(v72 + 8))(v34, v43);
  sub_1D8CFD9D8(v35, v84);
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_1D917946C();

  v82 = 60;
  v83 = 0xE100000000000000;
  v45 = *(v71 + *(v73 + 28));
  if (v45 > 1)
  {
    if (v45 == 2)
    {
      v46 = 0xED00006465746169;
      v47 = 0x74696E4972657355;
    }

    else
    {
      v46 = 0xEF65766974636172;
      v47 = 0x65746E4972657355;
    }
  }

  else if (*(v71 + *(v73 + 28)))
  {
    v46 = 0xE700000000000000;
    v47 = 0x7974696C697455;
  }

  else
  {
    v46 = 0xEA0000000000646ELL;
    v47 = 0x756F72676B636142;
  }

  MEMORY[0x1DA7298F0](v47, v46);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v48 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v48);

  v49 = v82;
  v50 = v83;
  v52 = v75;
  v51 = v76;
  v53 = *(v76 + 16);
  v54 = v77;
  v53(v75, v44, v77);
  sub_1D8D088B4(v84, &v82, &qword_1ECAB4928, &qword_1D918B380);
  v55 = v78;
  v53(v78, v52, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D088B4(&v82, &v55[v56[9]], &qword_1ECAB4928, &qword_1D918B380);
  v57 = &v55[v56[10]];
  *v57 = "DOWNLOAD";
  *(v57 + 1) = 8;
  v57[16] = 2;
  v55[v56[12]] = 0;
  v80 = v49;
  v81 = v50;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v58 = v80;
  v59 = v81;
  sub_1D8D08A50(&v82, &qword_1ECAB4928, &qword_1D918B380);
  v60 = *(v51 + 8);
  v60(v52, v54);
  sub_1D8D08A50(v84, &qword_1ECAB4928, &qword_1D918B380);
  result = (v60)(v79, v54);
  v62 = &v55[v56[11]];
  *v62 = v58;
  v62[1] = v59;
  v55[v56[13]] = 0;
  return result;
}

uint64_t sub_1D8EEB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a2;
  v21[1] = a4;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  (*(v7 + 16))(v9, a1, v6);
  sub_1D8D41388(a3, v22);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v11, v9, v6);
  v15 = v21[0];
  *(v14 + v12) = v21[0];
  memcpy((v14 + v13), v22, 0x108uLL);
  *(v14 + ((v13 + 271) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v15;

  v22[0] = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0);

  sub_1D9177B3C();
}

uint64_t sub_1D8EEB730@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a4;
  v6 = type metadata accessor for ShazamSignatureRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  (*(v10 + 16))(v12, a1, v9);
  sub_1D8D65C38(a3, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamSignatureRequest);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = v25;
  *(v17 + v15) = v25;
  sub_1D8D66338(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ShazamSignatureRequest);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v18;

  v27 = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0);

  sub_1D9177B3C();
}

uint64_t sub_1D8EEBA50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a4;
  v6 = type metadata accessor for TTMLRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  (*(v10 + 16))(v12, a1, v9);
  sub_1D8D65C38(a3, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTMLRequest);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = v25;
  *(v17 + v15) = v25;
  sub_1D8D66338(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for TTMLRequest);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v18;

  v27 = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0);

  sub_1D9177B3C();
}

void sub_1D8EEBD70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v27 = a4;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D917653C();
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  (*(v11 + 16))(v14, a3, v10);

  sub_1D91764EC();
  v20 = sub_1D91764BC();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D8EEFDB0;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1D8EEFC78;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_324;
  v22 = _Block_copy(aBlock);

  v23 = [v27 dataTaskWithRequest:v20 completionHandler:v22];
  _Block_release(v22);

  *&v24 = flt_1D918CD50[*(v29 + 203)];
  [v23 setPriority_];
  [v23 resume];
  (*(v15 + 8))(v18, v28);
  swift_beginAccess();
  v25 = *(a6 + 16);
  *(a6 + 16) = v23;
}

void sub_1D8EEC04C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v27 = a4;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D917653C();
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  (*(v11 + 16))(v14, a3, v10);

  sub_1D91764EC();
  v20 = sub_1D91764BC();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D8EC1684;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1D8EEDD04;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_28;
  v22 = _Block_copy(aBlock);

  v23 = [v27 dataTaskWithRequest:v20 completionHandler:v22];
  _Block_release(v22);

  *&v24 = flt_1D918CD50[*(v29 + *(type metadata accessor for ShazamSignatureRequest() + 20))];
  [v23 setPriority_];
  [v23 resume];
  (*(v15 + 8))(v18, v28);
  swift_beginAccess();
  v25 = *(a6 + 16);
  *(a6 + 16) = v23;
}

void sub_1D8EEC334(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v27 = a4;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D917653C();
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  (*(v11 + 16))(v14, a3, v10);

  sub_1D91764EC();
  v20 = sub_1D91764BC();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D8EEFDB0;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1D8EEE550;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_78_0;
  v22 = _Block_copy(aBlock);

  v23 = [v27 dataTaskWithRequest:v20 completionHandler:v22];
  _Block_release(v22);

  *&v24 = flt_1D918CD50[*(v29 + *(type metadata accessor for TTMLRequest() + 20))];
  [v23 setPriority_];
  [v23 resume];
  (*(v15 + 8))(v18, v28);
  swift_beginAccess();
  v25 = *(a6 + 16);
  *(a6 + 16) = v23;
}

void sub_1D8EEC61C(uint64_t a1, unint64_t a2, int a3, id a4, void (*a5)(id, unint64_t, uint64_t), int a6, uint64_t *a7, uint64_t *a8, unint64_t *a9)
{
  if (a2 >> 60 == 15)
  {
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      sub_1D8CF48EC(a9, a7, a8);
      v15 = swift_allocError();
      a4 = 0;
      v10 = v15;
      *v16 = 1;
    }

    v17 = a4;
    a5(v10, 0, 1);
  }

  else
  {
    sub_1D8D752C4(a1, a2);
    a5(a1, a2, 0);

    sub_1D8D75668(a1, a2);
  }
}

uint64_t sub_1D8EEC758(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1D9176C8C();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1D8D75668(v6, v11);
}

double sub_1D8EEC820@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  Trace.emit(event:)("DECODE", 6, 2, v9, v10);
  TranscriptParser.parse(ttmlData:)(a1, a2, &v17);
  if (v4)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    Trace.emit(event:)("DECODE-FAILED", 13, 2, v11, v12);
    swift_willThrow();
  }

  else
  {
    v14 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v14);
    Trace.emit(event:)("DECODED", 7, 2, v14, v15);
    v16 = v18;
    *a4 = v17;
    *(a4 + 16) = v16;
    *(a4 + 24) = v19;
    result = v20[0];
    *(a4 + 40) = *v20;
  }

  return result;
}

uint64_t static TimeBombedTranscriptProvider.Caches.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB1480);
  return sub_1D8D65C38(v3, a1, type metadata accessor for TimeBombedTranscriptProvider.Caches);
}

uint64_t sub_1D8EECA5C@<X0>(void *a1@<X8>)
{
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB1480);
  v4 = (v3 + *(v2 + 20));
  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620) + 72)];
  v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v8 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570) + 72)];
  v9 = *v3;
  v10 = *v4;
  v11 = qword_1ECAB14A0;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = _s11DownloadersVMa(0);
  v13 = __swift_project_value_buffer(v12, qword_1ECAB14A8);
  v14 = (v13 + *(v12 + 24));
  v16 = *v14;
  v15 = v14[1];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = (v13 + *(v12 + 32));
  v20 = *v18;
  v19 = v18[1];
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v22 = qword_1EDCD5B50;

  if (v22 != -1)
  {
    swift_once();
  }

  v35[3] = &type metadata for MAPITranscriptTimeBombedURLProvider;
  v35[4] = &protocol witness table for MAPITranscriptTimeBombedURLProvider;
  v23 = qword_1EDCD5B58;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1D8D6866C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F20, &qword_1D91919A0);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v25;
  v35[0] = v23;
  v35[1] = v26;
  *a1 = sub_1D8EEFE0C;
  a1[1] = v6;
  a1[2] = sub_1D8EEFD0C;
  a1[3] = v6;
  a1[4] = sub_1D8EEFE48;
  a1[5] = v6;
  a1[6] = sub_1D8EEFE10;
  a1[7] = v6;
  a1[8] = sub_1D8EEFD00;
  a1[9] = v8;
  a1[10] = sub_1D8EEFDB8;
  a1[11] = v8;
  a1[12] = sub_1D8EEFE4C;
  a1[13] = v8;
  a1[14] = sub_1D8EEFE28;
  a1[15] = v8;
  a1[16] = sub_1D8EEFD44;
  a1[17] = v9;
  a1[18] = sub_1D8EEFD10;
  a1[19] = v9;
  a1[20] = sub_1D8EEFE50;
  a1[21] = v9;
  a1[22] = sub_1D8EEFD48;
  a1[23] = v9;
  a1[24] = sub_1D8EEFD60;
  a1[25] = v10;
  a1[26] = sub_1D8EEFDBC;
  a1[27] = v10;
  a1[28] = sub_1D8EEFE54;
  a1[29] = v10;
  a1[30] = sub_1D8EEFD64;
  a1[31] = v10;
  a1[32] = sub_1D8EEF524;
  a1[33] = v17;
  a1[34] = sub_1D8EEF56C;
  a1[35] = v21;
  sub_1D8CFD9D8(v35, (a1 + 36));
  a1[41] = v23;
  v27 = v23;
  v28 = sub_1D8D688C4(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A0, &qword_1D91921E0);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 16) = v28;
  a1[42] = v29;
  v30 = sub_1D8D68C58(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A8, &unk_1D91921E8);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = v30;
  a1[43] = v31;
  v32 = sub_1D8D68E84(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  *(v33 + 16) = v32;

  a1[44] = v33;
  return result;
}

uint64_t sub_1D8EECF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  Trace.emit(event:)("DECODE", 6, 2, v7, v8);
  *a3 = v5;
  a3[1] = v6;
  type metadata accessor for ArtworkContent();
  swift_storeEnumTagMultiPayload();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  sub_1D8D752C4(v5, v6);
  return Trace.emit(event:)("DECODED", 7, 2, v9, v10);
}

uint64_t sub_1D8EED044@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  swift_getAtKeyPath();

  *a2 = v6;
  return result;
}

uint64_t sub_1D8EED0B8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, void, void, double), unint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v20 - v16;
  a5(a1, *a2, a2[1], v15);
  sub_1D8CF48EC(a6, a3, a4);
  v18 = sub_1D9177B1C();
  (*(v13 + 8))(v17, v12);
  return v18;
}

void sub_1D8EED1F0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock(v3 + 10);
  sub_1D8EEF490(&v3[4], &v4);
  os_unfair_lock_unlock(v3 + 10);
  *a2 = v4;
}

uint64_t sub_1D8EED258(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock(v2 + 10);
  sub_1D8EEF460(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 10);
  return v4;
}

void sub_1D8EED2B8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  os_unfair_lock_lock(v3 + 10);
  sub_1D8E51418(&v3[4]);
  os_unfair_lock_unlock(v3 + 10);
  if (v2)
  {
    __break(1u);
  }
}

void sub_1D8EED32C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock(v3 + 10);
  sub_1D8EEF4D8(&v3[4], a2);
  os_unfair_lock_unlock(v3 + 10);
}

uint64_t sub_1D8EED38C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock(v2 + 10);
  sub_1D8EEF4A8(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 10);
  return v4;
}

void sub_1D8EED3EC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  os_unfair_lock_lock(v3 + 10);
  sub_1D8E51328(&v3[4]);
  os_unfair_lock_unlock(v3 + 10);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_1D8EED460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a1 + 16);
  result = a3(0);
  if (*(v6 + 16))
  {
    v8 = (a2 + *(result + 24));
    v10 = *v8;
    v9 = v8[1];

    sub_1D8D33C70(v10, v9);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12 & 1;
  return result;
}

uint64_t sub_1D8EED4EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return sub_1D8E47CB8(v4, a2);
}

id sub_1D8EED528(uint64_t a1, void *a2, void (*a3)(uint64_t, double))
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(*a2 + qword_1EDCDE890, v8);
  v11 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v13 = [v11 fileExistsAtPath_];

  (*(v6 + 8))(v10, v5);
  return v13;
}

void *sub_1D8EED724@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8EDD9DC(a1);
  *a2 = result;
  return result;
}

void sub_1D8EED824(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  sub_1D8E4A4D0(v3, a2);
}

uint64_t sub_1D8EED938@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  Trace.emit(event:)("DECODE", 6, 2, v8, v9);
  v10 = ShazamSignatureRequest.decode(_:)(v6, v7);
  if (v3)
  {
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    Trace.emit(event:)("DECODE-FAILED", 13, 2, v11, v12);
    return swift_willThrow();
  }

  else
  {
    v14 = v10;
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    result = Trace.emit(event:)("DECODED", 7, 2, v15, v16);
    *a3 = v14;
  }

  return result;
}

uint64_t sub_1D8EEDA50(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, void, double), unint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  a5(a1, *a2, v14);
  sub_1D8CF48EC(a6, a3, a4);
  v17 = sub_1D9177B1C();
  sub_1D8D08A50(v16, a3, a4);
  return v17;
}

uint64_t sub_1D8EEDD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + v9);
  v12 = *(v4 + v10);
  v13 = *(v4 + v10 + 8);
  v14 = *(v4 + v10 + 16);

  return a4(a1, a2, v4 + v8, v11, v12, v13, v14, v4 + ((v9 + 39) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_9Tm(uint64_t (*a1)(void))
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1(0);
  v8 = (v6 + *(*(v7 - 8) + 80) + 8) & ~*(*(v7 - 8) + 80);
  v14 = *(*(v7 - 8) + 64);
  v9 = *(v4 + 8);
  v9(v1 + v5, v3);

  v10 = v1 + v8;
  if (!(*(v4 + 48))(v1 + v8, 1, v3))
  {
    v9(v1 + v8, v3);
  }

  v11 = *(v10 + *(v7 + 24) + 8);

  v12 = (v10 + *(v7 + 36));
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EEE0C8(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1D9176C2C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(a1(0) - 8);
  v8 = *(v2 + v6);
  v9 = v2 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return a2(v2 + v5, v8, v9);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm(uint64_t (*a1)(void))
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v16 = *(*(v7 - 8) + 64);
  v10 = *(v4 + 8);
  v10(v1 + v5, v3);

  v11 = v1 + v9;
  if (!(*(v4 + 48))(v1 + v9, 1, v3))
  {
    v10(v1 + v9, v3);
  }

  v12 = *(v11 + *(v7 + 24) + 8);

  v13 = (v11 + *(v7 + 36));
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = *(v1 + ((v16 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D8EEE414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(sub_1D9176C2C() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a3(0) - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v4 + v10);
  v14 = *(v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, v4 + v9, v13, v4 + v12, v14);
}

uint64_t sub_1D8EEE70C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D8EEE740()
{
  result = qword_1ECAB2648;
  if (!qword_1ECAB2648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB64E0, &qword_1D91927A8);
    sub_1D8CF48EC(&qword_1ECAB1CE0, &qword_1ECAB4988, &qword_1D918B0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2648);
  }

  return result;
}

uint64_t sub_1D8EEE81C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    os_unfair_lock_lock(v1 + 10);
    sub_1D8EEFD98(&v1[4]);
    os_unfair_lock_unlock(v1 + 10);
  }

  return result;
}

uint64_t sub_1D8EEE898()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    os_unfair_lock_lock(v1 + 10);
    sub_1D8EEFA84(&v1[4]);
    os_unfair_lock_unlock(v1 + 10);
  }

  return result;
}

uint64_t sub_1D8EEE914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ShazamSignatureRequest() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D9176C2C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D917734C() - 8);
  result = sub_1D8EE4B60(*a1, v2 + v6, (v2 + v9), v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)));
  *a2 = result;
  return result;
}

uint64_t sub_1D8EEEB58(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D917653C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a4(0) - 8);
  v15 = *a1;
  v16 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return a5(v15, v5 + v9, v5 + v12, v16);
}

uint64_t sub_1D8EEECFC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(a4(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *a1;

  return a5(v14, v5 + v9, v5 + v12, v13);
}

uint64_t sub_1D8EEEE4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8EE5E54(*a1, *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1D8EEEE7C()
{
  result = qword_1ECAB2650;
  if (!qword_1ECAB2650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6540, &qword_1D9192808);
    sub_1D8CF48EC(&qword_1ECAB1CE8, &qword_1ECAB4998, &qword_1D918B100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2650);
  }

  return result;
}

id sub_1D8EEEF48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8EE5F10(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1D8EEEFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a2, a1, v8);
}

uint64_t sub_1D8EEF090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTMLRequest() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D9176C2C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D917734C() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v16;
  v18[2] = *(a1 + 32);
  v19 = *(a1 + 48);
  result = sub_1D8EE54B8(v18, v2 + v6, (v2 + v9), v2 + v12, v2 + v15);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_134Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D8EEF2D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_1D917734C() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1D8EEF35C()
{
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917739C();
  __swift_project_value_buffer(v0, qword_1ECAB0FE8);
  log = sub_1D917737C();
  v1 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, log, v1, v3, "Loaded asset from URL", "", v2, 2u);
    MEMORY[0x1DA72CB90](v2, -1, -1);
  }
}

id sub_1D8EEF4F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8EDD4B4(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D8EEF5CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(type metadata accessor for ShazamSignatureRequest() - 8);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));
  result = ShazamSignatureRequest.decode(_:)(a1, a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1D8EEF65C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1, a1[1]);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t objectdestroy_243Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(v1 + 24);

  v6 = v1 + v3;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v1 + v3, 1, v7))
  {
    (*(v8 + 8))(v1 + v3, v7);
  }

  v9 = *(v6 + *(v2 + 24) + 8);

  v10 = (v6 + *(v2 + 36));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EEF814@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2(0) - 8);
  v7 = *(v3 + 24);
  result = (*(v3 + 16))(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  *a3 = result;
  return result;
}

uint64_t objectdestroy_246Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_249Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = v1 + v3;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v1 + v3, 1, v6))
  {
    (*(v7 + 8))(v1 + v3, v6);
  }

  v8 = *(v5 + *(v2 + 24) + 8);

  v9 = (v5 + *(v2 + 36));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EEFA84(uint64_t a1)
{
  v2 = *(a1 + 16);

  v4 = MEMORY[0x1E69E7CC8];
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1D8EEFAF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1D9176C2C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1D8EEB4B0(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

void sub_1D8EEFBA0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1D8EBFAB4(a1, *(v1 + 16));
}

void sub_1D8EEFBB4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D9176C2C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v8 + 271) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EEBD70(a1, a2, v2 + v6, v9, v2 + v8, v10);
}

SHCatalog_optional __swiftcall TranscriptData.catalog()()
{
  if (*(v0 + 64) == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    v2 = *v0;
  }

  v4 = v1;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t TranscriptData.transcriptModel()@<X0>(void *a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = v1[1];
    v4 = *(v1 + 16);
    v6 = v1[3];
    v5 = v1[4];
    v8 = v1[5];
    v7 = v1[6];
    if (*(v1 + 64) == 1)
    {
      v9 = *v1;
      sub_1D8D752C4(v6, v5);
    }

    else
    {
      v10 = v1[7];
      v11 = v1[5];
      v4 |= (*(v1 + 17) << 8) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 40);
      sub_1D8D752C4(v1[4], v11);
      v8 = v7;
      v7 = v10;
      v9 = v3;
      v3 = v4;
      LOBYTE(v4) = v6;
      v6 = v5;
      v5 = v11;
    }

    *a1 = v9;
    a1[1] = v3;
    a1[2] = v4 & 1;
    a1[3] = v6;
    a1[4] = v5;
    a1[5] = v8;
    a1[6] = v7;
  }

  else
  {
    a1[6] = 0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t _s18PodcastsFoundation14TranscriptDataO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v42 = a1[2];
  v43 = v3;
  v4 = a1[1];
  v40 = *a1;
  v41 = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  *&v45[32] = *(a2 + 32);
  *&v45[48] = v6;
  v7 = *(a2 + 16);
  *v45 = *a2;
  *&v45[16] = v7;
  v8 = a1[3];
  v47[2] = v42;
  v47[3] = v8;
  v47[0] = v40;
  v47[1] = v2;
  v50 = v5;
  v51 = *&v45[32];
  v52 = *(a2 + 48);
  v44 = *(a1 + 64);
  v46 = *(a2 + 64);
  v48 = *(a1 + 64);
  v53 = *(a2 + 64);
  v49 = *v45;
  if (!v44)
  {
    if (!v46)
    {
      sub_1D8D6F530();
      sub_1D8EC8878(v45, &v31);
      sub_1D8EC8878(&v40, &v31);
      v11 = sub_1D917914C();
LABEL_12:
      sub_1D8EF0464(v47);
      return v11 & 1;
    }

    goto LABEL_10;
  }

  v9 = v42;
  v10 = v43;
  if (v44 != 1)
  {
    if (v46 == 2)
    {
      v21 = *(&v40 + 1);
      v22 = v41;
      v23 = BYTE8(v41);
      v17 = *(&v41 + 5);
      v18 = BYTE7(v41);
      v16 = *(&v41 + 1);
      v12 = *(&v43 + 1);
      v20 = *&v45[8];
      v19 = v45[24];
      v13 = *&v45[32];
      v14 = *&v45[48];
      sub_1D8D6F530();
      sub_1D8EC8878(v45, &v31);
      sub_1D8EC8878(&v40, &v31);
      sub_1D8D752C4(v9, *(&v9 + 1));

      sub_1D8D752C4(v13, *(&v13 + 1));

      if (sub_1D917914C())
      {
        v31 = v21;
        v32 = v22;
        v33 = v16;
        v35 = (v16 | ((v17 | (v18 << 16)) << 32)) >> 48;
        v34 = (v16 | ((v17 | (v18 << 16)) << 32)) >> 32;
        v36 = v23 & 1;
        v37 = v9;
        v38 = v10;
        v39 = v12;
        v28 = v20;
        v29 = v19 & 1;
        *v30 = v13;
        *&v30[16] = v14;
        v11 = _s18PodcastsFoundation15TranscriptModelV2eeoiySbAC_ACtFZ_0(&v31, &v28);
        sub_1D8EF0464(v47);
        sub_1D8D7567C(v13, *(&v13 + 1));

        sub_1D8D7567C(v9, *(&v9 + 1));

        return v11 & 1;
      }

      sub_1D8D7567C(v13, *(&v13 + 1));

      sub_1D8D7567C(v9, *(&v9 + 1));

      goto LABEL_11;
    }

LABEL_10:
    sub_1D8EC8878(v45, &v31);
    sub_1D8EC8878(&v40, &v31);
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (v46 != 1)
  {
    goto LABEL_10;
  }

  v24 = *v45;
  v26 = *&v45[24];
  v28 = v40;
  v29 = v41 & 1;
  v30[0] = BYTE8(v41);
  *&v30[1] = *(&v41 + 9);
  v30[7] = (*(&v41 + 9) | ((*(&v41 + 13) | (HIBYTE(v41) << 16)) << 32)) >> 48;
  *&v30[5] = *(&v41 + 13);
  *&v30[8] = v42;
  *&v30[24] = v43;
  v25 = v45[16] & 1;
  v27 = *&v45[40];
  sub_1D8EC8878(v45, &v31);
  sub_1D8EC8878(&v40, &v31);
  sub_1D8EC8878(v45, &v31);
  sub_1D8EC8878(&v40, &v31);
  v11 = _s18PodcastsFoundation15TranscriptModelV2eeoiySbAC_ACtFZ_0(&v28, &v24);
  sub_1D8EF0464(v47);
  sub_1D8EC88D4(v45);
  sub_1D8EC88D4(&v40);
  return v11 & 1;
}