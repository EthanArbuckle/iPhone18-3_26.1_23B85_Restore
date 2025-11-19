uint64_t sub_275273DB0()
{
  v0 = sub_275275E44();
  __swift_allocate_value_buffer(v0, qword_2809B9DE8);
  __swift_project_value_buffer(v0, qword_2809B9DE8);
  return sub_275275E34();
}

id PlaceDescriptor.geoMapItemIdentifier.getter()
{
  sub_275275DF4();
  v1 = v0;
  if (v0)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D0EBA8]);
    v3 = sub_275275E64();

    v1 = [v2 initWithMapsIdentifierString_];
  }

  return v1;
}

uint64_t PlaceDescriptor.geoDescriptorResolutionParameters.getter()
{
  v83 = sub_275275FE4();
  v0 = *(v83 - 8);
  v1 = *(v0 + 64);
  (MEMORY[0x28223BE20])();
  v82 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_275275DA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v76 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D0EC60]) init];
  sub_275275DB4();
  if (v12)
  {
    v13 = sub_275275E64();
  }

  else
  {
    v13 = 0;
  }

  [v11 setPlaceNameHint_];

  v14 = sub_275275DC4();
  if ((v16 & 1) == 0)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D0EB80]) initWithLatitude:*&v14 longitude:v15];
    [v11 setLocation_];
  }

  v18 = sub_275275E04();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9D88, &qword_2752762B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_275276290;
    *(v22 + 32) = v20;
    *(v22 + 40) = v21;
    v23 = sub_275275EB4();

    [v11 setFormattedAddress_];
  }

  result = sub_275275DE4();
  v26 = result;
  v93 = *(result + 16);
  if (v93)
  {
    v77 = v11;
    v27 = 0;
    v92 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v94 = v4 + 16;
    v91 = v4 + 88;
    v90 = *MEMORY[0x277CCB110];
    v87 = *MEMORY[0x277CCB100];
    v86 = *MEMORY[0x277CCB108];
    v81 = (v0 + 8);
    v28 = (v4 + 8);
    v29 = MEMORY[0x277D84F90];
    *&v25 = 136446210;
    v76 = v25;
    v88 = (v4 + 8);
    v80 = v3;
    v89 = v4;
    v84 = v8;
    v79 = v10;
    v85 = result;
    while (1)
    {
      if (v27 >= *(v26 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v31 = *(v4 + 16);
      v31(v10, v92 + *(v4 + 72) * v27, v3);
      v31(v8, v10, v3);
      v32 = (*(v4 + 88))(v8, v3);
      if (v32 == v90)
      {
        v33 = *v28;
        v34 = v8;
        (*v28)(v8, v3);
        v35 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_275275058(0, *(v29 + 2) + 1, 1, v29);
        }

        v37 = *(v29 + 2);
        v36 = *(v29 + 3);
        if (v37 >= v36 >> 1)
        {
          v29 = sub_275275058((v36 > 1), v37 + 1, 1, v29);
        }

        v28 = v88;
        result = v33(v10, v3);
        *(v29 + 2) = v37 + 1;
        *&v29[4 * v37 + 32] = 2;
        v26 = v35;
        v8 = v34;
        v4 = v89;
      }

      else
      {
        if (v32 == v87)
        {
          goto LABEL_22;
        }

        if (v32 == v86)
        {
          (*v28)(v8, v3);
LABEL_22:
          v38 = *(v29 + 2);
          v39 = v38;
          v40 = 32;
          while (v39)
          {
            v41 = *&v29[v40];
            v40 += 4;
            --v39;
            if (v41 == 1)
            {
              result = (*v28)(v10, v3);
              goto LABEL_11;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_275275058(0, v38 + 1, 1, v29);
          }

          v43 = *(v29 + 2);
          v42 = *(v29 + 3);
          if (v43 >= v42 >> 1)
          {
            v29 = sub_275275058((v42 > 1), v43 + 1, 1, v29);
          }

          result = (*v28)(v10, v3);
          *(v29 + 2) = v43 + 1;
          *&v29[4 * v43 + 32] = 1;
          goto LABEL_11;
        }

        v95[3] = v3;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v95);
        v31(boxed_opaque_existential_0, v10, v3);
        v45 = v82;
        sub_275275FC4();
        v46 = sub_275275FD4();
        (*v81)(v45, v83);
        v47 = v46[2];
        v48 = v46[3];
        v50 = v46[4];
        v49 = v46[5];
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v51 = sub_275275EF4();
        swift_getObjectType();
        result = sub_275275EF4();
        if (v51 != result)
        {
          goto LABEL_53;
        }

        v52 = sub_275275F04();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v52)
        {

          v3 = v80;
          v4 = v89;
          v8 = v84;
          v26 = v85;
        }

        else
        {
          sub_275275F74();

          v54 = v96[0];
          v53 = v96[1];
          __swift_destroy_boxed_opaque_existential_0(v97);
          v3 = v80;
          v4 = v89;
          v8 = v84;
          v26 = v85;
          if (v53)
          {
            if (qword_2809B9DE0 != -1)
            {
              swift_once();
            }

            v55 = sub_275275E44();
            __swift_project_value_buffer(v55, qword_2809B9DE8);

            v56 = sub_275275E24();
            v57 = sub_275275ED4();

            v58 = os_log_type_enabled(v56, v57);
            v59 = v88;
            v78 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            if (v58)
            {
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v96[0] = v61;
              *v60 = v76;
              v62 = sub_275275338(v54, v53, v96);

              *(v60 + 4) = v62;
              _os_log_impl(&dword_275273000, v56, v57, "Unknown place representation type: %{public}s", v60, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v61);
              v63 = v61;
              v8 = v84;
              MEMORY[0x277C71550](v63, -1, -1);
              v64 = v60;
              v4 = v89;
              MEMORY[0x277C71550](v64, -1, -1);
            }

            else
            {
            }

            v70 = *v59;
            v10 = v79;
            (*v59)(v79, v3);
            v28 = v59;
            result = (v70)(v8, v3);
            v26 = v85;
            goto LABEL_11;
          }
        }

        if (qword_2809B9DE0 != -1)
        {
          swift_once();
        }

        v65 = sub_275275E44();
        __swift_project_value_buffer(v65, qword_2809B9DE8);
        v66 = sub_275275E24();
        v67 = sub_275275ED4();
        v68 = os_log_type_enabled(v66, v67);
        v10 = v79;
        if (v68)
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_275273000, v66, v67, "Unknown place representation type", v69, 2u);
          MEMORY[0x277C71550](v69, -1, -1);
        }

        v28 = v88;
        v30 = *v88;
        (*v88)(v10, v3);
        result = (v30)(v8, v3);
      }

LABEL_11:
      if (++v27 == v93)
      {

        v11 = v77;
        v71 = *(v29 + 2);
        if (!v71)
        {
          goto LABEL_50;
        }

LABEL_46:
        v72 = v11;
        v96[0] = MEMORY[0x277D84F90];
        sub_275275F44();
        v73 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
          sub_275275F24();
          v74 = *(v96[0] + 16);
          sub_275275F54();
          sub_275275F64();
          sub_275275F34();
          v73 += 4;
          --v71;
        }

        while (v71);

        sub_2752749FC();
        v75 = sub_275275EB4();

        v11 = v72;
        [v72 setPreferredTypes_];

        return v11;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
  v71 = *(MEMORY[0x277D84F90] + 16);
  if (v71)
  {
    goto LABEL_46;
  }

LABEL_50:

  return v11;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2752749FC()
{
  result = qword_2809B9D80;
  if (!qword_2809B9D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809B9D80);
  }

  return result;
}

id PlaceDescriptor.init(geoMapItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275275D94();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_275275DA4();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = v8[8];
  MEMORY[0x28223BE20](v7);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 coordinate];
  v14 = v13;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9D90, &qword_2752762B8);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v53 = v8[9];
  v18 = swift_allocObject();
  v49 = xmmword_275276290;
  *(v18 + 16) = xmmword_275276290;
  v19 = (v18 + v17);
  *v19 = v14;
  v19[1] = v16;
  v20 = *MEMORY[0x277CCB100];
  v21 = v8[13];
  v21();
  v54 = a1;
  result = [a1 geoAddress];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v23 = result;
  v24 = [result formattedAddressLines];

  if (v24)
  {
    v48 = a2;
    v55 = 0;
    sub_275275EC4();

    if (v55)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DA8, &qword_2752762D0);
      sub_275275BD4();
      v24 = sub_275275E54();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    a2 = v48;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  if (sub_275275E94() >= 1)
  {
    *v12 = v24;
    v12[1] = v26;
    (v21)(v12, *MEMORY[0x277CCB110], v7);
    v27 = *(v18 + 16);
    v28 = *(v18 + 24);

    if (v27 >= v28 >> 1)
    {
      v18 = sub_27527515C(v28 > 1, v27 + 1, 1, v18, &qword_2809B9D90, &qword_2752762B8, MEMORY[0x277CCB118]);
    }

    *(v18 + 16) = v27 + 1;
    (v9[4])(v18 + v17 + v27 * v53, v12, v7);
  }

  v29 = v54;
  result = [v54 _identifier];
  if (!result)
  {
    goto LABEL_21;
  }

  v30 = result;

  v31 = [v30 mapsIdentifierString];

  if (v31)
  {
    v32 = sub_275275E74();
    v34 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9D98, &qword_2752762C0);
    inited = swift_initStackObject();
    *(inited + 16) = v49;
    *(inited + 32) = 0xD000000000000010;
    v36 = inited + 32;
    *(inited + 40) = 0x80000002752763A0;
    *(inited + 48) = v32;
    *(inited + 56) = v34;
    v37 = sub_275275A58(inited);
    swift_setDeallocating();
    sub_275275B6C(v36);
    v39 = v50;
    v38 = v51;
    *v50 = v37;
    v40 = v52;
    (*(v38 + 104))(v39, *MEMORY[0x277CCB0F0], v52);
    v41 = sub_27527515C(0, 1, 1, MEMORY[0x277D84F90], &qword_2809B9DB8, &qword_2752762E0, MEMORY[0x277CCB0F8]);
    v43 = v41[2];
    v42 = v41[3];
    if (v43 >= v42 >> 1)
    {
      v41 = sub_27527515C(v42 > 1, v43 + 1, 1, v41, &qword_2809B9DB8, &qword_2752762E0, MEMORY[0x277CCB0F8]);
    }

    v41[2] = v43 + 1;
    (*(v38 + 32))(v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v43, v39, v40);
  }

  v44 = [v29 name];
  if (v44)
  {
    v45 = v44;
    sub_275275E74();
  }

  sub_275275DD4();
  swift_unknownObjectRelease();
  v46 = sub_275275E14();
  return (*(*(v46 - 8) + 56))(a2, 0, 1, v46);
}

_DWORD *sub_27527503C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *sub_275275058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DC8, &qword_2752762F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_27527515C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_275275338(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275275404(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_275275C84(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_275275404(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_275275510(a5, a6);
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
    result = sub_275275F14();
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

uint64_t sub_275275510(uint64_t a1, unint64_t a2)
{
  v4 = sub_27527555C(a1, a2);
  sub_27527568C(&unk_288400C20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_27527555C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_275275778(v5, 0);
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

  result = sub_275275F14();
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
        v10 = sub_275275EA4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275275778(v10, 0);
        result = sub_275275EE4();
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

uint64_t sub_27527568C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2752757EC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_275275778(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DD0, &qword_2752762F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2752757EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DD0, &qword_2752762F8);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_275275928(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_275275FA4();
  sub_275275E84();
  v6 = sub_275275FB4();

  return sub_2752759A0(a1, a2, v6);
}

unint64_t sub_2752759A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_275275F94())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_275275A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DC0, &qword_2752762E8);
    v3 = sub_275275F84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_275275928(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_275275B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9DA0, &qword_2752762C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275275BD4()
{
  result = qword_2809B9DB0;
  if (!qword_2809B9DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809B9DA8, &qword_2752762D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B9DB0);
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

uint64_t sub_275275C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void type metadata accessor for GEOPlaceDescriptorResolutionParametersPreferredType()
{
  if (!qword_2809B9DD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809B9DD8);
    }
  }
}