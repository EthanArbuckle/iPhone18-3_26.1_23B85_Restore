uint64_t PRPosterSuggestionMetadata.encodeJSON()()
{
  v1 = v0;
  v105 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341440);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v90 - v6;
  v101 = MEMORY[0x1E69E7CC8];
  v8 = [v1 lastModifiedDate];
  if (v8)
  {
    v9 = v8;
    sub_1A8BDDAD4();

    v10 = sub_1A8BDDAE4();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v10 = sub_1A8BDDAE4();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_1A8BB66B4(v5, v7);
  sub_1A8BDDAE4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_1A8BAF4B8(v7, &qword_1EB341440);
    sub_1A8BB4D58(0xD000000000000010, 0x80000001A8C03230, &v103);
    sub_1A8BAF4B8(&v103, &qword_1EB341448);
  }

  else
  {
    sub_1A8BDDAB4();
    v104 = MEMORY[0x1E69E63B0];
    *&v103 = v12;
    (*(v11 + 8))(v7, v10);
    sub_1A8BAF4A8(&v103, v102);
    v13 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v13;
    sub_1A8BB5C44(v102, 0xD000000000000010, 0x80000001A8C03230, isUniquelyReferenced_nonNull_native);
    v101 = v100;
  }

  v15 = [v1 suggestedGalleryItem];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1A8BB12C8();
    if (v18)
    {
      v104 = MEMORY[0x1E69E6158];
      *&v103 = v17;
      *(&v103 + 1) = v18;
      sub_1A8BAF4A8(&v103, v102);
      v19 = v101;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v19;
      sub_1A8BB5C44(v102, 0xD000000000000014, 0x80000001A8C03280, v20);

      v101 = v100;
    }

    else
    {
      sub_1A8BB4D58(0xD000000000000014, 0x80000001A8C03280, &v103);

      sub_1A8BAF4B8(&v103, &qword_1EB341448);
    }
  }

  v91 = v1;
  v21 = [v1 suggestedComplicationsByIdentifier];
  sub_1A8BA3FE4(0, &qword_1EB341450);
  v22 = sub_1A8BDE0E4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341458);
  v23 = sub_1A8BDE354();
  v25 = v23;
  v26 = 0;
  v28 = (v22 + 64);
  v27 = *(v22 + 64);
  v96 = v22;
  v29 = 1 << *(v22 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v93 = 0;
  v94 = v23 + 64;
  v33 = &unk_1EB33D000;
  *&v24 = 138412546;
  v92 = v24;
  v95 = v23;
  if (v31)
  {
    while (1)
    {
      v34 = __clz(__rbit64(v31));
      v97 = (v31 - 1) & v31;
LABEL_20:
      v37 = v34 | (v26 << 6);
      v38 = *(v96 + 56);
      v39 = (*(v96 + 48) + 16 * v37);
      v40 = v39[1];
      v99 = *v39;
      v41 = *(v38 + 8 * v37);
      v42 = objc_opt_self();
      *&v103 = 0;
      v98 = v40;

      v43 = v41;
      v44 = [v42 archivedDataWithRootObject:v43 requiringSecureCoding:1 error:&v103];
      v45 = v103;
      if (v44)
      {
        v46 = sub_1A8BDDA94();
        v48 = v47;

        v49 = sub_1A8BDDA84();
        v51 = v50;
        sub_1A8BB6724(v46, v48);
      }

      else
      {
        v52 = v45;
        v53 = sub_1A8BDDA54();

        swift_willThrow();
        if (v33[76] != -1)
        {
          swift_once();
        }

        v93 = 0;
        v54 = sub_1A8BDDC24();
        __swift_project_value_buffer(v54, qword_1EB342AA0);
        v55 = sub_1A8BDE1E4();
        v56 = v43;
        v57 = v53;
        v58 = sub_1A8BDDC14();

        if (os_log_type_enabled(v58, v55))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = v92;
          *(v59 + 4) = v56;
          *v60 = v56;
          *(v59 + 12) = 2112;
          v61 = v56;
          v62 = v53;
          v63 = _swift_stdlib_bridgeErrorToNSError();
          *(v59 + 14) = v63;
          v60[1] = v63;
          _os_log_impl(&dword_1A8AA7000, v58, v55, "Error archiving object %@: %@", v59, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341430);
          swift_arrayDestroy();
          v64 = v60;
          v33 = &unk_1EB33D000;
          MEMORY[0x1AC575150](v64, -1, -1);
          MEMORY[0x1AC575150](v59, -1, -1);
        }

        else
        {
        }

        v49 = 0;
        v51 = 0;
      }

      v25 = v95;
      *(v94 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v65 = (v25[6] + 16 * v37);
      v66 = v98;
      *v65 = v99;
      v65[1] = v66;
      v67 = (v25[7] + 16 * v37);
      *v67 = v49;
      v67[1] = v51;
      v68 = v25[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        break;
      }

      v25[2] = v70;
      v31 = v97;
      if (!v97)
      {
        goto LABEL_15;
      }
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_15:
  v35 = v26;
  while (1)
  {
    v26 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v26 >= v32)
    {
      break;
    }

    v36 = v28[v26];
    ++v35;
    if (v36)
    {
      v34 = __clz(__rbit64(v36));
      v97 = (v36 - 1) & v36;
      goto LABEL_20;
    }
  }

  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341460);
  *&v103 = v25;
  sub_1A8BAF4A8(&v103, v102);
  v71 = v101;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v100 = v71;
  sub_1A8BB5C44(v102, 0xD000000000000022, 0x80000001A8C03250, v72);
  v73 = objc_opt_self();
  v74 = sub_1A8BDE0D4();

  *&v103 = 0;
  v75 = [v73 dataWithJSONObject:v74 options:0 error:&v103];

  v76 = v103;
  if (v75)
  {
    v77 = sub_1A8BDDA94();

    return v77;
  }

  v78 = v76;
  v28 = sub_1A8BDDA54();

  swift_willThrow();
  if (v33[76] != -1)
  {
LABEL_41:
    swift_once();
  }

  v79 = sub_1A8BDDC24();
  __swift_project_value_buffer(v79, qword_1EB342AA0);
  v80 = sub_1A8BDE1E4();
  v81 = v91;
  v82 = v28;
  v83 = sub_1A8BDDC14();

  if (os_log_type_enabled(v83, v80))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = v92;
    *(v84 + 4) = v81;
    *v85 = v81;
    *(v84 + 12) = 2112;
    v86 = v81;
    v87 = v28;
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v84 + 14) = v88;
    v85[1] = v88;
    _os_log_impl(&dword_1A8AA7000, v83, v80, "Error serializing into json %@ : %@", v84, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341430);
    swift_arrayDestroy();
    MEMORY[0x1AC575150](v85, -1, -1);
    MEMORY[0x1AC575150](v84, -1, -1);
  }

  else
  {
  }

  return 0;
}

id sub_1A8BB3408(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1A8BDDA74();
    sub_1A8BB6C18(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t static PRPosterSuggestionMetadata.decodeObject(withJSON:)()
{
  v44[4] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341440);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v43 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v43 - v7;
  v9 = objc_opt_self();
  v10 = sub_1A8BDDA74();
  v44[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:v44];

  if (!v11)
  {
    v17 = v44[0];
    v18 = sub_1A8BDDA54();

    swift_willThrow();
    if (qword_1EB33D260 != -1)
    {
      swift_once();
    }

    v19 = sub_1A8BDDC24();
    __swift_project_value_buffer(v19, qword_1EB342AA0);
    v20 = sub_1A8BDE1E4();
    v21 = v18;
    v22 = sub_1A8BDDC14();

    if (os_log_type_enabled(v22, v20))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1A8AA7000, v22, v20, "Error decoding json data into an object: %@", v23, 0xCu);
      sub_1A8BAF4B8(v24, &qword_1EB341430);
      MEMORY[0x1AC575150](v24, -1, -1);
      MEMORY[0x1AC575150](v23, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v12 = v44[0];
  sub_1A8BDE2B4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341438);
  if (swift_dynamicCast())
  {
    v13 = v43[0];
  }

  else
  {
    v13 = 0;
  }

  if (v13 && *(v13 + 16))
  {

    v14 = sub_1A8BB4984(0xD000000000000010, 0x80000001A8C03230);
    if (v15)
    {
      sub_1A8BB6658(*(v13 + 56) + 32 * v14, v44);

      if (swift_dynamicCast())
      {
        v16 = 0;
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v16 = 1;
LABEL_17:
  v27 = sub_1A8BDDAE4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(v8, 1, 1, v27);
  if ((v16 & 1) == 0)
  {
    sub_1A8BDDAA4();
    sub_1A8BAF4B8(v8, &qword_1EB341440);
    v29(v6, 0, 1, v27);
    sub_1A8BB66B4(v6, v8);
  }

  if (!v13 || !*(v13 + 16))
  {
    goto LABEL_29;
  }

  v30 = sub_1A8BB4984(0xD000000000000014, 0x80000001A8C03280);
  if ((v31 & 1) == 0)
  {

LABEL_29:
    v34 = 0;
    v35 = 0;
    goto LABEL_30;
  }

  sub_1A8BB6658(*(v13 + 56) + 32 * v30, v44);

  v32 = swift_dynamicCast();
  v33 = v32 == 0;
  if (v32)
  {
    v34 = v43[0];
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = v43[1];
  }

LABEL_30:
  v36 = sub_1A8BB1530(v34, v35, &qword_1EB341558);

  if (v13)
  {
    if (*(v13 + 16) && (v37 = sub_1A8BB4984(0xD000000000000022, 0x80000001A8C03250), (v38 & 1) != 0))
    {
      sub_1A8BB6658(*(v13 + 56) + 32 * v37, v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341468);
      if (swift_dynamicCast())
      {
        sub_1A8BB3B84(v43[0]);

        goto LABEL_37;
      }
    }

    else
    {
    }
  }

  sub_1A8BB6B14(MEMORY[0x1E69E7CC0]);
LABEL_37:
  sub_1A8BAF440(v8, v3, &qword_1EB341440);
  sub_1A8BA3FE4(0, &qword_1EB341450);
  v39 = sub_1A8BDE0D4();

  v40 = 0;
  if ((*(v28 + 48))(v3, 1, v27) != 1)
  {
    v40 = sub_1A8BDDAC4();
    (*(v28 + 8))(v3, v27);
  }

  v41 = [objc_allocWithZone(PRPosterSuggestionMetadata) initWithSuggestedGalleryItem:v36 suggestedComplicationsByIdentifier:v39 lastModifiedDate:v40];

  sub_1A8BAF4B8(v8, &qword_1EB341440);
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_1A8BB3B84(uint64_t a1)
{
  v1 = a1;
  v44 = MEMORY[0x1E69E7CC8];
  v50 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
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
  v7 = 0;

LABEL_6:
  while (2)
  {
    v8 = v7;
    if (!v5)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v7 = v8;
LABEL_11:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(v1 + 48) + ((v7 << 10) | (16 * v9)));
      v11 = v10[1];
      log = *v10;

      v12 = sub_1A8BDDA64();
      if (v13 >> 60 == 15)
      {

        goto LABEL_6;
      }

      v14 = v12;
      v15 = v13;
      v46 = v11;
      sub_1A8BA3FE4(0, &qword_1EB341540);
      sub_1A8BA3FE4(0, &qword_1EB341450);
      v16 = sub_1A8BDE234();
      if (v48)
      {
        sub_1A8BB6C18(v14, v15);
        if (qword_1EB33D260 != -1)
        {
          swift_once();
        }

        v17 = sub_1A8BDDC24();
        __swift_project_value_buffer(v17, qword_1EB342AA0);
        v18 = sub_1A8BDE1E4();
        v19 = v48;
        v20 = sub_1A8BDDC14();

        if (os_log_type_enabled(v20, v18))
        {
          v21 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v49[0] = v43;
          *v21 = 136315394;
          v22 = sub_1A8BDE414();
          v24 = sub_1A8BB4208(v22, v23, v49);

          *(v21 + 4) = v24;
          *(v21 + 12) = 2112;
          v25 = v48;
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 14) = v26;
          *v42 = v26;
          _os_log_impl(&dword_1A8AA7000, v20, v18, "Error unarchiving object for class %s: %@", v21, 0x16u);
          sub_1A8BAF4B8(v42, &qword_1EB341430);
          MEMORY[0x1AC575150](v42, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x1AC575150](v43, -1, -1);
          MEMORY[0x1AC575150](v21, -1, -1);
        }

        else
        {
        }

        v48 = 0;
        goto LABEL_21;
      }

      v27 = v16;
      sub_1A8BB6C18(v14, v15);

      if (v27)
      {
        break;
      }

LABEL_21:
      v8 = v7;
      v1 = v45;
      if (!v5)
      {
LABEL_8:
        while (1)
        {
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v7 >= v6)
          {

            return;
          }

          v5 = *(v2 + 8 * v7);
          ++v8;
          if (v5)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_38;
      }
    }

    v28 = v27;
    v29 = *(v44 + 16);
    if (*(v44 + 24) <= v29)
    {
      sub_1A8BB5634(v29 + 1, 1);
    }

    v30 = v50;
    sub_1A8BDE3D4();
    sub_1A8BDE144();
    v31 = sub_1A8BDE404();
    v32 = v30 + 64;
    v44 = v30;
    v33 = -1 << *(v30 + 32);
    v34 = v31 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v30 + 64 + 8 * (v34 >> 6))) != 0)
    {
      v36 = __clz(__rbit64((-1 << v34) & ~*(v30 + 64 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v1 = v45;
LABEL_35:
      *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v41 = (*(v30 + 48) + 16 * v36);
      *v41 = log;
      v41[1] = v46;
      *(*(v30 + 56) + 8 * v36) = v28;
      ++*(v30 + 16);
      continue;
    }

    break;
  }

  v37 = 0;
  v38 = (63 - v33) >> 6;
  v1 = v45;
  while (++v35 != v38 || (v37 & 1) == 0)
  {
    v39 = v35 == v38;
    if (v35 == v38)
    {
      v35 = 0;
    }

    v37 |= v39;
    v40 = *(v32 + 8 * v35);
    if (v40 != -1)
    {
      v36 = __clz(__rbit64(~v40)) + (v35 << 6);
      goto LABEL_35;
    }
  }

LABEL_38:
  __break(1u);
}

id sub_1A8BB40A4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v5 = a3;
  v6 = sub_1A8BDDA94();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = a4(v6, v8);
  sub_1A8BB6724(v6, v8);

  return v9;
}

uint64_t sub_1A8BB4138(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1A8BB41AC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1A8BB4208(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1A8BB4208(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A8BB42D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A8BB6658(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1A8BB42D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A8BB43E0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1A8BDE324();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1A8BB43E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A8BB442C(a1, a2);
  sub_1A8BB455C(&unk_1F1C13160);
  return v3;
}

uint64_t sub_1A8BB442C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A8BB4648(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A8BDE324();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A8BDE184();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A8BB4648(v10, 0);
        result = sub_1A8BDE2E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A8BB455C(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A8BB46BC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A8BB4648(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1A8BB46BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341550);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_1A8BB47B0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1A8BB47E8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_1A8BB485C(uint64_t a1, double a2)
{
  sub_1A8BDE3D4();
  sub_1A8BDE274();
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  MEMORY[0x1AC573C00](*&v4);
  v5 = sub_1A8BDE404();

  return sub_1A8BB49FC(a2, a1, v5);
}

unint64_t sub_1A8BB48F0(uint64_t a1)
{
  sub_1A8BDE134();
  sub_1A8BDE3D4();
  sub_1A8BDE144();
  v2 = sub_1A8BDE404();

  return sub_1A8BB4AF0(a1, v2);
}

unint64_t sub_1A8BB4984(uint64_t a1, uint64_t a2)
{
  sub_1A8BDE3D4();
  sub_1A8BDE144();
  v4 = sub_1A8BDE404();

  return sub_1A8BB4BF4(a1, a2, v4);
}

unint64_t sub_1A8BB49FC(double a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    sub_1A8BA3FE4(0, &qword_1EB33CFA0);
    do
    {
      v8 = *(v3 + 48) + 16 * v5;
      v9 = *(v8 + 8);
      v10 = *v8;
      v11 = sub_1A8BDE264();

      if ((v11 & (v9 == a1)) == 1)
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A8BB4AF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A8BDE134();
      v8 = v7;
      if (v6 == sub_1A8BDE134() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A8BDE3B4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1A8BB4BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1A8BDE3B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_1A8BB4CAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A8BB4984(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A8BB5F70();
      v10 = v12;
    }

    sub_1A8BB2224((*(v10 + 56) + 40 * v8), a3);
    sub_1A8BB58D8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1A8BB4D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A8BB4984(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A8BB6118();
      v10 = v12;
    }

    sub_1A8BAF4A8((*(v10 + 56) + 32 * v8), a3);
    sub_1A8BB5A94(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1A8BB4DFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341598);
  v35 = a2;
  result = sub_1A8BDE364();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v22;
      }

      sub_1A8BDE3D4();
      sub_1A8BDE274();
      if (v23 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v23;
      }

      MEMORY[0x1AC573C00](*&v26);
      result = sub_1A8BDE404();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8BB50B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341590);
  v33 = a2;
  result = sub_1A8BDE364();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1A8BB2224(v24, v34);
      }

      else
      {
        sub_1A8BB6CE0(v24, v34);
      }

      sub_1A8BDE3D4();
      sub_1A8BDE144();
      result = sub_1A8BDE404();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A8BB2224(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8BB537C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341560);
  v33 = a2;
  result = sub_1A8BDE364();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1A8BAF4A8(v24, v34);
      }

      else
      {
        sub_1A8BB6658(v24, v34);
      }

      sub_1A8BDE3D4();
      sub_1A8BDE144();
      result = sub_1A8BDE404();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A8BAF4A8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8BB5634(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341548);
  v35 = a2;
  result = sub_1A8BDE364();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1A8BDE3D4();
      sub_1A8BDE144();
      result = sub_1A8BDE404();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8BB58D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A8BDE2D4() + 1) & ~v5;
    do
    {
      sub_1A8BDE3D4();

      sub_1A8BDE144();
      v11 = sub_1A8BDE404();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A8BB5A94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A8BDE2D4() + 1) & ~v5;
    do
    {
      sub_1A8BDE3D4();

      sub_1A8BDE144();
      v10 = sub_1A8BDE404();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1A8BB5C44(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A8BB4984(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A8BB6118();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A8BB537C(v16, a4 & 1);
    v11 = sub_1A8BB4984(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A8BDE3C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1A8BAF4A8(a1, v22);
  }

  else
  {
    sub_1A8BB5D94(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1A8BB5D94(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A8BAF4A8(a4, (a5[7] + 32 * a1));
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

id sub_1A8BB5E00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341598);
  v2 = *v0;
  v3 = sub_1A8BDE354();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = v19;
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

void *sub_1A8BB5F70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341590);
  v2 = *v0;
  v3 = sub_1A8BDE354();
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
        v22 = 40 * v17;
        sub_1A8BB6CE0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A8BB2224(v25, *(v4 + 56) + v22);
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

void *sub_1A8BB6118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341560);
  v2 = *v0;
  v3 = sub_1A8BDE354();
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
        sub_1A8BB6658(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A8BAF4A8(v25, (*(v4 + 56) + v22));
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

uint64_t sub_1A8BB62BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x1E69E6810];
  v25 = MEMORY[0x1E69E6818];
  v9 = *a5;
  v11 = sub_1A8BB4984(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = v17[7] + 40 * v11;
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return sub_1A8BB2224(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1A8BB5F70();
    goto LABEL_7;
  }

  sub_1A8BB50B8(v14, a4 & 1);
  v20 = sub_1A8BB4984(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1A8BDE3C4();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x1E69E6810]);
  sub_1A8BB6778(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v23);
}

uint64_t sub_1A8BB6424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_1A8BB4984(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = v23[7] + 40 * v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return sub_1A8BB2224(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1A8BB5F70();
    goto LABEL_7;
  }

  sub_1A8BB50B8(v20, a4 & 1);
  v26 = sub_1A8BB4984(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1A8BDE3C4();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_1A8BB680C(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
}

uint64_t sub_1A8BB6658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A8BB66B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8BB6724(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A8BB6778(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x1E69E6810];
  v13 = MEMORY[0x1E69E6818];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A8BB2224(&v11, a5[7] + 40 * a1);
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

uint64_t sub_1A8BB680C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1A8BB2224(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

unint64_t sub_1A8BB68E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341598);
    v3 = sub_1A8BDE374();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      result = sub_1A8BB485C(v7, v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v7;
      v10[1] = v5;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A8BB69EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB341530);
    v3 = sub_1A8BDE374();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8BAF440(v4, &v11, &qword_1EB3411C0);
      v5 = v11;
      result = sub_1A8BB48F0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A8BAF4A8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A8BB6B14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341548);
    v3 = sub_1A8BDE374();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A8BB4984(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A8BB6C18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A8BB6724(a1, a2);
  }

  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1A8BB6CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *IncomingCallTextViewAdapter.emojiViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController);
  v2 = v1;
  return v1;
}

uint64_t IncomingCallTextViewAdapter.statusIsHidden.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v19 = v21;
  v20 = v22;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v0 = v23;
  v3[0] = v21;
  v3[1] = v22;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  v5 = v24;
  v6 = v25;
  v1 = (sub_1A8AADFA8(&v21) == 1) | v0;
  v4 = v0;
  v7 = v14;
  sub_1A8BAF4B8(v3, &qword_1EB341178);
  return v1 & 1;
}

uint64_t IncomingCallTextViewAdapter.statusIsHidden.setter(char a1)
{

  v2 = sub_1A8BC142C(v6);
  v4 = v3;
  memmove(__dst, v3, 0x91uLL);
  if (sub_1A8AADFA8(__dst) != 1)
  {
    v4[32] = a1 & 1;
  }

  (v2)(v6, 0);
}

uint64_t sub_1A8BB7094(char *a1)
{
  v1 = *a1;

  v2 = sub_1A8BC142C(v6);
  v4 = v3;
  memmove(__dst, v3, 0x91uLL);
  if (sub_1A8AADFA8(__dst) != 1)
  {
    v4[32] = v1;
  }

  (v2)(v6, 0);
}

void (*IncomingCallTextViewAdapter.statusIsHidden.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator;
  *(v3 + 488) = v1;
  *(v3 + 496) = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v17 = *(v4 + 152);
  v18 = *(v4 + 168);
  v14 = *(v4 + 249);
  v15 = *(v4 + 265);
  v16 = *(v4 + 281);
  v10 = *(v4 + 185);
  v11 = *(v4 + 201);
  v12 = *(v4 + 217);
  v13 = *(v4 + 233);
  *v4 = v17;
  *(v4 + 16) = v18;
  *(v4 + 81) = v13;
  *(v4 + 97) = v14;
  *(v4 + 113) = v15;
  *(v4 + 129) = v16;
  *(v4 + 33) = v10;
  *(v4 + 49) = v11;
  v6 = *(v4 + 184);
  *(v4 + 32) = v6;
  *(v4 + 65) = v12;
  v7 = sub_1A8AADFA8(v4);
  *(v4 + 152) = v17;
  *(v4 + 168) = v18;
  *(v4 + 233) = v13;
  *(v4 + 249) = v14;
  *(v4 + 265) = v15;
  *(v4 + 281) = v16;
  *(v4 + 185) = v10;
  *(v4 + 201) = v11;
  v8 = (v7 == 1) | v6;
  *(v4 + 184) = v6;
  *(v4 + 217) = v12;
  sub_1A8BAF4B8(v4 + 152, &qword_1EB341178);
  *(v4 + 145) = v8 & 1;
  return sub_1A8BB72F0;
}

void sub_1A8BB72F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 + 456);
  v3 = *(*a1 + 145);

  v4 = sub_1A8BC142C(v2);
  v6 = v5;
  memmove((v1 + 304), v5, 0x91uLL);
  if (sub_1A8AADFA8(v1 + 304) != 1)
  {
    v6[32] = v3;
  }

  (v4)(v2, 0);

  free(v1);
}

void IncomingCallTextViewAdapter.frame.setter(double a1, double a2, double a3, double a4)
{
  v9 = [*(v4 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController) view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  [v9 setFrame_];

  v11 = *(v4 + OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController);
  if (!v11)
  {
    return;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 setFrame_];
}

void sub_1A8BB75B4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController) view];
  if (v3)
  {
    v4 = v3;
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    *a2 = v6;
    a2[1] = v8;
    a2[2] = v10;
    a2[3] = v12;
  }

  else
  {
    __break(1u);
  }
}

void (*IncomingCallTextViewAdapter.frame.modify(uint64_t *a1))(double **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  result = [*(v1 + v5) view];
  if (result)
  {
    v7 = result;
    [result frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    *v4 = v9;
    v4[1] = v11;
    v4[2] = v13;
    v4[3] = v15;
    return sub_1A8BB7710;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A8BB7710(double **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = [*(*(*a1 + 4) + *(*a1 + 5)) view];
  v9 = v8;
  if (a2)
  {
    if (!v8)
    {
      __break(1u);
      goto LABEL_14;
    }

    v10 = *(v3 + 4);
    [v8 setFrame_];

    v11 = *(v10 + OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v11 view];
    if (v12)
    {
LABEL_9:
      v15 = v12;
      [v12 setFrame_];

      goto LABEL_10;
    }

    __break(1u);
  }

  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(v3 + 4);
  [v9 setFrame_];

  v14 = *(v13 + OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController);
  if (v14)
  {
    v12 = [v14 view];
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_10:

  free(v3);
}

void IncomingCallTextViewAdapter.tightFrame.getter()
{
  v1 = v0;
  v2 = sub_1A8BDDF84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v147[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v147[-v7];

  sub_1A8BC25F4(v8);

  sub_1A8BDDF64();
  v9 = sub_1A8BDDF74();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    v22 = [*(v1 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController) view];
    if (v22)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    v22 = [*(v1 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController) view];
    if (!v22)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_9:
    v23 = v22;
    [v22 frame];
LABEL_32:

    return;
  }

  v11 = sub_1A8BC222C();

  if (v11)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(v222, v223, 0x12BuLL);
  memcpy(v223, v222, 0x12BuLL);
  v12 = sub_1A8BAECD4(v223);
  v13 = sub_1A8AAD988(v223);
  v16 = v13;
  if (v12 == 1)
  {
    v148 = *(v13 + 298);
    if (v148)
    {
      v163 = *(v13 + 248);
      v13 += 152;
      v17 = *(v16 + 152);
      LODWORD(v164) = *(v16 + 184);
      *&v166 = *(v16 + 176);
      v167 = *(v16 + 160);
      LODWORD(v162) = *(v16 + 296);
      v19 = *(v16 + 280);
      v18 = *(v16 + 288);
      v20 = *(v16 + 264);
      v21 = *(v16 + 216);
      v160 = *(v16 + 232);
      v161 = v20;
      v158 = *(v16 + 192);
      v159 = v21;
      v157 = *(v16 + 200);
    }

    else
    {
      LODWORD(v164) = *(v13 + 32);
      *&v166 = *(v13 + 24);
      v17 = *v13;
      v167 = *(v13 + 8);
      LODWORD(v162) = *(v13 + 144);
      v19 = *(v13 + 128);
      v18 = *(v13 + 136);
      v26 = *(v13 + 112);
      v163 = *(v13 + 96);
      v27 = *(v13 + 64);
      v160 = *(v13 + 80);
      v161 = v26;
      v158 = *(v13 + 40);
      v159 = v27;
      v157 = *(v13 + 48);
    }

    sub_1A8BAF018(v13, v217);
    LODWORD(v165) = *(v16 + 297);
    if (v165)
    {
      v155 = *(v16 + 248);
      v28 = v16 + 152;
      v29 = *(v16 + 152);
      LODWORD(v156) = *(v16 + 184);
      v30 = *(v16 + 176);
      v31 = *(v16 + 160);
      LODWORD(v154) = *(v16 + 296);
      v33 = *(v16 + 280);
      v32 = *(v16 + 288);
      v152 = *(v16 + 264);
      v153 = v31;
      v34 = *(v16 + 232);
      v150 = *(v16 + 216);
      v151 = v34;
      v35 = *(v16 + 192);
      v149 = *(v16 + 200);
    }

    else
    {
      LODWORD(v156) = *(v16 + 32);
      v30 = *(v16 + 24);
      v29 = *v16;
      v36 = *(v16 + 8);
      LODWORD(v154) = *(v16 + 144);
      v33 = *(v16 + 128);
      v32 = *(v16 + 136);
      v37 = *(v16 + 96);
      v152 = *(v16 + 112);
      v153 = v36;
      v155 = v37;
      v38 = *(v16 + 80);
      v150 = *(v16 + 64);
      v151 = v38;
      v35 = *(v16 + 40);
      v149 = *(v16 + 48);
      v28 = v16;
    }

    sub_1A8BAF018(v28, v217);
    *&v194[8] = v167;
    *v194 = v17;
    v39 = v166;
    v195 = v166;
    LOBYTE(v196) = v164;
    *(&v196 + 1) = v158;
    v197 = v157;
    v198 = v159;
    v199 = v160;
    v200 = v163;
    v201 = v161;
    *&v202 = v19;
    *(&v202 + 1) = v18;
    v203 = v162;
    v205 = v153;
    v204 = v29;
    v206 = v30;
    v207 = v156;
    v208 = v35;
    v209 = v149;
    v210 = v150;
    v213 = v152;
    v211 = v151;
    v212 = v155;
    v214 = v33;
    v215 = v32;
    v216 = v154;
    v40 = v30;
    sub_1A8BC07E4(&v204);
    v190 = v200;
    v191 = v201;
    v192 = v202;
    v193 = v203;
    v186 = v196;
    v187 = v197;
    v188 = v198;
    v189 = v199;
    v185[0] = *v194;
    *&v185[1] = *&v194[16];
    *(&v185[1] + 1) = v40;
    v41 = v40;
    v42 = v167;

    sub_1A8BAF018(v194, &v168);

    sub_1A8BB0BC8(v17, v42, v41, v224);
    sub_1A8BC07E4(v194);
    sub_1A8BC0D6C(v224, &v186 + 8);
    v218 = v190;
    v219 = v191;
    v220 = v192;
    v221 = v193;
    v217[2] = v186;
    v217[3] = v187;
    v217[4] = v188;
    v217[5] = v189;
    v217[0] = v185[0];
    v217[1] = v185[1];
    v43 = v165;
    if (v165)
    {
      v44 = *(v16 + 248);
      v45 = v16 + 152;
      v46 = *(v16 + 152);
      v47 = *(v16 + 184);
      v48 = *(v16 + 176);
      v49 = *(v16 + 160);
      v50 = *(v16 + 296);
      v52 = *(v16 + 280);
      v51 = *(v16 + 288);
      v166 = *(v16 + 264);
      v167 = v44;
      v53 = *(v16 + 216);
      v163 = *(v16 + 232);
      v164 = v49;
      v54 = *(v16 + 192);
      v161 = *(v16 + 200);
      v162 = v53;
    }

    else
    {
      v47 = *(v16 + 32);
      v48 = *(v16 + 24);
      v46 = *v16;
      v55 = *(v16 + 8);
      v50 = *(v16 + 144);
      v52 = *(v16 + 128);
      v51 = *(v16 + 136);
      v56 = *(v16 + 96);
      v166 = *(v16 + 112);
      v167 = v56;
      v57 = *(v16 + 64);
      v163 = *(v16 + 80);
      v164 = v55;
      v54 = *(v16 + 40);
      v161 = *(v16 + 48);
      v162 = v57;
      v45 = v16;
    }

    sub_1A8BAF018(v45, v185);
    *(v185 + 8) = v164;
    *&v185[0] = v46;
    *(&v185[1] + 1) = v48;
    LOBYTE(v186) = v47;
    *(&v186 + 1) = v54;
    v187 = v161;
    v188 = v162;
    v189 = v163;
    v190 = v167;
    v191 = v166;
    *&v192 = v52;
    *(&v192 + 1) = v51;
    v193 = v50;
    sub_1A8BC07E4(v185);
    *&v225.size.width = v166;
    v225.origin = v167;
    v225.size.height = *(&v166 + 1);
    Width = CGRectGetWidth(v225);
    v24 = *(&v218 + 1);
    *&v59 = v218;
    v25 = *(&v219 + 1);
    *&v60 = v219;
    v166 = v60;
    v167 = v59;
    v61 = *(&v218 + 1);
    v62 = *(&v219 + 1);
    v63 = CGRectGetWidth(*&v59);
    sub_1A8BC07E4(v217);
    if (v63 >= Width)
    {
      if (v148)
      {
        v72 = (v16 + 152);
        sub_1A8BAF018(v16 + 152, &v168);
        v165 = 200;
        *&v164 = 208;
        *&v163 = 216;
        *&v162 = 224;
        *&v161 = 232;
        *&v160 = 240;
        *&v159 = 272;
        v158 = 264;
        *&v157 = 256;
        v156 = 248;
        v154 = 280;
        v73 = 288;
        v74 = 296;
        *&v155 = 160;
        v75 = 168;
        v76 = 176;
        v77 = 184;
        v78 = 192;
      }

      else
      {
        sub_1A8BAF018(v16, &v168);
        v165 = 48;
        *&v164 = 56;
        *&v163 = 64;
        *&v162 = 72;
        *&v161 = 80;
        *&v160 = 88;
        *&v159 = 120;
        v158 = 112;
        *&v157 = 104;
        v156 = 96;
        v154 = 128;
        v73 = 136;
        v74 = 144;
        *&v155 = 8;
        v75 = 16;
        v76 = 24;
        v77 = 32;
        v78 = 40;
        v72 = v16;
      }

      sub_1A8BAECE0(v222);
      v95 = *(v16 + v74);
      v96 = *(v16 + v73);
      v97 = *(v16 + v154);
      v98 = *(v16 + v159);
      v99 = *(v16 + v158);
      v100 = *(v16 + v157);
      v101 = *(v16 + v156);
      v102 = *(v16 + v160);
      v103 = *(v16 + v161);
      v104 = *(v16 + v162);
      v105 = *(v16 + v163);
      v106 = *(v16 + v164);
      v107 = *(v16 + v165);
      v108 = *(v16 + v78);
      v109 = *(v16 + v77);
      v110 = *(v16 + v76);
      v111 = *(v16 + v75);
      v112 = *(v16 + v155);
      v168 = *v72;
      v169 = v112;
      v170 = v111;
      v171 = v110;
      v172 = v109;
      v173 = v108;
      v174 = v107;
      v175 = v106;
      v176 = v105;
      v177 = v104;
      v178 = v103;
      v179 = v102;
      *&v180 = v101;
      *(&v180 + 1) = v100;
      *&v181 = v99;
      *(&v181 + 1) = v98;
      v182 = v97;
      v183 = v96;
      v184 = v95;
      v113 = v110;
      sub_1A8BC07E4(&v168);
      v23 = v113;
    }

    else
    {
      if (v43)
      {
        v64 = *(v16 + 248);
        v65 = (v16 + 152);
        v165 = v16 + 192;
        v166 = *(v16 + 264);
        v167 = v64;
        sub_1A8BAF018(v16 + 152, &v168);
        *&v164 = 200;
        *&v163 = 208;
        *&v162 = 216;
        *&v161 = 224;
        *&v160 = 232;
        *&v159 = 240;
        v158 = 280;
        v66 = 288;
        v67 = 296;
        v68 = 160;
        v69 = 168;
        v70 = 176;
        v71 = 184;
      }

      else
      {
        v165 = v16 + 40;
        v79 = *(v16 + 96);
        v166 = *(v16 + 112);
        v167 = v79;
        sub_1A8BAF018(v16, &v168);
        *&v164 = 48;
        *&v163 = 56;
        *&v162 = 64;
        *&v161 = 72;
        *&v160 = 80;
        *&v159 = 88;
        v158 = 128;
        v66 = 136;
        v67 = 144;
        v68 = 8;
        v69 = 16;
        v70 = 24;
        v71 = 32;
        v65 = v16;
      }

      sub_1A8BAECE0(v222);
      v80 = *(v16 + v67);
      v81 = *(v16 + v66);
      v82 = *(v16 + v158);
      v83 = *(v16 + v159);
      v84 = *(v16 + v160);
      v85 = *(v16 + v161);
      v86 = *(v16 + v162);
      v87 = *(v16 + v163);
      v88 = *(v16 + v164);
      v89 = *v165;
      v90 = *(v16 + v71);
      v91 = *(v16 + v70);
      v92 = *(v16 + v69);
      v93 = *(v16 + v68);
      v168 = *v65;
      v169 = v93;
      v170 = v92;
      v171 = v91;
      v172 = v90;
      v173 = v89;
      v174 = v88;
      v175 = v87;
      v176 = v86;
      v177 = v85;
      v178 = v84;
      v179 = v83;
      v181 = v166;
      v180 = v167;
      v182 = v82;
      v183 = v81;
      v184 = v80;
      v94 = v91;
      sub_1A8BC07E4(&v168);
      v23 = v94;
      v24 = *(&v167 + 1);
      v25 = *(&v166 + 1);
    }
  }

  else
  {
    *&v15 = *(v13 + 96);
    v24 = *(v13 + 104);
    *&v14 = *(v13 + 112);
    v25 = *(v13 + 120);
    v166 = v14;
    v167 = v15;
    v23 = *(v13 + 24);
    sub_1A8BAECE0(v222);
  }

  [v23 ascender];

  v114 = OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController;
  v115 = [*(v1 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController) view];
  if (!v115)
  {
    goto LABEL_34;
  }

  v116 = v115;
  [v115 frame];

  *&v226.size.width = v166;
  *&v226.origin.x = v167;
  v226.origin.y = v24;
  v226.size.height = v25;
  CGRectGetWidth(v226);
  v117 = [*(v1 + v114) view];
  if (!v117)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v118 = v117;
  [v117 frame];
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;

  v227.origin.x = v120;
  v227.origin.y = v122;
  v227.size.width = v124;
  v227.size.height = v126;
  CGRectGetMinX(v227);
  v127 = [*(v1 + v114) view];
  if (!v127)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v128 = v127;
  [v127 frame];
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;

  v228.origin.x = v130;
  v228.origin.y = v132;
  v228.size.width = v134;
  v228.size.height = v136;
  CGRectGetWidth(v228);
  v137 = [*(v1 + v114) view];
  if (v137)
  {
    v138 = v137;
    [v137 frame];
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v146 = v145;

    v229.origin.x = v140;
    v229.origin.y = v142;
    v229.size.width = v144;
    v229.size.height = v146;
    CGRectGetMinY(v229);
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
}

uint64_t IncomingCallTextViewAdapter.preferredAlignment.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  return v1 & 1;
}

uint64_t IncomingCallTextViewAdapter.preferredAlignment.setter(unint64_t a1)
{
  v1 = sub_1A8BC1080(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  if (v3 == 2 || ((v3 ^ v1) & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1A8BDDC84();
  }

  return result;
}

uint64_t (*IncomingCallTextViewAdapter.preferredAlignment.modify(uint64_t a1))(unint64_t *a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  *a1 = *(a1 + 16) & 1;
  return sub_1A8BB8764;
}

uint64_t IncomingCallTextViewAdapter.preferredLayout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1A8BDDF84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A8BAF4B8(v2, &qword_1EB341680);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    v11 = sub_1A8BC0DC8(v7);
    (*(v4 + 8))(v9, v3);
    return v11;
  }
}

uint64_t sub_1A8BB8A4C(uint64_t a1)
{
  if (a1 == 1)
  {

    return sub_1A8BDDF54();
  }

  else
  {
    if (a1)
    {
      if (qword_1EB33D260 != -1)
      {
        swift_once();
      }

      v3 = sub_1A8BDDC24();
      __swift_project_value_buffer(v3, qword_1EB342AA0);
      v4 = sub_1A8BDDC14();
      v5 = sub_1A8BDE1E4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1A8AA7000, v4, v5, "Unrecognized PRPosterTitleLayout; fallback to horizontal.", v6, 2u);
        MEMORY[0x1AC575150](v6, -1, -1);
      }
    }

    return sub_1A8BDDF64();
  }
}

void (*IncomingCallTextViewAdapter.preferredLayout.modify(uint64_t *a1))(uint64_t **a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  v9 = sub_1A8BDDF84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
    v5[3] = v12;
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(v9 - 8) + 64));
    v5[3] = v12;
    v13 = malloc(v11);
  }

  v14 = v13;
  v5[4] = v13;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A8BAF4B8(v8, &qword_1EB341680);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    (*(v10 + 16))(v12, v14, v9);
    v15 = sub_1A8BC0DC8(v12);
    (*(v10 + 8))(v14, v9);
  }

  *v5 = v15;
  return sub_1A8BB8DD4;
}

void sub_1A8BB8DD4(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  IncomingCallTextViewAdapter.preferredLayout.setter(**a1);
  free(v2);
  free(v3);
  free(v4);

  free(v1);
}

id IncomingCallTextViewAdapter.textColor.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  if (sub_1A8BAECD4(__src) == 1)
  {
    sub_1A8AAD988(__src);
    memcpy(v3, __dst, 0x12BuLL);
    v0 = v3;
  }

  else
  {
    v0 = __src;
  }

  v1 = *(sub_1A8AAD988(v0) + 16);
  sub_1A8BAECE0(__dst);
  return v1;
}

void IncomingCallTextViewAdapter.textColor.setter(id a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  if (sub_1A8BAECD4(__src) == 1)
  {
    sub_1A8AAD988(__src);
    memcpy(v11, __dst, 0x12BuLL);
    v2 = v11;
  }

  else
  {
    v2 = __src;
  }

  v3 = *(sub_1A8AAD988(v2) + 16);
  sub_1A8BAECE0(__dst);
  sub_1A8BA3FE4(0, &unk_1EB33CFE0);
  v4 = sub_1A8BDE264();

  if ((v4 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    a1 = a1;
    sub_1A8BDDC74();

    memcpy(v9, v11, 0x12BuLL);
    sub_1A8BC4AE8(a1);
    sub_1A8BC16A8(v9);

    v5 = sub_1A8BC142C(v11);
    v7 = v6;
    memmove(v10, v6, 0x91uLL);
    if (sub_1A8AADFA8(v10) != 1)
    {
      v8 = v7[2];
      v7[2] = a1;
      a1 = a1;
    }

    (v5)(v11, 0);
  }
}

uint64_t sub_1A8BB92EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  if (sub_1A8BAECD4(__src) == 1)
  {
    sub_1A8AAD988(__src);
    memcpy(v5, __dst, 0x12BuLL);
    v2 = v5;
  }

  else
  {
    v2 = __src;
  }

  v3 = *(sub_1A8AAD988(v2) + 16);
  result = sub_1A8BAECE0(__dst);
  *a1 = v3;
  return result;
}

void (*IncomingCallTextViewAdapter.textColor.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 912);
  *(v3 + 920) = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy((v4 + 304), (v4 + 608), 0x12BuLL);
  memcpy(v4, (v4 + 304), 0x12BuLL);
  if (sub_1A8BAECD4(v4) == 1)
  {
    sub_1A8AAD988(v4);
    memcpy((v4 + 608), (v4 + 304), 0x12BuLL);
    v6 = v4 + 608;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(sub_1A8AAD988(v6) + 16);
  sub_1A8BAECE0(v4 + 304);
  *v5 = v7;
  return sub_1A8BB953C;
}

void sub_1A8BB953C(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[114];
  if (a2)
  {
    IncomingCallTextViewAdapter.textColor.setter(v3);
  }

  else
  {
    IncomingCallTextViewAdapter.textColor.setter(v3);
  }

  free(v2);
}

id IncomingCallTextViewAdapter.emphasizedNameFont.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  v0 = sub_1A8BAECD4(__src);
  v1 = sub_1A8AAD988(__src);
  v2 = v1;
  if (v0 == 1)
  {
    if (*(v1 + 297))
    {
      v3 = (v1 + 152);
      sub_1A8BAF018(v1 + 152, v52);
      v51 = 200;
      v50 = 208;
      v49 = 216;
      v48 = 224;
      v47 = 232;
      v46 = 240;
      v45 = 272;
      v44 = 264;
      v43 = 256;
      v42 = 248;
      v4 = 35;
      v5 = 36;
      v6 = 37;
      v7 = 20;
      v8 = 21;
      v9 = 22;
      v10 = 23;
      v11 = 24;
    }

    else
    {
      sub_1A8BAF018(v1, v52);
      v51 = 48;
      v50 = 56;
      v49 = 64;
      v48 = 72;
      v47 = 80;
      v46 = 88;
      v45 = 120;
      v44 = 112;
      v43 = 104;
      v42 = 96;
      v4 = 16;
      v5 = 17;
      v6 = 18;
      v7 = 1;
      v8 = 2;
      v9 = 3;
      v10 = 4;
      v11 = 5;
      v3 = v2;
    }

    sub_1A8BAECE0(__dst);
    v13 = v50;
    v12 = v51;
    v15 = v48;
    v14 = v49;
    v17 = v46;
    v16 = v47;
    v19 = v44;
    v18 = v45;
    v21 = v42;
    v20 = v43;
  }

  else
  {
    v12 = 48;
    v13 = 56;
    v14 = 64;
    v15 = 72;
    v16 = 80;
    v17 = 88;
    v18 = 120;
    v19 = 112;
    v20 = 104;
    v21 = 96;
    v4 = 16;
    v5 = 17;
    v6 = 18;
    v7 = 1;
    v8 = 2;
    v9 = 3;
    v10 = 4;
    v11 = 5;
    v3 = v2;
  }

  v22 = v2[v6];
  v23 = v2[v5];
  v24 = v2[v4];
  v25 = *(v2 + v18);
  v26 = *(v2 + v19);
  v27 = *(v2 + v20);
  v28 = *(v2 + v21);
  v29 = *(v2 + v17);
  v30 = *(v2 + v16);
  v31 = *(v2 + v15);
  v32 = *(v2 + v14);
  v33 = *(v2 + v13);
  v34 = *(v2 + v12);
  v35 = v2[v11];
  v36 = v2[v10];
  v37 = v2[v9];
  v38 = v2[v8];
  v39 = v2[v7];
  v52[0] = *v3;
  v52[1] = v39;
  v52[2] = v38;
  v52[3] = v37;
  v53 = v36;
  v54 = v35;
  v55 = v34;
  v56 = v33;
  v57 = v32;
  v58 = v31;
  v59 = v30;
  v60 = v29;
  v61 = v28;
  v62 = v27;
  v63 = v26;
  v64 = v25;
  v65 = v24;
  v66 = v23;
  v67 = v22;
  v40 = v37;
  sub_1A8BC07E4(v52);
  return v40;
}

void IncomingCallTextViewAdapter.emphasizedNameFont.setter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  v2 = sub_1A8BAECD4(__src);
  v3 = sub_1A8AAD988(__src);
  v4 = v3;
  v79 = a1;
  if (v2 == 1)
  {
    if (*(v3 + 297))
    {
      v5 = (v3 + 152);
      sub_1A8BAF018(v3 + 152, v104);
      v75 = 200;
      v73 = 208;
      v71 = 216;
      v69 = 224;
      v68 = 232;
      v67 = 240;
      v66 = 272;
      v65 = 264;
      v64 = 256;
      v63 = 248;
      v6 = 35;
      v7 = 36;
      v8 = 37;
      v9 = 20;
      v10 = 21;
      v11 = 22;
      v12 = 23;
      v13 = 24;
    }

    else
    {
      sub_1A8BAF018(v3, v104);
      v75 = 48;
      v73 = 56;
      v71 = 64;
      v69 = 72;
      v68 = 80;
      v67 = 88;
      v66 = 120;
      v65 = 112;
      v64 = 104;
      v63 = 96;
      v6 = 16;
      v7 = 17;
      v8 = 18;
      v9 = 1;
      v10 = 2;
      v11 = 3;
      v12 = 4;
      v13 = 5;
      v5 = v4;
    }

    sub_1A8BAECE0(__dst);
    v14 = v75;
    v15 = v73;
    v16 = v71;
    v18 = v68;
    v17 = v69;
    v20 = v66;
    v19 = v67;
    v22 = v64;
    v21 = v65;
    v23 = v63;
  }

  else
  {
    v14 = 48;
    v15 = 56;
    v16 = 64;
    v17 = 72;
    v18 = 80;
    v19 = 88;
    v20 = 120;
    v21 = 112;
    v22 = 104;
    v23 = 96;
    v6 = 16;
    v7 = 17;
    v8 = 18;
    v9 = 1;
    v10 = 2;
    v11 = 3;
    v12 = 4;
    v13 = 5;
    v5 = v4;
  }

  v24 = v4[v8];
  v25 = v4[v7];
  v26 = v4[v6];
  v27 = *(v4 + v20);
  v28 = *(v4 + v21);
  v29 = *(v4 + v22);
  v30 = *(v4 + v23);
  v31 = *(v4 + v19);
  v32 = *(v4 + v18);
  v33 = *(v4 + v17);
  v34 = *(v4 + v16);
  v35 = *(v4 + v15);
  v36 = *(v4 + v14);
  v37 = v4[v13];
  v38 = v4[v12];
  v39 = v4[v11];
  v40 = v4[v10];
  v41 = v4[v9];
  v105[0] = *v5;
  v105[1] = v41;
  v105[2] = v40;
  v105[3] = v39;
  v106 = v38;
  v107 = v37;
  v108 = v36;
  v109 = v35;
  v110 = v34;
  v111 = v33;
  v112 = v32;
  v113 = v31;
  v114 = v30;
  v115 = v29;
  v116 = v28;
  v117 = v27;
  v118 = v26;
  v119 = v25;
  v120 = v24;
  v42 = v39;
  sub_1A8BC07E4(v105);
  sub_1A8BA3FE4(0, &qword_1EB33CFF0);
  v43 = sub_1A8BDE264();

  if (v43)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1A8BDDC74();

    memcpy(v103, v104, 0x12BuLL);
    memcpy(v104, v103, 0x12BuLL);
    if (sub_1A8BAECD4(v104) == 1)
    {
      v44 = sub_1A8AAD988(v104);
      if (*(v44 + 297))
      {
        v45 = *(v44 + 152);
        v46 = *(v44 + 184);
        v47 = *(v44 + 176);
        v77 = *(v44 + 248);
        v78 = *(v44 + 160);
        v48 = *(v44 + 296);
        v50 = *(v44 + 280);
        v49 = *(v44 + 288);
        v74 = *(v44 + 232);
        v76 = *(v44 + 264);
        v51 = *(v44 + 192);
        v70 = *(v44 + 200);
        v72 = *(v44 + 216);
        v44 += 152;
      }

      else
      {
        v46 = *(v44 + 32);
        v47 = *(v44 + 24);
        v45 = *v44;
        v48 = *(v44 + 144);
        v50 = *(v44 + 128);
        v49 = *(v44 + 136);
        v77 = *(v44 + 96);
        v78 = *(v44 + 8);
        v74 = *(v44 + 80);
        v76 = *(v44 + 112);
        v51 = *(v44 + 40);
        v70 = *(v44 + 48);
        v72 = *(v44 + 64);
      }

      sub_1A8BAF018(v44, v93);
    }

    else
    {
      v52 = sub_1A8AAD988(v104);
      v46 = *(v52 + 32);
      v47 = *(v52 + 24);
      v45 = *v52;
      v48 = *(v52 + 144);
      v50 = *(v52 + 128);
      v49 = *(v52 + 136);
      v77 = *(v52 + 96);
      v78 = *(v52 + 8);
      v74 = *(v52 + 80);
      v76 = *(v52 + 112);
      v51 = *(v52 + 40);
      v70 = *(v52 + 48);
      v72 = *(v52 + 64);
      memcpy(v93, v103, 0x12BuLL);
      v53 = sub_1A8AAD988(v93);
      sub_1A8BAF440(v53, v80, &unk_1EB341698);
    }

    *v94 = v45;
    *&v94[8] = v78;
    LOBYTE(v95) = v46;
    *(&v95 + 1) = v51;
    v96 = v70;
    v97 = v72;
    v98 = v74;
    v99 = v77;
    v100 = v76;
    *&v101 = v50;
    *(&v101 + 1) = v49;
    v102 = v48;
    v54 = v79;

    *&v94[24] = v54;
    sub_1A8BB0BC8(v45, v78, v54, v121);
    sub_1A8BC0D6C(v121, &v95 + 8);
    v89 = v99;
    v90 = v100;
    v91 = v101;
    v92 = v102;
    v85 = v95;
    v86 = v96;
    v87 = v97;
    v88 = v98;
    v83 = *v94;
    v84 = *&v94[16];
    memcpy(v93, v103, 0x12BuLL);
    if (sub_1A8BAECD4(v93) == 1)
    {
      v55 = sub_1A8AAD988(v93);
      v56 = *(v55 + 297);
      memcpy(v81, v55, 0x12BuLL);
      if (v56)
      {
        v57 = *(v55 + 248);
        v58 = *(v55 + 200);
        v80[2] = *(v55 + 184);
        v80[3] = v58;
        v59 = *(v55 + 232);
        v80[4] = *(v55 + 216);
        v80[5] = v59;
        v60 = *(v55 + 168);
        v80[0] = *(v55 + 152);
        v80[1] = v60;
        v61 = *(v55 + 264);
        v62 = *(v55 + 280);
        v80[6] = v57;
        v80[7] = v61;
        LOBYTE(v80[9]) = *(v55 + 296);
        v80[8] = v62;
        sub_1A8BC07E4(v80);
        *(&v81[16] + 8) = v90;
        *(&v81[17] + 8) = v91;
        *(&v81[15] + 8) = v89;
        *(&v81[11] + 8) = v85;
        *(&v81[12] + 8) = v86;
        *(&v81[13] + 8) = v87;
        *(&v81[14] + 8) = v88;
        *(&v81[9] + 8) = v83;
        BYTE8(v81[18]) = v92;
        *(&v81[10] + 8) = v84;
      }

      else
      {
        v80[6] = v81[6];
        v80[7] = v81[7];
        v80[8] = v81[8];
        LOBYTE(v80[9]) = v81[9];
        v80[2] = v81[2];
        v80[3] = v81[3];
        v80[4] = v81[4];
        v80[5] = v81[5];
        v80[0] = v81[0];
        v80[1] = v81[1];
        sub_1A8BC07E4(v80);
        v81[6] = v89;
        v81[7] = v90;
        v81[8] = v91;
        LOBYTE(v81[9]) = v92;
        v81[2] = v85;
        v81[3] = v86;
        v81[4] = v87;
        v81[5] = v88;
        v81[0] = v83;
        v81[1] = v84;
      }

      memcpy(v80, v81, 0x12BuLL);
      sub_1A8BC116C(v80);
    }

    else
    {
      sub_1A8AAD988(v93);
      sub_1A8BAECE0(v103);
      v80[6] = v89;
      v80[7] = v90;
      v80[8] = v91;
      LOBYTE(v80[9]) = v92;
      v80[2] = v85;
      v80[3] = v86;
      v80[4] = v87;
      v80[5] = v88;
      v80[0] = v83;
      v80[1] = v84;
      sub_1A8BC11B4(v80);
    }

    memcpy(v82, v80, 0x12BuLL);
    sub_1A8BC16A8(v82);
  }
}

void (*IncomingCallTextViewAdapter.emphasizedNameFont.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 920) = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy((v4 + 304), (v4 + 608), 0x12BuLL);
  memcpy(v4, (v4 + 304), 0x12BuLL);
  v5 = sub_1A8BAECD4(v4);
  v6 = sub_1A8AAD988(v4);
  v7 = v6;
  if (v5 == 1)
  {
    if (*(v6 + 297))
    {
      v8 = (v6 + 152);
      v57 = 200;
      v56 = 208;
      v55 = 216;
      v54 = 224;
      v53 = 232;
      v52 = 240;
      v51 = 272;
      v50 = 264;
      v49 = 256;
      v48 = 248;
      v47 = 280;
      v9 = 36;
      v10 = 37;
      v11 = 20;
      v12 = 21;
      v13 = 22;
      v14 = 23;
      v15 = 24;
    }

    else
    {
      v57 = 48;
      v56 = 56;
      v55 = 64;
      v54 = 72;
      v53 = 80;
      v52 = 88;
      v51 = 120;
      v50 = 112;
      v49 = 104;
      v48 = 96;
      v47 = 128;
      v9 = 17;
      v10 = 18;
      v11 = 1;
      v12 = 2;
      v13 = 3;
      v14 = 4;
      v15 = 5;
      v8 = v6;
    }

    sub_1A8BAF018(v8, v4 + 608);
    sub_1A8BAECE0(v4 + 304);
    v17 = v56;
    v16 = v57;
    v19 = v54;
    v18 = v55;
    v21 = v52;
    v20 = v53;
    v23 = v50;
    v22 = v51;
    v25 = v48;
    v24 = v49;
    v26 = v47;
  }

  else
  {
    v16 = 48;
    v17 = 56;
    v18 = 64;
    v19 = 72;
    v20 = 80;
    v21 = 88;
    v22 = 120;
    v23 = 112;
    v24 = 104;
    v25 = 96;
    v26 = 128;
    v9 = 17;
    v10 = 18;
    v11 = 1;
    v12 = 2;
    v13 = 3;
    v14 = 4;
    v15 = 5;
    v8 = v7;
  }

  v27 = v7[v10];
  v28 = v7[v9];
  v29 = *(v7 + v26);
  v30 = *(v7 + v22);
  v31 = *(v7 + v23);
  v32 = *(v7 + v24);
  v33 = *(v7 + v25);
  v34 = *(v7 + v21);
  v35 = *(v7 + v20);
  v36 = *(v7 + v19);
  v37 = *(v7 + v18);
  v38 = *(v7 + v17);
  v39 = *(v7 + v16);
  v40 = v7[v15];
  v41 = v7[v14];
  v42 = v7[v13];
  v43 = v7[v12];
  v44 = v7[v11];
  *(v4 + 608) = *v8;
  *(v4 + 616) = v44;
  *(v4 + 624) = v43;
  *(v4 + 632) = v42;
  *(v4 + 640) = v41;
  *(v4 + 648) = v40;
  *(v4 + 656) = v39;
  *(v4 + 664) = v38;
  *(v4 + 672) = v37;
  *(v4 + 680) = v36;
  *(v4 + 688) = v35;
  *(v4 + 696) = v34;
  *(v4 + 704) = v33;
  *(v4 + 712) = v32;
  *(v4 + 720) = v31;
  *(v4 + 728) = v30;
  *(v4 + 736) = v29;
  *(v4 + 744) = v28;
  *(v4 + 752) = v27;
  v45 = v42;
  sub_1A8BC07E4(v4 + 608);
  *(v4 + 912) = v45;
  return sub_1A8BBA438;
}

void sub_1A8BBA438(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[114];
  if (a2)
  {
    IncomingCallTextViewAdapter.emphasizedNameFont.setter(v3);
  }

  else
  {
    IncomingCallTextViewAdapter.emphasizedNameFont.setter(v3);
  }

  free(v2);
}

void *IncomingCallTextViewAdapter.secondaryNameFont.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  if (sub_1A8BAECD4(__src) == 1)
  {
    v0 = sub_1A8AAD988(__src);
    v1 = v0;
    if (*(v0 + 297))
    {
      sub_1A8BAF018(v0, &v54);
      v42 = 6;
      v41 = 7;
      v40 = 8;
      v39 = 9;
      v38 = 10;
      v37 = 11;
      v36 = 15;
      v35 = 14;
      v34 = 13;
      v33 = 12;
      v2 = 16;
      v3 = 17;
      v4 = 18;
      v5 = 1;
      v6 = 2;
      v7 = 3;
      v8 = 4;
      v9 = 5;
      v10 = v1;
    }

    else
    {
      v10 = (v0 + 152);
      sub_1A8BAF018(v0 + 152, &v54);
      v42 = 25;
      v41 = 26;
      v40 = 27;
      v39 = 28;
      v38 = 29;
      v37 = 30;
      v36 = 34;
      v35 = 33;
      v34 = 32;
      v33 = 31;
      v2 = 35;
      v3 = 36;
      v4 = 37;
      v5 = 20;
      v6 = 21;
      v7 = 22;
      v8 = 23;
      v9 = 24;
    }

    sub_1A8BAECE0(__dst);
    v11 = v1[v4];
    v12 = v1[v3];
    v13 = v1[v2];
    v14 = v1[v36];
    v15 = v1[v35];
    v16 = v1[v34];
    v17 = v1[v33];
    v18 = v1[v37];
    v19 = v1[v38];
    v20 = v1[v39];
    v21 = v1[v40];
    v22 = v1[v41];
    v23 = v1[v42];
    v24 = v1[v9];
    v25 = v1[v8];
    v26 = v1[v7];
    v27 = v1[v6];
    v28 = v1[v5];
    *&v54 = *v10;
    *(&v54 + 1) = v28;
    v55 = v27;
    v56 = v26;
    LOBYTE(v57) = v25;
    *(&v57 + 1) = v24;
    *&v58 = v23;
    *(&v58 + 1) = v22;
    *&v59 = v21;
    *(&v59 + 1) = v20;
    *&v60 = v19;
    *(&v60 + 1) = v18;
    *&v61 = v17;
    *(&v61 + 1) = v16;
    *&v62 = v15;
    *(&v62 + 1) = v14;
    *&v63 = v13;
    *(&v63 + 1) = v12;
    v64 = v11;
    nullsub_1(&v54);
  }

  else
  {
    sub_1A8AAD988(__src);
    sub_1A8BAECE0(__dst);
    sub_1A8BA6348(&v54);
  }

  v73 = v54;
  v29 = v56;
  v74 = v55;
  v69 = v61;
  v70 = v62;
  v71 = v63;
  v72 = v64;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  if (sub_1A8AADFA8(&v54) == 1)
  {
    v30 = 0;
  }

  else
  {
    v31 = v29;
    v30 = v29;
  }

  v43 = v73;
  v44 = v74;
  v45 = v29;
  v50 = v69;
  v51 = v70;
  v52 = v71;
  v53 = v72;
  v46 = v65;
  v47 = v66;
  v48 = v67;
  v49 = v68;
  sub_1A8BAF4B8(&v43, &qword_1EB341178);
  return v30;
}

void IncomingCallTextViewAdapter.secondaryNameFont.setter(void *a1)
{
  if (a1)
  {
    v1 = a1;
    swift_getKeyPath();
    swift_getKeyPath();

    v2 = v1;
    sub_1A8BDDC74();

    memcpy(__dst, __src, 0x12BuLL);
    memcpy(v115, __dst, 0x12BuLL);
    if (sub_1A8BAECD4(v115) == 1)
    {
      v63 = v1;
      v65 = v2;
      v3 = sub_1A8AAD988(v115);
      v4 = v3;
      if (*(v3 + 297))
      {
        sub_1A8BAF018(v3, __src);
        v60 = 6;
        v58 = 7;
        v56 = 8;
        v55 = 9;
        v54 = 10;
        v53 = 11;
        v52 = 15;
        v51 = 14;
        v50 = 13;
        v49 = 12;
        v5 = 16;
        v6 = 17;
        v7 = 18;
        v48 = 1;
        v8 = 2;
        v9 = 3;
        v10 = 4;
        v11 = 5;
        v12 = v4;
      }

      else
      {
        v12 = (v3 + 152);
        sub_1A8BAF018(v3 + 152, __src);
        v60 = 25;
        v58 = 26;
        v56 = 27;
        v55 = 28;
        v54 = 29;
        v53 = 30;
        v52 = 34;
        v51 = 33;
        v50 = 32;
        v49 = 31;
        v5 = 35;
        v6 = 36;
        v7 = 37;
        v48 = 20;
        v8 = 21;
        v9 = 22;
        v10 = 23;
        v11 = 24;
      }

      sub_1A8BAECE0(__dst);
      v14 = v4[v7];
      v15 = v4[v6];
      v16 = v4[v5];
      v17 = v4[v52];
      v18 = v4[v51];
      v19 = v4[v50];
      v20 = v4[v49];
      v21 = v4[v53];
      v22 = v4[v54];
      v23 = v4[v55];
      v24 = v4[v56];
      v25 = v4[v58];
      v26 = v4[v60];
      v27 = v4[v11];
      v28 = v4[v10];
      v29 = v4[v9];
      v30 = v4[v8];
      v31 = v4[v48];
      *&__src[0] = *v12;
      *(&__src[0] + 1) = v31;
      *&__src[1] = v30;
      *(&__src[1] + 1) = v29;
      LOBYTE(__src[2]) = v28;
      *(&__src[2] + 1) = v27;
      *&__src[3] = v26;
      *(&__src[3] + 1) = v25;
      *&__src[4] = v24;
      *(&__src[4] + 1) = v23;
      *&__src[5] = v22;
      *(&__src[5] + 1) = v21;
      *&__src[6] = v20;
      *(&__src[6] + 1) = v19;
      *&__src[7] = v18;
      *(&__src[7] + 1) = v17;
      *&__src[8] = v16;
      *(&__src[8] + 1) = v15;
      LOBYTE(__src[9]) = v14;
      nullsub_1(__src);
      v112 = __src[0];
      v13 = *(&__src[1] + 1);
      v113 = *&__src[1];
      v108 = __src[6];
      v109 = __src[7];
      v110 = __src[8];
      v111 = __src[9];
      v104 = __src[2];
      v105 = __src[3];
      v106 = __src[4];
      v107 = __src[5];
      v2 = v65;
      v1 = v63;
    }

    else
    {
      sub_1A8AAD988(v115);
      sub_1A8BAECE0(__dst);
      sub_1A8BA6348(__src);
      v112 = __src[0];
      v13 = *(&__src[1] + 1);
      v113 = *&__src[1];
      v108 = __src[6];
      v109 = __src[7];
      v110 = __src[8];
      v111 = __src[9];
      v104 = __src[2];
      v105 = __src[3];
      v106 = __src[4];
      v107 = __src[5];
    }

    v92 = v112;
    v93 = v113;
    v94 = v13;
    v99 = v108;
    v100 = v109;
    v101 = v110;
    v102 = v111;
    v95 = v104;
    v96 = v105;
    v97 = v106;
    v98 = v107;
    if (sub_1A8AADFA8(&v92) == 1)
    {
      __src[0] = v112;
      *&__src[1] = v113;
      *(&__src[1] + 1) = v13;
      __src[6] = v108;
      __src[7] = v109;
      __src[8] = v110;
      LOBYTE(__src[9]) = v111;
      __src[2] = v104;
      __src[3] = v105;
      __src[4] = v106;
      __src[5] = v107;
      sub_1A8BAF4B8(__src, &qword_1EB341178);
    }

    else
    {
      __src[0] = v112;
      *&__src[1] = v113;
      *(&__src[1] + 1) = v13;
      __src[6] = v108;
      __src[7] = v109;
      __src[8] = v110;
      LOBYTE(__src[9]) = v111;
      __src[2] = v104;
      __src[3] = v105;
      __src[4] = v106;
      __src[5] = v107;
      v32 = v13;
      sub_1A8BAF4B8(__src, &qword_1EB341178);
      sub_1A8BA3FE4(0, &qword_1EB33CFF0);
      v33 = v2;
      v34 = sub_1A8BDE264();

      if (v34)
      {

        return;
      }
    }

    v35 = sub_1A8BC1E38(v81);
    memmove(__src, v36, 0x12BuLL);
    v37 = sub_1A8BAECD4(__src);
    v38 = sub_1A8AAD988(__src);
    if (v37 == 1)
    {
      if (*(v38 + 297))
      {
        v39 = *(v38 + 32);
        v40 = *(v38 + 24);
        v41 = *v38;
        v42 = *(v38 + 144);
        v44 = *(v38 + 128);
        v43 = *(v38 + 136);
        v62 = *(v38 + 112);
        v64 = *(v38 + 8);
        v66 = *(v38 + 96);
        v59 = *(v38 + 64);
        v61 = *(v38 + 80);
        v45 = *(v38 + 40);
        v57 = *(v38 + 48);
      }

      else
      {
        v41 = *(v38 + 152);
        v39 = *(v38 + 184);
        v40 = *(v38 + 176);
        v64 = *(v38 + 160);
        v66 = *(v38 + 248);
        v42 = *(v38 + 296);
        v44 = *(v38 + 280);
        v43 = *(v38 + 288);
        v61 = *(v38 + 232);
        v62 = *(v38 + 264);
        v45 = *(v38 + 192);
        v57 = *(v38 + 200);
        v59 = *(v38 + 216);
        v38 += 152;
      }

      sub_1A8BAF018(v38, v116);
      *v116 = v41;
      *&v116[8] = v64;
      *&v116[24] = v40;
      LOBYTE(v117) = v39;
      *(&v117 + 1) = v45;
      v118 = v57;
      v119 = v59;
      v120 = v61;
      v121 = v66;
      v122 = v62;
      *&v123 = v44;
      *(&v123 + 1) = v43;
      v124 = v42;
      nullsub_1(v116);
      v88 = v121;
      v89 = v122;
      v90 = v123;
      v91 = v124;
      v84 = v117;
      v85 = v118;
      v86 = v119;
      v87 = v120;
      v82 = *v116;
      v83 = *&v116[16];
    }

    else
    {
      sub_1A8BA6348(&v82);
    }

    v77 = v88;
    v78 = v89;
    v79 = v90;
    v73 = v84;
    v74 = v85;
    v75 = v86;
    v76 = v87;
    v71 = v82;
    v72 = v83;
    v69[6] = v88;
    v69[7] = v89;
    v69[8] = v90;
    v69[2] = v84;
    v69[3] = v85;
    v69[4] = v86;
    v69[5] = v87;
    v80 = v91;
    v70 = v91;
    v69[0] = v82;
    v69[1] = v83;
    if (sub_1A8AADFA8(v69) == 1)
    {
      v121 = v77;
      v122 = v78;
      v123 = v79;
      v124 = v80;
      v117 = v73;
      v118 = v74;
      v119 = v75;
      v120 = v76;
      *v116 = v71;
      *&v116[16] = v72;
      sub_1A8BAF440(v116, v67, &qword_1EB341178);
      sub_1A8BC54E0(v116);
      v67[6] = v77;
      v67[7] = v78;
      v67[8] = v79;
      v68 = v80;
      v67[2] = v73;
      v67[3] = v74;
      v67[4] = v75;
      v67[5] = v76;
      v67[0] = v71;
      v67[1] = v72;
      sub_1A8BAF4B8(v67, &qword_1EB341178);
      v35(v81, 0);
    }

    else
    {
      v46 = v2;
      objc_storeStrong(&v72 + 1, v1);
      v47 = v71;

      sub_1A8BB0BC8(v47, *(&v47 + 1), v46, v67);
      sub_1A8BC0D6C(v67, &v73 + 8);
      v121 = v77;
      v122 = v78;
      v123 = v79;
      v124 = v80;
      v117 = v73;
      v118 = v74;
      v119 = v75;
      v120 = v76;
      *v116 = v71;
      *&v116[16] = v72;
      sub_1A8BC54E0(v116);
      v35(v81, 0);
    }
  }
}

void (*IncomingCallTextViewAdapter.secondaryNameFont.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = IncomingCallTextViewAdapter.secondaryNameFont.getter();
  return sub_1A8BBB178;
}

void sub_1A8BBB178(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    IncomingCallTextViewAdapter.secondaryNameFont.setter(v2);
  }

  else
  {
    IncomingCallTextViewAdapter.secondaryNameFont.setter(*a1);
  }
}

void *IncomingCallTextViewAdapter.statusFont.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v23 = v25;
  v0 = v27;
  v24 = v26;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v18 = v31;
  if (sub_1A8AADFA8(&v25) == 1)
  {
    v1 = 0;
  }

  else
  {
    v2 = v0;
    v1 = v0;
  }

  v4 = v23;
  v5 = v24;
  v6 = v0;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  sub_1A8BAF4B8(&v4, &qword_1EB341178);
  return v1;
}

void IncomingCallTextViewAdapter.statusFont.setter(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v2 = a1;
    sub_1A8BDDC74();

    v32 = __dst;
    v33 = v14;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v34 = __dst;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = v17;
    v44 = v23;
    v42 = v21;
    v43 = v22;
    v40 = v19;
    v41 = v20;
    v39 = v18;
    if (sub_1A8AADFA8(&v34) == 1)
    {
      __dst = v32;
      v14 = v33;
      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v16 = v24;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      sub_1A8BAF4B8(&__dst, &qword_1EB341178);
    }

    else
    {
      __dst = v32;
      v14 = v33;
      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v16 = v24;
      v17 = v25;
      v18 = v26;
      v19 = v27;
      v3 = v15;
      sub_1A8BAF4B8(&__dst, &qword_1EB341178);
      sub_1A8BA3FE4(0, &qword_1EB33CFF0);
      v4 = v2;
      v5 = sub_1A8BDE264();

      if (v5)
      {

        return;
      }
    }

    v6 = sub_1A8BC142C(v12);
    v8 = v7;
    memmove(&__dst, v7, 0x91uLL);
    if (sub_1A8AADFA8(&__dst) != 1)
    {
      v9 = v8[3];
      v8[3] = v2;
      v2 = v2;

      v10 = *v8;
      v11 = v8[1];

      sub_1A8BB0BC8(v10, v11, v2, v45);
      sub_1A8BC0D6C(v45, (v8 + 5));
    }

    (v6)(v12, 0);
  }
}

void (*IncomingCallTextViewAdapter.statusFont.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x140uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 312) = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v17 = *(v4 + 152);
  v5 = *(v4 + 176);
  v18 = *(v4 + 168);
  v13 = *(v4 + 248);
  v14 = *(v4 + 264);
  v15 = *(v4 + 280);
  v16 = *(v4 + 296);
  v9 = *(v4 + 184);
  v10 = *(v4 + 200);
  v11 = *(v4 + 216);
  v12 = *(v4 + 232);
  *v4 = v17;
  *(v4 + 16) = v18;
  *(v4 + 24) = v5;
  *(v4 + 32) = v9;
  *(v4 + 48) = v10;
  *(v4 + 144) = v16;
  *(v4 + 112) = v14;
  *(v4 + 128) = v15;
  *(v4 + 80) = v12;
  *(v4 + 96) = v13;
  *(v4 + 64) = v11;
  if (sub_1A8AADFA8(v4) == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v6 = v5;
  }

  *(v4 + 152) = v17;
  *(v4 + 168) = v18;
  *(v4 + 176) = v5;
  *(v4 + 248) = v13;
  *(v4 + 264) = v14;
  *(v4 + 280) = v15;
  *(v4 + 296) = v16;
  *(v4 + 184) = v9;
  *(v4 + 200) = v10;
  *(v4 + 216) = v11;
  *(v4 + 232) = v12;
  sub_1A8BAF4B8(v4 + 152, &qword_1EB341178);
  *(v4 + 304) = v6;
  return sub_1A8BBB888;
}

void sub_1A8BBB888(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[38];
  if (a2)
  {
    v4 = v3;
    IncomingCallTextViewAdapter.statusFont.setter(v3);
  }

  else
  {
    IncomingCallTextViewAdapter.statusFont.setter((*a1)[38]);
  }

  free(v2);
}

uint64_t IncomingCallTextViewAdapter.displayNameText.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  v0 = sub_1A8BAECD4(__src);
  v1 = sub_1A8AAD988(__src);
  v2 = v1;
  if (v0 == 1)
  {
    if (*(v1 + 298))
    {
      v3 = (v1 + 152);
      sub_1A8BAF018(v1 + 152, v52);
      v51 = 200;
      v50 = 208;
      v49 = 216;
      v48 = 224;
      v47 = 232;
      v46 = 240;
      v45 = 272;
      v44 = 264;
      v43 = 256;
      v42 = 248;
      v4 = 35;
      v5 = 36;
      v6 = 37;
      v7 = 20;
      v8 = 21;
      v9 = 22;
      v10 = 23;
      v11 = 24;
    }

    else
    {
      sub_1A8BAF018(v1, v52);
      v51 = 48;
      v50 = 56;
      v49 = 64;
      v48 = 72;
      v47 = 80;
      v46 = 88;
      v45 = 120;
      v44 = 112;
      v43 = 104;
      v42 = 96;
      v4 = 16;
      v5 = 17;
      v6 = 18;
      v7 = 1;
      v8 = 2;
      v9 = 3;
      v10 = 4;
      v11 = 5;
      v3 = v2;
    }

    sub_1A8BAECE0(__dst);
    v13 = v50;
    v12 = v51;
    v15 = v48;
    v14 = v49;
    v17 = v46;
    v16 = v47;
    v19 = v44;
    v18 = v45;
    v21 = v42;
    v20 = v43;
  }

  else
  {
    v12 = 48;
    v13 = 56;
    v14 = 64;
    v15 = 72;
    v16 = 80;
    v17 = 88;
    v18 = 120;
    v19 = 112;
    v20 = 104;
    v21 = 96;
    v4 = 16;
    v5 = 17;
    v6 = 18;
    v7 = 1;
    v8 = 2;
    v9 = 3;
    v10 = 4;
    v11 = 5;
    v3 = v2;
  }

  v22 = v2[v6];
  v23 = v2[v5];
  v24 = v2[v4];
  v25 = *(v2 + v18);
  v26 = *(v2 + v19);
  v27 = *(v2 + v20);
  v28 = *(v2 + v21);
  v29 = *(v2 + v17);
  v30 = *(v2 + v16);
  v31 = *(v2 + v15);
  v32 = *(v2 + v14);
  v33 = *(v2 + v13);
  v34 = *(v2 + v12);
  v35 = v2[v11];
  v36 = v2[v10];
  v37 = v2[v9];
  v38 = v2[v8];
  v39 = v2[v7];
  v40 = *v3;
  v52[0] = v40;
  v52[1] = v39;
  v52[2] = v38;
  v52[3] = v37;
  v53 = v36;
  v54 = v35;
  v55 = v34;
  v56 = v33;
  v57 = v32;
  v58 = v31;
  v59 = v30;
  v60 = v29;
  v61 = v28;
  v62 = v27;
  v63 = v26;
  v64 = v25;
  v65 = v24;
  v66 = v23;
  v67 = v22;

  sub_1A8BC07E4(v52);
  return v40;
}

void IncomingCallTextViewAdapter.displayNameText.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  v4 = sub_1A8BAECD4(__src);
  v5 = sub_1A8AAD988(__src);
  v6 = v5;
  *&v79 = a1;
  *(&v79 + 1) = a2;
  if (v4 == 1)
  {
    if (*(v5 + 298))
    {
      v7 = (v5 + 152);
      sub_1A8BAF018(v5 + 152, v105);
      v76 = 200;
      v74 = 208;
      v72 = 216;
      v70 = 224;
      v68 = 232;
      v67 = 240;
      v66 = 272;
      v65 = 264;
      v64 = 256;
      v63 = 248;
      v8 = 35;
      v9 = 36;
      v10 = 37;
      v11 = 20;
      v12 = 21;
      v13 = 22;
      v14 = 23;
      v15 = 24;
    }

    else
    {
      sub_1A8BAF018(v5, v105);
      v76 = 48;
      v74 = 56;
      v72 = 64;
      v70 = 72;
      v68 = 80;
      v67 = 88;
      v66 = 120;
      v65 = 112;
      v64 = 104;
      v63 = 96;
      v8 = 16;
      v9 = 17;
      v10 = 18;
      v11 = 1;
      v12 = 2;
      v13 = 3;
      v14 = 4;
      v15 = 5;
      v7 = v6;
    }

    sub_1A8BAECE0(__dst);
    v16 = v76;
    v17 = v74;
    v18 = v72;
    v19 = v70;
    v21 = v67;
    v20 = v68;
    v23 = v65;
    v22 = v66;
    v25 = v63;
    v24 = v64;
  }

  else
  {
    v16 = 48;
    v17 = 56;
    v18 = 64;
    v19 = 72;
    v20 = 80;
    v21 = 88;
    v22 = 120;
    v23 = 112;
    v24 = 104;
    v25 = 96;
    v8 = 16;
    v9 = 17;
    v10 = 18;
    v11 = 1;
    v12 = 2;
    v13 = 3;
    v14 = 4;
    v15 = 5;
    v7 = v6;
  }

  v26 = v6[v10];
  v27 = v6[v9];
  v28 = v6[v8];
  v29 = *(v6 + v22);
  v30 = *(v6 + v23);
  v31 = *(v6 + v24);
  v32 = *(v6 + v25);
  v33 = *(v6 + v21);
  v34 = *(v6 + v20);
  v35 = *(v6 + v19);
  v36 = *(v6 + v18);
  v37 = *(v6 + v17);
  v38 = *(v6 + v16);
  v39 = v6[v15];
  v40 = v6[v14];
  v41 = v6[v13];
  v42 = v6[v12];
  v43 = v6[v11];
  v44 = *v7;
  v106[0] = v44;
  v106[1] = v43;
  v106[2] = v42;
  v106[3] = v41;
  v107 = v40;
  v108 = v39;
  v109 = v38;
  v110 = v37;
  v111 = v36;
  v112 = v35;
  v113 = v34;
  v114 = v33;
  v115 = v32;
  v116 = v31;
  v117 = v30;
  v118 = v29;
  v119 = v28;
  v120 = v27;
  v121 = v26;

  sub_1A8BC07E4(v106);
  if (__PAIR128__(v43, v44) == v79)
  {
  }

  else
  {
    v45 = sub_1A8BDE3B4();

    if (v45)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1A8BDDC74();

      memcpy(v104, v105, 0x12BuLL);
      memcpy(v105, v104, 0x12BuLL);
      if (sub_1A8BAECD4(v105) == 1)
      {
        v46 = sub_1A8AAD988(v105);
        if (*(v46 + 298))
        {
          v47 = *(v46 + 184);
          v77 = *(v46 + 248);
          v78 = *(v46 + 168);
          v48 = *(v46 + 296);
          v50 = *(v46 + 280);
          v49 = *(v46 + 288);
          v73 = *(v46 + 232);
          v75 = *(v46 + 264);
          v51 = *(v46 + 192);
          v69 = *(v46 + 200);
          v71 = *(v46 + 216);
          v46 += 152;
        }

        else
        {
          v47 = *(v46 + 32);
          v48 = *(v46 + 144);
          v50 = *(v46 + 128);
          v49 = *(v46 + 136);
          v77 = *(v46 + 96);
          v78 = *(v46 + 16);
          v73 = *(v46 + 80);
          v75 = *(v46 + 112);
          v51 = *(v46 + 40);
          v69 = *(v46 + 48);
          v71 = *(v46 + 64);
        }

        sub_1A8BAF018(v46, v93);
      }

      else
      {
        v52 = sub_1A8AAD988(v105);
        v47 = *(v52 + 32);
        v48 = *(v52 + 144);
        v50 = *(v52 + 128);
        v49 = *(v52 + 136);
        v77 = *(v52 + 96);
        v78 = *(v52 + 16);
        v73 = *(v52 + 80);
        v75 = *(v52 + 112);
        v51 = *(v52 + 40);
        v69 = *(v52 + 48);
        v71 = *(v52 + 64);
        memcpy(v93, v104, 0x12BuLL);
        v53 = sub_1A8AAD988(v93);
        sub_1A8BAF440(v53, v80, &unk_1EB341698);
      }

      v95 = v78;
      LOBYTE(v96) = v47;
      *(&v96 + 1) = v51;
      v97 = v69;
      v98 = v71;
      v99 = v73;
      v100 = v77;
      v101 = v75;
      *&v102 = v50;
      *(&v102 + 1) = v49;
      v103 = v48;
      v54 = *(&v78 + 1);

      v94 = v79;
      sub_1A8BB0BC8(v79, *(&v79 + 1), v54, v122);
      sub_1A8BC0D6C(v122, &v96 + 8);
      v89 = v100;
      v90 = v101;
      v91 = v102;
      v92 = v103;
      v85 = v96;
      v86 = v97;
      v87 = v98;
      v88 = v99;
      v83 = v94;
      v84 = v95;
      memcpy(v93, v104, 0x12BuLL);
      if (sub_1A8BAECD4(v93) == 1)
      {
        v55 = sub_1A8AAD988(v93);
        v56 = *(v55 + 298);
        memcpy(v81, v55, 0x12BuLL);
        if (v56)
        {
          v57 = *(v55 + 248);
          v58 = *(v55 + 200);
          v80[2] = *(v55 + 184);
          v80[3] = v58;
          v59 = *(v55 + 232);
          v80[4] = *(v55 + 216);
          v80[5] = v59;
          v60 = *(v55 + 168);
          v80[0] = *(v55 + 152);
          v80[1] = v60;
          v61 = *(v55 + 264);
          v62 = *(v55 + 280);
          v80[6] = v57;
          v80[7] = v61;
          LOBYTE(v80[9]) = *(v55 + 296);
          v80[8] = v62;
          sub_1A8BC07E4(v80);
          *(&v81[16] + 8) = v90;
          *(&v81[17] + 8) = v91;
          *(&v81[15] + 8) = v89;
          *(&v81[11] + 8) = v85;
          *(&v81[12] + 8) = v86;
          *(&v81[13] + 8) = v87;
          *(&v81[14] + 8) = v88;
          *(&v81[9] + 8) = v83;
          BYTE8(v81[18]) = v92;
          *(&v81[10] + 8) = v84;
        }

        else
        {
          v80[6] = v81[6];
          v80[7] = v81[7];
          v80[8] = v81[8];
          LOBYTE(v80[9]) = v81[9];
          v80[2] = v81[2];
          v80[3] = v81[3];
          v80[4] = v81[4];
          v80[5] = v81[5];
          v80[0] = v81[0];
          v80[1] = v81[1];
          sub_1A8BC07E4(v80);
          v81[6] = v89;
          v81[7] = v90;
          v81[8] = v91;
          LOBYTE(v81[9]) = v92;
          v81[2] = v85;
          v81[3] = v86;
          v81[4] = v87;
          v81[5] = v88;
          v81[0] = v83;
          v81[1] = v84;
        }

        memcpy(v80, v81, 0x12BuLL);
        sub_1A8BC116C(v80);
      }

      else
      {
        sub_1A8AAD988(v93);
        sub_1A8BAECE0(v104);
        v80[6] = v89;
        v80[7] = v90;
        v80[8] = v91;
        LOBYTE(v80[9]) = v92;
        v80[2] = v85;
        v80[3] = v86;
        v80[4] = v87;
        v80[5] = v88;
        v80[0] = v83;
        v80[1] = v84;
        sub_1A8BC11B4(v80);
      }

      memcpy(v82, v80, 0x12BuLL);
      sub_1A8BC16A8(v82);

      IncomingCallTextViewAdapter.setupOrTeardownEmojiTextViewIfNecessary()();
    }
  }
}

Swift::Void __swiftcall IncomingCallTextViewAdapter.setupOrTeardownEmojiTextViewIfNecessary()()
{
  v86 = sub_1A8BDDF34();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(v107, v108, 0x12BuLL);
  memcpy(v108, v107, 0x12BuLL);
  v2 = sub_1A8BAECD4(v108);
  v3 = sub_1A8AAD988(v108);
  v4 = v3;
  v87 = v0;
  if (v2 == 1)
  {
    if (*(v3 + 298))
    {
      v5 = (v3 + 152);
      sub_1A8BAF018(v3 + 152, v91);
      v82 = 200;
      v81 = 208;
      v80 = 216;
      v79 = 224;
      v78 = 232;
      v77 = 240;
      v76 = 272;
      v75 = 264;
      v74 = 256;
      v73 = 248;
      v72 = 280;
      v6 = 36;
      v7 = 37;
      v8 = 20;
      v9 = 21;
      v10 = 22;
      v11 = 23;
      v12 = 24;
    }

    else
    {
      sub_1A8BAF018(v3, v91);
      v82 = 48;
      v81 = 56;
      v80 = 64;
      v79 = 72;
      v78 = 80;
      v77 = 88;
      v76 = 120;
      v75 = 112;
      v74 = 104;
      v73 = 96;
      v72 = 128;
      v6 = 17;
      v7 = 18;
      v8 = 1;
      v9 = 2;
      v10 = 3;
      v11 = 4;
      v12 = 5;
      v5 = v4;
    }

    sub_1A8BAECE0(v107);
    v14 = v81;
    v13 = v82;
    v16 = v79;
    v15 = v80;
    v18 = v77;
    v17 = v78;
    v20 = v75;
    v19 = v76;
    v22 = v73;
    v21 = v74;
    v23 = v72;
  }

  else
  {
    v13 = 48;
    v14 = 56;
    v15 = 64;
    v16 = 72;
    v17 = 80;
    v18 = 88;
    v19 = 120;
    v20 = 112;
    v21 = 104;
    v22 = 96;
    v23 = 128;
    v6 = 17;
    v7 = 18;
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 4;
    v12 = 5;
    v5 = v4;
  }

  v24 = v4[v7];
  v25 = v4[v6];
  v26 = *(v4 + v23);
  v27 = *(v4 + v19);
  v28 = *(v4 + v20);
  v29 = *(v4 + v21);
  v30 = *(v4 + v22);
  v31 = *(v4 + v18);
  v32 = *(v4 + v17);
  v33 = *(v4 + v16);
  v34 = *(v4 + v15);
  v35 = *(v4 + v14);
  v36 = *(v4 + v13);
  v37 = v4[v12];
  v38 = v4[v11];
  v39 = v4[v10];
  v40 = v4[v9];
  v41 = v4[v8];
  v91[0] = *v5;
  v91[1] = v41;
  v91[2] = v40;
  v91[3] = v39;
  v92 = v38;
  v93 = v37;
  v94 = v36;
  v95 = v35;
  v96 = v34;
  v97 = v33;
  v98 = v32;
  v99 = v31;
  v100 = v30;
  v101 = v29;
  v102 = v28;
  v103 = v27;
  v104 = v26;
  v105 = v25;
  v106 = v24;

  sub_1A8BC07E4(v91);
  v42 = sub_1A8BDE104();

  LODWORD(v41) = CEMStringContainsEmoji();

  v43 = OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController;
  v44 = v87;
  v45 = *(v87 + OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController);
  if (!v41)
  {
    if (!v45)
    {
      return;
    }

    v69 = [v45 view];
    if (v69)
    {
      v70 = v69;
      [v69 removeFromSuperview];

      v58 = *(v44 + v43);
      *(v44 + v43) = 0;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v45)
  {
    return;
  }

  v46 = v87;
  _s11CoordinatorCMa();
  sub_1A8BC11F8(&qword_1EB33D0F0, _s11CoordinatorCMa);

  v47 = sub_1A8BDDD34();
  v49 = v48;
  v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416A8));
  v88 = v47;
  v89 = v49;
  v90 = 1;
  v51 = sub_1A8BDDE34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3416B0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1A8BF9320;
  sub_1A8BDDF14();
  sub_1A8BDDF24();
  v88 = v52;
  sub_1A8BC11F8(&qword_1EB33D198, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416C0);
  sub_1A8BC1240();
  sub_1A8BDE2C4();
  sub_1A8BDDE14();
  v53 = [v51 view];
  if (!v53)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v54 = v53;
  v55 = [objc_opt_self() clearColor];
  [v54 setBackgroundColor_];

  v56 = *(v46 + v43);
  *(v46 + v43) = v51;
  v57 = v51;

  v58 = [v57 view];
  if (!v58)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v59 = [*(v46 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController) view];
  if (!v59)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v60 = v59;
  [v59 frame];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;

  [v58 setFrame_];
LABEL_16:
}

void (*IncomingCallTextViewAdapter.displayNameText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3A8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 928) = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy((v4 + 304), (v4 + 608), 0x12BuLL);
  memcpy(v4, (v4 + 304), 0x12BuLL);
  v5 = sub_1A8BAECD4(v4);
  v6 = sub_1A8AAD988(v4);
  v7 = v6;
  if (v5 == 1)
  {
    if (*(v6 + 298))
    {
      v8 = (v6 + 152);
      v57 = 200;
      v56 = 208;
      v55 = 216;
      v54 = 224;
      v53 = 232;
      v52 = 240;
      v51 = 272;
      v50 = 264;
      v49 = 256;
      v48 = 248;
      v47 = 280;
      v9 = 36;
      v10 = 37;
      v11 = 20;
      v12 = 21;
      v13 = 22;
      v14 = 23;
      v15 = 24;
    }

    else
    {
      v57 = 48;
      v56 = 56;
      v55 = 64;
      v54 = 72;
      v53 = 80;
      v52 = 88;
      v51 = 120;
      v50 = 112;
      v49 = 104;
      v48 = 96;
      v47 = 128;
      v9 = 17;
      v10 = 18;
      v11 = 1;
      v12 = 2;
      v13 = 3;
      v14 = 4;
      v15 = 5;
      v8 = v6;
    }

    sub_1A8BAF018(v8, v4 + 608);
    sub_1A8BAECE0(v4 + 304);
    v17 = v56;
    v16 = v57;
    v19 = v54;
    v18 = v55;
    v21 = v52;
    v20 = v53;
    v23 = v50;
    v22 = v51;
    v25 = v48;
    v24 = v49;
    v26 = v47;
  }

  else
  {
    v16 = 48;
    v17 = 56;
    v18 = 64;
    v19 = 72;
    v20 = 80;
    v21 = 88;
    v22 = 120;
    v23 = 112;
    v24 = 104;
    v25 = 96;
    v26 = 128;
    v9 = 17;
    v10 = 18;
    v11 = 1;
    v12 = 2;
    v13 = 3;
    v14 = 4;
    v15 = 5;
    v8 = v7;
  }

  v27 = v7[v10];
  v28 = v7[v9];
  v29 = *(v7 + v26);
  v30 = *(v7 + v22);
  v31 = *(v7 + v23);
  v32 = *(v7 + v24);
  v33 = *(v7 + v25);
  v34 = *(v7 + v21);
  v35 = *(v7 + v20);
  v36 = *(v7 + v19);
  v37 = *(v7 + v18);
  v38 = *(v7 + v17);
  v39 = *(v7 + v16);
  v40 = v7[v15];
  v41 = v7[v14];
  v42 = v7[v13];
  v43 = v7[v12];
  v44 = v7[v11];
  v45 = *v8;
  *(v4 + 608) = *v8;
  *(v4 + 616) = v44;
  *(v4 + 624) = v43;
  *(v4 + 632) = v42;
  *(v4 + 640) = v41;
  *(v4 + 648) = v40;
  *(v4 + 656) = v39;
  *(v4 + 664) = v38;
  *(v4 + 672) = v37;
  *(v4 + 680) = v36;
  *(v4 + 688) = v35;
  *(v4 + 696) = v34;
  *(v4 + 704) = v33;
  *(v4 + 712) = v32;
  *(v4 + 720) = v31;
  *(v4 + 728) = v30;
  *(v4 + 736) = v29;
  *(v4 + 744) = v28;
  *(v4 + 752) = v27;

  sub_1A8BC07E4(v4 + 608);
  *(v4 + 912) = v45;
  *(v4 + 920) = v44;
  return sub_1A8BBCE74;
}

void sub_1A8BBCE74(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 912);
  v4 = *(*a1 + 920);
  if (a2)
  {

    IncomingCallTextViewAdapter.displayNameText.setter(v3, v4);
  }

  else
  {
    IncomingCallTextViewAdapter.displayNameText.setter(*(*a1 + 912), v4);
  }

  free(v2);
}

uint64_t IncomingCallTextViewAdapter.statusText.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v1 = v23[0];
  v0 = v23[1];
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v14 = v24;
  v15 = v25;
  if (sub_1A8AADFA8(v23) == 1)
  {
    v2 = 0;
  }

  else
  {

    v2 = v1;
  }

  v4[0] = v1;
  v4[1] = v0;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v7 = v16;
  v8 = v17;
  v10 = v19;
  v9 = v18;
  v6 = v15;
  v5 = v14;
  sub_1A8BAF4B8(v4, &qword_1EB341178);
  return v2;
}

uint64_t IncomingCallTextViewAdapter.statusText.setter(uint64_t a1, uint64_t a2)
{

  sub_1A8BC2A28(a1, a2);
}

uint64_t sub_1A8BBD1FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_1A8BC2A28(v1, v2);
}

void (*IncomingCallTextViewAdapter.statusText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x150uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator;
  *(v3 + 320) = v1;
  *(v3 + 328) = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v17 = *(v4 + 264);
  v18 = *(v4 + 280);
  v13 = *(v4 + 200);
  v14 = *(v4 + 216);
  v15 = *(v4 + 232);
  v16 = *(v4 + 248);
  v11 = *(v4 + 168);
  v12 = *(v4 + 184);
  *(v4 + 112) = v17;
  *(v4 + 128) = v18;
  *(v4 + 48) = v13;
  *(v4 + 64) = v14;
  v7 = *(v4 + 152);
  v6 = *(v4 + 160);
  v19 = *(v4 + 296);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 144) = v19;
  *(v4 + 80) = v15;
  *(v4 + 96) = v16;
  *(v4 + 16) = v11;
  *(v4 + 32) = v12;
  if (sub_1A8AADFA8(v4) == 1)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {

    v8 = v7;
    v9 = v6;
  }

  *(v4 + 152) = v7;
  *(v4 + 160) = v6;
  *(v4 + 264) = v17;
  *(v4 + 280) = v18;
  *(v4 + 296) = v19;
  *(v4 + 200) = v13;
  *(v4 + 216) = v14;
  *(v4 + 232) = v15;
  *(v4 + 248) = v16;
  *(v4 + 168) = v11;
  *(v4 + 184) = v12;
  sub_1A8BAF4B8(v4 + 152, &qword_1EB341178);
  *(v4 + 304) = v8;
  *(v4 + 312) = v9;
  return sub_1A8BBD420;
}

void sub_1A8BBD420(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 304);
  v3 = *(*a1 + 312);
  if (a2)
  {

    sub_1A8BC2A28(v4, v3);
  }

  else
  {

    sub_1A8BC2A28(v4, v3);
  }

  free(v2);
}

uint64_t IncomingCallTextViewAdapter.alignment.getter()
{

  v0 = sub_1A8BC222C();

  return v0 & 1;
}

uint64_t IncomingCallTextViewAdapter.layout.getter()
{
  v0 = sub_1A8BDDF84();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A8BC25F4(v2);

  return sub_1A8BC0DC8(v2);
}

uint64_t IncomingCallTextViewAdapter.displayNameIsSuitableForVerticalLayout.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(__dst, __src, 0x12BuLL);
  memcpy(__src, __dst, 0x12BuLL);
  v0 = sub_1A8BAECD4(__src);
  v1 = sub_1A8AAD988(__src);
  v2 = v1;
  if (v0 == 1)
  {
    if (*(v1 + 298))
    {
      v3 = (v1 + 152);
      sub_1A8BAF018(v1 + 152, v53);
      v52 = 200;
      v51 = 208;
      v50 = 216;
      v49 = 224;
      v48 = 232;
      v47 = 240;
      v46 = 272;
      v45 = 264;
      v44 = 256;
      v43 = 248;
      v4 = 35;
      v5 = 36;
      v6 = 37;
      v7 = 20;
      v8 = 21;
      v9 = 22;
      v10 = 23;
      v11 = 24;
    }

    else
    {
      sub_1A8BAF018(v1, v53);
      v52 = 48;
      v51 = 56;
      v50 = 64;
      v49 = 72;
      v48 = 80;
      v47 = 88;
      v46 = 120;
      v45 = 112;
      v44 = 104;
      v43 = 96;
      v4 = 16;
      v5 = 17;
      v6 = 18;
      v7 = 1;
      v8 = 2;
      v9 = 3;
      v10 = 4;
      v11 = 5;
      v3 = v2;
    }

    sub_1A8BAECE0(__dst);
    v13 = v51;
    v12 = v52;
    v15 = v49;
    v14 = v50;
    v17 = v47;
    v16 = v48;
    v19 = v45;
    v18 = v46;
    v21 = v43;
    v20 = v44;
  }

  else
  {
    v12 = 48;
    v13 = 56;
    v14 = 64;
    v15 = 72;
    v16 = 80;
    v17 = 88;
    v18 = 120;
    v19 = 112;
    v20 = 104;
    v21 = 96;
    v4 = 16;
    v5 = 17;
    v6 = 18;
    v7 = 1;
    v8 = 2;
    v9 = 3;
    v10 = 4;
    v11 = 5;
    v3 = v2;
  }

  v22 = v2[v6];
  v23 = v2[v5];
  v24 = v2[v4];
  v25 = *(v2 + v18);
  v26 = *(v2 + v19);
  v27 = *(v2 + v20);
  v28 = *(v2 + v21);
  v29 = *(v2 + v17);
  v30 = *(v2 + v16);
  v31 = *(v2 + v15);
  v32 = *(v2 + v14);
  v33 = *(v2 + v13);
  v34 = *(v2 + v12);
  v35 = v2[v11];
  v36 = v2[v10];
  v37 = v2[v9];
  v38 = v2[v8];
  v39 = v2[v7];
  v53[0] = *v3;
  v53[1] = v39;
  v53[2] = v38;
  v53[3] = v37;
  v54 = v36;
  v55 = v35;
  v56 = v34;
  v57 = v33;
  v58 = v32;
  v59 = v31;
  v60 = v30;
  v61 = v29;
  v62 = v28;
  v63 = v27;
  v64 = v26;
  v65 = v25;
  v66 = v24;
  v67 = v23;
  v68 = v22;

  sub_1A8BC07E4(v53);
  v40 = sub_1A8BDE104();

  IsSuitableForVerticalLayout = CTStringIsSuitableForVerticalLayout();

  return IsSuitableForVerticalLayout;
}

uint64_t IncomingCallTextViewAdapter.statusIsSuitableForVerticalLayout.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v19 = v29;
  v20 = v30;
  v21 = v31;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v13 = v23;
  v14 = v24;
  v3[0] = v22[0];
  v3[1] = v22[1];
  v10 = v29;
  v11 = v30;
  v12 = v31;
  v6 = v25;
  v7 = v26;
  v9 = v28;
  v8 = v27;
  v5 = v24;
  v4 = v23;
  if (sub_1A8AADFA8(v22) == 1)
  {
    sub_1A8BAF4B8(v3, &qword_1EB341178);
    return 1;
  }

  else
  {

    sub_1A8BAF4B8(v3, &qword_1EB341178);
    v1 = sub_1A8BDE104();

    IsSuitableForVerticalLayout = CTStringIsSuitableForVerticalLayout();

    return IsSuitableForVerticalLayout;
  }
}

uint64_t IncomingCallTextViewAdapter.marqueeRunning.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A8BDDC84();
}

uint64_t sub_1A8BBDD3C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  *a1 = v3;
  return result;
}

uint64_t sub_1A8BBDDD4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A8BDDC84();
}

uint64_t (*IncomingCallTextViewAdapter.marqueeRunning.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator;
  *a1 = v1;
  *(a1 + 8) = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  *(a1 + 16) = *(a1 + 17);
  return sub_1A8BBDF00;
}

uint64_t sub_1A8BBDF00(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 17) = v2;

  return sub_1A8BDDC84();
}

id IncomingCallTextViewAdapter.maximumTextWidth.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  if (v2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }
}

void IncomingCallTextViewAdapter.maximumTextWidth.setter(void *a1)
{
  if (a1)
  {
    [a1 doubleValue];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1A8BDDC84();
  }
}

void sub_1A8BBE1EC(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    [v1 doubleValue];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1A8BDDC84();
  }
}

void (*IncomingCallTextViewAdapter.maximumTextWidth.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  if (*(v4 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  *(v4 + 16) = v6;
  return sub_1A8BBE3AC;
}

void sub_1A8BBE3AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (a2)
  {
    if (v3)
    {
      v4 = v3;
      [v4 doubleValue];
      v6 = v5;
      swift_getKeyPath();
      swift_getKeyPath();
      *v2 = v6;
      v2[8] = 0;

      sub_1A8BDDC84();

      v7 = *(v2 + 2);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v3)
  {
    [*(*a1 + 16) doubleValue];
    v9 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    *v2 = v9;
    v2[8] = 0;

    sub_1A8BDDC84();
  }

  free(v2);
}

BOOL IncomingCallTextViewAdapter.multilineNameIsDisplayed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(v2, __src, 0x12BuLL);
  memcpy(__src, v2, 0x12BuLL);
  v0 = sub_1A8BAECD4(__src) == 1;
  sub_1A8AAD988(__src);
  sub_1A8BAECE0(v2);
  return v0;
}

uint64_t sub_1A8BBE6B0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;

  sub_1A8BDDC74();

  return v4;
}

uint64_t sub_1A8BBE75C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  return v1;
}

id IncomingCallTextViewAdapter.__allocating_init(name:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1A8BDE104();

  v3 = [v1 initWithName:v2 status:0 callIsActive:0];

  return v3;
}

id IncomingCallTextViewAdapter.init(name:)()
{
  v1 = sub_1A8BDE104();

  v2 = [v0 initWithName:v1 status:0 callIsActive:0];

  return v2;
}

id IncomingCallTextViewAdapter.__allocating_init(name:status:callIsActive:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1A8BC3778(a1, a2, a3, a4, a5 & 1);
  v13 = objc_allocWithZone(v5);
  v14 = sub_1A8BBECF0(v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

id IncomingCallTextViewAdapter.init(name:status:callIsActive:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_1A8BC3778(a1, a2, a3, a4, a5 & 1);
  v12 = objc_allocWithZone(ObjectType);
  v13 = sub_1A8BBECF0(v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id IncomingCallTextViewAdapter.__allocating_init(contact:status:callIsActive:)(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = a1;
  v11 = sub_1A8BC4030(v10, a2, a3, a4 & 1);
  v12 = objc_allocWithZone(v4);
  v13 = sub_1A8BBECF0(v11);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id IncomingCallTextViewAdapter.init(contact:status:callIsActive:)(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = sub_1A8BC4030(v9, a2, a3, a4 & 1);
  v11 = objc_allocWithZone(ObjectType);
  v12 = sub_1A8BBECF0(v10);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

id sub_1A8BBECF0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1A8BDDF34();
  MEMORY[0x1EEE9AC00](v5);
  *&v1[OBJC_IVAR___PRIncomingCallTextViewAdapter_emojiHostingController] = 0;
  *&v1[OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator] = a1;
  _s11CoordinatorCMa();
  sub_1A8BC11F8(&qword_1EB33D0F0, _s11CoordinatorCMa);
  swift_retain_n();
  sub_1A8BDDD34();
  v7 = v6;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416A8));
  v18 = v7;
  v19 = 0;
  v9 = sub_1A8BDDE34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3416B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8BF9320;
  sub_1A8BDDF14();
  sub_1A8BDDF24();
  v17 = v10;
  sub_1A8BC11F8(&qword_1EB33D198, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416C0);
  sub_1A8BC1240();
  sub_1A8BDE2C4();
  sub_1A8BDDE14();
  result = [v9 view];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor_];

    *&v2[OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController] = v9;
    v16.receiver = v2;
    v16.super_class = ObjectType;
    v14 = v9;
    v15 = objc_msgSendSuper2(&v16, sel_init);
    IncomingCallTextViewAdapter.setupOrTeardownEmojiTextViewIfNecessary()();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall IncomingCallTextViewAdapter.setTextFontUsingDefaultFontSizes(newFont:)(UIFont newFont)
{
  isa = newFont.super.isa;
  v2 = sub_1A8BDDF84();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v71 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator;
  v73 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  memcpy(v120, v121, 0x12BuLL);
  memcpy(v121, v120, 0x12BuLL);
  v5 = sub_1A8BAECD4(v121);
  v6 = sub_1A8AAD988(v121);
  v7 = v6;
  v70 = v4;
  if (v5 == 1)
  {
    if (*(v6 + 297))
    {
      v8 = (v6 + 152);
      sub_1A8BAF018(v6 + 152, v110);
      v69 = 200;
      v68 = 208;
      v67 = 216;
      v66 = 224;
      v65 = 232;
      v64 = 240;
      v63 = 272;
      v62 = 264;
      v61 = 256;
      v60 = 248;
      v59 = 280;
      v9 = 36;
      v10 = 37;
      v58 = 160;
      v11 = 21;
      v12 = 22;
      v13 = 23;
      v14 = 24;
    }

    else
    {
      sub_1A8BAF018(v6, v110);
      v69 = 48;
      v68 = 56;
      v67 = 64;
      v66 = 72;
      v65 = 80;
      v64 = 88;
      v63 = 120;
      v62 = 112;
      v61 = 104;
      v60 = 96;
      v59 = 128;
      v9 = 17;
      v10 = 18;
      v58 = 8;
      v11 = 2;
      v12 = 3;
      v13 = 4;
      v14 = 5;
      v8 = v7;
    }

    sub_1A8BAECE0(v120);
    v16 = v68;
    v15 = v69;
    v18 = v66;
    v17 = v67;
    v20 = v64;
    v19 = v65;
    v22 = v62;
    v21 = v63;
    v24 = v60;
    v23 = v61;
    v26 = v58;
    v25 = v59;
  }

  else
  {
    v15 = 48;
    v16 = 56;
    v17 = 64;
    v18 = 72;
    v19 = 80;
    v20 = 88;
    v21 = 120;
    v22 = 112;
    v23 = 104;
    v24 = 96;
    v25 = 128;
    v9 = 17;
    v10 = 18;
    v26 = 8;
    v11 = 2;
    v12 = 3;
    v13 = 4;
    v14 = 5;
    v8 = v7;
  }

  v27 = v7[v10];
  v28 = v7[v9];
  v29 = *(v7 + v25);
  v30 = *(v7 + v21);
  v31 = *(v7 + v22);
  v32 = *(v7 + v23);
  v33 = *(v7 + v24);
  v34 = *(v7 + v20);
  v35 = *(v7 + v19);
  v36 = *(v7 + v18);
  v37 = *(v7 + v17);
  v38 = *(v7 + v16);
  v39 = *(v7 + v15);
  v40 = v7[v14];
  v41 = v7[v13];
  v42 = v7[v12];
  v43 = v7[v11];
  v44 = *(v7 + v26);
  v94[0] = *v8;
  v94[1] = v44;
  v94[2] = v43;
  v94[3] = v42;
  v95 = v41;
  v96 = v40;
  v97 = v39;
  v98 = v38;
  v99 = v37;
  v100 = v36;
  v101 = v35;
  v102 = v34;
  v103 = v33;
  v104 = v32;
  v105 = v31;
  v106 = v30;
  v107 = v29;
  v108 = v28;
  v109 = v27;

  sub_1A8BC07E4(v94);
  v45 = sub_1A8BDE104();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v46 = v110[0];
  v47 = v110[1];
  v91 = v117;
  v92 = v118;
  v93 = v119;
  v87 = v113;
  v88 = v114;
  v89 = v115;
  v90 = v116;
  v85 = v111;
  v86 = v112;
  if (sub_1A8AADFA8(v110) == 1)
  {
    v74 = v46;
    v75 = v47;
    v82 = v91;
    v83 = v92;
    v84 = v93;
    v78 = v87;
    v79 = v88;
    v81 = v90;
    v80 = v89;
    v77 = v86;
    v76 = v85;
    sub_1A8BAF4B8(&v74, &qword_1EB341178);
    v48 = 0;
  }

  else
  {
    v74 = v46;
    v75 = v47;
    v82 = v91;
    v83 = v92;
    v84 = v93;
    v78 = v87;
    v79 = v88;
    v81 = v90;
    v80 = v89;
    v77 = v86;
    v76 = v85;

    sub_1A8BAF4B8(&v74, &qword_1EB341178);
    v48 = sub_1A8BDE104();
  }

  v49 = objc_opt_self();

  v50 = v71;
  sub_1A8BC25F4(v71);

  [v49 idealEmphasizedFontSizeForName:v45 status:v48 usingLayout:sub_1A8BC0DC8(v50)];
  v52 = v51;

  v53 = isa;
  CopyWithAttributes = CTFontCreateCopyWithAttributes(isa, v52, 0, 0);
  IncomingCallTextViewAdapter.emphasizedNameFont.setter(CopyWithAttributes);
  [v49 defaultSecondaryNameFontSize];
  v56 = CTFontCreateCopyWithAttributes(v53, v55, 0, 0);
  IncomingCallTextViewAdapter.secondaryNameFont.setter(v56);
  IncomingCallTextViewAdapter.statusFont.setter([v49 defaultStatusFont]);
}

Swift::Void __swiftcall IncomingCallTextViewAdapter.transitionCallToActiveState(animated:)(Swift::Bool animated)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  if ((v1 & 1) == 0)
  {
    sub_1A8BC2E3C(1);
  }
}

uint64_t sub_1A8BBF830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v54 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB341688);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v48 = &v41 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v43 = &v41 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = sub_1A8BDDF84();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v42 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  sub_1A8BB8A4C(v54);
  v50 = v6;
  v51 = a2;
  v47 = OBJC_IVAR___PRIncomingCallTextViewAdapter_coordinator;
  swift_getKeyPath();
  v52 = a3;
  swift_getKeyPath();

  sub_1A8BDDC74();

  v29 = v24[2];
  v53 = v28;
  v45 = v29;
  v46 = v24 + 2;
  v29(v20, v28, v23);
  v44 = v24[7];
  v44(v20, 0, 1, v23);
  v30 = *(v8 + 56);
  sub_1A8BAF440(v22, v10, &qword_1EB341680);
  sub_1A8BAF440(v20, &v10[v30], &qword_1EB341680);
  v54 = v24;
  v31 = v24[6];
  if (v31(v10, 1, v23) == 1)
  {
    sub_1A8BAF4B8(v20, &qword_1EB341680);
    sub_1A8BAF4B8(v22, &qword_1EB341680);
    if (v31(&v10[v30], 1, v23) == 1)
    {
      sub_1A8BAF4B8(v10, &qword_1EB341680);
      return (v54[1])(v53, v23);
    }

    goto LABEL_6;
  }

  v41 = v22;
  v33 = v43;
  sub_1A8BAF440(v10, v43, &qword_1EB341680);
  if (v31(&v10[v30], 1, v23) == 1)
  {
    sub_1A8BAF4B8(v20, &qword_1EB341680);
    sub_1A8BAF4B8(v41, &qword_1EB341680);
    (v54[1])(v33, v23);
LABEL_6:
    sub_1A8BAF4B8(v10, &unk_1EB341688);
LABEL_7:
    v34 = v48;
    v35 = v53;
    v45(v48, v53, v23);
    v44(v34, 0, 1, v23);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BAF440(v34, v49, &qword_1EB341680);

    sub_1A8BDDC84();
    sub_1A8BAF4B8(v34, &qword_1EB341680);
    return (v54[1])(v35, v23);
  }

  v36 = v54;
  v37 = v42;
  (v54[4])(v42, &v10[v30], v23);
  sub_1A8BC11F8(&qword_1EB33D190, MEMORY[0x1E6980F88]);
  v38 = v33;
  v39 = sub_1A8BDE0F4();
  v40 = *(v36 + 8);
  v40(v37, v23);
  sub_1A8BAF4B8(v20, &qword_1EB341680);
  sub_1A8BAF4B8(v41, &qword_1EB341680);
  v40(v38, v23);
  sub_1A8BAF4B8(v10, &qword_1EB341680);
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

  return (v40)(v53, v23);
}

Swift::Void __swiftcall IncomingCallTextViewAdapter.removeTitleLayoutOverride()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v9 = sub_1A8BDDF84();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  sub_1A8BAF4B8(v8, &qword_1EB341680);
  if (v11 != 1)
  {
    (*(v10 + 56))(v6, 1, 1, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BAF440(v6, v3, &qword_1EB341680);

    sub_1A8BDDC84();
    sub_1A8BAF4B8(v6, &qword_1EB341680);
  }
}

CGSize __swiftcall IncomingCallTextViewAdapter.sizeThatFits(in:)(CGSize in)
{
  v2 = *(v1 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController);
  sub_1A8BDDE04();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

id IncomingCallTextViewAdapter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall IncomingCallTextViewAdapter.posterAppearanceDidChange(_:)(PRPosterAppearance *a1)
{
  v2 = [(PRPosterAppearance *)a1 font];
  IncomingCallTextViewAdapter.setTextFontUsingDefaultFontSizes(newFont:)(v2);

  v3 = [(PRPosterAppearance *)a1 labelColor];
  v4 = [(PRPosterColor *)v3 color];

  if (v4)
  {
    IncomingCallTextViewAdapter.textColor.setter(v4);
  }

  IncomingCallTextViewAdapter.preferredAlignment.setter([(PRPosterAppearance *)a1 preferredTitleAlignment]);
  v5 = [(PRPosterAppearance *)a1 preferredTitleLayout];

  IncomingCallTextViewAdapter.preferredLayout.setter(v5);
}

void sub_1A8BC042C()
{
  v1 = [*(v0 + OBJC_IVAR___PRIncomingCallTextViewAdapter_hostingController) view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A8BC04B4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(__dst, v3, sizeof(__dst));
  return memcpy(a1, __dst, 0x12BuLL);
}

uint64_t sub_1A8BC0554(void *__src)
{
  memcpy(__dst, __src, 0x12BuLL);
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy(v4, __src, sizeof(v4));

  sub_1A8BC12E0(__dst, &v3);
  return sub_1A8BDDC84();
}

double sub_1A8BC05FC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1A8BC06EC(__int128 *a1)
{
  v2 = a1[7];
  v22[6] = a1[6];
  v22[7] = v2;
  v22[8] = a1[8];
  v23 = *(a1 + 144);
  v3 = a1[3];
  v22[2] = a1[2];
  v22[3] = v3;
  v4 = a1[5];
  v22[4] = a1[4];
  v22[5] = v4;
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[7];
  v18 = a1[6];
  v19 = v6;
  v20 = a1[8];
  v21 = *(a1 + 144);
  v7 = a1[3];
  v14 = a1[2];
  v15 = v7;
  v8 = a1[5];
  v16 = a1[4];
  v17 = v8;
  v9 = a1[1];
  v12 = *a1;
  v13 = v9;

  sub_1A8BAF440(v22, v11, &qword_1EB341178);
  return sub_1A8BDDC84();
}

uint64_t sub_1A8BC0838@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  *a1 = v3;
  return result;
}

uint64_t sub_1A8BC08B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A8BDDC84();
}

uint64_t sub_1A8BC0990()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();
}

uint64_t sub_1A8BC0A1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680);
  v2 = (MEMORY[0x1EEE9AC00])();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1A8BAF440(a1, &v8 - v5, &qword_1EB341680);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BAF440(v6, v4, &qword_1EB341680);

  sub_1A8BDDC84();
  return sub_1A8BAF4B8(v6, &qword_1EB341680);
}

uint64_t sub_1A8BC0B60@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  *a1 = v3;
  return result;
}

uint64_t sub_1A8BC0BF0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A8BDDC84();
}

uint64_t sub_1A8BC0C60@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A8BC0CE8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A8BDDC84();
}

uint64_t sub_1A8BC0DC8(char *a1)
{
  v2 = sub_1A8BDDF84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  (*(v3 + 16))(&v17 - v7, a1, v2);
  sub_1A8BDDF64();
  sub_1A8BC11F8(&qword_1EB33D190, MEMORY[0x1E6980F88]);
  v9 = sub_1A8BDE0F4();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(a1, v2);
    v10(v8, v2);
    return 0;
  }

  else
  {
    sub_1A8BDDF54();
    v12 = sub_1A8BDE0F4();
    v10(v6, v2);
    v10(v8, v2);
    if ((v12 & 1) == 0)
    {
      if (qword_1EB33D260 != -1)
      {
        swift_once();
      }

      v13 = sub_1A8BDDC24();
      __swift_project_value_buffer(v13, qword_1EB342AA0);
      v14 = sub_1A8BDDC14();
      v15 = sub_1A8BDE1E4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1A8AA7000, v14, v15, "Unrecognized Text.WritingMode; fallback to horizontal.", v16, 2u);
        MEMORY[0x1AC575150](v16, -1, -1);
      }
    }

    v10(a1, v2);
    return 1;
  }
}

unint64_t sub_1A8BC1080(unint64_t result)
{
  if (result >= 2)
  {
    if (qword_1EB33D260 != -1)
    {
      swift_once();
    }

    v1 = sub_1A8BDDC24();
    __swift_project_value_buffer(v1, qword_1EB342AA0);
    v2 = sub_1A8BDDC14();
    v3 = sub_1A8BDE1E4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A8AA7000, v2, v3, "Unrecognized PRPosterTitleAlignment; fallback to center.", v4, 2u);
      MEMORY[0x1AC575150](v4, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A8BC116C(uint64_t result)
{
  v1 = *(result + 144) & 1;
  v2 = *(result + 184) & 1;
  v3 = (*(result + 296) | (*(result + 298) << 16)) & 0x1010101;
  *(result + 32) &= 1uLL;
  *(result + 144) = v1;
  *(result + 184) = v2;
  *(result + 296) = v3;
  *(result + 298) = (v3 | 0x800000u) >> 16;
  return result;
}

uint64_t sub_1A8BC11B4(uint64_t result)
{
  v1 = *(result + 144) & 1;
  v2 = *(result + 184) & 1;
  v3 = (*(result + 296) | (*(result + 298) << 16)) & 0x1010101;
  *(result + 32) &= 1uLL;
  *(result + 144) = v1;
  *(result + 184) = v2;
  *(result + 296) = v3;
  *(result + 298) = BYTE2(v3);
  return result;
}

uint64_t sub_1A8BC11F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A8BC1240()
{
  result = qword_1EB33D028;
  if (!qword_1EB33D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3416C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D028);
  }

  return result;
}

double sub_1A8BC1340@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*sub_1A8BC142C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A8BDDC64();
  return sub_1A8BC14D0;
}

void sub_1A8BC14D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1A8BC1540()
{
  sub_1A8BDE3D4();
  MEMORY[0x1AC573BF0](0);
  return sub_1A8BDE404();
}

uint64_t sub_1A8BC15AC()
{
  sub_1A8BDE3D4();
  MEMORY[0x1AC573BF0](0);
  return sub_1A8BDE404();
}

void *sub_1A8BC1614@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(a1, __dst, 0x12BuLL);
}

uint64_t sub_1A8BC16A8(void *__src)
{
  v2 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *(v1 + OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator_contact);
  if (!v3)
  {
    goto LABEL_16;
  }

  memcpy(v146, v2, 0x12BuLL);
  if (sub_1A8BAECD4(v146) == 1)
  {
    v4 = sub_1A8AAD988(v146);
    memcpy(__srca, v4, 0x12BuLL);
    if (BYTE10(__srca[18]))
    {
      v5 = BYTE8(__srca[11]);
      v6 = *&__srca[11];
      v7 = *(&__srca[9] + 1);
      v8 = BYTE8(__srca[18]);
      v9 = *&__srca[18];
      v10 = *(&__srca[17] + 1);
      v94 = *(&__srca[16] + 8);
      v97 = __srca[10];
      v88 = *(&__srca[14] + 8);
      v91 = *(&__srca[15] + 8);
      v11 = *&__srca[12];
      v82 = *(&__srca[12] + 8);
      v85 = *(&__srca[13] + 8);
      v12 = &__srca[9] + 8;
    }

    else
    {
      v5 = __srca[2];
      v6 = *(&__srca[1] + 1);
      v7 = *&__srca[0];
      v8 = __srca[9];
      v9 = *(&__srca[8] + 1);
      v10 = *&__srca[8];
      v94 = __srca[7];
      v97 = *(__srca + 8);
      v88 = __srca[5];
      v91 = __srca[6];
      v11 = *(&__srca[2] + 1);
      v82 = __srca[3];
      v85 = __srca[4];
      v12 = __srca;
    }

    sub_1A8BAF018(v12, v144);
  }

  else
  {
    v13 = sub_1A8AAD988(v146);
    v7 = *v13;
    v6 = *(v13 + 24);
    v11 = *(v13 + 40);
    v82 = *(v13 + 48);
    v85 = *(v13 + 64);
    v94 = *(v13 + 112);
    v97 = *(v13 + 8);
    v88 = *(v13 + 80);
    v91 = *(v13 + 96);
    v10 = *(v13 + 128);
    v9 = *(v13 + 136);
    v5 = *(v13 + 32);
    v8 = *(v13 + 144);
    memcpy(__srca, __dst, 0x12BuLL);
    v14 = sub_1A8AAD988(__srca);
    sub_1A8BAF440(v14, v144, &unk_1EB341698);
  }

  v129 = v7;
  v130 = v97;
  v131 = v6;
  v132 = v5 & 1;
  v133 = v11;
  v134 = v82;
  v135 = v85;
  v138 = v94;
  v136 = v88;
  v137 = v91;
  v139 = v10;
  v140 = v9;
  v141 = v8 & 1;
  v95 = v6;
  v98 = v3;
  sub_1A8BC07E4(&v129);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v142, __srca, 0x12BuLL);
  memcpy(v143, v142, 0x12BuLL);
  v15 = sub_1A8BAECD4(v143);
  v16 = sub_1A8AAD988(v143);
  v17 = v16;
  v99 = v2;
  if (v15 == 1)
  {
    if (*(v16 + 298))
    {
      v18 = (v16 + 152);
      sub_1A8BAF018(v16 + 152, __srca);
      v92 = 200;
      v89 = 208;
      v86 = 216;
      v83 = 224;
      v81 = 232;
      v80 = 240;
      v79 = 272;
      v78 = 264;
      v77 = 256;
      v76 = 248;
      v19 = 35;
      v20 = 36;
      v21 = 37;
      v22 = 20;
      v23 = 21;
      v24 = 22;
      v25 = 23;
      v26 = 24;
    }

    else
    {
      sub_1A8BAF018(v16, __srca);
      v92 = 48;
      v89 = 56;
      v86 = 64;
      v83 = 72;
      v81 = 80;
      v80 = 88;
      v79 = 120;
      v78 = 112;
      v77 = 104;
      v76 = 96;
      v19 = 16;
      v20 = 17;
      v21 = 18;
      v22 = 1;
      v23 = 2;
      v24 = 3;
      v25 = 4;
      v26 = 5;
      v18 = v17;
    }

    sub_1A8BAECE0(v142);
    v27 = v92;
    v28 = v89;
    v29 = v86;
    v31 = v81;
    v30 = v83;
    v33 = v79;
    v32 = v80;
    v35 = v77;
    v34 = v78;
    v36 = v76;
  }

  else
  {
    v27 = 48;
    v28 = 56;
    v29 = 64;
    v30 = 72;
    v31 = 80;
    v32 = 88;
    v33 = 120;
    v34 = 112;
    v35 = 104;
    v36 = 96;
    v19 = 16;
    v20 = 17;
    v21 = 18;
    v22 = 1;
    v23 = 2;
    v24 = 3;
    v25 = 4;
    v26 = 5;
    v18 = v17;
  }

  v37 = v17[v21];
  v38 = v17[v20];
  v39 = v17[v19];
  v40 = *(v17 + v33);
  v41 = *(v17 + v34);
  v42 = *(v17 + v35);
  v43 = *(v17 + v36);
  v44 = *(v17 + v32);
  v45 = *(v17 + v31);
  v46 = *(v17 + v30);
  v47 = *(v17 + v29);
  v48 = *(v17 + v28);
  v49 = *(v17 + v27);
  v50 = v17[v26];
  v51 = v17[v25];
  v52 = v17[v24];
  v53 = v17[v23];
  v54 = v17[v22];
  v113[0] = *v18;
  v113[1] = v54;
  v113[2] = v53;
  v113[3] = v52;
  v114 = v51;
  v115 = v50;
  v116 = v49;
  v117 = v48;
  v118 = v47;
  v119 = v46;
  v120 = v45;
  v121 = v44;
  v122 = v43;
  v123 = v42;
  v124 = v41;
  v125 = v40;
  v126 = v39;
  v127 = v38;
  v128 = v37;
  v55 = v52;
  sub_1A8BC07E4(v113);
  sub_1A8BC476C();
  v56 = sub_1A8BDE264();

  if (v56)
  {

    v2 = v99;
LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    memcpy(__srca, v2, 0x12BuLL);

    return sub_1A8BDDC84();
  }

  memcpy(__srca, v99, 0x12BuLL);
  if (sub_1A8BAECD4(__srca) == 1)
  {
    sub_1A8AAD988(__srca);
    memcpy(v144, __dst, 0x12BuLL);
    v58 = sub_1A8AAD988(v144);
    v59 = *(v58 + 16);
    if (*(v58 + 298))
    {
      v61 = v58 + 152;
      v60 = *(v58 + 152);
      v62 = *(v58 + 184);
      v64 = *(v58 + 168);
      v63 = *(v58 + 176);
      v65 = *(v58 + 160);
      v66 = *(v58 + 296);
      v68 = *(v58 + 280);
      v67 = *(v58 + 288);
      v93 = *(v58 + 264);
      v96 = *(v58 + 248);
      v87 = *(v58 + 216);
      v90 = *(v58 + 232);
      v69 = *(v58 + 192);
      v84 = *(v58 + 200);
      v70 = v59;
      sub_1A8BAF018(v61, v101);
    }

    else
    {
      v62 = *(v58 + 32);
      v63 = *(v58 + 24);
      v60 = *v58;
      v65 = *(v58 + 8);
      v66 = *(v58 + 144);
      v68 = *(v58 + 128);
      v67 = *(v58 + 136);
      v93 = *(v58 + 112);
      v96 = *(v58 + 96);
      v87 = *(v58 + 64);
      v90 = *(v58 + 80);
      v69 = *(v58 + 40);
      v84 = *(v58 + 48);
      v73 = v58;
      v64 = v59;
      sub_1A8BAF018(v73, v101);
      v70 = v64;
    }
  }

  else
  {
    v71 = *(sub_1A8AAD988(__srca) + 16);
    memcpy(v144, __dst, 0x12BuLL);
    v72 = sub_1A8AAD988(v144);
    v62 = *(v72 + 32);
    v64 = *(v72 + 16);
    v63 = *(v72 + 24);
    v60 = *v72;
    v65 = *(v72 + 8);
    v66 = *(v72 + 144);
    v68 = *(v72 + 128);
    v67 = *(v72 + 136);
    v93 = *(v72 + 112);
    v96 = *(v72 + 96);
    v87 = *(v72 + 64);
    v90 = *(v72 + 80);
    v69 = *(v72 + 40);
    v84 = *(v72 + 48);
    sub_1A8BC12E0(v99, v101);
    v70 = v71;
  }

  v102[0] = v60;
  v102[1] = v65;
  v102[2] = v64;
  v102[3] = v63;
  v103 = v62;
  v104 = v69;
  v105 = v84;
  v106 = v87;
  v107 = v90;
  v108 = v96;
  v109 = v93;
  v110 = v68;
  v111 = v67;
  v112 = v66;
  v74 = v63;
  sub_1A8BC07E4(v102);
  v75 = v98;
  sub_1A8BC6F3C(v75, v70, v74, v144);
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy(v101, v144, 0x12BuLL);

  sub_1A8BC12E0(v144, v100);
  sub_1A8BDDC84();

  sub_1A8BAECE0(v144);
  return sub_1A8BAECE0(v99);
}

void (*sub_1A8BC1E38(uint64_t *a1))(void **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x5F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 1520) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy((v5 + 608), (v5 + 912), 0x12BuLL);
  return sub_1A8BC1F08;
}

void sub_1A8BC1F08(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    memcpy(*a1, v2 + 608, 0x12BuLL);
    sub_1A8BC12E0(v2, (v2 + 1216));
    sub_1A8BC16A8(v2);
    memcpy(v2 + 912, v2 + 608, 0x12BuLL);
    sub_1A8BAECE0((v2 + 912));
  }

  else
  {
    memcpy(v2 + 304, v2 + 608, 0x12BuLL);
    sub_1A8BC16A8(v2 + 304);
  }

  free(v2);
}

uint64_t sub_1A8BC1FA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  return v1;
}

uint64_t sub_1A8BC203C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();
}

uint64_t sub_1A8BC20AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  return v1;
}

uint64_t sub_1A8BC2148()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  return v1;
}

uint64_t sub_1A8BC21B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  return v1;
}

uint64_t sub_1A8BC222C()
{
  v0 = sub_1A8BDDF84();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = &_s11SpringBoardON;
  v32[4] = sub_1A8BC47B8();
  v4 = sub_1A8BDDBF4();
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v31, v30, 0x12BuLL);
  memcpy(v32, v31, 0x12BuLL);
  v5 = sub_1A8BAECD4(v32);
  v6 = sub_1A8AAD988(v32);
  v7 = sub_1A8BDE104();
  IsSuitableForArabicJustification = CTStringIsSuitableForArabicJustification();

  if (v5 == 1)
  {
    if (IsSuitableForArabicJustification)
    {
      [objc_opt_self() maximumHorizontalTextBounds];
      Width = CGRectGetWidth(v39);
      v10 = *(v6 + 104);
      v30[3] = *(v6 + 88);
      v30[4] = v10;
      v30[5] = *(v6 + 120);
      *(&v30[5] + 9) = *(v6 + 129);
      v11 = *(v6 + 56);
      v30[0] = *(v6 + 40);
      v30[1] = v11;
      v30[2] = *(v6 + 72);
      sub_1A8BDDF64();
      sub_1A8BB011C(v3, 1.0);
      v13 = v12;
      (*(v1 + 8))(v3, v0);
      if (v13 < Width)
      {
        sub_1A8BAECE0(v31);
        v14 = 1;
        goto LABEL_12;
      }
    }

    v19 = sub_1A8BDE104();
    v20 = CTStringIsSuitableForArabicJustification();

    if (v20)
    {
      [objc_opt_self() maximumHorizontalTextBounds];
      v15 = CGRectGetWidth(v41);
      v21 = v6[16];
      v22 = v6[17];
      v23 = v6[14];
      v36 = v6[15];
      v37 = v21;
      v38[0] = v22;
      *(v38 + 9) = *(v6 + 281);
      v24 = v6[13];
      v33 = v6[12];
      v34 = v24;
      v35 = v23;
      sub_1A8BDDF64();
      v18 = 1.0;
      goto LABEL_10;
    }
  }

  else if (IsSuitableForArabicJustification)
  {
    [objc_opt_self() maximumHorizontalTextBounds];
    v15 = CGRectGetWidth(v40);
    v16 = *(v6 + 104);
    v30[3] = *(v6 + 88);
    v30[4] = v16;
    v30[5] = *(v6 + 120);
    *(&v30[5] + 9) = *(v6 + 129);
    v17 = *(v6 + 56);
    v30[0] = *(v6 + 40);
    v30[1] = v17;
    v30[2] = *(v6 + 72);
    sub_1A8BDDF64();
    v18 = 1.0;
LABEL_10:
    sub_1A8BB011C(v3, v18);
    v26 = v25;
    sub_1A8BAECE0(v31);
    (*(v1 + 8))(v3, v0);
    v14 = v26 < v15;
    goto LABEL_12;
  }

  sub_1A8BAECE0(v31);
  v14 = 0;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  if (v29 == 2)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else if ((v14 & v29 & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1A8BC25F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A8BDDF84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v25 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) != 1)
  {
    return (*(v4 + 32))(a1, v12, v3);
  }

  sub_1A8BAF4B8(v12, &qword_1EB341680);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  memcpy(v29, v28, 0x12BuLL);
  memcpy(v30, v29, 0x12BuLL);
  v14 = sub_1A8BAECD4(v30);
  sub_1A8AAD988(v30);
  if (v14 == 1)
  {
    sub_1A8BAECE0(v29);
    return sub_1A8BDDF64();
  }

  v24[0] = v1;
  v24[1] = a1;
  v16 = sub_1A8BDE104();
  IsSuitableForVerticalLayout = CTStringIsSuitableForVerticalLayout();

  if (IsSuitableForVerticalLayout)
  {
    v18 = sub_1A8BDE154();
    v19 = [objc_opt_self() maximumVerticalTextLength] >= v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  if (v13(v20, 1, v3) != 1)
  {
    v21 = v26;
    (*(v4 + 32))(v26, v20, v3);
    if (v19)
    {
      v22 = v25;
      (*(v4 + 16))(v25, v21, v3);
      v23 = sub_1A8BC0DC8(v22);
      LODWORD(v22) = PRPosterTitleLayoutIsVertical(v23);
      (*(v4 + 8))(v21, v3);
      if (v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v4 + 8))(v21, v3);
    }

LABEL_15:
    sub_1A8BDDF64();
    return sub_1A8BAECE0(v29);
  }

  sub_1A8BAF4B8(v20, &qword_1EB341680);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_1A8BDDF54();
  return sub_1A8BAECE0(v29);
}

uint64_t sub_1A8BC2A28(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1A8BA6348(__src);
    swift_getKeyPath();
    swift_getKeyPath();
    __dst[6] = __src[6];
    __dst[7] = __src[7];
    __dst[8] = __src[8];
    LOBYTE(__dst[9]) = __src[9];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    __dst[0] = __src[0];
    __dst[1] = __src[1];

    return sub_1A8BDDC84();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A8BDDC74();

  v16[6] = __src[6];
  v16[7] = __src[7];
  v16[8] = __src[8];
  v17 = __src[9];
  v16[2] = __src[2];
  v16[3] = __src[3];
  v16[4] = __src[4];
  v16[5] = __src[5];
  v16[0] = __src[0];
  v16[1] = __src[1];
  v18[6] = __src[6];
  v18[7] = __src[7];
  v18[8] = __src[8];
  v19 = __src[9];
  v18[2] = __src[2];
  v18[3] = __src[3];
  v18[4] = __src[4];
  v18[5] = __src[5];
  v18[0] = __src[0];
  v18[1] = __src[1];
  if (sub_1A8AADFA8(v18) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    memcpy(__dst, __src, 0x12BuLL);
    memcpy(__src, __dst, 0x12BuLL);
    if (sub_1A8BAECD4(__src) == 1)
    {
      sub_1A8AAD988(__src);
      memcpy(v13, __dst, 0x12BuLL);
      v4 = v13;
    }

    else
    {
      v4 = __src;
    }

    v8 = *(sub_1A8AAD988(v4) + 16);
    sub_1A8BAECE0(__dst);
    v9 = [objc_opt_self() defaultStatusFont];

    v10 = v9;
    sub_1A8BB0BC8(a1, a2, v10, v20);
    *&v12[23] = v20[1];
    *&v12[7] = v20[0];
    *&v12[71] = v20[4];
    *&v12[55] = v20[3];
    *&v12[87] = v21[0];
    *&v12[39] = v20[2];
    *(&v13[5] + 1) = *&v12[48];
    *(&v13[6] + 1) = *&v12[64];
    *(&v13[7] + 1) = *&v12[80];
    *(&v13[8] + 1) = *(v21 + 9);
    *(&v13[2] + 1) = *v12;
    *(&v13[3] + 1) = *&v12[16];
    *&v13[0] = a1;
    *(&v13[0] + 1) = a2;
    *&v13[1] = v8;
    *(&v13[1] + 1) = v10;
    LOBYTE(v13[2]) = 0;
    *(&v13[4] + 1) = *&v12[32];
    nullsub_1(v13);
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1A8BDDC84();
  }

  sub_1A8BAF4B8(v16, &qword_1EB341178);
  v5 = sub_1A8BC142C(v13);
  v7 = v6;
  memmove(__src, v6, 0x91uLL);
  if (sub_1A8AADFA8(__src) == 1)
  {
  }

  else
  {
    *v7 = a1;
    *(v7 + 1) = a2;

    sub_1A8BB0BC8(a1, a2, *(v7 + 3), __dst);
    sub_1A8BC0D6C(__dst, v7 + 40);
  }

  return (v5)(v13, 0);
}

uint64_t sub_1A8BC2E3C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A8BDDC74();

  if (v5 != (a1 & 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1A8BDDC84();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A8BDDC74();

    if (v4 == 1)
    {
      MEMORY[0x1EEE9AC00](v3);
      sub_1A8BDE0B4();
      sub_1A8BDDD24();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_1A8BDDC84();
    }
  }

  return result;
}

uint64_t sub_1A8BC3020()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A8BDDC84();
}

uint64_t sub_1A8BC30A0()
{
  v1 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__status;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator___nameStyle;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__preferredTextAlignment;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416E8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__preferredWritingMode;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416F0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__overrideWritingMode, v8);
  v10 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__callState;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416F8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__animationsEnabled;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341700);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__marqueeRunning, v13);
  v15 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__maximumTextWidth;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341708);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);

  return v0;
}

uint64_t sub_1A8BC3334()
{
  sub_1A8BC30A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _s11CoordinatorCMa()
{
  result = qword_1EB33D0E0;
  if (!qword_1EB33D0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8BC33E0()
{
  sub_1A8BC36B8(319, &qword_1EB33D240, &qword_1EB341178);
  if (v0 <= 0x3F)
  {
    sub_1A8BC366C(319, &qword_1EB33D230);
    if (v1 <= 0x3F)
    {
      sub_1A8BC36B8(319, &qword_1EB33D238, &qword_1EB3416C8);
      if (v2 <= 0x3F)
      {
        sub_1A8BC36B8(319, &unk_1EB33D250, &qword_1EB341680);
        if (v3 <= 0x3F)
        {
          sub_1A8BC366C(319, &qword_1EB33D248);
          if (v4 <= 0x3F)
          {
            sub_1A8BC366C(319, &qword_1EB33D228);
            if (v5 <= 0x3F)
            {
              sub_1A8BC36B8(319, &qword_1EB33CFD0, &qword_1EB3416D0);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A8BC366C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A8BDDC94();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A8BC36B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1A8BDDC94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A8BC3718@<X0>(uint64_t *a1@<X8>)
{
  _s11CoordinatorCMa();
  result = sub_1A8BDDC44();
  *a1 = result;
  return result;
}

uint64_t sub_1A8BC3778(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v49 = a5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v40 - v15;
  v16 = sub_1A8BDE104();
  if (a4)
  {

    v17 = sub_1A8BDE104();
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_opt_self();
  [v18 idealEmphasizedFontSizeForName:v16 status:v17 usingLayout:0];
  v20 = v19;

  v21 = [v18 defaultNameFont];
  v22 = [v21 fontWithSize_];

  v23 = objc_opt_self();
  v24 = [v23 labelColor];
  v25 = v22;

  v46 = v25;
  sub_1A8BB0BC8(a1, a2, v25, v60);
  *(&v57[1] + 7) = v60[1];
  *(v57 + 7) = v60[0];
  *(&v57[4] + 7) = v60[4];
  *(&v57[3] + 7) = v60[3];
  *(&v57[5] + 7) = v61[0];
  v57[6] = *(v61 + 9);
  *(&v57[2] + 7) = v60[2];
  *&v56[49] = v57[3];
  *&v56[65] = v57[4];
  *&v56[81] = v57[5];
  *&v56[97] = *(v61 + 9);
  *&v56[1] = v57[0];
  *&v56[17] = v57[1];
  *&v54 = a1;
  *(&v54 + 1) = a2;
  *&v55 = v24;
  *(&v55 + 1) = v25;
  v56[0] = 0;
  *&v56[33] = v57[2];
  sub_1A8BA61A4(a3, a4, [v23 secondaryLabelColor], objc_msgSend(v18, sel_defaultStatusFont), v62);
  v26 = sub_1A8BDDF84();
  v27 = *(*(v26 - 8) + 56);
  v28 = v50;
  v27(v50, 1, 1, v26);
  v57[6] = *&v56[64];
  v57[7] = *&v56[80];
  v57[8] = *&v56[96];
  LOBYTE(v57[9]) = v56[112];
  v57[2] = *v56;
  v57[3] = *&v56[16];
  v57[4] = *&v56[32];
  v57[5] = *&v56[48];
  v57[0] = v54;
  v57[1] = v55;
  sub_1A8BC11B4(v57);
  sub_1A8BAF440(v28, v51, &qword_1EB341680);
  _s11CoordinatorCMa();
  v29 = swift_allocObject();
  v40 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__status;
  sub_1A8BA6348(v58);
  v52[6] = v58[6];
  v52[7] = v58[7];
  v52[8] = v58[8];
  LOBYTE(v52[9]) = v59;
  v52[2] = v58[2];
  v52[3] = v58[3];
  v52[4] = v58[4];
  v52[5] = v58[5];
  v52[0] = v58[0];
  v52[1] = v58[1];
  sub_1A8BAF018(&v54, v53);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341178);
  sub_1A8BDDC54();
  v41 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__preferredTextAlignment;
  LOBYTE(v52[0]) = 2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416C8);
  sub_1A8BDDC54();
  v43 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__preferredWritingMode;
  v30 = v45;
  v27(v45, 1, 1, v26);
  v31 = v47;
  sub_1A8BAF440(v30, v47, &qword_1EB341680);
  sub_1A8BDDC54();
  sub_1A8BAF4B8(v30, &qword_1EB341680);
  v27(v30, 1, 1, v26);
  sub_1A8BAF440(v30, v31, &qword_1EB341680);
  sub_1A8BDDC54();
  sub_1A8BAF4B8(v30, &qword_1EB341680);
  LOBYTE(v52[0]) = 1;
  sub_1A8BDDC54();
  LOBYTE(v52[0]) = 1;
  sub_1A8BDDC54();
  *&v52[0] = 0;
  BYTE8(v52[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416D0);
  sub_1A8BDDC54();
  *(v29 + OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator_contact) = 0;
  swift_beginAccess();
  memcpy(v52, v57, 0x12BuLL);
  sub_1A8BAF018(&v54, v53);
  sub_1A8BDDC54();
  swift_endAccess();
  v32 = v40;
  swift_beginAccess();
  sub_1A8BAF440(v62, v52, &qword_1EB341178);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416D8);
  (*(*(v33 - 8) + 8))(v29 + v32, v33);
  v52[6] = v62[6];
  v52[7] = v62[7];
  v52[8] = v62[8];
  LOBYTE(v52[9]) = v63;
  v52[2] = v62[2];
  v52[3] = v62[3];
  v52[4] = v62[4];
  v52[5] = v62[5];
  v52[0] = v62[0];
  v52[1] = v62[1];
  sub_1A8BDDC54();
  swift_endAccess();
  v34 = v41;
  swift_beginAccess();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416E8);
  (*(*(v35 - 8) + 8))(v29 + v34, v35);
  v53[0] = 2;
  sub_1A8BDDC54();
  swift_endAccess();
  v36 = v51;
  sub_1A8BAF440(v51, v30, &qword_1EB341680);
  v37 = v43;
  swift_beginAccess();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416F0);
  (*(*(v38 - 8) + 8))(v29 + v37, v38);
  sub_1A8BAF440(v30, v31, &qword_1EB341680);
  sub_1A8BDDC54();
  sub_1A8BAF4B8(v30, &qword_1EB341680);
  swift_endAccess();
  swift_beginAccess();
  v53[0] = v49 & 1;
  sub_1A8BDDC54();
  swift_endAccess();
  sub_1A8BAF4B8(v62, &qword_1EB341178);
  sub_1A8BC07E4(&v54);
  sub_1A8BC07E4(&v54);

  sub_1A8BAF4B8(v36, &qword_1EB341680);
  sub_1A8BAF4B8(v50, &qword_1EB341680);
  return v29;
}

uint64_t sub_1A8BC4030(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v46 = a4;
  v45 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341680);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  v17 = objc_opt_self();
  sub_1A8BA61A4(a2, a3, v16, [v17 defaultStatusFont], v50);
  v18 = sub_1A8BDDF84();
  v19 = *(v18 - 8);
  v35 = *(v19 + 56);
  v36 = v19 + 56;
  v44 = v14;
  v35(v14, 1, 1, v18);
  v45 = v45;
  sub_1A8BC6F3C(v45, [v15 labelColor], objc_msgSend(v17, sel_defaultNameFont), v52);
  sub_1A8BAF440(v14, v47, &qword_1EB341680);
  _s11CoordinatorCMa();
  v20 = swift_allocObject();
  v37 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__status;
  sub_1A8BA6348(v53);
  v49[6] = v53[6];
  v49[7] = v53[7];
  v49[8] = v53[8];
  LOBYTE(v49[9]) = v54;
  v49[2] = v53[2];
  v49[3] = v53[3];
  v49[4] = v53[4];
  v49[5] = v53[5];
  v49[0] = v53[0];
  v49[1] = v53[1];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB341178);
  sub_1A8BDDC54();
  v38 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__preferredTextAlignment;
  LOBYTE(v49[0]) = 2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416C8);
  sub_1A8BDDC54();
  v41 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator__preferredWritingMode;
  v21 = v10;
  v22 = v10;
  v23 = v35;
  v35(v22, 1, 1, v18);
  v24 = v40;
  sub_1A8BAF440(v21, v40, &qword_1EB341680);
  sub_1A8BDDC54();
  sub_1A8BAF4B8(v21, &qword_1EB341680);
  v23(v21, 1, 1, v18);
  sub_1A8BAF440(v21, v24, &qword_1EB341680);
  sub_1A8BDDC54();
  sub_1A8BAF4B8(v21, &qword_1EB341680);
  LOBYTE(v49[0]) = 1;
  sub_1A8BDDC54();
  LOBYTE(v49[0]) = 1;
  sub_1A8BDDC54();
  *&v49[0] = 0;
  BYTE8(v49[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416D0);
  sub_1A8BDDC54();
  v25 = OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator_contact;
  *(v20 + OBJC_IVAR____TtCV9PosterKit20IncomingCallTextView11Coordinator_contact) = 0;
  swift_beginAccess();
  memcpy(v49, v52, 0x12BuLL);
  sub_1A8BC12E0(v52, v48);
  sub_1A8BDDC54();
  swift_endAccess();
  v26 = v37;
  swift_beginAccess();
  sub_1A8BAF440(v50, v49, &qword_1EB341178);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416D8);
  (*(*(v27 - 8) + 8))(v20 + v26, v27);
  v49[6] = v50[6];
  v49[7] = v50[7];
  v49[8] = v50[8];
  LOBYTE(v49[9]) = v51;
  v49[2] = v50[2];
  v49[3] = v50[3];
  v49[4] = v50[4];
  v49[5] = v50[5];
  v49[0] = v50[0];
  v49[1] = v50[1];
  sub_1A8BDDC54();
  swift_endAccess();
  v28 = v38;
  swift_beginAccess();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416E8);
  (*(*(v29 - 8) + 8))(v20 + v28, v29);
  v48[0] = 2;
  sub_1A8BDDC54();
  swift_endAccess();
  v30 = v47;
  sub_1A8BAF440(v47, v21, &qword_1EB341680);
  v31 = v41;
  swift_beginAccess();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3416F0);
  (*(*(v32 - 8) + 8))(v20 + v31, v32);
  sub_1A8BAF440(v21, v24, &qword_1EB341680);
  sub_1A8BDDC54();
  sub_1A8BAF4B8(v21, &qword_1EB341680);
  swift_endAccess();
  swift_beginAccess();
  v48[0] = v46 & 1;
  sub_1A8BDDC54();
  swift_endAccess();
  sub_1A8BAF4B8(v50, &qword_1EB341178);
  sub_1A8BAECE0(v52);
  sub_1A8BAF4B8(v30, &qword_1EB341680);
  sub_1A8BAF4B8(v44, &qword_1EB341680);
  *(v20 + v25) = v45;
  return v20;
}

unint64_t sub_1A8BC476C()
{
  result = qword_1EB33CFF0;
  if (!qword_1EB33CFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB33CFF0);
  }

  return result;
}

unint64_t sub_1A8BC47B8()
{
  result = qword_1EB33D0D8;
  if (!qword_1EB33D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB33D0D8);
  }

  return result;
}

uint64_t _s11SpringBoardOwet(unsigned int *a1, int a2)
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

_WORD *_s11SpringBoardOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1A8BC48F8()
{
  result = qword_1EB341710;
  if (!qword_1EB341710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB341710);
  }

  return result;
}

uint64_t sub_1A8BC4960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 299))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1A8BC49B0(uint64_t result, int a2, int a3)
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
    *(result + 298) = 0;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 299) = 1;
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
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * -a2;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 40) = 0u;
      result += 40;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 255) = 0;
      return result;
    }

    *(result + 299) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8BC4A90(uint64_t result, int a2)
{
  v2 = *(result + 144) & 1;
  v3 = *(result + 184) & 1;
  v4 = (*(result + 296) | (*(result + 298) << 16)) & 0x1010101;
  *(result + 32) &= 1uLL;
  *(result + 144) = v2;
  *(result + 184) = v3;
  *(result + 296) = v4;
  *(result + 298) = (v4 | (a2 << 23)) >> 16;
  return result;
}

void sub_1A8BC4AE8(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v96, v1, 0x12BuLL);
  if (sub_1A8BAECD4(v96) == 1)
  {
    sub_1A8AAD988(v96);
    sub_1A8BA6348(v75);
    v94 = v75[0];
    v3 = *&v75[1];
    v91 = *(&v75[5] + 8);
    v92 = *(&v75[6] + 8);
    v93[0] = *(&v75[7] + 8);
    *(v93 + 9) = *(&v75[8] + 1);
    v87 = *(&v75[1] + 8);
    v88 = *(&v75[2] + 8);
    v4 = *(&v75[3] + 8);
    v5 = *(&v75[4] + 8);
  }

  else
  {
    v6 = sub_1A8AAD988(v96);
    v7 = *(v6 + 16);
    __src[0] = *v6;
    __src[1] = v7;
    v8 = *(v6 + 80);
    v10 = *(v6 + 32);
    v9 = *(v6 + 48);
    __src[4] = *(v6 + 64);
    __src[5] = v8;
    __src[2] = v10;
    __src[3] = v9;
    v12 = *(v6 + 112);
    v11 = *(v6 + 128);
    v13 = *(v6 + 96);
    LOBYTE(__src[9]) = *(v6 + 144);
    __src[7] = v12;
    __src[8] = v11;
    __src[6] = v13;
    nullsub_1(__src);
    memcpy(v75, __dst, 0x12BuLL);
    v14 = sub_1A8AAD988(v75);
    sub_1A8BAF440(v14, v37, &unk_1EB341698);
    v94 = __src[0];
    v3 = *&__src[1];
    v91 = *(&__src[5] + 8);
    v92 = *(&__src[6] + 8);
    v93[0] = *(&__src[7] + 8);
    *(v93 + 9) = *(&__src[8] + 1);
    v87 = *(&__src[1] + 8);
    v88 = *(&__src[2] + 8);
    v4 = *(&__src[3] + 8);
    v5 = *(&__src[4] + 8);
  }

  v89 = v4;
  v90 = v5;
  v76 = v94;
  v82 = v91;
  v83 = v92;
  v84[0] = v93[0];
  *(v84 + 9) = *(v93 + 9);
  v78 = v87;
  v79 = v88;
  v80 = v4;
  v77 = v3;
  v81 = v5;
  if (sub_1A8AADFA8(&v76) == 1)
  {
    memcpy(v75, v1, 0x12BuLL);
    if (sub_1A8BAECD4(v75) == 1)
    {
      sub_1A8AAD988(v75);
    }

    else
    {
      sub_1A8AAD988(v75);
      v85 = v94;
      *&v86[72] = v91;
      *&v86[88] = v92;
      *&v86[104] = v93[0];
      *&v86[113] = *(v93 + 9);
      *&v86[8] = v87;
      *&v86[24] = v88;
      *&v86[40] = v89;
      *v86 = v3;
      *&v86[56] = v90;
      if (sub_1A8AADFA8(&v85) != 1)
      {
        memcpy(v37, v1, 0x12BuLL);
        v65 = v94;
        *&v66[72] = v91;
        *&v66[88] = v92;
        *&v66[104] = v93[0];
        *&v66[113] = *(v93 + 9);
        *&v66[8] = v87;
        *&v66[24] = v88;
        *&v66[40] = v89;
        *v66 = v3;
        *&v66[56] = v90;
        sub_1A8BAF018(&v65, __src);
        sub_1A8BAECE0(v37);
        __src[6] = *&v86[80];
        __src[7] = *&v86[96];
        __src[8] = *&v86[112];
        LOBYTE(__src[9]) = v86[128];
        __src[2] = *&v86[16];
        __src[3] = *&v86[32];
        __src[4] = *&v86[48];
        __src[5] = *&v86[64];
        __src[0] = v85;
        __src[1] = *v86;
        sub_1A8BC11B4(__src);
        memcpy(v1, __src, 0x12BuLL);
      }
    }

    __src[0] = v94;
    *(&__src[5] + 8) = v91;
    *(&__src[6] + 8) = v92;
    *(&__src[7] + 8) = v93[0];
    *(&__src[8] + 1) = *(v93 + 9);
    *(&__src[1] + 8) = v87;
    *(&__src[2] + 8) = v88;
    *(&__src[3] + 8) = v89;
    *&__src[1] = v3;
    *(&__src[4] + 8) = v90;
    v16 = __src;
    goto LABEL_12;
  }

  v15 = a1;

  v85 = v94;
  *&v86[72] = v91;
  *&v86[88] = v92;
  *&v86[104] = v93[0];
  *&v86[113] = *(v93 + 9);
  *&v86[8] = v87;
  *&v86[24] = v88;
  *&v86[40] = v89;
  *v86 = v15;
  *&v86[56] = v90;
  memcpy(v75, v1, 0x12BuLL);
  if (sub_1A8BAECD4(v75) == 1)
  {
    sub_1A8AAD988(v75);
    v16 = &v85;
LABEL_12:
    sub_1A8BAF4B8(v16, &qword_1EB341178);
    goto LABEL_13;
  }

  sub_1A8AAD988(v75);
  *&v66[80] = *&v86[80];
  *&v66[96] = *&v86[96];
  *&v66[112] = *&v86[112];
  v66[128] = v86[128];
  *&v66[16] = *&v86[16];
  *&v66[32] = *&v86[32];
  *&v66[48] = *&v86[48];
  *&v66[64] = *&v86[64];
  v65 = v85;
  *v66 = *v86;
  if (sub_1A8AADFA8(&v65) != 1)
  {
    memcpy(v37, v1, 0x12BuLL);
    sub_1A8BAECE0(v37);
    __src[6] = *&v66[80];
    __src[7] = *&v66[96];
    __src[8] = *&v66[112];
    LOBYTE(__src[9]) = v66[128];
    __src[2] = *&v66[16];
    __src[3] = *&v66[32];
    __src[4] = *&v66[48];
    __src[5] = *&v66[64];
    __src[0] = v65;
    __src[1] = *v66;
    sub_1A8BC11B4(__src);
    memcpy(v1, __src, 0x12BuLL);
  }

LABEL_13:
  memcpy(v75, v1, 0x12BuLL);
  if (sub_1A8BAECD4(v75) == 1)
  {
    v17 = sub_1A8AAD988(v75);
    v18 = *(v17 + 16);
    __src[0] = *v17;
    __src[1] = v18;
    v19 = *(v17 + 80);
    v21 = *(v17 + 32);
    v20 = *(v17 + 48);
    __src[4] = *(v17 + 64);
    __src[5] = v19;
    __src[2] = v21;
    __src[3] = v20;
    v23 = *(v17 + 112);
    v22 = *(v17 + 128);
    v24 = *(v17 + 96);
    LOBYTE(__src[9]) = *(v17 + 144);
    __src[7] = v23;
    __src[8] = v22;
    __src[6] = v24;
    nullsub_1(__src);
    sub_1A8BAF018(v17, v37);
  }

  else
  {
    sub_1A8AAD988(v75);
    sub_1A8BA6348(__src);
  }

  v74 = __src[0];
  v25 = *&__src[1];
  v71 = *(&__src[5] + 8);
  v72 = *(&__src[6] + 8);
  v73[0] = *(&__src[7] + 8);
  *(v73 + 9) = *(&__src[8] + 1);
  v67 = *(&__src[1] + 8);
  v68 = *(&__src[2] + 8);
  v69 = *(&__src[3] + 8);
  v70 = *(&__src[4] + 8);
  v65 = __src[0];
  *&v66[72] = *(&__src[5] + 8);
  *&v66[88] = *(&__src[6] + 8);
  *&v66[104] = v73[0];
  *&v66[113] = *(&__src[8] + 1);
  *&v66[8] = *(&__src[1] + 8);
  *&v66[24] = *(&__src[2] + 8);
  *&v66[40] = *(&__src[3] + 8);
  *v66 = *&__src[1];
  *&v66[56] = *(&__src[4] + 8);
  if (sub_1A8AADFA8(&v65) == 1)
  {
    v37[0] = v74;
    *(&v37[5] + 8) = v71;
    *(&v37[6] + 8) = v72;
    *(&v37[7] + 8) = v73[0];
    *(&v37[8] + 1) = *(v73 + 9);
    *(&v37[1] + 8) = v67;
    *(&v37[2] + 8) = v68;
    *(&v37[3] + 8) = v69;
    *&v37[1] = v25;
    *(&v37[4] + 8) = v70;
    sub_1A8BAF440(v37, __src, &qword_1EB341178);
    sub_1A8BC5878(v37);
    __src[0] = v74;
    *(&__src[5] + 8) = v71;
    *(&__src[6] + 8) = v72;
    *(&__src[7] + 8) = v73[0];
    *(&__src[8] + 1) = *(v73 + 9);
    *(&__src[1] + 8) = v67;
    *(&__src[2] + 8) = v68;
    *(&__src[3] + 8) = v69;
    *&__src[1] = v25;
    *(&__src[4] + 8) = v70;
    sub_1A8BAF4B8(__src, &qword_1EB341178);
  }

  else
  {
    v26 = a1;

    v37[0] = v74;
    *(&v37[5] + 8) = v71;
    *(&v37[6] + 8) = v72;
    *(&v37[7] + 8) = v73[0];
    *(&v37[8] + 1) = *(v73 + 9);
    *(&v37[1] + 8) = v67;
    *(&v37[2] + 8) = v68;
    *(&v37[3] + 8) = v69;
    *&v37[1] = v26;
    *(&v37[4] + 8) = v70;
    sub_1A8BC5878(v37);
  }

  memcpy(__src, v1, 0x12BuLL);
  if (sub_1A8BAECD4(__src) == 1)
  {
    v27 = sub_1A8AAD988(__src);
    v28 = *(v27 + 248);
    v29 = v27 + 152;
    v30 = *(v27 + 200);
    *&v86[16] = *(v27 + 184);
    *&v86[32] = v30;
    v31 = *(v27 + 232);
    *&v86[48] = *(v27 + 216);
    *&v86[64] = v31;
    v32 = *(v27 + 168);
    v85 = *(v27 + 152);
    *v86 = v32;
    v33 = *(v27 + 264);
    v34 = *(v27 + 280);
    *&v86[80] = v28;
    *&v86[96] = v33;
    v86[128] = *(v27 + 296);
    *&v86[112] = v34;
    nullsub_1(&v85);
    sub_1A8BAF018(v29, &v47);
  }

  else
  {
    sub_1A8AAD988(__src);
    sub_1A8BA6348(&v85);
  }

  v63 = v85;
  v35 = *v86;
  v60 = *&v86[72];
  v61 = *&v86[88];
  v62[0] = *&v86[104];
  *(v62 + 9) = *&v86[113];
  v56 = *&v86[8];
  v57 = *&v86[24];
  v58 = *&v86[40];
  v59 = *&v86[56];
  v47 = v85;
  v53 = *&v86[72];
  v54 = *&v86[88];
  v55[0] = v62[0];
  *(v55 + 9) = *&v86[113];
  v49 = *&v86[8];
  v50 = *&v86[24];
  v51 = *&v86[40];
  v48 = *v86;
  v52 = *&v86[56];
  if (sub_1A8AADFA8(&v47) == 1)
  {
    v85 = v63;
    *&v86[72] = v60;
    *&v86[88] = v61;
    *&v86[104] = v62[0];
    *&v86[113] = *(v62 + 9);
    *&v86[8] = v56;
    *&v86[24] = v57;
    *&v86[40] = v58;
    *v86 = v35;
    *&v86[56] = v59;
    sub_1A8BAF440(&v85, &v38, &qword_1EB341178);
    sub_1A8BC5B34(&v85);

    v38 = v63;
    v44 = v60;
    v45 = v61;
    v46[0] = v62[0];
    *(v46 + 9) = *(v62 + 9);
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v39 = v35;
    v43 = v59;
    sub_1A8BAF4B8(&v38, &qword_1EB341178);
  }

  else
  {
    v36 = a1;

    v85 = v63;
    *&v86[72] = v60;
    *&v86[88] = v61;
    *&v86[104] = v62[0];
    *&v86[113] = *(v62 + 9);
    *&v86[8] = v56;
    *&v86[24] = v57;
    *&v86[40] = v58;
    *v86 = v36;
    *&v86[56] = v59;
    sub_1A8BC5B34(&v85);
  }
}

uint64_t sub_1A8BC54E0(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v41, v1, 0x12BuLL);
  v3 = sub_1A8BAECD4(v41);
  v4 = sub_1A8AAD988(v41);
  if (v3 != 1)
  {
    return sub_1A8BAF4B8(a1, &qword_1EB341178);
  }

  v5 = v4;
  memcpy(__src, v4, 0x12BuLL);
  v6 = *(a1 + 112);
  v26 = *(a1 + 96);
  v27 = v6;
  v28 = *(a1 + 128);
  v29 = *(a1 + 144);
  v7 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = v7;
  v8 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v8;
  v9 = *(a1 + 16);
  v20 = *a1;
  v21 = v9;
  if (sub_1A8AADFA8(&v20) == 1)
  {
    memcpy(v17, __src, 0x12BuLL);
    memcpy(v18, __dst, 0x12BuLL);
    v10 = sub_1A8AAD988(v18);
    sub_1A8BAF440(v10, v16, &qword_1EB341720);
    v11 = v17;
  }

  else
  {
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v30 = v20;
    v31 = v21;
    if (v5[297])
    {
      v16[6] = __src[6];
      v16[7] = __src[7];
      v16[8] = __src[8];
      LOBYTE(v16[9]) = __src[9];
      v16[2] = __src[2];
      v16[3] = __src[3];
      v16[4] = __src[4];
      v16[5] = __src[5];
      v16[0] = __src[0];
      v16[1] = __src[1];
      memcpy(v18, __dst, 0x12BuLL);
      v13 = sub_1A8AAD988(v18);
      sub_1A8BAF440(v13, v17, &qword_1EB341720);
      sub_1A8BC07E4(v16);
      __src[6] = v36;
      __src[7] = v37;
      __src[8] = v38;
      LOBYTE(__src[9]) = v39;
      __src[2] = v32;
      __src[3] = v33;
      __src[4] = v34;
      __src[5] = v35;
      __src[0] = v30;
      __src[1] = v31;
    }

    else
    {
      v16[2] = *(&__src[11] + 8);
      v16[3] = *(&__src[12] + 8);
      v16[4] = *(&__src[13] + 8);
      v16[5] = *(&__src[14] + 8);
      v16[0] = *(&__src[9] + 8);
      v16[1] = *(&__src[10] + 8);
      v16[6] = *(&__src[15] + 8);
      v16[7] = *(&__src[16] + 8);
      LOBYTE(v16[9]) = BYTE8(__src[18]);
      v16[8] = *(&__src[17] + 8);
      memcpy(v18, __dst, 0x12BuLL);
      v14 = sub_1A8AAD988(v18);
      sub_1A8BAF440(v14, v17, &qword_1EB341720);
      sub_1A8BC07E4(v16);
      *(&__src[16] + 8) = v37;
      *(&__src[17] + 8) = v38;
      *(&__src[15] + 8) = v36;
      *(&__src[11] + 8) = v32;
      *(&__src[12] + 8) = v33;
      *(&__src[13] + 8) = v34;
      *(&__src[14] + 8) = v35;
      *(&__src[9] + 8) = v30;
      BYTE8(__src[18]) = v39;
      *(&__src[10] + 8) = v31;
    }

    memcpy(v15, __src, 0x12BuLL);
    memcpy(v16, v1, 0x12BuLL);
    sub_1A8BC73EC(v15, v18);
    sub_1A8BAECE0(v16);
    memcpy(v17, v15, 0x12BuLL);
    sub_1A8BC116C(v17);
    memcpy(v1, v17, 0x12BuLL);
    memcpy(v18, __src, 0x12BuLL);
    v11 = v18;
  }

  return sub_1A8BC73BC(v11);
}

uint64_t sub_1A8BC5878(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v42, v1, 0x12BuLL);
  v3 = sub_1A8BAECD4(v42);
  v4 = sub_1A8AAD988(v42);
  if (v3 != 1)
  {
    return sub_1A8BAF4B8(a1, &qword_1EB341178);
  }

  memcpy(__src, v4, 0x12BuLL);
  v5 = *(a1 + 112);
  v27 = *(a1 + 96);
  v28 = v5;
  v29 = *(a1 + 128);
  v30 = *(a1 + 144);
  v6 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v6;
  v7 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v7;
  v8 = *(a1 + 16);
  v21 = *a1;
  v22 = v8;
  if (sub_1A8AADFA8(&v21) == 1)
  {
    memcpy(v18, __src, 0x12BuLL);
    memcpy(v19, __dst, 0x12BuLL);
    v9 = sub_1A8AAD988(v19);
    sub_1A8BAF440(v9, v17, &qword_1EB341720);
    v10 = v18;
  }

  else
  {
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v31 = v21;
    v32 = v22;
    v13[6] = __src[6];
    v13[7] = __src[7];
    v13[8] = __src[8];
    v14 = __src[9];
    v13[2] = __src[2];
    v13[3] = __src[3];
    v13[4] = __src[4];
    v13[5] = __src[5];
    v13[0] = __src[0];
    v13[1] = __src[1];
    memcpy(v15, __dst, 0x12BuLL);
    v12 = sub_1A8AAD988(v15);
    sub_1A8BAF440(v12, v19, &qword_1EB341720);
    sub_1A8BC07E4(v13);
    __src[6] = v37;
    __src[7] = v38;
    __src[8] = v39;
    LOBYTE(__src[9]) = v40;
    __src[2] = v33;
    __src[3] = v34;
    __src[4] = v35;
    __src[5] = v36;
    __src[0] = v31;
    __src[1] = v32;
    memcpy(v16, __src, 0x12BuLL);
    memcpy(v17, v1, 0x12BuLL);
    sub_1A8BC73EC(v16, v19);
    sub_1A8BAECE0(v17);
    memcpy(v18, v16, 0x12BuLL);
    sub_1A8BC116C(v18);
    memcpy(v1, v18, 0x12BuLL);
    memcpy(v19, __src, 0x12BuLL);
    v10 = v19;
  }

  return sub_1A8BC73BC(v10);
}

uint64_t sub_1A8BC5B34(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v42, v1, 0x12BuLL);
  v3 = sub_1A8BAECD4(v42);
  v4 = sub_1A8AAD988(v42);
  if (v3 != 1)
  {
    return sub_1A8BAF4B8(a1, &qword_1EB341178);
  }

  memcpy(__src, v4, 0x12BuLL);
  v5 = *(a1 + 112);
  v27 = *(a1 + 96);
  v28 = v5;
  v29 = *(a1 + 128);
  v30 = *(a1 + 144);
  v6 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v6;
  v7 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v7;
  v8 = *(a1 + 16);
  v21 = *a1;
  v22 = v8;
  if (sub_1A8AADFA8(&v21) == 1)
  {
    memcpy(v18, __src, 0x12BuLL);
    memcpy(v19, __dst, 0x12BuLL);
    v9 = sub_1A8AAD988(v19);
    sub_1A8BAF440(v9, v17, &qword_1EB341720);
    v10 = v18;
  }

  else
  {
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v31 = v21;
    v32 = v22;
    v13[6] = *&__src[31];
    v13[7] = *&__src[33];
    v13[8] = *&__src[35];
    v14 = __src[37];
    v13[2] = *&__src[23];
    v13[3] = *&__src[25];
    v13[4] = *&__src[27];
    v13[5] = *&__src[29];
    v13[0] = *&__src[19];
    v13[1] = *&__src[21];
    memcpy(v15, __dst, 0x12BuLL);
    v12 = sub_1A8AAD988(v15);
    sub_1A8BAF440(v12, v19, &qword_1EB341720);
    sub_1A8BC07E4(v13);
    *&__src[33] = v38;
    *&__src[35] = v39;
    *&__src[31] = v37;
    *&__src[23] = v33;
    *&__src[25] = v34;
    *&__src[27] = v35;
    *&__src[29] = v36;
    *&__src[19] = v31;
    LOBYTE(__src[37]) = v40;
    *&__src[21] = v32;
    memcpy(v16, __src, 0x12BuLL);
    memcpy(v17, v1, 0x12BuLL);
    sub_1A8BC73EC(v16, v19);
    sub_1A8BAECE0(v17);
    memcpy(v18, v16, 0x12BuLL);
    sub_1A8BC116C(v18);
    memcpy(v1, v18, 0x12BuLL);
    memcpy(v19, __src, 0x12BuLL);
    v10 = v19;
  }

  return sub_1A8BC73BC(v10);
}