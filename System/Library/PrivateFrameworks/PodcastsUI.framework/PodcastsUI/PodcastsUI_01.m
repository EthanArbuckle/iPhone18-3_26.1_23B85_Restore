uint64_t sub_21B384DEC()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for EffectsArtworkProcessingStep() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_21B4C64F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v7(v0 + v3, v5);
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[11], v1);

  v7(v0 + v8, v5);

  return swift_deallocObject();
}

uint64_t sub_21B384F60()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for EffectsArtworkProcessingStep() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  v4 = sub_21B4C64F8();
  (*(*(v4 - 8) + 8))(v3, v4);
  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_21B3850EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B385198()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_21B4C7628();
  swift_getWitnessTable();
  sub_21B4C6238();

  return swift_getWitnessTable();
}

uint64_t sub_21B3852B0()
{
  swift_getAssociatedTypeWitness();
  sub_21B38536C();
  swift_getAssociatedConformanceWitness();
  sub_21B4C7648();

  return swift_getWitnessTable();
}

unint64_t sub_21B38536C()
{
  result = qword_281200408;
  if (!qword_281200408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281200408);
  }

  return result;
}

id sub_21B385440(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_21B3854A8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t type metadata accessor for NowPlayingArtwork.Data()
{
  result = qword_2811FF710;
  if (!qword_2811FF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B385540()
{
  result = sub_21B3F12CC(319, &qword_281200408);
  if (v1 <= 0x3F)
  {
    result = sub_21B4C5E78();
    if (v2 <= 0x3F)
    {
      result = sub_21B3F12CC(319, &qword_2811FCD30);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21B385664(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t ImageProvider.prefetching(artwork:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21B387934, 0, 0);
}

unint64_t sub_21B385784(uint64_t a1)
{
  sub_21B4C5888();
  v2 = MEMORY[0x277CC95F0];
  sub_21B3FB464(&qword_281200330, MEMORY[0x277CC95F0]);
  v3 = sub_21B4C9628();
  return sub_21B3FAFEC(a1, v3, MEMORY[0x277CC95F0], &qword_281200328, v2, MEMORY[0x277CC9610]);
}

uint64_t sub_21B385858(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21B4C5888();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21B385784(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21B45C97C();
      goto LABEL_7;
    }

    sub_21B385A24(v17, a3 & 1);
    v22 = sub_21B385784(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21B393780(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21B4CA688();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_21B385A24(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21B4C5888();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87C50);
  v39 = a2;
  result = sub_21B4CA4D8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_21B45EBD4(&qword_281200330, MEMORY[0x277CC95F0]);
      result = sub_21B4C9628();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21B385E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B385E68()
{
  sub_21B4C64F8();
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_21B385F34(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_21B385F58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B36C50C(a1, v4);
}

uint64_t sub_21B386010(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v65) = a5;
  v62 = a3;
  v64 = a2;
  v6 = sub_21B4C7388();
  v63 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v12 = sub_21B4C73F8();
  v68 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = sub_21B4C5888();
  result = MEMORY[0x28223BE20](v18);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v20)
  {
    v53 = v21;
    v58 = v15;
    v59 = v12;
    v60 = v17;
    v61 = v11;
    v55 = v20;
    v56 = v9;
    v57 = v5;
    sub_21B4C6498();
    v54 = v6;
    if (v67)
    {
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v24 = sub_21B4C71D8();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(v66);
    }

    else
    {
      sub_21B3F2D94(v66, &qword_27CD86D80);
      sub_21B4C5878();
      v24 = sub_21B4C5868();
      v26 = v27;
      (*(v53 + 8))(v23, v18);
    }

    v28 = v65;
    v29 = v58;
    sub_21B4C73A8();
    sub_21B4C73A8();
    sub_21B4C73C8();
    sub_21B4C7358();
    v30 = v68 + 8;
    v31 = v59;
    v65 = *(v68 + 8);
    v65(v29, v59);

    v32 = sub_21B4C73C8();
    v33 = sub_21B4C9E58();
    v34 = sub_21B4CA148();
    v64 = v24;
    if ((v34 & 1) == 0)
    {

      v38 = v55;
      v40 = v56;
      v39 = v63;
      v41 = v61;
LABEL_17:
      v47 = v54;
      (*(v39 + 16))(v40, v41, v54);
      sub_21B4C7458();
      swift_allocObject();
      v48 = sub_21B4C7448();
      (*(v39 + 8))(v41, v47);
      result = (v65)(v60, v31);
      v49 = v64;
      *v38 = v48;
      v38[1] = v49;
      v38[2] = v26;
      return result;
    }

    v68 = v30;
    LODWORD(v58) = v33;
    if (v28)
    {
      v36 = v62;
      v35 = HIDWORD(v62);
      if (!HIDWORD(v62))
      {
        v35 = v62 & 0xFFFFF800;
        v42 = 55296;
        if (v35 == 55296)
        {
          __break(1u);
          goto LABEL_26;
        }

        v35 = v62 >> 16;
        if (v62 >> 16 <= 0x10)
        {
          if (v62 <= 0x7F)
          {
            v43 = v62 + 1;
LABEL_15:
            v66[0] = (v43 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v43) & 0x18)));

            v37 = v66;
            v38 = v55;
            v39 = v63;
            goto LABEL_16;
          }

LABEL_22:
          v42 = (v36 & 0x3F) << 8;
          if (v36 < 0x800)
          {
            v50 = (v62 >> 6) + v42;
            v51 = 33217;
LABEL_24:
            v43 = v50 + v51;
            goto LABEL_15;
          }

LABEL_26:
          v52 = (v42 | (v62 >> 6) & 0x3F) << 8;
          if (!v35)
          {
            v43 = (v62 >> 12) + v52 + 8487393;
            goto LABEL_15;
          }

          v50 = (v62 >> 18) + ((v52 | (v62 >> 12) & 0x3F) << 8);
          v51 = -2122219023;
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      v37 = v62;
      if (v62)
      {
        v38 = v55;
        v39 = v63;
LABEL_16:
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v66[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_21B36CF74(v24, v26, v66);
        v41 = v61;
        v46 = sub_21B4C7368();
        _os_signpost_emit_with_name_impl(&dword_21B365000, v32, v58, v46, v37, "[identifier=%{name=identifier}s] LibraryImageProviderFetch", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x21CEF5710](v45, -1, -1);
        MEMORY[0x21CEF5710](v44, -1, -1);

        v31 = v59;
        v40 = v56;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_21B3865C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B40AB58;

  return sub_21B386694(a1, v4, v5, v6);
}

uint64_t sub_21B386694(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21B40998C;

  return v7();
}

uint64_t sub_21B38677C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v65) = a5;
  v62 = a3;
  v64 = a2;
  v6 = sub_21B4C7388();
  v63 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v12 = sub_21B4C73F8();
  v68 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = sub_21B4C5888();
  result = MEMORY[0x28223BE20](v18);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v20)
  {
    v53 = v21;
    v58 = v15;
    v59 = v12;
    v60 = v17;
    v61 = v11;
    v55 = v20;
    v56 = v9;
    v57 = v5;
    sub_21B4C6498();
    v54 = v6;
    if (v67)
    {
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v24 = sub_21B4C71D8();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(v66);
    }

    else
    {
      sub_21B3F2D94(v66, &qword_27CD86D80);
      sub_21B4C5878();
      v24 = sub_21B4C5868();
      v26 = v27;
      (*(v53 + 8))(v23, v18);
    }

    v28 = v65;
    v29 = v58;
    sub_21B4C73A8();
    sub_21B4C73A8();
    sub_21B4C73C8();
    sub_21B4C7358();
    v30 = v68 + 8;
    v31 = v59;
    v65 = *(v68 + 8);
    v65(v29, v59);

    v32 = sub_21B4C73C8();
    v33 = sub_21B4C9E58();
    v34 = sub_21B4CA148();
    v64 = v24;
    if ((v34 & 1) == 0)
    {

      v38 = v55;
      v40 = v56;
      v39 = v63;
      v41 = v61;
LABEL_17:
      v47 = v54;
      (*(v39 + 16))(v40, v41, v54);
      sub_21B4C7458();
      swift_allocObject();
      v48 = sub_21B4C7448();
      (*(v39 + 8))(v41, v47);
      result = (v65)(v60, v31);
      v49 = v64;
      *v38 = v48;
      v38[1] = v49;
      v38[2] = v26;
      return result;
    }

    v68 = v30;
    LODWORD(v58) = v33;
    if (v28)
    {
      v36 = v62;
      v35 = HIDWORD(v62);
      if (!HIDWORD(v62))
      {
        v35 = v62 & 0xFFFFF800;
        v42 = 55296;
        if (v35 == 55296)
        {
          __break(1u);
          goto LABEL_26;
        }

        v35 = v62 >> 16;
        if (v62 >> 16 <= 0x10)
        {
          if (v62 <= 0x7F)
          {
            v43 = v62 + 1;
LABEL_15:
            v66[0] = (v43 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v43) & 0x18)));

            v37 = v66;
            v38 = v55;
            v39 = v63;
            goto LABEL_16;
          }

LABEL_22:
          v42 = (v36 & 0x3F) << 8;
          if (v36 < 0x800)
          {
            v50 = (v62 >> 6) + v42;
            v51 = 33217;
LABEL_24:
            v43 = v50 + v51;
            goto LABEL_15;
          }

LABEL_26:
          v52 = (v42 | (v62 >> 6) & 0x3F) << 8;
          if (!v35)
          {
            v43 = (v62 >> 12) + v52 + 8487393;
            goto LABEL_15;
          }

          v50 = (v62 >> 18) + ((v52 | (v62 >> 12) & 0x3F) << 8);
          v51 = -2122219023;
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {

      v37 = v62;
      if (v62)
      {
        v38 = v55;
        v39 = v63;
LABEL_16:
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v66[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_21B36CF74(v24, v26, v66);
        v41 = v61;
        v46 = sub_21B4C7368();
        _os_signpost_emit_with_name_impl(&dword_21B365000, v32, v58, v46, v37, "[identifier=%{name=identifier}s] StoreLibraryMultiplexingImageProviderFetch", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x21CEF5710](v45, -1, -1);
        MEMORY[0x21CEF5710](v44, -1, -1);

        v31 = v59;
        v40 = v56;
        goto LABEL_17;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_21B386D34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21B40AB58;

  return sub_21B386E18(v2, v3, v4);
}

uint64_t sub_21B386E18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21B40AB58;

  return v6();
}

void sub_21B386F00()
{
  sub_21B4C64F8();
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_21B386DF4(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_21B386FCC@<X0>(uint64_t *a1@<X8>)
{
  result = _s10PodcastsUI22PreparedArtworkRequestV3keySo8NSStringCvg_0();
  *a1 = result;
  return result;
}

uint64_t _s10PodcastsUI17NowPlayingArtworkO4DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NowPlayingArtwork.Data();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C98);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_21B387304(a1, &v27 - v18);
  sub_21B387304(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21B387304(v19, v15);
    v24 = *v15;
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_8:
      v25 = *&v19[v20];
      sub_21B3F12CC(0, &qword_2811FCAB8);
      v22 = sub_21B4CA098();

      goto LABEL_9;
    }

LABEL_6:

LABEL_11:
    sub_21B3FD6E8(v19);
    v22 = 0;
    return v22 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21B387304(v19, v10);
    v24 = *v10;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_21B387304(v19, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21B387368(v13, MEMORY[0x277D3D488]);
    goto LABEL_11;
  }

  sub_21B39337C(&v19[v20], v6);
  v22 = MEMORY[0x21CEEF590](v13, v6);
  v23 = MEMORY[0x277D3D488];
  sub_21B387368(v6, MEMORY[0x277D3D488]);
  sub_21B387368(v13, v23);
LABEL_9:
  sub_21B387368(v19, type metadata accessor for NowPlayingArtwork.Data);
  return v22 & 1;
}

uint64_t sub_21B387304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingArtwork.Data();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B387368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B3873C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B387428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static ExtendedLaunchController.shared.getter()
{
  if (qword_2811FEB68 != -1)
  {
    swift_once();
  }

  v1 = qword_2811FEB70;

  return v1;
}

id sub_21B38753C()
{
  result = [objc_allocWithZone(type metadata accessor for ExtendedLaunchController()) init];
  qword_2811FEB70 = result;
  return result;
}

uint64_t sub_21B387628@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (**a3)(void *a1)@<X8>)
{
  ObjectType = swift_getObjectType();
  v8 = *(v3 + OBJC_IVAR____TtC10PodcastsUI24ExtendedLaunchController_lock);
  os_unfair_lock_lock((v8 + 28));
  sub_21B387A34((v8 + 16), &v24);
  os_unfair_lock_unlock((v8 + 28));
  v9 = v24;
  v10 = v25;
  if (qword_2811FEB80 != -1)
  {
    swift_once();
  }

  v11 = sub_21B4C7558();
  __swift_project_value_buffer(v11, qword_2811FEB88);

  v12 = sub_21B4C7538();
  v13 = sub_21B4C9D08();

  if (os_log_type_enabled(v12, v13))
  {
    v22 = v13;
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v14 = 136315394;
    v15 = sub_21B387CDC(v9, v10);
    v17 = v10;
    v18 = sub_21B36CF74(v15, v16, &v24);

    *(v14 + 4) = v18;
    v10 = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_21B36CF74(a1, a2, &v24);
    _os_log_impl(&dword_21B365000, v12, v22, "Loading handle will be %s for %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v23, -1, -1);
    MEMORY[0x21CEF5710](v14, -1, -1);
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v19;
  *(v20 + 40) = v9;
  *(v20 + 48) = v10;
  *(v20 + 56) = ObjectType;
  *a3 = sub_21B480F44;
  a3[1] = v20;
}

uint64_t sub_21B3878BC()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B3878F4()
{

  return swift_deallocObject();
}

uint64_t sub_21B387934()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21B389410;

  return MEMORY[0x2822007B8]();
}

void sub_21B387A60(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    if (qword_2811FEB80 != -1)
    {
      swift_once();
    }

    v9 = sub_21B4C7558();
    __swift_project_value_buffer(v9, qword_2811FEB88);

    v10 = sub_21B4C7538();
    v11 = sub_21B4C9D08();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21B36CF74(a2, a3, &v15);
      _os_log_impl(&dword_21B365000, v10, v11, "%s requested a loading handle after launch ended.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CEF5710](v13, -1, -1);
      MEMORY[0x21CEF5710](v12, -1, -1);
    }

    goto LABEL_9;
  }

  if (!__CFADD__(v5++, 1))
  {
    *a1 = v5;
    *(a1 + 8) = 0;
LABEL_9:
    *a4 = v5;
    *(a4 + 8) = v6;
    return;
  }

  __break(1u);
}

uint64_t sub_21B387BF0()
{
  v0 = sub_21B4C7558();
  __swift_allocate_value_buffer(v0, qword_2811FEB88);
  __swift_project_value_buffer(v0, qword_2811FEB88);
  sub_21B387C68();
  sub_21B4CA168();
  return sub_21B4C7548();
}

unint64_t sub_21B387C68()
{
  result = qword_2811FCA80;
  if (!qword_2811FCA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811FCA80);
  }

  return result;
}

uint64_t sub_21B387CDC(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4568636E75616C2ELL;
  }

  sub_21B4CA338();

  v3 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v3);

  MEMORY[0x21CEF2F30](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_21B387DF0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for PrepareUIImageProcessingStep() - 8);
  return sub_21B387E88(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, a1);
}

uint64_t sub_21B387E88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v24 = a2;
  v23 = a1;
  v5 = sub_21B4C64F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = ArtworkContent.image()();
  if (v12)
  {
    v13 = v12;
    v21 = a3;
    v22 = v3;
    type metadata accessor for PrepareUIImageProcessingStep();
    sub_21B4C68C8();
    v14 = sub_21B4C6398();
    v15 = *(v6 + 8);
    result = v15(v11, v5);
    if ((v14 & 1) == 0)
    {
      sub_21B4C68C8();
      v17 = sub_21B38837C(v13);

      result = v15(v9, v5);
      v13 = v17;
    }

    *v21 = v13;
  }

  else
  {
    v18 = sub_21B4C6808();
    sub_21B38282C(&qword_27CD87118, MEMORY[0x277D3D718]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D3D700], v18);
    return swift_willThrow();
  }

  return result;
}

UIImage_optional __swiftcall ArtworkContent.image()()
{
  v1 = v0;
  v2 = sub_21B4C5748();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C6368();
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B388318(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = [objc_opt_self() defaultManager];
    sub_21B4C5708();
    v10 = sub_21B4C96C8();

    v11 = [v9 contentsAtPath_];

    if (!v11)
    {
      (*(v3 + 8))(v5, v2);
      v17 = 0;
      goto LABEL_6;
    }

    v12 = sub_21B4C5788();
    v14 = v13;

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v12 = *v8;
    v14 = v8[1];
  }

  v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v16 = sub_21B4C5768();
  v17 = [v15 initWithData_];

  sub_21B36D4F4(v12, v14);
LABEL_6:
  v19 = v17;
  result.value.super.isa = v19;
  result.is_nil = v18;
  return result;
}

uint64_t sub_21B388318(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C6368();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21B38837C(void *a1)
{
  v11 = a1;
  v1 = sub_21B4C7558();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C6498();
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_21B4C71F8();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_21B3F2D94(v12, &qword_27CD86D80);
    memset(v14, 0, sizeof(v14));
    v15 = 0;
  }

  v5 = [v11 imageByPreparingForDisplay];
  sub_21B388FC8(v14, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_21B4C6338();

    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v5)
    {
LABEL_6:
      sub_21B3F2D94(v14, &qword_27CD872B0);
      return v5;
    }
  }

  else
  {
    sub_21B3F2D94(v12, &qword_27CD872B0);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_21B4C74E8();
  v7 = sub_21B4C7538();
  v8 = sub_21B4C9CE8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21B365000, v7, v8, "Failed to prepare image for the display", v9, 2u);
    MEMORY[0x21CEF5710](v9, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  sub_21B3F2D94(v14, &qword_27CD872B0);
  v10 = v11;

  return v10;
}

void PageSize.init(width:additionalTextMargin:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_21B37F578(a2);
  if (v6 > 3u)
  {
    v7 = xmmword_21B4DB2C0;
  }

  else if (v6 - 1 >= 2)
  {
    if (!v6)
    {
      v7 = xmmword_21B4DB2B0;
      v8 = 36.0;
      goto LABEL_7;
    }

    v7 = xmmword_21B4DB2D0;
  }

  else
  {
    v7 = xmmword_21B4DB2A0;
  }

  v8 = 40.0;
  if (v6 < 3u)
  {
    v8 = 36.0;
  }

LABEL_7:
  *a1 = a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = a3;
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

uint64_t sub_21B388734(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21B40998C;

  return sub_21B3887CC(a1, v1);
}

uint64_t sub_21B3887CC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_21B4C8588();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B38885C, 0, 0);
}

uint64_t sub_21B38885C()
{
  v1 = sub_21B4C5438();
  v2 = sub_21B4C9708();
  v4 = v3;
  if (v2 == sub_21B4C9708() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_21B4CA608();

    if ((v7 & 1) == 0)
    {
      v8 = sub_21B4C9708();
      v10 = v9;
      if (v8 == sub_21B4C9708() && v10 == v11)
      {
      }

      else
      {
        v13 = sub_21B4CA608();

        if ((v13 & 1) == 0)
        {
          if (qword_2811FCEC0 != -1)
          {
            swift_once();
          }

          v14 = sub_21B4C94B8();
          __swift_project_value_buffer(v14, qword_2811FCEC8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
          sub_21B4C85A8();
          *(swift_allocObject() + 16) = xmmword_21B4D2830;
          sub_21B4C8578();
          sub_21B4C8568();
          v15 = sub_21B4C5438();
          type metadata accessor for Name(0);
          v0[5] = v16;
          v0[2] = v15;
          sub_21B4C8548();
          sub_21B3F2D94((v0 + 2), &qword_27CD86E70);
          sub_21B4C8568();
          sub_21B4C8598();
          sub_21B4C9298();

          goto LABEL_23;
        }
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v0[17] = Strong;
      if (Strong)
      {
        sub_21B4C9A18();
        v0[18] = sub_21B4C9A08();
        v18 = sub_21B4C99C8();
        v20 = v23;
        v21 = sub_21B38EB08;
        goto LABEL_17;
      }

LABEL_23:

      v24 = v0[1];

      return v24();
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  v0[15] = v17;
  if (!v17)
  {
    goto LABEL_23;
  }

  sub_21B4C9A18();
  v0[16] = sub_21B4C9A08();
  v18 = sub_21B4C99C8();
  v20 = v19;
  v21 = sub_21B47C458;
LABEL_17:

  return MEMORY[0x2822009F8](v21, v18, v20);
}

uint64_t sub_21B388FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD872B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21B389050(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (qword_2811FE798 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_2811FE7A0;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v4 + 24));
  sub_21B38B9D8((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  if (a3)
  {
    a3();
  }
}

uint64_t sub_21B389124()
{
  sub_21B375E2C();
  v0 = sub_21B4C9DB8();
  v1 = sub_21B4C9D88();

  return v1;
}

void sub_21B389174(uint64_t a1)
{
  v3 = *(sub_21B4C5888() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21B389050(a1, v1 + v4, v5);
}

uint64_t sub_21B389410()
{

  return MEMORY[0x2822009F8](sub_21B389528, 0, 0);
}

id debuggingInfoForTask(void *a1)
{
  v1 = a1;
  v2 = [v1 state];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_2782BE8F8[v2];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [v1 taskIdentifier];
  v6 = [v1 currentRequest];

  v7 = [v6 URL];
  v8 = [v4 stringWithFormat:@"NSURLSessionTask %ld <%@> { %@ }", v5, v7, v3];

  return v8;
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_21B4C64F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for AsyncSelectionConfirmingPicker();
  v11 = *(*(v2 - 1) + 80);
  v3 = v0 + ((v11 + 56) & ~v11);

  v4 = sub_21B4C81A8();
  v5 = *(*(v1 - 8) + 8);
  v5(v3 + *(v4 + 32), v1);

  v5(v3 + v2[16], v1);
  sub_21B4C8138();

  v6 = v3 + v2[17];
  v7 = type metadata accessor for AsyncSelectionConfirmingPicker.ConfirmationConfiguration();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v5(v6 + *(v7 + 60), v1);
    v5(v6 + *(v7 + 64), v1);
  }

  sub_21B4CA188();
  sub_21B4C8138();

  v8 = v2[22];
  v9 = sub_21B4C7988();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  MEMORY[0x21CEF57D0](v0 + 16);
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_21B4AB6FC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1 & 1);
  }

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B389C24()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21B389D98, 0, 0);
}

uint64_t sub_21B389D98()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  sub_21B4C8DF8();

  sub_21B4C8878();
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D220F0], v3);
  v0[21] = sub_21B4C8DD8();

  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_21B46E714;

  return sub_21B389EE4();
}

uint64_t sub_21B389EE4()
{
  *(v1 + 32) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B389FF0, v0, 0);
}

uint64_t sub_21B389F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B389FF0()
{
  v1 = v0[4];
  v2 = *(*v1 + 112);
  v0[6] = v2;
  v3 = v1 + v2;
  v4 = *(v1 + v2);
  v0[7] = v4;
  v5 = *(v1 + v2 + 8);
  if (v5)
  {
    if (v5 == 1)
    {

      v6 = v0[1];

      return v6(v4);
    }

    v13 = v0[5];
    sub_21B389F80(v1 + qword_2811FFEB8, v13);
    v15 = *(v1 + qword_2811FFEC0);
    v14 = *(v1 + qword_2811FFEC0 + 8);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v15;
    v16[5] = v14;

    v4 = sub_21B4385DC(0, 0, v13, &unk_21B4D7A48, v16);
    v0[8] = v4;
    *v3 = v4;
    *(v3 + 8) = 0;

    v17 = swift_task_alloc();
    v0[9] = v17;
    v9 = sub_21B4C93B8();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    *v17 = v0;
    v17[1] = sub_21B471FC0;
    v11 = MEMORY[0x277D84950];
    v12 = v0 + 3;
  }

  else
  {

    v8 = swift_task_alloc();
    v0[11] = v8;
    v9 = sub_21B4C93B8();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    *v8 = v0;
    v8[1] = sub_21B4720EC;
    v11 = MEMORY[0x277D84950];
    v12 = v0 + 2;
  }

  return MEMORY[0x282200430](v12, v4, v9, v10, v11);
}

uint64_t sub_21B38A278()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B38A2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B40AB58;

  return sub_21B38A384(a1, v4, v5, v6);
}

uint64_t sub_21B38A384(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_21B472B6C;

  return v7(v4 + 16);
}

uint64_t sub_21B38A478(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B38A530(a1, v4);
}

uint64_t sub_21B38A530(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21B473B04;

  return v5();
}

uint64_t sub_21B38A61C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B409EB8;

  return sub_21B38A7AC(v2);
}

uint64_t sub_21B38A6B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21B38A7AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B46F19C;

  return sub_21B38A844(a1);
}

uint64_t sub_21B38A844(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_21B4C8588();
  v2[27] = swift_task_alloc();
  v4 = sub_21B4C9348();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for JSPackage();
  v2[35] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[36] = v5;
  *v5 = v2;
  v5[1] = sub_21B38ACFC;

  return sub_21B38A9B8(a1);
}

uint64_t sub_21B38A9B8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_21B4C84C8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B38AB48, 0, 0);
}

uint64_t sub_21B38AA90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B36C50C(a1, v4);
}

uint64_t sub_21B38AB48()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_21B3F12CC(0, &unk_2811FCD78);
  MEMORY[0x21CEF1BE0](v6, &unk_21B4D7AD0, 0, v6);
  v7 = type metadata accessor for JSPackage();
  MEMORY[0x21CEF1BE0](v7, &unk_21B4D7AD8, 0, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88010);
  MEMORY[0x21CEF1BE0](v8, &unk_21B4D7AE0, 0, v8);
  sub_21B4C8838();
  sub_21B4C8838();
  v9 = sub_21B4C8838();

  v10 = *(v4 + 8);
  v10(v3, v5);
  v10(v1, v5);
  v10(v2, v5);

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_21B38ACFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 296) = a1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v3[38] = v7;
    *v7 = v4;
    v7[1] = sub_21B3A0B28;
    v9 = v3[34];
    v8 = v3[35];

    return MEMORY[0x28217F228](v8, v9, v9);
  }
}

uint64_t sub_21B38AEE8()
{
  sub_21B4C8868();
  *(v0 + 40) = sub_21B4C8858();
  v1 = type metadata accessor for JSPackageLoader();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21B38B448;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

id sub_21B38AFAC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D3DB68]) init];
  *a1 = result;
  return result;
}

uint64_t sub_21B38AFE8()
{
  v26 = sub_21B4C83C8();
  v0 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21B4C82C8();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C9D58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B4C9208();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C8808();
  sub_21B38B3F4();
  sub_21B4C8808();
  v25 = v30;
  type metadata accessor for JSPackageLoadingTracker();
  sub_21B4C8808();
  v24 = v29;
  (*(v7 + 104))(v9, *MEMORY[0x277D3D9D8], v6);
  v14 = sub_21B36D780();
  (*(v7 + 8))(v9, v6);
  type metadata accessor for JSPackageLoader();
  v15 = swift_allocObject();
  (*(v11 + 16))(v15 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_bag, v13, v10);
  v16 = [objc_opt_self() isRunningOnInternalOS];
  v17 = MEMORY[0x277D21A20];
  if (!v16)
  {
    v17 = MEMORY[0x277D21A38];
  }

  (*(v0 + 104))(v2, *v17, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D88);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21B4D2830;
  v19 = sub_21B4C8428();
  v20 = MEMORY[0x277D21A60];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  sub_21B4C8418();
  sub_21B4C82A8();
  (*(v11 + 8))(v13, v10);
  (*(v27 + 32))(v15 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_loader, v5, v28);
  v21 = v24;
  *(v15 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_process) = v25;
  *(v15 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_tracker) = v21;
  *(v15 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_userDefaults) = v14;
  return v15;
}

unint64_t sub_21B38B3F4()
{
  result = qword_2811FCD60;
  if (!qword_2811FCD60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811FCD60);
  }

  return result;
}

uint64_t sub_21B38B448()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_21B4705F4;
  }

  else
  {

    v2 = sub_21B38B564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B38B564()
{
  v0[8] = v0[2];
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    if (qword_2811FD530 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D60);
    sub_21B38B8DC();
    sub_21B4C9D68();
    v1 = v0[3];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88030);
    type metadata accessor for JSPackageLocation();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_21B4D2830;
    swift_storeEnumTagMultiPayload();
  }

  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_21B3A070C;
  v3 = v0[4];

  return sub_21B38BE68(v3, v1);
}

uint64_t sub_21B38B78C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87D60);
  sub_21B38B8DC();
  result = sub_21B4C65C8();
  qword_2811FD538 = result;
  unk_2811FD540 = v1;
  return result;
}

unint64_t sub_21B38B7F4(uint64_t *a1, uint64_t a2)
{
  result = sub_21B385784(a2);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B45C97C();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = sub_21B4C5888();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);

    result = sub_21B38B9F0(v5, v7);
    *a1 = v7;
  }

  return result;
}

unint64_t sub_21B38B8DC()
{
  result = qword_2811FCE40;
  if (!qword_2811FCE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD87D60);
    sub_21B38B990(&qword_2811FF908, type metadata accessor for JSPackageLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE40);
  }

  return result;
}

uint64_t sub_21B38B990(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21B38B9F0(int64_t a1, uint64_t a2)
{
  v40 = sub_21B4C5888();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_21B4CA2B8();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_21B393594(&qword_281200330, MEMORY[0x277CC95F0]);
      v23 = sub_21B4C9628();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_21B38BD10@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88030);
  type metadata accessor for JSPackageLocation();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21B4D38F0;
  swift_storeEnumTagMultiPayload();
  result = swift_storeEnumTagMultiPayload();
  *a1 = v2;
  return result;
}

uint64_t sub_21B38BE68(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_21B4C8588();
  v3[21] = swift_task_alloc();
  v4 = type metadata accessor for JSPackageLocation();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B38BF58, 0, 0);
}

uint64_t sub_21B38BF58()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  *(v0 + 200) = v2;
  if (v2)
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v4 + 80);
    *(v0 + 272) = v5;
    *(v0 + 208) = *(v4 + 72);
    *(v0 + 216) = 0;
    sub_21B38C458(v1 + ((v5 + 32) & ~v5), v3, type metadata accessor for JSPackageLocation);
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = sub_21B4C94B8();
    *(v0 + 224) = v8;
    *(v0 + 232) = __swift_project_value_buffer(v8, qword_2811FCF10);
    *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    v9 = *(sub_21B4C85A8() - 8);
    *(v0 + 248) = *(v9 + 72);
    *(v0 + 276) = *(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8578();
    sub_21B4C8568();
    *(v0 + 40) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_21B38C458(v6, boxed_opaque_existential_1, type metadata accessor for JSPackageLocation);
    sub_21B4C8548();
    sub_21B3F2D94(v0 + 16, &qword_27CD86E70);
    sub_21B4C8568();
    sub_21B4C8598();
    sub_21B4C9288();

    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_21B3A05F8;
    v12 = *(v0 + 192);
    v13 = *(v0 + 144);

    return JSPackageLoader.load(from:)(v13, v12);
  }

  else
  {
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v15 = sub_21B4C94B8();
    __swift_project_value_buffer(v15, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C92A8();

    sub_21B3A2BB4();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 7;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_21B4C5888();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B38C458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t JSPackageLocation.debugDescription.getter()
{
  v1 = sub_21B4C5748();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C75F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSPackageLocation();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B38C7C0(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v4, v11, v1);
    v17 = 0xD00000000000001ALL;
    v18 = 0x800000021B4E1210;
    v15 = sub_21B4C5658();
    MEMORY[0x21CEF2F30](v15);

    MEMORY[0x21CEF2F30](10530, 0xE200000000000000);
    v14 = v17;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    v17 = 0xD000000000000019;
    v18 = 0x800000021B4E1230;
    v13 = sub_21B4C75D8();
    MEMORY[0x21CEF2F30](v13);

    MEMORY[0x21CEF2F30](10530, 0xE200000000000000);
    v14 = v17;
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_21B38C7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t JSPackageLoader.load(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for JSPackage();
  v3[5] = swift_task_alloc();
  v4 = sub_21B4C9A58();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for JSPackageLoadingState();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B38C944, 0, 0);
}

uint64_t sub_21B38C944()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v0[11] = *(v0[4] + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_tracker);
  sub_21B38C458(v5, v1, type metadata accessor for JSPackageLocation);
  swift_storeEnumTagMultiPayload();
  sub_21B4C9A38();
  JSPackageLoadingTracker.update(to:priority:)(v1, v2);

  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  sub_21B38CA90(v1, type metadata accessor for JSPackageLoadingState);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21B3A0454;
  v8 = v0[5];
  v9 = v0[3];

  return sub_21B38CAF0(v8, v9);
}

uint64_t sub_21B38CA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B38CAF0(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = *v2;
  v4 = sub_21B4C8448();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v5 = sub_21B4C82E8();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v6 = sub_21B4C75F8();
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for JSPackageSourceLocation();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v7 = sub_21B4C5748();
  v3[46] = v7;
  v3[47] = *(v7 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v8 = sub_21B4C82D8();
  v3[51] = v8;
  v3[52] = *(v8 - 8);
  v3[53] = swift_task_alloc();
  v9 = sub_21B4C8318();
  v3[54] = v9;
  v3[55] = *(v9 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = type metadata accessor for JSPackageLocation();
  v3[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B38CE8C, 0, 0);
}

uint64_t sub_21B38CE8C()
{
  sub_21B38C458(v0[23], v0[58], type metadata accessor for JSPackageLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = v0[48];
      v15 = v0[49];
      v17 = v0[46];
      v16 = v0[47];
      v46 = v0[51];
      v18 = v0[29];
      v45 = v0[28];
      v19 = v0[26];
      v20 = v0[27];
      v21 = v0[24];
      (*(v16 + 32))(v15, v0[58], v17);
      (*(v20 + 104))(v18, *MEMORY[0x277D21A70], v19);
      v22 = *(v21 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_process);
      *(swift_allocObject() + 16) = v22;
      v23 = *(v16 + 16);
      v0[67] = v23;
      v0[68] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v23(v14, v15, v17);
      (*(v20 + 16))(v45, v18, v19);
      v24 = v22;
      sub_21B4C82F8();
      (*(v20 + 8))(v18, v19);
      v25 = MEMORY[0x277D21998];
      v0[5] = v46;
      v0[6] = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      v26 = swift_task_alloc();
      v0[69] = v26;
      *v26 = v0;
      v26[1] = sub_21B465C00;
      v40 = v0[32];
    }

    else
    {
      v2 = v0[37];
      v3 = v0[33];
      (*(v0[36] + 32))(v2, v0[58], v0[35]);
      sub_21B3A2404(v2, v3);
      v37 = MEMORY[0x277D21998];
      v0[10] = v0[51];
      v0[11] = v37;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
      v39 = swift_task_alloc();
      v0[65] = v39;
      *v39 = v0;
      v39[1] = sub_21B46590C;
      v40 = v0[33];
    }

LABEL_16:

    return sub_21B467D70(boxed_opaque_existential_1, v40);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = *MEMORY[0x277D3DB90];
    sub_21B4C9178();
    *(swift_allocObject() + 16) = v4;
    v7 = *(v5 + OBJC_IVAR____TtC10PodcastsUI15JSPackageLoader_process);
    *(swift_allocObject() + 16) = v7;
    v8 = v7;
    v9 = v6;
    sub_21B4C8328();
    v10 = swift_task_alloc();
    v0[59] = v10;
    *v10 = v0;
    v10[1] = sub_21B465390;
    v11 = v0[56];
    v12 = v0[53];

    return sub_21B3A4400(v12, v11);
  }

  else
  {
    if (qword_2812003F8 != -1)
    {
      swift_once();
    }

    v27 = [qword_281200400 resourcePath];
    if (v27)
    {
      v29 = v0[39];
      v28 = v0[40];
      v30 = v0[35];
      v31 = v0[36];
      v32 = v0[34];
      v33 = v27;
      v34 = sub_21B4C9708();
      v36 = v35;

      MEMORY[0x21CEF0D50](v34, v36);
      sub_21B4C75E8();
      (*(v31 + 32))(v28, v29, v30);
      sub_21B3A2404(v28, v32);
      v43 = MEMORY[0x277D21998];
      v0[15] = v0[51];
      v0[16] = v43;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      v44 = swift_task_alloc();
      v0[63] = v44;
      *v44 = v0;
      v44[1] = sub_21B46561C;
      v40 = v0[34];
      goto LABEL_16;
    }

    sub_21B3A2BB4();
    swift_allocError();
    *v41 = 0xD000000000000014;
    *(v41 + 8) = 0x800000021B4E10F0;
    *(v41 + 16) = 1;
    swift_willThrow();

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_21B38D584()
{

  return swift_deallocObject();
}

void sub_21B38D5DC()
{
  v0 = sub_21B4C96C8();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_281200400 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21B38D654(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_21B4C7388() - 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = v1 + ((*(v4 + 80) + 49) & ~*(v4 + 80));

  return sub_21B38D858(a1, v5, v6, v7, v8, v9, v3);
}

uint64_t sub_21B38D6E0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  sub_21B4CA188();
  v7 = sub_21B4CA748();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(a4 - 8);
  (*(v11 + 16))(&v13 - v9, a1, a4);
  (*(v11 + 56))(v10, 0, 1, a4);
  swift_storeEnumTagMultiPayload();
  a2(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21B38D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[1] = a6;
  v9 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C9E48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87950);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21B4D2830;
  (*(v9 + 16))(v11, a1, a7);
  v13 = sub_21B4C9758();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21B376BD4();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_21B4C7348();
}

uint64_t sub_21B38D9F4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86970);
  v7 = sub_21B4CA748();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(*(a4 - 8) + 16))(&v12 - v9, a1, a4);
  swift_storeEnumTagMultiPayload();
  a2(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t static PageMetrics.Instruction.page(fields:configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v32 - v6;
  v8 = sub_21B4C8A38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B4C8628();
  MEMORY[0x28223BE20](v12 - 8);
  sub_21B4C89C8();
  v13 = a2[1];
  v14 = a2[2];
  v35 = a2[3];
  v36 = v14;
  v16 = a2[4];
  v15 = a2[5];
  v34 = a1;

  sub_21B36C7AC(&v36, v33, &qword_27CD877F0);
  sub_21B36C7AC(&v35, v33, &qword_27CD877F8);
  v32[2] = v13;

  v32[3] = v15;
  sub_21B371F28(v16);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v17 = qword_2811FD5E0;
  v18 = *algn_2811FD5E8;
  (*(v9 + 16))(v7, v11, v8);
  v19 = *(v9 + 56);
  v32[0] = v8;
  v19(v7, 0, 1, v8);
  sub_21B43CE50(v7, v17, v18);
  sub_21B3F2D94(v7, &qword_27CD877E0);
  v20 = sub_21B4C6018();
  v21 = v34;
  sub_21B374E9C(v20);
  v23 = v22;

  if (!v23)
  {

    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v16)
  {
LABEL_5:

    v16(v21);
    sub_21B36F6F4(v16);
  }

LABEL_7:
  v24 = *(v36 + 16);

  if (v24)
  {
    sub_21B373518(v11);
    if (v25)
    {
    }
  }

  if (*(v35 + 16))
  {
    sub_21B373518(v11);
    if (v26)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v36, &qword_27CD877F0);
  sub_21B3F2D94(&v35, &qword_27CD877F8);
  sub_21B36F6F4(v16);
  (*(v9 + 8))(v11, v32[0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87948);
  v27 = sub_21B4C8698();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21B4D2830;
  sub_21B4C8688();
  sub_21B38E238(v30);
  swift_setDeallocating();
  (*(v28 + 8))(v30 + v29, v27);
  swift_deallocClassInstance();
  return sub_21B4C8658();
}

uint64_t sub_21B38E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21B36EE80(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_21B3749CC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_21B3F2D94(a1, &qword_27CD86E70);
    sub_21B43D280(a2, a3, v9);

    return sub_21B3F2D94(v9, &qword_27CD86E70);
  }

  return result;
}

_OWORD *sub_21B38E0E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21B36EE80(a4, (a5[7] + 32 * a1));
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

uint64_t sub_21B38E154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21B36CEF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21B36D428(*(a3 + 56) + 32 * v4, v9);
  sub_21B36EE80(v9, &v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B38E238(uint64_t a1)
{
  v2 = sub_21B4C8698();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD878B0);
    v9 = sub_21B4CA318();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21B44AF68(&qword_2811FD220, MEMORY[0x277D21BE0]);
      v16 = sub_21B4C9628();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_21B44AF68(&qword_2811FD218, MEMORY[0x277D21BE0]);
          v23 = sub_21B4C96B8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t static PageMetrics.Instruction.impressions(fields:configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_21B4C8A38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B4C8628();
  MEMORY[0x28223BE20](v12 - 8);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21B4C6A18();

  v15 = sub_21B4C5FC8();
  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v52 = sub_21B377824();
  *&v51 = v18;
  sub_21B36EE80(&v51, v50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = a1;
  sub_21B3749CC(v50, v15, v17, isUniquelyReferenced_nonNull_native);

  v20 = v49;
  v21 = sub_21B4C5FE8();
  v23 = v22;
  v24 = sub_21B4C6CF8();
  v52 = MEMORY[0x277D837D0];
  *&v51 = v24;
  *(&v51 + 1) = v25;
  sub_21B36EE80(&v51, v50);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v20;
  sub_21B3749CC(v50, v21, v23, v26);

  sub_21B4C8988();
  v27 = a2[1];
  v28 = a2[3];
  *&v51 = a2[2];
  *&v50[0] = v28;
  v29 = a2[4];
  sub_21B36C7AC(&v51, &v49, &qword_27CD877F0);
  sub_21B36C7AC(v50, &v49, &qword_27CD877F8);
  v47 = v27;

  sub_21B371F28(v29);
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  v30 = qword_2811FD5E0;
  v31 = *algn_2811FD5E8;
  (*(v9 + 16))(v7, v11, v8);
  v43 = v9;
  v32 = *(v9 + 56);
  v45 = v8;
  v32(v7, 0, 1, v8);
  sub_21B43CE50(v7, v30, v31);
  sub_21B3F2D94(v7, &qword_27CD877E0);
  v33 = sub_21B4C6018();
  v34 = v48;
  sub_21B374E9C(v33);
  v36 = v35;

  if (!v36)
  {

    if (!v29)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v29)
  {
LABEL_5:

    v29(v34);
    sub_21B36F6F4(v29);
  }

LABEL_7:
  v37 = *(v51 + 16);

  if (v37)
  {
    sub_21B373518(v11);
    if (v38)
    {
    }
  }

  if (*(*&v50[0] + 16))
  {
    sub_21B373518(v11);
    if (v39)
    {
    }
  }

  sub_21B4C8618();

  sub_21B3F2D94(&v51, &qword_27CD877F0);
  sub_21B3F2D94(v50, &qword_27CD877F8);
  sub_21B36F6F4(v29);
  (*(v43 + 8))(v11, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87948);
  sub_21B4C8698();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_21B4D38F0;
  sub_21B4C8668();
  sub_21B4C8678();
  sub_21B38E238(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_21B4C8658();
}

uint64_t sub_21B38EB08()
{
  v1 = *(v0 + 136);

  if (*(v1 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) != 2)
  {
    sub_21B4C8DA8();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_21B38EBA8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v0 = [objc_opt_self() sharedInstance];
    v1 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];

    [v1 applicationDidForeground];
  }
}

uint64_t static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  v44 = a5;
  v45 = a6;
  v42 = a1;
  v43 = a2;
  v46 = a9;
  v14 = sub_21B4C8A58();
  MEMORY[0x28223BE20](v14 - 8);
  v40[1] = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B4C8B08();
  MEMORY[0x28223BE20](v16 - 8);
  v40[0] = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21B4C5F68();
  v20 = v19;
  v21 = MEMORY[0x277D837D0];
  v51 = MEMORY[0x277D837D0];
  v41 = a7;
  *&v50 = a7;
  *(&v50 + 1) = a8;
  sub_21B36EE80(&v50, v49);
  swift_bridgeObjectRetain_n();
  v22 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v22;
  sub_21B3749CC(v49, v18, v20, isUniquelyReferenced_nonNull_native);

  v40[2] = v48;
  v48 = v22;
  v24 = sub_21B4C6028();
  v26 = v24;
  v27 = v25;
  if (a4)
  {
    v51 = v21;
    *&v50 = a3;
    *(&v50 + 1) = a4;
    sub_21B36EE80(&v50, v49);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v22;
    sub_21B3749CC(v49, v26, v27, v28);

    v48 = v47;
  }

  else
  {
    sub_21B43D280(v24, v25, &v50);

    sub_21B3F9F3C(&v50);
  }

  v29 = sub_21B4C60B8();
  v31 = v29;
  v32 = v30;
  if (*(&a10 + 1))
  {
    v51 = v21;
    v50 = a10;
    sub_21B36EE80(&v50, v49);

    v33 = v48;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v33;
    sub_21B3749CC(v49, v31, v32, v34);

    v48 = v47;
  }

  else
  {
    sub_21B43D280(v29, v30, &v50);

    sub_21B3F9F3C(&v50);
  }

  v35 = sub_21B4C5F88();
  v37 = v36;
  v51 = v21;
  *&v50 = v41;
  *(&v50 + 1) = a8;
  sub_21B36EE80(&v50, v49);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v22;
  sub_21B3749CC(v49, v35, v37, v38);

  sub_21B4C8AC8();
  sub_21B4C8A48();
  return sub_21B4C8B18();
}

uint64_t ArtworkRequest.init(model:targetSize:contentMode:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:trace:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v55 = a4;
  v56 = a7;
  v53 = a6;
  v52 = a5;
  v50 = a3;
  v46 = a2;
  v51 = a8;
  v13 = sub_21B4C6A48();
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B4C72A8();
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v48 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = sub_21B4C66C8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21B4C5E78();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v44 - v33;
  sub_21B38F550(a1, &v44 - v33);
  v54 = a1;
  sub_21B4C5E58();
  v35 = MEMORY[0x277D3D6C0];
  if ((v46 & 1) == 0)
  {
    v35 = MEMORY[0x277D3D6C8];
  }

  (*(v26 + 104))(v28, *v35, v25);
  CGSize.fitting(_:aspectRule:)(v28, a9, a10);
  v36 = v25;
  v37 = v45;
  (*(v26 + 8))(v28, v36);
  sub_21B36C7AC(v55, v24, &qword_27CD86B98);
  sub_21B36C7AC(v56, v58, &qword_27CD86D80);
  sub_21B36C7AC(v24, v22, &qword_27CD86B98);
  v38 = *(v37 + 48);
  v39 = v38(v22, 1, v15);
  v44 = v15;
  if (v39 == 1)
  {
    v40 = v47;
    sub_21B4C5D68();
    v41 = v37;
    v42 = v40;
    if (v38(v22, 1, v15) != 1)
    {
      sub_21B3F2D94(v22, &qword_27CD86B98);
    }
  }

  else
  {
    v42 = v47;
    (*(v37 + 32))(v47, v22, v15);
    v41 = v37;
  }

  sub_21B4C7278();
  sub_21B38F550(v34, v32);
  sub_21B36C7AC(v24, v48, &qword_27CD86B98);
  sub_21B4C6A28();
  sub_21B36C7AC(v58, v57, &qword_27CD86D80);
  sub_21B4C6478();
  sub_21B3F2D94(v56, &qword_27CD86D80);
  sub_21B3F2D94(v55, &qword_27CD86B98);
  sub_21B38F79C(v54);
  (*(v41 + 8))(v42, v44);
  sub_21B3F2D94(v58, &qword_27CD86D80);
  sub_21B3F2D94(v24, &qword_27CD86B98);
  return sub_21B38F79C(v34);
}

uint64_t sub_21B38F550(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C5E78();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CGSize.fitting(_:aspectRule:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_21B4C66C8();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v14 - v10;
  if (a2 != 0.0 || a3 != 0.0)
  {
    v12 = *(v7 + 16);
    v12(v14 - v10, a1, v6);
    result = (*(v7 + 88))(v11, v6);
    if (result != *MEMORY[0x277D3D6C0] && result != *MEMORY[0x277D3D6C8])
    {
      v14[3] = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
      v12(boxed_opaque_existential_1, a1, v6);
      unrecognizedEnumValueEncountered(_:)(v14);
      __swift_destroy_boxed_opaque_existential_1(v14);
      return (*(v7 + 8))(v11, v6);
    }
  }

  return result;
}

uint64_t sub_21B38F79C(uint64_t a1)
{
  v2 = sub_21B4C5E78();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArtworkRequest.prepared.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C64F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21B38F894(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B4C5E78();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = (&v38 - v11);
  v13 = sub_21B4C64F8();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
  sub_21B4C6388();
  sub_21B4C6F68();
  sub_21B4C64C8();
  sub_21B4C6488();
  v17 = *v12;
  v16 = v12[1];

  sub_21B36F0C0(v12, MEMORY[0x277D3D488]);
  if (v17 == sub_21B4C5E18() && v16 == v18)
  {

    goto LABEL_10;
  }

  v20 = sub_21B4CA608();

  if (v20)
  {
LABEL_10:
    sub_21B4C6388();
    v27 = v26;
    v29 = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    *(v30 + 24) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40);
    swift_allocObject();
    v41 = sub_21B4C7718();
    sub_21B3F1314(&qword_281200580, &qword_27CD86B40);
    v31 = sub_21B4C77D8();
    (*(v39 + 8))(v15, v40);

    return v31;
  }

  v21 = objc_opt_self();
  if ([v21 supportsLocalLibrary] && (sub_21B4C6488(), , sub_21B36F0C0(v10, MEMORY[0x277D3D488]), sub_21B4C5E28(), v22 = sub_21B4C9858(), , , (v22 & 1) != 0))
  {
    v23 = v2[20];
    v24 = v2[21];
    __swift_project_boxed_opaque_existential_1(v2 + 17, v23);
    v25 = (*(v24 + 8))(a1, v23, v24);
  }

  else
  {
    v25 = sub_21B381018(v15);
    if (!v25)
    {
      if (![v21 supportsLocalLibrary] || (sub_21B4C6488(), v32 = *(v7 + 2), v33 = *(v7 + 3), v34 = v7[32], sub_21B38FE30(v32, v33, v7[32]), sub_21B36F0C0(v7, MEMORY[0x277D3D488]), v34 == 255))
      {
        v35 = v2[5];
        v36 = v2[6];
        __swift_project_boxed_opaque_existential_1(v2 + 2, v35);
        v25 = (*(v36 + 8))(v15, v35, v36);
      }

      else
      {
        sub_21B38FE5C(v32, v33, v34);
        v25 = sub_21B3812B8(v15);
      }
    }
  }

  v31 = v25;
  (*(v39 + 8))(v15, v40);
  return v31;
}

uint64_t *PageSize.columnInfo(grid:horizontal:)(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v9 scaledValueForValue_];
  v11 = v10;

  *&v15 = v5;
  BYTE8(v15) = v6;
  Grid.columnSpan(for:horizontal:)(v8, a2);
  v12 = v16;
  *&v16 = v7;
  BYTE8(v16) = v8;
  v13 = *(v3 + 2);
  v17 = *(v3 + 1);
  v18 = v13;
  v15 = v12;
  return sub_21B38FE70(&v15, a2, (v11 / 100.0 + -1.0) * 0.7 + 1.0);
}

uint64_t sub_21B38FE30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21B38FE44(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21B38FE44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21B38FE5C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21B38FF90(a1, a2, a3);
  }

  return a1;
}

uint64_t *sub_21B38FE70(uint64_t *result, char a2, double a3)
{
  v5 = v3[2];
  v4 = v3[3];
  v6 = *v3 - (v5 + v5);
  v7 = *v3 - v5 - v4 - v3[4];
  if ((a2 & 1) == 0)
  {
    v7 = *v3 - (v5 + v5);
  }

  v8 = (result[1] + -1.0) * v4 + (v7 * a3 - (*result + -1.0) * v4) / *result * result[1];
  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *v3 - (v5 + v5);
  }

  v10 = (v4 + v6) / (v4 + v9);
  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  if (a2)
  {
    v11 = floor(v10);
    return lrintf(v11);
  }

  v12 = round(v10);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 < 9.22337204e18)
  {
    return v12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21B38FF90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double UITraitCollection.safeDisplayScale.getter()
{
  [v0 displayScale];

  return CGFloat.safeDisplayScale.getter(v1);
}

double CGFloat.safeDisplayScale.getter(double result)
{
  if (result < 0.0)
  {
    goto LABEL_8;
  }

  v1 = fabs(result);
  v2 = 0.0;
  if (v1 <= 0.0)
  {
    v2 = v1;
  }

  v3 = v2;
  if ((*&v2 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    v4 = COERCE_DOUBLE(*&v2 & 0x7FF0000000000000) * 2.22044605e-16;
    if (!(*&v3 >> 52))
    {
      v4 = COERCE_DOUBLE(1);
    }

    if (v1 < v4)
    {
LABEL_8:
      v5 = [objc_opt_self() mainScreen];
      [v5 scale];
      v7 = v6;

      return v7;
    }
  }

  return result;
}

uint64_t EffectsArtworkProcessingStep.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C64F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_21B4CA5B8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x277D84668])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_21B4C9B18();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

uint64_t ResizeArtworkProcessingStep.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C64F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21B39038C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  sub_21B4C9A38();
  v4 = sub_21B4C9A58();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v6 = sub_21B390588(&qword_2811FEEF0, v5, type metadata accessor for DownloadRemovalObserver);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  *(v0 + 56) = sub_21B43614C(0, 0, v3, &unk_21B4D5690, v7);
}

uint64_t sub_21B3904E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B390524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedArtworkRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B390588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B3905DC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B390610(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C64F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21B390694(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C64F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t PrepareUIImageProcessingStep.publisher.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v15 - v10;
  sub_21B4C68D8();
  (*(v4 + 16))(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v7;
  (*(v4 + 32))(v13 + v12, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21B38536C();
  swift_getAssociatedConformanceWitness();
  sub_21B4C7888();

  return (*(v15[0] + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_21B390988()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for PrepareUIImageProcessingStep() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  v4 = sub_21B4C64F8();
  (*(*(v4 - 8) + 8))(v3, v4);
  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t ResizeArtworkProcessingStep.publisher.getter@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v72 = a1;
  v4 = a1 - 2;
  v63 = *(a1 - 1);
  MEMORY[0x28223BE20](a1);
  v61 = v5;
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 3);
  v6 = *(v4 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21B4C6368();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v9;
  v74 = AssociatedConformanceWitness;
  v11 = sub_21B4C7648();
  v70 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v60 - v12;
  WitnessTable = swift_getWitnessTable();
  v71 = v11;
  v62 = WitnessTable;
  v14 = sub_21B4C6238();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v66 = &v60 - v16;
  v75 = AssociatedTypeWitness;
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15);
  v77 = &v60 - v17;
  v18 = sub_21B4C64F8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  v23 = v6;
  v24 = v3;
  sub_21B4C68C8();
  sub_21B4C6388();
  v26 = v25;
  v28 = v27;
  v29 = *(v19 + 8);
  v29(v21, v18);
  sub_21B4C6388();
  v80.width = v30;
  v80.height = v31;
  v79.width = v26;
  v79.height = v28;
  if (CGSizeEqualToSize(v79, v80) && (sub_21B4C68C8(), sub_21B4C63A8(), v33 = v32, v29(v21, v18), sub_21B4C63A8(), v33 == v34))
  {
    v35 = v77;
    sub_21B4C68D8();
    v36 = v75;
    v37 = sub_21B4C77D8();
    result = (*(v73 + 8))(v35, v36);
  }

  else
  {
    sub_21B4C68D8();
    v39 = v72;
    v40 = v72[12];
    v41 = (v3 + v72[10]);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(v3 + v72[11]);
    v45 = v63;
    v46 = *(v63 + 16);
    v47 = v24;
    v60 = v24;
    v48 = v65;
    v46(v65, v47, v72);
    sub_21B3F821C(v47 + v40, v78);
    v49 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v50 = (v61 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 47) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v22;
    *(v52 + 24) = v23;
    (*(v45 + 32))(v52 + v49, v48, v39);
    sub_21B36D484(v78, v52 + v50);
    v53 = (v52 + v51);
    *v53 = v42;
    v53[1] = v43;
    *(v52 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
    v54 = v67;
    v55 = v75;
    v56 = v77;
    sub_21B4C7888();

    (*(v73 + 8))(v56, v55);
    swift_getWitnessTable();
    sub_21B4C6908();
    v57 = v71;
    sub_21B39188C();
    v58 = v66;
    sub_21B4C77A8();
    sub_21B3F2D94(v78, &qword_27CD86D80);
    (*(v70 + 8))(v54, v57);
    v59 = v69;
    swift_getWitnessTable();
    v37 = sub_21B4C77D8();
    result = (*(v68 + 8))(v58, v59);
  }

  *v76 = v37;
  return result;
}

uint64_t sub_21B391148()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ResizeArtworkProcessingStep() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_21B4C64F8();
  (*(*(v6 - 8) + 8))(v5, v6);
  (*(*(v1 - 8) + 8))(v5 + v2[11], v1);
  __swift_destroy_boxed_opaque_existential_1(v5 + v2[14]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t InvalidateImageStoreValueProcessingStep.publisher.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_21B4C7628();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v19 = &v18 - v13;
  v21 = v2;
  sub_21B4C68D8();
  (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v7;
  (*(v4 + 32))(v15 + v14, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v16 = v19;
  sub_21B4C77F8();

  (*(v22 + 8))(v11, AssociatedTypeWitness);
  swift_getWitnessTable();
  sub_21B4C6908();
  swift_getWitnessTable();
  sub_21B4C6228();
  sub_21B4C77A8();
  sub_21B3850EC(v25);
  return (*(v23 + 8))(v16, v12);
}

uint64_t sub_21B39166C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for InvalidateImageStoreValueProcessingStep() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + v2[11]);

  return swift_deallocObject();
}

uint64_t UIFont.textStyle.getter()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_21B3918E4();
  v3 = sub_21B4C9588();

  if (*(v3 + 16) && (v4 = sub_21B391BE4(*MEMORY[0x277D74378]), (v5 & 1) != 0))
  {
    sub_21B36D428(*(v3 + 56) + 32 * v4, v8);

    if (swift_dynamicCast())
    {
      v6 = sub_21B4C96C8();

      return v6;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_21B391890()
{
  result = qword_2812003A8;
  if (!qword_2812003A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812003A8);
  }

  return result;
}

unint64_t sub_21B3918E4()
{
  result = qword_2812004E8;
  if (!qword_2812004E8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812004E8);
  }

  return result;
}

uint64_t sub_21B39193C()
{
  sub_21B4CA6E8();
  sub_21B4C64F8();
  sub_21B36C24C(&qword_2811FD570, MEMORY[0x277D3D610]);
  sub_21B4C9638();
  return sub_21B4CA738();
}

uint64_t Publisher.emitPageRenderResourceEvents(using:onScreen:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_retain_n();
  sub_21B4C77F8();
}

uint64_t sub_21B391B0C()
{

  return swift_deallocObject();
}

uint64_t sub_21B391B44()
{

  return swift_deallocObject();
}

unint64_t sub_21B391BE4(uint64_t a1)
{
  sub_21B4C9708();
  sub_21B4CA6E8();
  sub_21B4C9658();
  v2 = sub_21B4CA738();

  return sub_21B3FB304(a1, v2);
}

uint64_t sub_21B391C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B40998C;

  return sub_21B391EB8(a1, v4, v5, v6);
}

uint64_t sub_21B391D2C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for PageRenderActivity();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageRenderEvent();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v15 - v13;
  if (a2)
  {
    *v14 = a3 & 1;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21B4394C4(v14, v11);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21B439528(v11, v7);
      PageRenderController.notify(_:)(v7);
      sub_21B43958C(v7, type metadata accessor for PageRenderActivity);
    }

    return sub_21B43958C(v14, type metadata accessor for PageRenderEvent);
  }

  return result;
}

uint64_t sub_21B391EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for DownloadRemovalObserver();
  sub_21B390588(&qword_2811FEEF0, v5, type metadata accessor for DownloadRemovalObserver);
  v7 = sub_21B4C99C8();
  v4[4] = v7;
  v4[5] = v6;

  return MEMORY[0x2822009F8](sub_21B391F7C, v7, v6);
}

uint64_t sub_21B391F7C()
{
  v1 = v0[3];
  v0[6] = sub_21B4C6D58();
  v2 = *(v1 + 24);
  v0[7] = v2;
  v3 = v2;
  v4 = sub_21B4C6D28();
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21B3A42E4;

  return sub_21B39203C(v4);
}

uint64_t sub_21B39203C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21B4C7408();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_21B4C9F88();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_21B4C9A58();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_21B4C7558();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = sub_21B4C7388();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v8 = sub_21B4C73F8();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  type metadata accessor for DownloadRemovalObserver();
  sub_21B390588(&qword_2811FEEF0, v9, type metadata accessor for DownloadRemovalObserver);
  v11 = sub_21B4C99C8();
  v2[30] = v11;
  v2[31] = v10;

  return MEMORY[0x2822009F8](sub_21B39236C, v11, v10);
}

uint64_t sub_21B39236C()
{
  v43 = v0;
  sub_21B4C73B8();
  sub_21B4C7378();
  v1 = sub_21B4C73C8();
  v2 = sub_21B4C9E58();
  if (sub_21B4CA148())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v1, v2, v4, "RemovePendingDownloads", "", v3, 2u);
    MEMORY[0x21CEF5710](v3, -1, -1);
  }

  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[19];
  v11 = v0[20];
  v40 = v0[3];

  (*(v11 + 16))(v8, v9, v10);
  sub_21B4C7458();
  swift_allocObject();
  v0[32] = sub_21B4C7448();
  v12 = *(v11 + 8);
  v0[33] = v12;
  v0[34] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = *(v7 + 8);
  v0[35] = v13;
  v0[36] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v5, v6);
  sub_21B4C7528();
  v14 = v40;
  v15 = sub_21B4C7538();
  v16 = sub_21B4C9CC8();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[18];
  v20 = v0[15];
  v19 = v0[16];
  if (v17)
  {
    v41 = v0[18];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v42 = v22;
    *v21 = 136315138;
    sub_21B4C6D18();
    sub_21B392AD8();
    v23 = sub_21B4C9B58();
    v25 = v24;

    v26 = sub_21B36CF74(v23, v25, &v42);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_21B365000, v15, v16, "Beginning deletion of episodes with identifiers: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CEF5710](v22, -1, -1);
    MEMORY[0x21CEF5710](v21, -1, -1);

    v27 = *(v19 + 8);
    v27(v41, v20);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v18, v20);
  }

  v0[37] = v27;
  swift_getObjectType();
  sub_21B4C9AA8();
  v28 = sub_21B4C9FC8();
  v0[38] = v28;
  v29 = v28;
  v30 = v0[11];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[3];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v34 = swift_allocObject();
  v0[39] = v34;
  *(v34 + 16) = v29;
  *(v34 + 24) = v33;
  (*(v32 + 104))(v30, *MEMORY[0x277CBE110], v31);
  v35 = v33;
  v29;
  v36 = swift_task_alloc();
  v0[40] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800);
  *v36 = v0;
  v36[1] = sub_21B394784;
  v38 = v0[11];

  return MEMORY[0x28210EE50](v0 + 2, v38, sub_21B438C64, v34, v37);
}

uint64_t sub_21B3929E8()
{

  return swift_deallocObject();
}

uint64_t sub_21B392A28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B40AB58;

  return sub_21B392B2C(a1, a2, v6);
}

unint64_t sub_21B392AD8()
{
  result = qword_2811FD440;
  if (!qword_2811FD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD440);
  }

  return result;
}

uint64_t sub_21B392B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_21B392BA0, 0, 0);
}

uint64_t sub_21B392B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B392BA0()
{
  sub_21B4C8488();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21B4683F4;
  v2 = *(v0 + 56);

  return MEMORY[0x28217E6F8](v2, v0 + 16);
}

uint64_t sub_21B392C4C(char *a1, uint64_t a2, int a3)
{
  v39 = a3;
  v40 = a1;
  v41 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v38 = type metadata accessor for PageRenderActivity();
  MEMORY[0x28223BE20](v38);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageRenderEvent();
  v12 = MEMORY[0x28223BE20](v11);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  swift_getAssociatedConformanceWitness();
  v22 = sub_21B4C7678();
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  (*(v25 + 16))(&v36 - v23, v40);
  result = (*(v4 + 48))(v24, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    if (v41)
    {
      *v21 = v39 & 1;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_21B4394C4(v21, v19);
      if (!swift_getEnumCaseMultiPayload())
      {
        v34 = v36;
        sub_21B439528(v19, v36);
        PageRenderController.notify(_:)(v34);
        sub_21B43958C(v34, type metadata accessor for PageRenderActivity);
      }

      return sub_21B43958C(v21, type metadata accessor for PageRenderEvent);
    }
  }

  else
  {
    v27 = *(v4 + 32);
    v27(v9, v24, AssociatedTypeWitness);
    if (v41)
    {
      v28 = *(v4 + 16);
      v40 = v9;
      v28(v7, v9, AssociatedTypeWitness);
      v29 = sub_21B4CA5A8();
      if (v29)
      {
        v30 = v29;
        (*(v4 + 8))(v7, AssociatedTypeWitness);
      }

      else
      {
        v30 = swift_allocError();
        v27(v31, v7, AssociatedTypeWitness);
      }

      *v16 = v30;
      v16[8] = v39 & 1;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v32 = v37;
      sub_21B4394C4(v16, v37);
      if (swift_getEnumCaseMultiPayload())
      {
        v33 = v40;
        sub_21B43958C(v16, type metadata accessor for PageRenderEvent);
        return (*(v4 + 8))(v33, AssociatedTypeWitness);
      }

      else
      {
        v35 = v36;
        sub_21B439528(v32, v36);
        PageRenderController.notify(_:)(v35);
        sub_21B43958C(v35, type metadata accessor for PageRenderActivity);
        sub_21B43958C(v16, type metadata accessor for PageRenderEvent);
        return (*(v4 + 8))(v40, AssociatedTypeWitness);
      }
    }

    else
    {
      return (*(v4 + 8))(v9, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t ImpressionMetrics.withIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B4C8B08();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = sub_21B4C8B58();
  (*(*(v12 - 8) + 16))(a2, v2, v12);
  sub_21B4C8B28();
  (*(v6 + 16))(v11, v9, v5);
  sub_21B4C8AB8();
  (*(v6 + 8))(v9, v5);
  sub_21B4C8B38();
  v13 = sub_21B4C60F8();
  v15 = v14;
  v16 = sub_21B4C8B48();
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v19[3] = sub_21B377824();
  v19[0] = v17;
  sub_21B38E018(v19, v13, v15);
  return v16(v20, 0);
}

uint64_t sub_21B39337C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C5E78();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PageContextFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_2811FCDA0 != -1)
  {
    swift_once();
  }

  result = MetricsFieldsBuilder.shouldDecorate(basedOn:)(qword_2811FCDA8);
  if (result)
  {
    if (qword_2811FD160 != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87828);
    __swift_project_value_buffer(v3, qword_2811FD168);
    sub_21B4C6868();
    result = sub_21B4C8CE8();
    if (v10[0])
    {
      v10[0] = sub_21B4C6858();
      v10[1] = v4;
      v5 = sub_21B4C5FA8();
      v7 = v6;
      v8 = a1[3];
      v9 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
      MetricsFieldsBuilder.addValue<A>(_:forField:)(v10, v5, v7, v8, MEMORY[0x277D3D738], v9, MEMORY[0x277D3D730]);
    }
  }

  return result;
}

uint64_t sub_21B393594(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21B3935DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F98);
  v2 = *v0;
  v3 = sub_21B4CA4C8();
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
        sub_21B36D428(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21B36EE80(v25, (*(v4 + 56) + v22));
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

uint64_t sub_21B393780(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21B4C5888();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t MetricsFieldsBuilder.shouldDecorate(basedOn:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_21B4C8A38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C8C68();
  if (qword_2811FD5D8 != -1)
  {
    swift_once();
  }

  sub_21B393C48(qword_2811FD5E0, *algn_2811FD5E8, v9, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21B44B2F0(v4);
    v10 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_21B3949DC(v8, a1);
    (*(v6 + 8))(v8, v5);
  }

  return v10 & 1;
}

uint64_t ImpressionMetrics.withUniqueID(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21B4C8B08();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  if (!a2)
  {
    goto LABEL_6;
  }

  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = sub_21B4C8B58();
    (*(*(v13 - 8) + 16))(a3, v3, v13);
    sub_21B4C8B28();

    sub_21B4C8AD8();
    v17[0] = a1;
    sub_21B4C8AF8();
    v17[1] = a3;
    sub_21B4C8AA8();
    sub_21B4C8AC8();
    (*(v8 + 8))(v11, v7);
    return sub_21B4C8B38();
  }

  else
  {
LABEL_6:
    v15 = sub_21B4C8B58();
    v16 = *(*(v15 - 8) + 16);

    return v16(a3, v3, v15);
  }
}

uint64_t sub_21B393C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_21B36CEF8(a1, a2), (v7 & 1) != 0))
  {
    sub_21B36D428(*(a3 + 56) + 32 * v6, v12);
    sub_21B4C8A38();
    sub_21B36D428(v12, v11);
    sub_21B394558(v11, a4);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v9 = sub_21B4C8A38();
    v10 = *(*(v9 - 8) + 56);

    return v10(a4, 1, 1, v9);
  }
}

uint64_t ArtworkModel.preferredRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_21B4C6A48();
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21B4C72A8();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21B4C66C8();
  v47 = *(v52 - 1);
  MEMORY[0x28223BE20](v52);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21B4C7558();
  v9 = *(v49 - 1);
  MEMORY[0x28223BE20](v49);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v44 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v44 = sub_21B4C5E78();
  v22 = MEMORY[0x28223BE20](v44);
  v48 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  v29 = MEMORY[0x277D3D488];
  sub_21B3944F0(v2, &v44 - v27, MEMORY[0x277D3D488]);
  v30 = *MEMORY[0x277D3DD60];
  v31 = [objc_opt_self() mainScreen];
  [v31 scale];

  v32 = v46;
  (*(v5 + 56))(v21, 1, 1, v46);
  sub_21B4C74E8();
  sub_21B4C9CC8();
  sub_21B4C6A58();
  (*(v9 + 8))(v11, v49);
  sub_21B3944F0(v28, v26, v29);
  v49 = v28;
  sub_21B4C5E58();
  v33 = v5;
  v34 = v45;
  v35 = v47;
  v36 = v52;
  (*(v47 + 104))(v8, *MEMORY[0x277D3D6C8], v52);
  CGSize.fitting(_:aspectRule:)(v8, v30, v30);
  (*(v35 + 8))(v8, v36);
  v52 = v21;
  sub_21B36C7AC(v21, v19, &qword_27CD86B98);
  sub_21B36C7AC(v58, v57, &qword_27CD86D80);
  sub_21B36C7AC(v19, v34, &qword_27CD86B98);
  v37 = *(v33 + 48);
  v38 = v37(v34, 1, v32);
  v53 = v33;
  if (v38 == 1)
  {
    v39 = v50;
    sub_21B4C5D68();
    v40 = v39;
    if (v37(v34, 1, v32) != 1)
    {
      sub_21B3F2D94(v34, &qword_27CD86B98);
    }
  }

  else
  {
    v41 = *(v33 + 32);
    v40 = v50;
    v41(v50, v34, v32);
  }

  sub_21B4C7278();
  sub_21B3944F0(v26, v48, MEMORY[0x277D3D488]);
  sub_21B36C7AC(v19, v51, &qword_27CD86B98);
  sub_21B4C6A28();
  sub_21B36C7AC(v57, v56, &qword_27CD86D80);
  sub_21B4C6478();
  (*(v53 + 8))(v40, v32);
  sub_21B3F2D94(v57, &qword_27CD86D80);
  sub_21B3F2D94(v19, &qword_27CD86B98);
  v42 = MEMORY[0x277D3D488];
  sub_21B3873C8(v26, MEMORY[0x277D3D488]);
  sub_21B3F2D94(v58, &qword_27CD86D80);
  sub_21B3F2D94(v52, &qword_27CD86B98);
  return sub_21B3873C8(v49, v42);
}

uint64_t sub_21B3944A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21B3944F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B394558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  sub_21B36D428(a1, v12);
  if (swift_dynamicCast())
  {
    v12[0] = v11[0];
    v12[1] = v11[1];
    v7 = sub_21B4C8A38();
    sub_21B39472C();
    sub_21B4C98D8();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 32))(a2, v6, v7);
      return (*(v8 + 56))(a2, 0, 1, v7);
    }

    sub_21B44B2F0(v6);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_21B4C8A38();
  return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
}

unint64_t sub_21B39472C()
{
  result = qword_2811FD1A0;
  if (!qword_2811FD1A0)
  {
    sub_21B4C8A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD1A0);
  }

  return result;
}

uint64_t sub_21B394784()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  v3 = v2[31];
  v4 = v2[30];
  if (v0)
  {
    v5 = sub_21B437698;
  }

  else
  {
    v5 = sub_21B3A3980;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t static MetricsFieldsContext.Property<A>.clickLocationUniqueID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811FD0F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87908);
  v3 = __swift_project_value_buffer(v2, qword_2811FD100);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21B3949DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21B4C8A38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21B36D49C(&qword_2811FD1B0), v7 = sub_21B4C9628(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21B36D49C(&qword_2811FD1A8);
      v15 = sub_21B4C96B8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21B394BCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87908);
  __swift_allocate_value_buffer(v0, qword_2811FD100);
  __swift_project_value_buffer(v0, qword_2811FD100);
  return sub_21B4C8CA8();
}

uint64_t MetricsFieldsBuilder.addValue<A>(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[2] = a6;
  v18[3] = a7;
  v18[0] = a3;
  v18[1] = a4;
  v9 = sub_21B4CA188();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v14 + 48))(v13, 1, a5) == 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v14 + 32))(v16, v13, a5);
  MetricsFieldsBuilder.addValue<A>(_:forField:)();
  return (*(v14 + 8))(v16, a5);
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

uint64_t MetricsFieldsBuilder.addValue<A>(_:forField:)()
{
  sub_21B4C6E88();
  sub_21B4C8C78();
  return __swift_destroy_boxed_opaque_existential_1(&v1);
}

uint64_t sub_21B394F34(uint64_t a1)
{
  [*v1 ams_isActiveAccountCombined];
  sub_21B4C60E8();
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  MetricsFieldsBuilder.addValue<A>(_:forField:)();
}

uint64_t DynamicImpressionsCalculator.addElement(_:in:at:)(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v2 = sub_21B4C5858();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C8B08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_21B4C8B28();
  v12 = sub_21B3956E0(v11);
  v14 = v13;
  (*(v6 + 8))(v11, v5);
  v15 = v20;
  if ((v14 & 1) == 0 && v12 != v20)
  {
    sub_21B4C5848();
    sub_21B4C8FA8();
    (*(v18 + 8))(v4, v19);
  }

  sub_21B4C8B28();
  sub_21B3958A0(v15, 0, v8);
  return sub_21B4C8D08();
}

uint64_t sub_21B3956E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B4C8B08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_21B4C8AD8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (*(v12 + 16) && (v11 ? (v13 = v9) : (v13 = 0), v14 = sub_21B39775C(v13, v11), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
    swift_endAccess();

    if (*(v16 + 16))
    {
      v17 = sub_21B396FF0(a1);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);

        return v19;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

uint64_t sub_21B3958A0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a1;
  v6 = sub_21B4C8B08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23[-v12];
  v14 = *(v7 + 16);
  v14(&v23[-v12], a3, v6, v11);
  v15 = sub_21B4C8AD8();
  v17 = v16;
  v26 = *(v7 + 8);
  v26(v13, v6);
  if (!v17)
  {
    v15 = 0;
  }

  swift_beginAccess();
  if (*(*(v4 + 16) + 16) && (sub_21B39775C(v15, v17), (v18 & 1) != 0))
  {
  }

  else
  {
    v19 = sub_21B396A44(MEMORY[0x277D84F90]);
  }

  v28 = v19;
  swift_endAccess();
  (v14)(v9, a3, v6);
  sub_21B396C2C(v25, v24 & 1, v9);
  v20 = v28;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_21B3975E0(v20, v15, v17, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v27;
  swift_endAccess();
  return v26(a3, v6);
}

uint64_t sub_21B395ADC@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E48);
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v77 - v1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E50);
  v95 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v77 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E58);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v77 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E60);
  v114 = *(v108 - 8);
  v7 = MEMORY[0x28223BE20](v108);
  v90 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = &v77 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87A88);
  v86 = *(v85 - 8);
  v10 = MEMORY[0x28223BE20](v85);
  v80 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = &v77 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v111 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E68);
  MEMORY[0x28223BE20](v14 - 8);
  v84 = &v77 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E70);
  v110 = *(v102 - 8);
  v16 = MEMORY[0x28223BE20](v102);
  v83 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v113 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E78);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v77 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E80);
  v91 = *(v88 - 8);
  v23 = MEMORY[0x28223BE20](v88);
  v106 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - v25;
  v109 = sub_21B4C5BA8();
  v115 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E88);
  v112 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v105 = &v77 - v33;
  sub_21B4C5A98();
  v34 = sub_21B396F9C();
  MEMORY[0x21CEEF1B0](v34, &type metadata for JSPackageVersion.Parser, v34);
  sub_21B4C5A78();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E90);
  sub_21B3F1314(&qword_2811FD6B0, &qword_27CD87E78);
  v100 = v26;
  v81 = v35;
  sub_21B4C5B78();
  (*(v20 + 8))(v22, v19);
  v36 = *(v115 + 8);
  v115 += 8;
  v77 = v36;
  v36(v28, v109);
  MEMORY[0x21CEEF220](v26, v35);
  v79 = sub_21B3F1314(&qword_2811FD6E8, &qword_27CD87E88);
  v104 = v29;
  MEMORY[0x21CEEF1B0](v32, v29, v79);
  v37 = *(v112 + 8);
  v112 += 8;
  v87 = v37;
  v37(v32, v29);
  v116 = 45;
  v117 = 0xE100000000000000;
  v78 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v118, &v116, MEMORY[0x277D837D0], v78);
  sub_21B4C5A98();
  v38 = v80;
  sub_21B3977F0(v80);
  v39 = sub_21B3F1314(&qword_2811FD6C8, &qword_27CD87A88);
  v40 = v82;
  v41 = v85;
  MEMORY[0x21CEEF1B0](v38, v85, v39);
  v42 = *(v86 + 1);
  v42(v38, v41);
  v43 = v101;
  sub_21B4C5A78();
  v42(v40, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EA0);
  v85 = sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v45 = v103;
  v46 = v84;
  sub_21B4C5B68();
  v47 = *(v111 + 8);
  v111 += 8;
  v82 = v47;
  (v47)(v43, v45);
  v48 = v109;
  v49 = v77;
  v77(v28, v109);
  v50 = v83;
  MEMORY[0x21CEEF220](v46, v44);
  v84 = sub_21B3F1314(&qword_2811FD6E0, &qword_27CD87E70);
  v51 = v102;
  MEMORY[0x21CEEF1B0](v50, v102, v84);
  v52 = *(v110 + 8);
  v110 += 8;
  v86 = v52;
  v52(v50, v51);
  v53 = sub_21B4C5BF8();
  v54 = v89;
  (*(*(v53 - 8) + 56))(v89, 1, 1, v53);
  sub_21B4C5A98();
  v55 = v93;
  sub_21B3982E0(v93);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EA8);
  sub_21B3F1314(&qword_2811FD6A0, &qword_27CD87E50);
  v57 = v92;
  v58 = v94;
  sub_21B4C5B98();
  v95[1](v55, v58);
  v49(v28, v48);
  v59 = v49;
  sub_21B3F2D94(v54, &qword_27CD86C60);
  v60 = v90;
  MEMORY[0x21CEEF1D0](v57, v56);
  v94 = sub_21B3F1314(&qword_2811FD728, &qword_27CD87E60);
  v61 = v108;
  MEMORY[0x21CEEF1B0](v60, v108, v94);
  v62 = *(v114 + 8);
  v114 += 8;
  v95 = v62;
  (v62)(v60, v61);
  sub_21B4C5A78();
  v64 = v118[0];
  v63 = v118[1];
  sub_21B4C5A98();
  v116 = v64;
  v117 = v63;
  v65 = v101;
  sub_21B4C5B58();

  sub_21B3F1314(&qword_2811FD678, &qword_27CD87E80);
  v66 = v65;
  v67 = v88;
  v68 = v103;
  sub_21B4C5B38();
  (v82)(v66, v68);
  v69 = v109;
  v59(v28, v109);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EB0);
  v70 = v96;
  v71 = v102;
  sub_21B4C5B38();
  v59(v28, v69);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E18);
  sub_21B3F1314(&qword_2811FD680, &qword_27CD87E48);
  v72 = v107;
  v73 = v108;
  v74 = v97;
  sub_21B4C5B38();
  v59(v28, v69);
  (*(v99 + 8))(v70, v74);
  v75 = *(v91 + 8);
  v75(v106, v67);
  v75(v100, v67);
  (v95)(v72, v73);
  v86(v113, v71);
  return v87(v105, v104);
}

unint64_t sub_21B396A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F88);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD86F80);
      result = sub_21B396FF0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C8B08();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21B396C2C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21B396FF0(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21B39EBDC();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_21B4C8B08();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_21B415AD0(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_21B4C8B08();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_21B396DF0(a1, a3, v17);
    v18 = sub_21B4C8B08();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_21B396DF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21B4C8B08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21B396FF0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_21B39EBDC();
    goto LABEL_7;
  }

  sub_21B397110(result, a3 & 1);
  result = sub_21B396FF0(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_21B4CA688();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_21B397524(v14, v11, a1, v20);
}

unint64_t sub_21B396F9C()
{
  result = qword_2811FF950;
  if (!qword_2811FF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FF950);
  }

  return result;
}

unint64_t sub_21B396FF0(uint64_t a1)
{
  sub_21B4C8B08();
  v2 = MEMORY[0x277D21F50];
  sub_21B3FB464(&qword_2811FD190, MEMORY[0x277D21F50]);
  v3 = sub_21B4C9628();
  return sub_21B3FAFEC(a1, v3, MEMORY[0x277D21F50], &qword_2811FD188, v2, MEMORY[0x277D21F60]);
}

uint64_t sub_21B3970C4(uint64_t a1)
{
  v2 = sub_21B3974D0();

  return MEMORY[0x282200AF8](a1, v2);
}

uint64_t sub_21B397110(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_21B4C8B08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F88);
  v40 = a2;
  result = sub_21B4CA4D8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_21B45EBD4(&qword_2811FD190, MEMORY[0x277D21F50]);
      result = sub_21B4C9628();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_21B3974D0()
{
  result = qword_2811FF948;
  if (!qword_2811FF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FF948);
  }

  return result;
}

uint64_t sub_21B397524(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21B4C8B08();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_21B3975E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B39775C(a2, a3);
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
      sub_21B397F1C(v16, a4 & 1);
      v11 = sub_21B39775C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21B4CA688();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21B45D490();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_21B39775C(uint64_t a1, uint64_t a2)
{
  sub_21B4CA6E8();
  if (a2)
  {
    MEMORY[0x21CEF3E40](1);
    sub_21B4C9658();
  }

  else
  {
    MEMORY[0x21CEF3E40](0);
  }

  v4 = sub_21B4CA738();

  return sub_21B3981E4(a1, a2, v4);
}

uint64_t sub_21B3977F0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v53 - v2;
  v4 = sub_21B4C5BA8();
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87A88);
  v59 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v58 = &v53 - v11;
  v70 = MEMORY[0x277D84F90];
  sub_21B3982B0(0, 3, 0);
  v12 = v70;
  v13 = 0xE500000000000000;
  v14 = 0x7972726163;
  if (byte_282CB2F98 != 1)
  {
    v14 = 0x69746375646F7270;
    v13 = 0xEA00000000006E6FLL;
  }

  if (byte_282CB2F98)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6775626564;
  }

  if (byte_282CB2F98)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v66 = v15;
  v67 = v16;
  v17 = sub_21B381264();
  MEMORY[0x21CEEF190](&v68, &v66, MEMORY[0x277D837D0]);

  v18 = v68;
  v19 = v69;
  v21 = v12[2];
  v20 = v12[3];
  if (v21 >= v20 >> 1)
  {
    sub_21B3982B0((v20 > 1), v21 + 1, 1);
    v12 = v70;
  }

  v12[2] = v21 + 1;
  v22 = &v12[2 * v21];
  v22[4] = v18;
  v22[5] = v19;
  if (byte_282CB2F99)
  {
    if (byte_282CB2F99 == 1)
    {
      v23 = 0xE500000000000000;
      v24 = 0x7972726163;
    }

    else
    {
      v24 = 0x69746375646F7270;
      v23 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    v23 = 0xE500000000000000;
    v24 = 0x6775626564;
  }

  v66 = v24;
  v67 = v23;
  MEMORY[0x21CEEF190](&v68, &v66, MEMORY[0x277D837D0], v17);

  v25 = v68;
  v26 = v69;
  v70 = v12;
  v28 = v12[2];
  v27 = v12[3];
  if (v28 >= v27 >> 1)
  {
    sub_21B3982B0((v27 > 1), v28 + 1, 1);
    v12 = v70;
  }

  v12[2] = v28 + 1;
  v29 = &v12[2 * v28];
  v29[4] = v25;
  v29[5] = v26;
  if (byte_282CB2F9A)
  {
    v30 = v12;
    if (byte_282CB2F9A == 1)
    {
      v31 = 0xE500000000000000;
      v32 = 0x7972726163;
    }

    else
    {
      v32 = 0x69746375646F7270;
      v31 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    v30 = v12;
    v31 = 0xE500000000000000;
    v32 = 0x6775626564;
  }

  v33 = v4;
  v66 = v32;
  v67 = v31;
  MEMORY[0x21CEEF190](&v68, &v66, MEMORY[0x277D837D0], v17);

  v34 = v68;
  v35 = v69;
  v36 = v30;
  v70 = v30;
  v37 = v30[2];
  v38 = v36[3];
  v39 = v54;
  if (v37 >= v38 >> 1)
  {
    sub_21B3982B0((v38 > 1), v37 + 1, 1);
    v36 = v70;
  }

  v36[2] = v37 + 1;
  v40 = &v36[2 * v37 + 4];
  *v40 = v34;
  v40[1] = v35;
  v57 = v36;
  v41 = v36[4];
  v42 = v36[5];
  v68 = v41;
  v69 = v42;
  v43 = v58;
  sub_21B4C5A58();
  (*(v59 + 16))(v39, v43, v6);
  v63 = v33;
  v64 = v3;
  v62 = v17;
  v44 = v39;
  v45 = v55;
  if (v37)
  {
    v60 = (v59 + 8);
    ++v61;
    v46 = (v59 + 32);
    v47 = v57 + 7;
    do
    {
      v48 = *v47;
      v68 = *(v47 - 1);
      v69 = v48;

      sub_21B4C5A98();
      sub_21B3F1314(&qword_2811FD6C8, &qword_27CD87A88);
      v49 = v64;
      v50 = MEMORY[0x277D83E40];
      sub_21B4C5B48();
      (*v61)(v65, v63);
      MEMORY[0x21CEEF230](v49, v50);

      (*v60)(v44, v6);
      (*v46)(v44, v45, v6);
      v47 += 2;
      --v37;
    }

    while (v37);
  }

  v51 = v59;
  (*(v59 + 8))(v58, v6);
  return (*(v51 + 32))(v56, v44, v6);
}

char *sub_21B397E10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A80);
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

uint64_t sub_21B397F1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FA8);
  v30 = a2;
  result = sub_21B4CA4D8();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      sub_21B4CA6E8();
      if (v21)
      {
        MEMORY[0x21CEF3E40](1);
        sub_21B4C9658();
      }

      else
      {
        MEMORY[0x21CEF3E40](0);
      }

      result = sub_21B4CA738();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

unint64_t sub_21B3981E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_21B4CA608() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_21B3982B0(char *a1, int64_t a2, char a3)
{
  result = sub_21B397E10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B3982E0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EB8);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_21B4C5BA8();
  v30 = v12;
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EC0);
  v39 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v40 = 45;
  v41 = 0xE100000000000000;
  v31 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v42, &v40, MEMORY[0x277D837D0], v31);
  sub_21B4C5A98();
  sub_21B39880C(v8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EC8);
  sub_21B3F1314(&qword_2811FD6B8, &qword_27CD87EB8);
  sub_21B4C5B78();
  v32[1](v8, v6);
  v22 = *(v38 + 8);
  v38 += 8;
  v32 = v22;
  (v22)(v14, v12);
  MEMORY[0x21CEEF220](v11, v21);
  v23 = sub_21B3F1314(&qword_2811FD6F8, &qword_27CD87EC0);
  MEMORY[0x21CEEF1B0](v18, v15, v23);
  v24 = *(v39 + 8);
  v39 += 8;
  v24(v18, v15);
  v40 = v42[0];
  v41 = v42[1];
  v25 = v33;
  sub_21B4C5A78();

  sub_21B4C5A98();
  sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v27 = v34;
  v26 = v35;
  sub_21B4C5B58();
  sub_21B4C5B38();
  v28 = *(v36 + 8);
  v28(v27, v26);
  (v32)(v14, v30);
  v28(v25, v26);
  return (v24)(v20, v15);
}

uint64_t sub_21B39880C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = sub_21B4C57F8();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21B4C57E8();
  v27 = *(v34 - 8);
  v2 = v27;
  MEMORY[0x28223BE20](v34);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B4C57C8();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B4C57D8();
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B4C5808();
  v33 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9460], v8);
  v18 = v7;
  (*(v5 + 104))(v7, *MEMORY[0x277CC9458], v4);
  v19 = v32;
  v20 = v34;
  (*(v2 + 104))(v32, *MEMORY[0x277CC9468], v34);
  v22 = v35;
  v21 = v36;
  v23 = v37;
  (*(v35 + 104))(v36, *MEMORY[0x277CC9480], v37);
  sub_21B4C5BE8();
  (*(v22 + 8))(v21, v23);
  (*(v27 + 8))(v19, v20);
  (*(v29 + 8))(v18, v28);
  (*(v31 + 8))(v11, v30);
  v24 = sub_21B46B934(&qword_281200340, MEMORY[0x277CC94A0]);
  MEMORY[0x21CEEF1B0](v15, v12, v24);
  v25 = *(v33 + 8);
  v25(v15, v12);
  sub_21B4C5A78();
  return (v25)(v17, v12);
}

unint64_t sub_21B398CA4()
{
  result = qword_2811FE3A0;
  if (!qword_2811FE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FE3A0);
  }

  return result;
}

uint64_t JSPackageMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E18);
  v3 = MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v47 = &v40 - v6;
  MEMORY[0x28223BE20](v5);
  v46 = &v40 - v7;
  v8 = sub_21B4C8588();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E28);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v50 = type metadata accessor for JSPackageMetadata();
  MEMORY[0x28223BE20](v50);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = sub_21B4C8408();
  if (!v20)
  {
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v24 = sub_21B4C94B8();
    __swift_project_value_buffer(v24, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C9298();
    goto LABEL_12;
  }

  v21 = v19;
  v22 = v20;
  if (qword_2811FF838 != -1)
  {
    swift_once();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E30);
  __swift_project_value_buffer(v23, qword_2811FF840);
  sub_21B4C5C38();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21B3F2D94(v11, &qword_27CD87E20);
    if (qword_2811FCF08 != -1)
    {
      swift_once();
    }

    v25 = sub_21B4C94B8();
    __swift_project_value_buffer(v25, qword_2811FCF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8);
    sub_21B4C85A8();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8578();
    sub_21B4C8568();
    v53[3] = MEMORY[0x277D837D0];
    v53[0] = v21;
    v53[1] = v22;
    sub_21B4C8548();
    sub_21B3F2D94(v53, &qword_27CD86E70);
    sub_21B4C8568();
    sub_21B4C8598();
    sub_21B4C9298();
LABEL_12:

    v26 = *(v50 + 24);
    v27 = sub_21B4C5858();
    (*(*(v27 - 8) + 56))(&v17[v26], 1, 1, v27);
    *v17 = 0x8000000000000;
    *(v17 + 2) = 50331648;
    goto LABEL_13;
  }

  (*(v13 + 32))(v15, v11, v12);
  v29 = v46;
  sub_21B4C5C58();

  v30 = *(v29 + 8);
  v31 = *(v29 + 18);
  v32 = v29[38];
  v44 = *(v29 + 20);
  v33 = v29[42];
  v34 = v49;
  v45 = *(v49 + 80);
  v43 = v30 | (v31 << 32) | (v32 << 48);
  if (v33)
  {
    v35 = 0x10000;
  }

  else
  {
    v35 = 0;
  }

  v42 = v35;
  v36 = v47;
  sub_21B4C5C58();

  v37 = v36[43];
  v41 = *(v34 + 80);
  v38 = v48;
  sub_21B4C5C58();
  (*(v13 + 8))(v15, v12);

  v39 = *(v34 + 80);
  *v17 = v43;
  v17[10] = BYTE2(v42);
  *(v17 + 4) = v44;
  v17[11] = v37;
  sub_21B39EB6C(&v38[v39], &v17[*(v50 + 24)]);
  sub_21B3F2D94(&v36[v41], &qword_27CD87538);
  sub_21B3F2D94(&v29[v45], &qword_27CD87538);
LABEL_13:
  sub_21B39EE4C(v17, v51);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_21B3994B8()
{
  result = type metadata accessor for InteractionContext.Page(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t JSPackageVersion.Parser.consuming(_:startingAt:in:)@<X0>(_OWORD *a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EE8);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v5;
  if (qword_2811FF960 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EF0);
  __swift_project_value_buffer(v6, qword_2811FF968);
  sub_21B4C9888();
  v7 = v21;
  sub_21B4C5C28();
  if (v7)
  {

    (*(v22 + 56))(v3, 1, 1, v4);
LABEL_6:
    result = sub_21B3F2D94(v3, &qword_27CD87EE0);
    v10 = v31;
    *v31 = xmmword_21B4D7490;
    *(v10 + 18) = 0;
    *(v10 + 8) = 0;
    return result;
  }

  v8 = v22;
  if ((*(v22 + 48))(v3, 1, v4) == 1)
  {
    goto LABEL_6;
  }

  v11 = v20;
  (*(v8 + 32))(v20, v3, v4);
  sub_21B4C5C58();

  v21 = v28;
  sub_21B4C5C58();

  v12 = v27;
  sub_21B4C5C58();

  v13 = v26;
  sub_21B4C5C58();

  v14 = v25;
  sub_21B4C5C58();
  v29 = v23;
  v30[0] = v24[0];
  *(v30 + 12) = *(v24 + 12);
  sub_21B3F2D94(&v29, &qword_27CD87EF8);
  sub_21B4C5C48();
  v16 = v15;
  result = (*(v8 + 8))(v11, v4);
  v17 = v21 | (v12 << 16) | (v13 << 32) | (v14 << 48);
  v18 = v31;
  *v31 = v16;
  *(v18 + 1) = v17;
  *(v18 + 18) = 1;
  *(v18 + 8) = 0;
  return result;
}

uint64_t UIView.interactionContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v44 = type metadata accessor for InteractionContext.Page(0);
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = UIView.mt_viewController.getter();
  v43 = v5;
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    v11 = v9;
LABEL_6:
    *&v48 = v11;
    sub_21B3F12CC(0, &unk_2811FCD10);
    v42 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87700);
    if (swift_dynamicCast())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = [v10 topViewController];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_4:
  v42 = 0;
LABEL_7:
  v52 = 0;
  memset(v51, 0, sizeof(v51));
LABEL_8:
  v45 = v4;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  swift_beginAccess();
  v41 = v12;
  *(v13 + 16) = swift_unknownObjectWeakLoadStrong();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876E0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21B4358FC;
  *(inited + 24) = v13;
  v40 = inited;
  sub_21B39A3D0(v13, &v48);
  v15 = v48;
  if (v48)
  {
    sub_21B3F12CC(0, &qword_2811FCAE0);
    v16 = MEMORY[0x277D84F90];
    do
    {
      v46 = v16;
      while (1)
      {
        v47 = v15;
        v17 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD876F0);
        if (swift_dynamicCast())
        {
          break;
        }

        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_21B3F2D94(&v48, &qword_27CD876F8);
        sub_21B39A3D0(v13, &v48);
        v15 = v48;
        if (!v48)
        {
          v16 = v46;
          goto LABEL_21;
        }
      }

      v38 = v7;
      v39 = a1;
      v18 = *(&v49 + 1);
      v19 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      v20 = (*(v19 + 8))(v18, v19);

      __swift_destroy_boxed_opaque_existential_1(&v48);
      v21 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_21B39BB08(0, *(v21 + 2) + 1, 1, v21);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      v24 = v21;
      v7 = v38;
      if (v23 >= v22 >> 1)
      {
        v24 = sub_21B39BB08((v22 > 1), v23 + 1, 1, v21);
      }

      *(v24 + 2) = v23 + 1;
      v16 = v24;
      v24[v23 + 32] = v20;
      sub_21B39A3D0(v13, &v48);
      v15 = v48;
      a1 = v39;
    }

    while (v48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_21:

  if (*(v16 + 2))
  {
    v25 = v16[32];
  }

  else
  {
    v25 = 7;
  }

  v26 = v45;

  sub_21B36C7AC(v51, &v48, &qword_27CD876E8);
  v27 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    v28 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    (*(v28 + 8))(v27, v28);
    v29 = v43;
    v30 = v44;
    (*(v43 + 56))(v26, 0, 1, v44);
    __swift_destroy_boxed_opaque_existential_1(&v48);
    v31 = *(v29 + 48);
    if (v31(v26, 1, v30) != 1)
    {
      sub_21B39C754(v26, v7);
      goto LABEL_30;
    }
  }

  else
  {
    sub_21B3F2D94(&v48, &qword_27CD876E8);
    v32 = v43;
    v30 = v44;
    (*(v43 + 56))(v26, 1, 1, v44);
    v31 = *(v32 + 48);
  }

  swift_storeEnumTagMultiPayload();
  if (v31(v26, 1, v30) != 1)
  {
    sub_21B3F2D94(v26, &qword_27CD876D8);
  }

LABEL_30:
  sub_21B36C7AC(v51, &v48, &qword_27CD876E8);
  v33 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    v34 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    (*(v34 + 16))(&v47, v33, v34);

    v35 = v47;
    __swift_destroy_boxed_opaque_existential_1(&v48);
  }

  else
  {

    sub_21B3F2D94(&v48, &qword_27CD876E8);
    v35 = 2;
  }

  sub_21B39C754(v7, a1);
  v36 = type metadata accessor for InteractionContext(0);
  *(a1 + *(v36 + 20)) = v25;
  *(a1 + *(v36 + 24)) = v35;
  return sub_21B3F2D94(v51, &qword_27CD876E8);
}

uint64_t sub_21B399F4C()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B399F84()
{

  return swift_deallocObject();
}

uint64_t UIView.mt_viewController.getter()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v1 = swift_allocObject();
  swift_beginAccess();
  *(v1 + 16) = swift_unknownObjectWeakLoadStrong();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87AF0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21B458D64;
  *(inited + 24) = v1;
  sub_21B39A344(v1, &v7);
  for (i = v7; v7; i = v7)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x21CEF3050]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
      }

      sub_21B4C9988();
      v0 = v8;
    }

    else
    {
    }

    sub_21B39A344(v1, &v7);
  }

  if (!(v0 >> 62))
  {
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_16:

    return 0;
  }

  result = sub_21B4CA4B8();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CEF3AB0](0, v0);
    goto LABEL_14;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v0 + 32);
LABEL_14:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B39A1EC()
{
  MEMORY[0x21CEF57D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21B39A224()
{

  return swift_deallocObject();
}

uint64_t sub_21B39A26C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EF0);
  __swift_allocate_value_buffer(v0, qword_2811FF968);
  __swift_project_value_buffer(v0, qword_2811FF968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EF8);
  sub_21B3F1314(&qword_2811FD640, &qword_27CD87EF0);
  return sub_21B4C5C18();
}

void sub_21B39A344(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = [v4 nextResponder];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;

  *a2 = v4;
}

void sub_21B39A3D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = [v4 superview];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;

  *a2 = v4;
}

uint64_t sub_21B39A45C@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F20);
  v145 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v133 - v1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F28);
  v142 = *(v163 - 8);
  v2 = MEMORY[0x28223BE20](v163);
  v162 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v161 = &v133 - v4;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F30);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v133 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F38);
  MEMORY[0x28223BE20](v6 - 8);
  v135 = &v133 - v7;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F40);
  v173 = *(v159 - 8);
  v8 = MEMORY[0x28223BE20](v159);
  v137 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v160 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v133 - v12;
  v14 = sub_21B4C5AA8();
  v180 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C68);
  v176 = *(v153 - 8);
  v17 = MEMORY[0x28223BE20](v153);
  v167 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v166 = &v133 - v19;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v189 = *(v178 - 8);
  v20 = MEMORY[0x28223BE20](v178);
  v22 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v185 = &v133 - v23;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F48);
  v140 = *(v158 - 8);
  v24 = MEMORY[0x28223BE20](v158);
  v157 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v186 = &v133 - v26;
  v27 = sub_21B4C5BA8();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v133 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F50);
  v187 = *(v34 - 8);
  v188 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v134 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v181 = &v133 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v182 = &v133 - v40;
  MEMORY[0x28223BE20](v39);
  v174 = &v133 - v41;
  sub_21B4C5A98();
  sub_21B4C5BD8();
  v171 = sub_21B4C5BF8();
  v42 = *(v171 - 8);
  v170 = *(v42 + 56);
  v168 = v42 + 56;
  v170(v13, 1, 1, v171);
  v152 = v31;
  sub_21B4C5A98();
  v155 = sub_21B39BAB0();
  v43 = MEMORY[0x277D83E40];
  v147 = v22;
  v133 = v16;
  v150 = v13;
  v151 = v14;
  sub_21B4C5B88();
  v175 = *(v28 + 8);
  v175(v31, v27);
  v164 = v28 + 8;
  sub_21B3F2D94(v13, &qword_27CD86C60);
  v44 = *(v180 + 1);
  v180 += 8;
  v154 = v44;
  v44(v16, v14);
  v45 = v167;
  v46 = v43;
  MEMORY[0x21CEEF240](v22, v43);
  v47 = sub_21B3F1314(&qword_2811FD6C0, &qword_27CD86C68);
  v48 = v166;
  v49 = v153;
  v148 = v47;
  MEMORY[0x21CEEF1B0](v45, v153, v47);
  v50 = v176 + 8;
  v51 = v45;
  v52 = *(v176 + 8);
  v149 = v52;
  v52(v51, v49);
  v176 = v50;
  v53 = v185;
  sub_21B4C5A78();
  v52(v48, v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F58);
  v156 = MEMORY[0x277D85AC0];
  v177 = sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v55 = v178;
  v56 = v186;
  v165 = v54;
  sub_21B4C5B68();
  v57 = *(v189 + 8);
  v189 += 8;
  v183 = v57;
  v57(v53, v55);
  v146 = v33;
  v58 = v27;
  v184 = v27;
  v59 = v175;
  v175(v33, v27);
  v60 = v182;
  MEMORY[0x21CEEF220](v56, v54);
  v179 = sub_21B3F1314(&qword_2811FD6D0, &qword_27CD87F50);
  v61 = v188;
  MEMORY[0x21CEEF1B0](v60, v188, v179);
  v62 = *(v187 + 8);
  v187 += 8;
  v169 = v62;
  v62(v60, v61);
  v192 = 46;
  v193 = 0xE100000000000000;
  v172 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v194, &v192, MEMORY[0x277D837D0], v172);
  sub_21B4C5A98();
  v63 = v133;
  sub_21B4C5BD8();
  v64 = v150;
  v170(v150, 1, 1, v171);
  v65 = v152;
  sub_21B4C5A98();
  v66 = v147;
  v67 = v46;
  v68 = v151;
  sub_21B4C5B88();
  v69 = v59;
  v59(v65, v58);
  sub_21B3F2D94(v64, &qword_27CD86C60);
  v154(v63, v68);
  v70 = v167;
  MEMORY[0x21CEEF240](v66, v67);
  v71 = v166;
  v72 = v153;
  MEMORY[0x21CEEF1B0](v70, v153, v148);
  v73 = v149;
  v149(v70, v72);
  v74 = v185;
  sub_21B4C5A78();
  v75 = v71;
  v76 = v72;
  v73(v75, v72);
  v77 = v178;
  v78 = v186;
  v79 = v74;
  v80 = v165;
  v81 = v146;
  sub_21B4C5B68();
  v183(v79, v77);
  v82 = v184;
  v69(v81, v184);
  v83 = v181;
  MEMORY[0x21CEEF220](v78, v80);
  v84 = v188;
  MEMORY[0x21CEEF1B0](v83, v188, v179);
  v169(v83, v84);
  v190 = 46;
  v191 = 0xE100000000000000;
  MEMORY[0x21CEEF1B0](&v192, &v190, MEMORY[0x277D837D0], v172);
  sub_21B4C5A98();
  sub_21B4C5BD8();
  v85 = v150;
  v170(v150, 1, 1, v171);
  v86 = v152;
  sub_21B4C5A98();
  v87 = v147;
  v88 = MEMORY[0x277D83E40];
  v89 = v151;
  sub_21B4C5B88();
  v90 = v175;
  v175(v86, v82);
  sub_21B3F2D94(v85, &qword_27CD86C60);
  v154(v63, v89);
  v91 = v167;
  MEMORY[0x21CEEF240](v87, v88);
  v92 = v166;
  MEMORY[0x21CEEF1B0](v91, v76, v148);
  v93 = v149;
  v149(v91, v76);
  v94 = v185;
  sub_21B4C5A78();
  v93(v92, v76);
  v95 = v178;
  v96 = v186;
  v97 = v165;
  v98 = v146;
  sub_21B4C5B68();
  v183(v94, v95);
  v90(v98, v184);
  v99 = v134;
  MEMORY[0x21CEEF220](v96, v97);
  v100 = v188;
  MEMORY[0x21CEEF1B0](v99, v188, v179);
  v169(v99, v100);
  v170(v85, 1, 1, v171);
  sub_21B4C5A98();
  v101 = v136;
  sub_21B39BC0C(v136);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F60);
  sub_21B3F1314(&qword_2811FD698, &qword_27CD87F30);
  v103 = v135;
  v104 = v138;
  sub_21B4C5B98();
  (*(v139 + 8))(v101, v104);
  v175(v98, v184);
  sub_21B3F2D94(v85, &qword_27CD86C60);
  v105 = v137;
  MEMORY[0x21CEEF1D0](v103, v102);
  v176 = sub_21B3F1314(&qword_2811FD720, &qword_27CD87F40);
  v106 = v105;
  v107 = v105;
  v108 = v159;
  MEMORY[0x21CEEF1B0](v106, v159, v176);
  v109 = *(v173 + 8);
  v173 += 8;
  v180 = v109;
  (v109)(v107, v108);
  sub_21B4C5A78();
  v110 = v194[0];
  v111 = v194[1];
  sub_21B4C5A98();
  v190 = v110;
  v191 = v111;
  v112 = v185;
  v113 = v98;
  sub_21B4C5B58();

  sub_21B3F1314(&qword_2811FD628, &qword_27CD87F48);
  v114 = v178;
  sub_21B4C5B38();
  v183(v112, v114);
  v115 = v184;
  v116 = v175;
  v175(v98, v184);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F68);
  sub_21B4C5B38();
  v116(v98, v115);
  v118 = v192;
  v117 = v193;
  sub_21B4C5A98();
  v190 = v118;
  v191 = v117;
  v119 = v185;
  sub_21B4C5B58();

  sub_21B3F1314(&qword_2811FD630, &qword_27CD87F28);
  sub_21B4C5B38();
  v183(v119, v114);
  v120 = v184;
  v116(v113, v184);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F70);
  v121 = v141;
  sub_21B4C5B38();
  v116(v113, v120);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EF8);
  sub_21B3F1314(&qword_2811FD638, &qword_27CD87F20);
  v122 = v121;
  v123 = v160;
  v124 = v143;
  v125 = v159;
  sub_21B4C5B38();
  v116(v113, v120);
  (*(v145 + 8))(v122, v124);
  v126 = *(v142 + 8);
  v127 = v163;
  v126(v162, v163);
  v126(v161, v127);
  v128 = *(v140 + 8);
  v129 = v158;
  v128(v157, v158);
  v128(v186, v129);
  (v180)(v123, v125);
  v130 = v188;
  v131 = v169;
  v169(v181, v188);
  v131(v182, v130);
  return (v131)(v174, v130);
}

unint64_t sub_21B39BAB0()
{
  result = qword_2811FD708;
  if (!qword_2811FD708)
  {
    sub_21B4C5AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD708);
  }

  return result;
}

char *sub_21B39BB08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_21B39BC0C@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F48);
  v2 = *(v1 - 8);
  v76 = v1;
  v77 = v2;
  MEMORY[0x28223BE20](v1);
  v74 = v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F78);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = v58 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F80);
  v85 = *(v75 - 8);
  v8 = MEMORY[0x28223BE20](v75);
  v69 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = v58 - v10;
  v11 = sub_21B4C5AA8();
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F88);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v58 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v83 = *(v81 - 8);
  v19 = MEMORY[0x28223BE20](v81);
  v68 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v58 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F90);
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v24 = v58 - v23;
  v62 = sub_21B4C5BA8();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F98);
  v82 = *(v80 - 8);
  v27 = MEMORY[0x28223BE20](v80);
  v29 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v84 = v58 - v30;
  v86 = 45;
  v87 = 0xE100000000000000;
  v66 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v88, &v86, MEMORY[0x277D837D0], v66);
  sub_21B4C5A98();
  sub_21B39C908();
  sub_21B39BAB0();
  sub_21B4C5AB8();
  v31 = sub_21B3F1314(&qword_2811FD700, &qword_27CD87F88);
  MEMORY[0x21CEEF1B0](v16, v12, v31);
  v32 = *(v13 + 8);
  v32(v16, v12);
  sub_21B4C5A78();
  v32(v18, v12);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87FA0);
  v58[1] = MEMORY[0x277D85AC0];
  v64 = sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v34 = v81;
  v60 = v24;
  v79 = v22;
  v61 = v33;
  sub_21B4C5B68();
  v63 = *(v83 + 8);
  v83 += 8;
  v63(v22, v34);
  v35 = *(v65 + 1);
  v36 = v62;
  v35(v26, v62);
  v58[0] = v35;
  MEMORY[0x21CEEF220](v24, v33);
  v59 = sub_21B3F1314(&qword_2811FD6F0, &qword_27CD87F98);
  v37 = v80;
  MEMORY[0x21CEEF1B0](v29, v80, v59);
  v38 = *(v82 + 8);
  v82 += 8;
  v65 = v38;
  v38(v29, v37);
  v39 = sub_21B4C5BF8();
  v40 = v67;
  (*(*(v39 - 8) + 56))(v67, 1, 1, v39);
  sub_21B4C5A98();
  v41 = v74;
  sub_21B39CDDC(v74);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87FA8);
  sub_21B3F1314(&qword_2811FD628, &qword_27CD87F48);
  v43 = v73;
  v44 = v41;
  v45 = v76;
  sub_21B4C5B98();
  v77[1](v44, v45);
  v35(v26, v36);
  sub_21B3F2D94(v40, &qword_27CD86C60);
  v46 = v69;
  MEMORY[0x21CEEF1D0](v43, v42);
  v76 = sub_21B3F1314(&qword_2811FD710, &qword_27CD87F80);
  v47 = v71;
  v48 = v75;
  MEMORY[0x21CEEF1B0](v46, v75, v76);
  v49 = *(v85 + 8);
  v85 += 8;
  v77 = v49;
  (v49)(v46, v48);
  v86 = v88[0];
  v87 = v88[1];
  sub_21B4C5A78();

  sub_21B4C5A98();
  v50 = v68;
  v51 = v81;
  sub_21B4C5B58();
  v52 = v60;
  sub_21B4C5B38();
  v53 = v63;
  v63(v50, v51);
  v54 = v36;
  v55 = v58[0];
  (v58[0])(v26, v54);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87FB0);
  sub_21B3F1314(&qword_2811FD690, &qword_27CD87F90);
  v56 = v70;
  sub_21B4C5B38();
  v55(v26, v54);
  (*(v72 + 8))(v52, v56);
  v53(v79, v81);
  (v77)(v47, v48);
  return v65(v84, v80);
}

uint64_t sub_21B39C754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext.Page(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_21B39C7B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AC0);
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

char *sub_21B39C8C4(char *a1, int64_t a2, char a3)
{
  result = sub_21B39C7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B39C908()
{
  v31 = MEMORY[0x277D84F90];
  sub_21B39C8C4(0, 7, 0);
  v0 = v31;
  v1 = byte_282CB2C78 + 65;
  v3 = *(v31 + 16);
  v2 = *(v31 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    sub_21B39C8C4((v2 > 1), v3 + 1, 1);
    v0 = v31;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = 0xE100000000000000;
  v6 = byte_282CB2C79 + 65;
  v7 = *(v0 + 24);
  v8 = v3 + 2;
  if (v4 >= v7 >> 1)
  {
    sub_21B39C8C4((v7 > 1), v3 + 2, 1);
  }

  *(v0 + 16) = v8;
  v9 = v0 + 16 * v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = 0xE100000000000000;
  v10 = byte_282CB2C7A + 65;
  v11 = *(v0 + 24);
  v12 = v3 + 3;
  if (v8 >= v11 >> 1)
  {
    sub_21B39C8C4((v11 > 1), v3 + 3, 1);
  }

  *(v0 + 16) = v12;
  v13 = v0 + 16 * v8;
  *(v13 + 32) = v10;
  *(v13 + 40) = 0xE100000000000000;
  v14 = byte_282CB2C7B + 65;
  v15 = *(v0 + 24);
  v16 = v3 + 4;
  if (v12 >= v15 >> 1)
  {
    sub_21B39C8C4((v15 > 1), v3 + 4, 1);
  }

  *(v0 + 16) = v16;
  v17 = v0 + 16 * v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0xE100000000000000;
  v18 = byte_282CB2C7C + 65;
  v19 = *(v0 + 24);
  v20 = v3 + 5;
  if (v16 >= v19 >> 1)
  {
    sub_21B39C8C4((v19 > 1), v3 + 5, 1);
  }

  *(v0 + 16) = v20;
  v21 = v0 + 16 * v16;
  *(v21 + 32) = v18;
  *(v21 + 40) = 0xE100000000000000;
  v22 = byte_282CB2C7D + 65;
  v23 = *(v0 + 24);
  v24 = v3 + 6;
  if (v20 >= v23 >> 1)
  {
    sub_21B39C8C4((v23 > 1), v3 + 6, 1);
  }

  *(v0 + 16) = v24;
  v25 = v0 + 16 * v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0xE100000000000000;
  v26 = byte_282CB2C7E;
  v27 = *(v0 + 24);
  v28 = v20 + 2;
  if (v24 >= v27 >> 1)
  {
    sub_21B39C8C4((v27 > 1), v24 + 1, 1);
  }

  *(v0 + 16) = v28;
  v29 = v0 + 16 * v24;
  *(v29 + 32) = v26 + 65;
  *(v29 + 40) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87A80);
  sub_21B3F1314(&qword_2811FCDF8, &qword_27CD87A80);
  sub_21B4C5BC8();
}

uint64_t ImpressionMetrics.withParentID(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21B4C8B08();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if (!a2)
  {
    goto LABEL_6;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = sub_21B4C8B58();
    (*(*(v15 - 8) + 16))(a3, v3, v15);
    sub_21B4C8B28();
    (*(v8 + 16))(v13, v11, v7);

    sub_21B4C8AE8();
    (*(v8 + 8))(v11, v7);
    return sub_21B4C8B38();
  }

  else
  {
LABEL_6:
    v17 = sub_21B4C8B58();
    v18 = *(*(v17 - 8) + 16);

    return v18(a3, v3, v17);
  }
}

uint64_t sub_21B39CDDC@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v49 - v2;
  v56 = sub_21B4C5AA8();
  v62 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C68);
  v63 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v49 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v69 = *(v64 - 8);
  v10 = MEMORY[0x28223BE20](v64);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F48);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = &v49 - v15;
  v16 = sub_21B4C5BA8();
  v66 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v49 - v21;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F50);
  v68 = *(v61 - 8);
  v22 = MEMORY[0x28223BE20](v61);
  v53 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = &v49 - v24;
  v70 = 46;
  v71 = 0xE100000000000000;
  v59 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v72, &v70, MEMORY[0x277D837D0], v59);
  sub_21B4C5A98();
  sub_21B4C5BD8();
  v25 = sub_21B4C5BF8();
  (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
  sub_21B4C5A98();
  sub_21B39BAB0();
  v26 = MEMORY[0x277D83E40];
  v52 = v12;
  v27 = v3;
  v28 = v56;
  sub_21B4C5B88();
  v29 = *(v17 + 8);
  v67 = v17 + 8;
  v29(v20, v16);
  v30 = v29;
  v50 = v29;
  sub_21B3F2D94(v27, &qword_27CD86C60);
  v62[1](v5, v28);
  v31 = v54;
  MEMORY[0x21CEEF240](v12, v26);
  v32 = sub_21B3F1314(&qword_2811FD6C0, &qword_27CD86C68);
  v33 = v55;
  MEMORY[0x21CEEF1B0](v31, v6, v32);
  v34 = *(v63 + 8);
  v34(v31, v6);
  v35 = v58;
  sub_21B4C5A78();
  v34(v33, v6);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87F58);
  v63 = sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v37 = v64;
  v38 = v60;
  v56 = v36;
  v39 = v51;
  sub_21B4C5B68();
  v40 = *(v69 + 8);
  v69 += 8;
  v62 = v40;
  (v40)(v35, v37);
  v30(v39, v66);
  v41 = v53;
  MEMORY[0x21CEEF220](v38, v36);
  v42 = sub_21B3F1314(&qword_2811FD6D0, &qword_27CD87F50);
  v43 = v57;
  v44 = v61;
  MEMORY[0x21CEEF1B0](v41, v61, v42);
  v45 = *(v68 + 8);
  v68 += 8;
  v45(v41, v44);
  v70 = v72[0];
  v71 = v72[1];
  sub_21B4C5A78();

  sub_21B4C5A98();
  v46 = v52;
  sub_21B4C5B58();
  sub_21B4C5B38();
  v47 = v62;
  (v62)(v46, v37);
  v50(v39, v66);
  (v47)(v35, v37);
  return (v45)(v43, v44);
}

uint64_t DynamicImpressionsCalculator.childCalculator(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_21B4C8CF8();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(v1 + 16);
  v10 = sub_21B4C8B08();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_elementPositions);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_applicationLifecycleObserver) = 0;
  *(v13 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  *(v13 + 16) = v9;
  *(v13 + 24) = v8;
  sub_21B37C438(v6, v13 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_parentID);
  *(v13 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_elementPositions) = v12;

  return v13;
}

uint64_t DynamicImpressionsCalculator.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_applicationLifecycleObserver))
  {

    sub_21B4C9A78();
  }

  sub_21B3F2D94(v0 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_parentID, &qword_27CD881B8);

  return swift_deallocClassInstance();
}

void __swiftcall ClickLocationElement.init(id:uniqueID:parentUniqueID:position:fields:)(PodcastsUI::ClickLocationElement *__return_ptr retstr, Swift::String id, Swift::String_optional uniqueID, Swift::String_optional parentUniqueID, Swift::Int position, Swift::OpaquePointer_optional fields)
{
  retstr->id = id;
  retstr->parentUniqueID = parentUniqueID;
  retstr->_uniqueID = uniqueID;
  retstr->position = position;
  retstr->fields.value._rawValue = fields.value._rawValue;
}

uint64_t sub_21B39D8B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_21B4CA3D8();
  }

  result = sub_21B39DB4C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE2(result) & 1;
    v13 = result | ((BYTE2(result) & 1) << 16);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 24);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B39D99C@<X0>(unint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  if ((v4 ^ *a1) < 0x4000)
  {
    goto LABEL_4;
  }

  result = sub_21B39D8B8(*a1, v4, v6, v5, 10);
  if ((result & 0x1000000) != 0)
  {

    v9 = sub_21B46D648(v3, v4, v6, v5, 10);

    result = v9;
    if ((v9 & 0x10000) != 0)
    {
      goto LABEL_4;
    }
  }

  else if ((result & 0x10000) != 0)
  {
LABEL_4:
    sub_21B46E448();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v4;
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    *(v8 + 32) = 1;
    swift_willThrow();
  }

  *a2 = result;
  return result;
}

uint64_t ClickLocationElement._uniqueID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall ClickLocationTracker.element(for:)(PodcastsUI::ClickLocationElement_optional *__return_ptr retstr, Swift::String a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_21B39F9F0((v4 + 16), retstr);
  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_21B39DB4C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21B46E020(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_21B4C9828();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21B46E020(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21B46E020(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_21B4C9828();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOWORD(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 16);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFFFF0000) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 & 0x10000) != 0)
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 16);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 16);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 & 0x10000) != 0)
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 16);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 16);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 16);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_21B39E018@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B39E050(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21B39E050(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_21B4CA1B8() != 1 || (a2 ^ a1) < 0x4000 || (v8 = sub_21B4CA1C8(), result = _s10PodcastsUI16JSPackageVersionV15LetterComponentO8rawValueAESgSJ_tcfC_0(v8, v9), result == 7))
  {
    sub_21B46E448();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    *(v11 + 32) = 0;
    swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall ClickLocationTracker.addElement(_:)(PodcastsUI::ClickLocationElement *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_21B39DFFC((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t _s10PodcastsUI16JSPackageVersionV15LetterComponentO8rawValueAESgSJ_tcfC_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 65 && a2 == 0xE100000000000000 || (sub_21B4CA608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 66 && a2 == 0xE100000000000000 || (sub_21B4CA608() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 67 && a2 == 0xE100000000000000 || (sub_21B4CA608() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 68 && a2 == 0xE100000000000000 || (sub_21B4CA608() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 69 && a2 == 0xE100000000000000 || (sub_21B4CA608() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 70 && a2 == 0xE100000000000000 || (sub_21B4CA608() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 71 && a2 == 0xE100000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_21B4CA608();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double sub_21B39E380@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_21B36CEF8(a2, a3);
    if (v7)
    {
      v8 = (*(v5 + 56) + (v6 << 6));
      v10 = v8[2];
      v9 = v8[3];
      v11 = v8[1];
      v16[0] = *v8;
      v16[1] = v11;
      v16[2] = v10;
      v16[3] = v9;
      v12 = v8[1];
      *a4 = *v8;
      a4[1] = v12;
      v13 = v8[3];
      a4[2] = v8[2];
      a4[3] = v13;
      sub_21B39E5DC(v16, &v15);
    }

    else
    {
      result = 0.0;
      a4[2] = 0u;
      a4[3] = 0u;
      *a4 = 0u;
      a4[1] = 0u;
    }
  }

  else
  {
    result = 0.0;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for JSPackageVersion.LetterComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21B39E4D8(void *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 8);
  }

  sub_21B39E5DC(a2, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[0] = *a1;
  sub_21B39E638(a2, v4, v5, isUniquelyReferenced_nonNull_native);

  *a1 = v8[0];
  return result;
}

uint64_t getEnumTagSinglePayload for JSPackageVersion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 11))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 6);
  if (v3 <= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = *(a1 + 6);
  }

  v5 = v4 - 8;
  if (v3 < 7)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_21B39E638(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21B36CEF8(a2, a3);
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
      sub_21B39E84C(v16, a4 & 1);
      v11 = sub_21B36CEF8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21B4CA688();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21B45D2F0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_21B42BF70(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 6));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t __swift_memcpy11_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_21B39E7D4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  MEMORY[0x21CEF2ED0](*a1, a1[1], a1[2], a1[3]);
  v3 = sub_21B4CA518();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_21B39E84C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FB0);
  v37 = a2;
  result = sub_21B4CA4D8();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v37)
      {
        v38 = *(v25 + 8);
        v39 = *(v25 + 16);
        v40 = *(v25 + 32);
        v41 = *v25;
        v42 = *(v25 + 48);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        v44 = *(v25 + 32);
        v45 = v28;
        v43[0] = v26;
        v43[1] = v27;
        v42 = v28;
        v39 = v27;
        v40 = v44;
        v38 = *(&v26 + 1);
        v41 = v26;

        sub_21B39E5DC(v43, v46);
      }

      sub_21B4CA6E8();
      sub_21B4C9658();
      result = sub_21B4CA738();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v41;
      *(v17 + 8) = v38;
      *(v17 + 16) = v39;
      *(v17 + 32) = v40;
      *(v17 + 48) = v42;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21B39EB6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_21B39EBDC()
{
  v1 = v0;
  v31 = sub_21B4C8B08();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F88);
  v3 = *v0;
  v4 = sub_21B4CA4C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_21B39EE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for JSPackageMetadata()
{
  result = qword_2811FF828;
  if (!qword_2811FF828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSPackage.init(bundle:location:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v46 = sub_21B4C8468();
  v38 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSPackageSourceLocation();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSPackageMetadata();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B3F821C(a1, &v43);
  JSPackageMetadata.init(from:)(&v43, v12);
  v13 = a1[3];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  sub_21B39F340(a2, v9);
  v44 = sub_21B4C9468();
  v45 = MEMORY[0x277D224E8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_21B39F558(v16, v9, v13, boxed_opaque_existential_1);
  if (v3)
  {
    sub_21B46459C(a2, type metadata accessor for JSPackageSourceLocation);
    sub_21B46459C(v12, type metadata accessor for JSPackageMetadata);
    __swift_deallocate_boxed_opaque_existential_1(&v43);
  }

  else
  {
    v20 = v37;
    v19 = v38;
    v35 = v10;
    v21 = v46;
    v22 = a2;
    sub_21B3F821C(a1, v39);
    if (qword_2811FD800 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v21, qword_2811FD808);
    (*(v19 + 16))(v20, v23, v21);
    v41 = sub_21B4C8ED8();
    v42 = MEMORY[0x277D22178];
    __swift_allocate_boxed_opaque_existential_1(&v40);
    sub_21B4C8EC8();
    v24 = *v12;
    v25 = *(v12 + 4);
    v26 = v12[10];
    LODWORD(v46) = v12[11];
    v27 = *(v35 + 24);
    v28 = v22;
    v29 = type metadata accessor for JSPackage();
    v30 = &v12[v27];
    v31 = v36;
    sub_21B39EB6C(v30, v36 + v29[9]);
    sub_21B36D484(&v43, v31);
    sub_21B36D484(&v40, v31 + 40);
    sub_21B464538(v28, v31 + v29[6]);
    v32 = v31 + v29[7];
    *v32 = v24;
    *(v32 + 10) = v26;
    *(v32 + 8) = v25;
    *(v31 + v29[8]) = v46;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21B39F340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageSourceLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ClickLocationElement.seeAllButton(uniqueID:parentUniqueID:position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = sub_21B4C60B8();
  v12 = v11;
  v13 = [objc_opt_self() mainBundle];
  v14 = sub_21B4C5518();
  v16 = v15;

  v17 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *&v30 = v14;
  *(&v30 + 1) = v16;
  sub_21B36EE80(&v30, v29);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v29, v10, v12, isUniquelyReferenced_nonNull_native);

  v20 = sub_21B4C5F88();
  v22 = v21;
  v23 = sub_21B4C6738();
  v31 = v17;
  *&v30 = v23;
  *(&v30 + 1) = v24;
  sub_21B36EE80(&v30, v29);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v29, v20, v22, v25);

  *a6 = 0x6C6C41656553;
  a6[1] = 0xE600000000000000;
  a6[4] = a3;
  a6[5] = a4;
  a6[2] = a1;
  a6[3] = a2;
  a6[6] = a5;
  a6[7] = v18;
}

uint64_t sub_21B39F558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v24[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - v8;
  v10 = sub_21B4C9748();
  MEMORY[0x28223BE20](v10 - 8);
  if (qword_2811FD828 != -1)
  {
    swift_once();
  }

  v11 = sub_21B4C8468();
  __swift_project_value_buffer(v11, qword_2811FD830);
  v12 = sub_21B39FC18();
  if (!v4)
  {
    v15 = v12;
    v16 = v13;
    sub_21B4C9738();
    sub_21B4C9718();
    if (v17)
    {
      v18 = v25;
      JSPackageSourceLocation.url.getter(v9);
      v19 = sub_21B4C5748();
      (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
      sub_21B4C9458();
      sub_21B36D4F4(v15, v16);
      v14 = v18;
      goto LABEL_7;
    }

    sub_21B3A2BB4();
    swift_allocError();
    v22 = v21;
    *v21 = sub_21B4C8458();
    v22[1] = v23;
    *(v22 + 16) = 4;
    swift_willThrow();
    sub_21B36D4F4(v15, v16);
  }

  v14 = v25;
LABEL_7:
  sub_21B39FEC4(v14);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

Swift::Void __swiftcall MetricsFieldsContext.addSiblingClickLocation(_:)(PodcastsUI::ClickLocationElement *a1)
{
  uniqueID = a1->_uniqueID;
  *&v15[64] = a1->id;
  v16 = uniqueID;
  v2 = *&a1->position;
  parentUniqueID = a1->parentUniqueID;
  v18 = v2;
  if (qword_2811FD140 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87810);
  __swift_project_value_buffer(v3, qword_2811FD148);
  type metadata accessor for ClickLocationTracker();
  sub_21B4C8CE8();
  if (*v15)
  {
    if (qword_2811FD0F8 != -1)
    {
      swift_once();
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87908);
    __swift_project_value_buffer(v4, qword_2811FD100);
    sub_21B4C8CE8();
    if (*&v15[8])
    {

      ClickLocationTracker.parent(of:)(v15, *v15);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      memset(v15, 0, 64);
    }

    v11 = *v15;
    v12 = *&v15[16];
    v13 = *&v15[32];
    v14 = *&v15[48];
    v5 = *&v15[8];
    if (*&v15[8])
    {
      if (*(&v12 + 1))
      {
        v5 = *(&v12 + 1);
        v6 = v12;
      }

      else
      {
        v6 = v11;
      }

      sub_21B39FBB0(&v11);
    }

    else
    {
      v6 = 0;
    }

    sub_21B39E5DC(&v15[64], v8);

    v8[0] = *&v15[64];
    v8[1] = v16;
    v10 = v18;
    *&v9 = v6;
    *(&v9 + 1) = v5;
    v7[0] = *&v15[64];
    v7[1] = v16;
    v7[2] = v9;
    v7[3] = v18;
    MetricsFieldsContext.setClickLocation(_:)(v7);

    sub_21B39FE70(v8);
  }
}

uint64_t sub_21B39FA24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21B4C8468();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21B4C8478();
}

void __swiftcall ClickLocationTracker.parent(of:)(PodcastsUI::ClickLocationElement_optional *__return_ptr retstr, Swift::String of)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_21B39DFE0((v4 + 16), &v11);
  os_unfair_lock_unlock((v4 + 24));
  v8[0] = v11;
  v8[1] = v12;
  v9 = v13;
  v10 = v14;
  if (*(&v11 + 1))
  {
    if (v9.value._object)
    {

      v5 = sub_21B39FBB0(v8);
      MEMORY[0x28223BE20](v5);
      os_unfair_lock_lock((v4 + 24));
      sub_21B39F9F0((v4 + 16), retstr);
      os_unfair_lock_unlock((v4 + 24));
    }

    else
    {
      sub_21B39FBB0(v8);
      retstr->value.id = 0u;
      retstr->value._uniqueID = 0u;
      retstr->value.parentUniqueID = 0u;
      *&retstr->value.position = 0u;
    }
  }

  else
  {
    v6 = v12;
    retstr->value.id = v11;
    retstr->value._uniqueID = v6;
    v7 = v14;
    retstr->value.parentUniqueID = v13;
    *&retstr->value.position = v7;
  }
}

uint64_t sub_21B39FBB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B39FC18()
{
  result = sub_21B4C83F8();
  if (!v0 && v2 >> 60 == 15)
  {
    v3 = result;
    sub_21B3A2BB4();
    swift_allocError();
    v5 = v4;
    *v4 = sub_21B4C8458();
    v5[1] = v6;
    *(v5 + 16) = 3;
    swift_willThrow();
    return v3;
  }

  return result;
}

uint64_t JSPackageSourceLocation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21B4C75F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSPackageSourceLocation();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B39F340(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_3;
    }
  }

  else if (EnumCaseMultiPayload)
  {
LABEL_3:
    (*(v5 + 32))(v7, v10, v4);
    sub_21B4C75D8();
    sub_21B4C5668();

    return (*(v5 + 8))(v7, v4);
  }

  v13 = sub_21B4C5748();
  return (*(*(v13 - 8) + 32))(a1, v10, v13);
}

uint64_t sub_21B39FEC4(uint64_t a1)
{
  v2 = type metadata accessor for JSPackageSourceLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UIEdgeInsets __swiftcall UIEdgeInsets.subtracting(other:)(UIEdgeInsets other)
{
  v5 = v1 - other.top;
  v6 = v2 - other.left;
  v7 = v3 - other.bottom;
  v8 = v4 - other.right;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

uint64_t sub_21B39FFA4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  sub_21B4CA188();
  v6 = sub_21B4CA748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(*(a4 - 8) + 56))(&v11 - v8, 1, 1, a4);
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21B3A00E0()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[45];
  v8 = v0[22];
  v9 = MEMORY[0x277D21998];
  v0[20] = v3;
  v0[21] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  (*(v6 + 16))(v7, v4, v5);
  swift_storeEnumTagMultiPayload();
  JSPackage.init(bundle:location:)(v0 + 17, v7, v8);
  v12 = v0[55];
  v11 = v0[56];
  v14 = v0[53];
  v13 = v0[54];
  v15 = v0[51];
  v16 = v0[52];
  (*(v0[47] + 8))(v0[50], v0[46]);
  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_21B3A031C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  sub_21B468B4C(v0[5], v5, type metadata accessor for JSPackage);
  sub_21B38C458(v5, v2, type metadata accessor for JSPackage);
  swift_storeEnumTagMultiPayload();
  sub_21B4C9A38();
  JSPackageLoadingTracker.update(to:priority:)(v2, v3);

  v1(v3, v4);
  sub_21B38CA90(v2, type metadata accessor for JSPackageLoadingState);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21B3A0454()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21B3A2DA0;
  }

  else
  {
    v2 = sub_21B3A031C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3A0568()
{
  sub_21B38CA90(*(v0 + 192), type metadata accessor for JSPackageLocation);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B3A05F8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_21B3A2FBC;
  }

  else
  {
    v2 = sub_21B3A0568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3A070C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_21B470590;
  }

  else
  {
    v2 = sub_21B3A083C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3A083C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B3A08B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for JSPackageSourceLocation();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21B3A09F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for JSPackageSourceLocation();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21B3A0B28()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B46FC74, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[40] = v3;
    *v3 = v2;
    v3[1] = sub_21B3A6B1C;
    v4 = v2[37];

    return sub_21B472FBC(v4);
  }
}

uint64_t sub_21B3A0C98(uint64_t a1)
{
  v2[283] = v1;
  v2[277] = a1;
  v3 = sub_21B4C9258();
  v2[289] = v3;
  v2[295] = *(v3 - 8);
  v2[301] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v4 = sub_21B4C9208();
  v2[313] = v4;
  v2[319] = *(v4 - 8);
  v2[325] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B470D40, 0, 0);
}

uint64_t sub_21B3A0DC4(uint64_t a1)
{
  v1[17] = a1;
  v2 = sub_21B4C8E78();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v3 = sub_21B4C9168();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for JSPackage();
  v1[26] = swift_task_alloc();
  v4 = sub_21B4C9208();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B3A0F84, 0, 0);
}

uint64_t sub_21B3A0F84()
{
  v0[31] = sub_21B4C8868();
  v0[32] = sub_21B4C8858();
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_21B3A1040;
  v2 = v0[30];
  v3 = v0[27];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_21B3A1040()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_21B470658;
  }

  else
  {

    v2 = sub_21B3A115C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B3A115C()
{
  v0[35] = sub_21B4C8858();
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_21B3A1208;
  v3 = v0[25];
  v2 = v0[26];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_21B3A1208()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_21B470708;
  }

  else
  {
    v2 = sub_21B3A1338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}