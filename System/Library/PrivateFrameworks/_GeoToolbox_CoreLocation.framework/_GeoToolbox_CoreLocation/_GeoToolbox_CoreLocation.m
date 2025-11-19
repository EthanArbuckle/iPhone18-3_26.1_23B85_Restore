void sub_275277DD0(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = sub_275278AA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  v10 = [a1 postalAddress];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v13 = [v12 stringFromPostalAddress_];

    v14 = sub_275278B10();
    v16 = v15;

    *v9 = v14;
    v9[1] = v16;
    (*(v3 + 104))(v9, *MEMORY[0x277CCB110], v2);
    v17 = sub_2752781D4(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_2752781D4(v18 > 1, v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v9, v2);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v20 = [a1 location];
  if (v20)
  {
    *v7 = v20;
    v21 = v20;
    (*(v3 + 104))(v7, *MEMORY[0x277CCB108], v2);
    v22 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2752781D4(0, v17[2] + 1, 1, v17);
    }

    v24 = v17[2];
    v23 = v17[3];
    if (v24 >= v23 >> 1)
    {
      v17 = sub_2752781D4(v23 > 1, v24 + 1, 1, v17);
    }

    v17[2] = v24 + 1;
    (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v7, v2);
  }

  v25 = [a1 name];
  if (v25)
  {
    v26 = v25;
    sub_275278B10();
  }

  sub_275278AE0();
  v27 = objc_opt_self();
  v34[0] = 0;
  v28 = [v27 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v34];
  v29 = v34[0];
  if (v28)
  {
    sub_275278A90();

    sub_275278AD0();
  }

  else
  {
    v30 = v29;
    v31 = sub_275278A80();

    swift_willThrow();
  }

  v32 = *MEMORY[0x277D85DE8];
}

size_t sub_2752781D4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9F00, &qword_275278D38);
  v10 = *(sub_275278AA0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_275278AA0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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

void PlaceDescriptor.init(placemark:)(void *a1)
{
  sub_275277DD0(a1);
}

uint64_t PlaceDescriptor.placemark.getter()
{
  v1 = sub_275278AA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v53 = (&v45 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v46 = v0;
  v13 = sub_275278AC0();
  if (v14 >> 60 != 15)
  {
    v15 = v13;
    v16 = v14;
    sub_2752789D0(0, &qword_2809B9F08, 0x277CCAAC8);
    sub_2752789D0(0, &qword_2809B9F10, 0x277CBFC40);
    v30 = sub_275278B20();
    sub_275278A18(v15, v16);
    result = v30;
    if (v30)
    {
      return result;
    }
  }

  v45 = 0;
  v55 = v6;
  result = sub_275278AF0();
  v49 = *(result + 16);
  if (!v49)
  {
LABEL_9:

    v54 = 0;
LABEL_14:
    result = sub_275278AF0();
    v31 = result;
    v32 = *(result + 16);
    if (v32)
    {
      v33 = 0;
      v34 = *MEMORY[0x277CCB110];
      while (1)
      {
        if (v33 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v35 = v55;
        (*(v2 + 16))(v55, v31 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v33, v1);
        if ((*(v2 + 88))(v35, v1) == v34)
        {
          break;
        }

        ++v33;
        result = (*(v2 + 8))(v35, v1);
        if (v32 == v33)
        {
          goto LABEL_19;
        }
      }

      (*(v2 + 96))(v35, v1);
      v41 = *v35;
      v42 = v35[1];
      v36 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
      v43 = sub_275278B00();

      [v36 setStreet_];

      v37 = v54;
      if (v54)
      {
        goto LABEL_20;
      }
    }

    else
    {
LABEL_19:

      v36 = 0;
      v37 = v54;
      if (v54)
      {
LABEL_20:
        v38 = v37;
        sub_275278AB0();
        if (v39)
        {
          v40 = sub_275278B00();
        }

        else
        {
          v40 = 0;
        }

        v44 = [objc_opt_self() placemarkWithLocation:v38 name:v40 postalAddress:v36];

        return v44;
      }
    }

    return 0;
  }

  v18 = 0;
  v51 = v2 + 88;
  v52 = v2 + 16;
  v50 = *MEMORY[0x277CCB100];
  v19 = (v2 + 8);
  v48 = (v2 + 32);
  v47 = *MEMORY[0x277CCB108];
  while (v18 < *(result + 16))
  {
    v20 = result;
    v21 = *(v2 + 16);
    v21(v12, result + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v1);
    v22 = v54;
    v21(v54, v12, v1);
    v23 = v12;
    v24 = *(v2 + 88);
    v25 = v24(v22, v1);
    if (v25 == v50)
    {

      (*(v2 + 96))(v22, v1);
      v54 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v22 longitude:v22[1]];
      (*(v2 + 8))(v23, v1);
      goto LABEL_14;
    }

    v26 = *v19;
    (*v19)(v22, v1);
    v27 = v23;
    v28 = v53;
    (*v48)();
    v29 = v24(v28, v1);
    if (v29 == v47)
    {

      (*(v2 + 96))(v28, v1);
      v54 = *v28;
      goto LABEL_14;
    }

    ++v18;
    v26(v28, v1);
    v12 = v27;
    result = v20;
    if (v49 == v18)
    {
      goto LABEL_9;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2752789D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_275278A18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_275278A2C(a1, a2);
  }

  return a1;
}

uint64_t sub_275278A2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}