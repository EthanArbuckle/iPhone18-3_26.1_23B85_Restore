void sub_1D8CA7C2C(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 16);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_1D8CA7C80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (v3 && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = v5;
    v7 = v3;
    v8 = [v6 statusCode];
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v9 = sub_1D8CD7A04();
    __swift_project_value_buffer(v9, qword_1ED9C4008);
    v10 = v7;
    v11 = sub_1D8CD79E4();
    v12 = sub_1D8CD7E14();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v13 = 134218242;
      *(v13 + 4) = v8;
      *(v13 + 12) = 2080;
      v14 = [v6 debugDescription];
      v15 = sub_1D8CD7B04();
      v17 = v16;

      v18 = sub_1D8C9D088(v15, v17, &v33);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1D8C92000, v11, v12, "config request status code: %ld, response: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1DA727900](v32, -1, -1);
      MEMORY[0x1DA727900](v13, -1, -1);
    }

    if (v8 != 200)
    {
      sub_1D8CAD678();
      swift_allocError();
      *v19 = v8;
      *(v19 + 8) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v20 = qword_1ED9C4000;
    v21 = v3;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1D8CD7A04();
    __swift_project_value_buffer(v22, qword_1ED9C4008);
    sub_1D8CADCA0(v1, v2);
    v23 = v21;

    v24 = sub_1D8CD79E4();
    v25 = sub_1D8CD7E04();
    sub_1D8CADC38(v1, v2);

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
      v28 = sub_1D8CD7B64();
      v30 = sub_1D8C9D088(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D8C92000, v24, v25, "UNIDENTIFIED_RESPONSE_TYPE %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x1DA727900](v27, -1, -1);
      MEMORY[0x1DA727900](v26, -1, -1);
    }

    else
    {
    }

    sub_1D8CAD678();
    swift_allocError();
    *v31 = 4;
    *(v31 + 8) = 256;
    swift_willThrow();
  }
}

id sub_1D8CA8060()
{
  v12[4] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1D8CD7584();
  v11[0] = 0;
  v2 = [v0 JSONObjectWithData:v1 options:1 error:v11];

  v3 = v11[0];
  if (v2)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
    sub_1D8C9D24C(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
    if ((swift_dynamicCast() & 1) != 0 && (v2 = v10, v4 = _s20PegasusConfiguration0A25ConfigControllerInternalsV05cleanC7OfNullsySDySSypGSgAEFZ_0(v10), , v4))
    {
      v2 = sub_1D8CA85A4(v4);

      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }

    else
    {
      sub_1D8CAD678();
      swift_allocError();
      *v5 = 5;
      *(v5 + 8) = 256;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }
  }

  else
  {
    v6 = v3;
    v2 = sub_1D8CD7454();

    swift_willThrow();
    sub_1D8CAD678();
    swift_allocError();
    *v7 = v2;
    *(v7 + 8) = 149;
    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D8CA824C(void *a1)
{
  v1 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7A0, &qword_1D8CDD090);
  v3 = OUTLINED_FUNCTION_67();
  if (!v3)
  {
    return sub_1D8CD7444();
  }

  OUTLINED_FUNCTION_64(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, HIBYTE(v14));
  OUTLINED_FUNCTION_86();
  return v1;
}

uint64_t sub_1D8CA82C8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t _s20PegasusConfiguration0A25ConfigControllerInternalsV05cleanC7OfNullsySDySSypGSgAEFZ_0(uint64_t a1)
{
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
  v3[0] = a1;

  sub_1D8CA8868(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8CADF40(v4, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }
}

void sub_1D8CA83C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC828, &qword_1D8CD9678);
    v2 = sub_1D8CD80C4();
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
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_1D8C9785C(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1D8CA85A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC810, &qword_1D8CD9618);
    v2 = sub_1D8CD80C4();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1D8C9D24C(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1D8CAD7DC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1D8CAD7DC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1D8CAD7DC(v32, v33);
    v15 = *(v2 + 40);
    result = sub_1D8CD7F94();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_1D8CAD7DC(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D8CA8868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8C9D24C(a1, v20);
  sub_1D8C97460(0, &unk_1ED9C3BF0, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC838, &qword_1D8CD9680);
    if (swift_dynamicCast())
    {
      v5 = *(v19 + 16);
      if (v5)
      {
        v6 = v19 + 32;
        v7 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D8C9D24C(v6, v18);
          sub_1D8CA8868(&v15, v18);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
          if (v16)
          {
            sub_1D8CAD7DC(&v15, v17);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = *(v7 + 16);
              sub_1D8CC37B4();
              v7 = v10;
            }

            v8 = *(v7 + 16);
            if (v8 >= *(v7 + 24) >> 1)
            {
              sub_1D8CC37B4();
              v7 = v11;
            }

            *(v7 + 16) = v8 + 1;
            sub_1D8CAD7DC(v17, (v7 + 32 * v8 + 32));
          }

          else
          {
            sub_1D8CADF40(&v15, &qword_1ECAAC680, &qword_1D8CD8FB0);
          }

          v6 += 32;
          --v5;
        }

        while (v5);
      }

      else
      {

        v7 = MEMORY[0x1E69E7CC0];
      }

      *(a2 + 24) = v4;
      *a2 = v7;
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
      if (swift_dynamicCast())
      {
        v13 = sub_1D8CA8AC8(v18[0]);

        *(a2 + 24) = v12;
        *a2 = v13;
      }

      else
      {
        sub_1D8C9D24C(a1, a2);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t sub_1D8CA8AC8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1D8C9D24C(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];

    sub_1D8CA8868(&v28, &v35);
    if (v29)
    {
      sub_1D8CAD7DC(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_1D8CAD7DC(v33, v30);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        sub_1D8CACE7C(v16 + 1, 1);
        v2 = v39;
      }

      v17 = v31;
      v18 = *(v2 + 40);
      sub_1D8CD8254();
      sub_1D8CD7BD4();
      result = sub_1D8CD8284();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
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
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v17;
      sub_1D8CAD7DC(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {
      sub_1D8CADF40(&v34, &qword_1ECAAC840, &qword_1D8CD9688);
      result = sub_1D8CADF40(&v28, &qword_1ECAAC680, &qword_1D8CD8FB0);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D8CA8D80(uint64_t a1, void *a2, void *a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, int a6, uint64_t a7)
{
  v287 = a7;
  LODWORD(v299) = a6;
  v296 = a4;
  v294 = a3;
  v300 = a2;
  v293 = a1;
  v307[5] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v281 = &v276 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v285 = &v276 - v11;
  v298 = sub_1D8CD7674();
  v297 = *(v298 - 8);
  v12 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v295 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8CD7554();
  v301 = *(v14 - 8);
  v15 = *(v301 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v280 = &v276 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v279 = &v276 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v278 = &v276 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v290 = &v276 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v288 = &v276 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v282 = &v276 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v283 = &v276 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v286 = &v276 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v284 = &v276 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v289 = &v276 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v276 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v276 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D8CD8F50;
  v42 = [objc_opt_self() processInfo];
  v43 = [v42 globallyUniqueString];

  v44 = sub_1D8CD7B04();
  v46 = v45;

  v47 = MEMORY[0x1E69E6158];
  *(v41 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1D8C96E60();
  *(v41 + 32) = v44;
  *(v41 + 40) = v46;
  *(v41 + 96) = v47;
  *(v41 + 104) = v48;
  *(v41 + 64) = v48;
  *(v41 + 72) = 0x73696C702E676162;
  *(v41 + 80) = 0xE900000000000074;
  v49 = sub_1D8CD7B34();
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC7B8, &unk_1D8CD95A0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();

  v302 = sub_1D8CACB10(v55, 6, 0);
  sub_1D8C97460(0, &unk_1ED9C3C00, 0x1E695DFF8);
  v56 = NSTemporaryDirectory();
  sub_1D8CD7B04();

  v57 = sub_1D8CAB064();
  v58 = sub_1D8CD7AD4();
  v59 = [v57 URLByAppendingPathComponent_];

  if (!v59)
  {
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v87 = sub_1D8CD7A04();
    __swift_project_value_buffer(v87, qword_1ED9C4008);

    v88 = sub_1D8CD79E4();
    v89 = sub_1D8CD7E24();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v307[0] = v91;
      *v90 = 136315138;
      v92 = sub_1D8C9D088(v49, v51, v307);

      *(v90 + 4) = v92;
      _os_log_impl(&dword_1D8C92000, v88, v89, "error creating temporary config file: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x1DA727900](v91, -1, -1);
      MEMORY[0x1DA727900](v90, -1, -1);
    }

    else
    {
    }

    sub_1D8CAD788();
    v119 = swift_allocError();
    *v120 = 6;
    sub_1D8CACB64(v119);

    goto LABEL_26;
  }

  sub_1D8CD74E4();

  sub_1D8C97460(0, &unk_1ED9C3C10, 0x1E695DFC0);
  v60 = v301;
  v61 = v301 + 16;
  v291 = *(v301 + 16);
  v291(v38, v40, v14);
  v62 = sub_1D8CAB1D4(v38, 0);
  v292 = v40;
  if (!v62)
  {
    v93 = v40;
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v94 = sub_1D8CD7A04();
    __swift_project_value_buffer(v94, qword_1ED9C4008);
    v95 = v290;
    v291(v290, v40, v14);
    v96 = sub_1D8CD79E4();
    v97 = sub_1D8CD7E24();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v307[0] = v99;
      *v98 = 136315138;
      v100 = sub_1D8CD7494();
      v102 = v101;
      v103 = *(v60 + 8);
      v103(v95, v14);
      v104 = sub_1D8C9D088(v100, v102, v307);

      *(v98 + 4) = v104;
      _os_log_impl(&dword_1D8C92000, v96, v97, "error opening config cache output stream: %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      MEMORY[0x1DA727900](v99, -1, -1);
      v105 = v98;
      v93 = v292;
      MEMORY[0x1DA727900](v105, -1, -1);
    }

    else
    {

      v103 = *(v60 + 8);
      v103(v95, v14);
    }

    sub_1D8CAD788();
    v121 = swift_allocError();
    *v122 = 3;
    sub_1D8CACB64(v121);

    v103(v93, v14);

    goto LABEL_26;
  }

  v63 = v62;
  v276 = v61;
  v290 = v14;
  [v62 open];
  *&v305 = 0xD000000000000012;
  *(&v305 + 1) = 0x80000001D8CDDB80;
  v64 = v293;

  sub_1D8CD7FB4();
  v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v66 = sub_1D8C97460(0, &qword_1ED9C5510, 0x1E696AD98);
  v277 = v63;
  v67 = v66;
  v306 = v66;
  *&v305 = v65;
  sub_1D8CAD7DC(&v305, &v304);
  swift_isUniquelyReferenced_nonNull_native();
  v303 = v64;
  sub_1D8CB4908(&v304, v307);
  v68 = v303;
  sub_1D8CAD7EC(v307);
  strcpy(&v305, "__expiration");
  BYTE13(v305) = 0;
  HIWORD(v305) = -5120;
  sub_1D8CD7FB4();
  v69 = v295;
  sub_1D8CD75F4();
  sub_1D8CD7624();
  v71 = v70;
  v72 = *(v297 + 8);
  v73 = v298;
  v72(v69, v298);
  v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v306 = v67;
  *&v305 = v74;
  sub_1D8CAD7DC(&v305, &v304);
  swift_isUniquelyReferenced_nonNull_native();
  v303 = v68;
  sub_1D8CB4908(&v304, v307);
  v75 = v303;
  sub_1D8CAD7EC(v307);
  strcpy(&v305, "__bagurl");
  BYTE9(v305) = 0;
  WORD5(v305) = 0;
  HIDWORD(v305) = -402653184;
  sub_1D8CD7FB4();
  v306 = v47;
  *&v305 = v294;
  *(&v305 + 1) = v296;
  sub_1D8CAD7DC(&v305, &v304);

  swift_isUniquelyReferenced_nonNull_native();
  v303 = v75;
  sub_1D8CB4908(&v304, v307);
  v76 = v303;
  sub_1D8CAD7EC(v307);
  *&v305 = 0xD000000000000011;
  *(&v305 + 1) = 0x80000001D8CDDB60;
  sub_1D8CD7FB4();
  sub_1D8CD7664();
  sub_1D8CD7624();
  v78 = v77;
  v72(v69, v73);
  v79 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v306 = v67;
  *&v305 = v79;
  sub_1D8CAD7DC(&v305, &v304);
  swift_isUniquelyReferenced_nonNull_native();
  v303 = v76;
  sub_1D8CB4908(&v304, v307);
  sub_1D8CAD7EC(v307);
  if ((v299 & 1) == 0)
  {
    v106 = v277;
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v107 = sub_1D8CD7A04();
    __swift_project_value_buffer(v107, qword_1ED9C4008);
    v108 = sub_1D8CD79E4();
    v109 = sub_1D8CD7E44();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v301;
    if (v110)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_1D8C92000, v108, v109, "skipped saving config because flag is disabled", v112, 2u);
      MEMORY[0x1DA727900](v112, -1, -1);
    }

    v113 = objc_opt_self();
    v114 = sub_1D8CD7A54();

    v307[0] = 0;
    v115 = [v113 dataWithPropertyList:v114 format:200 options:0 error:v307];

    v116 = v307[0];
    if (v115)
    {
      v117 = sub_1D8CD7594();

      v118 = v292;
      sub_1D8CAB0D8(v300);

      (*(v111 + 8))(v118, v290);
      goto LABEL_27;
    }

    v124 = v116;
    v125 = sub_1D8CD7454();

    swift_willThrow();
    v126 = v125;
    v127 = sub_1D8CD79E4();
    v128 = sub_1D8CD7E24();

    v129 = os_log_type_enabled(v127, v128);
    v130 = v290;
    v131 = v300;
    if (v129)
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v132 = 138412290;
      v134 = v125;
      v135 = _swift_stdlib_bridgeErrorToNSError();
      *(v132 + 4) = v135;
      *v133 = v135;
      _os_log_impl(&dword_1D8C92000, v127, v128, "error formatting config %@", v132, 0xCu);
      sub_1D8CADF40(v133, &unk_1ECAACEE0, &qword_1D8CD9C30);
      MEMORY[0x1DA727900](v133, -1, -1);
      MEMORY[0x1DA727900](v132, -1, -1);
    }

    sub_1D8CACB64(v125);
    v136 = v292;
    sub_1D8CAB0D8(v131);

    (*(v111 + 8))(v136, v130);
LABEL_26:
    v117 = 0;
    goto LABEL_27;
  }

  v80 = objc_opt_self();
  v81 = sub_1D8CD7A54();

  v82 = v277;
  v83 = [v80 writePropertyList:v81 toStream:v277 format:200 options:0 error:0];

  [v82 close];
  sub_1D8C97460(0, &qword_1ED9C4130, 0x1E696AC00);
  v84 = v289;
  v85 = v292;
  v86 = v290;
  v291(v289, v292, v290);
  v123 = sub_1D8CAB278(v84);
  v139 = sub_1D8CCF4A4();
  v298 = v140;

  v141 = v285;
  sub_1D8C979F0(v287, v285, &qword_1ECAAC668, &qword_1D8CD8FA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v141, 1, v86);
  v299 = v139;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D8CADF40(v141, &qword_1ECAAC668, &qword_1D8CD8FA0);
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v143 = sub_1D8CD7A04();
    __swift_project_value_buffer(v143, qword_1ED9C4008);
    v144 = sub_1D8CD79E4();
    v145 = sub_1D8CD7E24();
    v146 = os_log_type_enabled(v144, v145);
    v147 = v300;
    if (v146)
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&dword_1D8C92000, v144, v145, "error getting pathToCache for config.plist", v148, 2u);
      MEMORY[0x1DA727900](v148, -1, -1);
    }

    sub_1D8CAD788();
    v149 = swift_allocError();
    *v150 = 8;
    sub_1D8CACB64(v149);

    sub_1D8CAB0D8(v147);

    (*(v301 + 8))(v85, v86);
    v117 = v299;
    goto LABEL_27;
  }

  v151 = *(v301 + 32);
  v152 = v284;
  v297 = v301 + 32;
  v296 = v151;
  v151(v284, v141, v86);
  sub_1D8CD74D4();
  sub_1D8CD7494();
  v153 = sub_1D8CD7AD4();

  v154 = v300;
  v155 = [v300 fileExistsAtPath_];

  if ((v155 & 1) == 0)
  {
    v156 = sub_1D8CD74A4();
    v307[0] = 0;
    v157 = [v154 createDirectoryAtURL:v156 withIntermediateDirectories:1 attributes:0 error:v307];

    if (v157)
    {
      v158 = v307[0];
    }

    else
    {
      v159 = v307[0];
      v160 = sub_1D8CD7454();

      swift_willThrow();
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v161 = sub_1D8CD7A04();
      __swift_project_value_buffer(v161, qword_1ED9C4008);
      v162 = v160;
      v163 = sub_1D8CD79E4();
      v164 = sub_1D8CD7E24();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = v82;
        v167 = swift_slowAlloc();
        *v165 = 138412290;
        v168 = v160;
        v169 = _swift_stdlib_bridgeErrorToNSError();
        *(v165 + 4) = v169;
        *v167 = v169;
        _os_log_impl(&dword_1D8C92000, v163, v164, "error creating pegasus configd cache folder: %@", v165, 0xCu);
        sub_1D8CADF40(v167, &unk_1ECAACEE0, &qword_1D8CD9C30);
        v170 = v167;
        v82 = v166;
        v152 = v284;
        MEMORY[0x1DA727900](v170, -1, -1);
        MEMORY[0x1DA727900](v165, -1, -1);
      }

      sub_1D8CACB64(v160);
    }

    v154 = v300;
  }

  v171 = sub_1D8CD74A4();
  v307[0] = 0;
  v172 = [v154 removeItemAtURL:v171 error:v307];

  if (v172)
  {
    v173 = v307[0];
  }

  else
  {
    v174 = v307[0];
    v175 = sub_1D8CD7454();

    swift_willThrow();
  }

  v117 = v299;
  v176 = sub_1D8CD74A4();
  v177 = sub_1D8CD74A4();
  v307[0] = 0;
  v178 = [v300 copyItemAtURL:v176 toURL:v177 error:v307];

  v179 = v307[0];
  if (v178)
  {
    sub_1D8CACB38(v83);
    v180 = v179;
LABEL_53:
    v205 = v292;
    goto LABEL_54;
  }

  v181 = v152;
  v182 = v307[0];
  v183 = sub_1D8CD7454();

  swift_willThrow();
  if (qword_1ED9C4000 != -1)
  {
    swift_once();
  }

  v184 = sub_1D8CD7A04();
  __swift_project_value_buffer(v184, qword_1ED9C4008);
  v185 = v278;
  v186 = v291;
  v291(v278, v292, v86);
  v187 = v279;
  v186(v279, v181, v86);
  v188 = v183;
  v189 = sub_1D8CD79E4();
  v190 = sub_1D8CD7E24();

  if (!os_log_type_enabled(v189, v190))
  {

    v206 = *(v301 + 8);
    v206(v187, v86);
    v206(v185, v86);
    v117 = v299;
    v152 = v181;
    goto LABEL_53;
  }

  v191 = swift_slowAlloc();
  v294 = swift_slowAlloc();
  v295 = swift_slowAlloc();
  v307[0] = v295;
  *v191 = 136315650;
  LODWORD(v293) = v190;
  v192 = sub_1D8CD7494();
  v194 = v193;
  v195 = *(v301 + 8);
  v195(v185, v290);
  v196 = sub_1D8C9D088(v192, v194, v307);

  *(v191 + 4) = v196;
  *(v191 + 12) = 2080;
  v197 = sub_1D8CD7494();
  v199 = v198;
  v195(v187, v290);
  v86 = v290;
  v200 = sub_1D8C9D088(v197, v199, v307);
  v82 = v277;
  v152 = v284;

  *(v191 + 14) = v200;
  *(v191 + 22) = 2112;
  v201 = v183;
  v202 = _swift_stdlib_bridgeErrorToNSError();
  *(v191 + 24) = v202;
  v203 = v294;
  *v294 = v202;
  _os_log_impl(&dword_1D8C92000, v189, v293, "error copying config from %s to %s: %@", v191, 0x20u);
  sub_1D8CADF40(v203, &unk_1ECAACEE0, &qword_1D8CD9C30);
  MEMORY[0x1DA727900](v203, -1, -1);
  v204 = v295;
  swift_arrayDestroy();
  MEMORY[0x1DA727900](v204, -1, -1);
  v205 = v292;
  MEMORY[0x1DA727900](v191, -1, -1);

  v117 = v299;
LABEL_54:
  v207 = sub_1D8CD74A4();
  v307[0] = 0;
  v208 = v300;
  v209 = [v300 removeItemAtURL:v207 error:v307];

  v210 = v283;
  if (v209)
  {
    v211 = v307[0];
  }

  else
  {
    v212 = v205;
    v213 = v307[0];
    v214 = sub_1D8CD7454();

    swift_willThrow();
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v215 = sub_1D8CD7A04();
    __swift_project_value_buffer(v215, qword_1ED9C4008);
    v216 = v280;
    v291(v280, v212, v86);
    v217 = v214;
    v218 = sub_1D8CD79E4();
    v219 = sub_1D8CD7E24();

    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      v221 = v82;
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v307[0] = v223;
      *v220 = 136315394;
      v224 = sub_1D8CD7494();
      v226 = v225;
      (*(v301 + 8))(v216, v290);
      v227 = sub_1D8C9D088(v224, v226, v307);
      v210 = v283;

      *(v220 + 4) = v227;
      *(v220 + 12) = 2112;
      v228 = v214;
      v229 = _swift_stdlib_bridgeErrorToNSError();
      *(v220 + 14) = v229;
      *v222 = v229;
      _os_log_impl(&dword_1D8C92000, v218, v219, "error removing temporary config from %s: %@", v220, 0x16u);
      sub_1D8CADF40(v222, &unk_1ECAACEE0, &qword_1D8CD9C30);
      v230 = v222;
      v82 = v221;
      v152 = v284;
      MEMORY[0x1DA727900](v230, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v223);
      v231 = v223;
      v86 = v290;
      MEMORY[0x1DA727900](v231, -1, -1);
      v232 = v220;
      v208 = v300;
      v205 = v292;
      MEMORY[0x1DA727900](v232, -1, -1);

      v117 = v299;
    }

    else
    {

      (*(v301 + 8))(v216, v86);
      v117 = v299;
      v205 = v212;
      v210 = v283;
    }
  }

  v233 = type metadata accessor for LocalCachePaths(0);
  v234 = v281;
  sub_1D8C979F0(v287 + *(v233 + 20), v281, &qword_1ECAAC668, &qword_1D8CD8FA0);
  if (__swift_getEnumTagSinglePayload(v234, 1, v86) == 1)
  {
    v235 = *(v301 + 8);
    v235(v286, v86);
    v235(v152, v86);
    sub_1D8CADF40(v234, &qword_1ECAAC668, &qword_1D8CD8FA0);
  }

  else
  {
    v296(v210, v234, v86);
    sub_1D8CD74D4();
    sub_1D8CD7494();
    v236 = sub_1D8CD7AD4();

    v237 = [v208 fileExistsAtPath_];

    if ((v237 & 1) == 0)
    {
      v238 = sub_1D8CD74A4();
      v307[0] = 0;
      v239 = [v208 createDirectoryAtURL:v238 withIntermediateDirectories:1 attributes:0 error:v307];

      if (v239)
      {
        v240 = v307[0];
      }

      else
      {
        v241 = v307[0];
        v242 = sub_1D8CD7454();

        swift_willThrow();
        if (qword_1ED9C4000 != -1)
        {
          swift_once();
        }

        v243 = sub_1D8CD7A04();
        __swift_project_value_buffer(v243, qword_1ED9C4008);
        v244 = v242;
        v245 = sub_1D8CD79E4();
        v246 = sub_1D8CD7E24();

        if (os_log_type_enabled(v245, v246))
        {
          v247 = v208;
          v248 = swift_slowAlloc();
          v249 = swift_slowAlloc();
          *v248 = 138412290;
          v250 = v242;
          v251 = _swift_stdlib_bridgeErrorToNSError();
          *(v248 + 4) = v251;
          *v249 = v251;
          _os_log_impl(&dword_1D8C92000, v245, v246, "error creating bag copy folder: %@", v248, 0xCu);
          sub_1D8CADF40(v249, &unk_1ECAACEE0, &qword_1D8CD9C30);
          v252 = v249;
          v117 = v299;
          MEMORY[0x1DA727900](v252, -1, -1);
          v253 = v248;
          v208 = v247;
          v205 = v292;
          MEMORY[0x1DA727900](v253, -1, -1);
        }

        else
        {
        }
      }
    }

    v254 = sub_1D8CD74A4();
    v307[0] = 0;
    v255 = [v208 removeItemAtURL:v254 error:v307];

    if (v255)
    {
      v256 = v307[0];
    }

    else
    {
      v257 = v307[0];
      v258 = sub_1D8CD7454();

      swift_willThrow();
    }

    v259 = sub_1D8CD74A4();
    v260 = sub_1D8CD74A4();
    v307[0] = 0;
    v261 = [v208 copyItemAtURL:v259 toURL:v260 error:v307];

    if (v261)
    {
      v235 = *(v301 + 8);
      v262 = v307[0];
      v235(v282, v86);
      v235(v210, v86);
      v235(v286, v86);
      v235(v152, v86);
      v117 = v299;
    }

    else
    {
      v263 = v307[0];
      v264 = sub_1D8CD7454();

      swift_willThrow();
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v265 = sub_1D8CD7A04();
      __swift_project_value_buffer(v265, qword_1ED9C4008);
      v266 = v264;
      v267 = sub_1D8CD79E4();
      v268 = sub_1D8CD7E24();

      if (os_log_type_enabled(v267, v268))
      {
        v269 = v208;
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *v270 = 138412290;
        v272 = v264;
        v273 = _swift_stdlib_bridgeErrorToNSError();
        *(v270 + 4) = v273;
        *v271 = v273;
        _os_log_impl(&dword_1D8C92000, v267, v268, "Copy bag to location failed with error: %@", v270, 0xCu);
        sub_1D8CADF40(v271, &unk_1ECAACEE0, &qword_1D8CD9C30);
        v274 = v271;
        v117 = v299;
        MEMORY[0x1DA727900](v274, -1, -1);
        v275 = v270;
        v208 = v269;
        v205 = v292;
        MEMORY[0x1DA727900](v275, -1, -1);
      }

      v235 = *(v301 + 8);
      v235(v282, v86);
      v235(v210, v86);
      v235(v286, v86);
      v235(v152, v86);
    }
  }

  sub_1D8CAB0D8(v208);

  v235(v205, v86);
LABEL_27:
  v137 = *MEMORY[0x1E69E9840];
  return v117;
}

id sub_1D8CAB064()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D8CD7AD4();

  v2 = [v0 initFileURLWithPath_];

  return v2;
}

void sub_1D8CAB0D8(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8CD74A4();
  v9[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v9];

  v3 = v9[0];
  if (a1)
  {
    v4 = *MEMORY[0x1E69E9840];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_1D8CD7454();

    swift_willThrow();
    v8 = *MEMORY[0x1E69E9840];
  }
}

id sub_1D8CAB1D4(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D8CD74A4();
  v6 = [v4 initWithURL:v5 append:a2 & 1];

  v7 = sub_1D8CD7554();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id sub_1D8CAB278(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8CD74A4();
  v14[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v14];

  v4 = v14[0];
  if (v3)
  {
    v5 = sub_1D8CD7554();
    OUTLINED_FUNCTION_8(v5);
    v7 = *(v6 + 8);
    v8 = v4;
    v7(a1, v5);
  }

  else
  {
    v9 = v14[0];
    sub_1D8CD7454();

    swift_willThrow();
    v10 = sub_1D8CD7554();
    OUTLINED_FUNCTION_8(v10);
    (*(v11 + 8))(a1);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1D8CAB3C0()
{
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  result = sub_1D8CD7EC4();
  qword_1ED9C3FD8 = result;
  return result;
}

uint64_t sub_1D8CAB494(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(id))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  OUTLINED_FUNCTION_41(v6, a3);
  if (qword_1ED9C3FD0 != -1)
  {
    swift_once();
  }

  return a4(qword_1ED9C3FD8);
}

unint64_t sub_1D8CAB534()
{
  result = qword_1ECAAC688;
  if (!qword_1ECAAC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShouldThrottleConfigFetchResultReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShouldThrottleConfigFetchResultReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ShouldThrottleConfigFetchResult(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_1D8CAB79C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D8CAB7B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_1D8CAB8C4()
{
  sub_1D8CAB930();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D8CAB930()
{
  if (!qword_1ED9C4048)
  {
    sub_1D8CD7554();
    v0 = sub_1D8CD7ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9C4048);
    }
  }
}

uint64_t sub_1D8CAB9D4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1D8CD7ED4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusConfigControllerInternals(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PegasusConfigControllerInternals(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D8CABC08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8CABC48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8CABCA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8CABCC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D8CABD10()
{
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  result = sub_1D8CD7EC4();
  qword_1ED9C3D98 = result;
  return result;
}

uint64_t sub_1D8CABD80()
{
  v0 = sub_1D8CD7674();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D8CD77C4();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D8CD7434();
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD77A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC820, "Fl");
  v11 = sub_1D8CD77B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D8CD8F50;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E6969A58], v11);
  v17(v16 + v13, *MEMORY[0x1E6969A88], v11);
  sub_1D8CD2420(v15);
  sub_1D8CD7654();
  sub_1D8CD7784();

  (*(v30 + 8))(v3, v31);
  (*(v4 + 8))(v7, v28);
  v18 = sub_1D8CD73F4();
  if (v19)
  {
    (*(v27 + 8))(v10, v29);
    return -1;
  }

  v20 = v18;
  v21 = sub_1D8CD7414();
  v23 = v22;
  result = (*(v27 + 8))(v10, v29);
  if (v23)
  {
    return -1;
  }

  v25 = 100 * v20;
  if ((v20 * 100) >> 64 != (100 * v20) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = v25 + v21;
  if (__OFADD__(v25, v21))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_1D8CAC0F4(void *a1)
{
  v2 = *(*v1 + 472);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;
}

uint64_t sub_1D8CAC144(uint64_t a1, int a2)
{
  v3 = v2;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v34 = sub_1D8CD7674();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  v37 = qword_1ED9C3D70;
  v38 = off_1ED9C3D78;
  v41 = 45;
  v42 = 0xE100000000000000;
  v39 = 95;
  v40 = 0xE100000000000000;
  sub_1D8C94EC8();
  sub_1D8CD7F44();

  *(v2 + 88) = sub_1D8CD7EC4();
  v15 = *(*v2 + 136);
  v16 = sub_1D8CD7964();
  __swift_storeEnumTagSinglePayload(v3 + v15, 1, 1, v16);
  v17 = *(*v3 + 19);
  type metadata accessor for Locker();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  *(v3 + v17) = v18;
  sub_1D8CD7664();
  v20 = v14;
  v21 = v35;
  (*(v11 + 32))(v3 + *(*v3 + 18), v20, v34);
  swift_weakAssign();
  *(v3 + 80) = v21;
  v22 = v3[11];

  sub_1D8CD7934();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  v23 = *(*v3 + 17);
  swift_beginAccess();
  sub_1D8C974F4(v10, v3 + v23);
  swift_endAccess();
  v37 = v3;

  v24 = sub_1D8CD7B64();
  v26 = v25;
  v27 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v27);
  sub_1D8C97564(a1, v24, v26, v3, &off_1F5454760);

  os_unfair_lock_unlock(v27);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(v3, &off_1F5454760, ObjectType, v28);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v30 = v36;
  sub_1D8C979F0(v3 + v23, v36, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  result = __swift_getEnumTagSinglePayload(v30, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v3[11];
    sub_1D8CD7E64();
    sub_1D8CCA9C8(v21);
    sub_1D8CD7924();

    (*(*(v16 - 8) + 8))(v30, v16);
    return v3;
  }

  return result;
}

uint64_t sub_1D8CAC614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v46 = a4;
  v47 = a6;
  v44 = a5;
  v45 = a3;
  v48 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43[-v14];
  v16 = sub_1D8CD7674();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x1E69E7CC0];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  v49 = 0xD000000000000010;
  v50 = 0x80000001D8CDDBC0;
  v53 = 45;
  v54 = 0xE100000000000000;
  v51 = 95;
  v52 = 0xE100000000000000;
  v42 = sub_1D8C94EC8();
  sub_1D8CD7F44();
  *(v6 + 96) = sub_1D8CD7EC4();
  v21 = *(*v6 + 136);
  v22 = sub_1D8CD7964();
  __swift_storeEnumTagSinglePayload(v7 + v21, 1, 1, v22);
  v23 = *(*v7 + 19);
  type metadata accessor for Locker();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *v25 = 0;
  *(v7 + v23) = v24;
  sub_1D8CD7664();
  v26 = v20;
  v27 = v48;
  (*(v17 + 32))(v7 + *(*v7 + 18), v26, v16);
  swift_weakAssign();
  v7[10] = v27;
  v28 = v7[12];

  sub_1D8CD7934();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  v29 = *(*v7 + 17);
  swift_beginAccess();
  sub_1D8C974F4(v15, v7 + v29);
  swift_endAccess();
  v49 = v7;

  v30 = sub_1D8CD7B64();
  v32 = v31;
  v33 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v33);
  sub_1D8C97564(a1, v30, v32, v7, &off_1F5454760);

  os_unfair_lock_unlock(v33);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v34 + 8))(v7, &off_1F5454760, ObjectType, v34);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1D8C979F0(v7 + v29, v13, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  result = __swift_getEnumTagSinglePayload(v13, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v7[12];
    v38 = sub_1D8CD7E64();
    v39 = sub_1D8C97B40(v27);
    LOBYTE(v42) = v44;
    sub_1D8C980C0(v38, v37, v39, v40, v41, v13, v45, v46, v42, v47);

    (*(*(v22 - 8) + 8))(v13, v22);
    return v7;
  }

  return result;
}

uint64_t sub_1D8CACB10(uint64_t a1, int a2, uint64_t a3)
{
  *(v3 + qword_1ED9C3EB8) = 0;
  *(v3 + *(*v3 + 472)) = a3;
  return sub_1D8CAC144(a1, a2);
}

uint64_t sub_1D8CACB38(uint64_t result)
{
  v2 = *(*v1 + 472);
  v3 = *(v1 + v2);
  v4 = __OFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
  }

  return result;
}

void sub_1D8CACB64(void *a1)
{
  v2 = *(v1 + qword_1ED9C3EB8);
  *(v1 + qword_1ED9C3EB8) = a1;
  v3 = a1;
}

uint64_t sub_1D8CACBA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_slowAlloc();
  *(v1 + 24) = v2;
  *v2 = 0;
  return v1;
}

uint64_t sub_1D8CACBD8(uint64_t a1, uint64_t a2)
{
  v3 = os_transaction_create();
  v4 = *(a2 + 72);
  *(a2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8CACC24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8CAD40C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8CACC4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D8CD7AD4();

  *a2 = v5;
  return result;
}

uint64_t sub_1D8CACC94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8CACCC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8CACCC4(uint64_t a1)
{
  v2 = sub_1D8C9D040(&qword_1ECAAC778, type metadata accessor for BMStreamIdentifier);
  v3 = sub_1D8C9D040(&unk_1ECAAC780, type metadata accessor for BMStreamIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8CACE28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D8CAD1C4();
}

uint64_t sub_1D8CACE7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC848, &unk_1D8CD9690);
  v36 = a2;
  result = sub_1D8CD80B4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1D8CCC0B8(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_1D8CAD7DC(v23, v37);
    }

    else
    {
      sub_1D8C9D24C(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_1D8CD8254();
    sub_1D8CD7BD4();
    result = sub_1D8CD8284();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_1D8CAD7DC(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

id sub_1D8CAD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D8CD7AD4();

  v7 = sub_1D8CD7AD4();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_1D8CAD1C4()
{
  v0 = sub_1D8CD7B04();
  v2 = v1;
  if (v0 == sub_1D8CD7B04() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D8CD8154();
  }

  return v5 & 1;
}

uint64_t sub_1D8CAD248()
{
  sub_1D8CD7B04();
  sub_1D8CD7BD4();
}

uint64_t sub_1D8CAD29C()
{
  sub_1D8CD7B04();
  sub_1D8CD8254();
  sub_1D8CD7BD4();
  v0 = sub_1D8CD8284();

  return v0;
}

uint64_t sub_1D8CAD314(uint64_t a1, id *a2)
{
  result = sub_1D8CD7AE4();
  *a2 = 0;
  return result;
}

uint64_t sub_1D8CAD38C(uint64_t a1, id *a2)
{
  v3 = sub_1D8CD7AF4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D8CAD40C()
{
  sub_1D8CD7B04();
  v0 = sub_1D8CD7AD4();

  return v0;
}

uint64_t sub_1D8CAD444()
{
  v0 = sub_1D8CD7B04();
  v1 = MEMORY[0x1DA726AC0](v0);

  return v1;
}

uint64_t sub_1D8CAD47C()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_0(v1);

  return sub_1D8CA6824(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D8CAD510()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_0(v1);

  return sub_1D8CA6B84(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_84Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_56();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1D8CAD5E4()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_0(v1);

  return sub_1D8CA5E14(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1D8CAD678()
{
  result = qword_1ECAAC5D8;
  if (!qword_1ECAAC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC5D8);
  }

  return result;
}

uint64_t sub_1D8CAD720(uint64_t result, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_1D8CAD730(result, a2, a3 & 0x7F);
  }

  return result;
}

uint64_t sub_1D8CAD730(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D8CAD748(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8CAD75C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D8CAD75C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D8CAD774(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8CAD730(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1D8CAD788()
{
  result = qword_1ECAAC7C8;
  if (!qword_1ECAAC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC7C8);
  }

  return result;
}

_OWORD *sub_1D8CAD7DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D8CAD840()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16(v3);
  *v4 = v5;
  v4[1] = sub_1D8CAD8E0;

  return sub_1D8CA14D4();
}

uint64_t sub_1D8CAD8E0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

void sub_1D8CAD9C0(id a1, unsigned int a2, char a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0xFFFFFFFE | (a2 >> 7) & 1) == 1)
  {
  }
}

uint64_t sub_1D8CAD9E0()
{
  OUTLINED_FUNCTION_22();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D8CADAA0;

  return sub_1D8CA39B4(v2, v3, v0 + 32, v4, v5, v6);
}

uint64_t sub_1D8CADAA0()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_15();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  OUTLINED_FUNCTION_31();

  return v9(v4, v2);
}

unint64_t sub_1D8CADB98()
{
  result = qword_1ECAAC7E8;
  if (!qword_1ECAAC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC7E8);
  }

  return result;
}

uint64_t sub_1D8CADBEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_38();
  v9(v8);
  return v4;
}

uint64_t sub_1D8CADC38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D8CADCA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D8CADCF8()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v5[1] = sub_1D8CAD8E0;
  OUTLINED_FUNCTION_70();

  return sub_1D8CA3374(v7, v8, v9, v10, v11);
}

uint64_t sub_1D8CADDA4()
{
  OUTLINED_FUNCTION_10();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D8CADE30;

  return sub_1D8CA0D90(v0);
}

uint64_t sub_1D8CADE30()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  OUTLINED_FUNCTION_31();
  v5 = OUTLINED_FUNCTION_33();

  return v6(v5);
}

uint64_t sub_1D8CADF40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D8CADFF0()
{
  sub_1D8CD7674();
  if (v0 <= 0x3F)
  {
    sub_1D8CAE220(319, &qword_1ECAAC498, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D8CAE220(319, &qword_1ECAAC4A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20PegasusConfiguration0A16ConfigFetchErrorO(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) >> 7;
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1D8CAE108(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1FE && *(a1 + 10))
    {
      v2 = *a1 + 509;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 7) | (2 * *(a1 + 9))) ^ 0x1FF;
      if (v2 >= 0x1FD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D8CAE154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FD)
  {
    *(result + 8) = 0;
    *result = a2 - 510;
    if (a3 >= 0x1FE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = __PAIR16__((-128 * a2) >> 24, a2 << 7);
    }
  }

  return result;
}

uint64_t sub_1D8CAE1B8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x7F | (a2 << 7);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
  }

  *(result + 9) = a2 > 1;
  return result;
}

void sub_1D8CAE220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void OUTLINED_FUNCTION_28(uint64_t a1@<X8>)
{
  v2 = *(a1 + 216);

  sub_1D8CA5B0C(sub_1D8CA77DC);
}

void OUTLINED_FUNCTION_34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

__n128 OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 208) = a1;
  *(v10 + 16) = v13;
  *(v10 + 24) = v12;
  *(v10 + 32) = v9;
  *(v10 + 40) = a9;
  *(v10 + 56) = v11;
  result = v14[3];
  *(v10 + 64) = result;
  return result;
}

void OUTLINED_FUNCTION_43()
{
  v2 = *(v0 + 192);
  v7 = *(v0 + 176);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  *(v0 + 200) = *(*(v0 + 144) + 200);

  sub_1D8C96BF0();
}

uint64_t OUTLINED_FUNCTION_44()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
}

BOOL OUTLINED_FUNCTION_48(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_53(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_61(uint64_t result, uint64_t a2)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = v2;
  *(v4 + 88) = result;
  *(v4 + 80) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{

  return sub_1D8CD7AD4();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71()
{
}

uint64_t OUTLINED_FUNCTION_72()
{

  return sub_1D8CD7F84();
}

__n128 OUTLINED_FUNCTION_81(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = *a1;
  *(v2 + 168) = *(a1 + 16);
  result = *(a1 + 24);
  *(v2 + 176) = result;
  *(v2 + 192) = *(a1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_1D8CD7AD4();
}

void OUTLINED_FUNCTION_86()
{

  sub_1D8CAD9C0(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_87()
{
  v2 = *(v0 + 16);

  return type metadata accessor for ResourceAccessSpan();
}

uint64_t sub_1D8CAE5FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1D8CAE630();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D8CAE63C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D8CAE688()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1D8CAF0EC();
  }

  v1 = sub_1D8CAE6D0();
  v2 = *(v1 + qword_1ED9C5608 + 16);

  return v1;
}

uint64_t sub_1D8CAE6D0()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1D8CAF0EC();
  }

  v1 = sub_1D8C9B790();
  v2 = *(v1 + *(*v1 + 464));
  swift_unknownObjectRelease();

  v3 = *(v1 + *(*v1 + 480));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D8CAE758()
{
  v0 = sub_1D8CAE688();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan()
{
  result = qword_1ED9C3CD8;
  if (!qword_1ED9C3CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CAE844()
{
  v1 = *(v0 + 96);
  sub_1D8CD7E24();
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904();
  sub_1D8CAE9C8();
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v2 = OUTLINED_FUNCTION_1_0();
  *(v2 + 16) = xmmword_1D8CD8F40;
  v4 = *(v0 + qword_1ED9C5608 + 8);
  v3 = *(v0 + qword_1ED9C5608 + 16);
  v5 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8C96E60();
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904();

  sub_1D8CD7E24();
  v7 = OUTLINED_FUNCTION_1_0();
  *(v7 + 16) = xmmword_1D8CD8F40;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904();

  sub_1D8CD7E24();
  OUTLINED_FUNCTION_0_0();

  return sub_1D8CD7904();
}

uint64_t sub_1D8CAE9C8()
{
  v1 = v0;
  v2 = *(v0 + 96);
  sub_1D8CD7E24();
  sub_1D8CD7904();
  sub_1D8CC4038();
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8CD8F40;
  v4 = (v1 + *(*v1 + 464));
  v6 = *v4;
  v5 = v4[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9B0, &unk_1D8CD9998);
  v7 = sub_1D8CD7B64();
  v9 = v8;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D8C96E60();
  *(v3 + 64) = v10;
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  sub_1D8CD7904();

  sub_1D8CD7E24();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8CD8F40;
  ObjectType = swift_getObjectType();
  v44 = v5;
  v12 = v5;
  v13 = *(v5 + 16);
  v13(ObjectType, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
  v14 = sub_1D8CD7B64();
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = v10;
  v46 = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  sub_1D8CD7904();

  v45 = sub_1D8CAF3AC();
  if (v18)
  {
    sub_1D8CD7E24();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D8CD8F40;
    v13(ObjectType, v44);
    v20 = sub_1D8CD7B64();
    v21 = MEMORY[0x1E69E6158];
    v22 = v10;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    sub_1D8CD7904();
    v24 = v21;
  }

  else
  {
    v25 = v16;
    v26 = v17;
    v27 = HIDWORD(v17);
    sub_1D8CD7E24();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E6530];
    *(v28 + 16) = xmmword_1D8CD8F40;
    v30 = MEMORY[0x1E69E65A8];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v25;
    sub_1D8CD7904();

    sub_1D8CD7E24();
    v31 = swift_allocObject();
    v32 = MEMORY[0x1E69E7668];
    *(v31 + 16) = xmmword_1D8CD8F40;
    v33 = MEMORY[0x1E69E76D0];
    *(v31 + 56) = v32;
    *(v31 + 64) = v33;
    *(v31 + 32) = v27;
    sub_1D8CD7904();

    sub_1D8CD7E24();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D8CD8F40;
    *(v34 + 56) = v32;
    *(v34 + 64) = v33;
    *(v34 + 32) = v26;
    sub_1D8CD7904();

    sub_1D8CD7E24();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E63B0];
    *(v35 + 16) = xmmword_1D8CD8F40;
    v37 = MEMORY[0x1E69E6438];
    *(v35 + 56) = v36;
    *(v35 + 64) = v37;
    *(v35 + 32) = v45;
    sub_1D8CD7904();
    v24 = MEMORY[0x1E69E6158];
    v22 = v46;
  }

  sub_1D8CD7E24();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D8CD8F40;
  v39 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9C0, &unk_1D8CD99A8);
  v40 = sub_1D8CD7B64();
  *(v38 + 56) = v24;
  *(v38 + 64) = v22;
  *(v38 + 32) = v40;
  *(v38 + 40) = v41;
  sub_1D8CD7904();

  sub_1D8CD7E24();
  return sub_1D8CD7904();
}

uint64_t sub_1D8CAEF18(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_1D8CC1BD4(a1, a2, a3);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1D8CB4574(v9, 0x726574706F6461, 0xE700000000000000);
  sub_1D8CCB66C(v8);

  return sub_1D8CAEFFC(a1, a2, a3);
}

uint64_t sub_1D8CAEFFC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8CD97E0;
  v8 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x1E69E7668];
  v10 = MEMORY[0x1E69E76D0];
  *(v7 + 96) = MEMORY[0x1E69E7668];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x1E69E63B0];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x1E69E6438];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_1D8C9AD8C("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_1D8CAF0EC()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    v2 = sub_1D8CAF3AC();
    v5 = MEMORY[0x1E69E6158];
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v7 = OUTLINED_FUNCTION_1_0();
      *(v7 + 16) = xmmword_1D8CD8F40;
      v8 = &v0[*(*v0 + 464)];
      v9 = *v8;
      v10 = v8[1];
      ObjectType = swift_getObjectType();
      (*(v10 + 16))(ObjectType, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
      v12 = sub_1D8CD7B64();
      v14 = v13;
      *(v7 + 56) = v5;
      *(v7 + 64) = sub_1D8C96E60();
      *(v7 + 32) = v12;
      *(v7 + 40) = v14;
      sub_1D8C9AD8C("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v7);
    }

    else
    {
      (*(*v0 + 568))(v3, v4, *&v2);
    }

    v15 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v15);
    if ((v1[88] & 1) == 0)
    {
      v16 = *(*v1 + 480);
      if (*&v1[v16])
      {
        v17 = *&v1[v16];
        swift_unknownObjectRetain();
        if (nw_activity_is_activated())
        {
          *&v1[*(*v1 + 472)];
          nw_activity_complete_with_reason();
        }

        else
        {
          v18 = *(v1 + 12);
          sub_1D8CD7E04();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
          v19 = OUTLINED_FUNCTION_1_0();
          *(v19 + 16) = xmmword_1D8CD8F40;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD20, &qword_1D8CD99B8);
          v20 = sub_1D8CD7B64();
          v22 = v21;
          *(v19 + 56) = v5;
          *(v19 + 64) = sub_1D8C96E60();
          *(v19 + 32) = v20;
          *(v19 + 40) = v22;
          sub_1D8CD7904();
        }

        swift_unknownObjectRelease();
      }

      sub_1D8CCA4C8();
    }

    os_unfair_lock_unlock(v15);
  }
}

uint64_t sub_1D8CAF3AC()
{
  v1 = v0;
  v2 = (v0 + *(*v0 + 464));
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = v6(ObjectType, v4);
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 statusCode];
      v10 = (*(v4 + 8))(ObjectType, v4);
      if (!v10)
      {

        *&result = 0.0;
        return result;
      }

      v11 = v10;
      *&v29 = 0xD000000000000021;
      *(&v29 + 1) = 0x80000001D8CDE2C0;
      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v28, v11, &v29);
      sub_1D8CAD7EC(v28);
      if (v30)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8CAFBCC(&v29);
      }

      *&v29 = 0xD00000000000001DLL;
      *(&v29 + 1) = 0x80000001D8CDE2F0;
      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v28, v11, &v29);
      sub_1D8CAD7EC(v28);
      if (v30)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8CAFBCC(&v29);
      }

      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v28, v11, &v29);
      sub_1D8CAD7EC(v28);
      if (v30)
      {
        if (swift_dynamicCast())
        {
          v27 = -2.31584178e77;
          goto LABEL_26;
        }
      }

      else
      {
        sub_1D8CAFBCC(&v29);
      }

      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v28, v11, &v29);
      sub_1D8CAD7EC(v28);
      if (v30)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          sub_1D8CD7FB4();
          sub_1D8CB1E8C(v28, v11, &v29);

          sub_1D8CAD7EC(v28);
          if (v30)
          {
            if (swift_dynamicCast())
            {
              *&result = -2.31584178e77 - v27;
              return result;
            }
          }

          else
          {
            sub_1D8CAFBCC(&v29);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_1D8CAFBCC(&v29);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D8CD8F40;
  v28[0] = v6(ObjectType, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
  v13 = sub_1D8CD7B64();
  v15 = v14;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D8C96E60();
  *(v12 + 64) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1D8C9AD8C("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v12);

  v18 = *(*(v1 + *(*v1 + 152)) + 16);

  os_unfair_lock_lock(v18);
  if ((*(v1 + 88) & 1) == 0)
  {
    v19 = *(*v1 + 480);
    v20 = *(v1 + v19);
    if (v20)
    {
      v21 = *(v1 + v19);
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        *(v1 + *(*v1 + 472));
        nw_activity_complete_with_reason();
      }

      else
      {
        v23 = *(v1 + 96);
        sub_1D8CD7E04();
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D8CD8F40;
        v28[0] = v20;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD20, &qword_1D8CD99B8);
        v25 = sub_1D8CD7B64();
        *(v24 + 56) = v16;
        *(v24 + 64) = v17;
        *(v24 + 32) = v25;
        *(v24 + 40) = v26;
        sub_1D8CD7904();
      }

      swift_unknownObjectRelease();
    }

    sub_1D8CCA4C8();
  }

  os_unfair_lock_unlock(v18);

  *&result = 0.0;
  return result;
}

unint64_t sub_1D8CAF9CC()
{
  result = qword_1ED9C3D00;
  if (!qword_1ED9C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D00);
  }

  return result;
}

unint64_t sub_1D8CAFA20(uint64_t a1)
{
  *(a1 + 8) = sub_1D8CAFA50();
  result = sub_1D8CAFAA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D8CAFA50()
{
  result = qword_1ED9C3D08;
  if (!qword_1ED9C3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D08);
  }

  return result;
}

unint64_t sub_1D8CAFAA4()
{
  result = qword_1ED9C3CF0;
  if (!qword_1ED9C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3CF0);
  }

  return result;
}

unint64_t sub_1D8CAFAFC()
{
  result = qword_1ECAAC988;
  if (!qword_1ECAAC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC988);
  }

  return result;
}

unint64_t sub_1D8CAFB50(uint64_t a1)
{
  result = sub_1D8CAFB78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8CAFB78()
{
  result = qword_1ECAAC998;
  if (!qword_1ECAAC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC998);
  }

  return result;
}

uint64_t sub_1D8CAFBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC680, &qword_1D8CD8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ConfigurationContext(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

PegasusConfiguration::PegasusClientName_optional __swiftcall PegasusClientName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8CD8184();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D8CAFF40()
{
  result = qword_1ECAAC9C8;
  if (!qword_1ECAAC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC9C8);
  }

  return result;
}

uint64_t sub_1D8CAFFB8@<X0>(uint64_t *a1@<X8>)
{
  result = PegasusClientName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D8CAFFE4()
{
  result = qword_1ECAAC9D0;
  if (!qword_1ECAAC9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAC9D8, &qword_1D8CD9AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC9D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusClientName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusClientName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

void sub_1D8CB0204(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1D8CB026C()
{
  v0 = sub_1D8CD7A04();
  __swift_allocate_value_buffer(v0, qword_1ECAAC5B8);
  __swift_project_value_buffer(v0, qword_1ECAAC5B8);
  return sub_1D8CD79F4();
}

uint64_t ParsecKeys.encryptedToken.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ParsecKeys.__allocating_init()()
{
  v0 = swift_allocObject();
  ParsecKeys.init()();
  return v0;
}

void *ParsecKeys.init()()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v3 = sub_1D8CC2F5C();
  v4 = qword_1ED9C4058;

  if (v4 != -1)
  {
    swift_once();
  }

  v24 = xmmword_1ED9C4060;
  v25 = qword_1ED9C4070;
  v5 = type metadata accessor for ResourceAccessSpan();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_1D8C96CAC(v3, 700, &v24, 0, 1);
  v9 = v8;
  v10 = sub_1D8CB0690();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    if (qword_1ECAAC5B0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v14 = sub_1D8CD7A04();
    __swift_project_value_buffer(v14, qword_1ECAAC5B8);

    v15 = sub_1D8CD79E4();
    v16 = sub_1D8CD7E14();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v24 = v18;
      *v17 = 136642819;
      *(v17 + 4) = sub_1D8C9D088(v12, v13, &v24);
      _os_log_impl(&dword_1D8C92000, v15, v16, "read encrypted secret key - %{sensitive}s ", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1DA727900](v18, -1, -1);
      MEMORY[0x1DA727900](v17, -1, -1);
    }

    v1[2] = v12;
    v1[3] = v13;
    *(v9 + qword_1ED9C3D48) = 122;
    sub_1D8C9AA78();
  }

  else
  {
    if (qword_1ECAAC5B0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v19 = sub_1D8CD7A04();
    __swift_project_value_buffer(v19, qword_1ECAAC5B8);
    v20 = sub_1D8CD79E4();
    v21 = sub_1D8CD7E24();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D8C92000, v20, v21, "could not read encrypted auth token", v22, 2u);
      MEMORY[0x1DA727900](v22, -1, -1);
    }

    *(v9 + qword_1ED9C3D48) = 121;
    sub_1D8C9AA78();

    v1[2] = 0;
    v1[3] = 0xE000000000000000;
  }

  return v1;
}

id sub_1D8CB0690()
{
  type metadata accessor for ParsecKeys();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D8CB0E9C(0x654B636573726150, 0xEA00000000007379, 0x7473696C70, 0xE500000000000000, v1);
  v3 = v2;

  if (!v3)
  {
    return 0;
  }

  sub_1D8CB0F58();
  result = sub_1D8CB0998();
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (qword_1ECAAC5B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D8CD7A04();
  __swift_project_value_buffer(v6, qword_1ECAAC5B8);
  v7 = v5;
  v8 = sub_1D8CD79E4();
  v9 = sub_1D8CD7E14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138739971;
    *(v10 + 4) = v7;
    *v11 = v5;
    v12 = v7;
    _os_log_impl(&dword_1D8C92000, v8, v9, "parsed plist - %{sensitive}@", v10, 0xCu);
    sub_1D8C953A4(v11, &unk_1ECAACEE0, &qword_1D8CD9C30);
    MEMORY[0x1DA727900](v11, -1, -1);
    MEMORY[0x1DA727900](v10, -1, -1);
  }

  if (qword_1ECAAC4B8 != -1)
  {
    swift_once();
  }

  v13 = 7627109;
  if (byte_1ED9C5648)
  {
    v13 = 1952540009;
  }

  v14 = 0xE300000000000000;
  if (byte_1ED9C5648)
  {
    v14 = 0xE400000000000000;
  }

  *&v17 = v13;
  *(&v17 + 1) = v14;
  v15 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_1D8C953A4(v19, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

id sub_1D8CB0998()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D8CD7AD4();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

uint64_t ParsecKeys.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ParsecKeys.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D8CB0A88(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D8CB0AD4(a1, a2);
  sub_1D8CB0BEC(&unk_1F5454B98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D8CB0AD4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1D8CD7C44())
  {
    result = sub_1D8CB0CD0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D8CD7FF4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1D8CD8044();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8CB0BEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1D8CB0D40(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D8CB0CD0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9E0, &unk_1D8CD9C20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1D8CB0D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9E0, &unk_1D8CD9C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1D8CB0E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D8CD7AD4();

  v7 = sub_1D8CD7AD4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1D8CD7B04();

  return v9;
}

unint64_t sub_1D8CB0F58()
{
  result = qword_1ECAAC490;
  if (!qword_1ECAAC490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAC490);
  }

  return result;
}

uint64_t URLDataSourceOutput.data.getter()
{
  v1 = *v0;
  sub_1D8CADCA0(*v0, *(v0 + 8));
  return v1;
}

void *URLDataSourceOutput.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t URLDataSourceOutput.init(_:_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t dispatch thunk of URLDataSource.data(forRequest:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v11 = *(a4 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D8CB1174;
  v14.n128_f32[0] = a5;

  return v16(a1, a2, a3, a4, v14);
}

uint64_t sub_1D8CB1174()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1();
  *v3 = v2;

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8CB12A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8CB12E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8CB1328(uint64_t a1, uint64_t a2, float a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8CB1350, 0, 0);
}

uint64_t sub_1D8CB1350()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i32[0] = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1D8CB1454;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001ALL, 0x80000001D8CDE490, sub_1D8CB2240, v2, &type metadata for URLDataSourceOutput);
}

uint64_t sub_1D8CB1454()
{
  OUTLINED_FUNCTION_10();
  v3 = *(*v1 + 48);
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CB1580, 0, 0);
  }

  else
  {
    v5 = *(v2 + 40);

    OUTLINED_FUNCTION_13();

    return v6();
  }
}

uint64_t sub_1D8CB1580()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_13();
  v3 = *(v0 + 56);

  return v2();
}

void *sub_1D8CB15DC()
{
  os_unfair_lock_lock((v0 + 40));
  v1 = *(v0 + 48);
  v2 = v1;
  os_unfair_lock_unlock((v0 + 40));
  return v1;
}

void sub_1D8CB1614(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v39 = sub_1D8CD72C4();
  v8 = *(v39 - 8);
  v33 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F8, &qword_1D8CD9DC8);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  v36 = a2;
  v37 = (v15 + 24);
  *(v15 + 16) = 0;
  v38 = (v15 + 16);
  v35 = *(a2 + 16);
  v34 = sub_1D8CD7274();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = a1;
  v18 = v32;
  (*(v11 + 16))(v14, v17, v32);
  (*(v8 + 16))(v10, a3, v39);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v16;
  (*(v11 + 32))(v21 + v19, v14, v18);
  (*(v8 + 32))(v21 + v20, v31, v39);
  aBlock[4] = sub_1D8CB224C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CB1FFC;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);

  v23 = v34;
  v24 = [v35 dataTaskWithRequest:v34 completionHandler:v22];
  _Block_release(v22);

  v25 = v24;
  [v25 set:1 callCompletionHandlerInline:?];
  *&v26 = a4;
  [v25 setPriority_];

  v40 = v25;
  v27 = v37;
  os_unfair_lock_lock(v37);
  sub_1D8CB2370(v38);
  os_unfair_lock_unlock(v27);
  v28 = *(v36 + 24);
  if (v28)
  {
    v29 = *(v36 + 32);
    v28(v25);
  }

  [v25 resume];
}

void sub_1D8CB19E4(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    os_unfair_lock_lock((a5 + 24));
    v12 = *(a5 + 16);
    v13 = v12;
    os_unfair_lock_unlock((a5 + 24));
    if (v12)
    {
      v12 = [v13 _incompleteCurrentTaskTransactionMetrics];
    }

    os_unfair_lock_lock((v11 + 40));

    *(v11 + 48) = v12;
    os_unfair_lock_unlock((v11 + 40));
  }

  if (a4)
  {
    v46 = a4;
    v14 = a4;
    v15 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
    sub_1D8CD7D24();
    v16 = (a5 + 24);
    os_unfair_lock_lock((a5 + 24));
    v19 = *(a5 + 16);
    v17 = (a5 + 16);
    v18 = v19;
    v20 = v19;
    os_unfair_lock_unlock(v16);
    if (v19)
    {
      v21 = [v20 description];

      v22 = sub_1D8CD7B04();
      v18 = v23;
    }

    else
    {
      v22 = 0;
    }

    v45 = a4;
    v27 = sub_1D8CD7284();
    if (v27 && (v28 = sub_1D8CB1EF0(0xD000000000000011, 0x80000001D8CDE4E0, v27), v30 = v29, , v30))
    {

      sub_1D8CD8014();

      v46 = 0xD000000000000010;
      v47 = 0x80000001D8CDE500;
      MEMORY[0x1DA726A90](v28, v30);
      swift_bridgeObjectRelease_n();
      v31 = 0xD000000000000010;
      v32 = 0x80000001D8CDE500;
    }

    else
    {

      v31 = 0;
      v32 = 0xE000000000000000;
    }

    if (qword_1ED9C4AC8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D8CD7A04();
    __swift_project_value_buffer(v33, qword_1ED9C5680);

    v34 = sub_1D8CD79E4();
    v35 = sub_1D8CD7E24();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v22;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136315394;
      if (v18)
      {
        v39 = v36;
      }

      else
      {
        v39 = 0;
      }

      if (!v18)
      {
        v18 = 0xE000000000000000;
      }

      v40 = sub_1D8C9D088(v39, v18, &v46);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v41 = sub_1D8C9D088(v31, v32, &v46);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_1D8C92000, v34, v35, "Download for %s %s failed", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA727900](v38, -1, -1);
      MEMORY[0x1DA727900](v37, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v16 = (a5 + 24);
    os_unfair_lock_lock((a5 + 24));
    v24 = *(a5 + 16);
    v17 = (a5 + 16);
    v25 = v24;
    os_unfair_lock_unlock(v16);
    if (v24)
    {
      v26 = sub_1D8CB2524();
    }

    else
    {
      v26 = sub_1D8CD7A84();
    }

    if (a2 >> 60 == 15)
    {
      v42 = 0;
    }

    else
    {
      v42 = a1;
    }

    v43 = 0xC000000000000000;
    if (a2 >> 60 != 15)
    {
      v43 = a2;
    }

    v46 = v42;
    v47 = v43;
    v48 = a3;
    v49 = v26;
    sub_1D8CB23A0(a1, a2);
    v44 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
    sub_1D8CD7D34();
  }

  os_unfair_lock_lock(v16);

  *v17 = 0;
  os_unfair_lock_unlock(v16);
}

double sub_1D8CB1E8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1D8CC0724(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1D8C9D24C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D8CB1EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D8C9785C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1D8CB1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D8C9785C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_1D8CB1F98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D8C9785C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1D8C9D24C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1D8CB1FFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1D8CD7594();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1D8CB238C(v6, v11);
}

uint64_t sub_1D8CB2108()
{
  v1 = *(v0 + 32);
  sub_1D8C9EB90(*(v0 + 24));
  sub_1D8CB23B4(v0 + 48);
  return v0;
}

uint64_t sub_1D8CB2138()
{
  v0 = sub_1D8CB2108();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1D8CB2168(uint64_t a1, uint64_t a2, float a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D8CB1174;

  return sub_1D8CB1328(a1, a2, a3);
}

void sub_1D8CB224C(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D8CD72C4() - 8);
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v15 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_1D8CB19E4(a1, a2, a3, a4, v13);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8CB238C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8CADC38(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8CB23A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8CADCA0(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8CB23B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA00, &unk_1D8CD9DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BiomeStreamConfig.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BiomeStreamConfig.messageSchemaName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D8CB2498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8CB24D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1D8CB2524()
{
  v1 = sub_1D8CB4D60(v0);
  if (v1)
  {
    v2 = sub_1D8CB42BC(v1);

    if (v2)
    {
      return v2;
    }
  }

  v4 = [v0 _incompleteCurrentTaskTransactionMetrics];
  v5 = sub_1D8CB25A8();

  return v5;
}

char *sub_1D8CB25A8()
{
  v1 = v0;
  v290 = sub_1D8CD7B54();
  v289 = *(v290 - 8);
  v2 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v290);
  v288 = &v288 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA10, &qword_1D8CD9E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v6);
  v297 = &v288 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA18, &qword_1D8CDC000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_0();
  v302 = v11;
  OUTLINED_FUNCTION_12_0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v288 - v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v288 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_0();
  v311 = v21;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_0();
  v308 = v25;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_0();
  v310 = v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_0();
  v307 = v31;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_0();
  v309 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_0();
  v306 = v35;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_0();
  v304 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_0();
  v305 = v39;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_0();
  v303 = v41;
  OUTLINED_FUNCTION_12_0();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v288 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v288 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v288 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v288 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v288 - v55;
  v57 = [v1 requestStartDate];
  if (v57)
  {
    v58 = v57;
    sub_1D8CD7644();

    v59 = sub_1D8CD7674();
    v60 = 0;
  }

  else
  {
    v59 = sub_1D8CD7674();
    v60 = 1;
  }

  v300 = v19;
  v301 = v15;
  OUTLINED_FUNCTION_27_0(v54, v60);
  sub_1D8CB4E28(v54, v56, &qword_1ECAACA18, &qword_1D8CDC000);
  sub_1D8CD7674();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v59);
  v62 = MEMORY[0x1E69E63B0];
  v296 = "with request id ";
  if (EnumTagSinglePayload == 1)
  {
    sub_1D8C9B71C(v56, &qword_1ECAACA18, &qword_1D8CDC000);
    v63 = MEMORY[0x1E69E7CC8];
    v64 = sub_1D8C9785C(0xD00000000000002CLL, 0x80000001D8CDE520);
    if (v65)
    {
      v66 = v64;
      swift_isUniquelyReferenced_nonNull_native();
      v313 = v63;
      v67 = *(v63 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      sub_1D8CD8084();
      v68 = v313;
      v69 = *(*(v313 + 48) + 16 * v66 + 8);

      sub_1D8CAD7DC((*(v68 + 56) + 32 * v66), &v314);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
      v68 = MEMORY[0x1E69E7CC8];
    }

    v76 = v1;
    v77 = v310;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = v62;
    OUTLINED_FUNCTION_0_3(v70);
    v72 = *(v71 + 8);
    v73 = OUTLINED_FUNCTION_23_0();
    v74(v73);
    OUTLINED_FUNCTION_11_0();
    v75 = OUTLINED_FUNCTION_3_1();
    sub_1D8CB4A34(v75, 0xD00000000000002CLL, 0x80000001D8CDE520);
    v68 = v312;
    v76 = v1;
    v77 = v310;
  }

  v78 = v303;
  v79 = [v76 requestStartDate];
  if (v79)
  {
    v80 = v79;
    sub_1D8CD7644();

    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  OUTLINED_FUNCTION_27_0(v48, v81);
  sub_1D8CB4E28(v48, v51, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v51);
  if (v82)
  {
    sub_1D8C9B71C(v51, &qword_1ECAACA18, &qword_1D8CDC000);
    v83 = sub_1D8C9785C(0xD00000000000001BLL, 0x80000001D8CDE330);
    if (v84)
    {
      v85 = v83;
      swift_isUniquelyReferenced_nonNull_native();
      v313 = v68;
      v86 = *(v68 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      v77 = v310;
      sub_1D8CD8084();
      v68 = v313;
      v87 = *(*(v313 + 48) + 16 * v85 + 8);

      sub_1D8CAD7DC((*(v68 + 56) + 32 * v85), &v314);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
    v88 = MEMORY[0x1E69E63B0];
  }

  else
  {
    sub_1D8CD75A4();
    v88 = MEMORY[0x1E69E63B0];
    v315 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v89);
    (*(v90 + 8))(v51, v59);
    OUTLINED_FUNCTION_18_0();
    v91 = OUTLINED_FUNCTION_9_0();
    sub_1D8CB4A34(v91, 0xD00000000000001BLL, 0x80000001D8CDE330);
    v68 = v312;
  }

  v92 = [v76 requestStartDate];
  if (v92)
  {
    v93 = v92;
    sub_1D8CD7644();

    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  OUTLINED_FUNCTION_27_0(v78, v94);
  sub_1D8CB4E28(v78, v45, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v45);
  if (v82)
  {
    sub_1D8C9B71C(v45, &qword_1ECAACA18, &qword_1D8CDC000);
    sub_1D8C9785C(0xD00000000000001DLL, 0x80000001D8CDE550);
    if (v95)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v100 = v304;
    v99 = v305;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = v88;
    OUTLINED_FUNCTION_0_3(v96);
    (*(v97 + 8))(v45, v59);
    OUTLINED_FUNCTION_18_0();
    v98 = OUTLINED_FUNCTION_9_0();
    sub_1D8CB4A34(v98, 0xD00000000000001DLL, 0x80000001D8CDE550);
    v68 = v312;
    v100 = v304;
    v99 = v305;
  }

  v101 = [v76 requestEndDate];
  if (v101)
  {
    v102 = v101;
    sub_1D8CD7644();

    v103 = 0;
  }

  else
  {
    v103 = 1;
  }

  OUTLINED_FUNCTION_27_0(v100, v103);
  sub_1D8CB4E28(v100, v99, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v99);
  if (v82)
  {
    sub_1D8C9B71C(v99, &qword_1ECAACA18, &qword_1D8CDC000);
    v104 = OUTLINED_FUNCTION_28_0();
    sub_1D8C9785C(v104, v105);
    if (v106)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v114 = v306;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = v88;
    OUTLINED_FUNCTION_0_3(v107);
    v109 = *(v108 + 8);
    v110 = OUTLINED_FUNCTION_23_0();
    v111(v110);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v112, 0xD000000000000019, v113);
    v68 = v312;
    v114 = v306;
  }

  v115 = [v76 responseStartDate];
  if (v115)
  {
    v116 = v115;
    sub_1D8CD7644();

    v117 = 0;
  }

  else
  {
    v117 = 1;
  }

  v118 = OUTLINED_FUNCTION_26_0(v115, v117);
  OUTLINED_FUNCTION_37_0(v118, v119, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v114);
  if (v82)
  {
    sub_1D8C9B71C(v114, &qword_1ECAACA18, &qword_1D8CDC000);
    sub_1D8C9785C(0xD00000000000001CLL, 0x80000001D8CDE590);
    if (v120)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v129 = v307;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = v88;
    OUTLINED_FUNCTION_0_3(v121);
    v123 = *(v122 + 8);
    v124 = OUTLINED_FUNCTION_23_0();
    v125(v124);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v126, v127, v128);
    v68 = v312;
    v129 = v307;
  }

  v130 = [v76 responseEndDate];
  if (v130)
  {
    v131 = v130;
    sub_1D8CD7644();

    v132 = 0;
  }

  else
  {
    v132 = 1;
  }

  OUTLINED_FUNCTION_27_0(v77, v132);
  sub_1D8CB4E28(v77, v129, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v129);
  if (v82)
  {
    sub_1D8C9B71C(v129, &qword_1ECAACA18, &qword_1D8CDC000);
    sub_1D8C9785C(0xD00000000000001ALL, 0x80000001D8CDE350);
    if (v133)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = v88;
    OUTLINED_FUNCTION_0_3(v134);
    v136 = *(v135 + 8);
    v137 = OUTLINED_FUNCTION_23_0();
    v138(v137);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v139, v140, v141);
    v68 = v312;
  }

  v142 = [v76 isReusedConnection];
  v315 = MEMORY[0x1E69E6370];
  LOBYTE(v314) = v142;
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_17_0();
  sub_1D8CB4A34(v143, v144, v145);
  v146 = [v76 countOfRequestHeaderBytesSent];
  v147 = MEMORY[0x1E69E7360];
  v315 = MEMORY[0x1E69E7360];
  *&v314 = v146;
  OUTLINED_FUNCTION_10_0();
  v148 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v148, 0xD000000000000020);
  v149 = [v76 countOfResponseHeaderBytesReceived];
  v315 = v147;
  *&v314 = v149;
  OUTLINED_FUNCTION_10_0();
  v150 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v150, 0xD000000000000021);
  v151 = [v76 countOfResponseBodyBytesReceived];
  v315 = v147;
  *&v314 = v151;
  OUTLINED_FUNCTION_10_0();
  v152 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v152, 0xD000000000000028);
  v153 = [v76 countOfResponseBodyBytesAfterDecoding];
  v315 = v147;
  *&v314 = v153;
  OUTLINED_FUNCTION_10_0();
  v154 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v154, 0xD000000000000027);
  v155 = [v76 countOfRequestBodyBytesSent];
  result = [v76 countOfRequestHeaderBytesSent];
  if (__OFADD__(v155, result))
  {
    __break(1u);
    goto LABEL_144;
  }

  v315 = v147;
  *&v314 = &result[v155];
  OUTLINED_FUNCTION_10_0();
  v157 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v157, 0xD00000000000001DLL);
  v158 = [v76 countOfResponseBodyBytesReceived];
  result = [v76 countOfResponseHeaderBytesReceived];
  if (__OFADD__(v158, result))
  {
LABEL_144:
    __break(1u);
    return result;
  }

  v315 = v147;
  *&v314 = &result[v158];
  OUTLINED_FUNCTION_10_0();
  v159 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v159, 0xD000000000000021);
  v160 = v312;
  v161 = sub_1D8CB4E8C(v76, &selRef__interfaceName);
  if (v162)
  {
    v315 = MEMORY[0x1E69E6158];
    *&v314 = v161;
    *(&v314 + 1) = v162;
    OUTLINED_FUNCTION_10_0();
    v163 = OUTLINED_FUNCTION_4_1();
    sub_1D8CB4A34(v163, 0xD00000000000002CLL, v296 | 0x8000000000000000);
    v160 = v312;
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    sub_1D8C9785C(0xD00000000000002CLL, v296 | 0x8000000000000000);
    OUTLINED_FUNCTION_31_0();
    if (v165)
    {
      v166 = v164;
      swift_isUniquelyReferenced_nonNull_native();
      v313 = v160;
      v160 = *(v160 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_36_0();
      sub_1D8CAD7DC((*(v160 + 56) + 32 * v166), &v314);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  v167 = [v76 _connectionIdentifier];
  if (v167)
  {
    v168 = v167;
    sub_1D8CD76A4();

    v169 = 0;
  }

  else
  {
    v169 = 1;
  }

  v170 = sub_1D8CD76C4();
  __swift_storeEnumTagSinglePayload(&off_1E8567000, v169, 1, v170);
  sub_1D8CB4E28(&off_1E8567000, &off_1E8567000, &qword_1ECAACA10, &qword_1D8CD9E50);
  if (__swift_getEnumTagSinglePayload(&off_1E8567000, 1, v170) == 1)
  {
    sub_1D8C9B71C(&off_1E8567000, &qword_1ECAACA10, &qword_1D8CD9E50);
    v171 = sub_1D8C9785C(0xD00000000000001DLL, 0x80000001D8CDE690);
    if (v172)
    {
      v173 = v171;
      swift_isUniquelyReferenced_nonNull_native();
      v313 = v160;
      v174 = *(v160 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_36_0();
      sub_1D8CAD7DC((*(v174 + 56) + 32 * v173), &v314);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v179 = v308;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    v175 = sub_1D8CD7684();
    v315 = MEMORY[0x1E69E6158];
    *&v314 = v175;
    *(&v314 + 1) = v176;
    OUTLINED_FUNCTION_25(v170);
    (*(v177 + 8))(&off_1E8567000, v170);
    OUTLINED_FUNCTION_10_0();
    v178 = OUTLINED_FUNCTION_4_1();
    sub_1D8CB4A34(v178, 0xD00000000000001DLL, 0x80000001D8CDE690);
    v179 = v308;
  }

  v180 = [v76 _redirected];
  v315 = MEMORY[0x1E69E7668];
  LODWORD(v314) = v180;
  OUTLINED_FUNCTION_10_0();
  v181 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v181, 0xD00000000000001CLL);
  v182 = v312;
  v183 = [v76 connectStartDate];
  if (v183)
  {
    v184 = v183;
    v185 = v298;
    sub_1D8CD7644();

    v186 = 0;
    v187 = v299;
  }

  else
  {
    v186 = 1;
    v187 = v299;
    v185 = v298;
  }

  OUTLINED_FUNCTION_27_0(v185, v186);
  sub_1D8CB4E28(v185, v187, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v187);
  if (v82)
  {
    sub_1D8C9B71C(v187, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD00000000000001BLL);
    if (v188)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      v179 = v308;
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v197 = v291;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v189);
    v191 = *(v190 + 8);
    v192 = OUTLINED_FUNCTION_23_0();
    v193(v192);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v194, v195, v196);
    v182 = v312;
    v197 = v291;
  }

  v198 = [v76 connectEndDate];
  if (v198)
  {
    v199 = v198;
    sub_1D8CD7644();

    v200 = 0;
  }

  else
  {
    v200 = 1;
  }

  OUTLINED_FUNCTION_27_0(v197, v200);
  sub_1D8CB4E28(v197, v179, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v179);
  if (v82)
  {
    sub_1D8C9B71C(v179, &qword_1ECAACA18, &qword_1D8CDC000);
    v201 = OUTLINED_FUNCTION_28_0();
    sub_1D8C9785C(v201, v202);
    if (v203)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v208 = v292;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v204);
    (*(v205 + 8))(v179, v59);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v206, 0xD000000000000019, v207);
    v182 = v312;
    v208 = v292;
  }

  v209 = [v76 domainLookupStartDate];
  if (v209)
  {
    v210 = v209;
    sub_1D8CD7644();

    v211 = 0;
  }

  else
  {
    v211 = 1;
  }

  v212 = OUTLINED_FUNCTION_26_0(v209, v211);
  OUTLINED_FUNCTION_37_0(v212, v213, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v208);
  if (v82)
  {
    sub_1D8C9B71C(v208, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD000000000000020);
    if (v214)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v223 = v293;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v215);
    v217 = *(v216 + 8);
    v218 = OUTLINED_FUNCTION_23_0();
    v219(v218);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v220, v221, v222);
    v182 = v312;
    v223 = v293;
  }

  v224 = [v76 domainLookupEndDate];
  if (v224)
  {
    v225 = v224;
    sub_1D8CD7644();

    v226 = 0;
  }

  else
  {
    v226 = 1;
  }

  v227 = OUTLINED_FUNCTION_26_0(v224, v226);
  OUTLINED_FUNCTION_37_0(v227, v228, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v223);
  if (v82)
  {
    sub_1D8C9B71C(v223, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD00000000000001ELL);
    if (v229)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v238 = v294;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v230);
    v232 = *(v231 + 8);
    v233 = OUTLINED_FUNCTION_23_0();
    v234(v233);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v235, v236, v237);
    v182 = v312;
    v238 = v294;
  }

  v239 = [v76 fetchStartDate];
  if (v239)
  {
    v240 = v239;
    sub_1D8CD7644();

    v241 = 0;
  }

  else
  {
    v241 = 1;
  }

  v242 = OUTLINED_FUNCTION_26_0(v239, v241);
  OUTLINED_FUNCTION_37_0(v242, v243, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v238);
  if (v82)
  {
    sub_1D8C9B71C(v238, &qword_1ECAACA18, &qword_1D8CDC000);
    v244 = OUTLINED_FUNCTION_28_0();
    sub_1D8C9785C(v244, v245);
    if (v246)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v254 = v295;
    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v247);
    v249 = *(v248 + 8);
    v250 = OUTLINED_FUNCTION_23_0();
    v251(v250);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v252, 0xD000000000000019, v253);
    v182 = v312;
    v254 = v295;
  }

  v255 = [v76 secureConnectionStartDate];
  if (v255)
  {
    v256 = v255;
    sub_1D8CD7644();

    v257 = 0;
  }

  else
  {
    v257 = 1;
  }

  OUTLINED_FUNCTION_27_0(v254, v257);
  sub_1D8CB4E28(v254, v68, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v68);
  if (v82)
  {
    sub_1D8C9B71C(v68, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD000000000000024);
    if (v258)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v315 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v259);
    (*(v260 + 8))(v68, v59);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v261, v262, v263);
    v182 = v312;
  }

  v264 = sub_1D8CB4E8C(v76, &selRef_networkProtocolName);
  if (v265)
  {
    v315 = MEMORY[0x1E69E6158];
    *&v314 = v264;
    *(&v314 + 1) = v265;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v266, v267, v268);
    v182 = v312;
  }

  else
  {
    OUTLINED_FUNCTION_34_0(0xD000000000000022);
    if (v269)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v314, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  v270 = sub_1D8CB4E8C(v76, &selRef_remoteAddress);
  if (v271)
  {
    v272 = v270;
    v273 = v271;
    v274 = sub_1D8CD7E84();
    if (v275)
    {
      v276 = 0;
      v277 = 0xE000000000000000;
    }

    else
    {
      *&v314 = 58;
      *(&v314 + 1) = 0xE100000000000000;
      v313 = v274;
      v278 = sub_1D8CD8124();
      MEMORY[0x1DA726A90](v278);

      v277 = *(&v314 + 1);
      v276 = v314;
    }

    *&v314 = v272;
    *(&v314 + 1) = v273;
    MEMORY[0x1DA726A90](v276, v277);

    v279 = v288;
    sub_1D8CD7B44();
    v280 = sub_1D8CD7B14();
    v282 = v281;

    (*(v289 + 8))(v279, v290);
    v315 = MEMORY[0x1E6969080];
    if (v282 >> 60 == 15)
    {
      v283 = 0;
    }

    else
    {
      v283 = v280;
    }

    v284 = 0xC000000000000000;
    if (v282 >> 60 != 15)
    {
      v284 = v282;
    }

    *&v314 = v283;
    *(&v314 + 1) = v284;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v285, v286, v287);
    return v312;
  }

  return v182;
}

unint64_t sub_1D8CB42BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC848, &unk_1D8CD9690);
    v2 = sub_1D8CD80C4();
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1D8CB4DCC(*(a1 + 48) + 40 * v10, __src);
    sub_1D8C9D24C(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D8CB4DCC(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1D8C9D24C(&__dst[40], v22);
    sub_1D8C9B71C(__dst, &qword_1ECAACA08, &qword_1D8CD9E48);
    v23 = v20;
    sub_1D8CAD7DC(v22, v24);
    v11 = v23;
    sub_1D8CAD7DC(v24, v25);
    sub_1D8CAD7DC(v25, &v23);
    result = sub_1D8C9785C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      result = sub_1D8CAD7DC(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1D8CAD7DC(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_1D8C9B71C(__dst, &qword_1ECAACA08, &qword_1D8CD9E48);

  return 0;
}

void sub_1D8CB4574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_24_0(a1, a2, a3);
  OUTLINED_FUNCTION_5_0(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_1D8CD81D4();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA28, &qword_1D8CD9E60);
  OUTLINED_FUNCTION_30_0();
  if (sub_1D8CD8084())
  {
    v14 = *v6;
    sub_1D8C9785C(v5, v3);
    OUTLINED_FUNCTION_29_0();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v6;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v4;
    OUTLINED_FUNCTION_39_0();
  }

  else
  {
    sub_1D8C979A8(v12, v5, v3, v4, v17);
    OUTLINED_FUNCTION_39_0();
  }
}

uint64_t sub_1D8CB466C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8C9785C(a2, a3);
  OUTLINED_FUNCTION_5_0(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA38, &unk_1D8CDA960);
  OUTLINED_FUNCTION_30_0();
  if (sub_1D8CD8084())
  {
    v16 = *v4;
    v17 = sub_1D8C9785C(a2, a3);
    if ((v15 & 1) == (v18 & 1))
    {
      v14 = v17;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = sub_1D8CD7324();
    OUTLINED_FUNCTION_25(v21);
    v23 = *(v22 + 40);
    v24 = v20 + *(v22 + 72) * v14;
    OUTLINED_FUNCTION_39_0();

    __asm { BRAA            X3, X16 }
  }

  sub_1D8CB4B7C(v14, a2, a3, a1, v19);
  OUTLINED_FUNCTION_39_0();
}

uint64_t sub_1D8CB47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8C9785C(a3, a4);
  OUTLINED_FUNCTION_5_0(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA30, &qword_1D8CD9E68);
  if ((sub_1D8CD8084() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1D8C9785C(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_1D8CB4C2C(v16, a3, a4, a1, a2, v21);
  }
}

_OWORD *sub_1D8CB4908(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D8CC0724(a2);
  OUTLINED_FUNCTION_5_0(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA40, &unk_1D8CD9E70);
  if (sub_1D8CD8084())
  {
    v14 = *v3;
    sub_1D8CC0724(a2);
    OUTLINED_FUNCTION_29_0();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v3;
  if (v13)
  {
    v18 = (v17[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);

    return sub_1D8CAD7DC(a1, v18);
  }

  else
  {
    sub_1D8CB4DCC(a2, v20);
    return sub_1D8CB4C78(v12, v20, a1, v17);
  }
}

_OWORD *sub_1D8CB4A34(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8C9785C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
  if ((sub_1D8CD8084() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1D8C9785C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);

    return sub_1D8CAD7DC(a1, v17);
  }

  else
  {
    sub_1D8CB4CF4(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1D8CB4B7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1D8CD7324();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1D8CB4C2C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1D8CB4C78(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D8CAD7DC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1D8CB4CF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D8CAD7DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1D8CB4D60(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8CD7A64();

  return v3;
}

uint64_t sub_1D8CB4E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_25(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D8CB4E8C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D8CD7B04();

  return v4;
}

double OUTLINED_FUNCTION_15_0()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void OUTLINED_FUNCTION_31_0()
{
  v1 = *(v0 - 248);
  v2 = *(v0 - 288);
  v3 = *(v0 - 296);
}

unint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{

  return sub_1D8C9785C(a1, v1 | 0x8000000000000000);
}

uint64_t sub_1D8CB4FB8(char a1, char a2)
{
  v3 = 0xD00000000000001ALL;
  v4 = ".SearchAnalyticsWorker";
  v5 = ".SearchAnalyticsWorker";
  switch(a1)
  {
    case 1:
      v5 = "SpotlightFeatureExtraction";
      goto LABEL_5;
    case 2:
      v5 = "SpotlightFeatureReport";
      v3 = 0xD000000000000015;
      break;
    case 3:
      v5 = "Spotlight.SurveyDaily";
LABEL_5:
      v3 = 0xD000000000000016;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001ALL;
  switch(a2)
  {
    case 1:
      v4 = "SpotlightFeatureExtraction";
      goto LABEL_10;
    case 2:
      v4 = "SpotlightFeatureReport";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "Spotlight.SurveyDaily";
LABEL_10:
      v6 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_1();
  }

  return v8 & 1;
}

uint64_t sub_1D8CB5114(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "com.apple.photos";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 1)
    {
      v6 = "coreparsec_feedbacks";
    }

    else
    {
      v6 = "coreparsec_aggregations";
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = "com.apple.photos";
  }

  if (a2)
  {
    v3 = "coreparsec_feedbacks";
    v2 = a2 == 1 ? 0xD000000000000017 : 0xD000000000000016;
    if (a2 != 1)
    {
      v3 = "coreparsec_aggregations";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_1();
  }

  return v8 & 1;
}

uint64_t sub_1D8CB5220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_15_1();
  }

  return v9 & 1;
}

void sub_1D8CB52B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[3] + 16);
  os_unfair_lock_lock(v5);
  v6 = v2[4];
  v7 = v2[5];
  v2[4] = a1;
  v2[5] = a2;
  sub_1D8CAE278(v6);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1D8CB5318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D8C9B12C(a3, v27 - v11, &unk_1ECAAC790, &qword_1D8CD9550);
  v13 = sub_1D8CD7D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D8C9B71C(v12, &unk_1ECAAC790, &qword_1D8CD9550);
  }

  else
  {
    sub_1D8CD7D54();
    OUTLINED_FUNCTION_25(v13);
    (*(v15 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D8CD7D14();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D8CD7B94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D8C9B71C(a3, &unk_1ECAAC790, &qword_1D8CD9550);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8C9B71C(a3, &unk_1ECAAC790, &qword_1D8CD9550);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void *sub_1D8CB55F8()
{
  v0[2] = 0;
  type metadata accessor for Locker();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  return v0;
}

uint64_t sub_1D8CB5650()
{
  result = sub_1D8CD7AD4();
  qword_1ECAACA50 = result;
  return result;
}

id static NSNotificationName.PegasusConfigUpdate.getter()
{
  if (qword_1ECAAC608 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  swift_beginAccess();
  v0 = qword_1ECAACA50;

  return v0;
}

void static NSNotificationName.PegasusConfigUpdate.setter(uint64_t a1)
{
  if (qword_1ECAAC608 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  swift_beginAccess();
  v2 = qword_1ECAACA50;
  qword_1ECAACA50 = a1;
}

uint64_t (*static NSNotificationName.PegasusConfigUpdate.modify())()
{
  if (qword_1ECAAC608 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ConfigurationManager.__allocating_init(defaults:context:configFactory:urlDataSource:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_8_1();
  v12 = swift_allocObject();
  ConfigurationManager.init(defaults:context:configFactory:urlDataSource:delegate:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ConfigurationManager.init(defaults:context:configFactory:urlDataSource:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1D8C9B12C(a2, &v39, &qword_1ECAACA58, &qword_1D8CD9E80);
  if (v40)
  {
    sub_1D8C9B778(&v39, v41);
  }

  else
  {
    v41[3] = &type metadata for ConfigContext;
    v41[4] = &off_1F54546B0;
  }

  if (qword_1ED9C40D0 != -1)
  {
    OUTLINED_FUNCTION_2_3();
  }

  v35 = xmmword_1ED9C40D8;
  v36 = unk_1ED9C40E8;
  v37 = xmmword_1ED9C40F8;
  v38 = unk_1ED9C4108;
  if (a3)
  {
    sub_1D8C969AC(&v35, v34);
    v11 = a3;
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for ConfigFactoryInternal());
    sub_1D8C969AC(&v35, v34);
    v11 = [v12 init];
  }

  sub_1D8CB700C(v41, v34);
  type metadata accessor for PARNetworkRequestFactory();
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  swift_allocObject();
  v26 = a1;
  swift_unknownObjectRetain();
  v13 = sub_1D8CD5890(a1, v32);
  sub_1D8C9B12C(a4, &v30, &qword_1ECAACA60, &qword_1D8CD9E88);
  v28 = a4;
  if (v31)
  {
    sub_1D8C9B778(&v30, v32);
  }

  else
  {
    sub_1D8CB6FC8();
    sub_1D8CB5CF4(v32);
    if (v31)
    {
      sub_1D8C9B71C(&v30, &qword_1ECAACA60, &qword_1D8CD9E88);
    }
  }

  v14 = [objc_opt_self() defaultManager];
  type metadata accessor for PegasusConfigController();
  v15 = swift_allocObject();
  type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_16_1();
  *(v15 + 16) = sub_1D8CC2F5C();
  type metadata accessor for TaskCoordinator();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  *(v15 + 200) = sub_1D8CBEC84();
  type metadata accessor for ConfigUsageReporter();
  OUTLINED_FUNCTION_60();
  v16 = swift_allocObject();
  type metadata accessor for ConfigUsageReporter.State();
  OUTLINED_FUNCTION_16_1();
  sub_1D8CA7034();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA70, &unk_1D8CD9E90);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *(v16 + 16) = v19;
  *(v15 + 216) = v16;
  *(v15 + 232) = 0;
  swift_unknownObjectWeakInit();
  sub_1D8CB700C(v34, v15 + 80);
  *(v15 + 24) = v13;
  *(v15 + 32) = &off_1F5453C38;
  sub_1D8CB700C(v32, v15 + 40);
  *(v15 + 120) = v14;
  *(v15 + 128) = v11;
  v20 = v36;
  *(v15 + 136) = v35;
  *(v15 + 152) = v20;
  v21 = v38;
  *(v15 + 168) = v37;
  *(v15 + 184) = v21;
  *(v15 + 232) = a6;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA78, &qword_1D8CD9EA0);
  OUTLINED_FUNCTION_16_1();
  v22 = v14;
  swift_unknownObjectRetain();
  *(v15 + 240) = sub_1D8CB55F8();
  type metadata accessor for ConfigTaskController();
  swift_allocObject();
  v23 = swift_retain_n();
  *(v15 + 208) = sub_1D8CA5B6C(v23);
  OUTLINED_FUNCTION_60();
  v24 = swift_allocObject();
  swift_weakInit();
  sub_1D8CB52B4(sub_1D8CB706C, v24);

  sub_1D8CA0CD4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1D8C9B71C(v28, &qword_1ECAACA60, &qword_1D8CD9E88);
  sub_1D8C9B71C(a2, &qword_1ECAACA58, &qword_1D8CD9E80);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  *(v7 + 16) = v15;
  *(v7 + 24) = &off_1F54549D0;
  return v7;
}

id static ConfigurationManager.defaultConfigFactory.getter()
{
  v0 = objc_allocWithZone(type metadata accessor for ConfigFactoryInternal());

  return [v0 init];
}

void sub_1D8CB5CF4(void *a1@<X8>)
{
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  [v2 setWaitsForConnectivity_];
  [v2 set:1 disableAPWakeOnIdleConnections:?];
  if (qword_1ECAAC4B8 != -1)
  {
    swift_once();
  }

  if ((byte_1ED9C5648 & 1) == 0)
  {
    v3 = *MEMORY[0x1E697B2B0];
    v4 = sub_1D8CD7B04();
    sub_1D8CB77D0(v4, v5, v2);
  }

  v6 = [objc_opt_self() sessionWithConfiguration_];
  a1[3] = sub_1D8CB6FC8();
  a1[4] = &protocol witness table for NSURLSession;

  *a1 = v6;
}

uint64_t ConfigurationManager.__allocating_init(defaults:context:configFactory:urlDataSource:authTokenProvider:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_8_1();
  v14 = swift_allocObject();
  ConfigurationManager.init(defaults:context:configFactory:urlDataSource:authTokenProvider:delegate:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t ConfigurationManager.init(defaults:context:configFactory:urlDataSource:authTokenProvider:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_1D8C9B12C(a2, &v40, &qword_1ECAACA58, &qword_1D8CD9E80);
  if (v41)
  {
    sub_1D8C9B778(&v40, v42);
  }

  else
  {
    v42[3] = &type metadata for ConfigContext;
    v42[4] = &off_1F54546B0;
  }

  if (qword_1ED9C40D0 != -1)
  {
    OUTLINED_FUNCTION_2_3();
  }

  v36 = xmmword_1ED9C40D8;
  v37 = unk_1ED9C40E8;
  v38 = xmmword_1ED9C40F8;
  v39 = unk_1ED9C4108;
  if (a3)
  {
    sub_1D8C969AC(&v36, v35);
    v13 = a3;
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for ConfigFactoryInternal());
    sub_1D8C969AC(&v36, v35);
    v13 = [v14 init];
  }

  sub_1D8CB700C(v42, v35);
  sub_1D8C9B12C(a5, v34, &qword_1ECAACA80, &qword_1D8CD9EA8);
  type metadata accessor for PARNetworkRequestFactory();
  swift_allocObject();
  v28 = a1;
  swift_unknownObjectRetain();
  v15 = sub_1D8CD5890(a1, v34);
  sub_1D8C9B12C(a4, &v32, &qword_1ECAACA60, &qword_1D8CD9E88);
  v30 = a4;
  if (v33)
  {
    sub_1D8C9B778(&v32, v34);
  }

  else
  {
    sub_1D8CB6FC8();
    sub_1D8CB5CF4(v34);
    if (v33)
    {
      sub_1D8C9B71C(&v32, &qword_1ECAACA60, &qword_1D8CD9E88);
    }
  }

  v16 = [objc_opt_self() defaultManager];
  type metadata accessor for PegasusConfigController();
  v17 = swift_allocObject();
  type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_16_1();
  *(v17 + 16) = sub_1D8CC2F5C();
  type metadata accessor for TaskCoordinator();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  *(v17 + 200) = sub_1D8CBEC84();
  type metadata accessor for ConfigUsageReporter();
  OUTLINED_FUNCTION_60();
  v18 = swift_allocObject();
  type metadata accessor for ConfigUsageReporter.State();
  OUTLINED_FUNCTION_16_1();
  sub_1D8CA7034();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA70, &unk_1D8CD9E90);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = v20;
  *(v18 + 16) = v21;
  *(v17 + 216) = v18;
  *(v17 + 232) = 0;
  swift_unknownObjectWeakInit();
  sub_1D8CB700C(v35, v17 + 80);
  *(v17 + 24) = v15;
  *(v17 + 32) = &off_1F5453C38;
  sub_1D8CB700C(v34, v17 + 40);
  *(v17 + 120) = v16;
  *(v17 + 128) = v13;
  v22 = v37;
  *(v17 + 136) = v36;
  *(v17 + 152) = v22;
  v23 = v39;
  *(v17 + 168) = v38;
  *(v17 + 184) = v23;
  *(v17 + 232) = a7;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA78, &qword_1D8CD9EA0);
  OUTLINED_FUNCTION_16_1();
  v24 = v16;
  swift_unknownObjectRetain();
  *(v17 + 240) = sub_1D8CB55F8();
  type metadata accessor for ConfigTaskController();
  swift_allocObject();
  v25 = swift_retain_n();
  *(v17 + 208) = sub_1D8CA5B6C(v25);
  OUTLINED_FUNCTION_60();
  v26 = swift_allocObject();
  swift_weakInit();
  sub_1D8CB52B4(sub_1D8CB7834, v26);

  sub_1D8CA0CD4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1D8C9B71C(a5, &qword_1ECAACA80, &qword_1D8CD9EA8);
  sub_1D8C9B71C(v30, &qword_1ECAACA60, &qword_1D8CD9E88);
  sub_1D8C9B71C(a2, &qword_1ECAACA58, &qword_1D8CD9E80);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  *(v8 + 16) = v17;
  *(v8 + 24) = &off_1F54549D0;
  return v8;
}

id ConfigurationManager.configuration(for:forceFetch:completion:)(unint64_t a1, char a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1D8C96A08(a1, &v28);
  v13 = v29;
  if (v29)
  {
    v14 = v28;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    if (v28)
    {
      v15 = sub_1D8CD7D64();
      v16 = a2 & 1;
      v24 = *(v4 + 16);
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = v16;
      *(v17 + 40) = v24;
      *(v17 + 56) = v14;
      *(v17 + 72) = v13;
      v18 = v26;
      *(v17 + 80) = v25;
      *(v17 + 96) = v18;
      *(v17 + 112) = v27;
      *(v17 + 120) = a3;
      *(v17 + 128) = a4;
      swift_unknownObjectRetain();
      sub_1D8C944C4(a3);
      sub_1D8CB5318(0, 0, v12, &unk_1D8CD9EB8, v17);

      return sub_1D8CB6A88(a1);
    }

    sub_1D8C9B71C(&v28, &qword_1ECAACA88, &qword_1D8CD9EC0);
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7E0, &qword_1D8CD95D0);
    inited = swift_initStackObject();
    v21 = OUTLINED_FUNCTION_14_0(inited, xmmword_1D8CD8F40);
    OUTLINED_FUNCTION_4_2(v21, MEMORY[0x1E69E6158], v22);
    sub_1D8CD7A84();
    v23 = OUTLINED_FUNCTION_17_1(objc_allocWithZone(MEMORY[0x1E696ABC0]), 0x80000001D8CDDBE0);
    a3(v23, 1);
  }

  return 0;
}

uint64_t sub_1D8CB6540(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v17;
  if (a4)
  {
    v9 = a7[1];
    *(v8 + 80) = *a7;
    *(v8 + 96) = v9;
    v10 = a7[3];
    *(v8 + 112) = a7[2];
    *(v8 + 128) = v10;
    v11 = swift_task_alloc();
    *(v8 + 208) = v11;
    *v11 = v8;
    v11[1] = sub_1D8CB6678;

    return sub_1D8CA15CC(v8 + 80);
  }

  else
  {
    v13 = a7[1];
    *(v8 + 16) = *a7;
    *(v8 + 32) = v13;
    v14 = a7[3];
    *(v8 + 48) = a7[2];
    *(v8 + 64) = v14;
    v15 = swift_task_alloc();
    *(v8 + 224) = v15;
    *v15 = v8;
    v15[1] = sub_1D8CB6880;

    return sub_1D8C96AE4(v8 + 16);
  }
}

uint64_t sub_1D8CB6678()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v9 + 216) = v0;

  if (v0)
  {
    v10 = sub_1D8CB67F4;
  }

  else
  {
    v10 = sub_1D8CB6780;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D8CB6780()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 152);
  if (*(v0 + 192))
  {
    v2 = OUTLINED_FUNCTION_20_1();
    v3(v2, 0);
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1D8CB67F4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_20_1();
    v2(v1, 1);
  }

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1D8CB6880()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v9 + 232) = v0;

  if (v0)
  {
    v10 = sub_1D8CB69FC;
  }

  else
  {
    v10 = sub_1D8CB6988;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1D8CB6988()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 176);
  if (*(v0 + 192))
  {
    v2 = OUTLINED_FUNCTION_20_1();
    v3(v2, 0);
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1D8CB69FC()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_20_1();
    v2(v1, 1);
  }

  OUTLINED_FUNCTION_13();

  return v4();
}

id sub_1D8CB6A88(unint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(*(v4 + 8) + 8))(ObjectType);
  if (v6)
  {
    sub_1D8C96A08(a1, &v10);
    if (v11)
    {
      if (v10)
      {
        v7 = sub_1D8CD7AD4();
        sub_1D8C9B71C(&v10, &qword_1ECAACA88, &qword_1D8CD9EC0);
        v8 = [v6 findConfigForUserAgent_];
        swift_unknownObjectRelease();

        return v8;
      }

      else
      {
        sub_1D8C9B71C(&v10, &qword_1ECAACA88, &qword_1D8CD9EC0);
      }
    }
  }

  return v6;
}

uint64_t sub_1D8CB6B78()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v3 + 312) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CB6CC0, 0, 0);
  }

  else
  {
    sub_1D8C9B71C(v3 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
    v9 = OUTLINED_FUNCTION_18_1();

    return v10(v9);
  }
}

uint64_t sub_1D8CB6CC0()
{
  OUTLINED_FUNCTION_10();
  sub_1D8C9B71C(v0 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
  v1 = *(v0 + 312);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1D8CB6D2C()
{
  OUTLINED_FUNCTION_10();
  sub_1D8C9B71C(v0 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ConfigurationManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConfigurationManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1D8CB6E30(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8CB6ED8;

  return ConfigurationManager.configuration(for:forceFetch:)(a1, a2);
}

uint64_t sub_1D8CB6ED8()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_1D8CB6FC8()
{
  result = qword_1ECAACA68;
  if (!qword_1ECAACA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAACA68);
  }

  return result;
}

uint64_t sub_1D8CB700C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_25(v3);
  (*v4)(a2);
  return a2;
}

id sub_1D8CB7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D8CD7AD4();

  if (a4)
  {
    v8 = sub_1D8CD7A54();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1D8CB7124(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 120);
  v9 = *(v1 + 128);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12_1(v10);
  *v11 = v12;
  v11[1] = sub_1D8CAD8E0;

  return sub_1D8CB6540(a1, v3, v4, v5, v6, v7, (v1 + 56), v8);
}

uint64_t dispatch thunk of ConfigFetcher.configuration(for:forceFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12_1(v10);
  *v11 = v12;
  v11[1] = sub_1D8CB7374;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1D8CB7374()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_15();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1D8CB74C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8CB75BC;

  return v7(a1);
}

uint64_t sub_1D8CB75BC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_1D8CB76A0()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_1(v4);

  return v7(v6);
}

uint64_t sub_1D8CB7738()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_1(v4);

  return v7(v6);
}

void sub_1D8CB77D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8CD7AD4();

  [a3 set:v4 tlsTrustPinningPolicyName:?];
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_1D8CD8154();
}

id OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2)
{

  return sub_1D8CB7074(0xD000000000000018, a2, 3, v2);
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8CB79F0(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_1D8CB8010(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1D8CB80B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8CB79F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8CB80E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8CB7FFC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D8CB810C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8CB8010(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D8CB8150()
{
  result = qword_1ED9C3D18;
  if (!qword_1ED9C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D18);
  }

  return result;
}

unint64_t sub_1D8CB81A8()
{
  result = qword_1ECAACA90;
  if (!qword_1ECAACA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACA90);
  }

  return result;
}

void sub_1D8CB81FC(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(sub_1D8CD7324() - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v18, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    v11 = v19;
    ++v6;
    if (v19)
    {
      v20 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v8 + 16);
        sub_1D8CC3608();
        v8 = v16;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1D8CC3608();
        v13 = v12 + 1;
        v8 = v17;
      }

      *(v8 + 16) = v13;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v20;
      *(v14 + 40) = v11;
      v6 = v10;
    }
  }
}

uint64_t sub_1D8CB837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAD0, &qword_1D8CDA958);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_1D8CD7324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1D8CADF40(a1, &qword_1ECAACAD0, &qword_1D8CDA958);
    sub_1D8CB9968(a2, a3, v11);

    return sub_1D8CADF40(v11, &qword_1ECAACAD0, &qword_1D8CDA958);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1D8CB466C(v16, a2, a3);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_1D8CB8580(char a1)
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](a1 & 1);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CB85E4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_queryItems;
  sub_1D8CD7324();
  *(v1 + v4) = sub_1D8CD7A84();
  v5 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_httpHeader;
  *(v1 + v5) = sub_1D8CD7A84();
  v6 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_urlComponents;
  v7 = sub_1D8CD73D4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + v6, a1, v7);
  v9 = sub_1D8CD7334();
  sub_1D8CB870C(v9);

  (*(v8 + 8))(a1, v7);
  return v2;
}

uint64_t sub_1D8CB870C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(sub_1D8CD7324() - 8);
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      do
      {
        result = sub_1D8CB9540(v4);
        v4 += v5;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

char *sub_1D8CB87AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC7A8, &unk_1D8CD9590);
  v5 = OUTLINED_FUNCTION_36(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - v8;
  v10 = sub_1D8CD73D4();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v32 - v20;
  sub_1D8CD7364();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1D8CADF40(v9, &unk_1ECAAC7A8, &unk_1D8CD9590);
    sub_1D8CB9B58();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    v23 = sub_1D8CD7554();
    OUTLINED_FUNCTION_8(v23);
    (*(v24 + 8))(a1);
  }

  else
  {
    (*(v13 + 32))(v21, v9, v10);
    v25 = sub_1D8CD7344();
    if (v26)
    {
      v32[4] = v25;
      v32[5] = v26;
      v32[2] = 43;
      v32[3] = 0xE100000000000000;
      v32[0] = 3158565;
      v32[1] = 0xE300000000000000;
      sub_1D8C94EC8();
      sub_1D8CD7F44();
      v33 = v13;

      v13 = v33;
      sub_1D8CD7354();
    }

    (*(v13 + 16))(v18, v21, v10);
    v27 = *(v2 + 48);
    v28 = *(v2 + 52);
    v9 = swift_allocObject();
    sub_1D8CB85E4(v18);
    v29 = sub_1D8CD7554();
    OUTLINED_FUNCTION_8(v29);
    (*(v30 + 8))(a1);
    (*(v13 + 8))(v21, v10);
  }

  return v9;
}

uint64_t sub_1D8CB8AC8(uint64_t a1)
{
  v2 = sub_1D8CD72E4();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = sub_1D8CD72D4();
  MEMORY[0x1EEE9AC00](v10);
  v14[-2] = v9;
  sub_1D8CB81FC(sub_1D8CB9BAC, &v14[-4], a1);
  v14[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAB0, &unk_1D8CDA940);
  sub_1D8CB9BC8();
  v12 = sub_1D8CD7AB4();

  (*(v5 + 8))(v9, v2);
  return v12;
}

uint64_t sub_1D8CB8C60@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8CD7304();
  sub_1D8C94EC8();
  v2 = sub_1D8CD7F54();
  v4 = v3;

  if (v4)
  {
    result = sub_1D8CD7314();
    if (v6)
    {
      v7 = sub_1D8CD7F54();
      v9 = v8;

      if (v9)
      {

        MEMORY[0x1DA726A90](61, 0xE100000000000000);

        MEMORY[0x1DA726A90](v7, v9);
      }
    }
  }

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8CB8D98@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v4 = OUTLINED_FUNCTION_36(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - v7;
  v9 = sub_1D8CD7554();
  v10 = OUTLINED_FUNCTION_3(v9);
  v63 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  v57 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v56 - v17;
  v18 = sub_1D8CD73D4();
  v19 = OUTLINED_FUNCTION_3(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_queryItems;
  swift_beginAccess();
  v27 = *(v1 + v26);

  v62[0] = sub_1D8CBC544(v28);
  sub_1D8CB9AB0(v62);
  v58 = v2;
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v29 = v62[0];
    v30 = *(v21 + 16);
    v59 = v1;
    v30(v25, v1 + OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_urlComponents, v18);
    sub_1D8CB8AC8(v29);

    sub_1D8CD7354();
    v31 = v25;
    sub_1D8CD7374();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1D8CADF40(v8, &qword_1ECAAC668, &qword_1D8CD8FA0);
      sub_1D8CB9B58();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
      return (*(v21 + 8))(v31, v18);
    }

    v33 = v9;
    v34 = v63;
    v35 = *(v63 + 32);
    v36 = v61;
    v56 = v33;
    v35(v61, v8);
    v37 = sub_1D8CD7504();
    if (!v38)
    {
LABEL_15:
      if (qword_1ED9C4150 != -1)
      {
        swift_once();
      }

      v44 = sub_1D8CD7A04();
      __swift_project_value_buffer(v44, qword_1ED9C5668);
      v45 = sub_1D8CD79E4();
      v46 = sub_1D8CD7E24();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1D8C92000, v45, v46, "Scheme for url is neither http nor https.", v47, 2u);
        MEMORY[0x1DA727900](v47, -1, -1);
      }

      sub_1D8CB9B58();
      swift_allocError();
      *v48 = 0;
      swift_willThrow();
      (*(v34 + 8))(v36, v56);
      return (*(v21 + 8))(v31, v18);
    }

    v39 = v37;
    v40 = v38;
    v41 = v37 == 1886680168 && v38 == 0xE400000000000000;
    if (v41 || (sub_1D8CD8154() & 1) != 0 || (v39 == 0x7370747468 ? (v42 = v40 == 0xE500000000000000) : (v42 = 0), v42))
    {
    }

    else
    {
      v43 = sub_1D8CD8154();

      if ((v43 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v50 = v36;
    v51 = v36;
    v52 = v56;
    (*(v34 + 16))(v57, v50, v56);
    sub_1D8CD72A4();
    v53 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_httpHeader;
    v54 = v59;
    swift_beginAccess();
    v55 = *(v54 + v53);

    sub_1D8CD7294();
    (*(v34 + 8))(v51, v52);
    return (*(v21 + 8))(v31, v18);
  }

  return result;
}

uint64_t sub_1D8CB92E4()
{
  v0 = sub_1D8CD7304();
  v2 = v1;
  if (v0 == sub_1D8CD7304() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D8CD8154();
  }

  return v5 & 1;
}

uint64_t sub_1D8CB937C()
{
  v1 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_urlComponents;
  v2 = sub_1D8CD73D4();
  OUTLINED_FUNCTION_8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_queryItems);

  v5 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_httpHeader);

  return v0;
}

uint64_t sub_1D8CB93F4()
{
  sub_1D8CB937C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ParsecURLRequestBuilder()
{
  result = qword_1ED9C40A0;
  if (!qword_1ED9C40A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CB94A0()
{
  result = sub_1D8CD73D4();
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

uint64_t sub_1D8CB9540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAD0, &qword_1D8CDA958);
  v3 = OUTLINED_FUNCTION_36(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = sub_1D8CD7304();
  v10 = v9;
  v11 = sub_1D8CD7324();
  OUTLINED_FUNCTION_8(v11);
  (*(v12 + 16))(v7, a1, v11);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1D8CB837C(v7, v8, v10);
  return swift_endAccess();
}

uint64_t sub_1D8CB9654(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAD0, &qword_1D8CDA958);
  v6 = OUTLINED_FUNCTION_36(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_queryItems;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (*(v16 + 16) && (v17 = sub_1D8C9785C(a1, a2), (v18 & 1) != 0))
  {
    v19 = v17;
    v27 = a2;
    v20 = *(v16 + 56);
    v21 = sub_1D8CD7324();
    OUTLINED_FUNCTION_8(v21);
    a2 = v27;
    (*(v22 + 16))(v14, v20 + *(v22 + 72) * v19, v21);
    v23 = v14;
    v24 = 0;
  }

  else
  {
    v21 = sub_1D8CD7324();
    v23 = v14;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v21);
  swift_endAccess();
  sub_1D8CD7324();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v21);
  result = sub_1D8CADF40(v14, &qword_1ECAACAD0, &qword_1D8CDA958);
  if (EnumTagSinglePayload == 1)
  {

    sub_1D8CD72F4();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
    swift_beginAccess();
    sub_1D8CB837C(v11, a1, a2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D8CB9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_httpHeader;
  swift_beginAccess();
  if (!*(*(v4 + v9) + 16) || (sub_1D8C9785C(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();

    v11 = *(v4 + v9);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + v9);
    sub_1D8CB47C0(a3, a4, a1, a2);
    *(v4 + v9) = v13;
  }

  return swift_endAccess();
}

uint64_t sub_1D8CB9968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D8C9785C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA38, &unk_1D8CDA960);
    sub_1D8CD8084();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_1D8CD7324();
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_1D8CD8094();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_1D8CD7324();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_1D8CB9AB0(size_t *a1)
{
  v2 = *(sub_1D8CD7324() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D8CBB6F0(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D8CB9C2C(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_1D8CB9B58()
{
  result = qword_1ECAACAA8;
  if (!qword_1ECAACAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACAA8);
  }

  return result;
}

unint64_t sub_1D8CB9BC8()
{
  result = qword_1ECAACAB8;
  if (!qword_1ECAACAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAACAB0, &unk_1D8CDA940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACAB8);
  }

  return result;
}

uint64_t sub_1D8CB9C2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D8CD8114();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D8CD7324();
        v6 = sub_1D8CD7D04();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D8CD7324() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D8CBA07C(v8, v9, a1, v4);
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
    return sub_1D8CB9D5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8CB9D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D8CD7324();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_1D8CD7304();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_1D8CD7304() && v32 == v33)
        {
          break;
        }

        v35 = sub_1D8CD8154();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D8CBA07C(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_1D8CD7324();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v143 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v143 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v143 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v143 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_1D8CB92E4();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = sub_1D8CD7304();
        v52 = v51;
        if (v50 == sub_1D8CD7304() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_1D8CD8154();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_1D8CC36D4();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_1D8CC36D4();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_1D8CBAC40(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        memmove(&v91[16 * v94], v128 + 16, 16 * (v130 - 1 - v94));
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_1D8CBB248(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = v139[1];
      sub_1D8CBAC40(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      memmove(v139, v139 + 2, 16 * v141);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_1D8CD7304();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_1D8CD7304() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_1D8CD8154();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

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
}