uint64_t sub_21DEA054C(uint64_t a1, unint64_t a2)
{
  sub_21DEA091C(a1, a2);
  v4 = *(sub_21DEA05F4(a1, a2) + 16);
  v5 = sub_21DEC6E60();

  return v5;
}

uint64_t sub_21DEA05B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DEC6E60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DEA05F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DEC68C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_21DE5636C(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_21DE56984(v11, 0);
      v15 = sub_21DEC68A0();
      sub_21DE5636C(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_21DEA0770(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_21DEC6780();
  if (a1)
  {
    a1 = sub_21DEC67A0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_21DEC6780() || !__OFSUB__(v5, sub_21DEC67A0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_21DEC6790();
LABEL_16:
  result = sub_21DEC6E60();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21DEA091C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21DEA0970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94988, &unk_21DED3600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DEA09D8()
{
  if (*v0)
  {
    result = 0x656C756465686373;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_21DEA0A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEE006E6F69746163;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA0B04(uint64_t a1)
{
  v2 = sub_21DEA7184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA0B40(uint64_t a1)
{
  v2 = sub_21DEA7184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA0B7C()
{
  v0 = sub_21DEC7470();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DEA0BD0@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94998, &qword_21DED3610);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7184();
  result = sub_21DEC77E0();
  if (!v3)
  {
    if (a2)
    {
      type metadata accessor for Identification(0);
      v33 = 0;
      sub_21DEA7218(&qword_27CE949A8, type metadata accessor for Identification);
      v14 = sub_21DEC7510();
      v15 = v34;
      v16 = (*(*v34 + 120))(v14);
      if (v16)
      {
        if (v16 == 2)
        {
          type metadata accessor for ParkingLocation();
          v17 = (*(*v15 + 192))();
          v19 = v18;
          v20 = sub_21DE60F18();
          v22 = ParkingLocation.__allocating_init(spotID:zoneID:)(v20, v21, v17, v19);

          result = (*(v8 + 8))(v11, v7);
          v23 = v22 | 0x6000000000000000;
        }

        else
        {
          (*(v8 + 8))(v11, v7);

          v23 = 0xF000000000000007;
        }
      }

      else
      {
        v32 = type metadata accessor for Wifi();
        v26 = (*(*v15 + 144))(v32);
        v28 = v27;
        v29 = (*(*v15 + 168))();
        v31 = Wifi.__allocating_init(ssid:password:)(v26, v28, v29, v30);

        result = (*(v8 + 8))(v11, v7);
        v23 = v31 | 0x4000000000000000;
      }

      *a3 = v23;
    }

    else
    {
      type metadata accessor for Schedule(0);
      v33 = 1;
      sub_21DEA7218(&qword_27CE949B0, type metadata accessor for Schedule);
      sub_21DEC7510();
      v24 = v34;
      type metadata accessor for Event();
      v25 = sub_21DEA0FD4(v24);
      result = (*(v8 + 8))(v11, v7);
      *a3 = v25;
    }
  }

  return result;
}

uint64_t sub_21DEA0FD4(uint64_t a1)
{
  v100 = MEMORY[0x277D84F90];
  v1 = (*(*a1 + 128))(a1);
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v1 = v45)
  {
    v3 = 0;
    v88 = v1 & 0xC000000000000001;
    v86 = v1;
    v84 = v1 + 32;
    v85 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v87 = i;
    while (v88)
    {
      v1 = MEMORY[0x223D4B690](v3, v86);
      v11 = v1;
      v12 = __OFADD__(v3, 1);
      v13 = v3 + 1;
      if (v12)
      {
        goto LABEL_48;
      }

LABEL_14:
      v97 = 0x2D30302D30303030;
      v98 = 0xEB00000000543030;
      v14 = (*(*v11 + 144))();
      MEMORY[0x223D4B2A0](v14);

      v93 = v97;
      v95 = v98;
      v97 = 0x2D30302D30303030;
      v98 = 0xEB00000000543030;
      v16 = (*(*v11 + 168))(v15);
      MEMORY[0x223D4B2A0](v16);

      v17 = v98;
      v90 = v11;
      v91 = v97;
      v89 = v13;
      if (v4 >> 62)
      {
        v1 = sub_21DEC7400();
        v18 = v1;
        if (!v1)
        {
LABEL_4:
          type metadata accessor for SubEvent.DateTimeElement.Recurrence();
          LOBYTE(v97) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949B8, &qword_21DED3618);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_21DECCA20;
          (*(*v90 + 120))();
          v6 = sub_21DE60F18();
          v8 = SubEvent.DateTimeElement.Recurrence.__allocating_init(frequency:daysOfTheWeek:recurrenceEndDate:)(&v97, v5, v6, v7);
          type metadata accessor for SubEvent.DateTimeElement();

          SubEvent.DateTimeElement.__allocating_init(startDate:endDate:recurrence:)(v93, v95, v91, v17, v8);

          MEMORY[0x223D4B3E0](v9);
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v44 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21DEC7080();
          }

          sub_21DEC70A0();

          v4 = v100;
          v10 = v87;
          goto LABEL_7;
        }
      }

      else
      {
        v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      v19 = 0;
      v20 = v4 & 0xC000000000000001;
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v20)
        {
          v1 = MEMORY[0x223D4B690](v19, v4);
          v22 = v1;
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v19 >= *(v21 + 16))
          {
            goto LABEL_47;
          }

          v22 = *(v4 + 8 * v19 + 32);

          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v24 = v4;
        if ((*(*v22 + 120))() == v93 && v25 == v95)
        {
        }

        else
        {
          v27 = sub_21DEC7610();

          if ((v27 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if ((*(*v22 + 144))(v28) == v91 && v29 == v17)
        {
          break;
        }

        v31 = sub_21DEC7610();

        if (v31)
        {
          goto LABEL_38;
        }

LABEL_17:

        ++v19;
        v4 = v24;
        if (v23 == v18)
        {
          goto LABEL_4;
        }
      }

LABEL_38:

      v33 = *(*v22 + 216);
      v34 = v33(v32);
      (*(*v90 + 120))(&v99);
      v96 = v99;
      v35 = (*(*v34 + 152))(&v97);
      v37 = v36;
      v38 = *v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_21DEA6C74(0, *(v38 + 2) + 1, 1, v38);
        *v37 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_21DEA6C74((v40 > 1), v41 + 1, 1, v38);
        *v37 = v38;
      }

      v10 = v87;
      *(v38 + 2) = v41 + 1;
      v38[v41 + 32] = v96;
      v35(&v97, 0);

      v43 = v33(v42);
      LOBYTE(v97) = 1;
      (*(*v43 + 120))(&v97);

      v4 = v24;
LABEL_7:
      v3 = v89;
      if (v89 == v10)
      {

        goto LABEL_52;
      }
    }

    if (v3 >= *(v85 + 16))
    {
      goto LABEL_49;
    }

    v11 = *(v84 + 8 * v3);

    v12 = __OFADD__(v3, 1);
    v13 = v3 + 1;
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v45 = v1;
    i = sub_21DEC7400();
  }

  v4 = MEMORY[0x277D84F90];
LABEL_52:
  type metadata accessor for SubEvent();
  v46 = (*(*a1 + 104))();
  v48 = v47;
  v49 = sub_21DE88FDC();
  v50 = sub_21DE60F18();
  v52 = v51;
  v53 = sub_21DE60F18();
  v55 = v54;
  v56 = sub_21DE60F18();
  v58 = SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(v46, v48, v49, v50, v52, v53, v55, v56, v57);
  v59 = sub_21DE8A7D0();
  v60 = (*(v82 + 160))(v58, v59);
  if (v4 >> 62)
  {
    result = sub_21DEC7400();
    if (result == 1)
    {
      goto LABEL_54;
    }

LABEL_59:
    if (v4 >> 62)
    {
      result = sub_21DEC7400();
      v65 = result;
      if (!result)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v65 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        goto LABEL_72;
      }
    }

    if (v65 < 1)
    {
      goto LABEL_75;
    }

    v66 = 0;
    v92 = v4 & 0xC000000000000001;
    v94 = v4;
    do
    {
      if (v92)
      {
        v67 = MEMORY[0x223D4B690](v66, v4);
      }

      else
      {
        v67 = *(v4 + 8 * v66 + 32);
      }

      v68 = sub_21DE60F18();
      v70 = v69;
      v71 = sub_21DE60F18();
      v73 = v72;
      v74 = sub_21DE60F18();
      v76 = v75;
      v77 = sub_21DE60F18();
      SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(v68, v70, v67, v71, v73, v74, v76, v77, v78);
      v79 = swift_beginAccess();
      MEMORY[0x223D4B3E0](v79);
      if (*((*(v60 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v60 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v80 = *((*(v60 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21DEC7080();
      }

      ++v66;
      sub_21DEC70A0();
      swift_endAccess();

      v4 = v94;
    }

    while (v65 != v66);
LABEL_72:

    goto LABEL_73;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_59;
  }

LABEL_54:
  result = swift_beginAccess();
  v62 = *(v60 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v81 = *(v60 + 16);

    v63 = MEMORY[0x223D4B690](0, v4);
    goto LABEL_57;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v63 = *(v4 + 32);
    v64 = *(v60 + 16);

LABEL_57:
    (*(*v62 + 152))(v63);

LABEL_73:

    return v60;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_21DEA1924(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x696669746E656469;
  }

  else
  {
    v4 = 0x656C756465686373;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEE006E6F69746163;
  }

  if (*a2)
  {
    v6 = 0x696669746E656469;
  }

  else
  {
    v6 = 0x656C756465686373;
  }

  if (*a2)
  {
    v7 = 0xEE006E6F69746163;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();
  }

  return v9 & 1;
}

uint64_t sub_21DEA19D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1766222167;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696B726150;
    }

    else
    {
      v4 = 0x726568744FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x72656B636F4CLL;
    }

    else
    {
      v4 = 1766222167;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696B726150;
  if (a2 != 2)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x72656B636F4CLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DEC7610();
  }

  return v11 & 1;
}

uint64_t sub_21DEA1B04()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA1B94()
{
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DEA1C10()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA1C9C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21DEC7470();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21DEA1CFC(uint64_t *a1@<X8>)
{
  v2 = 0x656C756465686373;
  if (*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEE006E6F69746163;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21DEA1D58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21DEA6E60(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_21DEA1D88(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DEC6770();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = a2;
  sub_21DEC6750();
  v37 = sub_21DE531EC();
  v9 = sub_21DEC7220();
  v10 = *(v5 + 8);
  v38 = v5 + 8;
  v39 = v4;
  v36 = v10;
  v10(v8, v4);

  v11 = *(v9 + 16);
  if (!v11)
  {

    v12 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = 0;
    v33 = 0;
    v34 = 0;
    v24 = 0xE000000000000000;
    v22 = 0xE000000000000000;
    goto LABEL_11;
  }

  v40 = MEMORY[0x277D84F90];
  sub_21DE52560(0, v11, 0);
  v12 = v40;
  v34 = v9;
  v13 = (v9 + 40);
  do
  {
    v14 = *v13;
    v41 = *(v13 - 1);
    v42 = v14;

    sub_21DEC6740();
    v15 = sub_21DEC7230();
    v17 = v16;
    v36(v8, v39);

    v40 = v12;
    v19 = v12[2];
    v18 = v12[3];
    if (v19 >= v18 >> 1)
    {
      sub_21DE52560((v18 > 1), v19 + 1, 1);
      v12 = v40;
    }

    v12[2] = v19 + 1;
    v20 = &v12[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
    v13 += 2;
    --v11;
  }

  while (v11);

  v21 = v12[2];
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_7:
  v22 = v12[5];
  v34 = v12[4];

  if (v21 == 1)
  {
    v23 = 0;
    v33 = 0;
    v21 = 0;
    v24 = 0xE000000000000000;
LABEL_11:
    v25 = 0xE000000000000000;
LABEL_12:
    v26 = 0xE000000000000000;
    goto LABEL_13;
  }

  v25 = v12[7];
  v33 = v12[6];

  if (v21 < 3)
  {
    v23 = 0;
    v21 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_12;
  }

  v23 = v12[8];
  v24 = v12[9];

  if (v21 == 3)
  {
    v21 = 0;
    goto LABEL_12;
  }

  v21 = v12[10];
  v26 = v12[11];

LABEL_13:

  v41 = v23;
  v42 = v24;
  sub_21DEC6740();
  v27 = sub_21DEC7220();
  v36(v8, v39);

  v28 = v27[2];
  if (v28)
  {
    v29 = v27[4];
    v30 = v27[5];

    if (v28 == 1)
    {
      v28 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v28 = v27[6];
      v31 = v27[7];
    }
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    v31 = 0xE000000000000000;
  }

  return (*(v35 + 264))(v34, v22, v33, v25, v29, v30, v28, v31, v21, v26);
}

uint64_t sub_21DEA214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x54746361746E6F63 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DEA21D8(uint64_t a1)
{
  v2 = sub_21DEA7260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA2214(uint64_t a1)
{
  v2 = sub_21DEA7260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA2250(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949C0, &qword_21DED3620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7260();
  sub_21DEC77E0();
  if (!v1)
  {
    v9 = sub_21DEC74A0();
    (*(v4 + 8))(v7, v3);
  }

  return v9;
}

uint64_t sub_21DEA2390()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x6C69616D65;
  }

  *v0;
  return result;
}

uint64_t sub_21DEA23C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA2498(uint64_t a1)
{
  v2 = sub_21DEA72B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA24D4(uint64_t a1)
{
  v2 = sub_21DEA72B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA2548(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949D0, &qword_21DED3628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA72B4();
  sub_21DEC77E0();
  if (!v2)
  {
    v17[15] = a2;
    v12 = sub_21DEC74A0();
    if (v13)
    {
      v15 = v12;
      v16 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_21DECCA20;
      *(v11 + 32) = v15;
      *(v11 + 40) = v16;
    }

    else
    {
      v11 = 0;
    }

    (*(v6 + 8))(v9, v5);
  }

  return v11;
}

unint64_t sub_21DEA2700()
{
  v1 = 0x74756F6261;
  v2 = 0x65746144646E65;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7461447472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DEA2780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEA7308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEA27A8(uint64_t a1)
{
  v2 = sub_21DEA7478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA27E4(uint64_t a1)
{
  v2 = sub_21DEA7478();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_21DEA2820(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v75 - v6;
  v8 = type metadata accessor for EventDateTimeComponents();
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949E0, &qword_21DED3630);
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7478();
  v20 = v84;
  result = sub_21DEC77E0();
  if (!v20)
  {
    v78 = v8;
    v79 = v14;
    v84 = v7;
    v77 = v12;
    LOBYTE(v85[0]) = 0;
    v22 = sub_21DEC74A0();
    v24 = v82;
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = (*(*v82 + 96))();
      (*(*v27 + 128))(v25, v26);
    }

    LOBYTE(v85[0]) = 1;
    v28 = sub_21DEC74A0();
    if (v29)
    {
      v30 = v29;
      v31 = v28;
      v32 = (*(*v24 + 96))();
      v76 = (*(*v32 + 144))(v32);

      v33 = v84;
      EventDateTimeComponents.init(string:)(v31, v30, v84);
      (*(v81 + 56))(v33, 0, 1, v78);
      v34 = v79;
      sub_21DE77A74(v33, v79);
      (*(*v76 + 176))(v34);
    }

    LOBYTE(v85[0]) = 2;
    v35 = sub_21DEC74A0();
    if (v36)
    {
      v37 = v36;
      v38 = v35;
      v39 = (*(*v24 + 96))();
      v40 = (*(*v39 + 144))();

      v41 = v80;
      EventDateTimeComponents.init(string:)(v38, v37, v80);
      (*(v81 + 56))(v41, 0, 1, v78);
      v42 = v77;
      sub_21DE77A74(v41, v77);
      (*(*v40 + 200))(v42);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949F0, &qword_21DED3638);
    v86 = 3;
    sub_21DEA74CC();
    sub_21DEC74E0();
    v43 = v85[0];
    v44 = v83;
    if (v85[0])
    {
      v45 = v85[0] >> 62;
      if (v85[0] >> 62)
      {
        v73 = v85[0];
        v74 = sub_21DEC7400();
        v43 = v73;
        v44 = v83;
        v47 = v74 == 1;
        if (v74 >= 1)
        {
LABEL_14:
          if (!v47)
          {
            v75 = 0;
            if (v45)
            {
              v52 = v43;
              v53 = sub_21DEC7400();
              v43 = v52;
              v51 = v53;
            }

            else
            {
              v51 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v51)
            {
LABEL_32:

              return (*(v83 + 8))(v18, v15);
            }

            v54 = v43;
            result = type metadata accessor for SubEvent();
            v84 = result;
            if (v51 >= 1)
            {
              v55 = 0;
              v56 = *(*v24 + 136);
              v77 = (*v24 + 136);
              v78 = v56;
              v57 = v54;
              v76 = v54 & 0xC000000000000001;
              v80 = v54;
              v81 = v15;
              v79 = v51;
              do
              {
                if (v76)
                {
                  v58 = MEMORY[0x223D4B690](v55, v57);
                }

                else
                {
                  v58 = *&v57[8 * v55 + 32];
                }

                v59 = sub_21DE60F18();
                v61 = v60;
                v62 = sub_21DE60F18();
                v64 = v63;
                v65 = sub_21DE60F18();
                v67 = v66;
                v68 = sub_21DE60F18();
                SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(v59, v61, v58, v62, v64, v65, v67, v68, v69);
                v70 = v78(v85);
                v72 = v71;
                MEMORY[0x223D4B3E0](v70);
                if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21DEC7080();
                }

                ++v55;
                sub_21DEC70A0();
                v70(v85, 0);

                v57 = v80;
                v15 = v81;
              }

              while (v79 != v55);
              goto LABEL_32;
            }

            goto LABEL_37;
          }

          v48 = v43;
          result = (*(*v24 + 96))();
          v49 = result;
          if ((v48 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x223D4B690](0, v48);
          }

          else
          {
            if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_37:
              __break(1u);
              return result;
            }

            v50 = *(v48 + 4);
          }

          (*(*v49 + 152))(v50);

          return (*(v83 + 8))(v18, v15);
        }
      }

      else
      {
        v46 = *((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        v47 = v46 == 1;
        if (v46 >= 1)
        {
          goto LABEL_14;
        }
      }

      (*(v44 + 8))(v18, v15);
    }

    return (*(v83 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_21DEA31E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657461437473696CLL && a2 == 0xEC00000079726F67)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DEA326C(uint64_t a1)
{
  v2 = sub_21DEA7580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA32A8(uint64_t a1)
{
  v2 = sub_21DEA7580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA344C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369725074696E75 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DEA34DC(uint64_t a1)
{
  v2 = sub_21DEA75D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA3518(uint64_t a1)
{
  v2 = sub_21DEA75D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21DEA3554(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A10, &qword_21DED3648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA75D4();
  sub_21DEC77E0();
  if (!v2)
  {
    v12 = sub_21DEC74C0();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    v15 = *&v12;
    if (v14)
    {
      v15 = 0.0;
    }

    return v15 * a2;
  }

  return result;
}

uint64_t sub_21DEA36C8()
{
  v1 = 7889268;
  if (*v0 != 1)
  {
    v1 = 7367028;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E656D656C65;
  }
}

uint64_t sub_21DEA3714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEA7628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEA373C(uint64_t a1)
{
  v2 = sub_21DEA7740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA3778(uint64_t a1)
{
  v2 = sub_21DEA7740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA37B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A20, &unk_21DED3650);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7740();
  sub_21DEC77E0();
  if (v1 == 0.0)
  {
    v22 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946E8, &qword_21DED0F80);
    v20[15] = 0;
    sub_21DE9A774();
    sub_21DEC74E0();
    v2 = v21;
    if (v21 == 0.0)
    {
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      v22 = v21;
    }

    LOBYTE(v21) = 1;
    *&v10 = COERCE_DOUBLE(sub_21DEC74C0());
    if ((v11 & 1) == 0)
    {
      v12 = *&v10;
      type metadata accessor for TransactionElement();
      TransactionElement.__allocating_init(quantity:itemDescription:totalPrice:)(1, 7889236, 0xE300000000000000, v12);
      MEMORY[0x223D4B3E0]();
      if (*((*&v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((*&v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21DEC7080();
      }

      sub_21DEC70A0();
      v2 = v22;
    }

    LOBYTE(v21) = 2;
    v13 = sub_21DEC74A0();
    if (v14 && (v21 = 0.0, v16 = sub_21DEA6D68(v13, v14), , v16))
    {
      v17 = v21;
      type metadata accessor for TransactionElement();
      TransactionElement.__allocating_init(quantity:itemDescription:totalPrice:)(1, 7366996, 0xE300000000000000, v17);
      MEMORY[0x223D4B3E0]();
      if (*((*&v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((*&v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21DEC7080();
      }

      sub_21DEC70A0();
      (*(v5 + 8))(v8, v4);
      v2 = v22;
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return *&v2;
}

uint64_t sub_21DEA3B38()
{
  v1 = 0x61437463656A626FLL;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6F4C7463656A626FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DEA3BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEA7794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEA3BF4(uint64_t a1)
{
  v2 = sub_21DEA7908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA3C30(uint64_t a1)
{
  v2 = sub_21DEA7908();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21DEA3EBC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A30, &qword_21DED3660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-2] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7908();
  sub_21DEC77E0();
  if (!v2)
  {
    v16 = 3;
    sub_21DE6FFB8();
    sub_21DEC74E0();
    if (v19)
    {
      LOBYTE(v17) = 1;
      sub_21DEC74E0();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v12 = *(v6 + 8);
      v14 = v18;
      *v15 = v17;
      v12(v9, v5);
      v13 = v14;
      result = v15[0];
      *a2 = *v15;
      *(a2 + 16) = v13;
      *(a2 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_21DEA40B8()
{
  if (*v0)
  {
    result = 0x6A624F656E656373;
  }

  else
  {
    result = 0x70614374726F6873;
  }

  *v0;
  return result;
}

uint64_t sub_21DEA4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70614374726F6873 && a2 == 0xEC0000006E6F6974;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6A624F656E656373 && a2 == 0xEC00000073746365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA41E8(uint64_t a1)
{
  v2 = sub_21DEA795C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA4224(uint64_t a1)
{
  v2 = sub_21DEA795C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA4260(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A40, &unk_21DED3668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA795C();
  result = sub_21DEC77E0();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE942D8, &qword_21DED01A0);
    v10[15] = 1;
    sub_21DEA79B0();
    sub_21DEC74E0();
    (*(v4 + 8))(v7, v3);
    return v11;
  }

  return result;
}

uint64_t sub_21DEA43DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A40, &unk_21DED3668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA795C();
  sub_21DEC77E0();
  if (!v1)
  {
    v12 = 0;
    v9 = sub_21DEC74A0();
    (*(v4 + 8))(v7, v3);
  }

  return v9;
}

uint64_t sub_21DEA4530()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA45E4()
{
  *v0;
  *v0;
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DEA4684()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA4734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DEA7A64();
  *a2 = result;
  return result;
}

void sub_21DEA4764(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1766222167;
  v4 = 0xE700000000000000;
  v5 = 0x676E696B726150;
  if (*v1 != 2)
  {
    v5 = 0x726568744FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x72656B636F4CLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21DEA4894()
{
  v1 = 0x54746E756F636361;
  v2 = 0x50746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x626D754E6D657469;
  }

  if (*v0)
  {
    v1 = 0x4E746E756F636361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DEA4928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEA7AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEA4950(uint64_t a1)
{
  v2 = sub_21DEA7C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA498C(uint64_t a1)
{
  v2 = sub_21DEA7C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA49C8()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21DEA4A0C(char a1)
{
  v3 = OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_21DEA4C24()
{
  if ((*(*v0 + 120))() > 2u)
  {

    return 0;
  }

  else
  {
    v1 = sub_21DEC7610();

    result = 0;
    if ((v1 & 1) == 0)
    {
      v3 = (*(*v0 + 144))(0);
      v5 = v4;

      v7 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        return 1;
      }

      v8 = (*(*v0 + 168))(v6);
      v10 = v9;

      v12 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v12 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        return 1;
      }

      else
      {
        v13 = (*(*v0 + 192))(v11);
        v15 = v14;

        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        return v16 != 0;
      }
    }
  }

  return result;
}

uint64_t sub_21DEA4DE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  sub_21DEC6940();
  *(v17 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType) = a1;
  v18 = (v17 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountName);
  *v18 = a2;
  v18[1] = a3;
  v19 = (v17 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountPassword);
  *v19 = a4;
  v19[1] = a5;
  v20 = (v17 + OBJC_IVAR____TtC17SceneIntelligence14Identification_itemNumber);
  *v20 = a6;
  v20[1] = a7;
  return v17;
}

uint64_t sub_21DEA4EC0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A50, &qword_21DED3678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v44 = OBJC_IVAR____TtC17SceneIntelligence14Identification_id;
  sub_21DEC6940();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7C34();
  sub_21DEC77E0();
  if (v2)
  {
    v20 = sub_21DEC6950();
    (*(*(v20 - 8) + 8))(v1 + v44, v20);
    type metadata accessor for Identification(0);
    v21 = *(*v1 + 48);
    v22 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = v6;
    v43 = 0;
    v11 = sub_21DEC74A0();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_21DEA7A64();
    v16 = v15;
    if (v15 == 4)
    {
      v17 = 3;
    }

    else
    {
      v17 = v15;
    }

    *(v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType) = v17;
    v43 = 1;
    v18 = sub_21DEC74A0();
    if (v19)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v19)
    {
      v25 = v19;
    }

    v26 = (v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountName);
    *v26 = v24;
    v26[1] = v25;
    v43 = 2;
    v27 = sub_21DEC74A0();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = (v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountPassword);
    *v31 = v29;
    v31[1] = v30;
    v43 = 3;
    v32 = sub_21DEC74A0();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v36 = (v1 + OBJC_IVAR____TtC17SceneIntelligence14Identification_itemNumber);
    *v36 = v34;
    v36[1] = v35;
    if (v16 == 4)
    {
      v37 = v13 == 0x20676E696B726150;
      v38 = v42;
      if (v37 && v14 == 0xEC000000746F7053)
      {

        (*(v38 + 8))(v9, v5);
        v39 = 2;
      }

      else
      {
        v40 = sub_21DEC7610();

        (*(v38 + 8))(v9, v5);
        if (v40)
        {
          v39 = 2;
        }

        else
        {
          v39 = 3;
        }
      }

      v41 = OBJC_IVAR____TtC17SceneIntelligence14Identification_accountType;
      swift_beginAccess();
      *(v3 + v41) = v39;
    }

    else
    {

      (*(v42 + 8))(v9, v5);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DEA534C()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence14Identification_id;
  v2 = sub_21DEC6950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountName + 8);

  v4 = *(v0 + OBJC_IVAR____TtC17SceneIntelligence14Identification_accountPassword + 8);

  v5 = *(v0 + OBJC_IVAR____TtC17SceneIntelligence14Identification_itemNumber + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_21DEA5424@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DEA5460()
{
  if (*v0)
  {
    result = 0x73746E656D656C65;
  }

  else
  {
    result = 0x656C756465686373;
  }

  *v0;
  return result;
}

uint64_t sub_21DEA54A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C756465686373 && a2 == 0xED0000656C746954;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA558C(uint64_t a1)
{
  v2 = sub_21DEA7C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA55C8(uint64_t a1)
{
  v2 = sub_21DEA7C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA567C()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_21DEA56C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21DEA577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_21DEC6940();
  v10 = (v9 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_scheduleTitle);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements;
  *(v9 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;
  swift_beginAccess();
  *(v9 + v11) = a3;
  return v9;
}

uint64_t sub_21DEA5868(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A60, &qword_21DED3680);
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  sub_21DEC6940();
  v9 = (v1 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_scheduleTitle);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements;
  *(v1 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements) = MEMORY[0x277D84F90];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7C88();
  sub_21DEC77E0();
  if (v2)
  {
  }

  else
  {
    v24 = v10;
    v12 = v25;
    v28 = 0;
    v13 = sub_21DEC74A0();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    swift_beginAccess();
    v17 = v9[1];
    *v9 = v15;
    v9[1] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A70, &qword_21DED3688);
    v29 = 1;
    v18 = v26;
    sub_21DEA7CDC();
    sub_21DEC74E0();
    if (v27)
    {
      v20 = v27;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    (*(v12 + 8))(v8, v18);
    v21 = v24;
    swift_beginAccess();
    v22 = *(v3 + v21);
    *(v3 + v21) = v20;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DEA5AEC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A88, &qword_21DED3690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7C88();
  v11 = sub_21DEC7810();
  v12 = (*(*v3 + 104))(v11);
  v24 = 0;
  sub_21DE6C7C8(v12, v13);
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  v16 = *(*v3 + 128);
  v17 = v16(v15);
  if (v17 >> 62)
  {
    v21 = v17;
    v20 = sub_21DEC7400();

    if (!v20)
    {
      return (*(v6 + 8))(v9, v5);
    }

    goto LABEL_5;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v18)
  {
LABEL_5:
    v23 = v16(v19);
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A70, &qword_21DED3688);
    sub_21DEA7DB0();
    sub_21DEC75D0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DEA5D54()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence8Schedule_id;
  v2 = sub_21DEC6950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_scheduleTitle + 8);

  v4 = *(v0 + OBJC_IVAR____TtC17SceneIntelligence8Schedule_elements);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_21DEA5E14@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DEA5E94()
{
  v1 = 0x6D69547472617473;
  if (*v0 != 1)
  {
    v1 = 0x656D6954646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7961646B656577;
  }
}

uint64_t sub_21DEA5EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEA7E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEA5F1C(uint64_t a1)
{
  v2 = sub_21DEA7F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA5F58(uint64_t a1)
{
  v2 = sub_21DEA7F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA5F94()
{
  (*(*v0 + 120))(v12);
  v1 = SubEvent.DateTimeElement.Recurrence.Weekday.rawValue.getter();
  v12[0] = sub_21DEBCAD8(0x7961446B656577, 0xE700000000000000, v1, v2);
  v12[1] = v3;
  v4 = (*(*v0 + 144))();
  v6 = sub_21DEBCAD8(0x6D69547472617473, 0xE900000000000065, v4, v5);
  MEMORY[0x223D4B2A0](v6);

  v8 = (*(*v0 + 168))(v7);
  v10 = sub_21DEBCAD8(0x656D6954646E65, 0xE700000000000000, v8, v9);
  MEMORY[0x223D4B2A0](v10);

  return v12[0];
}

uint64_t sub_21DEA60D8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_21DEA612C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21DEA6260(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_21DEA62C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_21DEA637C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  v15 = *a1;
  sub_21DEC6940();
  v16 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  *(v14 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday) = 0;
  v17 = (v14 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_startTime);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v14 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_endTime);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  swift_beginAccess();
  *(v14 + v16) = v15;
  swift_beginAccess();
  *v17 = a2;
  v17[1] = a3;
  swift_beginAccess();
  *v18 = a4;
  v18[1] = a5;
  return v14;
}

uint64_t sub_21DEA64A8(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

uint64_t sub_21DEA6500(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94AA0, &qword_21DED3698);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  sub_21DEC6940();
  v9 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday;
  *(v3 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_weekday) = 0;
  v10 = (v3 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_startTime);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v3 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_endTime);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v13 = a1[3];
  v12 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21DEA7F84();
  sub_21DEC77E0();
  if (v2)
  {
  }

  else
  {
    v29 = v11;
    v14 = v30;
    v33 = 0;
    sub_21DE9957C();
    v15 = v31;
    sub_21DEC74E0();
    if (v34 == 7)
    {
      v17 = 0;
    }

    else
    {
      v17 = v34;
    }

    swift_beginAccess();
    *(v3 + v9) = v17;
    v33 = 1;
    v18 = sub_21DEC74A0();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    swift_beginAccess();
    v22 = v10[1];
    *v10 = v20;
    v10[1] = v21;

    v32 = 2;
    v23 = sub_21DEC74A0();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    (*(v14 + 8))(v8, v15);
    v27 = v29;
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v25;
    v27[1] = v26;
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v3;
}

uint64_t sub_21DEA67D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94AB0, qword_21DED36A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7F84();
  v11 = sub_21DEC7810();
  (*(*v3 + 120))(&v20, v11);
  v19[14] = 0;
  sub_21DE99624();
  v12 = sub_21DEC75D0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = (*(*v3 + 144))(v12);
  v19[13] = 1;
  sub_21DE6C7C8(v14, v15);

  v17 = (*(*v3 + 168))(v16);
  v19[12] = 2;
  sub_21DE6C7C8(v17, v18);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DEA6A3C()
{
  v1 = OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_id;
  v2 = sub_21DEC6950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_startTime + 8);

  v4 = *(v0 + OBJC_IVAR____TtC17SceneIntelligence15ScheduleElement_endTime + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_21DEA6B00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_21DEA6B80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C18, &unk_21DED47A0);
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

char *sub_21DEA6C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949B8, &qword_21DED3618);
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

BOOL sub_21DEA6D68(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_21DEC72E0();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_21DEA6E60(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (v1)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v4;
  }

  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  sub_21DE83418();
  sub_21DEC7660();
  v4 = v27;
  v6 = v27 + 64;
  v7 = 1 << *(v27 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v27 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_13:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v4 + 48) + ((v11 << 10) | (16 * v13)));
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_21DEC7470();

    if (v17)
    {
      if (v17 == 1)
      {
        v18 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0;
LABEL_17:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21DEA6B80(0, *(v29 + 2) + 1, 1, v29);
        v29 = result;
      }

      v20 = *(v29 + 2);
      v19 = *(v29 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        result = sub_21DEA6B80((v19 > 1), v20 + 1, 1, v29);
        v21 = v20 + 1;
        v29 = result;
      }

      v22 = v29;
      *(v29 + 2) = v21;
      v22[v20 + 32] = v18;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  v23 = v29;
  if (!*(v29 + 2))
  {

    v24 = *(v4 + 16);
    if (v24)
    {
      v25 = sub_21DE987FC(*(v4 + 16), 0);
      v4 = sub_21DE98A98(&v27, v25 + 4, v24, v4);
      sub_21DE98BF0();
      if (v4 == v24)
      {
LABEL_29:
        sub_21DEA8038();
        swift_allocError();
        *v26 = v25;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0(v28);
        goto LABEL_3;
      }

      __break(1u);
    }

    v25 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  if (*(v23 + 2))
  {
    v4 = v23[32];

    __swift_destroy_boxed_opaque_existential_0(v28);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v4;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_21DEA7184()
{
  result = qword_27CE949A0;
  if (!qword_27CE949A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949A0);
  }

  return result;
}

uint64_t sub_21DEA7218(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DEA7260()
{
  result = qword_27CE949C8;
  if (!qword_27CE949C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949C8);
  }

  return result;
}

unint64_t sub_21DEA72B4()
{
  result = qword_27CE949D8;
  if (!qword_27CE949D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949D8);
  }

  return result;
}

uint64_t sub_21DEA7308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F6261 && a2 == 0xE500000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021DEDA3C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21DEA7478()
{
  result = qword_27CE949E8;
  if (!qword_27CE949E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949E8);
  }

  return result;
}

unint64_t sub_21DEA74CC()
{
  result = qword_27CE949F8;
  if (!qword_27CE949F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE949F0, &qword_21DED3638);
    sub_21DEA7218(&qword_27CE94570, type metadata accessor for SubEvent.DateTimeElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE949F8);
  }

  return result;
}

unint64_t sub_21DEA7580()
{
  result = qword_27CE94A08;
  if (!qword_27CE94A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A08);
  }

  return result;
}

unint64_t sub_21DEA75D4()
{
  result = qword_27CE94A18;
  if (!qword_27CE94A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A18);
  }

  return result;
}

uint64_t sub_21DEA7628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889268 && a2 == 0xE300000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7367028 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21DEA7740()
{
  result = qword_27CE94A28;
  if (!qword_27CE94A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A28);
  }

  return result;
}

uint64_t sub_21DEA7794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61437463656A626FLL && a2 == 0xEE0079726F676574;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4C7463656A626FLL && a2 == 0xEE006E6F69746163 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21DEA7908()
{
  result = qword_27CE94A38;
  if (!qword_27CE94A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A38);
  }

  return result;
}

unint64_t sub_21DEA795C()
{
  result = qword_27CE94A48;
  if (!qword_27CE94A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A48);
  }

  return result;
}

unint64_t sub_21DEA79B0()
{
  result = qword_27CE942E0;
  if (!qword_27CE942E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE942D8, &qword_21DED01A0);
    sub_21DEA7218(&qword_27CE942E8, type metadata accessor for SceneObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE942E0);
  }

  return result;
}

uint64_t sub_21DEA7A64()
{
  v0 = sub_21DEC7470();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21DEA7AB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E756F636361 && a2 == 0xEB00000000657079 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xEB00000000656D61 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E756F636361 && a2 == 0xEF64726F77737361 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626D754E6D657469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v5 = sub_21DEC7610();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21DEA7C34()
{
  result = qword_27CE94A58;
  if (!qword_27CE94A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A58);
  }

  return result;
}

unint64_t sub_21DEA7C88()
{
  result = qword_27CE94A68;
  if (!qword_27CE94A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A68);
  }

  return result;
}

unint64_t sub_21DEA7CDC()
{
  result = qword_27CE94A78;
  if (!qword_27CE94A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94A70, &qword_21DED3688);
    sub_21DEA7218(&qword_27CE94A80, type metadata accessor for ScheduleElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A78);
  }

  return result;
}

unint64_t sub_21DEA7DB0()
{
  result = qword_27CE94A90;
  if (!qword_27CE94A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94A70, &qword_21DED3688);
    sub_21DEA7218(&qword_27CE94A98, type metadata accessor for ScheduleElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94A90);
  }

  return result;
}

uint64_t sub_21DEA7E64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961646B656577 && a2 == 0xE700000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21DEA7F84()
{
  result = qword_27CE94AA8;
  if (!qword_27CE94AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AA8);
  }

  return result;
}

unint64_t sub_21DEA8038()
{
  result = qword_27CE94AB8;
  if (!qword_27CE94AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AB8);
  }

  return result;
}

unint64_t sub_21DEA8090()
{
  result = qword_27CE94AC0;
  if (!qword_27CE94AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AC0);
  }

  return result;
}

unint64_t sub_21DEA80E8()
{
  result = qword_27CE94AC8;
  if (!qword_27CE94AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AC8);
  }

  return result;
}

unint64_t sub_21DEA8140()
{
  result = qword_27CE94AD0;
  if (!qword_27CE94AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AD0);
  }

  return result;
}

unint64_t sub_21DEA8198()
{
  result = qword_27CE94AD8;
  if (!qword_27CE94AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AD8);
  }

  return result;
}

unint64_t sub_21DEA8220()
{
  result = qword_27CE94AF0;
  if (!qword_27CE94AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AF0);
  }

  return result;
}

unint64_t sub_21DEA8278()
{
  result = qword_27CE94AF8;
  if (!qword_27CE94AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94AF8);
  }

  return result;
}

unint64_t sub_21DEA82D0()
{
  result = qword_27CE94B00;
  if (!qword_27CE94B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B00);
  }

  return result;
}

unint64_t sub_21DEA8328()
{
  result = qword_27CE94B08;
  if (!qword_27CE94B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B08);
  }

  return result;
}

unint64_t sub_21DEA8380()
{
  result = qword_27CE94B10;
  if (!qword_27CE94B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B10);
  }

  return result;
}

unint64_t sub_21DEA83D8()
{
  result = qword_27CE94B18;
  if (!qword_27CE94B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B18);
  }

  return result;
}

unint64_t sub_21DEA8430()
{
  result = qword_27CE94B20;
  if (!qword_27CE94B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B20);
  }

  return result;
}

unint64_t sub_21DEA8488()
{
  result = qword_27CE94B28;
  if (!qword_27CE94B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B28);
  }

  return result;
}

unint64_t sub_21DEA84E0()
{
  result = qword_27CE94B30;
  if (!qword_27CE94B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B30);
  }

  return result;
}

unint64_t sub_21DEA8538()
{
  result = qword_27CE94B38;
  if (!qword_27CE94B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B38);
  }

  return result;
}

unint64_t sub_21DEA8590()
{
  result = qword_27CE94B40;
  if (!qword_27CE94B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B40);
  }

  return result;
}

unint64_t sub_21DEA85E8()
{
  result = qword_27CE94B48;
  if (!qword_27CE94B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B48);
  }

  return result;
}

unint64_t sub_21DEA8640()
{
  result = qword_27CE94B50;
  if (!qword_27CE94B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B50);
  }

  return result;
}

unint64_t sub_21DEA8698()
{
  result = qword_27CE94B58;
  if (!qword_27CE94B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B58);
  }

  return result;
}

unint64_t sub_21DEA86F0()
{
  result = qword_27CE94B60;
  if (!qword_27CE94B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B60);
  }

  return result;
}

unint64_t sub_21DEA8748()
{
  result = qword_27CE94B68;
  if (!qword_27CE94B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B68);
  }

  return result;
}

unint64_t sub_21DEA87A0()
{
  result = qword_27CE94B70;
  if (!qword_27CE94B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B70);
  }

  return result;
}

unint64_t sub_21DEA87F8()
{
  result = qword_27CE94B78;
  if (!qword_27CE94B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B78);
  }

  return result;
}

unint64_t sub_21DEA8850()
{
  result = qword_27CE94B80;
  if (!qword_27CE94B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B80);
  }

  return result;
}

unint64_t sub_21DEA88A8()
{
  result = qword_27CE94B88;
  if (!qword_27CE94B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B88);
  }

  return result;
}

unint64_t sub_21DEA8900()
{
  result = qword_27CE94B90;
  if (!qword_27CE94B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B90);
  }

  return result;
}

unint64_t sub_21DEA8958()
{
  result = qword_27CE94B98;
  if (!qword_27CE94B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94B98);
  }

  return result;
}

unint64_t sub_21DEA89B0()
{
  result = qword_27CE94BA0;
  if (!qword_27CE94BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BA0);
  }

  return result;
}

unint64_t sub_21DEA8A08()
{
  result = qword_27CE94BA8;
  if (!qword_27CE94BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BA8);
  }

  return result;
}

unint64_t sub_21DEA8A60()
{
  result = qword_27CE94BB0;
  if (!qword_27CE94BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BB0);
  }

  return result;
}

uint64_t sub_21DEA8AE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DEA8B3C()
{
  result = qword_27CE94BC8;
  if (!qword_27CE94BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BC8);
  }

  return result;
}

unint64_t sub_21DEA8B94()
{
  result = qword_27CE94BD0;
  if (!qword_27CE94BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BD0);
  }

  return result;
}

unint64_t sub_21DEA8BEC()
{
  result = qword_27CE94BD8;
  if (!qword_27CE94BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BD8);
  }

  return result;
}

unint64_t sub_21DEA8C44()
{
  result = qword_27CE94BE0;
  if (!qword_27CE94BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BE0);
  }

  return result;
}

unint64_t sub_21DEA8C9C()
{
  result = qword_27CE94BE8;
  if (!qword_27CE94BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BE8);
  }

  return result;
}

unint64_t sub_21DEA8CF4()
{
  result = qword_27CE94BF0;
  if (!qword_27CE94BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BF0);
  }

  return result;
}

unint64_t sub_21DEA8D4C()
{
  result = qword_27CE94BF8;
  if (!qword_27CE94BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94BF8);
  }

  return result;
}

unint64_t sub_21DEA8DA4()
{
  result = qword_27CE94C00;
  if (!qword_27CE94C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C00);
  }

  return result;
}

unint64_t sub_21DEA8DFC()
{
  result = qword_27CE94C08;
  if (!qword_27CE94C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C08);
  }

  return result;
}

uint64_t sub_21DEA8F08()
{
  result = sub_21DEC6950();
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

uint64_t sub_21DEA8FD8()
{
  result = sub_21DEC6950();
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

uint64_t sub_21DEA9098()
{
  result = sub_21DEC6950();
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

unint64_t sub_21DEA914C()
{
  result = qword_27CE94C10;
  if (!qword_27CE94C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C10);
  }

  return result;
}

_BYTE *sub_21DEA91A0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

SceneIntelligence::JSONSchemaName_optional __swiftcall JSONSchemaName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t JSONSchemaName.rawValue.getter()
{
  if (*v0)
  {
    result = 1667459446;
  }

  else
  {
    result = 0x7275746375727473;
  }

  *v0;
  return result;
}

uint64_t sub_21DEA92F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1667459446;
  }

  else
  {
    v4 = 0x7275746375727473;
  }

  if (v3)
  {
    v5 = 0xEE00747865546465;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1667459446;
  }

  else
  {
    v6 = 0x7275746375727473;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEE00747865546465;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();
  }

  return v9 & 1;
}

uint64_t sub_21DEA93A4()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA942C()
{
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DEA94A0()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA9524@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21DEC7470();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21DEA9584(uint64_t *a1@<X8>)
{
  v2 = 1667459446;
  if (!*v1)
  {
    v2 = 0x7275746375727473;
  }

  v3 = 0xEE00747865546465;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t NamedJSONSchema.Error.errorDescription.getter()
{
  v1 = *v0;
  sub_21DEC72F0();

  if (v1)
  {
    v2 = 1667459446;
  }

  else
  {
    v2 = 0x7275746375727473;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xEE00747865546465;
  }

  MEMORY[0x223D4B2A0](v2, v3);

  MEMORY[0x223D4B2A0](0x7373696D20736920, 0xEB00000000676E69);
  return 0xD000000000000018;
}

uint64_t sub_21DEA96B0()
{
  type metadata accessor for NamedJSONSchema();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_27CEA2F88 = result;
  return result;
}

uint64_t sub_21DEA96E8()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t *sub_21DEA9718()
{
  if (qword_27CEA2F80 != -1)
  {
    swift_once();
  }

  return &qword_27CEA2F88;
}

uint64_t static NamedJSONSchema.shared.getter()
{
  if (qword_27CEA2F80 != -1)
  {
    swift_once();
  }
}

void sub_21DEA97C4(char *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v7;
  v8 = sub_21DEC6880();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v40 = type metadata accessor for JSONSchema(0);
  v45 = *(v40 - 8);
  v18 = *(v45 + 64);
  v19 = MEMORY[0x28223BE20](v40);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = *a1;
  swift_beginAccess();
  v42 = v2;
  v25 = *(v2 + 16);
  if (!*(v25 + 16))
  {
LABEL_5:
    v38 = v8;
    v39 = v3;
    type metadata accessor for NamedJSONSchema();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_21DEC6D80();

    v31 = sub_21DEC6D80();
    v43 = v29;
    v32 = [v29 URLForResource:v30 withExtension:v31];

    if (v32)
    {
      sub_21DEC6850();

      v33 = v44;
      v34 = v38;
      (*(v44 + 32))(v17, v15, v38);
      (*(v33 + 16))(v12, v17, v34);
      v35 = v39;
      JSONSchema.init(url:)(v12, v21);
      if (!v35)
      {
        v37 = v41;
        sub_21DEA9FD4(v21, v41);
        (*(v45 + 56))(v37, 0, 1, v40);
        swift_beginAccess();
        sub_21DEA9C4C(v37, v24);
        swift_endAccess();

        (*(v33 + 8))(v17, v34);
        goto LABEL_11;
      }

      (*(v33 + 8))(v17, v34);
    }

    else
    {
      sub_21DEA9F80();
      swift_allocError();
      *v36 = v24;
      swift_willThrow();
    }

    return;
  }

  v26 = sub_21DEA9EB0(v24);
  if ((v27 & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_21DEA9FD4(*(v25 + 56) + *(v45 + 72) * v26, v23);

  v21 = v23;
LABEL_11:
  sub_21DEAA038(v21, v46);
}

uint64_t sub_21DEA9C4C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for JSONSchema(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_21DEAA1D0(a1);
    v15 = *v2;
    v16 = sub_21DEA9EB0(a2 & 1);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21DEAAAE4();
        v21 = v26;
      }

      sub_21DEAA038(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_21DEAA59C(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_21DEAA1D0(v9);
  }

  else
  {
    sub_21DEAA038(a1, v14);
    v22 = *v2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    result = sub_21DEAA7B0(v14, a2 & 1, v23);
    *v2 = v26;
  }

  return result;
}

uint64_t NamedJSONSchema.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NamedJSONSchema.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_21DEA9EB0(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21DEC7770();
  sub_21DEC6E90();

  v5 = sub_21DEC77B0();

  return sub_21DEAA994(a1 & 1, v5);
}

unint64_t sub_21DEA9F80()
{
  result = qword_27CE94C28;
  if (!qword_27CE94C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C28);
  }

  return result;
}

uint64_t sub_21DEA9FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DEAA038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DEAA0A0()
{
  result = qword_27CE94C30;
  if (!qword_27CE94C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C30);
  }

  return result;
}

unint64_t sub_21DEAA0F8()
{
  result = qword_27CE94C38;
  if (!qword_27CE94C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94C40, &qword_21DED4868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C38);
  }

  return result;
}

uint64_t sub_21DEAA1D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DEAA238(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for JSONSchema(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C48, &qword_21DED4998);
  v40 = a2;
  result = sub_21DEC7420();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_21DEAA038(v27, v41);
      }

      else
      {
        sub_21DEA9FD4(v27, v41);
      }

      v28 = *(v12 + 40);
      sub_21DEC7770();
      sub_21DEC6E90();

      result = sub_21DEC77B0();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_21DEAA038(v41, *(v12 + 56) + v26 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_21DEAA59C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DEC7290() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_21DEC7770();
      sub_21DEC6E90();

      result = sub_21DEC77B0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for JSONSchema(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21DEAA7B0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21DEA9EB0(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21DEAAAE4();
      goto LABEL_7;
    }

    sub_21DEAA238(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_21DEA9EB0(a2 & 1);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21DEC7700();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for JSONSchema(0) - 8) + 72) * v10;

    return sub_21DEAACF0(a1, v18);
  }

LABEL_13:

  return sub_21DEAA8FC(v10, a2 & 1, a1, v16);
}

uint64_t sub_21DEAA8FC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for JSONSchema(0);
  result = sub_21DEAA038(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_21DEAA994(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 1667459446;
    }

    else
    {
      v6 = 0x7275746375727473;
    }

    if (a1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xEE00747865546465;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 1667459446 : 0x7275746375727473;
      v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xEE00747865546465;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_21DEC7610();

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

void *sub_21DEAAAE4()
{
  v1 = v0;
  v2 = type metadata accessor for JSONSchema(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C48, &qword_21DED4998);
  v6 = *v0;
  v7 = sub_21DEC7410();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_21DEA9FD4(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + v21) = v22;
        result = sub_21DEAA038(v5, *(v8 + 56) + v23);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_21DEAACF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DEAAD58(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94CA0, &unk_21DED4A90);
  v3 = *(*(v42 - 1) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = sub_21DEC6950();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v39 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - v22;
  sub_21DE5C6E4(a1, v44, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (!v24)
  {
    v25(v16, 1, 1, v17);
    sub_21DE5CD00(v16, &qword_27CE94C58, &qword_21DED49A8);
    return 2;
  }

  v25(v16, 0, 1, v17);
  v38 = *(v18 + 32);
  v38(v23, v16, v17);
  (*(v18 + 16))(v14, v23, v17);
  v25(v14, 0, 1, v17);
  sub_21DE5C6E4(v41, v44, &qword_27CE94C50, &qword_21DED49A0);
  v26 = swift_dynamicCast();
  v25(v11, v26 ^ 1u, 1, v17);
  v27 = v43;
  v28 = *(v42 + 12);
  sub_21DE5C6E4(v14, v43, &qword_27CE94C58, &qword_21DED49A8);
  v42 = v11;
  sub_21DE5C6E4(v11, v27 + v28, &qword_27CE94C58, &qword_21DED49A8);
  v29 = *(v18 + 48);
  v30 = v27;
  if (v29(v27, 1, v17) != 1)
  {
    v33 = v27;
    v34 = v40;
    sub_21DE5C6E4(v33, v40, &qword_27CE94C58, &qword_21DED49A8);
    if (v29(v30 + v28, 1, v17) != 1)
    {
      v36 = v39;
      v38(v39, (v30 + v28), v17);
      sub_21DEAD438(&qword_27CE94CA8);
      v31 = sub_21DEC6D70();
      v37 = *(v18 + 8);
      v37(v36, v17);
      sub_21DE5CD00(v14, &qword_27CE94C58, &qword_21DED49A8);
      v37(v23, v17);
      v37(v34, v17);
      sub_21DE5CD00(v30, &qword_27CE94C58, &qword_21DED49A8);
      goto LABEL_10;
    }

    sub_21DE5CD00(v14, &qword_27CE94C58, &qword_21DED49A8);
    v35 = *(v18 + 8);
    v35(v23, v17);
    v35(v34, v17);
    goto LABEL_8;
  }

  sub_21DE5CD00(v14, &qword_27CE94C58, &qword_21DED49A8);
  (*(v18 + 8))(v23, v17);
  if (v29(v27 + v28, 1, v17) != 1)
  {
LABEL_8:
    sub_21DE5CD00(v30, &qword_27CE94CA0, &unk_21DED4A90);
    v31 = 0;
    goto LABEL_10;
  }

  sub_21DE5CD00(v27, &qword_27CE94C58, &qword_21DED49A8);
  v31 = 1;
LABEL_10:
  sub_21DE5CD00(v42, &qword_27CE94C58, &qword_21DED49A8);
  return v31 & 1;
}

uint64_t sub_21DEAB314(uint64_t a1, uint64_t a2)
{
  sub_21DE5C6E4(a1, v6, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  if (!swift_dynamicCast())
  {
    return 2;
  }

  sub_21DE5C6E4(a2, v6, &qword_27CE94C50, &qword_21DED49A0);
  if ((swift_dynamicCast() & 1) != 0 && v5)
  {

    v3 = sub_21DEAC078(v5, v5);
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_21DEAB43C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = sub_21DEC6950();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (!v2)
  {
    v18[1] = v12;
    v18[2] = v7;
    v18[3] = v9;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    if (sub_21DEC7670())
    {
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v15 = sub_21DEC7630();
      *(&v23 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v22) = v15 & 1;
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
    v16 = v23;
    *v14 = v22;
    v14[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21DEAB99C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_21DEC6950();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC7800();
  sub_21DE5C6E4(v1, &v23, &qword_27CE94C50, &qword_21DED49A0);
  if (v24)
  {
    sub_21DEAD1D0(&v23, v25);
    sub_21DE56CD4(v25, &v23);
    if (swift_dynamicCast())
    {
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      sub_21DEC7690();
    }

    else
    {
      sub_21DE56CD4(v25, &v23);
      if (swift_dynamicCast())
      {
        __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
        sub_21DEC76B0();
      }

      else
      {
        sub_21DE56CD4(v25, &v23);
        if (swift_dynamicCast())
        {
          __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
          sub_21DEC76A0();
        }

        else
        {
          sub_21DE56CD4(v25, &v23);
          v12 = swift_dynamicCast();
          v13 = v21;
          v14 = *(v21 + 56);
          if (!v12)
          {
            v14(v6, 1, 1, v7);
            sub_21DE5CD00(v6, &qword_27CE94C58, &qword_21DED49A8);
            sub_21DE56CD4(v25, &v23);
            if (swift_dynamicCast())
            {
              __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
              sub_21DEC7680();
            }

            else
            {
              sub_21DE56CD4(v25, &v23);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
              if (swift_dynamicCast())
              {
                *&v23 = v22;
                __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
                sub_21DEAD2B8(&qword_27CE94C90, sub_21DEAD264);
              }

              else
              {
                sub_21DE56CD4(v25, &v23);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
                if (!swift_dynamicCast())
                {
                  v16 = sub_21DEC7360();
                  swift_allocError();
                  v18 = v17;
                  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C78, &qword_21DED49C0) + 48);
                  sub_21DE56CD4(v25, v18);
                  v20 = a1[4];
                  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
                  sub_21DEC77F0();
                  sub_21DEC7330();
                  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D841A8], v16);
                  swift_willThrow();
                  goto LABEL_11;
                }

                *&v23 = v22;
                __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
                sub_21DEAD1E0(&qword_27CE94C80, sub_21DEAD264);
              }

              sub_21DEC76C0();
            }

            __swift_destroy_boxed_opaque_existential_0(v25);

            return __swift_destroy_boxed_opaque_existential_0(v26);
          }

          v14(v6, 0, 1, v7);
          (*(v13 + 32))(v10, v6, v7);
          __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
          sub_21DEAD438(&qword_27CE94C98);
          sub_21DEC76C0();
          (*(v13 + 8))(v10, v7);
        }
      }
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v25);
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  sub_21DE5CD00(&v23, &qword_27CE94C50, &qword_21DED49A0);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  sub_21DEC76D0();
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_21DEAC078(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v4 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_21DEA7FD8(*(a1 + 56) + 32 * v12, &v35);
    v29 = v35;
    v30 = v36;

    if (!v14)
    {
      return 1;
    }

    v35 = v29;
    v36 = v30;
    v16 = sub_21DE7ADAC(v15, v14);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      sub_21DEAD408(&v35);
      return 0;
    }

    sub_21DEA7FD8(*(v2 + 56) + 32 * v16, v34);
    sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
      if (!swift_dynamicCast())
      {
        if (LOBYTE(v31) != 2)
        {
          v20 = 0;
          goto LABEL_54;
        }

        v19 = 2;
LABEL_24:
        v20 = v19 == 2;
        goto LABEL_54;
      }

      v19 = LOBYTE(v31);
      if (LOBYTE(v31) == 2)
      {
        goto LABEL_24;
      }

      v20 = 1;
    }

    else
    {
      sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
      if (swift_dynamicCast())
      {
        sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
        v21 = swift_dynamicCast();
        v22 = v31;
        if (!v21)
        {
          v22 = 0.0;
        }

        v23 = *&v31 == *&v22;
LABEL_29:
        if (v23)
        {
          v20 = v21;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_54;
      }

      sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
      if (swift_dynamicCast())
      {
        sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
        v21 = swift_dynamicCast();
        v24 = v31;
        if (!v21)
        {
          v24 = 0.0;
        }

        v23 = v31 == v24;
        goto LABEL_29;
      }

      v25 = sub_21DEAAD58(v34, &v35);
      if (v25 == 2)
      {
        sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
        if (swift_dynamicCast())
        {
          sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
          if (swift_dynamicCast())
          {
            if (v32)
            {
              v20 = 1;
              goto LABEL_45;
            }
          }

          else
          {
            v31 = 0.0;
            v32 = 0;
          }

          v20 = 0;
LABEL_45:

LABEL_53:

          goto LABEL_54;
        }

        sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
        if (swift_dynamicCast())
        {
          sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
          if (swift_dynamicCast())
          {
            if (v31 != 0.0)
            {

              v26 = sub_21DEAC704(*&v31, *&v31);
LABEL_50:
              v20 = v26;

              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }

        else
        {
          sub_21DE5C6E4(v34, v33, &qword_27CE94C50, &qword_21DED49A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
          if (!swift_dynamicCast())
          {
            goto LABEL_61;
          }

          sub_21DE5C6E4(&v35, v33, &qword_27CE94C50, &qword_21DED49A0);
          if (swift_dynamicCast())
          {
            if (v31 != 0.0)
            {

              v26 = sub_21DEAC078(*&v31, *&v31);
              goto LABEL_50;
            }

LABEL_52:

            v20 = 0;
            goto LABEL_53;
          }
        }

        v31 = 0.0;
        goto LABEL_52;
      }

      v20 = v25;
    }

LABEL_54:
    sub_21DEAD408(v34);
    sub_21DEAD408(&v35);
    if (!v20)
    {
      return 0;
    }

    v2 = a2;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(a1 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_61:
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_21DEC72F0();
  MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA620);
  sub_21DEC73C0();
  MEMORY[0x223D4B2A0](0x65646E7520736920, 0xED000064656E6966);
  result = sub_21DEC73F0();
  __break(1u);
  return result;
}

uint64_t sub_21DEAC704(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  while (1)
  {
    sub_21DEA7FD8(v3, v18);
    sub_21DEA7FD8(v4, v17);
    sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      v5 = LOBYTE(v14);
      if (LOBYTE(v14) != 2)
      {
        v6 = 1;
        goto LABEL_45;
      }

      goto LABEL_15;
    }

    if (LOBYTE(v14) == 2)
    {
      v5 = 2;
LABEL_15:
      v6 = v5 == 2;
      goto LABEL_45;
    }

    v6 = 0;
LABEL_45:
    sub_21DEAD408(v17);
    sub_21DEAD408(v18);
    if (v6)
    {
      v3 += 32;
      v4 += 32;
      if (--v2)
      {
        continue;
      }
    }

    return v6;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    v7 = swift_dynamicCast();
    v8 = v14;
    if (!v7)
    {
      v8 = 0.0;
    }

    v9 = *&v14 == *&v8;
LABEL_20:
    if (v9)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_45;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    v7 = swift_dynamicCast();
    v10 = v14;
    if (!v7)
    {
      v10 = 0.0;
    }

    v9 = v14 == v10;
    goto LABEL_20;
  }

  v11 = sub_21DEAAD58(v18, v17);
  if (v11 != 2)
  {
    v6 = v11;
    goto LABEL_45;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      if (v15)
      {
        v6 = 1;
LABEL_36:

LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {
      v14 = 0.0;
      v15 = 0;
    }

    v6 = 0;
    goto LABEL_36;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      if (v14 != 0.0)
      {

        v12 = sub_21DEAC704(*&v14, *&v14);
LABEL_41:
        v6 = v12;

        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  sub_21DE5C6E4(v18, v16, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(v17, v16, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      if (v14 != 0.0)
      {

        v12 = sub_21DEAC078(*&v14, *&v14);
        goto LABEL_41;
      }

LABEL_43:

      v6 = 0;
      goto LABEL_44;
    }

LABEL_42:
    v14 = 0.0;
    goto LABEL_43;
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_21DEC72F0();
  MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA620);
  sub_21DEC73C0();
  MEMORY[0x223D4B2A0](0x65646E7520736920, 0xED000064656E6966);
  result = sub_21DEC73F0();
  __break(1u);
  return result;
}

uint64_t sub_21DEACCC0(uint64_t a1, uint64_t a2)
{
  sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      v4 = v10;
      if (v10 != 2)
      {
        LOBYTE(v5) = 1;
        return v5 & 1;
      }
    }

    else
    {
      if (v10 != 2)
      {
        LOBYTE(v5) = 0;
        return v5 & 1;
      }

      v4 = 2;
    }

    LOBYTE(v5) = v4 == 2;
    return v5 & 1;
  }

  sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  if (swift_dynamicCast())
  {
    sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
    v5 = swift_dynamicCast();
    v6 = v10;
    if (!v5)
    {
      v6 = 0;
    }

    if (v10 != v6)
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v5) = sub_21DEAAD58(a1, a2);
    if (v5 != 2)
    {
      return v5 & 1;
    }

    sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    if (swift_dynamicCast())
    {
      sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
      v8 = (swift_dynamicCast() & 1) != 0 && v11;
      goto LABEL_34;
    }

    sub_21DE5C6E4(a1, v12, &qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
    if (swift_dynamicCast())
    {
      sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
      if ((swift_dynamicCast() & 1) != 0 && *&v10 != 0.0)
      {

        v8 = sub_21DEAC704(v10, v10);

LABEL_34:

        LOBYTE(v5) = v8;
        return v5 & 1;
      }
    }

    else
    {
      LOBYTE(v5) = sub_21DEAB314(a1, a2);
      if (v5 != 2)
      {
        return v5 & 1;
      }

      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA620);
      sub_21DEC73C0();
      MEMORY[0x223D4B2A0](0x65646E7520736920, 0xED000064656E6966);
      sub_21DEC73F0();
      __break(1u);
    }

    v8 = 0;
    goto LABEL_34;
  }

  sub_21DE5C6E4(a2, v12, &qword_27CE94C50, &qword_21DED49A0);
  v5 = swift_dynamicCast();
  v7 = *&v10;
  if (!v5)
  {
    v7 = 0.0;
  }

  if (*&v10 != v7)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

_OWORD *sub_21DEAD1D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21DEAD1E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94448, &qword_21DED0E80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DEAD264()
{
  result = qword_27CE94C88;
  if (!qword_27CE94C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94C88);
  }

  return result;
}

uint64_t sub_21DEAD2B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94C68, &unk_21DED49B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21DEAD348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21DEAD3A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_21DEAD438(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DEC6950();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t JSONSchemaError.errorDescription.getter()
{
  sub_21DEAD780(v0, &v15);
  v2 = v15;
  v1 = v16;
  if (v19 <= 1u)
  {
    if (!v19)
    {
      v14[0] = v17;
      v14[1] = v18;
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_21DEC72F0();

      v12 = 0xD000000000000015;
      v13 = 0x800000021DEDA770;
      MEMORY[0x223D4B2A0](v2, v1);

      MEMORY[0x223D4B2A0](0xD000000000000013, 0x800000021DEDA790);
      sub_21DE5C6E4(v14, v11, &qword_27CE94C50, &qword_21DED49A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C50, &qword_21DED49A0);
      v3 = sub_21DEC6E10();
      MEMORY[0x223D4B2A0](v3);

      v4 = v12;
      sub_21DE5CD00(v14, &qword_27CE94C50, &qword_21DED49A0);
      return v4;
    }

    sub_21DEC72F0();

    *&v14[0] = 0xD000000000000015;
    *(&v14[0] + 1) = 0x800000021DEDA750;
    MEMORY[0x223D4B2A0](v2, v1);
    goto LABEL_13;
  }

  if (v19 == 2)
  {
    v6 = v17.i64[0];
    sub_21DEC72F0();

    *&v14[0] = 0xD000000000000020;
    *(&v14[0] + 1) = 0x800000021DEDA720;
    v7 = sub_21DEC7150();
    v9 = v8;

    MEMORY[0x223D4B2A0](v7, v9);

    MEMORY[0x223D4B2A0](0x656A626F206E6920, 0xEB00000000207463);
    MEMORY[0x223D4B2A0](v1, v6);
LABEL_13:

    return *&v14[0];
  }

  if (v19 == 3)
  {
    sub_21DEC72F0();

    *&v14[0] = v2;
    *(&v14[0] + 1) = v1;
    MEMORY[0x223D4B2A0](0xD000000000000014, 0x800000021DEDA700);
    return *&v14[0];
  }

  v10 = vorrq_s8(v17, v18);
  if (*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v16 | v15)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x2064696C61766E49;
  }
}

char *JSONSchema.rawString.getter()
{
  v1 = sub_21DEC6E00();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DEC6730();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_21DEC6720();
  type metadata accessor for JSONSchema(0);
  sub_21DEB5F2C(&qword_27CE94CB0, type metadata accessor for JSONSchema);
  v8 = sub_21DEC6710();
  if (!v0)
  {
    v10 = v8;
    v11 = v9;
    sub_21DEC6DF0();
    v4 = sub_21DEC6DD0();
    sub_21DE5636C(v10, v11);
  }

  return v4;
}

uint64_t JSONSchema.init(data:currentDirectory:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v37 = a2;
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_21DEC73E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = sub_21DEC66C0();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_21DEC66B0();
  if (qword_27CEA3410 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_27CEA6720);
  v21 = *(v10 + 16);
  v21(v16, v20, v9);
  v32 = a3;
  sub_21DE5C6E4(a3, v8, &qword_27CE93F60, qword_21DECD138);
  v22 = sub_21DEC6880();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_21DE5CD00(v8, &qword_27CE93F60, qword_21DECD138);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    *(&v36 + 1) = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v23 + 32))(boxed_opaque_existential_1, v8, v22);
  }

  v25 = sub_21DEC66A0();
  sub_21DEADD1C(&v35, v16);
  v25(v34, 0);
  if (qword_27CEA3418 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v9, qword_27CEA6738);
  v21(v14, v26, v9);
  *(&v36 + 1) = sub_21DEC6950();
  __swift_allocate_boxed_opaque_existential_1(&v35);
  sub_21DEC6940();
  v27 = sub_21DEC66A0();
  sub_21DEADD1C(&v35, v14);
  v27(v34, 0);
  type metadata accessor for JSONSchema(0);
  sub_21DEB5F2C(&qword_27CE94CB8, type metadata accessor for JSONSchema);
  v28 = v33;
  v29 = v37;
  sub_21DEC6690();
  sub_21DE5CD00(v32, &qword_27CE93F60, qword_21DECD138);

  return sub_21DE5636C(v28, v29);
}

uint64_t sub_21DEADD1C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_21DEAD1D0(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_21DEB6A80(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_21DEC73E0();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_21DE5CD00(a1, &qword_27CE94E60, &qword_21DED5E70);
    sub_21DEB5F74(a2, v10);
    v8 = sub_21DEC73E0();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_21DE5CD00(v10, &qword_27CE94E60, &qword_21DED5E70);
  }

  return result;
}

uint64_t JSONSchema.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_21DEC6890();
  if (v2)
  {
    v11 = sub_21DEC6880();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_21DEC6840();
    v15 = sub_21DEC6880();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v8, 0, 1, v15);
    JSONSchema.init(data:currentDirectory:)(v13, v14, v8, a2);
    return (*(v16 + 8))(a1, v15);
  }
}

uint64_t JSONSchema.validate(jsonData:)()
{
  v1 = sub_21DEC66C0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_21DEC66B0();
  sub_21DE834A4();
  sub_21DEC6690();

  if (!v0)
  {
    sub_21DEAE078(v5);
    return sub_21DEAD408(v5);
  }

  return result;
}

uint64_t sub_21DEAE078(uint64_t a1)
{
  v133 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v125 - v4;
  v6 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v132 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for JSONSchema(0);
  v131 = *(v17 - 8);
  v18 = *(v131 + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v130 = &v125 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v125 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v125 - v27;
  v29 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 96);
  v34 = v33 >> 61;
  if ((v33 >> 61) <= 3)
  {
    if (v34 <= 1)
    {
      v35 = v133;
      v36 = v134;
      if (!v34)
      {
        v37 = swift_projectBox();
        sub_21DEBABEC(v37, v32, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
        sub_21DE5C6E4(v35, &v136, &qword_27CE94C50, &qword_21DED49A0);
        if (v139)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C68, &unk_21DED49B0);
          if (swift_dynamicCast())
          {
            v38 = v135;
            result = sub_21DEBABEC(v32, v28, type metadata accessor for JSONSchema);
            v40 = *(v38 + 16);
            if (v40)
            {
              v41 = 0;
              v42 = v38 + 32;
              while (v41 < *(v38 + 16))
              {
                sub_21DEA7FD8(v42, &v136);
                sub_21DEAE078(&v136);
                if (v36)
                {

                  sub_21DEAD408(&v136);
                  goto LABEL_96;
                }

                ++v41;
                result = sub_21DEAD408(&v136);
                v42 += 32;
                if (v40 == v41)
                {
                  goto LABEL_11;
                }
              }

              goto LABEL_107;
            }

LABEL_11:

LABEL_96:
            sub_21DEBB17C(v32, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
            v74 = type metadata accessor for JSONSchema;
            v75 = v28;
            return sub_21DEBB17C(v75, v74);
          }
        }

        else
        {
          sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
        }

        sub_21DEBAE00();
        swift_allocError();
        v73 = v72;
        *v72 = 0x7961727261206E61;
        v72[1] = 0xE800000000000000;
        sub_21DE5C6E4(v35, (v72 + 2), &qword_27CE94C50, &qword_21DED49A0);
        *(v73 + 48) = 0;
        swift_willThrow();
        v74 = type metadata accessor for JSONSchema.SchemaType.ArraySchema;
        v75 = v32;
        return sub_21DEBB17C(v75, v74);
      }

      sub_21DE5C6E4(v133, &v136, &qword_27CE94C50, &qword_21DED49A0);
      if (v139)
      {
        result = swift_dynamicCast();
        if (result)
        {
          return result;
        }
      }

      else
      {
        sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
      }

      sub_21DEBAE00();
      swift_allocError();
      v69 = v78;
      v79 = 0x61656C6F6F622061;
      v80 = 0xE90000000000006ELL;
      goto LABEL_63;
    }

    v35 = v133;
    if (v34 == 2)
    {
      sub_21DE5C6E4(v133, &v136, &qword_27CE94C50, &qword_21DED49A0);
      if (v139)
      {
        result = swift_dynamicCast();
        if (result)
        {
          return result;
        }
      }

      else
      {
        sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
      }

      sub_21DEBAE00();
      swift_allocError();
      v69 = v78;
      v79 = 0x6765746E69206E61;
      v80 = 0xEA00000000007265;
      goto LABEL_63;
    }

    sub_21DE5C6E4(v133, &v136, &qword_27CE94C50, &qword_21DED49A0);
    if (v139)
    {
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
    }

    sub_21DE5C6E4(v35, &v136, &qword_27CE94C50, &qword_21DED49A0);
    if (v139)
    {
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
    }

    sub_21DEBAE00();
    swift_allocError();
    v69 = v78;
    v79 = 0x7265626D756E2061;
LABEL_62:
    v80 = 0xE800000000000000;
LABEL_63:
    *v78 = v79;
    v78[1] = v80;
    v70 = (v78 + 2);
    v71 = v35;
    goto LABEL_64;
  }

  if (v34 > 5)
  {
    if (v34 != 6)
    {
      v66 = v133;
      sub_21DE5C6E4(v133, &v136, &qword_27CE94C50, &qword_21DED49A0);
      v67 = v139;
      result = sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
      if (!v67)
      {
        return result;
      }

      sub_21DEBAE00();
      swift_allocError();
      v69 = v68;
      *v68 = 1819047278;
      v68[1] = 0xE400000000000000;
      v70 = (v68 + 2);
      v71 = v66;
LABEL_64:
      sub_21DE5C6E4(v71, v70, &qword_27CE94C50, &qword_21DED49A0);
      *(v69 + 48) = 0;
      return swift_willThrow();
    }

    v35 = v133;
    sub_21DE5C6E4(v133, &v136, &qword_27CE94C50, &qword_21DED49A0);
    if (v139)
    {
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
    }

    sub_21DEBAE00();
    swift_allocError();
    v69 = v78;
    v79 = 0x676E697274732061;
    goto LABEL_62;
  }

  if (v34 != 4)
  {
    v61 = *((v33 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v60 = *((v33 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    v62 = *sub_21DEBD51C();
    v63 = sub_21DEC6880();
    (*(*(v63 - 8) + 56))(v5, 1, 1, v63);
    v64 = *(*v62 + 128);

    v65 = v134;
    v64(v61, v60, v5);
    if (v65)
    {
      sub_21DE5CD00(v5, &qword_27CE93F60, qword_21DECD138);
    }

    sub_21DE5CD00(v5, &qword_27CE93F60, qword_21DECD138);

    sub_21DEAE078(v133);
    v74 = type metadata accessor for JSONSchema;
    v75 = v21;
    return sub_21DEBB17C(v75, v74);
  }

  v43 = swift_projectBox();
  v44 = v132;
  sub_21DEBABEC(v43, v132, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
  v45 = v133;
  sub_21DE5C6E4(v133, &v136, &qword_27CE94C50, &qword_21DED49A0);
  if (!v139)
  {
    sub_21DE5CD00(&v136, &qword_27CE94C50, &qword_21DED49A0);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_48:
    sub_21DEBAE00();
    swift_allocError();
    v77 = v76;
    *v76 = 0x63656A626F206E61;
    v76[1] = 0xE900000000000074;
    sub_21DE5C6E4(v45, (v76 + 2), &qword_27CE94C50, &qword_21DED49A0);
    *(v77 + 48) = 0;
    swift_willThrow();
    v74 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema;
    v75 = v44;
    return sub_21DEBB17C(v75, v74);
  }

  v46 = v135;
  sub_21DEBABEC(v44, v13, type metadata accessor for JSONSchema.SchemaType.ObjectType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v133 = v46;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21DEBAC74(v13, v9, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
    v48 = v46 + 64;
    v49 = 1 << *(v46 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v46 + 64);
    v52 = (v49 + 63) >> 6;

    v53 = 0;
    if (v51)
    {
      while (1)
      {
        v54 = v53;
LABEL_24:
        v55 = __clz(__rbit64(v51)) | (v54 << 6);
        v56 = (*(v133 + 48) + 16 * v55);
        v57 = *v56;
        v58 = v56[1];
        sub_21DEA7FD8(*(v133 + 56) + 32 * v55, &v138);
        v136 = v57;
        v137 = v58;

        v59 = v134;
        sub_21DEAE078(&v138);
        v134 = v59;
        if (v59)
        {
          break;
        }

        v51 &= v51 - 1;
        result = sub_21DE5CD00(&v136, &qword_27CE94E50, &unk_21DED5E58);
        v53 = v54;
        if (!v51)
        {
          goto LABEL_21;
        }
      }

      sub_21DE5CD00(&v136, &qword_27CE94E50, &unk_21DED5E58);
LABEL_92:
      sub_21DEBB17C(v132, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);

      return sub_21DEBB17C(v9, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
    }

LABEL_21:
    while (1)
    {
      v54 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v54 >= v52)
      {

        goto LABEL_92;
      }

      v51 = *(v48 + 8 * v54);
      ++v53;
      if (v51)
      {
        goto LABEL_24;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    return result;
  }

  v81 = *v13;
  v129 = v13[1];
  v127 = v13[2];
  v82 = 1 << *(v81 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v81 + 64);
  v85 = (v82 + 63) >> 6;

  v86 = 0;
  v128 = MEMORY[0x277D84F90];
  while (1)
  {
    v87 = v86;
    if (!v84)
    {
      break;
    }

LABEL_72:
    v88 = (*(v81 + 48) + ((v86 << 10) | (16 * __clz(__rbit64(v84)))));
    v90 = *v88;
    v89 = v88[1];
    v84 &= v84 - 1;
    v136 = *v88;
    v137 = v89;
    MEMORY[0x28223BE20](result);
    *(&v125 - 2) = &v136;

    v91 = v134;
    v92 = sub_21DE53140(sub_21DE821E8, (&v125 - 4), v129);
    v134 = v91;
    if (v92)
    {
      v93 = v128;
      result = swift_isUniquelyReferenced_nonNull_native();
      v140 = v93;
      if ((result & 1) == 0)
      {
        result = sub_21DE52560(0, *(v93 + 16) + 1, 1);
        v93 = v140;
      }

      v95 = *(v93 + 16);
      v94 = *(v93 + 24);
      v96 = v95 + 1;
      if (v95 >= v94 >> 1)
      {
        v128 = v95 + 1;
        v126 = v95;
        result = sub_21DE52560((v94 > 1), v95 + 1, 1);
        v96 = v128;
        v95 = v126;
        v93 = v140;
      }

      *(v93 + 16) = v96;
      v128 = v93;
      v97 = v93 + 16 * v95;
      *(v97 + 32) = v90;
      *(v97 + 40) = v89;
    }

    else
    {
    }
  }

  while (1)
  {
    v86 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
      goto LABEL_105;
    }

    if (v86 >= v85)
    {
      break;
    }

    v84 = *(v81 + 64 + 8 * v86);
    ++v87;
    if (v84)
    {
      goto LABEL_72;
    }
  }

  v98 = sub_21DEB9B28(v128);

  v99 = v133;
  v101 = v133 + 64;
  v100 = *(v133 + 64);
  v135 = v98;
  v102 = 1 << *(v133 + 32);
  v103 = -1;
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  v104 = v103 & v100;
  v105 = (v102 + 63) >> 6;

  v106 = 0;
  if (!v104)
  {
LABEL_83:
    while (1)
    {
      v107 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_106;
      }

      if (v107 >= v105)
      {

        v118 = v135;
        if (*(v135 + 16))
        {
          sub_21DEBAE00();
          swift_allocError();
          v120 = v119;

          v121 = sub_21DEC6D40();
          v123 = v122;

          *v120 = v118;
          *(v120 + 8) = v121;
          *(v120 + 16) = v123;
          *(v120 + 48) = 2;
          swift_willThrow();
          sub_21DEBB17C(v132, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
        }

        else
        {
          sub_21DEBB17C(v132, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
        }
      }

      v104 = *(v101 + 8 * v107);
      ++v106;
      if (v104)
      {
        goto LABEL_86;
      }
    }
  }

  while (1)
  {
    v107 = v106;
LABEL_86:
    v108 = __clz(__rbit64(v104)) | (v107 << 6);
    v109 = *(v99 + 56);
    v110 = (*(v99 + 48) + 16 * v108);
    v112 = *v110;
    v111 = v110[1];
    sub_21DEA7FD8(v109 + 32 * v108, &v138);
    v136 = v112;
    v137 = v111;
    v113 = *(v81 + 16);

    if (!v113 || (v114 = sub_21DE7ADAC(v112, v111), (v115 & 1) == 0))
    {
      sub_21DEBAE00();
      swift_allocError();
      *v124 = v112;
      *(v124 + 8) = v111;
      *(v124 + 48) = 1;
      swift_willThrow();

      goto LABEL_103;
    }

    v116 = v130;
    sub_21DEBABEC(*(v81 + 56) + *(v131 + 72) * v114, v130, type metadata accessor for JSONSchema);
    sub_21DEBAC74(v116, v26, type metadata accessor for JSONSchema);
    v117 = v134;
    sub_21DEAE078(&v138);
    v134 = v117;
    if (v117)
    {
      break;
    }

    v104 &= v104 - 1;
    sub_21DEB8274(v112, v111);

    sub_21DEBB17C(v26, type metadata accessor for JSONSchema);
    result = sub_21DE5CD00(&v136, &qword_27CE94E50, &unk_21DED5E58);
    v106 = v107;
    v99 = v133;
    if (!v104)
    {
      goto LABEL_83;
    }
  }

  sub_21DEBB17C(v26, type metadata accessor for JSONSchema);
LABEL_103:

  sub_21DE5CD00(&v136, &qword_27CE94E50, &unk_21DED5E58);
  sub_21DEBB17C(v132, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
}

uint64_t sub_21DEAF1EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656C746974;
  v6 = 0xE700000000000000;
  v7 = 0x6E6F6973726576;
  if (a1 != 4)
  {
    v7 = 0x7470697263736564;
    v6 = 0xEB000000006E6F69;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x616D6568637324;
  if (a1 != 1)
  {
    v9 = 0x746E656D6D6F6324;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 6580516;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6973726576)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB000000006E6F69;
      if (v10 != 0x7470697263736564)
      {
LABEL_34:
        v13 = sub_21DEC7610();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x616D6568637324)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x746E656D6D6F6324)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 6580516)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21DEAF3DC()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEAF4E0()
{
  *v0;
  *v0;
  *v0;
  sub_21DEC6E90();
}

uint64_t sub_21DEAF5D4()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEAF6D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DEB9CA8();
  *a2 = result;
  return result;
}

void sub_21DEAF704(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6580516;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (v2 != 4)
  {
    v8 = 0x7470697263736564;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x616D6568637324;
  if (v2 != 1)
  {
    v10 = 0x746E656D6D6F6324;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21DEAF7C0()
{
  v1 = *v0;
  v2 = 6580516;
  v3 = 0x656C746974;
  v4 = 0x6E6F6973726576;
  if (v1 != 4)
  {
    v4 = 0x7470697263736564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616D6568637324;
  if (v1 != 1)
  {
    v5 = 0x746E656D6D6F6324;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DEAF878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DEB9CA8();
  *a1 = result;
  return result;
}

uint64_t sub_21DEAF8A0(uint64_t a1)
{
  v2 = sub_21DEB9CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEAF8DC(uint64_t a1)
{
  v2 = sub_21DEB9CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEAF918(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94CC0, &qword_21DED4AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEB9CF4();
  sub_21DEC7810();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_21DEC7540();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  sub_21DEC7540();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  sub_21DEC7540();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  sub_21DEC7540();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  sub_21DEC7540();
  v22 = v3[10];
  v23 = v3[11];
  v24[10] = 5;
  sub_21DEC7540();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21DEAFB18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_21DEB8574(v9, v10) & 1;
}

double sub_21DEAFB74@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21DEB9D48(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_21DEAFBD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DEC6880();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v104 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94E38, &qword_21DED5E40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v104 - v15;
  v17 = type metadata accessor for JSONSchema(0);
  v18 = *(v17 - 8);
  v133 = v17;
  v134 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v104 - v24);
  MEMORY[0x28223BE20](v23);
  v127 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D40, &qword_21DED4AF0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v129 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v29);
  v128 = (&v104 - v32);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v117 = v13;
  v118 = v16;
  v112 = v12;
  v110 = v8;
  v119 = v4;
  v33 = 0;
  v34 = *(a1 + 64);
  v113 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v116 = (v5 + 48);
  v109 = (v5 + 32);
  v111 = (v5 + 8);
  v114 = v38;
  v115 = a1;
  v121 = a2;
  v39 = v129;
  if (v37)
  {
    do
    {
      v124 = (v37 - 1) & v37;
      v40 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_15:
      v45 = (*(a1 + 48) + 16 * v40);
      v47 = *v45;
      v46 = v45[1];
      v48 = v127;
      sub_21DEBABEC(*(a1 + 56) + *(v134 + 72) * v40, v127, type metadata accessor for JSONSchema);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
      v50 = *(v49 + 48);
      *v39 = v47;
      v39[1] = v46;
      sub_21DEBAC74(v48, v39 + v50, type metadata accessor for JSONSchema);
      (*(*(v49 - 8) + 56))(v39, 0, 1, v49);

LABEL_16:
      v51 = v128;
      sub_21DE682A8(v39, v128, &qword_27CE94D40, &qword_21DED4AF0);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
      v53 = 1;
      if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
      {
        return v53;
      }

      v54 = *v51;
      v55 = v51[1];
      sub_21DEBAC74(v51 + *(v52 + 48), v25, type metadata accessor for JSONSchema);
      v56 = v121;
      v57 = sub_21DE7ADAC(v54, v55);
      v59 = v58;

      if ((v59 & 1) == 0)
      {
        goto LABEL_75;
      }

      sub_21DEBABEC(*(v56 + 56) + *(v134 + 72) * v57, v22, type metadata accessor for JSONSchema);
      v60 = v22[1];
      v61 = v22[2];
      v63 = v22[3];
      v62 = v22[4];
      v65 = v22[5];
      v64 = v22[6];
      v67 = v22[7];
      v66 = v22[8];
      v68 = v22[9];
      v123 = v22[10];
      v131 = v22[11];
      v69 = v25[1];
      v70 = v25[2];
      v72 = v25[3];
      v71 = v25[4];
      v73 = v25[5];
      v74 = v25[6];
      v76 = v25[7];
      v75 = v25[8];
      v125 = v66;
      v126 = v75;
      v77 = v25[10];
      v132 = v25[9];
      v122 = v77;
      v130 = v25[11];
      if (v60)
      {
        if (!v69)
        {
          goto LABEL_74;
        }

        if (*v22 != *v25 || v60 != v69)
        {
          v108 = v67;
          v120 = v68;
          v107 = v76;
          v78 = v64;
          v79 = v74;
          v104 = v65;
          v80 = v62;
          v106 = v73;
          v81 = v71;
          v105 = v61;
          v82 = v70;
          v83 = sub_21DEC7610();
          v70 = v82;
          v61 = v105;
          v71 = v81;
          v73 = v106;
          v62 = v80;
          v65 = v104;
          v74 = v79;
          v64 = v78;
          v76 = v107;
          v68 = v120;
          v67 = v108;
          if ((v83 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v69)
      {
        goto LABEL_74;
      }

      if (v63)
      {
        if (!v72)
        {
          goto LABEL_74;
        }

        if (v61 != v70 || v63 != v72)
        {
          v120 = v68;
          v84 = v64;
          v85 = v62;
          v86 = v73;
          v108 = v71;
          v87 = sub_21DEC7610();
          v71 = v108;
          v73 = v86;
          v62 = v85;
          v64 = v84;
          v68 = v120;
          if ((v87 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v72)
      {
        goto LABEL_74;
      }

      if (v65)
      {
        if (!v73)
        {
          goto LABEL_74;
        }

        if (v62 != v71 || v65 != v73)
        {
          v88 = v68;
          v89 = v64;
          v90 = sub_21DEC7610();
          v64 = v89;
          v68 = v88;
          if ((v90 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v73)
      {
        goto LABEL_74;
      }

      if (v67)
      {
        if (!v76)
        {
          goto LABEL_74;
        }

        if (v64 != v74 || v67 != v76)
        {
          v91 = v68;
          v92 = sub_21DEC7610();
          v68 = v91;
          if ((v92 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v76)
      {
        goto LABEL_74;
      }

      if (v68)
      {
        if (!v132 || (v125 != v126 || v68 != v132) && (sub_21DEC7610() & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else if (v132)
      {
        goto LABEL_74;
      }

      if (v131)
      {
        if (!v130 || (v123 != v122 || v131 != v130) && (sub_21DEC7610() & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else if (v130)
      {
        goto LABEL_74;
      }

      if ((sub_21DEB9120(v22[12], v25[12]) & 1) == 0)
      {
        goto LABEL_74;
      }

      if ((sub_21DEAAD54((v22 + 13), (v25 + 13)) & 1) == 0)
      {
        goto LABEL_74;
      }

      v93 = *(v133 + 28);
      if ((sub_21DEC6930() & 1) == 0)
      {
        goto LABEL_74;
      }

      v94 = *(v133 + 32);
      v95 = v118;
      v96 = *(v117 + 48);
      sub_21DE5C6E4(v22 + v94, v118, &qword_27CE93F60, qword_21DECD138);
      sub_21DE5C6E4(v25 + v94, v95 + v96, &qword_27CE93F60, qword_21DECD138);
      v97 = *v116;
      v98 = v119;
      if ((*v116)(v95, 1, v119) == 1)
      {
        if (v97(v95 + v96, 1, v98) != 1)
        {
          goto LABEL_73;
        }

        sub_21DE5CD00(v95, &qword_27CE93F60, qword_21DECD138);
      }

      else
      {
        v99 = v112;
        sub_21DE5C6E4(v95, v112, &qword_27CE93F60, qword_21DECD138);
        if (v97(v95 + v96, 1, v98) == 1)
        {
          (*v111)(v99, v98);
LABEL_73:
          sub_21DE5CD00(v95, &qword_27CE94E38, &qword_21DED5E40);
LABEL_74:
          sub_21DEBB17C(v22, type metadata accessor for JSONSchema);
LABEL_75:
          sub_21DEBB17C(v25, type metadata accessor for JSONSchema);
          return 0;
        }

        v100 = v110;
        (*v109)(v110, v95 + v96, v98);
        sub_21DEB5F2C(&qword_27CE94E40, MEMORY[0x277CC9260]);
        v101 = sub_21DEC6D70();
        v102 = *v111;
        (*v111)(v100, v98);
        v102(v99, v98);
        sub_21DE5CD00(v95, &qword_27CE93F60, qword_21DECD138);
        if ((v101 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      sub_21DEBB17C(v22, type metadata accessor for JSONSchema);
      result = sub_21DEBB17C(v25, type metadata accessor for JSONSchema);
      v38 = v114;
      a1 = v115;
      v37 = v124;
      v39 = v129;
    }

    while (v124);
  }

  if (v38 <= v33 + 1)
  {
    v41 = v33 + 1;
  }

  else
  {
    v41 = v38;
  }

  v42 = v41 - 1;
  while (1)
  {
    v43 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v43 >= v38)
    {
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
      (*(*(v103 - 8) + 56))(v39, 1, 1, v103);
      v124 = 0;
      v33 = v42;
      goto LABEL_16;
    }

    v44 = *(v113 + 8 * v43);
    ++v33;
    if (v44)
    {
      v124 = (v44 - 1) & v44;
      v40 = __clz(__rbit64(v44)) | (v43 << 6);
      v33 = v43;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB06B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_21DE7ADAC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_21DEC7610();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB085C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB08B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21DEC7610() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21DEB0948(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DEB09A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_21DEB0A18(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_21DEAFBD8(*a1, *a2) & 1) == 0 || (sub_21DEB08B8(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_21DEB06B8(v3, v5);
}

uint64_t sub_21DEB0AA4()
{
  if (*v0)
  {
    return 0x736D65744978616DLL;
  }

  else
  {
    return 0x736D6574496E696DLL;
  }
}

uint64_t sub_21DEB0AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D6574496E696DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D65744978616DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEB0BB4(uint64_t a1)
{
  v2 = sub_21DEBA2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB0BF0(uint64_t a1)
{
  v2 = sub_21DEBA2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB0CB8()
{
  if (*v0)
  {
    return 0x65706F725078616DLL;
  }

  else
  {
    return 0x65706F72506E696DLL;
  }
}

uint64_t sub_21DEB0CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65706F72506E696DLL && a2 == 0xED00007365697472;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F725078616DLL && a2 == 0xED00007365697472)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEB0DDC(uint64_t a1)
{
  v2 = sub_21DEBA34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB0E18(uint64_t a1)
{
  v2 = sub_21DEBA34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB0F28()
{
  if (*v0)
  {
    return 0x74676E654C78616DLL;
  }

  else
  {
    return 0x74676E654C6E696DLL;
  }
}

uint64_t sub_21DEB0F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74676E654C6E696DLL && a2 == 0xE900000000000068;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEB1044(uint64_t a1)
{
  v2 = sub_21DEBA570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1080(uint64_t a1)
{
  v2 = sub_21DEBA570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB10BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, void (*a8)(void))
{
  v18[2] = a2;
  v19 = a5;
  v18[1] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8();
  sub_21DEC7810();
  v21 = 0;
  v16 = v18[3];
  sub_21DEC7570();
  if (!v16)
  {
    v20 = 1;
    sub_21DEC7570();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21DEB129C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  result = sub_21DEBA3A0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    *(a5 + 8) = v8 & 1;
    *(a5 + 16) = v9;
    *(a5 + 24) = v10 & 1;
  }

  return result;
}

uint64_t sub_21DEB1330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21DEB139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DEBA66C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DEB13C4(uint64_t a1)
{
  v2 = sub_21DEBA5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1400(uint64_t a1)
{
  v2 = sub_21DEBA5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_21DEB14C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_21DEB889C(v7, v9);
}

unint64_t sub_21DEB1520()
{
  v1 = *v0;
  v2 = 0x6D756D696E696DLL;
  v3 = 0xD000000000000010;
  v4 = 0x6D756D6978616DLL;
  if (v1 != 3)
  {
    v4 = 0x656C7069746C756DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_21DEB15C8(uint64_t a1)
{
  v2 = sub_21DEBA618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1604(uint64_t a1)
{
  v2 = sub_21DEBA618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEB1640(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_21DEC7810();
  v14 = *v6;
  v15 = *(v6 + 8);
  v31 = 0;
  v16 = v26[1];
  sub_21DEC7560();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = v6[2];
  v18 = *(v6 + 24);
  v30 = 1;
  sub_21DEC7560();
  v19 = v6[4];
  v20 = *(v6 + 40);
  v29 = 2;
  sub_21DEC7560();
  v21 = v6[6];
  v22 = *(v6 + 56);
  v28 = 3;
  sub_21DEC7560();
  v24 = v6[8];
  v25 = *(v6 + 72);
  v27 = 4;
  sub_21DEC7560();
  return (*(v9 + 8))(v12, v8);
}

__n128 sub_21DEB1880@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_21DEBA838(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v10[0];
    *(a5 + 32) = v9[2];
    *(a5 + 48) = v8;
    *(a5 + 57) = *(v10 + 9);
    result = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = result;
  }

  return result;
}

BOOL sub_21DEB193C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DEB878C(v13, v14);
}

BOOL sub_21DEB19A4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DEB8970(v13, v14);
}

uint64_t sub_21DEB1A10(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21DEC7610();
  }
}

BOOL sub_21DEB1A40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_21DEB8A80(v7, v8);
}

unint64_t sub_21DEB1A9C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701869940;
    v7 = 0xD000000000000014;
    v8 = 0x69747265706F7270;
    if (a1 != 3)
    {
      v8 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x736D657469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x746C7561666564;
    v2 = 0x73656C706D617865;
    if (a1 != 9)
    {
      v2 = 1836412517;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x616C707369642D78;
    v4 = 1717924388;
    if (a1 != 6)
    {
      v4 = 0x7366656424;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21DEB1BE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21DEB1A9C(*a1);
  v5 = v4;
  if (v3 == sub_21DEB1A9C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();
  }

  return v8 & 1;
}

uint64_t sub_21DEB1C70()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEB1A9C(v1);
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEB1CD4()
{
  sub_21DEB1A9C(*v0);
  sub_21DEC6E90();
}

uint64_t sub_21DEB1D28()
{
  v1 = *v0;
  sub_21DEC7770();
  sub_21DEB1A9C(v1);
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEB1D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21DEBAD30();
  *a2 = result;
  return result;
}

unint64_t sub_21DEB1DB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21DEB1A9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21DEB1E00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21DEBAD30();
  *a1 = result;
  return result;
}

uint64_t sub_21DEB1E34(uint64_t a1)
{
  v2 = sub_21DEBAD7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEB1E70(uint64_t a1)
{
  v2 = sub_21DEBAD7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JSONSchema.init(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
  v3 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F60, qword_21DECD138);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C58, &qword_21DED49A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = (&v79 - v10);
  v92 = sub_21DEC6950();
  v93 = *(v92 - 8);
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D18, &qword_21DED4AE0);
  v94 = *(v14 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v79 - v16;
  v18 = type metadata accessor for JSONSchema(0);
  v87 = *(v18 - 8);
  v19 = *(v87 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_21DEBAD7C();
  v23 = v104;
  sub_21DEC77E0();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v84 = v13;
  v104 = v17;
  v85 = v14;
  sub_21DE5CC9C(a1, &v97);
  sub_21DEB9D48(&v97, v103);
  v25 = v103[3];
  v26 = v21;
  v21[2] = v103[2];
  v21[3] = v25;
  v27 = v103[5];
  v21[4] = v103[4];
  v21[5] = v27;
  v28 = v103[1];
  *v21 = v103[0];
  v21[1] = v28;
  v29 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_21DEC77C0();
  __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
  sub_21DE834A4();
  sub_21DEC7660();
  i = 0;
  v34 = v96;
  *(v21 + 104) = v95;
  *(v21 + 120) = v34;
  __swift_destroy_boxed_opaque_existential_0(&v97);
  v35 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v36 = sub_21DEC77D0();
  v37 = v85;
  if (qword_27CEA3418 != -1)
  {
    swift_once();
  }

  v38 = sub_21DEC73E0();
  v39 = __swift_project_value_buffer(v38, qword_27CEA6738);
  v40 = v92;
  v41 = v84;
  v42 = v91;
  if (!*(v36 + 16) || (v43 = sub_21DEB6050(v39), (v44 & 1) == 0))
  {

    (*(v93 + 56))(v42, 1, 1, v40);
LABEL_17:
    sub_21DE5CD00(v42, &qword_27CE94C58, &qword_21DED49A8);
    sub_21DEBAE00();
    swift_allocError();
    *v55 = 1;
    *(v55 + 8) = 0u;
    *(v55 + 24) = 0u;
    *(v55 + 40) = 0;
    *(v55 + 48) = 4;
    swift_willThrow();
    (*(v94 + 8))(v104, v37);
    v30 = 0;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v31 = *(v26 + 48);
    v99 = *(v26 + 32);
    v100 = v31;
    v32 = *(v26 + 80);
    v101 = *(v26 + 64);
    v102 = v32;
    v33 = *(v26 + 16);
    v97 = *v26;
    v98 = v33;
    sub_21DEBADD0(&v97);
    result = sub_21DEAD408(v26 + 104);
    if (v30)
    {
      (*(v93 + 8))(v26 + *(v18 + 28), v92);
      return sub_21DE5CD00(v26 + *(v18 + 32), &qword_27CE93F60, qword_21DECD138);
    }

    return result;
  }

  sub_21DE56CD4(*(v36 + 56) + 32 * v43, &v97);

  v45 = swift_dynamicCast();
  v46 = v93;
  (*(v93 + 56))(v42, v45 ^ 1u, 1, v40);
  if ((*(v46 + 48))(v42, 1, v40) == 1)
  {
    goto LABEL_17;
  }

  (*(v46 + 32))(v41, v42, v40);
  (*(v46 + 16))(v26 + *(v18 + 28), v41, v40);
  v47 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v48 = sub_21DEC77D0();
  if (qword_27CEA3410 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v49 = __swift_project_value_buffer(v38, qword_27CEA6720);
    v50 = v90;
    if (*(v48 + 16) && (v51 = sub_21DEB6050(v49), (v52 & 1) != 0))
    {
      sub_21DE56CD4(*(v48 + 56) + 32 * v51, &v97);

      v53 = sub_21DEC6880();
      v54 = swift_dynamicCast();
      (*(*(v53 - 8) + 56))(v50, v54 ^ 1u, 1, v53);
    }

    else
    {

      v56 = sub_21DEC6880();
      (*(*(v56 - 8) + 56))(v50, 1, 1, v56);
    }

    v57 = v92;
    sub_21DE682A8(v50, v26 + *(v18 + 32), &qword_27CE93F60, qword_21DECD138);
    v58 = v104;
    v59 = i;
    v60 = sub_21DEB2B9C(v104, a1, v41);
    v61 = v94;
    if (v59)
    {
      (*(v93 + 8))(v41, v57);
      (*(v61 + 8))(v58, v85);
      v30 = 1;
      goto LABEL_5;
    }

    *(v26 + 96) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
    LOBYTE(v95) = 7;
    sub_21DEBAE54();
    sub_21DEC74E0();
    v48 = v93;
    if (!v97)
    {
      break;
    }

    v79 = a1;
    v62 = *(v97 + 64);
    v81 = v97 + 64;
    v63 = 1 << *(v97 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    a1 = v64 & v62;
    v80 = (v63 + 63) >> 6;
    v82 = v97;

    v65 = 0;
    v38 = v104;
    for (i = 0; a1; v38 = v104)
    {
      v66 = v65;
      v67 = v89;
      v41 = v88;
      v68 = v87;
LABEL_31:
      v69 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v70 = v69 | (v66 << 6);
      v71 = (*(v82 + 48) + 16 * v70);
      v72 = *v71;
      v73 = v71[1];
      v74 = v41 + *(v67 + 48);
      sub_21DEBABEC(*(v82 + 56) + *(v68 + 72) * v70, v74, type metadata accessor for JSONSchema);
      *v41 = v72;
      v41[1] = v73;

      v75 = sub_21DEBD51C();
      v76 = *(v18 + 28);
      v77 = **v75;
      v91 = *(v77 + 120);
      v90 = (v77 + 120);

      v91(v74, v72, v73, v74 + v76);

      sub_21DE5CD00(v41, &qword_27CE94D10, &unk_21DED4AD0);
      v57 = v92;
      v48 = v93;
    }

    v67 = v89;
    v41 = v88;
    v68 = v87;
    while (1)
    {
      v66 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v66 >= v80)
      {

        (*(v48 + 8))(v84, v57);
        (*(v94 + 8))(v38, v85);

        v78 = v86;
        a1 = v79;
        goto LABEL_35;
      }

      a1 = *(v81 + 8 * v66);
      ++v65;
      if (a1)
      {
        v65 = v66;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  (*(v93 + 8))(v41, v57);
  (*(v94 + 8))(v104, v85);
  v78 = v86;
LABEL_35:
  sub_21DEBABEC(v26, v78, type metadata accessor for JSONSchema);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21DEBB17C(v26, type metadata accessor for JSONSchema);
}

uint64_t sub_21DEB2B9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = a3;
  v6 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for JSONSchema(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v111 - v15;
  LOBYTE(v114) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D18, &qword_21DED4AE0);
  v17 = sub_21DEC74A0();
  if (v3)
  {
    return a1;
  }

  *&v113 = v14;
  v111 = v9;
  *(&v113 + 1) = a2;
  if (!v18)
  {
    LOBYTE(v114) = 6;
    v26 = sub_21DEC74A0();
    v28 = v27;
    if (v27)
    {
      v29 = v26;
      if (sub_21DEC6FD0())
      {
        *&v114 = sub_21DEC6920();
        *(&v114 + 1) = v30;

        MEMORY[0x223D4B2A0](47, 0xE100000000000000);

        MEMORY[0x223D4B2A0](v29, v28);

        v28 = *(&v114 + 1);
        v29 = v114;
      }

      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = v28;
      return v31 | 0xA000000000000000;
    }

    else
    {
      v43 = sub_21DEC7340();
      swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94DD8, &qword_21DED5DF8) + 48);
      *(v45 + 24) = &type metadata for JSONSchema.CodingKeys;
      *(v45 + 32) = sub_21DEBAD7C();
      *v45 = 0;
      sub_21DEC7490();
      sub_21DEC7330();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84158], v43);
      swift_willThrow();
    }

    return a1;
  }

  v128 = 0;
  if (v17 == 0x7961727261 && v18 == 0xE500000000000000 || (v20 = v17, v112 = v18, (sub_21DEC7610() & 1) != 0))
  {

    LOBYTE(v114) = 1;
    sub_21DEB5F2C(&qword_27CE94CB8, type metadata accessor for JSONSchema);
    v21 = v16;
    v22 = v128;
    sub_21DEC7510();
    if (!v22)
    {
      v23 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
      a1 = swift_allocBox();
      v128 = v24;
      v25 = v113;
      sub_21DEBABEC(v16, v113, type metadata accessor for JSONSchema);
      sub_21DE5CC9C(*(&v113 + 1), &v114);
      v35 = sub_21DEBA3A0(&v114, &qword_27CE94E28, &qword_21DED5E30, sub_21DEBA2F8);
      v37 = v36;
      v39 = v38;
      *(&v113 + 1) = v40;
      sub_21DEBB17C(v21, type metadata accessor for JSONSchema);
      v41 = v128;
      sub_21DEBAC74(v25, v128, type metadata accessor for JSONSchema);
      v42 = v41 + *(v23 + 20);
      *v42 = v35;
      *(v42 + 8) = v37 & 1;
      *(v42 + 16) = *(&v113 + 1);
      *(v42 + 24) = v39 & 1;
    }

    return a1;
  }

  if ((v20 != 0x6E61656C6F6F62 || v112 != 0xE700000000000000) && (sub_21DEC7610() & 1) == 0)
  {
    if (v20 == 0x72656765746E69 && v112 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
    {

      v48 = swift_allocObject();
      sub_21DE5CC9C(*(&v113 + 1), &v114);
      v49 = v128;
      sub_21DEBA838(&v114, &qword_27CE94E10, &qword_21DED5E18, sub_21DEBA5C4, &v120);
      if (v49)
      {
LABEL_24:
        a1 = v49;
LABEL_59:
        swift_deallocUninitializedObject();
        return a1;
      }

      LOBYTE(v114) = 8;
      v51 = sub_21DEC74D0();
      v54 = v53;
      *(&v113 + 1) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D78, &qword_21DED4B18);
      LOBYTE(v119) = 9;
      sub_21DEBC7D8();
      sub_21DEC74E0();
      if (v114)
      {
        v55 = v114;
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      LOBYTE(v114) = 10;
      sub_21DEC74E0();
      v128 = 0;
      v63 = v119;
      if (!v119 || (v64 = *(v119 + 16), v65 = , v66 = *(sub_21DEB9BC0(v65) + 16), , , v64 == v66))
      {
        v67 = v122;
        v116 = v122;
        v117[0] = v123[0];
        *(v117 + 9) = *(v123 + 9);
        v68 = v121;
        v114 = v120;
        v115 = v121;
        v118 = v54 & 1;
        *(v48 + 16) = v120;
        *(v48 + 32) = v68;
        v69 = v117[0];
        v70 = v117[1];
        *(v48 + 48) = v67;
        *(v48 + 64) = v69;
        *(v48 + 80) = v70;
        *(v48 + 96) = *(&v113 + 1);
        *(v48 + 104) = v54 & 1;
        a1 = v48 | 0x4000000000000000;
        *(v48 + 112) = v55;
        *(v48 + 120) = v63;
        return a1;
      }

      *&v114 = 0;
      *(&v114 + 1) = 0xE000000000000000;
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](0xD000000000000038, 0x800000021DEDA7B0);
      v71 = MEMORY[0x223D4B400](v63, MEMORY[0x277D83B88]);
      v73 = v72;

      MEMORY[0x223D4B2A0](v71, v73);

      v75 = *(&v114 + 1);
      v74 = v114;
      sub_21DEBAB44();
    }

    else
    {
      v52 = *(&v113 + 1);
      if (v20 == 1819047278 && v112 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
      {

        return 0xE000000000000000;
      }

      if ((v20 != 0x7265626D756ELL || v112 != 0xE600000000000000) && (sub_21DEC7610() & 1) == 0)
      {
        if (v20 == 0x7463656A626FLL && v112 == 0xE600000000000000 || (sub_21DEC7610() & 1) != 0)
        {

          v59 = v111;
          v60 = v128;
          sub_21DEB3BE4(v52, v111);
          if (!v60)
          {
            type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
            v61 = swift_allocBox();
            sub_21DEBAC74(v59, v62, type metadata accessor for JSONSchema.SchemaType.ObjectType);
            return v61 | 0x8000000000000000;
          }

          return a1;
        }

        if ((v20 != 0x676E69727473 || v112 != 0xE600000000000000) && (sub_21DEC7610() & 1) == 0)
        {
          sub_21DEBAE00();
          a1 = swift_allocError();
          v89 = v112;
          *v90 = v20;
          *(v90 + 8) = v89;
          *(v90 + 48) = 3;
          swift_willThrow();
          return a1;
        }

        v77 = swift_allocObject();
        sub_21DE5CC9C(*(&v113 + 1), &v114);
        v78 = v128;
        v128 = sub_21DEBA3A0(&v114, &qword_27CE94E18, &qword_21DED5E20, sub_21DEBA570);
        if (v78)
        {
          goto LABEL_59;
        }

        v82 = v79;
        v83 = v80;
        v84 = v81;
        LOBYTE(v114) = 8;
        *&v113 = sub_21DEC74A0();
        *(&v113 + 1) = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
        LOBYTE(v119) = 9;
        v112 = sub_21DEBC6A0();
        sub_21DEC74E0();
        v86 = v114;
        if (!v114)
        {
          v86 = MEMORY[0x277D84F90];
        }

        v111 = v86;
        LOBYTE(v114) = 10;
        v87 = sub_21DEC74E0();
        v103 = v119;
        if (v119 && *(&v113 + 1))
        {
          v114 = v113;
          MEMORY[0x28223BE20](v87);
          *(&v111 - 2) = &v114;

          if ((sub_21DE53140(sub_21DE821E8, (&v111 - 4), v103) & 1) == 0)
          {

            v105 = *(&v113 + 1);

            *&v114 = 0;
            *(&v114 + 1) = 0xE000000000000000;
            sub_21DEC72F0();
            MEMORY[0x223D4B2A0](0xD000000000000020, 0x800000021DEDA7F0);
            MEMORY[0x223D4B2A0](v113, v105);

            MEMORY[0x223D4B2A0](0xD000000000000039, 0x800000021DEDA820);
            v106 = MEMORY[0x223D4B400](v103, MEMORY[0x277D837D0]);
            v108 = v107;

            MEMORY[0x223D4B2A0](v106, v108);

            v109 = v114;
            sub_21DEBACDC();
            a1 = swift_allocError();
            *v110 = v109;
            swift_willThrow();
            goto LABEL_59;
          }
        }

        LOBYTE(v114) = v82 & 1;
        v118 = v84 & 1;
        *(v77 + 16) = v128;
        *(v77 + 24) = v82 & 1;
        *(v77 + 32) = v83;
        *(v77 + 40) = v84 & 1;
        v104 = *(&v113 + 1);
        *(v77 + 48) = v113;
        *(v77 + 56) = v104;
        a1 = v77 | 0xC000000000000000;
        *(v77 + 64) = v111;
        *(v77 + 72) = v103;
        return a1;
      }

      v56 = swift_allocObject();
      sub_21DE5CC9C(v52, &v114);
      v49 = v128;
      sub_21DEBA838(&v114, &qword_27CE94E08, &qword_21DED5E10, sub_21DEBA618, &v124);
      if (v49)
      {
        goto LABEL_24;
      }

      LOBYTE(v114) = 8;
      v57 = sub_21DEC74C0();
      DWORD2(v113) = v58;
      v128 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D68, &qword_21DED4B10);
      LOBYTE(v119) = 9;
      sub_21DEBC71C();
      sub_21DEC74E0();
      if (v114)
      {
        v88 = v114;
      }

      else
      {
        v88 = MEMORY[0x277D84F90];
      }

      LOBYTE(v114) = 10;
      sub_21DEC74E0();
      v91 = v119;
      if (!v119 || (v92 = *(v119 + 16), v93 = , v94 = *(sub_21DEB9C34(v93) + 16), , , v92 == v94))
      {
        v95 = v126;
        v116 = v126;
        v117[0] = v127[0];
        *(v117 + 9) = *(v127 + 9);
        v96 = v125;
        v114 = v124;
        v115 = v125;
        v97 = BYTE8(v113) & 1;
        v118 = BYTE8(v113) & 1;
        *(v56 + 16) = v124;
        *(v56 + 32) = v96;
        v98 = v117[0];
        v99 = v117[1];
        *(v56 + 48) = v95;
        *(v56 + 64) = v98;
        *(v56 + 80) = v99;
        *(v56 + 96) = v128;
        *(v56 + 104) = v97;
        a1 = v56 | 0x6000000000000000;
        *(v56 + 112) = v88;
        *(v56 + 120) = v91;
        return a1;
      }

      *&v114 = 0;
      *(&v114 + 1) = 0xE000000000000000;
      sub_21DEC72F0();
      MEMORY[0x223D4B2A0](0xD000000000000038, 0x800000021DEDA7B0);
      v100 = MEMORY[0x223D4B400](v91, MEMORY[0x277D839F8]);
      v102 = v101;

      MEMORY[0x223D4B2A0](v100, v102);

      v75 = *(&v114 + 1);
      v74 = v114;
      sub_21DEBAB98();
    }

    a1 = swift_allocError();
    *v76 = v74;
    v76[1] = v75;
    swift_willThrow();
    goto LABEL_59;
  }

  v32 = swift_allocObject();
  LOBYTE(v114) = 8;
  v33 = v128;
  v34 = sub_21DEC74B0();
  if (v33)
  {
    goto LABEL_59;
  }

  v47 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D88, &qword_21DED4B20);
  LOBYTE(v119) = 9;
  sub_21DEBC854();
  sub_21DEC74E0();
  v50 = MEMORY[0x277D84F90];
  if (v114)
  {
    v50 = v114;
  }

  *(v32 + 16) = v47;
  *(v32 + 24) = v50;
  return v32 | 0x2000000000000000;
}

uint64_t sub_21DEB3BE4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94C20, &qword_21DED47C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for JSONSchema(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
  v39 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D18, &qword_21DED4AE0);
  sub_21DEBAE54();
  result = sub_21DEC74E0();
  if (!v2)
  {
    v34 = v14;
    v35 = v12;
    v16 = v37;
    v17 = v38[0];
    if (v38[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
      v39 = 4;
      sub_21DEBC6A0();
      sub_21DEC74E0();
      if (v38[0])
      {
        v19 = v38[0];
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D58, &qword_21DED4B08);
      v39 = 5;
      sub_21DEBC8D0(&qword_27CE94DF8);
      sub_21DEC74E0();
      v20 = v38[0];
      if (!v38[0])
      {
        v20 = sub_21DE98EB8(MEMORY[0x277D84F90]);
      }

      v21 = v36;
      *v36 = v17;
      v21[1] = v19;
      v21[2] = v20;
      type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v38[0] = 2;
      sub_21DEB5F2C(&qword_27CE94CB8, type metadata accessor for JSONSchema);
      sub_21DEC74E0();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_21DE5CD00(v6, &qword_27CE94C20, &qword_21DED47C0);
        sub_21DEBAE00();
        swift_allocError();
        *v18 = 0u;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0u;
        *(v18 + 48) = 4;
        return swift_willThrow();
      }

      else
      {
        v22 = v34;
        sub_21DEBAC74(v6, v34, type metadata accessor for JSONSchema);
        v23 = v35;
        sub_21DEBABEC(v22, v35, type metadata accessor for JSONSchema);
        sub_21DE5CC9C(v16, v38);
        v24 = sub_21DEBA3A0(v38, &qword_27CE94E20, &qword_21DED5E28, sub_21DEBA34C);
        v26 = v25;
        v28 = v27;
        v30 = v29;
        sub_21DEBB17C(v22, type metadata accessor for JSONSchema);
        v31 = v36;
        sub_21DEBAC74(v23, v36, type metadata accessor for JSONSchema);
        v32 = v31 + *(type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0) + 20);
        *v32 = v24;
        v32[8] = v26 & 1;
        *(v32 + 2) = v28;
        v32[24] = v30 & 1;
        type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }
  }

  return result;
}

uint64_t JSONSchema.encode(to:)(char *a1)
{
  v178 = type metadata accessor for JSONSchema(0);
  v180 = *(v178 - 8);
  v2 = *(v180 + 64);
  v3 = MEMORY[0x28223BE20](v178);
  v176 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v196 = &v169 - v6;
  MEMORY[0x28223BE20](v5);
  v183 = &v169 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D40, &qword_21DED4AF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v182 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v181 = (&v169 - v12);
  v173 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  v13 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v175 = (&v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  v15 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v184 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for JSONSchema.SchemaType.ObjectSchema(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v179 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for JSONSchema.SchemaType.ArraySchema(0);
  v20 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v22 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D48, &unk_21DED4AF8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v169 - v26;
  v28 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_21DEBAD7C();
  v29 = v186;
  sub_21DEC7810();
  v30 = *(v29 + 48);
  v195[4] = *(v29 + 32);
  v195[5] = v30;
  v31 = *(v29 + 80);
  v195[6] = *(v29 + 64);
  v195[7] = v31;
  v32 = *(v29 + 16);
  v195[2] = *v29;
  v195[3] = v32;
  v33 = v185;
  sub_21DEAF918(a1);
  if (v33)
  {
    return (*(v24 + 8))(v27, v23);
  }

  v35 = v184;
  v36 = v179;
  v185 = a1;
  v171 = v23;
  v172 = v27;
  v170 = v24;
  v37 = *(v29 + 96);
  v38 = v37 >> 61;
  if ((v37 >> 61) > 3)
  {
    v40 = v185;
    if (v38 <= 5)
    {
      v174 = 0;
      if (v38 == 4)
      {
        v41 = swift_projectBox();
        a1 = v36;
        sub_21DEBABEC(v41, v36, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
        LOBYTE(v189) = 0;
        v43 = v171;
        v42 = v172;
        v44 = v174;
        sub_21DEC7590();
        if (v44)
        {
          sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
          return (*(v170 + 8))(v42, v43);
        }

        sub_21DEBABEC(a1, v35, type metadata accessor for JSONSchema.SchemaType.ObjectType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v82 = v175;
          sub_21DEBAC74(v35, v175, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
          LOBYTE(v189) = 2;
          sub_21DEB5F2C(&qword_27CE94CB0, type metadata accessor for JSONSchema);
          v83 = v171;
          sub_21DEC75D0();
          v84 = 0;
          goto LABEL_81;
        }

        v85 = v35[1];
        v86 = v35[2];
        v189 = *v35;
        LOBYTE(v187) = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
        sub_21DEBAFAC();
        sub_21DEC75D0();
        if (*(v85 + 16))
        {
          v189 = v85;
          LOBYTE(v187) = 4;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
          sub_21DEBAF30();
          sub_21DEC75D0();
        }

        v174 = 0;
        if (*(v86 + 16))
        {
          v189 = v86;
          LOBYTE(v187) = 5;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D58, &qword_21DED4B08);
          sub_21DEBC8D0(&qword_27CE94D60);
          v166 = v171;
          v167 = v172;
          v168 = v174;
          sub_21DEC75D0();
          v123 = v168;
          if (v168)
          {
            swift_bridgeObjectRelease_n();

            sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
            return (*(v170 + 8))(v167, v166);
          }

LABEL_102:
          v174 = v123;
          swift_bridgeObjectRelease_n();

          goto LABEL_103;
        }

        sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);

        goto LABEL_34;
      }

      v59 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v189 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v190 = v59;
      v60 = *(v178 + 28);
      swift_bridgeObjectRetain_n();
      v187 = sub_21DEC6920();
      v188 = v61;

      MEMORY[0x223D4B2A0](47, 0xE100000000000000);

      v63 = v187;
      v62 = v188;
      v64 = sub_21DEC6EA0();
      v65 = sub_21DEBB068(v64);
      v67 = v66;
      a1 = v68;
      v70 = v69;

      LOBYTE(v65) = sub_21DEBB104(v65, v67, a1, v70, v63, v62);

      if (v65)
      {
        v71 = sub_21DEC6EA0();

        sub_21DEB5BD8(v71);
        v187 = 35;
        v188 = 0xE100000000000000;
        MEMORY[0x223D4B2A0](v189, v190);
      }

      LOBYTE(v187) = 6;
      v79 = v171;
      v78 = v172;
      v80 = v174;
      sub_21DEC7590();
      v81 = v80;
      if (v80)
      {
        (*(v170 + 8))(v78, v79);
      }

      goto LABEL_33;
    }

    if (v38 != 6)
    {
      LOBYTE(v189) = 0;
      sub_21DEC7590();
      goto LABEL_29;
    }

    v184 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LODWORD(v179) = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v177 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v53 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    v55 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v54 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
    a1 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v56 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
    LOBYTE(v189) = 0;

    sub_21DEC7590();
    v174 = a1;
    v175 = v56;
    LOBYTE(v189) = v179;
    LOBYTE(v187) = v53;
    sub_21DEB10BC(v185, v184, v179, v177, v53, &qword_27CE94CE0, &qword_21DED4AB8, sub_21DEBA570);
    LOBYTE(v189) = 8;
    sub_21DEC7540();
    v91 = v174;
    v92 = v175;

    if (*(v91 + 16))
    {
      v189 = v91;
      LOBYTE(v187) = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
      sub_21DEBAF30();
      sub_21DEC75D0();
    }

    v51 = v170;
    v52 = v171;
    v174 = 0;
    if (v92)
    {
      if (!*(v92 + 16))
      {
        goto LABEL_34;
      }

      v189 = v92;
      LOBYTE(v187) = 10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
      sub_21DEBAF30();
      v163 = v172;
      v165 = v174;
      sub_21DEC75D0();
      if (!v165)
      {
        v174 = 0;
        goto LABEL_34;
      }

      goto LABEL_91;
    }
  }

  else
  {
    if (v38 <= 1)
    {
      if (!v38)
      {
        v39 = swift_projectBox();
        sub_21DEBABEC(v39, v22, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
        LOBYTE(v189) = 0;
        sub_21DEC7590();
        LOBYTE(v189) = 1;
        sub_21DEB5F2C(&qword_27CE94CB0, type metadata accessor for JSONSchema);
        sub_21DEC75D0();
        v87 = &v22[*(v174 + 20)];
        v88 = *v87;
        v89 = *(v87 + 2);
        v90 = v87[24];
        LOBYTE(v189) = v87[8];
        LOBYTE(v187) = v90;
        sub_21DEB10BC(v185, v88, v189, v89, v90, &qword_27CE94CD0, &qword_21DED4AA8, sub_21DEBA2F8);
        sub_21DEBB17C(v22, type metadata accessor for JSONSchema.SchemaType.ArraySchema);
LABEL_29:
        v174 = 0;
        goto LABEL_35;
      }

      v57 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v58 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v189) = 0;

      sub_21DEC7590();
      LOBYTE(v189) = 8;
      sub_21DEC7550();
      v174 = 0;
      v93 = v170;
      if (!*(v58 + 16))
      {
        goto LABEL_34;
      }

      v189 = v58;
      LOBYTE(v187) = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D88, &qword_21DED4B20);
      sub_21DEBB2D4();
      v94 = v171;
      v95 = v172;
      v96 = v174;
      sub_21DEC75D0();
      v81 = v96;
      if (v96)
      {

        return (*(v93 + 8))(v95, v94);
      }

LABEL_33:
      v174 = v81;
LABEL_34:

      goto LABEL_35;
    }

    if (v38 == 2)
    {
      v45 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v193 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v194[0] = v45;
      *(v194 + 9) = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x49);
      v46 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v191 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v192 = v46;
      v47 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v48 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
      v49 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v50 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
      LOBYTE(v189) = 0;

      sub_21DEC7590();
      sub_21DEB1640(v185, &qword_27CE94CE8, &qword_21DED4AC0, sub_21DEBA5C4);
      LOBYTE(v189) = 8;
      sub_21DEC7570();
      if (*(v49 + 16))
      {
        v189 = v49;
        LOBYTE(v187) = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D78, &qword_21DED4B18);
        sub_21DEBB258();
        sub_21DEC75D0();
      }

      v51 = v170;
      v52 = v171;
      v174 = 0;
      if (v50)
      {
        if (!*(v50 + 16))
        {
          goto LABEL_34;
        }

        v189 = v50;
        LOBYTE(v187) = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D78, &qword_21DED4B18);
        sub_21DEBB258();
        goto LABEL_90;
      }
    }

    else
    {
      v72 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v194[4] = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v195[0] = v72;
      *(v195 + 9) = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x49);
      v73 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v194[2] = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v194[3] = v73;
      v74 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v75 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
      v76 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v77 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
      LOBYTE(v189) = 0;

      sub_21DEC7590();
      sub_21DEB1640(v185, &qword_27CE94CF0, &qword_21DED4AC8, sub_21DEBA618);
      LOBYTE(v189) = 8;
      sub_21DEC7560();
      if (*(v76 + 16))
      {
        v189 = v76;
        LOBYTE(v187) = 9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D68, &qword_21DED4B10);
        sub_21DEBB1DC();
        sub_21DEC75D0();
      }

      v51 = v170;
      v52 = v171;
      v174 = 0;
      if (v77)
      {
        if (!*(v77 + 16))
        {
          goto LABEL_34;
        }

        v189 = v77;
        LOBYTE(v187) = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D68, &qword_21DED4B10);
        sub_21DEBB1DC();
LABEL_90:
        v163 = v172;
        v164 = v174;
        sub_21DEC75D0();
        if (!v164)
        {
          v174 = 0;
          goto LABEL_34;
        }

LABEL_91:
        (*(v51 + 8))(v163, v52);
      }
    }
  }

  while (1)
  {
LABEL_35:
    v97 = v186 + *(v178 + 28);
    v189 = sub_21DEC6920();
    v190 = v98;

    MEMORY[0x223D4B2A0](0x73666564242F232FLL, 0xE90000000000002FLL);

    v100 = v189;
    v99 = v190;
    v101 = *(**sub_21DEBD51C() + 88);

    v103 = v101(v102);

    v104 = *(v103 + 64);
    v175 = (v103 + 64);
    v177 = v103;
    v105 = 1 << *(v103 + 32);
    v106 = -1;
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    v83 = v106 & v104;
    v107 = (v105 + 63) >> 6;
    v108 = HIBYTE(v99) & 0xF;
    v186 = v99;
    v109 = (v99 & 0x2000000000000000) == 0;
    v40 = v100;
    if (v109)
    {
      v108 = v100 & 0xFFFFFFFFFFFFLL;
    }

    v179 = v108;
    v173 = MEMORY[0x277D84F98];
    v82 = &qword_27CE94D10;
    v84 = v182;
    v110 = v183;
    v184 = v40;
    v178 = (v105 + 63) >> 6;
    v111 = 0;
    if (v83)
    {
      break;
    }

LABEL_41:
    if (v107 <= v111 + 1)
    {
      v113 = v111 + 1;
    }

    else
    {
      v113 = v107;
    }

    while (1)
    {
      v112 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      if (v112 >= v107)
      {
        v185 = v113 - 1;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
        (*(*(v133 - 8) + 56))(v84, 1, 1, v133);
        v83 = 0;
        goto LABEL_48;
      }

      v83 = v175[v112];
      v111 = (v111 + 1);
      if (v83)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_81:
    v158 = v82 + *(v173 + 20);
    v159 = *v158;
    v160 = *(v158 + 2);
    v161 = v158[24];
    LOBYTE(v189) = v158[8];
    LOBYTE(v187) = v161;
    sub_21DEB10BC(v40, v159, v189, v160, v161, &qword_27CE94CD8, &qword_21DED4AB0, sub_21DEBA34C);
    v162 = v170;
    if (v84)
    {
      sub_21DEBB17C(v82, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
      sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
      return (*(v162 + 8))(v172, v83);
    }

    v174 = 0;
    sub_21DEBB17C(v82, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
LABEL_103:
    sub_21DEBB17C(a1, type metadata accessor for JSONSchema.SchemaType.ObjectSchema);
  }

  while (1)
  {
    v112 = v111;
LABEL_47:
    v114 = __clz(__rbit64(v83));
    v83 &= v83 - 1;
    v115 = v114 | (v112 << 6);
    v116 = (*(v177 + 48) + 16 * v115);
    v118 = *v116;
    v117 = v116[1];
    sub_21DEBABEC(*(v177 + 56) + *(v180 + 72) * v115, v110, type metadata accessor for JSONSchema);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
    v120 = *(v119 + 48);
    *v84 = v118;
    v84[1] = v117;
    sub_21DEBAC74(v110, v84 + v120, type metadata accessor for JSONSchema);
    (*(*(v119 - 8) + 56))(v84, 0, 1, v119);

    v185 = v112;
LABEL_48:
    v121 = v181;
    sub_21DE682A8(v84, v181, &qword_27CE94D40, &qword_21DED4AF0);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D10, &unk_21DED4AD0);
    if ((*(*(v122 - 8) + 48))(v121, 1, v122) == 1)
    {
      break;
    }

    v123 = *v121;
    a1 = v121[1];
    sub_21DEBAC74(v121 + *(v122 + 48), v196, type metadata accessor for JSONSchema);

    if (sub_21DEC6EA0() < 0)
    {
      __break(1u);
      goto LABEL_102;
    }

    sub_21DEC6ED0();
    v124 = sub_21DEC7010();
    v126 = v125;
    v128 = v127;
    v130 = v129;

    v131 = v124 >> 16;
    v40 = v184;
    if (v128 == v184 && v130 == v186 && !v131 && (v126 >> 16) == v179)
    {

LABEL_59:
      v189 = v123;
      v190 = a1;
      v134 = sub_21DEC6EA0();
      v135 = v196;
      if (v134)
      {
        if (v134 < 0)
        {
          goto LABEL_109;
        }

        sub_21DEC6ED0();
        if (v136)
        {
          goto LABEL_111;
        }

        sub_21DEC6E50();
        v123 = v189;
        a1 = v190;
      }

      sub_21DEBABEC(v135, v176, type metadata accessor for JSONSchema);
      v137 = v173;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v187 = v137;
      v139 = sub_21DE7ADAC(v123, a1);
      v141 = *(v137 + 16);
      v142 = (v140 & 1) == 0;
      v143 = __OFADD__(v141, v142);
      v144 = v141 + v142;
      if (v143)
      {
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        result = sub_21DEC7700();
        __break(1u);
        return result;
      }

      v145 = v140;
      v146 = v180;
      if (*(v137 + 24) < v144)
      {
        sub_21DEB6454(v144, isUniquelyReferenced_nonNull_native);
        v139 = sub_21DE7ADAC(v123, a1);
        if ((v145 & 1) != (v147 & 1))
        {
          goto LABEL_112;
        }

LABEL_68:
        v148 = v196;
        if (v145)
        {
          goto LABEL_69;
        }

        goto LABEL_71;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_68;
      }

      v150 = v139;
      sub_21DEB7134();
      v139 = v150;
      v146 = v180;
      v148 = v196;
      if (v145)
      {
LABEL_69:
        v149 = v139;

        v173 = v187;
        sub_21DEAACF0(v176, *(v187 + 56) + *(v146 + 72) * v149);
        sub_21DEBB17C(v148, type metadata accessor for JSONSchema);
        goto LABEL_73;
      }

LABEL_71:
      v151 = v187;
      *(v187 + 8 * (v139 >> 6) + 64) |= 1 << v139;
      v152 = (v151[6] + 16 * v139);
      *v152 = v123;
      v152[1] = a1;
      sub_21DEBAC74(v176, v151[7] + *(v146 + 72) * v139, type metadata accessor for JSONSchema);
      sub_21DEBB17C(v148, type metadata accessor for JSONSchema);
      v153 = v151[2];
      v143 = __OFADD__(v153, 1);
      v154 = v153 + 1;
      if (v143)
      {
        goto LABEL_110;
      }

      v173 = v151;
      v151[2] = v154;
LABEL_73:
      v84 = v182;
      v110 = v183;
      v107 = v178;
      v82 = &qword_27CE94D10;
      v111 = v185;
      if (!v83)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v132 = sub_21DEC75F0();

      if (v132)
      {
        goto LABEL_59;
      }

      sub_21DEBB17C(v196, type metadata accessor for JSONSchema);

      v111 = v185;
      v84 = v182;
      v110 = v183;
      v107 = v178;
      v82 = &qword_27CE94D10;
      if (!v83)
      {
        goto LABEL_41;
      }
    }
  }

  if (*(v173 + 16))
  {
    v189 = v173;
    LOBYTE(v187) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94D30, &qword_21DED4AE8);
    sub_21DEBAFAC();
    v155 = v171;
    v156 = v172;
    sub_21DEC7580();
    v157 = v170;

    return (*(v157 + 8))(v156, v155);
  }

  else
  {
    (*(v170 + 8))(v172, v171);
  }
}