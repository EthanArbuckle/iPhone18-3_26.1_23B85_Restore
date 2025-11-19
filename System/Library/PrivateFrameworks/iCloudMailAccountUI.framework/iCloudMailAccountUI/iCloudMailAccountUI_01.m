void sub_2755261FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v14 = sub_27554C778();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v41 = a1;
    v42 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v40 = a9;
    v22 = __swift_project_value_buffer(v14, qword_2809F8DA8);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_27554C758();
    v25 = sub_27554D428();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v38 = a8;
      v29 = v28;
      v44 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v36 = v15;
      v37 = a3;
      v30 = a7;
      v31 = *&v39[qword_2809F53A8];
      v32 = *&v39[qword_2809F53A8 + 8];

      v33 = sub_275545D14(v31, v32, &v44);
      a7 = v30;
      a3 = v37;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_27550C000, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v34 = v29;
      a8 = v38;
      MEMORY[0x277C7BAC0](v34, -1, -1);
      v35 = v27;
      v23 = v39;
      MEMORY[0x277C7BAC0](v35, -1, -1);

      (*(v36 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == 429)
    {
      if (v40 <= 4)
      {
        sub_275521288(a7, a8, v43 & 1, v40, &unk_28842BBA8, &unk_28842BC70, sub_27552D970, &block_descriptor_239);
        goto LABEL_17;
      }
    }

    else if (v21 == 401 && (v43 & 1) != 0)
    {
      sub_275521EF4(v41, v42, a3, a7, a8, v40);
LABEL_17:

      return;
    }

    a7(v41, v42, a3);
    goto LABEL_17;
  }
}

void sub_275526578(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v74 = a5;
  v15 = sub_27554C648();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_27554C778();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a2)
    {
      v76 = [a2 statusCode];
    }

    else
    {
      v76 = 0;
    }

    v69 = a1;
    v70 = a3;
    v67 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_2809F8DA8);
    (*(v19 + 16))(v22, v25, v18);
    v68 = v24;
    v26 = v24;
    v27 = sub_27554C758();
    v28 = sub_27554D428();

    v29 = os_log_type_enabled(v27, v28);
    v71 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v65 = a7;
      v31 = v30;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 134218242;
      *(v31 + 4) = v76;
      *(v31 + 12) = 2080;
      v33 = (v26 + qword_2809F53A8);
      v66 = a8;
      v34 = a6;
      v35 = *v33;
      v36 = v33[1];

      v37 = sub_275545D14(v35, v36, aBlock);
      a6 = v34;
      v26 = v71;

      *(v31 + 14) = v37;
      a8 = v66;
      _os_log_impl(&dword_27550C000, v27, v28, "[%ld] Response: X-Apple-Request-UUID: %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x277C7BAC0](v32, -1, -1);
      v38 = v31;
      a7 = v65;
      MEMORY[0x277C7BAC0](v38, -1, -1);
    }

    v39 = (*(v19 + 8))(v22, v18);
    v40 = v69;
    v41 = (*((*MEMORY[0x277D85000] & *v26) + 0x110))(v39);
    v42 = v70;
    v43 = v75;
    if (!v41)
    {
LABEL_21:
      if (v76 == 429)
      {
        if (a9 <= 4)
        {
          sub_275521288(a7, a8, a6 & 1, a9, &unk_28842B9F0, &unk_28842BB08, sub_27552D820, &block_descriptor_202);
          goto LABEL_28;
        }
      }

      else if (v76 == 401 && (a6 & 1) != 0)
      {
        sub_275522440(v40, v67, v42, a7, a8, a9);
LABEL_28:

        return;
      }

      a7(v40, v67, v42);
      goto LABEL_28;
    }

    v44 = v41;
    sub_27554C638();
    sub_27554C628();
    v46 = v45 * 1000.0;
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        v47 = sub_27554D3F8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v44;
        sub_27552C980(v47, 0x79636E6574616CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v49 = aBlock[0];
        v50 = sub_27554D3F8();
        v51 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v49;
        sub_27552C980(v50, 0x6F43737574617473, 0xEA00000000006564, v51);
        v52 = aBlock[0];
        if (v42)
        {
          v77 = v42;
          v53 = v42;
          v54 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
          if (swift_dynamicCast())
          {
            v55 = v79;
            v56 = v80;

            if (v56)
            {
              v57 = -1;
            }

            else
            {
              v57 = v55;
            }

            sub_27551DD44(v57);
            v58 = sub_27554D328();

            v59 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v52;
            sub_27552C980(v58, 0x646F43726F727265, 0xE900000000000065, v59);

            v52 = aBlock[0];
          }

          else
          {
          }
        }

        v60 = v73;
        v61 = sub_27554D328();
        v62 = swift_allocObject();
        *(v62 + 16) = v52;
        v79 = sub_27552E0E4;
        v80 = v62;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_275527308;
        aBlock[3] = &block_descriptor_187;
        v63 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v63);

        (*(v72 + 8))(v43, v60);
        v26 = v71;
        goto LABEL_21;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }
}

void sub_275526C40(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v74 = a5;
  v15 = sub_27554C648();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_27554C778();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a2)
    {
      v76 = [a2 statusCode];
    }

    else
    {
      v76 = 0;
    }

    v69 = a1;
    v70 = a3;
    v67 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_2809F8DA8);
    (*(v19 + 16))(v22, v25, v18);
    v68 = v24;
    v26 = v24;
    v27 = sub_27554C758();
    v28 = sub_27554D428();

    v29 = os_log_type_enabled(v27, v28);
    v71 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v65 = a7;
      v31 = v30;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 134218242;
      *(v31 + 4) = v76;
      *(v31 + 12) = 2080;
      v33 = (v26 + qword_2809F53A8);
      v66 = a8;
      v34 = a6;
      v35 = *v33;
      v36 = v33[1];

      v37 = sub_275545D14(v35, v36, aBlock);
      a6 = v34;
      v26 = v71;

      *(v31 + 14) = v37;
      a8 = v66;
      _os_log_impl(&dword_27550C000, v27, v28, "[%ld] Response: X-Apple-Request-UUID: %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x277C7BAC0](v32, -1, -1);
      v38 = v31;
      a7 = v65;
      MEMORY[0x277C7BAC0](v38, -1, -1);
    }

    v39 = (*(v19 + 8))(v22, v18);
    v40 = v69;
    v41 = (*((*MEMORY[0x277D85000] & *v26) + 0x110))(v39);
    v42 = v70;
    v43 = v75;
    if (!v41)
    {
LABEL_21:
      if (v76 == 429)
      {
        if (a9 <= 4)
        {
          sub_275521288(a7, a8, a6 & 1, a9, &unk_28842B810, &unk_28842B928, sub_27552D620, &block_descriptor_148);
          goto LABEL_28;
        }
      }

      else if (v76 == 401 && (a6 & 1) != 0)
      {
        sub_27552298C(v40, v67, v42, a7, a8, a9);
LABEL_28:

        return;
      }

      a7(v40, v67, v42);
      goto LABEL_28;
    }

    v44 = v41;
    sub_27554C638();
    sub_27554C628();
    v46 = v45 * 1000.0;
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        v47 = sub_27554D3F8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v44;
        sub_27552C980(v47, 0x79636E6574616CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v49 = aBlock[0];
        v50 = sub_27554D3F8();
        v51 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v49;
        sub_27552C980(v50, 0x6F43737574617473, 0xEA00000000006564, v51);
        v52 = aBlock[0];
        if (v42)
        {
          v77 = v42;
          v53 = v42;
          v54 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
          if (swift_dynamicCast())
          {
            v55 = v79;
            v56 = v80;

            if (v56)
            {
              v57 = -1;
            }

            else
            {
              v57 = v55;
            }

            sub_27551DD44(v57);
            v58 = sub_27554D328();

            v59 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v52;
            sub_27552C980(v58, 0x646F43726F727265, 0xE900000000000065, v59);

            v52 = aBlock[0];
          }

          else
          {
          }
        }

        v60 = v73;
        v61 = sub_27554D328();
        v62 = swift_allocObject();
        *(v62 + 16) = v52;
        v79 = sub_27552D3C8;
        v80 = v62;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_275527308;
        aBlock[3] = &block_descriptor_134;
        v63 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v63);

        (*(v72 + 8))(v43, v60);
        v26 = v71;
        goto LABEL_21;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }
}

id sub_275527308(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_27551EA14(0, &qword_2809F5860, 0x277D82BB8);
    v5 = sub_27554D2E8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2755273A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_27552744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  a6(a5, v10, 1, 0);
}

uint64_t sub_2755274DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, void, void, void, void, void, void))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7), (v10 = swift_dynamicCastClass()) != 0))
  {
    v11 = v10 + *((*MEMORY[0x277D85000] & *v10) + 0x60);
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    v15 = *(v11 + 3);
    v16 = *(v11 + 4);
    v17 = v11[40];
    if (v11[41])
    {
      v19 = *v11;
      *&v20 = v13;
      *(&v20 + 1) = v14;
      *&v21 = v15 & 1;
      *(&v21 + 1) = v16;
      LOBYTE(v22) = v17 & 1;
      HIBYTE(v22) = 1;
      sub_27552DF04(v12, v13, v14, v15, v16, v17, 1);
      a4(&v19);
      return sub_27552DF68(v12, v13, v14, v15, v16, v17, 1);
    }

    else
    {
      sub_27552DF04(v12, v13, v14, v15, v16, v17, 0);
      sub_27551E6AC(v13, v14);
      v19 = v12;
      v20 = 0u;
      v21 = 0u;
      v22 = 0;

      a4(&v19);
      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_2809F4D78 != -1)
    {
      swift_once();
    }

    v19 = qword_2809F8D60;
    v20 = xmmword_2809F8D68;
    LOBYTE(v21) = byte_2809F8D78;
    *(&v21 + 1) = qword_2809F8D80;
    LOBYTE(v22) = byte_2809F8D88;
    HIBYTE(v22) = 1;

    a4(&v19);
    return a8(v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, HIBYTE(v22));
  }
}

uint64_t sub_2755276F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t *))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58C8, &qword_275550468), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v7 = *v6;
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 2);
    v11 = *(v6 + 3);
    v12 = *(v6 + 4);
    v13 = v6[40];
    if (v6[41])
    {
      v14 = (*(v6 + 1) << 8) | ((*(v6 + 5) | (v6[7] << 16)) << 40) | v7;
      v16 = v14;
      *&v17 = v9;
      *(&v17 + 1) = v10;
      *&v18 = v11 & 1;
      *(&v18 + 1) = v12;
      LOBYTE(v19) = v13 & 1;
      HIBYTE(v19) = 1;
      sub_27552D874(v8, v9, v10, v11, v12, v13, 1);
      a4(&v16);
      return sub_27552D888(v14, v9, v10, v11, v12, v13, 1);
    }

    else
    {
      sub_27552D874(v8, *(v6 + 1), *(v6 + 2), *(v6 + 3), *(v6 + 4), v6[40], 0);
      sub_27551E6AC(v9, v10);
      v16 = v7 & 1;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      return (a4)(&v16);
    }
  }

  else
  {
    if (qword_2809F4D78 != -1)
    {
      swift_once();
    }

    v16 = qword_2809F8D60;
    v17 = xmmword_2809F8D68;
    LOBYTE(v18) = byte_2809F8D78;
    *(&v18 + 1) = qword_2809F8D80;
    LOBYTE(v19) = byte_2809F8D88;
    HIBYTE(v19) = 1;

    a4(&v16);
    return sub_27552D864(v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, SHIBYTE(v19));
  }
}

uint64_t sub_27552790C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5870, &qword_2755503A0), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v8 = *v6;
    v7 = *(v6 + 1);
    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      v14 = *v6;
      v15 = v7;
      v16 = v10;
      v17 = v9 & 1;
      v18 = v11;
      LOBYTE(v19) = v12 & 1;
      HIBYTE(v19) = 1;
      sub_27552D640(v8, v7, v10, v9, v11, v12, 1);
      a4(&v14);
      return sub_27552D6A4(v8, v7, v10, v9, v11, v12, 1);
    }

    else
    {
      sub_27552D640(v8, v7, v10, v9, v11, v12, 0);
      sub_27551E6AC(v10, v9);
      v14 = v8;
      v15 = v7;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v19 = 0;

      a4(&v14);
      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_2809F4D78 != -1)
    {
      swift_once();
    }

    v14 = qword_2809F8D60;
    v15 = *algn_2809F8D68;
    v16 = qword_2809F8D70;
    LOBYTE(v17) = byte_2809F8D78;
    v18 = qword_2809F8D80;
    LOBYTE(v19) = byte_2809F8D88;
    HIBYTE(v19) = 1;

    a4(&v14);
    return sub_27552D638();
  }
}

uint64_t sub_275527B1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v1;
}

uint64_t sub_275527B90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v1;
}

uint64_t sub_275527CA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v1;
}

double sub_275527D38@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_275527DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  return v1;
}

uint64_t sub_275527E44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_27554C808();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if ((v4 & 1) == 0)
    {
      result = sub_27554D388();
      if (result >= 3)
      {
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          return sub_27554C808();
        }
      }
    }
  }

  return result;
}

uint64_t sub_275527FCC()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = 1;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = 0;

  sub_27554C808();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27554C758();
  v9 = sub_27554D428();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_27550C000, v8, v9, "[AccountCreation - Startup] Fetch suggestions started", v10, 2u);
    MEMORY[0x277C7BAC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  v12 = *(*v11 + 16);
  v13 = *(*v11 + 24);
  v14 = objc_allocWithZone(type metadata accessor for EmailSuggestionsAPIRequest());
  v15 = v12;
  v16 = v13;
  v17 = sub_27552D3D0(v12, v16, 0, 0xF000000000000000, &qword_2809F5970, &qword_2755505F8, &qword_2809F5960, &qword_2755505E8);

  v18 = sub_275524A58();
  v21 = v18;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5920, &qword_275550580);
  sub_275515E2C(&qword_2809F5928, &qword_2809F5920, &qword_275550580);
  sub_27554C848();

  swift_beginAccess();
  sub_27554C798();
  swift_endAccess();
}

uint64_t sub_27552839C(uint64_t *a1)
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[3];
  v48 = a1[2];
  v13 = a1[4];
  v14 = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v10)
    {
      v44 = v11;
      v45 = v12;
      v46 = v14;
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v47 = v7;
      v16 = __swift_project_value_buffer(v2, qword_2809F8DA8);
      v17 = *(v3 + 16);
      v42 = v3 + 16;
      v43 = v16;
      v41 = v17;
      (v17)(v9);

      v18 = sub_27554C758();
      v19 = sub_27554D438();

      v20 = os_log_type_enabled(v18, v19);
      v40 = v13;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v55 = v39;
        *v21 = 136315138;
        v49 = v44;
        v50 = v10;
        v51 = v48;
        v52 = v45 & 1;
        v53 = v13;
        v54 = v46 & 1;
        sub_27551CB54();
        v22 = sub_27554D698();
        v24 = v3;
        v25 = sub_275545D14(v22, v23, &v55);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_27550C000, v18, v19, "[AccountCreation - Startup] Fetch suggestions failed: %s", v21, 0xCu);
        v26 = v39;
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x277C7BAC0](v26, -1, -1);
        MEMORY[0x277C7BAC0](v21, -1, -1);

        v27 = v24;
      }

      else
      {

        v27 = v3;
      }

      v28 = *(v27 + 8);
      v28(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v49) = 1;

      sub_27554C808();
      v29 = v47;
      v41(v47, v43, v2);

      v30 = sub_27554C758();
      v31 = sub_27554D438();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v55 = v33;
        *v32 = 136315138;
        v49 = v44;
        v50 = v10;
        v51 = v48;
        v52 = v45 & 1;
        v53 = v40;
        v54 = v46 & 1;
        sub_27551CB54();
        v34 = sub_27554D698();
        v36 = sub_275545D14(v34, v35, &v55);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_27550C000, v30, v31, "%s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x277C7BAC0](v33, -1, -1);
        MEMORY[0x277C7BAC0](v32, -1, -1);

        v37 = v47;
      }

      else
      {

        v37 = v29;
      }

      v28(v37, v2);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v49 = 0;
    v50 = 0xE000000000000000;

    sub_27554C808();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v49) = 0;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_275528898(uint64_t *a1)
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = result;
    v32 = v7;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_2809F8DA8);
    v13 = v3[2];
    v13(v9, v12, v2);

    v14 = sub_27554C758();
    v15 = sub_27554D428();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(v10 + 16);

      _os_log_impl(&dword_27550C000, v14, v15, "[AccountCreation - Startup] Fetch suggestions successful with count: %ld", v16, 0xCu);
      MEMORY[0x277C7BAC0](v16, -1, -1);
    }

    else
    {
    }

    v17 = v3[1];
    v17(v9, v2);
    v18 = v32;
    v13(v32, v12, v2);

    v19 = sub_27554C758();
    v20 = sub_27554D428();

    if (os_log_type_enabled(v19, v20))
    {
      v30 = v17;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136642819;
      if (sub_275528C94())
      {
        v23 = sub_27554D318();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_275545D14(v23, v25, &v33);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_27550C000, v19, v20, "[AccountCreation - Startup] Fetch suggestions successful with suggestions: %{sensitive}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C7BAC0](v22, -1, -1);
      MEMORY[0x277C7BAC0](v21, -1, -1);

      v30(v32, v2);
    }

    else
    {

      v17(v18, v2);
    }

    v27 = *(v31 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions);
    *(v31 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions) = v10;

    v28 = sub_27552D9C8(v10);
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v28;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_275528C94()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = sub_27554C538();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_27554C528();
  sub_27552DB30();
  v4 = sub_27554C518();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_27554C608();
  *&v17 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:&v17];

  v10 = v17;
  if (v9)
  {
    sub_27554D528();
    sub_27551E6AC(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v12 = sub_27554C5A8();

    swift_willThrow();
    sub_27551E6AC(v4, v6);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (*(&v18 + 1))
  {
    sub_27551E990(v15, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5898, &qword_275550448);
    if (swift_dynamicCast())
    {
      result = v16;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275528E6C()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = sub_27554C538();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_27554C528();
  sub_27552D718();
  v4 = sub_27554C518();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_27554C608();
  *&v17 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:&v17];

  v10 = v17;
  if (v9)
  {
    sub_27554D528();
    sub_27551E6AC(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v12 = sub_27554C5A8();

    swift_willThrow();
    sub_27551E6AC(v4, v6);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (*(&v18 + 1))
  {
    sub_27551E990(v15, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5898, &qword_275550448);
    if (swift_dynamicCast())
    {
      result = v16;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275529044()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27554C758();
  v9 = sub_27554D428();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_27550C000, v8, v9, "[AccountCreation - Startup] Fetch email validation rules started", v10, 2u);
    MEMORY[0x277C7BAC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  v12 = *(*v11 + 16);
  v13 = *(*v11 + 24);
  v14 = objc_allocWithZone(type metadata accessor for iCloudMailValidationRulesAPIRequest());
  v15 = v12;
  v16 = v13;
  v17 = sub_27552D3D0(v12, v16, 0, 0xF000000000000000, &qword_2809F5918, &qword_2755504E8, &qword_2809F5908, &qword_2755504D8);

  v18 = sub_275524D24();
  v20[1] = v18;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58D8, &qword_2755504C0);
  sub_275515E2C(&qword_2809F58E0, &qword_2809F58D8, &qword_2755504C0);
  sub_27554C848();

  swift_beginAccess();
  sub_27554C798();
  swift_endAccess();
}

uint64_t sub_275529364(uint64_t *a1)
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  if (v8)
  {
    v9 = *a1;
    v25 = a1[2];
    v26 = v9;
    v10 = a1[4];
    v11 = *(a1 + 40);
    v12 = *(a1 + 6);
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v2, qword_2809F8DA8);
    (*(v3 + 16))(v7, v13, v2);

    v14 = sub_27554C758();
    v15 = sub_27554D438();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v10;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v11;
      v20 = v18;
      v33 = v18;
      *v17 = 136315138;
      v27 = v26;
      v28 = v8;
      v29 = v25;
      v30 = v12 & 1;
      v31 = v16;
      v32 = v19 & 1;
      sub_27551CB54();
      v21 = sub_27554D698();
      v23 = sub_275545D14(v21, v22, &v33);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_27550C000, v14, v15, "[AccountCreation - Startup] Fetch email validation rules failed: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x277C7BAC0](v20, -1, -1);
      MEMORY[0x277C7BAC0](v17, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_2755295CC(uint64_t *a1)
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_2809F8DA8);
    (*(v3 + 16))(v6, v10, v2);

    v11 = sub_27554C758();
    v12 = sub_27554D428();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v7 + 16);

      _os_log_impl(&dword_27550C000, v11, v12, "[AccountCreation - Startup] Fetch email validation rules successful, count: %ld", v13, 0xCu);
      MEMORY[0x277C7BAC0](v13, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    v14 = *(v9 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules);
    *(v9 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules) = v7;
  }

  return result;
}

uint64_t sub_2755297EC()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27554C758();
  v9 = sub_27554D428();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_27550C000, v8, v9, "[AccountCreation - Startup] Fetch profile picture started", v10, 2u);
    MEMORY[0x277C7BAC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));

  sub_27551FF50(sub_27552D89C, v1);
}

uint64_t sub_2755299C8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_27554C778();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  if (a2)
  {
    v39 = v14;
    v40 = a1;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v6, qword_2809F8DA8);
    (*(v7 + 16))(v16, v17, v6);
    v18 = a2;
    v19 = sub_27554C758();
    v20 = sub_27554D438();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = a3;
      v23 = v22;
      v41 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v24 = sub_27554D698();
      v26 = sub_275545D14(v24, v25, &v41);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_27550C000, v19, v20, "[AccountCreation - Startup] Fetch profile picture failed: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x277C7BAC0](v23, -1, -1);
      MEMORY[0x277C7BAC0](v21, -1, -1);
    }

    (*(v7 + 8))(v16, v6);
    v14 = v39;
    a1 = v40;
  }

  if (a1)
  {
    v27 = qword_2809F4D80;
    v28 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v6, qword_2809F8DA8);
    (*(v7 + 16))(v11, v29, v6);
    v30 = sub_27554C758();
    v31 = sub_27554D428();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_27550C000, v30, v31, "[AccountCreation - Startup] Fetch profile picture successful", v32, 2u);
      MEMORY[0x277C7BAC0](v32, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = a1;

    return sub_27554C808();
  }

  else
  {
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v6, qword_2809F8DA8);
    (*(v7 + 16))(v14, v34, v6);
    v35 = sub_27554C758();
    v36 = sub_27554D438();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_27550C000, v35, v36, "[AccountCreation - Startup] Fetch profile picture failed, user image is nil", v37, 2u);
      MEMORY[0x277C7BAC0](v37, -1, -1);
    }

    return (*(v7 + 8))(v14, v6);
  }
}

uint64_t sub_275529E6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_27554C778();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v33) = 1;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = 0;
  v34 = 0xE000000000000000;

  sub_27554C808();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_2809F8DA8);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_27554C758();
  v13 = sub_27554D428();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_27550C000, v12, v13, "[AccountCreation - Startup] Check email availability started", v14, 2u);
    MEMORY[0x277C7BAC0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v16 = *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);
  v33 = a1;
  v34 = a2;

  MEMORY[0x277C7B050](v15, v16);
  v18 = v33;
  v17 = v34;
  v19 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  v20 = *(*v19 + 16);
  v21 = *(*v19 + 24);
  v35 = &type metadata for EmailAvailableAPIRequestBody;
  v36 = sub_27552D718();
  v33 = v18;
  v34 = v17;
  v22 = objc_allocWithZone(type metadata accessor for EmailAvailableAPIRequest());
  sub_27552C284(&v33, v32);
  v23 = v20;
  v24 = v21;

  v25 = sub_27552CF34(v20, v24, v32, &qword_2809F58D0, &qword_275550470, &qword_2809F58C0, &qword_275550460);

  sub_275514DA8(&v33, &qword_2809F5810, &qword_2755502E0);
  v26 = sub_275524FF0();

  v33 = v26;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v18;
  v28[4] = v17;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5888, &qword_275550440);
  sub_275515E2C(&qword_2809F5890, &qword_2809F5888, &qword_275550440);
  v29 = sub_27554C848();

  v31 = *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_availableApiCall);
  *(v3 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_availableApiCall) = v29;
  if (v31)
  {

    sub_27554C7A8();
  }

  return result;
}

uint64_t sub_27552A2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v4 = sub_27554C778();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v51 = *(a1 + 24);
  v52 = v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v12)
    {
      v47 = v9;
      v44 = v13;
      v45 = v16;
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v46 = v15;
      v18 = __swift_project_value_buffer(v4, qword_2809F8DA8);
      v48 = v5[2];
      v48(v11, v18, v4);

      v19 = sub_27554C758();
      v20 = sub_27554D438();

      v43 = v20;
      v21 = os_log_type_enabled(v19, v20);
      v49 = v5;
      if (v21)
      {
        v42 = v18;
        v22 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v53 = v41;
        *v22 = 136642819;
        v23 = sub_275528E6C();
        v24 = v47;
        if (v23)
        {
          v25 = sub_27554D318();
          v50 = v22;
          v26 = v24;
          v27 = v25;
          v29 = v28;

          v23 = v27;
          v24 = v26;
          v22 = v50;
        }

        else
        {
          v29 = 0xE000000000000000;
        }

        v31 = sub_275545D14(v23, v29, &v53);

        *(v22 + 4) = v31;
        _os_log_impl(&dword_27550C000, v19, v43, "[AccountCreation - Startup] params: %{sensitive}s", v22, 0xCu);
        v32 = v41;
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x277C7BAC0](v32, -1, -1);
        MEMORY[0x277C7BAC0](v22, -1, -1);

        v30 = v49[1];
        v30(v11, v4);
        v18 = v42;
      }

      else
      {

        v30 = v5[1];
        v30(v11, v4);
        v24 = v47;
      }

      v48(v24, v18, v4);

      v33 = sub_27554C758();
      v34 = sub_27554D438();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v59 = v36;
        *v35 = 136315138;
        v53 = v44;
        v54 = v12;
        v55 = v52;
        v56 = v51 & 1;
        v57 = v46;
        v58 = v45 & 1;
        sub_27551CB54();
        v37 = sub_27554D698();
        v39 = sub_275545D14(v37, v38, &v59);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_27550C000, v33, v34, "[AccountCreation - Startup] Check email availability failed: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x277C7BAC0](v36, -1, -1);
        MEMORY[0x277C7BAC0](v35, -1, -1);
      }

      v30(v24, v4);
      swift_getKeyPath();
      swift_getKeyPath();
      v53 = 0;
      v54 = 0xE000000000000000;

      sub_27554C808();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v53) = 0;

      sub_27554C808();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v53) = 0;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_27552A824(unsigned __int8 *a1)
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_2809F8DA8);
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_27554C758();
    v11 = sub_27554D428();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v7;
      _os_log_impl(&dword_27550C000, v10, v11, "[AccountCreation - Startup] Check email availability successful, available: %{BOOL}d", v12, 8u);
      MEMORY[0x277C7BAC0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v19) = v7 ^ 1;

    sub_27554C808();
    v13 = 0xE000000000000000;
    if (v7)
    {
      v14 = 0;
    }

    else
    {
      _s18CurrentBundleClassCMa();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v19 = 2777980912;
      v20 = 0xA400000000000000;
      MEMORY[0x277C7B050](0xD000000000000024, 0x8000000275552130);
      MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
      v14 = sub_27554C588();
      v13 = v17;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v14;
    v20 = v13;
    return sub_27554C808();
  }

  return result;
}

uint64_t sub_27552AB3C()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32[0]) = 1;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v32[0]) = 1;

  sub_27554C808();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27554C758();
  v9 = sub_27554D428();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_27550C000, v8, v9, "[AccountCreation - Startup] Create iCloud Mail Account started", v10, 2u);
    MEMORY[0x277C7BAC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v11 = *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v12 = *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v11, v12);

  v13 = v32[0];
  v14 = v32[1];
  v15 = *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions);
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_14:
    v21 = 0xE000000000000000;
LABEL_17:
    v22 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
    v23 = *(*v22 + 16);
    v24 = *(*v22 + 24);
    v32[3] = &type metadata for EmailCreateAPIRequestBody;
    v32[4] = sub_27552C1F0();
    v25 = swift_allocObject();
    v32[0] = v25;
    v25[2] = v16;
    v25[3] = v21;
    v25[4] = v13;
    v25[5] = v14;
    v26 = objc_allocWithZone(type metadata accessor for EmailCreateAPIRequest());
    sub_27552C284(v32, v31);
    v27 = v23;
    v28 = v24;
    v29 = sub_27552CF34(v23, v28, v31, &qword_2809F5878, &qword_2755503A8, &qword_2809F5858, &qword_275550390);

    sub_275514DA8(v32, &qword_2809F5810, &qword_2755502E0);
    v30 = sub_2755252BC();

    v32[0] = v30;
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5818, &qword_2755502E8);
    sub_275515E2C(&qword_2809F5820, &qword_2809F5818, &qword_2755502E8);
    sub_27554C848();

    swift_beginAccess();
    sub_27554C798();
    swift_endAccess();
  }

  v17 = 0;
  v18 = (v15 + 56);
  while (1)
  {
    result = *(v18 - 1);
    if (result == v13 && *v18 == v14)
    {
      break;
    }

    result = sub_27554D678();
    if (result)
    {
      break;
    }

    ++v17;
    v18 += 4;
    if (v16 == v17)
    {
      v16 = 0;
      goto LABEL_14;
    }
  }

  if (v17 < *(v15 + 16))
  {
    v16 = *(v18 - 3);
    v21 = *(v18 - 2);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_27552B054(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_27554C808();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_27554C808();
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_27554C808();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_27552B1B0(uint64_t *a1)
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v45[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v45[-v11];
  v14 = *a1;
  v13 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v51 = v10;
  v52 = v7;
  v17 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v14;
  sub_27554C7F8();

  v18 = (v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v20 = *(v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v19 = *(v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v20, v19);
  v21 = v53;

  if (v21 == v55 && v13 == v56)
  {

LABEL_6:
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v17, qword_2809F8DA8);
    (*(v3 + 16))(v12, v23, v17);
    v24 = sub_27554C758();
    v25 = sub_27554D428();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_27550C000, v24, v25, "[AccountCreation - Startup] Create iCloud Mail Account successful", v26, 2u);
      MEMORY[0x277C7BAC0](v26, -1, -1);
    }

    (*(v3 + 8))(v12, v17);
    v27 = *__swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v16 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));

    sub_275520100(sub_27552D1E0, v16);
  }

  v22 = sub_27554D678();

  if (v22)
  {
    goto LABEL_6;
  }

  v28 = v17;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v17, qword_2809F8DA8);
  v30 = v51;
  v49 = *(v3 + 16);
  v50 = v29;
  v49(v51);

  v31 = v3;
  v32 = v28;
  v33 = sub_27554C758();
  v34 = sub_27554D438();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v35 = 136643075;
    *(v35 + 4) = sub_275545D14(v53, v13, &v54);
    *(v35 + 12) = 2085;
    swift_getKeyPath();
    v46 = v34;
    swift_getKeyPath();
    v53 = v31;
    sub_27554C7F8();

    v47 = v32;
    v36 = *v18;
    v37 = v18[1];

    MEMORY[0x277C7B050](v36, v37);

    v38 = sub_275545D14(v55, v56, &v54);

    *(v35 + 14) = v38;
    _os_log_impl(&dword_27550C000, v33, v46, "[AccountCreation - Startup] response email: %{sensitive}s, user choice: %{sensitive}s", v35, 0x16u);
    v39 = v48;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v39, -1, -1);
    MEMORY[0x277C7BAC0](v35, -1, -1);

    v40 = *(v53 + 8);
    v32 = v47;
    v40(v30, v47);
  }

  else
  {

    v40 = *(v31 + 8);
    v40(v30, v32);
  }

  v41 = v52;
  (v49)(v52, v50, v32);
  v42 = sub_27554C758();
  v43 = sub_27554D438();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_27550C000, v42, v43, "[AccountCreation - Startup] Create iCloud Mail Account successful, but email doesn't match", v44, 2u);
    MEMORY[0x277C7BAC0](v44, -1, -1);
  }

  v40(v41, v32);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v55) = 0;

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v55) = 0;
  return sub_27554C808();
}

uint64_t sub_27552B850()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_27554C808();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_27552B944()
{
  v1 = v0;
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27554C758();
  v9 = sub_27554D428();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_27550C000, v8, v9, "[AccountCreation - Startup] checking if mail enabled", v10, 2u);
    MEMORY[0x277C7BAC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository + 24));
  return sub_27551FE3C() & 1;
}

uint64_t sub_27552BAFC()
{
  v1 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__profileImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5978, &qword_2755506D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__suggestedEmails;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5980, &unk_2755510B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__inputEmail;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5988, &qword_2755506E0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__debouncedInputEmail, v6);
  v8 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isLoading;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5990, &unk_2755510A0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isCreating, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAlert, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingFinishView, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAvailableCheckSpinner, v9);
  v7(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__emailValidAvailableErrorMessage, v6);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__disableContinueButton, v9);
  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__getSuggestionsError, v9);
  v11 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__errorAlert;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5998, &qword_2755506E8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions);

  v14 = *(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules);

  v10(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__passedInitialLengthThreshold, v9);
  v15 = *(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository));
  v16 = *(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_cancellables);

  v17 = *(v0 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_availableApiCall);

  return v0;
}

uint64_t sub_27552BE18()
{
  sub_27552BAFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s9ViewModelCMa()
{
  result = qword_2809F57B8;
  if (!qword_2809F57B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27552BEC4()
{
  sub_27552C138(319, &qword_2809F57C8, &qword_2809F57D0, &qword_2755510C0);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_27552C138(319, &qword_2809F57D8, &qword_2809F57E0, "|\");
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_27552C0EC(319, &qword_2809F57E8);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_27552C0EC(319, &qword_2809F57F0);
        if (v8 <= 0x3F)
        {
          v9 = *(v7 - 8) + 64;
          sub_27552C138(319, &qword_2809F57F8, &qword_2809F5800, &qword_275550180);
          if (v11 <= 0x3F)
          {
            v14 = *(v10 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_27552C0EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27554C818();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_27552C138(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_27554C818();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_27552C198@<X0>(uint64_t *a1@<X8>)
{
  _s9ViewModelCMa();
  result = sub_27554C7B8();
  *a1 = result;
  return result;
}

unint64_t sub_27552C1F0()
{
  result = qword_2809F5808;
  if (!qword_2809F5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5808);
  }

  return result;
}

uint64_t sub_27552C244()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27552C284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5810, &qword_2755502E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27552C2F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_27552C324(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_27552C398(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x277C7BAE0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x277C7BAE0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27552C424(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6120, &qword_275551400);
  v39 = a2;
  result = sub_27554D5F8();
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
      sub_27554D6E8();
      sub_27554D378();
      result = sub_27554D708();
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

uint64_t sub_27552C6C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
  v36 = a2;
  result = sub_27554D5F8();
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
        sub_27551E990(v25, v37);
      }

      else
      {
        sub_27551E914(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_27554D6E8();
      sub_27554D378();
      result = sub_27554D708();
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
      result = sub_27551E990(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_27552C980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27552E278(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_27552C424(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_27552E278(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_27554D688();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_27552CAF8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_27552CAF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6120, &qword_275551400);
  v2 = *v0;
  v3 = sub_27554D5E8();
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

void *sub_27552CC64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
  v2 = *v0;
  v3 = sub_27554D5E8();
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
        sub_27551E914(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27551E990(v25, (*(v4 + 56) + v22));
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

char *sub_27552CE08(char *a1, int64_t a2, char a3)
{
  result = sub_27552CE28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27552CE28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5938, &qword_2755505D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_27552CF34(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a5;
  v31 = a4;
  v8 = v7;
  v33 = a3;
  v34 = a2;
  v10 = sub_27554C678();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_2809F5370;
  *&v8[qword_2809F5370] = 0;
  v16 = &v8[qword_2809F5380];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 40) = -1;
  *&v8[qword_2809F5388] = 5;
  *&v8[qword_2809F5390] = 0x3FF0000000000000;
  *&v8[qword_2809F5398] = 0x403E000000000000;
  *&v8[qword_2809F53A0] = 0;
  v17 = &v8[qword_2809F53A8];
  sub_27554C668();
  v18 = sub_27554C658();
  v20 = v19;
  (*(v11 + 8))(v14, v10);
  *v17 = v18;
  v17[1] = v20;
  v21 = *&v8[v15];
  *&v8[v15] = a1;
  v22 = v33;
  v23 = a1;

  v24 = v34;
  *&v8[qword_2809F5378] = v34;
  sub_27552C284(v22, &v37);
  if (v38)
  {
    sub_27551EA5C(&v37, v41);
    sub_27551EA5C(v41, &v37);
    v39 = 0;
    swift_beginAccess();
    v25 = v24;
    sub_27552DFCC(&v37, v16, v31, v32);
    swift_endAccess();
  }

  else
  {
    v26 = v24;
    sub_275514DA8(&v37, &qword_2809F5810, &qword_2755502E0);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v40.receiver = v8;
  v40.super_class = v27;
  v28 = objc_msgSendSuper2(&v40, sel_init);
  sub_275514DA8(v22, &qword_2809F5810, &qword_2755502E0);
  return v28;
}

uint64_t sub_27552D198()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27552D1F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_27552D27C()
{
  result = qword_2809F5848;
  if (!qword_2809F5848)
  {
    sub_27551EA14(255, &qword_2809F5160, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5848);
  }

  return result;
}

uint64_t sub_27552D2E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27552D324()
{
  MEMORY[0x277C7BB40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27552D390()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_27552D3D0(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v36 = a7;
  v37 = a8;
  v32 = a5;
  v33 = a6;
  v9 = v8;
  v34 = a2;
  v35 = a4;
  v31 = a3;
  v11 = sub_27554C678();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_2809F5370;
  *&v9[qword_2809F5370] = 0;
  v17 = &v9[qword_2809F5380];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 40) = -1;
  *&v9[qword_2809F5388] = 5;
  *&v9[qword_2809F5390] = 0x3FF0000000000000;
  *&v9[qword_2809F5398] = 0x403E000000000000;
  *&v9[qword_2809F53A0] = 0;
  v18 = &v9[qword_2809F53A8];
  sub_27554C668();
  v19 = sub_27554C658();
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  *v18 = v19;
  v18[1] = v21;
  v22 = v34;
  v23 = *&v9[v16];
  *&v9[v16] = a1;
  v24 = a1;

  v25 = v35;
  *&v9[qword_2809F5378] = v22;
  if (v25 >> 60 == 15)
  {
    v26 = v22;
  }

  else
  {
    v27 = v31;
    v38[0] = v31;
    v38[1] = v25;
    v39 = 1;
    swift_beginAccess();
    v28 = v22;
    sub_27552D994(v27, v25);
    sub_27552DFCC(v38, v17, v32, v33);
    swift_endAccess();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  v40.receiver = v9;
  v40.super_class = v29;
  return objc_msgSendSuper2(&v40, sel_init);
}

uint64_t sub_27552D640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {

    return sub_27551E864(a3, a4);
  }

  return result;
}

uint64_t sub_27552D6A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {

    return sub_27551E6AC(a3, a4);
  }

  return result;
}

unint64_t sub_27552D718()
{
  result = qword_2809F5880;
  if (!qword_2809F5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5880);
  }

  return result;
}

uint64_t sub_27552D864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

uint64_t sub_27552D874(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_27551E864(a2, a3);
  }
}

uint64_t sub_27552D888(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_27551E6AC(a2, a3);
  }
}

uint64_t sub_27552D994(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_27551E864(a1, a2);
  }

  return a1;
}

uint64_t sub_27552D9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_27552CE08(0, v1, 0);
    v2 = v15;
    sub_275514CC4();
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v13 = *(v4 - 1);
      v14 = *v4;

      v6 = sub_27554D518();
      if (v6[2])
      {
        v8 = v6[4];
        v7 = v6[5];
      }

      else
      {
        v8 = 0;
        v7 = 0xE000000000000000;
      }

      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_27552CE08((v9 > 1), v10 + 1, 1);
      }

      *(v15 + 16) = v10 + 1;
      v11 = v15 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_27552DB30()
{
  result = qword_2809F5930;
  if (!qword_2809F5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5930);
  }

  return result;
}

uint64_t objectdestroy_127Tm()
{
  v1 = sub_27554C648();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_27552DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, void, void))
{
  v9 = *(sub_27554C648() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  return a4(a1, a2, a3, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 16), *(v4 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_137Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_144Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_27552DF04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_27551E864(a2, a3);
  }
}

uint64_t sub_27552DF68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_27551E6AC(a2, a3);
  }
}

uint64_t sub_27552DFCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

CGFloat sub_27552E114()
{
  v0 = sub_27554C548();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  v2 = *MEMORY[0x277D76BB8];
  sub_27554D338();
  sub_27554D568();
  if (!*(v1 + 16) || (v3 = sub_27552E2F0(&v6), (v4 & 1) == 0))
  {

    sub_27551EA74(&v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_27551E914(*(v1 + 56) + 32 * v3, &v7);
  sub_27551EA74(&v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_27552E210(&v7);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v6);
  }

  return 0.0;
}

uint64_t sub_27552E210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59A0, &unk_2755506F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27552E278(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_27554D6E8();
  sub_27554D378();
  v6 = sub_27554D708();

  return sub_27552E334(a1, a2, v6);
}

unint64_t sub_27552E2F0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_27554D548();

  return sub_27552E3EC(a1, v5);
}

unint64_t sub_27552E334(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_27554D678())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_27552E3EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_27551E8B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x277C7B210](v9, a1);
      sub_27551EA74(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_27552E4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59A8, &qword_275550730);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59B0, qword_275550738);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_27552E600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59A8, &qword_275550730);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F59B0, qword_275550738);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AccountCreationStartupPageView()
{
  result = qword_2809F59B8;
  if (!qword_2809F59B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27552E76C()
{
  sub_27552E8A0(319, &qword_2809F59C8, MEMORY[0x277CDD848]);
  if (v0 <= 0x3F)
  {
    sub_27552E8A0(319, &qword_2809F59D0, MEMORY[0x277CDF708]);
    if (v1 <= 0x3F)
    {
      sub_27552E8F4();
      if (v2 <= 0x3F)
      {
        sub_27552E944();
        if (v3 <= 0x3F)
        {
          sub_27552E9D8();
          if (v4 <= 0x3F)
          {
            sub_27552EA30();
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

void sub_27552E8A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27554C918();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_27552E8F4()
{
  result = qword_2809F59D8;
  if (!qword_2809F59D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2809F59D8);
  }

  return result;
}

void sub_27552E944()
{
  if (!qword_2809F59E0)
  {
    _s9ViewModelCMa();
    sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
    v0 = sub_27554C948();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F59E0);
    }
  }
}

void sub_27552E9D8()
{
  if (!qword_2809F59F0)
  {
    v0 = sub_27554C8E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F59F0);
    }
  }
}

void sub_27552EA30()
{
  if (!qword_2809F59F8)
  {
    v0 = sub_27554D108();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F59F8);
    }
  }
}

uint64_t sub_27552EA9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_27552EB48(uint64_t a1)
{
  sub_27553CED8(a1, v21);
  v1 = v22;
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for ACRepositoryDefault();
  v20[3] = v8;
  v20[4] = &off_28842B518;
  v20[0] = v7;
  v9 = _s9ViewModelCMa();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v8);
  v14 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_27553B19C(*v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

uint64_t sub_27552ED04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for AccountCreationStartupPageView();
  v4 = v3 - 8;
  v51 = *(v3 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A28, &qword_2755507F8);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v8 = &v35 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A18, &qword_2755507E8);
  v44 = *(v43 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v11 = &v35 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A10, &qword_2755507E0);
  v46 = *(v45 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v14 = &v35 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A08, &qword_2755507D8);
  v48 = *(v47 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v41 = &v35 - v16;
  sub_27552F4CC(v8);
  v17 = a1 + *(v4 + 40);
  v36 = a1;
  v18 = *(v17 + 8);
  v40 = *v17;
  v39 = v18;
  v38 = *(v17 + 16);
  v37 = _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v59 = v56;
  v60 = v57;
  *v61 = v58[0];
  *&v61[9] = *(v58 + 9);
  sub_27552FB18(&v59);
  v62 = v59;
  sub_275539B00(&v62);

  v63 = v60;
  *v64 = *v61;
  *&v64[9] = *&v61[9];
  sub_275514DA8(&v63, &qword_2809F5800, &qword_275550180);
  sub_275514DA8(v8, &qword_2809F5A28, &qword_2755507F8);
  v53 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A20, &qword_2755507F0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A30, &qword_275550800);
  v21 = sub_275539234();
  v22 = sub_27553935C();
  v23 = sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800);
  *&v56 = v42;
  *(&v56 + 1) = &type metadata for MSError;
  *&v57 = v20;
  *(&v57 + 1) = v21;
  *&v58[0] = v22;
  *(&v58[0] + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_275515E2C(&qword_2809F5A70, &qword_2809F5A20, &qword_2755507F0);
  v26 = v43;
  sub_27554CFE8();
  (*(v44 + 8))(v11, v26);
  *&v56 = v26;
  *(&v56 + 1) = v19;
  *&v57 = OpaqueTypeConformance2;
  *(&v57 + 1) = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v41;
  v29 = v45;
  sub_27554CF98();
  (*(v46 + 8))(v14, v29);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v30 = v49;
  sub_275539BAC(v36, v49);
  v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v32 = swift_allocObject();
  sub_275539C1C(v30, v32 + v31);
  v54 = v29;
  v55 = v27;
  swift_getOpaqueTypeConformance2();
  sub_2755393B0();
  v33 = v47;
  sub_27554CFC8();

  return (*(v48 + 8))(v28, v33);
}

uint64_t sub_27552F4CC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AccountCreationStartupPageView();
  v3 = v2 - 8;
  v30 = *(v2 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B20, &qword_275550A40);
  v5 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v33 = (&v27 - v6);
  v7 = sub_27554CCE8();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A40, &qword_275550808);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B28, &qword_275550A48);
  v16 = *(v32 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v32);
  v19 = &v27 - v18;
  if (*(v1 + *(v3 + 56)) == 1)
  {
    sub_275531494(v15);
    sub_27554CCD8();
    v20 = sub_275515E2C(&qword_2809F5A48, &qword_2809F5A40, &qword_275550808);
    sub_27554CF88();
    (*(v28 + 8))(v10, v29);
    (*(v12 + 8))(v15, v11);
    v21 = v32;
    (*(v16 + 16))(v33, v19, v32);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A58, &qword_275550810);
    v35 = v11;
    v36 = v20;
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5A50, &qword_2809F5A58, &qword_275550810);
    sub_27554CC68();
    return (*(v16 + 8))(v19, v21);
  }

  else
  {
    sub_275539BAC(v1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v24 = swift_allocObject();
    sub_275539C1C(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    v25 = v33;
    *v33 = sub_27553A1A4;
    v25[1] = v24;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A58, &qword_275550810);
    v26 = sub_275515E2C(&qword_2809F5A48, &qword_2809F5A40, &qword_275550808);
    v35 = v11;
    v36 = v26;
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5A50, &qword_2809F5A58, &qword_275550810);
    return sub_27554CC68();
  }
}

double sub_27552F9F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_27552FA80(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_27554C808();
}

uint64_t sub_27552FB18(__int128 *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v11 = v2;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B18, &qword_275550A18);
  MEMORY[0x277C7AE00](&v8);
  v4 = v9;
  if (v9)
  {
  }

  LOBYTE(v10) = v4 != 0;
  sub_27554D178();
  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v6 = MEMORY[0x277C7AE00](&v8, v3);
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A28, &qword_2755507F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A30, &qword_275550800);
  sub_275539234();
  sub_27553935C();
  sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800);
  sub_27554CFB8();
}

uint64_t sub_27552FD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A98, &qword_275550938);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AA0, &qword_275550940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AA8, &qword_275550948);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AB0, &qword_275550950);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v48 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v44 - v18;
  v20 = sub_27554CC98();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AB8, &qword_275550958);
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v44 - v24;
  sub_27554CC78();
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AC0, &qword_275550960);
  sub_275539DC0();
  v49 = v25;
  sub_27554CA38();
  if (*(a1 + *(type metadata accessor for AccountCreationStartupPageView() + 48)))
  {
    v26 = v48;
    (*(v8 + 56))(v48, 1, 1, v7);
    v27 = sub_275515E2C(&qword_2809F5AF8, &qword_2809F5AA8, &qword_275550948);
    v54 = v11;
    v55 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x277C7A970](v26, v7, OpaqueTypeConformance2);
    sub_275514DA8(v26, &qword_2809F5AB0, &qword_275550950);
  }

  else
  {
    v29 = sub_27554CC88();
    v44[1] = v44;
    MEMORY[0x28223BE20](v29);
    v44[-2] = a1;
    v30 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AE8, &qword_275550978);
    v31 = v11;
    v32 = v7;
    sub_275515E2C(&qword_2809F5AF0, &qword_2809F5AE8, &qword_275550978);
    v33 = v45;
    sub_27554CA38();
    v34 = sub_275515E2C(&qword_2809F5AF8, &qword_2809F5AA8, &qword_275550948);
    v35 = v47;
    v36 = v31;
    MEMORY[0x277C7A960](v33, v31, v34);
    v37 = v48;
    (*(v30 + 16))(v48, v35, v32);
    (*(v30 + 56))(v37, 0, 1, v32);
    v54 = v36;
    v55 = v34;
    v38 = swift_getOpaqueTypeConformance2();
    MEMORY[0x277C7A970](v37, v32, v38);
    sub_275514DA8(v37, &qword_2809F5AB0, &qword_275550950);
    (*(v30 + 8))(v35, v32);
    (*(v46 + 8))(v33, v36);
  }

  v39 = *(v3 + 48);
  v41 = v51;
  v40 = v52;
  v42 = v49;
  (*(v51 + 16))(v6, v49, v52);
  sub_275514D40(v19, &v6[v39], &qword_2809F5AB0, &qword_275550950);
  sub_27554CC48();
  sub_275514DA8(v19, &qword_2809F5AB0, &qword_275550950);
  return (*(v41 + 8))(v42, v40);
}

uint64_t sub_2755303C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AE0, &unk_275550968);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B10, &qword_275550A10);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v9 = &v38 - v8;
  v10 = type metadata accessor for AccountCreationStartupPageView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_27554C6A8();
  v14 = *(v43 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v43);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v10 + 48)) == 1)
  {
    sub_275539BAC(a1, &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    sub_275539C1C(v13, v19 + v18);
    sub_27554C698();
    v20 = v43;
    (*(v14 + 16))(v9, v17, v43);
    swift_storeEnumTagMultiPayload();
    sub_27553CF8C(&qword_2809F5AD0, MEMORY[0x277D24538]);
    sub_275539E7C();
    sub_27554CC68();
    return (*(v14 + 8))(v17, v20);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v40 = a2;
    v24 = v23;
    v44 = 2777980912;
    v45 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4C45434E4143, 0xE600000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v25 = sub_27554C588();
    v39 = v4;
    v27 = v26;

    v44 = v25;
    v45 = v27;
    sub_275539BAC(a1, &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v29 = swift_allocObject();
    sub_275539C1C(v13, v29 + v28);
    sub_275514CC4();
    v30 = v41;
    sub_27554D128();
    v31 = a1 + *(v10 + 32);
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    _s9ViewModelCMa();
    sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    LOBYTE(v33) = v44;
    KeyPath = swift_getKeyPath();
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    v37 = (v30 + *(v39 + 36));
    *v37 = KeyPath;
    v37[1] = sub_27553D120;
    v37[2] = v36;
    sub_275514D40(v30, v9, &qword_2809F5AE0, &unk_275550968);
    swift_storeEnumTagMultiPayload();
    sub_27553CF8C(&qword_2809F5AD0, MEMORY[0x277D24538]);
    sub_275539E7C();
    sub_27554CC68();
    return sub_275514DA8(v30, &qword_2809F5AE0, &unk_275550968);
  }
}

uint64_t sub_27553099C(uint64_t a1)
{
  v19 = sub_27554CBD8();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_27554C988();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275514D40(a1, v9, &qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_27554D448();
    v16 = sub_27554CD38();
    sub_27554C748();

    sub_27554CBC8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_27554C978();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_275530C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_27554CBE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B00, &qword_275550980);
  return sub_27553319C(a1, a2 + *(v4 + 44));
}

uint64_t sub_275530C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v4 = sub_27554C718();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v41 - v8;
  v9 = type metadata accessor for AccountCreationStartupPageView();
  v49 = *(v9 - 8);
  v47 = *(v49 + 64);
  v48 = v9 - 8;
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(v10 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  _s9ViewModelCMa();
  v16 = sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  v44 = v14;
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v17 = v56;
  v18 = v57;
  v19 = sub_27554C928();
  v20 = *(v19 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v21 = *(v19 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  v56 = v17;
  v57 = v18;

  MEMORY[0x277C7B050](v20, v21);

  v50 = v57;
  v51 = v56;
  v23 = v45;
  v22 = v46;
  sub_275539BAC(v45, v46);
  v24 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v49 = swift_allocObject();
  sub_275539C1C(v22, v49 + v24);
  v46 = v16;
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v47 = v56;
  if (*(v23 + *(v48 + 32)) == 1)
  {
    sub_27554C928();
    LODWORD(v48) = sub_27552B944();
  }

  else
  {
    LODWORD(v48) = 0;
  }

  LOBYTE(v55) = 0;
  sub_27554D0D8();
  LODWORD(v46) = v56;
  v45 = v57;
  LOBYTE(v55) = 0;
  sub_27554D0D8();
  LODWORD(v44) = v56;
  v43 = v57;
  LOBYTE(v55) = 0;
  sub_27554D0D8();
  v25 = v56;
  v42 = v57;
  v55 = 0;
  sub_27554D0D8();
  v26 = v56;
  v27 = v57;
  v28 = v52;
  v29 = v53;
  v30 = *(v53 + 104);
  v31 = v54;
  v30(v52, *MEMORY[0x277D245A0], v54);
  v32 = sub_27554C708();
  v33 = *(v29 + 8);
  result = v33(v28, v31);
  v35 = 0;
  if (v32)
  {
    v36 = v41;
    v30(v41, *MEMORY[0x277D24598], v31);
    v35 = sub_27554C708();
    result = v33(v36, v31);
  }

  v37 = v48 & 1;
  v38 = v50;
  *a2 = v51;
  *(a2 + 8) = v38;
  v39 = v49;
  *(a2 + 16) = sub_275539D40;
  *(a2 + 24) = v39;
  *(a2 + 32) = v47;
  *(a2 + 40) = v37;
  *(a2 + 48) = v46;
  *(a2 + 56) = v45;
  *(a2 + 64) = v44;
  v40 = v42;
  *(a2 + 72) = v43;
  *(a2 + 80) = v25;
  *(a2 + 88) = v40;
  *(a2 + 96) = v26;
  *(a2 + 104) = v27;
  *(a2 + 112) = 0x4030000000000000;
  *(a2 + 120) = v35 & 1;
  return result;
}

uint64_t sub_2755311E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_27554C988();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + *(type metadata accessor for AccountCreationStartupPageView() + 28);
  v10 = *(v9 + 8);
  (*v9)(a1);
  sub_275539404(&qword_2809F5A88, &qword_2755512D0, MEMORY[0x277CDD848], v8);
  sub_27554C978();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_275531308()
{
  v0 = sub_27554C778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2809F8DA8);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_27554C758();
  v7 = sub_27554D428();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_27550C000, v6, v7, "[AccountCreation - Startup] page viewed", v8, 2u);
    MEMORY[0x277C7BAC0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_275531494@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v2 = type metadata accessor for AccountCreationStartupPageView();
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2);
  v75 = v4;
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E90, &unk_275550A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E98, &unk_27554E990);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v71 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA0, &qword_275550A60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v56 - v15;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = ObjCClassFromMetadata;
  v19 = [v17 bundleForClass_];
  v77 = 2777980912;
  v78 = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000012, 0x8000000275552220);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v20 = sub_27554C588();
  v65 = v21;
  v66 = v20;

  v64 = v2;
  v22 = *(v2 + 32);
  v72 = v1;
  v23 = (v1 + v22);
  v25 = *v23;
  v24 = v23[1];
  v26 = *(v23 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v70 = v17;
  if (v77)
  {
    goto LABEL_4;
  }

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v77)
  {
    goto LABEL_4;
  }

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v27 = *(v77 + 16);

  if (v27)
  {
LABEL_4:
    v28 = v17;
    v29 = v18;
    v30 = [v28 bundleForClass_];
    v77 = 2777980912;
    v78 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275552240);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v31 = sub_27554C588();
    v61 = v32;
    v62 = v31;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v29 = v18;
  }

  v33 = sub_27554C688();
  (*(*(v33 - 8) + 56))(v73, 1, 1, v33);
  v58 = v29;
  v34 = [v70 bundleForClass_];
  v77 = 2777980912;
  v78 = 0xA400000000000000;
  MEMORY[0x277C7B050](0x45554E49544E4F43, 0xE800000000000000);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v35 = sub_27554C588();
  v59 = v36;
  v60 = v35;

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v37 = v67;
  v38 = v72;
  sub_275531F58();
  v39 = sub_27554C6F8();
  v40 = *(v39 - 8);
  v57 = *(v40 + 56);
  v56 = v40 + 56;
  v57(v37, 0, 1, v39);
  v41 = v68;
  sub_275539BAC(v38, v68);
  v42 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v43 = swift_allocObject();
  sub_275539C1C(v41, v43 + v42);
  v44 = v74;
  v45 = v38;
  sub_27554C728();
  v46 = sub_27554C738();
  v63 = *(*(v46 - 8) + 56);
  (v63)(v44, 0, 1, v46);
  v47 = v38 + *(v64 + 40);
  v48 = *v47;
  v49 = *(v47 + 8);
  LOBYTE(v77) = v48;
  v78 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  v50 = 1;
  if ((v76 & 1) == 0)
  {
    v51 = [v70 bundleForClass_];
    v77 = 2777980912;
    v78 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4F4D5F4E5241454CLL, 0xEA00000000004552);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v70 = sub_27554C588();

    v45 = v72;

    v57(v37, 1, 1, v39);
    sub_275539BAC(v45, v41);
    v52 = swift_allocObject();
    sub_275539C1C(v41, v52 + v42);
    sub_27554C728();
    v50 = 0;
  }

  (v63)(v71, v50, 1, v46);
  sub_275539BAC(v45, v41);
  v53 = swift_allocObject();
  sub_275539C1C(v41, v53 + v42);
  sub_275539BAC(v45, v41);
  v54 = swift_allocObject();
  sub_275539C1C(v41, v54 + v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B30, &qword_275550B90);
  sub_27553A460();
  sub_275515E2C(&qword_2809F5B40, &qword_2809F5B30, &qword_275550B90);
  return sub_27554C6B8();
}

uint64_t sub_275531F58()
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v1 = [v13 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000017, 0x8000000275552300);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55E0, &qword_27554F950);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_275550700;
  v3 = (v0 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v7 = sub_27554C928();
  v8 = *(v7 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v9 = *(v7 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v8, v9);

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_27551E7BC();
  *(v2 + 32) = 2777980912;
  *(v2 + 40) = 0xA400000000000000;
  v10 = [v13 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275552320);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_27554D348();

  v11 = [v13 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000025, 0x8000000275552340);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  return sub_27554C6E8();
}

double sub_275532388@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.784313725 green:0.956862745 blue:1.0 alpha:1.0];
  v7 = sub_27554D018();
  sub_27554B42C(*&v11[0], v7, v11);
  v8 = v11[3];
  *(a2 + 32) = v11[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = v11[4];
  *(a2 + 80) = v12;
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_2755324F4@<X0>(char *a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B48, &qword_275550B98);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B50, &qword_275550BA0);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v24 = v1;
  sub_275534BE8(v1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B58, &qword_275550BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B60, &qword_275550BB0);
  sub_275515E2C(&qword_2809F5B68, &qword_2809F5B58, &qword_275550BA8);
  sub_27553A4BC();
  sub_27554D1B8();
  sub_275532878(v7);
  v16 = v9[2];
  v16(v13, v15, v8);
  v17 = v22;
  sub_275514D40(v7, v22, &qword_2809F5B48, &qword_275550B98);
  v18 = v23;
  v16(v23, v13, v8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B78, &qword_275550BB8);
  sub_275514D40(v17, &v18[*(v19 + 48)], &qword_2809F5B48, &qword_275550B98);
  sub_275514DA8(v7, &qword_2809F5B48, &qword_275550B98);
  v20 = v9[1];
  v20(v15, v8);
  sub_275514DA8(v17, &qword_2809F5B48, &qword_275550B98);
  return (v20)(v13, v8);
}

uint64_t sub_2755327E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_27554CBE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CD0, &qword_275550DB0);
  sub_275535FD0(a1, (a2 + *(v4 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B58, &qword_275550BA8);
  v6 = (a2 + *(result + 52));
  *v6 = 0xD000000000000013;
  v6[1] = 0x80000002755522A0;
  return result;
}

uint64_t sub_275532878@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B80, &qword_275550BC0);
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v40 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B88, &qword_275550BC8);
  v6 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B90, &qword_275550BD0);
  v41 = *(v45 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v40 - v9;
  v10 = *(type metadata accessor for AccountCreationStartupPageView() + 32);
  v42 = v1;
  v11 = (v1 + v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v48)
  {
    goto LABEL_5;
  }

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v48)
  {
    goto LABEL_5;
  }

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v15 = *(v48 + 16);

  if (v15 < 2)
  {
LABEL_5:
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if ((v48 & 1) == 0)
    {
      sub_27554C928();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27554C7F8();

      if (v48 != 1)
      {
        v37 = 1;
        v27 = v47;
        goto LABEL_10;
      }
    }

    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v48 = 2777980912;
    v49 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD00000000000001FLL, 0x8000000275552260);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v30 = sub_27554C588();
    v32 = v31;

    v48 = v30;
    v49 = v32;
    sub_275514CC4();
    v48 = sub_27554CED8();
    v49 = v33;
    v50 = v34 & 1;
    v51 = v35;
    MEMORY[0x28223BE20](v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BA0, &qword_275550BE0);
    sub_27553A540();
    sub_27554D198();
    v36 = v46;
    (*(v2 + 16))(v44, v5, v46);
    swift_storeEnumTagMultiPayload();
    sub_27553A92C(&qword_2809F5BF0, &qword_2809F5B90, &qword_275550BD0, sub_27553A70C);
    sub_27553A92C(&qword_2809F5C38, &qword_2809F5B80, &qword_275550BC0, sub_27553A540);
    v27 = v47;
    sub_27554CC68();
    (*(v2 + 8))(v5, v36);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v48 = 2777980912;
    v49 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD00000000000001FLL, 0x8000000275552260);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v18 = sub_27554C588();
    v20 = v19;

    v48 = v18;
    v49 = v20;
    sub_275514CC4();
    v48 = sub_27554CED8();
    v49 = v21;
    v50 = v22 & 1;
    v51 = v23;
    MEMORY[0x28223BE20](v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C00, &qword_275550C10);
    sub_27553A70C();
    v24 = v40;
    sub_27554D198();
    v25 = v41;
    v26 = v45;
    (*(v41 + 16))(v44, v24, v45);
    swift_storeEnumTagMultiPayload();
    sub_27553A92C(&qword_2809F5BF0, &qword_2809F5B90, &qword_275550BD0, sub_27553A70C);
    sub_27553A92C(&qword_2809F5C38, &qword_2809F5B80, &qword_275550BC0, sub_27553A540);
    v27 = v47;
    sub_27554CC68();
    (*(v25 + 8))(v24, v26);
  }

  v37 = 0;
LABEL_10:
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B98, &qword_275550BD8);
  return (*(*(v38 - 8) + 56))(v27, v37, 1, v38);
}

uint64_t sub_27553319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountCreationStartupPageView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5AE0, &unk_275550968);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-v14];
  sub_275539BAC(a1, &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_275539C1C(&v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  sub_27554D118();
  v18 = a1 + *(v5 + 40);
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  LOBYTE(v16) = v28[15];
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  v24 = &v15[*(v9 + 44)];
  *v24 = KeyPath;
  v24[1] = sub_27553A128;
  v24[2] = v23;
  sub_275514D40(v15, v13, &qword_2809F5AE0, &unk_275550968);
  *a2 = 0;
  *(a2 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B08, &unk_275550A00);
  sub_275514D40(v13, a2 + *(v25 + 48), &qword_2809F5AE0, &unk_275550968);
  v26 = a2 + *(v25 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_275514DA8(v15, &qword_2809F5AE0, &unk_275550968);
  return sub_275514DA8(v13, &qword_2809F5AE0, &unk_275550968);
}

uint64_t sub_2755334E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  v6 = sub_27554C9C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for AccountCreationStartupPageView() + 20);
  sub_275539404(&qword_2809F5A90, &qword_275550880, MEMORY[0x277CDF708], v10);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v17[0] = 2777980912;
  v17[1] = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000020, 0x80000002755521F0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_27554C5E8();

  v14 = sub_27554C5F8();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v5, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_27554C9B8();
    (*(v7 + 8))(v10, v6);
    return (*(v15 + 8))(v5, v14);
  }

  return result;
}

uint64_t sub_27553379C@<X0>(uint64_t a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0x4F4D5F4E5241454CLL, 0xEA00000000004552);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_275514CC4();
  result = sub_27554CED8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_2755338C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v5 = sub_27554CA28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountCreationStartupPageView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_27554CC28();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CF0, &qword_275550EA8);
  sub_275533C78(a2, (a3 + *(v13 + 44)));
  v14 = sub_275547C5C();
  sub_275539BAC(a2, v12);
  (*(v6 + 16))(v8, v21, v5);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_275539C1C(v12, v17 + v15);
  (*(v6 + 32))(v17 + v16, v8, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CF8, &qword_275550EB0);
  *(a3 + *(result + 52)) = v14;
  v19 = (a3 + *(result + 56));
  *v19 = sub_27553C1EC;
  v19[1] = v17;
  return result;
}

uint64_t sub_275533AFC(uint64_t *a1)
{
  v2 = *a1;
  sub_27554D248();
  sub_27554C9D8();
}

uint64_t sub_275533B74(uint64_t a1, double a2)
{
  v2 = a2 > 0.0;
  v3 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0F8();
  result = sub_27554D0E8();
  if (v2)
  {
    sub_27554D268();
    return sub_27554CA18();
  }

  return result;
}

uint64_t sub_275533C78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a1;
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D00, &qword_275550EB8);
  v63 = *(v65 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v57 = &v52 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D08, &qword_275550EC0);
  v5 = *(*(v62 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v62);
  v66 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v64 = &v52 - v10;
  v11 = sub_27554CCE8();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D10, &qword_275550EC8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D18, &qword_275550ED0);
  v20 = *(v54 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v54);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D20, &qword_275550ED8);
  v59 = *(v24 - 8);
  v60 = v24;
  v25 = *(v59 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v58 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v52 - v28;
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D28, &qword_275550EE0);
  sub_275515E2C(&qword_2809F5D30, &qword_2809F5D28, &qword_275550EE0);
  sub_27554CE08();
  sub_27554CCD8();
  v30 = sub_275515E2C(&qword_2809F5D38, &qword_2809F5D10, &qword_275550EC8);
  sub_27554CF88();
  (*(v55 + 8))(v14, v56);
  (*(v16 + 8))(v19, v15);
  v70 = v15;
  v71 = v30;
  v31 = v57;
  swift_getOpaqueTypeConformance2();
  v32 = v54;
  sub_27554CF78();
  (*(v20 + 8))(v23, v32);
  v33 = v53;
  sub_275534E64(v31);
  v34 = (v33 + *(type metadata accessor for AccountCreationStartupPageView() + 40));
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v70) = v35;
  v71 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v69 == 1)
  {
    v37 = sub_27554CD68();
  }

  else
  {
    v37 = sub_27554CD58();
  }

  v38 = v37;
  v39 = v61;
  (*(v63 + 32))(v61, v31, v65);
  v40 = v39 + *(v62 + 36);
  *v40 = v38;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 1;
  v41 = v64;
  sub_27553C2EC(v39, v64);
  v43 = v58;
  v42 = v59;
  v44 = *(v59 + 16);
  v45 = v29;
  v46 = v60;
  v44(v58, v29, v60);
  v47 = v66;
  sub_275514D40(v41, v66, &qword_2809F5D08, &qword_275550EC0);
  v48 = v67;
  v44(v67, v43, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D40, &qword_275550EE8);
  sub_275514D40(v47, &v48[*(v49 + 48)], &qword_2809F5D08, &qword_275550EC0);
  sub_275514DA8(v41, &qword_2809F5D08, &qword_275550EC0);
  v50 = *(v42 + 8);
  v50(v45, v46);
  sub_275514DA8(v47, &qword_2809F5D08, &qword_275550EC0);
  return (v50)(v43, v46);
}

uint64_t sub_275534310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B48, &qword_275550B98);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D68, &qword_275550F48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D70, &qword_275550F50);
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v61 = a1;
  sub_2755349B4();
  v19 = sub_27554CD58();
  sub_27554C8A8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D78, &qword_275550F58) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_27554CD88();
  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D80, &qword_275550F60) + 36)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v31 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D88, &qword_275550F68) + 36)];
  v31[32] = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = sub_27554D068();
  KeyPath = swift_getKeyPath();
  v34 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D90, &qword_275550F70) + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = &v12[*(v9 + 36)];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D98, &qword_275550F78) + 28);
  v37 = sub_27554CEA8();
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *v35 = swift_getKeyPath();
  sub_275534BE8(a1, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5DA0, &qword_275550FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B60, &qword_275550BB0);
  sub_27553C5F8();
  sub_27553CA7C();
  sub_27553A4BC();
  sub_27554D1A8();
  sub_275532878(v8);
  v38 = a1 + *(type metadata accessor for AccountCreationStartupPageView() + 40);
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v63[0]) = v39;
  v63[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v62 == 1)
  {
    v41 = [objc_opt_self() systemBackgroundColor];
    v63[0] = sub_27554D018();
    v42 = sub_27554D138();

    v43 = 1;
  }

  else
  {
    v43 = 0;
    v42 = 1;
  }

  v45 = v56;
  v44 = v57;
  v46 = *(v57 + 16);
  v47 = v18;
  v55 = v18;
  v48 = v58;
  v46(v56, v47, v58);
  v49 = v60;
  sub_275514D40(v8, v60, &qword_2809F5B48, &qword_275550B98);
  v50 = v59;
  v46(v59, v45, v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E00, &qword_275550FD8);
  sub_275514D40(v49, &v50[*(v51 + 48)], &qword_2809F5B48, &qword_275550B98);
  v52 = &v50[*(v51 + 64)];
  sub_27553CB60(0, v43, v42);
  sub_27553CB74(0, v43, v42);
  *v52 = 0;
  *(v52 + 1) = v43;
  *(v52 + 2) = v42;
  sub_275514DA8(v8, &qword_2809F5B48, &qword_275550B98);
  v53 = *(v44 + 8);
  v53(v55, v48);
  sub_27553CB74(0, v43, v42);
  sub_275514DA8(v49, &qword_2809F5B48, &qword_275550B98);
  return (v53)(v45, v48);
}

uint64_t sub_2755348BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_27554CBE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CD0, &qword_275550DB0);
  sub_275535FD0(a1, (a2 + *(v4 + 44)));
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B58, &qword_275550BA8) + 52));
  *v5 = 0xD000000000000013;
  v5[1] = 0x80000002755522A0;
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_27554D018();
  v7 = sub_27554D138();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5DA0, &qword_275550FB0);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_2755349B4()
{
  v1 = type metadata accessor for AccountCreationStartupPageView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_27554CC28();
  v13 = 0;
  sub_275535410(v0, v16);
  memcpy(v14, v16, 0x11BuLL);
  memcpy(v15, v16, 0x11BuLL);
  sub_275514D40(v14, v11, &qword_2809F5E10, &qword_275550FE8);
  sub_275514DA8(v15, &qword_2809F5E10, &qword_275550FE8);
  memcpy(&v12[7], v14, 0x11BuLL);
  v5 = v13;
  KeyPath = swift_getKeyPath();
  v11[0] = v4;
  v11[1] = 0x4030000000000000;
  LOBYTE(v11[2]) = v5;
  memcpy(&v11[2] + 1, v12, 0x122uLL);
  v11[39] = KeyPath;
  LOBYTE(v11[40]) = 1;
  sub_275539BAC(v0, &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_275539C1C(&v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5DD0, &qword_275550FB8);
  sub_27553C998();
  sub_27554CF38();

  memcpy(v16, v11, 0x141uLL);
  return sub_275514DA8(v16, &qword_2809F5DD0, &qword_275550FB8);
}

uint64_t sub_275534BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v8 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v8 = *v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    sub_275514CC4();
    v9 = sub_27554CED8();
    v11 = v10;
    v13 = v12;
    sub_27554CDF8();
    v14 = sub_27554CEB8();
    v16 = v15;
    v18 = v17;

    sub_275514D18(v9, v11, v13 & 1);

    sub_27554D028();
    v19 = sub_27554CE88();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    sub_275514D18(v14, v16, v18 & 1);

    v8 = v23 & 1;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v25 = 0;
  }

  *a2 = v19;
  a2[1] = v21;
  a2[2] = v8;
  a2[3] = v25;
  return result;
}

uint64_t sub_275534E64@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for AccountCreationStartupPageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = v1 + *(MEMORY[0x28223BE20](v2 - 8) + 40);
  v26 = v1;
  v6 = *(v5 + 8);
  v21 = *v5;
  v30 = v6;
  v29 = *(v5 + 16);
  v28 = _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v24 = *(&v41 + 1);
  v25 = v41;
  v23 = v42;
  sub_275539BAC(v1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_275539C1C(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v7);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  *&v36 = 2777980912;
  *(&v36 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0x45554E49544E4F43, 0xE800000000000000);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v11 = sub_27554C588();
  v13 = v12;

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  LOBYTE(v10) = v41;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *&v36 = v25;
  *(&v36 + 1) = v24;
  LOBYTE(v37) = v23;
  *(&v37 + 1) = sub_27553C35C;
  *&v38 = v22;
  *(&v38 + 1) = v11;
  *&v39 = v13;
  *(&v39 + 1) = KeyPath;
  *&v40 = sub_27553D120;
  *(&v40 + 1) = v15;
  v16 = [v9 bundleForClass_];
  *&v41 = 2777980912;
  *(&v41 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000017, 0x8000000275552300);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v17 = sub_27554C588();
  v19 = v18;

  v34 = v17;
  v35 = v19;
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  LODWORD(v30) = v33;
  v32 = v26;
  v31 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D48, &qword_275550F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A30, &qword_275550800);
  sub_27553C458();
  sub_275514CC4();
  sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800);
  sub_27554CF58();

  v43 = v38;
  v44 = v39;
  v45 = v40;
  v41 = v36;
  v42 = v37;
  return sub_275514DA8(&v41, &qword_2809F5D48, &qword_275550F18);
}

uint64_t sub_275535410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.784313725 green:0.956862745 blue:1.0 alpha:1.0];
  v7 = sub_27554D018();
  sub_27554B42C(v37, v7, &v14);
  v8 = sub_27554CC28();
  LOBYTE(v11[0]) = 0;
  sub_275535850(a1, &v37);
  v29 = *&v38[112];
  v30[0] = *&v38[128];
  *(v30 + 11) = *&v38[139];
  v25 = *&v38[48];
  v26 = *&v38[64];
  v27 = *&v38[80];
  v28 = *&v38[96];
  v21 = v37;
  v22 = *v38;
  v23 = *&v38[16];
  v24 = *&v38[32];
  v31[8] = *&v38[112];
  v32[0] = *&v38[128];
  *(v32 + 11) = *&v38[139];
  v31[3] = *&v38[32];
  v31[4] = *&v38[48];
  v31[5] = *&v38[64];
  v31[7] = *&v38[96];
  v31[6] = *&v38[80];
  v31[0] = v37;
  v31[1] = *v38;
  v31[2] = *&v38[16];
  sub_275514D40(&v21, &v35, &qword_2809F5E18, &qword_275551020);
  sub_275514DA8(v31, &qword_2809F5E18, &qword_275551020);
  *&v20[119] = v28;
  *&v20[135] = v29;
  *&v20[151] = v30[0];
  *&v20[162] = *(v30 + 11);
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27;
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v33[2] = v16;
  v33[3] = v17;
  v33[4] = v18;
  v34 = v19;
  v33[0] = v14;
  v33[1] = v15;
  __src[0] = v14;
  __src[1] = v15;
  __src[3] = v17;
  __src[4] = v18;
  __src[2] = v16;
  LOBYTE(__src[5]) = v19;
  *&v35 = v8;
  *(&v35 + 1) = 0x4010000000000000;
  v36[0] = 0;
  *&v36[129] = *&v20[128];
  *&v36[145] = *&v20[144];
  *&v36[161] = *&v20[160];
  *&v36[177] = *(&v30[1] + 9);
  *&v36[65] = *&v20[64];
  *&v36[81] = *&v20[80];
  *&v36[97] = *&v20[96];
  *&v36[113] = *&v20[112];
  *&v36[1] = *v20;
  *&v36[17] = *&v20[16];
  *&v36[33] = *&v20[32];
  *&v36[49] = *&v20[48];
  *(&__src[16] + 8) = *&v36[160];
  *(&__src[17] + 7) = *&v36[175];
  *(&__src[14] + 8) = *&v36[128];
  *(&__src[15] + 8) = *&v36[144];
  *(&__src[10] + 8) = *&v36[64];
  *(&__src[11] + 8) = *&v36[80];
  *(&__src[12] + 8) = *&v36[96];
  *(&__src[13] + 8) = *&v36[112];
  *(&__src[6] + 8) = *v36;
  *(&__src[7] + 8) = *&v36[16];
  *(&__src[8] + 8) = *&v36[32];
  *(&__src[9] + 8) = *&v36[48];
  *(&__src[5] + 8) = v35;
  memcpy(a2, __src, 0x11BuLL);
  *&v38[129] = *&v20[128];
  *&v38[145] = *&v20[144];
  *&v38[161] = *&v20[160];
  *&v38[65] = *&v20[64];
  *&v38[81] = *&v20[80];
  *&v38[97] = *&v20[96];
  *&v38[113] = *&v20[112];
  *&v38[1] = *v20;
  *&v38[17] = *&v20[16];
  *&v38[33] = *&v20[32];
  *&v37 = v8;
  *(&v37 + 1) = 0x4010000000000000;
  v38[0] = 0;
  v39 = *&v20[176];
  *&v38[49] = *&v20[48];
  sub_27553CDD4(v33, v11);
  sub_275514D40(&v35, v11, &qword_2809F5E20, &qword_275551028);
  sub_275514DA8(&v37, &qword_2809F5E20, &qword_275551028);
  v11[2] = v16;
  v11[3] = v17;
  v11[4] = v18;
  v12 = v19;
  v11[0] = v14;
  v11[1] = v15;
  return sub_27553CE30(v11);
}

uint64_t sub_275535850@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = objc_opt_self();
  v2 = [v50 bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000012, 0x8000000275552220);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v3 = sub_27554C588();
  v5 = v4;

  v79 = v3;
  v80 = v5;
  sub_275514CC4();
  v6 = sub_27554CED8();
  v8 = v7;
  LOBYTE(v3) = v9;
  sub_27554CDA8();
  v10 = sub_27554CEB8();
  v12 = v11;
  v14 = v13;

  sub_275514D18(v6, v8, v3 & 1);

  sub_27554CDC8();
  v15 = sub_27554CE18();
  v55 = v16;
  v56 = v15;
  LOBYTE(v6) = v17;
  v19 = v18;
  sub_275514D18(v10, v12, v14 & 1);

  v54 = sub_27554CD58();
  v52 = v6 & 1;
  LOBYTE(v79) = v6 & 1;
  LOBYTE(v67) = 1;
  KeyPath = swift_getKeyPath();
  v20 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v79)
  {
    goto LABEL_3;
  }

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v24 = *(v79 + 16);

  if (v24)
  {
LABEL_3:
    v25 = [v50 bundleForClass_];
    MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275552240);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v26 = sub_27554C588();
    v28 = v27;

    v79 = v26;
    v80 = v28;
    v29 = sub_27554CED8();
    v31 = v30;
    v33 = v32;
    sub_27554CDB8();
    v58 = sub_27554CEB8();
    v35 = v34;
    v36 = v19;
    v38 = v37;
    v40 = v39;

    sub_275514D18(v29, v31, v33 & 1);

    v41 = sub_27554CD58();
    v42 = v35;
    v43 = v38 & 1;
    v19 = v36;
    LOBYTE(v79) = v43;
    LOBYTE(v67) = 1;
    v44 = v43;
    v45 = 65537;
    v46 = v41;
  }

  else
  {
    v58 = 0;
    v42 = 0;
    v40 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
  }

  *&v67 = v56;
  *(&v67 + 1) = v55;
  LOBYTE(v68) = v52;
  *(&v68 + 1) = *v93;
  DWORD1(v68) = *&v93[3];
  *(&v68 + 1) = v19;
  v69[0] = v54;
  *&v69[1] = *v92;
  *&v69[4] = *&v92[3];
  memset(&v69[8], 0, 32);
  v69[40] = 1;
  *&v69[44] = *(v94 + 3);
  *&v69[41] = v94[0];
  *&v70 = KeyPath;
  *(&v70 + 1) = 0x3FE999999999999ALL;
  v61 = *&v69[32];
  v62 = v70;
  v59 = *v69;
  v60 = *&v69[16];
  *&v71 = v58;
  *(&v71 + 1) = v42;
  *&v72 = v44;
  *(&v72 + 1) = v40;
  *v73 = v46;
  memset(&v73[8], 0, 32);
  v73[42] = BYTE2(v45);
  *&v73[40] = v45;
  *&v66[11] = *&v73[27];
  v65 = *v73;
  *v66 = *&v73[16];
  v63 = v71;
  v64 = v72;
  v47 = v68;
  *a2 = v67;
  a2[1] = v47;
  a2[4] = v61;
  a2[5] = v62;
  a2[2] = v59;
  a2[3] = v60;
  *(a2 + 155) = *&v66[11];
  a2[8] = v65;
  a2[9] = *v66;
  a2[6] = v63;
  a2[7] = v64;
  v74[0] = v58;
  v74[1] = v42;
  v74[2] = v44;
  v74[3] = v40;
  v74[4] = v46;
  v75 = 0u;
  v76 = 0u;
  v78 = BYTE2(v45);
  v77 = v45;
  sub_275514D40(&v67, &v79, &qword_2809F5E28, &qword_275551060);
  sub_275514D40(&v71, &v79, &qword_2809F5E30, &qword_275551068);
  sub_275514DA8(v74, &qword_2809F5E30, &qword_275551068);
  v79 = v56;
  v80 = v55;
  v81 = v52;
  *v82 = *v93;
  *&v82[3] = *&v93[3];
  v83 = v19;
  v84 = v54;
  *v85 = *v92;
  *&v85[3] = *&v92[3];
  v86 = 0u;
  v87 = 0u;
  v88 = 1;
  *&v89[3] = *(v94 + 3);
  *v89 = v94[0];
  v90 = KeyPath;
  v91 = 0x3FE999999999999ALL;
  return sub_275514DA8(&v79, &qword_2809F5E28, &qword_275551060);
}

uint64_t sub_275535F58(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D60, &qword_275550F40);
  return sub_27554C8B8();
}

uint64_t sub_275535FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for AccountCreationStartupPageView();
  v78 = *(v3 - 8);
  v4 = *(v78 + 64);
  v5 = v3 - 8;
  v61 = v3 - 8;
  v77 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for iCloudMailTextField();
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CD8, &qword_275550DB8);
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v58 - v14;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v68 = ObjCClassFromMetadata;
  v70 = objc_opt_self();
  v16 = [v70 bundleForClass_];
  *&v86 = 2777980912;
  *(&v86 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000011, 0x80000002755522C0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v17 = sub_27554C588();
  v19 = v18;

  *&v86 = v17;
  *(&v86 + 1) = v19;
  sub_275514CC4();
  v20 = sub_27554CED8();
  v22 = v21;
  LOBYTE(v17) = v23;
  sub_27554CDC8();
  v72 = sub_27554CE18();
  v71 = v24;
  v73 = v25;
  v74 = v26;
  sub_275514D18(v20, v22, v17 & 1);

  v27 = *(v5 + 40);
  v69 = a1;
  v28 = (a1 + v27);
  v30 = *v28;
  v29 = v28[1];
  LODWORD(v5) = *(v28 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C938();
  swift_getKeyPath();
  sub_27554C9E8();

  v64 = v89;
  v63 = v90;
  v62 = v91;
  v31 = (a1 + *(v61 + 44));
  LODWORD(v61) = *v31;
  v59 = *(v31 + 1);
  v60 = v31[16];

  v67 = v30;
  v66 = v29;
  v65 = v5;
  v32 = sub_27554C928();
  v33 = *(v32 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);
  v58 = *(v32 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);

  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  LOBYTE(v30) = v86;
  v34 = [v70 bundleForClass_];
  *&v86 = 2777980912;
  *(&v86 + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000016, 0x80000002755522E0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v35 = sub_27554C588();
  v37 = v36;

  *v9 = v64;
  v38 = v62;
  *(v9 + 2) = v63;
  *(v9 + 3) = v38;
  v9[32] = v61;
  *(v9 + 5) = v59;
  v9[48] = v60;
  *(v9 + 7) = v58;
  *(v9 + 8) = v33;
  v9[72] = v30;
  *(v9 + 10) = v35;
  *(v9 + 11) = v37;
  type metadata accessor for CGRect(0);
  v84 = 0u;
  v85 = 0u;
  sub_27554D0D8();
  v39 = v88;
  v40 = v87;
  *(v9 + 6) = v86;
  *(v9 + 7) = v40;
  *(v9 + 16) = v39;
  LOBYTE(v84) = 0;
  sub_27554D0D8();
  v41 = *(&v86 + 1);
  v9[136] = v86;
  *(v9 + 18) = v41;
  v42 = &v9[*(v75 + 44)];
  sub_27554CE68();
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v43 = v76;
  sub_275539BAC(v69, v76);
  v44 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v45 = swift_allocObject();
  sub_275539C1C(v43, v45 + v44);
  sub_27553CF8C(&qword_2809F5CE0, type metadata accessor for iCloudMailTextField);
  v46 = v83;
  sub_27554D008();

  sub_27553B048(v9);
  v48 = v79;
  v47 = v80;
  v49 = *(v80 + 16);
  v50 = v81;
  v49(v79, v46, v81);
  v51 = v82;
  v52 = v72;
  v53 = v71;
  *v82 = v72;
  v51[1] = v53;
  LOBYTE(v20) = v73 & 1;
  *(v51 + 16) = v73 & 1;
  v51[3] = v74;
  v54 = v51;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CE8, &qword_275550E50);
  v49(v54 + *(v55 + 48), v48, v50);
  sub_275514D28(v52, v53, v20);
  v56 = *(v47 + 8);

  v56(v83, v50);
  v56(v48, v50);
  sub_275514D18(v52, v53, v20);
}

uint64_t sub_2755368B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (a3 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v24 == 1)
  {
    v23 = sub_27554C928();
    v10 = *(sub_27554C928() + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules);

    v21 = v4;
    v22 = v3;
    v11 = sub_27553D208(v10);
    v13 = v12;

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v14;
    v25 = v15;
    sub_27554C808();
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if ((v15 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    sub_27554C928();
    if (v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v24) = 1;
      return sub_27554C808();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27554C7F8();

      v18 = v24;
      v24 = v22;
      v25 = v21;
      MEMORY[0x28223BE20](v17);
      v20[2] = &v24;
      v19 = sub_27552EA9C(sub_27553BF20, v20, v18);

      sub_27554C928();
      if (v19)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v24) = 0;
        sub_27554C808();
        sub_27554C928();
        swift_getKeyPath();
        swift_getKeyPath();
        v24 = 0;
        v25 = 0xE000000000000000;
        return sub_27554C808();
      }

      else
      {
        sub_275529E6C(v22, v21);
      }
    }
  }

  return result;
}

uint64_t sub_275536CE0(uint64_t a1)
{
  v2 = type metadata accessor for AccountCreationStartupPageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 40);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  swift_getKeyPath();
  sub_275539BAC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_275539C1C(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C10, &qword_275550C18);
  sub_275515E2C(&qword_2809F5C40, &qword_2809F57E0, "|\");
  sub_27553A790();
  return sub_27554D188();
}

uint64_t sub_275536F54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccountCreationStartupPageView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = *a1;
  v9 = a1[1];
  sub_275539BAC(a2, &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_275539C1C(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v10;
  v13[1] = v9;
  v21 = v10;
  v22 = v9;
  v23 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C48, &qword_275550C60);
  sub_275515E2C(&qword_2809F5C50, &qword_2809F5C48, &qword_275550C60);
  sub_27554D118();
  v14 = sub_27554D068();
  KeyPath = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C20, &qword_275550C20) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = sub_27554D018();
  v18 = sub_27554D138();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C10, &qword_275550C18);
  *(a3 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_275537190(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_275537284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_27554CBE8();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C58, &qword_275550C98);
  return sub_2755372F0(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_2755372F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a1;
  v53 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C60, &qword_275550CA0);
  v50 = *(v51 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v47 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C68, &qword_275550CA8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C70, &qword_275550CB0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = sub_27554CBE8();
  LOBYTE(v54) = 0;
  sub_2755378B4(a3, v58);
  *&v57[7] = v58[0];
  *&v57[23] = v58[1];
  *&v57[39] = v58[2];
  *&v57[55] = v58[3];
  v22 = v54;
  KeyPath = swift_getKeyPath();
  v24 = &v20[*(v14 + 44)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C78, &qword_275550CE8) + 28);
  v26 = *MEMORY[0x277CDFA88];
  v27 = sub_27554C9F8();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = KeyPath;
  *v20 = v21;
  *(v20 + 1) = 0;
  v20[16] = v22;
  v28 = *v57;
  *(v20 + 33) = *&v57[16];
  v29 = *&v57[48];
  *(v20 + 49) = *&v57[32];
  *(v20 + 65) = v29;
  *(v20 + 10) = *&v57[63];
  *(v20 + 17) = v28;
  v30 = a3 + *(type metadata accessor for AccountCreationStartupPageView() + 32);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v54 == v49 && v55 == v48)
  {
  }

  else
  {
    v34 = sub_27554D678();

    if ((v34 & 1) == 0)
    {
      v41 = 1;
      v40 = v51;
      v39 = v50;
      goto LABEL_7;
    }
  }

  v35 = sub_27554D098();
  v36 = sub_27554D038();
  v37 = swift_getKeyPath();
  v54 = v35;
  v55 = v37;
  v56 = v36;
  sub_27554CDD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C88, &qword_275550CF8);
  sub_27553AD58();
  v38 = v47;
  sub_27554CF08();

  v39 = v50;
  v40 = v51;
  (*(v50 + 32))(v12, v38, v51);
  v41 = 0;
LABEL_7:
  (*(v39 + 56))(v12, v41, 1, v40);
  sub_275514D40(v20, v18, &qword_2809F5C70, &qword_275550CB0);
  v42 = v52;
  sub_275514D40(v12, v52, &qword_2809F5C68, &qword_275550CA8);
  v43 = v53;
  sub_275514D40(v18, v53, &qword_2809F5C70, &qword_275550CB0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C80, &qword_275550CF0);
  v45 = v43 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_275514D40(v42, v43 + *(v44 + 64), &qword_2809F5C68, &qword_275550CA8);
  sub_275514DA8(v12, &qword_2809F5C68, &qword_275550CA8);
  sub_275514DA8(v20, &qword_2809F5C70, &qword_275550CB0);
  sub_275514DA8(v42, &qword_2809F5C68, &qword_275550CA8);
  return sub_275514DA8(v18, &qword_2809F5C70, &qword_275550CB0);
}

uint64_t sub_2755378B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_275514CC4();

  v4 = sub_27554CED8();
  v29 = v5;
  v30 = v4;
  v28 = v6;
  v31 = v7;
  v8 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  v12 = sub_27554C928();
  v13 = *(v12 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v14 = *(v12 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  v15 = sub_27554CED8();
  v17 = v16;
  v19 = v18;
  sub_27554D078();
  v20 = sub_27554CE88();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_275514D18(v15, v17, v19 & 1);

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_275514D28(v30, v29, v28 & 1);

  sub_275514D28(v20, v22, v24 & 1);

  sub_275514D18(v20, v22, v24 & 1);

  sub_275514D18(v30, v29, v28 & 1);
}

uint64_t sub_275537AFC(uint64_t a1)
{
  v2 = sub_27554C9F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_27554CAA8();
}

uint64_t sub_275537BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BE8, &unk_275550C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BD8, &qword_275550BF8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BC8, &qword_275550BF0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BB8, &qword_275550BE8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v33 - v21;
  *v7 = sub_27554CC28();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C98, &unk_275550D00);
  sub_275537F08(a1, &v7[*(v23 + 44)]);
  sub_27554D218();
  sub_27554CA48();
  sub_2755151DC(v7, v12, &qword_2809F5BE8, &unk_275550C00);
  v24 = &v12[*(v9 + 44)];
  v25 = v39;
  *(v24 + 4) = v38;
  *(v24 + 5) = v25;
  *(v24 + 6) = v40;
  v26 = v35;
  *v24 = v34;
  *(v24 + 1) = v26;
  v27 = v37;
  *(v24 + 2) = v36;
  *(v24 + 3) = v27;
  LOBYTE(v7) = sub_27554CD98();
  sub_2755151DC(v12, v17, &qword_2809F5BD8, &qword_275550BF8);
  v28 = &v17[*(v14 + 44)];
  *v28 = v7;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  LOBYTE(v12) = sub_27554CD98();
  sub_2755151DC(v17, v22, &qword_2809F5BC8, &qword_275550BF0);
  v29 = &v22[*(v19 + 44)];
  *v29 = v12;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = [objc_opt_self() secondarySystemBackgroundColor];
  v33[1] = sub_27554D018();
  v31 = sub_27554D138();
  sub_2755151DC(v22, a2, &qword_2809F5BB8, &qword_275550BE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5BA0, &qword_275550BE0);
  *(a2 + *(result + 36)) = v31;
  return result;
}

uint64_t sub_275537F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5010, &qword_275551190);
  v70 = *(v81 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v81);
  v69 = &v65[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CA0, &qword_275550D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v80 = &v65[-v7];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CA8, &qword_275550D18);
  v8 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v65[-v9];
  v10 = type metadata accessor for AccountCreationStartupPageView();
  v11 = v10 - 8;
  v72 = *(v10 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = v13;
  v74 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CB0, &qword_275550D20);
  v14 = *(*(v75 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v75);
  v76 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v77 = &v65[-v17];
  v18 = *(v11 + 40);
  v71 = a1;
  v19 = (a1 + v18);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  if (v83 == 1)
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v68 = objc_opt_self();
    v24 = [v68 bundleForClass_];
    v83 = 2777980912;
    v84 = 0xA400000000000000;
    MEMORY[0x277C7B050](0xD000000000000017, 0x8000000275552280);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v25 = sub_27554C588();
    v27 = v26;

    v83 = v25;
    v84 = v27;
    v69 = sub_275514CC4();
    v28 = sub_27554CED8();
    v30 = v29;
    LOBYTE(v25) = v31;
    sub_27554CDF8();
    v32 = sub_27554CEB8();
    v34 = v33;
    v36 = v35;
    v70 = v5;

    sub_275514D18(v28, v30, v25 & 1);

    sub_27554D078();
    v37 = sub_27554CE88();
    v39 = v38;
    v66 = v40;
    v67 = v41;

    sub_275514D18(v32, v34, v36 & 1);

    v42 = [v68 bundleForClass_];
    v83 = 2777980912;
    v84 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x5952544552, 0xE500000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v43 = sub_27554C588();
    v45 = v44;

    v83 = v43;
    v84 = v45;
    v46 = v74;
    sub_275539BAC(v71, v74);
    v47 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v48 = swift_allocObject();
    sub_275539C1C(v46, v48 + v47);
    v49 = v77;
    sub_27554D128();
    v50 = sub_27554CDF8();
    KeyPath = swift_getKeyPath();
    v52 = (v49 + *(v75 + 36));
    *v52 = KeyPath;
    v52[1] = v50;
    v53 = v76;
    sub_275514D40(v49, v76, &qword_2809F5CB0, &qword_275550D20);
    v54 = v78;
    *v78 = v37;
    *(v54 + 8) = v39;
    LOBYTE(v43) = v66 & 1;
    *(v54 + 16) = v66 & 1;
    *(v54 + 24) = v67;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CC8, &qword_275550D60);
    sub_275514D40(v53, v54 + *(v55 + 48), &qword_2809F5CB0, &qword_275550D20);
    sub_275514D28(v37, v39, v43);

    sub_275514D28(v37, v39, v43);

    sub_275514DA8(v53, &qword_2809F5CB0, &qword_275550D20);
    sub_275514D18(v37, v39, v43);

    sub_275514D40(v54, v80, &qword_2809F5CA8, &qword_275550D18);
    swift_storeEnumTagMultiPayload();
    sub_275515E2C(&qword_2809F5CC0, &qword_2809F5CA8, &qword_275550D18);
    sub_275515E2C(&qword_2809F5008, &qword_2809F5010, &qword_275551190);
    v56 = v82;
    sub_27554CC68();
    sub_275514D18(v37, v39, v43);

    sub_275514DA8(v54, &qword_2809F5CA8, &qword_275550D18);
    sub_275514DA8(v49, &qword_2809F5CB0, &qword_275550D20);
  }

  else
  {
    v58 = v80;
    v57 = v81;
    v59 = v82;
    sub_27554C928();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27554C7F8();

    if (v83 != 1)
    {
      v62 = 1;
      v56 = v59;
      goto LABEL_7;
    }

    v60 = v69;
    sub_27554C958();
    v61 = v70;
    (*(v70 + 16))(v58, v60, v57);
    swift_storeEnumTagMultiPayload();
    sub_275515E2C(&qword_2809F5CC0, &qword_2809F5CA8, &qword_275550D18);
    sub_275515E2C(&qword_2809F5008, &qword_2809F5010, &qword_275551190);
    v56 = v59;
    sub_27554CC68();
    (*(v61 + 8))(v60, v57);
  }

  v62 = 0;
LABEL_7:
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5CB8, &qword_275550D28);
  return (*(*(v63 - 8) + 56))(v56, v62, 1, v63);
}

uint64_t sub_2755388A0(uint64_t a1, void (*a2)(void))
{
  v3 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  a2();
}

uint64_t sub_27553898C(uint64_t a1)
{
  v2 = type metadata accessor for AccountCreationStartupPageView();
  v3 = (a1 + *(v2 + 36));
  v9 = *v3;
  v10 = *(v3 + 1);
  v11 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D60, &qword_275550F40);
  sub_27554C8B8();
  v4 = (a1 + *(v2 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_27554C808();
}

uint64_t sub_275538ADC(uint64_t a1)
{
  v2 = type metadata accessor for AccountCreationStartupPageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000025, 0x8000000275552340);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v7 = sub_27554C588();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_275539BAC(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_275539C1C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_275514CC4();
  return sub_27554D128();
}

uint64_t sub_275538CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55E0, &qword_27554F950);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275550700;
  v5 = (a1 + *(type metadata accessor for AccountCreationStartupPageView() + 32));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  _s9ViewModelCMa();
  sub_27553CF8C(&qword_2809F59E8, _s9ViewModelCMa);
  sub_27554C928();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  v9 = sub_27554C928();
  v10 = *(v9 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  v11 = *(v9 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain + 8);

  MEMORY[0x277C7B050](v10, v11);

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_27551E7BC();
  *(v4 + 32) = v18;
  *(v4 + 40) = v19;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275552320);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  sub_27554D348();

  sub_275514CC4();
  result = sub_27554CED8();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_275538FA8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A00, &qword_2755507D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A08, &qword_2755507D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A10, &qword_2755507E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A18, &qword_2755507E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A20, &qword_2755507F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A28, &qword_2755507F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A30, &qword_275550800);
  sub_275539234();
  sub_27553935C();
  sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800);
  swift_getOpaqueTypeConformance2();
  sub_275515E2C(&qword_2809F5A70, &qword_2809F5A20, &qword_2755507F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2755393B0();
  swift_getOpaqueTypeConformance2();
  sub_27554CA08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A80, &qword_275550818);
  v2 = (a1 + *(result + 36));
  *v2 = sub_275531308;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  return result;
}

unint64_t sub_275539234()
{
  result = qword_2809F5A38;
  if (!qword_2809F5A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A28, &qword_2755507F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A40, &qword_275550808);
    sub_275515E2C(&qword_2809F5A48, &qword_2809F5A40, &qword_275550808);
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5A50, &qword_2809F5A58, &qword_275550810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5A38);
  }

  return result;
}

unint64_t sub_27553935C()
{
  result = qword_2809F5A60;
  if (!qword_2809F5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5A60);
  }

  return result;
}

unint64_t sub_2755393B0()
{
  result = qword_2809F5A78;
  if (!qword_2809F5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5A78);
  }

  return result;
}

uint64_t sub_275539404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_27554CBD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_275514D40(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_27554D448();
    v22 = sub_27554CD38();
    sub_27554C748();

    sub_27554CBC8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_275539604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a2 = v5;
  return result;
}

uint64_t sub_275539684(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_27554C808();
}

uint64_t sub_2755396FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a2 = v5;
  return result;
}

uint64_t sub_27553977C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_275539884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_275539914(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_2755399F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27554C7F8();

  *a2 = v5;
  return result;
}

uint64_t sub_275539A88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27554C808();
}

uint64_t sub_275539BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountCreationStartupPageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275539C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountCreationStartupPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275539C80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_275530C98(v4, a1);
}

uint64_t sub_275539D40(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2755311E8(a1, v4);
}

unint64_t sub_275539DC0()
{
  result = qword_2809F5AC8;
  if (!qword_2809F5AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5AC0, &qword_275550960);
    sub_27553CF8C(&qword_2809F5AD0, MEMORY[0x277D24538]);
    sub_275539E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5AC8);
  }

  return result;
}

unint64_t sub_275539E7C()
{
  result = qword_2809F5AD8;
  if (!qword_2809F5AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5AE0, &unk_275550968);
    sub_275515E2C(&qword_2809F5A68, &qword_2809F5A30, &qword_275550800);
    sub_275515E2C(&qword_2809F5080, &qword_2809F5088, &qword_27554EBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5AD8);
  }

  return result;
}

uint64_t sub_275539FB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CAF8();
  *a1 = result;
  return result;
}

uint64_t sub_27553A00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CA78();
  *a1 = result;
  return result;
}

uint64_t sub_27553A038(uint64_t *a1)
{
  v1 = *a1;

  return sub_27554CA88();
}

uint64_t sub_27553A064@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CB88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27553A094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CB88();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27553A1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2755338C4(a1, v6, a2);
}

double sub_27553A38C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_275532388(v4, a1);
}

uint64_t sub_27553A3FC@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_2755324F4(a1);
}

unint64_t sub_27553A460()
{
  result = qword_2809F5B38;
  if (!qword_2809F5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5B38);
  }

  return result;
}

unint64_t sub_27553A4BC()
{
  result = qword_2809F5B70;
  if (!qword_2809F5B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5B60, &qword_275550BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5B70);
  }

  return result;
}

unint64_t sub_27553A540()
{
  result = qword_2809F5BA8;
  if (!qword_2809F5BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5BA0, &qword_275550BE0);
    sub_27553C84C(&qword_2809F5BB0, &qword_2809F5BB8, &qword_275550BE8, sub_27553A624);
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5BA8);
  }

  return result;
}

unint64_t sub_27553A654()
{
  result = qword_2809F5BD0;
  if (!qword_2809F5BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5BD8, &qword_275550BF8);
    sub_275515E2C(&qword_2809F5BE0, &qword_2809F5BE8, &unk_275550C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5BD0);
  }

  return result;
}

unint64_t sub_27553A70C()
{
  result = qword_2809F5BF8;
  if (!qword_2809F5BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C00, &qword_275550C10);
    sub_27553A790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5BF8);
  }

  return result;
}

unint64_t sub_27553A790()
{
  result = qword_2809F5C08;
  if (!qword_2809F5C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C10, &qword_275550C18);
    sub_27553A848();
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5C08);
  }

  return result;
}

unint64_t sub_27553A848()
{
  result = qword_2809F5C18;
  if (!qword_2809F5C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C20, &qword_275550C20);
    sub_275515E2C(&qword_2809F5C28, &qword_2809F5C30, &qword_275550C28);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5C18);
  }

  return result;
}

uint64_t sub_27553A92C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27553A9C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_275536F54(a1, v6, a2);
}

uint64_t sub_27553AA44()
{
  v1 = type metadata accessor for AccountCreationStartupPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27554C988();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27554C9C8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v5[v1[7] + 8];

  v13 = &v5[v1[8]];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = v13[16];
  sub_275539C14();
  v17 = *&v5[v1[9] + 8];

  v18 = *&v5[v1[10] + 8];

  v19 = *&v5[v1[11] + 8];

  v20 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v2 | 7);
}

uint64_t sub_27553AC3C()
{
  v1 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_275537190(v0 + v2);
}

uint64_t sub_27553ACD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CA78();
  *a1 = result;
  return result;
}

uint64_t sub_27553AD04(uint64_t *a1)
{
  v1 = *a1;

  return sub_27554CA88();
}

unint64_t sub_27553AD58()
{
  result = qword_2809F5C90;
  if (!qword_2809F5C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5C88, &qword_275550CF8);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5C90);
  }

  return result;
}

uint64_t sub_27553AE28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CB18();
  *a1 = result;
  return result;
}

uint64_t sub_27553AE54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27554CB18();
  *a1 = result;
  return result;
}

uint64_t sub_27553AE80(uint64_t *a1)
{
  v1 = *a1;

  return sub_27554CB28();
}

uint64_t sub_27553AEAC(uint64_t *a1)
{
  v1 = *a1;

  return sub_27554CB28();
}

uint64_t sub_27553AFC8(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2755368B0(a1, a2, v6);
}

uint64_t sub_27553B048(uint64_t a1)
{
  v2 = type metadata accessor for iCloudMailTextField();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27553B0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E08, &qword_275550FE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_275514D40(a1, &v6 - v4, &qword_2809F5E08, &qword_275550FE0);
  return sub_27554CB78();
}

uint64_t sub_27553B19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v74 - v6;
  v7 = sub_27554D498();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v89 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E38, &qword_275551078);
  v86 = *(v84 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v74 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E40, &qword_275551080);
  v87 = *(v85 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E48, &qword_275551088);
  v15 = *(v14 - 8);
  v90 = v14;
  v91 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v82 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5E50, &unk_275551090);
  v19 = *(v18 - 8);
  v92 = v18;
  v93 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v74 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5998, &qword_2755506E8);
  v79 = *(v80 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v74 - v23;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5990, &unk_2755510A0);
  v24 = *(v77 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v77);
  v27 = &v74 - v26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5988, &qword_2755506E0);
  v76 = *(v97 - 8);
  v28 = *(v76 + 64);
  MEMORY[0x28223BE20](v97);
  v30 = &v74 - v29;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5980, &unk_2755510B0);
  v31 = *(v75 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v75);
  v34 = &v74 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5978, &qword_2755506D8);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v74 - v38;
  v100[3] = type metadata accessor for ACRepositoryDefault();
  v100[4] = &off_28842B518;
  v100[0] = a1;
  v40 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__profileImage;
  *&v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57D0, &qword_2755510C0);
  sub_27554C7D8();
  (*(v36 + 32))(a2 + v40, v39, v35);
  v41 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__suggestedEmails;
  *&v98 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\");
  sub_27554C7D8();
  (*(v31 + 32))(a2 + v41, v34, v75);
  v42 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__inputEmail;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_27554C7D8();
  v43 = *(v76 + 32);
  v44 = v97;
  v43(a2 + v42, v30, v97);
  v45 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__debouncedInputEmail;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_27554C7D8();
  v43(a2 + v45, v30, v44);
  v46 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isLoading;
  LOBYTE(v98) = 1;
  sub_27554C7D8();
  v47 = *(v24 + 32);
  v48 = v77;
  v47(a2 + v46, v27, v77);
  v49 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__isCreating;
  LOBYTE(v98) = 0;
  sub_27554C7D8();
  v47(a2 + v49, v27, v48);
  v50 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAlert;
  LOBYTE(v98) = 0;
  sub_27554C7D8();
  v47(a2 + v50, v27, v48);
  v51 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingFinishView;
  LOBYTE(v98) = 0;
  sub_27554C7D8();
  v47(a2 + v51, v27, v48);
  v52 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__showingAvailableCheckSpinner;
  LOBYTE(v98) = 0;
  sub_27554C7D8();
  v47(a2 + v52, v27, v48);
  v53 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__emailValidAvailableErrorMessage;
  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_27554C7D8();
  v43(a2 + v53, v30, v97);
  v54 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__disableContinueButton;
  LOBYTE(v98) = 1;
  sub_27554C7D8();
  v47(a2 + v54, v27, v48);
  v55 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__getSuggestionsError;
  LOBYTE(v98) = 0;
  sub_27554C7D8();
  v47(a2 + v55, v27, v48);
  v56 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__errorAlert;
  v98 = 0u;
  memset(v99, 0, sizeof(v99));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5800, &qword_275550180);
  v57 = v78;
  sub_27554C7D8();
  (*(v79 + 32))(a2 + v56, v57, v80);
  v58 = MEMORY[0x277D84F90];
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_suggestions) = MEMORY[0x277D84F90];
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_validationRules) = v58;
  v59 = OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel__passedInitialLengthThreshold;
  LOBYTE(v98) = 0;
  sub_27554C7D8();
  v47(a2 + v59, v27, v48);
  v60 = (a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_domain);
  *v60 = 0x2E64756F6C636940;
  v60[1] = 0xEB000000006D6F63;
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_cancellables) = MEMORY[0x277D84FA0];
  *(a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_availableApiCall) = 0;
  sub_27553CED8(v100, a2 + OBJC_IVAR____TtCV19iCloudMailAccountUI30AccountCreationStartupPageView9ViewModel_repository);
  swift_beginAccess();
  v61 = v83;
  sub_27554C7E8();
  swift_endAccess();
  sub_275515E2C(&qword_2809F5E58, &qword_2809F5E38, &qword_275551078);
  v62 = v81;
  v63 = v84;
  sub_27554C878();
  (*(v86 + 8))(v61, v63);
  sub_275515E2C(&qword_2809F5E60, &qword_2809F5E40, &qword_275551080);
  v64 = v82;
  v65 = v85;
  sub_27554C888();
  (*(v87 + 8))(v62, v65);
  v66 = v89;
  sub_27554D488();
  sub_2755155D4();
  v67 = sub_27554D4A8();
  *&v98 = v67;
  v68 = sub_27554D478();
  v69 = v94;
  (*(*(v68 - 8) + 56))(v94, 1, 1, v68);
  sub_275515E2C(&qword_2809F5E68, &qword_2809F5E48, &qword_275551088);
  sub_27553CF8C(&qword_2809F5848, sub_2755155D4);
  v70 = v88;
  v71 = v90;
  sub_27554C868();
  sub_275514DA8(v69, &qword_2809F5828, &qword_275551070);
  (*(v95 + 8))(v66, v96);
  (*(v91 + 8))(v64, v71);

  swift_allocObject();
  swift_weakInit();
  sub_275515E2C(&qword_2809F5E70, &qword_2809F5E50, &unk_275551090);
  v72 = v92;
  sub_27554C898();

  (*(v93 + 8))(v70, v72);
  swift_beginAccess();
  sub_27554C798();
  swift_endAccess();

  sub_275527FCC();
  sub_275529044();
  sub_2755297EC();
  __swift_destroy_boxed_opaque_existential_1(v100);
  return a2;
}

uint64_t sub_27553BF20(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_27554D678() & 1;
  }
}

uint64_t sub_27553BF78()
{
  v1 = type metadata accessor for AccountCreationStartupPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_27554CA28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v25 = *(v6 + 64);
  v8 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27554C988();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_27554C9C8();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *&v8[v11];
  }

  v14 = v2 | v7;
  v15 = (v3 + v4 + v7) & ~v7;
  v16 = *&v8[v1[7] + 8];

  v17 = &v8[v1[8]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = v17[16];
  sub_275539C14();
  v21 = *&v8[v1[9] + 8];

  v22 = *&v8[v1[10] + 8];

  v23 = *&v8[v1[11] + 8];

  (*(v6 + 8))(v0 + v15, v5);

  return MEMORY[0x2821FE8E8](v0, v15 + v25, v14 | 7);
}

uint64_t sub_27553C1EC(uint64_t *a1)
{
  v3 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_27554CA28() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_275533AFC(a1);
}

uint64_t sub_27553C2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D08, &qword_275550EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553C374(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountCreationStartupPageView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27553C458()
{
  result = qword_2809F5D50;
  if (!qword_2809F5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D48, &qword_275550F18);
    sub_27553C510();
    sub_275515E2C(&qword_2809F5080, &qword_2809F5088, &qword_27554EBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5D50);
  }

  return result;
}

unint64_t sub_27553C510()
{
  result = qword_2809F5D58;
  if (!qword_2809F5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5D58);
  }

  return result;
}

unint64_t sub_27553C5F8()
{
  result = qword_2809F5DA8;
  if (!qword_2809F5DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D68, &qword_275550F48);
    sub_27553C6B0();
    sub_275515E2C(&qword_2809F5DF0, &qword_2809F5D98, &qword_275550F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DA8);
  }

  return result;
}

unint64_t sub_27553C6B0()
{
  result = qword_2809F5DB0;
  if (!qword_2809F5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D90, &qword_275550F70);
    sub_27553C768();
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DB0);
  }

  return result;
}

unint64_t sub_27553C768()
{
  result = qword_2809F5DB8;
  if (!qword_2809F5DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D88, &qword_275550F68);
    sub_27553C84C(&qword_2809F5DC0, &qword_2809F5D80, &qword_275550F60, sub_27553C8D0);
    sub_275515E2C(&qword_2809F4F58, &qword_2809F4F60, &qword_275550FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DB8);
  }

  return result;
}

uint64_t sub_27553C84C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27553C8D0()
{
  result = qword_2809F5DC8;
  if (!qword_2809F5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5D78, &qword_275550F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5DD0, &qword_275550FB8);
    sub_27553C998();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DC8);
  }

  return result;
}

unint64_t sub_27553C998()
{
  result = qword_2809F5DD8;
  if (!qword_2809F5DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5DD0, &qword_275550FB8);
    sub_275515E2C(&qword_2809F5DE0, &qword_2809F5DE8, &unk_275550FC0);
    sub_275515E2C(&qword_2809F4F48, &qword_2809F4F50, &unk_27554E9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DD8);
  }

  return result;
}

unint64_t sub_27553CA7C()
{
  result = qword_2809F5DF8;
  if (!qword_2809F5DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5DA0, &qword_275550FB0);
    sub_275515E2C(&qword_2809F5B68, &qword_2809F5B58, &qword_275550BA8);
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5DF8);
  }

  return result;
}

uint64_t sub_27553CB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_27553CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_27553CB88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27554CAF8();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for AccountCreationStartupPageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27554C988();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27554C9C8();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = *&v5[v1[7] + 8];

  v12 = &v5[v1[8]];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v12[16];
  sub_275539C14();
  v16 = *&v5[v1[9] + 8];

  v17 = *&v5[v1[10] + 8];

  v18 = *&v5[v1[11] + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27553CE84@<X0>(void *a1@<X8>)
{
  result = sub_27554CAD8();
  *a1 = v3;
  return result;
}

uint64_t sub_27553CED8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_27553CF8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27553CFD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_27553D018()
{
  result = qword_2809F5E78;
  if (!qword_2809F5E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5A80, &qword_275550818);
    sub_275515E2C(&qword_2809F5E80, &qword_2809F5E88, qword_2755510C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5E78);
  }

  return result;
}

uint64_t sub_27553D124()
{
  v0 = sub_27554C778();
  __swift_allocate_value_buffer(v0, qword_2809F8DA8);
  __swift_project_value_buffer(v0, qword_2809F8DA8);
  return sub_27554C768();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_27553D208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  sub_27553D364();
  for (i = (a1 + 96); ; i += 72)
  {
    v5 = *(i - 2);
    v4 = *(i - 1);
    v6 = *i;
    v7 = *(i - 6);
    v8 = *(i - 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55E0, &qword_27554F950);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_275550700;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_27551E7BC();
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;

    v10 = sub_27554D408();
    v11 = sub_27554D328();
    LODWORD(v7) = [v10 evaluateWithObject_];

    if (v6 != v7)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_27553D364()
{
  result = qword_2809F5E90;
  if (!qword_2809F5E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F5E90);
  }

  return result;
}

uint64_t sub_27553D3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_27554CE78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27553D484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_27554CE78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for iCloudMailTextField()
{
  result = qword_2809F5E98;
  if (!qword_2809F5E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27553D574()
{
  sub_27553D6F0(319, &qword_2809F5EA8, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_27552E9D8();
    if (v1 <= 0x3F)
    {
      sub_27553D698();
      if (v2 <= 0x3F)
      {
        sub_27553D6F0(319, &qword_2809F59F8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_27554CE78();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27553D698()
{
  if (!qword_2809F5EB0)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_27554D108();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F5EB0);
    }
  }
}

void sub_27553D6F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_27553D75C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for iCloudMailTextField();
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = v6;
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EB8, &qword_275551158);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EC0, &qword_275551160);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EC8, &qword_275551168);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v49 - v15;
  v16 = sub_27554CE58();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v61 = *v1;
  v62 = v21;
  v63 = v23;
  v64 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v59);
  v26 = v59;
  v25 = v60;

  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v61 = v20;
    v62 = v21;
    v63 = v23;
    v64 = v22;
    MEMORY[0x277C7AE00](&v59, v24);
    v29 = v59;
    v28 = v60;
  }

  else
  {
    v29 = *(v2 + 80);
    v30 = *(v2 + 88);
  }

  v61 = v29;
  v62 = v28;
  sub_275514CC4();
  v31 = sub_27554CED8();
  v33 = v32;
  v35 = v34;
  v36 = *(v53 + 44);
  v37 = sub_27554CE28();
  (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
  v38 = sub_27554CEC8();
  (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  sub_27554CE48();
  sub_27554CE38();
  v40 = v39;
  v42 = v41;
  (*(v50 + 8))(v19, v51);
  *v9 = sub_27554CBE8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED8, &unk_275551178);
  sub_27553DC34(v2, &v9[*(v43 + 44)], v40, v42);
  v44 = v2;
  v45 = v56;
  sub_27553F4D4(v44, v56);
  v46 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v47 = swift_allocObject();
  sub_27553F658(v45, v47 + v46);
  sub_275515E2C(&qword_2809F5EE0, &qword_2809F5EB8, &qword_275551158);
  sub_27554CF38();

  sub_275514D18(v31, v33, v35 & 1);

  return sub_275514DA8(v9, &qword_2809F5EB8, &qword_275551158);
}

uint64_t sub_27553DC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v74 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EE8, &qword_275551188);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = (&v61 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5010, &qword_275551190);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EF0, &qword_275551198);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v71 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = &v61 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EF8, &qword_2755511A0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v70 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - v25;
  *v26 = sub_27554CBE8();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F00, &qword_2755511A8) + 44)];
  v67 = a1;
  sub_27553E344(a1, v27);
  v69 = sub_27554D228();
  v29 = v28;
  v30 = sub_27554CBE8();
  v75[0] = 0;
  sub_27553EBEC(a1, &v90, a3, a4);
  v83 = *&v91[80];
  v84 = *&v91[96];
  v85 = *&v91[112];
  v79 = *&v91[16];
  v80 = *&v91[32];
  v81 = *&v91[48];
  v82 = *&v91[64];
  v77 = v90;
  v78 = *v91;
  v86[6] = *&v91[80];
  v86[7] = *&v91[96];
  v86[8] = *&v91[112];
  v86[2] = *&v91[16];
  v86[3] = *&v91[32];
  v86[4] = *&v91[48];
  v86[5] = *&v91[64];
  v86[0] = v90;
  v86[1] = *v91;
  sub_275514D40(&v77, &v87, &qword_2809F5F08, &qword_2755511B0);
  sub_275514DA8(v86, &qword_2809F5F08, &qword_2755511B0);
  *&v76[103] = v83;
  *&v76[87] = v82;
  *&v76[39] = v79;
  *&v76[23] = v78;
  *&v76[119] = v84;
  *&v76[135] = v85;
  *&v76[55] = v80;
  *&v76[71] = v81;
  *&v76[7] = v77;
  *(&v88[6] + 1) = *&v76[96];
  *(&v88[7] + 1) = *&v76[112];
  *(&v88[8] + 1) = *&v76[128];
  *(&v88[2] + 1) = *&v76[32];
  *(&v88[3] + 1) = *&v76[48];
  *(&v88[4] + 1) = *&v76[64];
  *(&v88[5] + 1) = *&v76[80];
  *(v88 + 1) = *v76;
  LOBYTE(a1) = v75[0];
  v87 = v30;
  LOBYTE(v88[0]) = v75[0];
  *(&v88[1] + 1) = *&v76[16];
  *&v88[9] = *(&v85 + 1);
  v31 = v69;
  *(&v88[9] + 1) = v69;
  v89 = v29;
  v32 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F10, &qword_2755511B8) + 36)];
  v33 = v88[8];
  *(v32 + 8) = v88[7];
  *(v32 + 9) = v33;
  *(v32 + 10) = v88[9];
  v34 = v88[4];
  *(v32 + 4) = v88[3];
  *(v32 + 5) = v34;
  v35 = v88[6];
  *(v32 + 6) = v88[5];
  *(v32 + 7) = v35;
  v36 = v88[0];
  *v32 = v87;
  *(v32 + 1) = v36;
  v37 = v88[2];
  *(v32 + 2) = v88[1];
  *(v32 + 3) = v37;
  *&v91[97] = *&v76[96];
  *&v91[113] = *&v76[112];
  *v92 = *&v76[128];
  *&v91[33] = *&v76[32];
  *&v91[49] = *&v76[48];
  *&v91[65] = *&v76[64];
  *&v91[81] = *&v76[80];
  v38 = *&v76[16];
  *&v91[1] = *v76;
  *(v32 + 22) = v89;
  v90 = v30;
  v39 = v68;
  v91[0] = a1;
  *&v91[17] = v38;
  *&v92[15] = *&v76[143];
  v93 = v31;
  v94 = v29;
  sub_275514D40(&v87, v75, &qword_2809F5F18, &qword_2755511C0);
  sub_275514DA8(&v90, &qword_2809F5F18, &qword_2755511C0);
  KeyPath = swift_getKeyPath();
  v41 = *(v21 + 44);
  v69 = v26;
  v42 = &v26[v41];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5C78, &qword_275550CE8) + 28);
  v44 = *MEMORY[0x277CDFA88];
  v45 = sub_27554C9F8();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = KeyPath;
  v46 = 1;
  if (*(v67 + 72) == 1)
  {
    v47 = v62;
    sub_27554C958();
    v49 = v63;
    v48 = v64;
    v50 = *(v64 + 16);
    v51 = v65;
    v50(v63, v47, v65);
    v52 = v66;
    *v66 = 0;
    *(v52 + 8) = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F28, &unk_275551208);
    v50((v52 + *(v53 + 48)), v49, v51);
    v54 = *(v48 + 8);
    v54(v47, v51);
    v54(v49, v51);
    sub_27553F724(v52, v39);
    v46 = 0;
  }

  (*(v72 + 56))(v39, v46, 1, v73);
  v56 = v69;
  v55 = v70;
  sub_275514D40(v69, v70, &qword_2809F5EF8, &qword_2755511A0);
  v57 = v71;
  sub_275514D40(v39, v71, &qword_2809F5EF0, &qword_275551198);
  v58 = v74;
  sub_275514D40(v55, v74, &qword_2809F5EF8, &qword_2755511A0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F20, &qword_275551200);
  sub_275514D40(v57, v58 + *(v59 + 48), &qword_2809F5EF0, &qword_275551198);
  sub_275514DA8(v39, &qword_2809F5EF0, &qword_275551198);
  sub_275514DA8(v56, &qword_2809F5EF8, &qword_2755511A0);
  sub_275514DA8(v57, &qword_2809F5EF0, &qword_275551198);
  return sub_275514DA8(v55, &qword_2809F5EF8, &qword_2755511A0);
}

uint64_t sub_27553E344@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F40, &qword_275551258);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v65 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F48, &qword_275551260);
  v66 = *(v71 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v71);
  v9 = &v65 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F50, &qword_275551268);
  v70 = *(v72 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v68 = &v65 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F58, &qword_275551270);
  v69 = *(v74 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v74);
  v67 = &v65 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F60, &qword_275551278);
  v75 = *(v76 - 8);
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v65 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F68, &qword_275551280);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  v17 = MEMORY[0x28223BE20](v79);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v65 - v19;
  v20 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v93 = *a1;
  v94 = v21;
  v95 = v23;
  v96 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v88);
  v24 = v88;

  v25 = HIBYTE(*(&v24 + 1)) & 0xFLL;
  if ((*(&v24 + 1) & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v26 = *(a1 + 80);
    v28 = *(a1 + 88);
  }

  v82 = v26;
  v83 = v27;
  v93 = v20;
  v94 = v21;
  v95 = v23;
  v96 = v22;
  sub_27554D168();
  sub_275514CC4();
  sub_27554D258();
  v29 = sub_275515E2C(&qword_2809F5F70, &qword_2809F5F48, &qword_275551260);
  v30 = v68;
  v31 = v71;
  MEMORY[0x277C7AC20](1, v71, v29);
  (*(v66 + 8))(v9, v31);
  sub_27554CCF8();
  v32 = sub_27554CD08();
  (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
  v93 = v31;
  v94 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v67;
  v35 = v72;
  sub_27554CFA8();
  sub_275514DA8(v6, &qword_2809F5F40, &qword_275551258);
  (*(v70 + 8))(v30, v35);
  v93 = v35;
  v94 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v73;
  v38 = v74;
  sub_27554CF28();
  (*(v69 + 8))(v34, v38);
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  LOBYTE(v93) = *(a1 + 32);
  v94 = v39;
  LOBYTE(v95) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D60, &qword_275550F40);
  sub_27554C8C8();
  v93 = v38;
  v94 = v36;
  swift_getOpaqueTypeConformance2();
  v41 = v81;
  v42 = v76;
  sub_27554CFD8();

  (*(v75 + 8))(v37, v42);
  v43 = *(a1 + 64);
  v93 = *(a1 + 56);
  v94 = v43;

  v44 = sub_27554CED8();
  v46 = v45;
  LOBYTE(v37) = v47;
  v76 = v48;
  KeyPath = swift_getKeyPath();
  LODWORD(v75) = sub_27554CCC8();
  v50 = v37 & 1;
  LOBYTE(v82) = v37 & 1;
  v86 = 0;
  v51 = v78;
  v52 = *(v78 + 16);
  v53 = v77;
  v54 = v79;
  v52(v77, v41, v79);
  v55 = v80;
  v52(v80, v53, v54);
  v56 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F78, &qword_275551288) + 48)];
  *&v88 = v44;
  *(&v88 + 1) = v46;
  v57 = v46;
  LOBYTE(v89) = v50;
  *(&v89 + 1) = *v87;
  DWORD1(v89) = *&v87[3];
  v58 = v76;
  *(&v89 + 1) = v76;
  *&v90 = KeyPath;
  v59 = KeyPath;
  *(&v90 + 1) = 1;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = v84;
  BYTE3(v91) = v85;
  LODWORD(KeyPath) = v75;
  HIDWORD(v91) = v75;
  v92 = 0;
  v60 = v88;
  v61 = v89;
  v62 = v91;
  *(v56 + 2) = v90;
  *(v56 + 3) = v62;
  *v56 = v60;
  *(v56 + 1) = v61;
  sub_275514D40(&v88, &v93, &qword_2809F5F80, &unk_275551290);
  v63 = *(v51 + 8);
  v63(v81, v54);
  v93 = v44;
  v94 = v57;
  LOBYTE(v95) = v50;
  *(&v95 + 1) = *v87;
  HIDWORD(v95) = *&v87[3];
  v96 = v58;
  v97 = v59;
  v98 = 1;
  v99 = 0;
  v100 = v84;
  v101 = v85;
  v102 = KeyPath;
  v103 = 0;
  sub_275514DA8(&v93, &qword_2809F5F80, &unk_275551290);
  return (v63)(v53, v54);
}

uint64_t sub_27553EBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for iCloudMailTextField();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v63 = *a1;
  v64 = v11;
  v65 = v12;
  v66 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v58);
  v15 = v58;

  v16 = HIBYTE(*(&v15 + 1)) & 0xFLL;
  if ((*(&v15 + 1) & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v63 = v10;
    v64 = v11;
    v65 = v12;
    v66 = v13;
    MEMORY[0x277C7AE00](&v58, v14);
    v17 = *(&v58 + 1);
    v18 = v58;
  }

  else
  {
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
  }

  v63 = v18;
  v64 = v17;
  sub_275514CC4();
  v20 = sub_27554CED8();
  v47 = v20;
  v48 = v21;
  v23 = v22;
  v51 = v24;
  v53 = sub_27554D218();
  v52 = v25;
  v26 = v50;
  sub_27553F4D4(a1, v50);
  v27 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v49 = v29;
  sub_27553F658(v26, v29 + v27);
  v30 = (v29 + v28);
  *v30 = a3;
  v30[1] = a4;
  LOBYTE(v29) = v23 & 1;
  v72 = v23 & 1;
  LODWORD(v50) = v23 & 1;
  v31 = *(a1 + 144);
  LOBYTE(v63) = *(a1 + 136);
  v64 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  LOBYTE(v28) = v58;
  v32 = *(a1 + 64);
  v63 = *(a1 + 56);
  v64 = v32;

  v33 = sub_27554CED8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  KeyPath = swift_getKeyPath();
  v41 = sub_27554CCC8();
  LOBYTE(v27) = v37 & 1;
  v57 = v37 & 1;
  v56 = 0;
  *&v58 = v20;
  v42 = v48;
  *(&v58 + 1) = v48;
  LOBYTE(v59) = v29;
  *(&v59 + 1) = v51;
  *&v60 = sub_27553F8C0;
  v43 = v49;
  *(&v60 + 1) = v49;
  *&v61 = v53;
  *(&v61 + 1) = v52;
  v62 = 0;
  v54 = v28 ^ 1;
  v44 = v61;
  *(a2 + 32) = v60;
  *(a2 + 48) = v44;
  v45 = v59;
  *a2 = v58;
  *(a2 + 16) = v45;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v28;
  *(a2 + 81) = v28 ^ 1;
  *(a2 + 88) = v33;
  *(a2 + 96) = v35;
  *(a2 + 104) = v27;
  *(a2 + 112) = v39;
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = 1;
  *(a2 + 136) = 0;
  *(a2 + 140) = v41;
  sub_275514D40(&v58, &v63, &qword_2809F5F30, &qword_275551248);
  sub_275514D28(v33, v35, v27);

  sub_275514D18(v33, v35, v27);

  v63 = v47;
  v64 = v42;
  LOBYTE(v65) = v50;
  *(&v65 + 1) = *v55;
  HIDWORD(v65) = *&v55[3];
  v66 = v51;
  v67 = sub_27553F8C0;
  v68 = v43;
  v69 = v53;
  v70 = v52;
  v71 = 0;
  return sub_275514DA8(&v63, &qword_2809F5F30, &qword_275551248);
}

uint64_t sub_27553F000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v43 = a1;
  v45 = a3;
  v9 = sub_27554C9A8();
  v10 = *(v9 - 8);
  v46 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for iCloudMailTextField();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_27554D048();
  v17 = *a2;
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v40 = a2;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  v51 = v44;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5ED0, &qword_275551170);
  MEMORY[0x277C7AE00](&v47, v20);
  v41 = *(&v47 + 1);
  v48 = v47;
  sub_27553F4D4(a2, v16);
  v42 = *(v10 + 16);
  v21 = v12;
  v22 = a1;
  v23 = v9;
  v37 = v9;
  v42(v12, v22, v9);
  v24 = *(v14 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v10 + 80);
  v28 = (v27 + v26 + 16) & ~v27;
  v39 = v24 | v27;
  v29 = swift_allocObject();
  sub_27553F658(v16, v29 + v25);
  v30 = (v29 + v26);
  *v30 = a4;
  v30[1] = a5;
  v38 = *(v10 + 32);
  v38(v29 + v28, v21, v23);
  v31 = v45;
  sub_27554D008();

  sub_27553F4D4(v40, v16);
  v32 = v37;
  v42(v21, v43, v37);
  v33 = swift_allocObject();
  sub_27553F658(v16, v33 + v25);
  v34 = (v33 + v26);
  *v34 = a4;
  v34[1] = a5;
  v38(v33 + v28, v21, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5F38, &qword_275551250);
  v36 = (v31 + *(result + 36));
  *v36 = sub_27553FC80;
  v36[1] = v33;
  v36[2] = 0;
  v36[3] = 0;
  return result;
}

uint64_t sub_27553F370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27554C998();
  v5 = *(a3 + 136);
  v6 = *(a3 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  return sub_27554D0F8();
}

uint64_t sub_27553F3EC(uint64_t a1)
{
  sub_27554C998();
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  return sub_27554D0F8();
}

uint64_t sub_27553F468(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5D60, &qword_275550F40);
  return sub_27554C8B8();
}

uint64_t sub_27553F4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudMailTextField();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553F538()
{
  v1 = (type metadata accessor for iCloudMailTextField() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 88);

  v11 = *(v0 + v3 + 128);

  v12 = *(v0 + v3 + 144);

  v13 = v1[13];
  v14 = sub_27554CE78();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27553F658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudMailTextField();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553F6BC()
{
  v1 = *(type metadata accessor for iCloudMailTextField() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_27553F468(v2);
}

uint64_t sub_27553F724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5EE8, &qword_275551188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27553F794()
{
  v1 = (type metadata accessor for iCloudMailTextField() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v3);

  v7 = *(v5 + 1);

  v8 = *(v5 + 3);

  v9 = *(v5 + 5);

  v10 = *(v5 + 8);

  v11 = *(v5 + 11);

  v12 = *(v5 + 16);

  v13 = *(v5 + 18);

  v14 = v1[13];
  v15 = sub_27554CE78();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_27553F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for iCloudMailTextField() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_27553F000(a1, v2 + v6, a2, v8, v9);
}

uint64_t sub_27553F970@<X0>(uint64_t a1@<X8>)
{
  result = sub_27554CBA8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_27553F9A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_27554CBB8();
}

uint64_t sub_27553F9D8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for iCloudMailTextField() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_27554C9A8() - 8);
  v9 = *(v2 + v7);
  v10 = *(v2 + v7 + 8);
  v11 = v2 + ((v7 + *(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_27553F370(a1, a2, v2 + v6);
}

uint64_t objectdestroy_10Tm()
{
  v1 = (type metadata accessor for iCloudMailTextField() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_27554C9A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(v11 + 3);

  v15 = *(v11 + 5);

  v16 = *(v11 + 8);

  v17 = *(v11 + 11);

  v18 = *(v11 + 16);

  v19 = *(v11 + 18);

  v20 = v1[13];
  v21 = sub_27554CE78();
  (*(*(v21 - 8) + 8))(&v11[v20], v21);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_27553FC80()
{
  v1 = *(type metadata accessor for iCloudMailTextField() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_27554C9A8() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_27553F3EC(v0 + v2);
}

uint64_t sub_27553FD60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5EB8, &qword_275551158);
  sub_275515E2C(&qword_2809F5EE0, &qword_2809F5EB8, &qword_275551158);
  return swift_getOpaqueTypeConformance2();
}

id iCloudMailAccountProviderSwift.__allocating_init(presenter:appleAccount:accountStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator] = 0;
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift_presenter] = a1;
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount] = a2;
  *&v7[OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id iCloudMailAccountProviderSwift.init(presenter:appleAccount:accountStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator] = 0;
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift_presenter] = a1;
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount] = a2;
  *&v3[OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for iCloudMailAccountProviderSwift();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_27553FF9C()
{
  v1 = OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator;
  v2 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter);
    v5 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount);
    v6 = *(v0 + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore);
    v7 = type metadata accessor for LegacyMailAccountCreator();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler];
    *v9 = 0;
    *(v9 + 1) = 0;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController] = 0;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels] = MEMORY[0x277D84F90];
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader] = 0;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter] = v4;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount] = v5;
    *&v8[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore] = v6;
    v17.receiver = v8;
    v17.super_class = v7;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_2755400C0(int a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v89 = a2;
  v88 = a1;
  v82 = sub_27554C718();
  v80 = *(v82 - 8);
  v3 = *(v80 + 64);
  v4 = MEMORY[0x28223BE20](v82);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v75 - v6;
  v83 = type metadata accessor for AccountCreationStartupPageView();
  v7 = *(*(v83 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v83);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = (&v75 - v11);
  MEMORY[0x28223BE20](v10);
  v85 = &v75 - v12;
  v87 = sub_27554C6D8();
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v87);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_27554C778();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v78 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - v24;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v17, qword_2809F8DA8);
  v86 = v18[2];
  v86(v25, v26, v17);
  v27 = sub_27554C758();
  v28 = sub_27554D428();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v88 & 1;
    _os_log_impl(&dword_27550C000, v27, v28, "[iCloudMailAccountProviderSwift] present account creation with alert: %{BOOL}d", v29, 8u);
    MEMORY[0x277C7BAC0](v29, -1, -1);
  }

  v30 = v18[1];
  v30(v25, v17);
  v31 = v87;
  (*(v13 + 104))(v16, *MEMORY[0x277D24580], v87);
  v32 = sub_27554C6C8();
  (*(v13 + 8))(v16, v31);
  if (v32)
  {
    v33 = v77;
    v86(v77, v26, v17);
    v34 = sub_27554C758();
    v35 = sub_27554D428();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v91;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_27550C000, v34, v35, "[iCloudMailAccountProviderSwift] present account creation: new flow", v38, 2u);
      MEMORY[0x277C7BAC0](v38, -1, -1);
    }

    v30(v33, v17);
    v39 = *(v37 + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore);
    v40 = *(v37 + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount);
    v41 = type metadata accessor for ACRepositoryDefault();
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    *(v42 + 24) = v40;
    v96 = v41;
    v97 = &off_28842B518;
    *&v95 = v42;
    v43 = swift_allocObject();
    v44 = v90;
    *(v43 + 16) = v89;
    *(v43 + 24) = v44;
    KeyPath = swift_getKeyPath();
    v46 = v81;
    *v81 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
    swift_storeEnumTagMultiPayload();
    v47 = v83;
    v48 = *(v83 + 20);
    *(v46 + v48) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
    swift_storeEnumTagMultiPayload();
    v49 = v46 + v47[9];
    v50 = v39;
    v51 = v40;

    *v49 = sub_27554C8D8() & 1;
    *(v49 + 8) = v52;
    *(v49 + 16) = v53 & 1;
    v54 = v46 + v47[10];
    v92 = 0;
    sub_27554D0D8();
    v55 = v94;
    *v54 = v93;
    *(v54 + 8) = v55;
    v56 = (v46 + v47[11]);
    *v56 = 0xD000000000000027;
    v56[1] = 0x80000002755523B0;
    v57 = v79;
    v58 = v80;
    v59 = *(v80 + 104);
    v60 = v82;
    v59(v79, *MEMORY[0x277D245A0], v82);
    LOBYTE(v39) = sub_27554C708();
    v61 = *(v58 + 8);
    v61(v57, v60);
    v62 = 0;
    if (v39)
    {
      v63 = v76;
      v59(v76, *MEMORY[0x277D24598], v60);
      v62 = sub_27554C708();
      v61(v63, v60);
    }

    *(v46 + v47[12]) = v62 & 1;
    v64 = (v46 + v47[7]);
    *v64 = sub_275541648;
    v64[1] = v43;
    *(v46 + v47[6]) = 0;
    v65 = swift_allocObject();
    sub_27551EA5C(&v95, v65 + 16);
    v66 = v46 + v47[8];
    *v66 = sub_2755416BC;
    *(v66 + 8) = v65;
    *(v66 + 16) = 0;
    v67 = v85;
    sub_275539C1C(v46, v85);
    sub_275539BAC(v67, v84);
    v68 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5FA8, &unk_275551310));
    v69 = sub_27554CC58();
    [*(v91 + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter) presentViewController:v69 animated:1 completion:0];

    sub_2755416C4(v67);
  }

  else
  {
    v70 = v78;
    v86(v78, v26, v17);
    v71 = sub_27554C758();
    v72 = sub_27554D428();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_27550C000, v71, v72, "[iCloudMailAccountProviderSwift] present account creation: legacy flow", v73, 2u);
      MEMORY[0x277C7BAC0](v73, -1, -1);
    }

    v30(v70, v17);
    v74 = sub_27553FF9C();
    sub_275542348(v88 & 1, v89, v90);
  }
}

uint64_t sub_2755409DC(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v95 = a1;
  v88 = sub_27554C718();
  v86 = *(v88 - 8);
  v2 = *(v86 + 64);
  v3 = MEMORY[0x28223BE20](v88);
  v84 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v85 = &v83 - v5;
  v89 = type metadata accessor for AccountCreationStartupPageView();
  v6 = *(*(v89 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v89);
  v90 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v87 = (&v83 - v10);
  MEMORY[0x28223BE20](v9);
  v91 = &v83 - v11;
  v94 = sub_27554C6D8();
  v12 = *(v94 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v94);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_27554C778();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v83 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v83 - v25;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_2809F8DA8);
  v28 = v17[2];
  v92 = v27;
  v93 = v28;
  (v28)(v26);
  v29 = sub_27554C758();
  v30 = sub_27554D428();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v83 = v24;
    v32 = v16;
    v33 = v21;
    v34 = v17;
    v35 = v31;
    *v31 = 0;
    _os_log_impl(&dword_27550C000, v29, v30, "[iCloudMailAccountProviderSwift] present account creation from Unified Settings", v31, 2u);
    v36 = v35;
    v17 = v34;
    v21 = v33;
    v16 = v32;
    v24 = v83;
    MEMORY[0x277C7BAC0](v36, -1, -1);
  }

  v37 = v17[1];
  v37(v26, v16);
  v38 = v94;
  (*(v12 + 104))(v15, *MEMORY[0x277D24580], v94);
  v39 = sub_27554C6C8();
  (*(v12 + 8))(v15, v38);
  if (v39)
  {
    v93(v24, v92, v16);
    v40 = sub_27554C758();
    v41 = sub_27554D428();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_27550C000, v40, v41, "[iCloudMailAccountProviderSwift] present account creation: new flow", v42, 2u);
      MEMORY[0x277C7BAC0](v42, -1, -1);
    }

    v37(v24, v16);
    v43 = v96;
    v44 = *(v96 + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore);
    v45 = *(v96 + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount);
    v46 = type metadata accessor for ACRepositoryDefault();
    v47 = swift_allocObject();
    *(v47 + 16) = v44;
    *(v47 + 24) = v45;
    v102 = v46;
    v103 = &off_28842B518;
    *&v101 = v47;
    KeyPath = swift_getKeyPath();
    v49 = v87;
    *v87 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A88, &qword_2755512D0);
    swift_storeEnumTagMultiPayload();
    v50 = v89;
    v51 = *(v89 + 20);
    *(v49 + v51) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5A90, &qword_275550880);
    swift_storeEnumTagMultiPayload();
    v52 = v49 + v50[9];
    v53 = v44;
    v54 = v45;
    *v52 = sub_27554C8D8() & 1;
    *(v52 + 8) = v55;
    *(v52 + 16) = v56 & 1;
    v57 = v49 + v50[10];
    v98 = 0;
    sub_27554D0D8();
    v58 = v100;
    *v57 = v99;
    *(v57 + 8) = v58;
    v59 = (v49 + v50[11]);
    *v59 = 0xD000000000000027;
    v59[1] = 0x80000002755523B0;
    v60 = v85;
    v61 = v86;
    v62 = *(v86 + 104);
    v63 = v88;
    v62(v85, *MEMORY[0x277D245A0], v88);
    LOBYTE(v45) = sub_27554C708();
    v64 = *(v61 + 8);
    v64(v60, v63);
    v65 = 0;
    if (v45)
    {
      v66 = v84;
      v62(v84, *MEMORY[0x277D24598], v63);
      v65 = sub_27554C708();
      v64(v66, v63);
    }

    *(v49 + v50[12]) = v65 & 1;
    v67 = (v49 + v50[7]);
    v68 = v97;
    *v67 = v95;
    v67[1] = v68;
    *(v49 + v50[6]) = 1;
    v69 = swift_allocObject();
    sub_27551EA5C(&v101, v69 + 16);
    v70 = v49 + v50[8];
    *v70 = sub_275541888;
    *(v70 + 8) = v69;
    *(v70 + 16) = 0;
    v71 = v91;
    sub_275539C1C(v49, v91);
    sub_275539BAC(v71, v90);
    v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5FA8, &unk_275551310));

    v73 = sub_27554CC58();
    [*(v43 + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter) presentViewController:v73 animated:1 completion:0];

    return sub_2755416C4(v71);
  }

  else
  {
    v93(v21, v92, v16);
    v75 = sub_27554C758();
    v76 = sub_27554D428();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_27550C000, v75, v76, "[iCloudMailAccountProviderSwift] present account creation: legacy flow", v77, 2u);
      MEMORY[0x277C7BAC0](v77, -1, -1);
    }

    v37(v21, v16);
    v78 = sub_27553FF9C();
    v79 = swift_allocObject();
    *(v79 + 16) = v95;
    *(v79 + 24) = v97;
    v80 = &v78[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler];
    v81 = *&v78[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler];
    v82 = *&v78[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler + 8];
    *v80 = sub_275541720;
    v80[1] = v79;

    sub_27554174C(v81);
    sub_275542968();
  }
}

id iCloudMailAccountProviderSwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudMailAccountProviderSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailAccountProviderSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275541448(uint64_t a1)
{
  v2 = sub_27554C9C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_27554CB58();
}

uint64_t sub_275541510(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_27554155C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_27554156C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2755415E0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_275541610()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275541648()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2755416C4(uint64_t a1)
{
  v2 = type metadata accessor for AccountCreationStartupPageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275541720()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_27554174C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27554175C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275541828()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275541898(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  v12 = *a3;
  v9[6] = a1;
  v9[7] = a2;
  v5 = *(a3 + 2);
  v10 = *(a3 + 1);
  v11[0] = v5;
  *(v11 + 9) = *(a3 + 41);
  v6 = swift_allocObject();
  v7 = *(a3 + 1);
  v6[1] = *a3;
  v6[2] = v7;
  v6[3] = *(a3 + 2);
  *(v6 + 57) = *(a3 + 41);

  sub_275541A34(&v12, v9);

  sub_275541A90(&v10, v9);
  sub_275514CC4();
  return sub_27554D128();
}

uint64_t sub_275541980()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2755419C8()
{
  v2 = v0[1];
  v3 = v0[2];
  *v4 = v0[3];
  *&v4[9] = *(v0 + 57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5B18, &qword_275550A18);
  return sub_27554D158();
}

uint64_t sub_275541A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5800, &qword_275550180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275541B04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_275541B48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F8, &qword_2755513D8);
    v2 = sub_27554D608();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    sub_27551E914(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_27551E990(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_27551E990(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_27551E990(v32, v33);
    v17 = *(v2 + 40);
    result = sub_27554D548();
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
    result = sub_27551E990(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_275541E10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F8, &qword_2755513D8);
    v2 = sub_27554D608();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_27551E990(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_27551E990(v32, v33);
    v17 = *(v2 + 40);
    result = sub_27554D548();
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
    result = sub_27551E990(v33, (*(v2 + 56) + 32 * v10));
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

void sub_2755420C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_275542140(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_2755421B8()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController;
  v2 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController);
  }

  else
  {
    v4 = sub_275542218();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_275542218()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (unk_28842A288 == v2 || qword_28842A280 == v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [v0 setModalPresentationStyle_];
  return v0;
}

id sub_2755422C0()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader;
  v2 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D461D0]) init];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_275542348(char a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_27554174C(v6);
  if (a1)
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    v24 = v3;
    MEMORY[0x277C7B050](0xD000000000000012, 0x8000000275552620);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v11 = [v9 0x27A64F43BLL];
    MEMORY[0x277C7B050](0xD000000000000014, 0x8000000275552640);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v12 = sub_27554D328();

    v13 = sub_27554D328();

    v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:{1, 0xE000000000000000}];

    v15 = [v9 bundleForClass_];
    MEMORY[0x277C7B050](0xD000000000000013, 0x8000000275552660);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = sub_27554D328();

    v29 = sub_275547B98;
    v30 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_275542900;
    v28 = &block_descriptor_94;
    v18 = _Block_copy(&aBlock);

    v19 = objc_opt_self();
    v20 = [v19 actionWithTitle:v17 style:0 handler:{v18, 0xE000000000000000}];
    _Block_release(v18);

    v21 = [v9 bundleForClass_];
    aBlock = 2777980912;
    v26 = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4C45434E4143, 0xE600000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    sub_27554C588();

    v22 = sub_27554D328();

    v23 = [v19 actionWithTitle:v22 style:1 handler:{0, 0xE000000000000000}];

    [v14 addAction_];
    [v14 addAction_];
    [*(v24 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter) presentViewController:v14 animated:1 completion:0];
  }

  else
  {

    sub_275542968();
  }
}

void sub_2755428AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_275542968();
  }
}

void sub_275542900(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_275542968()
{
  v1 = sub_27554D278();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27554D2A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v11 = sub_27554D4A8();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_275547AF4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_66;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_275542BFC(char *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = *&a1[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount];
  v4 = a1;
  v5 = [v3 identifier];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 aa_authToken];
  if (v6)
  {

LABEL_4:
    v7 = [objc_opt_self() sharedServer];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_275547B04;
    v18 = v8;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_275520074;
    v16 = &block_descriptor_73;
    v9 = _Block_copy(&v13);

    [v7 configurationWithCompletion_];
    _Block_release(v9);

LABEL_7:

    return;
  }

  v10 = [v3 accountStore];
  if (v10)
  {
    v7 = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_275547AFC;
    *(v11 + 24) = v2;
    v17 = sub_275547B44;
    v18 = v11;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2755420C8;
    v16 = &block_descriptor_79;
    v12 = _Block_copy(&v13);

    [v7 renewCredentialsForAccount:v3 completion:v12];

    _Block_release(v12);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275542E70()
{
  v0 = [objc_opt_self() sharedServer];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_275547C24;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_275520074;
  v3[3] = &block_descriptor_90;
  v2 = _Block_copy(v3);

  [v0 configurationWithCompletion_];
  _Block_release(v2);
}