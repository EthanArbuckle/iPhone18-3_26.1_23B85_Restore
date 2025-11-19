uint64_t Date.toISO8601String(timeZone:options:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_26121C700();
  v5 = sub_26121C9B0();
  v6 = [v3 stringFromDate:v4 timeZone:v5 formatOptions:a2];

  v7 = sub_26121CC80();
  return v7;
}

uint64_t sub_2611BF08C()
{
  sub_2611B6988();
  sub_26121D130();

  sub_26121D130();

  while ((sub_26121CD60() & 3) != 0)
  {
    sub_26121CE50();
    sub_26121CD90();
  }

  v0 = sub_26121C620();
  v2 = v1;
  sub_26119EA60(v0, v1);

  if (v2 >> 60 != 15)
  {
    sub_26119EF48(v0, v2);
  }

  return v0;
}

uint64_t sub_2611BF248()
{
  sub_26121C670();
  sub_2611B6988();
  sub_26121D130();

  sub_26121D130();

  v0 = sub_26121D130();

  return v0;
}

uint64_t sub_2611BF3A8(char a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v67 - v4;
  v6 = objc_opt_self();
  v7 = sub_26121C660();
  *&v74 = 0;
  v8 = [v6 JSONObjectWithData:v7 options:1 error:&v74];

  if (v8)
  {
    v9 = v74;
    sub_26121D150();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87558, &qword_261221650);
    if (swift_dynamicCast())
    {
      v10 = *&v73[0];
      if ((a1 & 1) == 0)
      {
LABEL_4:
        v11 = sub_2611BFA98(v10);

        goto LABEL_47;
      }
    }

    else
    {
      v10 = sub_2611C1A94(MEMORY[0x277D84F90]);
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v11 = sub_2611C1B98(MEMORY[0x277D84F90]);
    v17 = 0;
    v18 = v10 + 64;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v68 = v22;
    v69 = v10 + 64;
    v70 = v10;
    while (1)
    {
      if (!v21)
      {
        while (1)
        {
          v25 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v25 >= v22)
          {

            goto LABEL_47;
          }

          v21 = *(v18 + 8 * v25);
          ++v17;
          if (v21)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v25 = v17;
LABEL_18:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v10 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(*(v10 + 56) + 8 * v27);
      *&v74 = sub_26121CBE0();
      *(&v74 + 1) = v32;
      *&v73[0] = 0x6E656B6F74;
      *(&v73[0] + 1) = 0xE500000000000000;
      sub_2611B6988();

      swift_unknownObjectRetain();
      v33 = sub_26121D140();

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }

      v71 = v30;
      *&v73[0] = v31;
      swift_unknownObjectRetain();
      v34 = MEMORY[0x277D837D0];
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v35 = static JwtHelper.redactSignature(_:)(v74);
      v37 = v36;

      ObjectType = v34;
      *&v74 = v35;
      *(&v74 + 1) = v37;
      sub_2611B69DC(&v74, v73);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v11;
      v39 = sub_2611B3970(v71, v29);
      v41 = v11[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_51;
      }

      v45 = v40;
      if (v11[3] >= v44)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = v39;
          sub_2611B655C();
          v39 = v61;
        }

        v46 = v71;
        if (v45)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_2611B5F38(v44, isUniquelyReferenced_nonNull_native);
        v46 = v71;
        v39 = sub_2611B3970(v71, v29);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_53;
        }

        if (v45)
        {
LABEL_11:
          v23 = v39;

          v11 = v72;
          v24 = (v72[7] + 32 * v23);
          __swift_destroy_boxed_opaque_existential_1(v24);
          sub_2611B69DC(v73, v24);
          swift_unknownObjectRelease();
          goto LABEL_12;
        }
      }

      v11 = v72;
      v72[(v39 >> 6) + 8] |= 1 << v39;
      v58 = (v11[6] + 16 * v39);
      *v58 = v46;
      v58[1] = v29;
      sub_2611B69DC(v73, (v11[7] + 32 * v39));
      swift_unknownObjectRelease();
      v59 = v11[2];
      v43 = __OFADD__(v59, 1);
      v57 = v59 + 1;
      if (v43)
      {
        goto LABEL_52;
      }

LABEL_39:
      v11[2] = v57;
LABEL_12:
      v17 = v25;
      v18 = v69;
      v10 = v70;
      v22 = v68;
    }

    v30 = v71;
LABEL_26:
    ObjectType = swift_getObjectType();
    *&v74 = v31;
    sub_2611B69DC(&v74, v73);
    swift_unknownObjectRetain();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v11;
    v39 = sub_2611B3970(v30, v29);
    v50 = v11[2];
    v51 = (v49 & 1) == 0;
    v43 = __OFADD__(v50, v51);
    v52 = v50 + v51;
    if (v43)
    {
      goto LABEL_49;
    }

    v53 = v49;
    if (v11[3] >= v52)
    {
      if ((v48 & 1) == 0)
      {
        v60 = v39;
        sub_2611B655C();
        v39 = v60;
        if (v53)
        {
          goto LABEL_11;
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_2611B5F38(v52, v48);
      v39 = sub_2611B3970(v30, v29);
      if ((v53 & 1) != (v54 & 1))
      {
LABEL_53:
        result = sub_26121D520();
        __break(1u);
        return result;
      }
    }

    if (v53)
    {
      goto LABEL_11;
    }

LABEL_32:
    v11 = v72;
    v72[(v39 >> 6) + 8] |= 1 << v39;
    v55 = (v11[6] + 16 * v39);
    *v55 = v30;
    v55[1] = v29;
    sub_2611B69DC(v73, (v11[7] + 32 * v39));
    swift_unknownObjectRelease();
    v56 = v11[2];
    v43 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v43)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  v12 = v74;
  v13 = sub_26121C500();

  swift_willThrow();
  v14 = sub_2611F04C0();
  sub_2611ABE1C(v14, v5, &qword_27FE87700, &unk_2612203D0);
  v15 = sub_26121CA60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v62 = sub_26121CA40();
    v63 = sub_26121CFD0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_261197000, v62, v63, "Error json->dictionary", v64, 2u);
      MEMORY[0x2666FCF20](v64, -1, -1);
    }

    (*(v16 + 8))(v5, v15);
  }

  v11 = sub_2611C1B98(MEMORY[0x277D84F90]);

LABEL_47:
  v65 = *MEMORY[0x277D85DE8];
  return v11;
}

unint64_t sub_2611BFA98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v2 = sub_26121D310();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_2611B69DC(&v25, v27);
        sub_2611B69DC(v27, v28);
        sub_2611B69DC(v28, &v26);
        result = sub_2611B3970(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2611B69DC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_2611B69DC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2611BFCEC(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2611C041C(sub_2611C11F0, 0, a1, MEMORY[0x277D837D0], MEMORY[0x277D84A98], *(a2 + 32), MEMORY[0x277D84AC0], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  sub_2611C1CC8(&qword_27FE87960, &qword_27FE87468, &qword_2612210E0);
  v8 = sub_26121CBF0();

  return v8;
}

uint64_t sub_2611BFDD8(uint64_t a1)
{
  v22 = a1;
  v1 = sub_26121CB70();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26121CCD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26121CB20();
  v19 = *(v10 - 8);
  v20 = v10;
  v11 = *(v19 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121CCC0();
  v14 = sub_26121CC90();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  if (v16 >> 60 != 15)
  {
    sub_2611C2030(&qword_27FE87320, MEMORY[0x277CC5540]);
    sub_26121CB10();
    sub_26119D904(v14, v16);
    sub_2611AB8C8(v14, v16);
    sub_26119EF48(v14, v16);
    sub_26121CB00();
    sub_26119EF48(v14, v16);
    (*(v21 + 8))(v4, v1);
    v14 = sub_2611C00BC();
    (*(v19 + 8))(v13, v20);
  }

  return v14;
}

uint64_t sub_2611C00BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_26121CB60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121CB20();
  sub_2611C2030(&qword_27FE87328, MEMORY[0x277CC5290]);
  sub_26121CB30();
  v7 = sub_26121CB50();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_2611C041C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_26121D0C0();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_26121CE80();
  v70 = sub_26121D2B0();
  v65 = sub_26121D2C0();
  sub_26121D260();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_26121CE70();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26121D110();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_26121D2A0();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_26121D110();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_26121D2A0();
      sub_26121D110();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_2611C0B10@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v20 = sub_26121C430();
  v18 = *(v20 - 8);
  v1 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26121C990();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87560, &unk_261222400);
  v8 = sub_26121C980();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261221630;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x277CC9978], v8);
  v14(v13 + v10, *MEMORY[0x277CC9988], v8);
  v14(v13 + 2 * v10, *MEMORY[0x277CC99B0], v8);
  v14(v13 + 3 * v10, *MEMORY[0x277CC9998], v8);
  v14(v13 + 4 * v10, *MEMORY[0x277CC9968], v8);
  v14(v13 + 5 * v10, *MEMORY[0x277CC9980], v8);
  sub_2611C1D10(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26121C950();

  sub_26121C960();
  (*(v18 + 8))(v3, v20);
  return (*(v4 + 8))(v7, v17);
}

uint64_t sub_2611C0E50@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87568, &qword_261221658);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v19 - v3;
  v24 = sub_26121C430();
  v23 = *(v24 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26121C990();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87560, &unk_261222400);
  v11 = sub_26121C980();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_261221640;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x277CC9978], v11);
  v17(v16 + v13, *MEMORY[0x277CC9988], v11);
  v17(v16 + 2 * v13, *MEMORY[0x277CC99B0], v11);
  v17(v16 + 3 * v13, *MEMORY[0x277CC9998], v11);
  v17(v16 + 4 * v13, *MEMORY[0x277CC9968], v11);
  sub_2611C1D10(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26121C950();

  sub_26121C9A0();
  sub_26121C420();
  sub_26121C960();
  (*(v23 + 8))(v6, v24);
  return (*(v20 + 8))(v10, v21);
}

uint64_t sub_2611C11F0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F8, &unk_2612203E0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84B78];
  *(v4 + 16) = xmmword_2612203B0;
  v6 = MEMORY[0x277D84BC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_26121CCB0();
  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_2611C1284()
{
  v0 = sub_261199348();
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_26121CC50();

  v4 = [objc_opt_self() bundleWithIdentifier_];

  if (v4)
  {
    qword_27FE9EFD0 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2611C130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v41 = a2;
  v39 = a1;
  v3 = sub_26121C930();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_26121C520();
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  v7 = MEMORY[0x28223BE20](v40);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v33 - v9;
  v10 = sub_26121CC30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = sub_26121C510();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v33 - v24;
  if (qword_27FE8CE30 != -1)
  {
    swift_once();
  }

  v26 = [qword_27FE9EFD0 bundleURL];
  sub_26121C5B0();

  (*(v19 + 104))(v25, *MEMORY[0x277CC9118], v18);

  sub_26121CC40();
  v27 = *(v11 + 16);
  v33 = v10;
  v27(v15, v17, v10);
  sub_26121C8C0();
  (*(v19 + 16))(v23, v25, v18);

  v28 = v34;
  sub_26121C530();
  v29 = v38;
  v30 = v40;
  (*(v38 + 16))(v37, v28, v40);
  v31 = sub_26121CCE0();
  (*(v29 + 8))(v28, v30);
  (*(v11 + 8))(v17, v33);
  (*(v19 + 8))(v25, v18);
  return v31;
}

uint64_t sub_2611C1728(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  v29 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2611B7D88(0, v4 & ~(v4 >> 63), 0);
    v8 = a1;
    if (v3)
    {
      if (v3 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v4 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v7 = v46;
    v28 = &v34 + v9;
    v31 = v4;
    v32 = v3;
    do
    {
      if (v10 >= v4)
      {
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
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v3 == 2)
      {
        if (v12 < *(v8 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v8 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_26121C3C0();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_26121C3F0();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v3 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = v8;
          v35 = BYTE2(v8);
          v36 = BYTE3(v8);
          v37 = v29;
          v38 = BYTE5(v8);
          v39 = BYTE6(v8);
          v40 = HIBYTE(v8);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v28[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_26121C3C0();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_26121C3F0();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
      v8 = a1;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F8, &unk_2612203E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2612203B0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_26121CCB0();
      v23 = v22;
      v46 = v7;
      v3 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v3 >= v24 >> 1)
      {
        sub_2611B7D88((v24 > 1), v3 + 1, 1);
        v8 = a1;
        v7 = v46;
      }

      *(v7 + 16) = v3 + 1;
      v25 = v7 + 16 * v3;
      *(v25 + 32) = v21;
      *(v25 + 40) = v23;
      ++v10;
      v4 = v31;
      LODWORD(v3) = v32;
    }

    while (v11 != v31);
  }

LABEL_39:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_2611C1A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87588, &unk_261221660);
    v3 = sub_26121D310();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2611B3970(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2611C1B98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v3 = sub_26121D310();
    v4 = a1 + 32;

    while (1)
    {
      sub_2611ABE1C(v4, &v13, &qword_27FE87590, &unk_2612223D0);
      v5 = v13;
      v6 = v14;
      result = sub_2611B3970(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2611B69DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_2611C1CC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2611C1D10(uint64_t a1)
{
  v2 = sub_26121C980();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87570, &qword_261222720);
    v10 = sub_26121D1C0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2611C2030(&qword_27FE87578, MEMORY[0x277CC99D0]);
      v18 = sub_26121CBC0();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2611C2030(&qword_27FE87580, MEMORY[0x277CC99D0]);
          v25 = sub_26121CC20();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2611C2030(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FeatureFlagProvider.isEnabled(_:)()
{
  v3[3] = &type metadata for FeatureFlagsKey;
  v3[4] = sub_2611C2114();
  v0 = swift_allocObject();
  v3[0] = v0;
  *(v0 + 16) = "AppleAccount";
  *(v0 + 24) = 12;
  *(v0 + 32) = 2;
  *(v0 + 40) = "AABranding";
  *(v0 + 48) = 10;
  *(v0 + 56) = 2;
  v1 = sub_26121C9C0();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

unint64_t sub_2611C2114()
{
  result = qword_27FE8CE40[0];
  if (!qword_27FE8CE40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8CE40);
  }

  return result;
}

uint64_t sub_2611C2178()
{
  v3[3] = &type metadata for FeatureFlagsKey;
  v3[4] = sub_2611C2114();
  v0 = swift_allocObject();
  v3[0] = v0;
  *(v0 + 16) = "AppleAccount";
  *(v0 + 24) = 12;
  *(v0 + 32) = 2;
  *(v0 + 40) = "AABranding";
  *(v0 + 48) = 10;
  *(v0 + 56) = 2;
  v1 = sub_26121C9C0();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

uint64_t FeatureFlag.hashValue.getter()
{
  sub_26121D5B0();
  MEMORY[0x2666FC740](0);
  return sub_26121D5D0();
}

unint64_t sub_2611C2284()
{
  result = qword_27FE87598;
  if (!qword_27FE87598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87598);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2611C2320(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2611C2340(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_2611C2388()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_2611C2394()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t ContentInternal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContentInternal.topic.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContentInternal.subtopic.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall ContentInternal.init(id:topic:subtopic:)(ProximityReaderCore::ContentInternal *__return_ptr retstr, Swift::String id, Swift::String topic, Swift::String subtopic)
{
  retstr->id = id;
  retstr->topic = topic;
  retstr->subtopic = subtopic;
}

uint64_t static ContentInternal.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_26121D4D0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_26121D4D0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_26121D4D0();
}

uint64_t sub_2611C2538()
{
  v1 = 0x6369706F74;
  if (*v0 != 1)
  {
    v1 = 0x6369706F74627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2611C2584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611C3050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611C25AC(uint64_t a1)
{
  v2 = sub_2611C27E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611C25E8(uint64_t a1)
{
  v2 = sub_2611C27E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875A0, &qword_261221790);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611C27E8();
  sub_26121D600();
  v18 = 0;
  v13 = v15[5];
  sub_26121D460();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_26121D460();
  v16 = 2;
  sub_26121D460();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2611C27E8()
{
  result = qword_27FE8CFD0[0];
  if (!qword_27FE8CFD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8CFD0);
  }

  return result;
}

uint64_t ContentInternal.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_26121CD50();
  sub_26121CD50();

  return sub_26121CD50();
}

uint64_t ContentInternal.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_26121D5B0();
  sub_26121CD50();
  sub_26121CD50();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t ContentInternal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875A8, &qword_261221798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611C27E8();
  sub_26121D5F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_26121D3B0();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_26121D3B0();
  v23 = v14;
  v25 = 2;
  v15 = sub_26121D3B0();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2611C2BD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_26121D5B0();
  sub_26121CD50();
  sub_26121CD50();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611C2C58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_26121CD50();
  sub_26121CD50();

  return sub_26121CD50();
}

uint64_t sub_2611C2CC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_26121D5B0();
  sub_26121CD50();
  sub_26121CD50();
  sub_26121CD50();
  return sub_26121D5D0();
}

unint64_t sub_2611C2D48()
{
  result = qword_27FE875B0;
  if (!qword_27FE875B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875B0);
  }

  return result;
}

uint64_t sub_2611C2D9C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_26121D4D0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_26121D4D0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_26121D4D0();
}

uint64_t sub_2611C2E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2611C2EDC(uint64_t result, int a2, int a3)
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

unint64_t sub_2611C2F4C()
{
  result = qword_27FE8D2E0[0];
  if (!qword_27FE8D2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8D2E0);
  }

  return result;
}

unint64_t sub_2611C2FA4()
{
  result = qword_27FE8D3F0;
  if (!qword_27FE8D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8D3F0);
  }

  return result;
}

unint64_t sub_2611C2FFC()
{
  result = qword_27FE8D3F8;
  if (!qword_27FE8D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8D3F8);
  }

  return result;
}

uint64_t sub_2611C3050(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369706F74627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t sub_2611C3198()
{
  v2 = *v0;
  sub_26121D5B0();
  sub_26121CBD0();
  return sub_26121D5D0();
}

uint64_t sub_2611C31FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611C374C();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_2611C3248()
{
  v2 = *v0;
  sub_26121D5B0();
  sub_26121CBD0();
  return sub_26121D5D0();
}

unint64_t sub_2611C32A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611C351C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2611C32DC(uint64_t a1)
{
  v2 = sub_2611C374C();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2611C3318(uint64_t a1)
{
  v2 = sub_2611C374C();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2611C335C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611C374C();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t DiscoveryErrorInternal.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x4E746E65746E6F63;
      case 1:
        return 0xD000000000000014;
      case 2:
        return 0x6F70707553746F6ELL;
    }

LABEL_16:
    result = sub_26121D510();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x656C6C65636E6163;
    }

    if (a1 == 6)
    {
      return 0x6E776F6E6B6E75;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x75426D6574737973;
  }
}

unint64_t sub_2611C351C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611C3530()
{
  result = qword_27FE875B8;
  if (!qword_27FE875B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875B8);
  }

  return result;
}

unint64_t sub_2611C3588()
{
  result = qword_27FE875C0;
  if (!qword_27FE875C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875C0);
  }

  return result;
}

unint64_t sub_2611C35E0()
{
  result = qword_27FE875C8;
  if (!qword_27FE875C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875C8);
  }

  return result;
}

unint64_t sub_2611C3638()
{
  result = qword_27FE875D0;
  if (!qword_27FE875D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875D0);
  }

  return result;
}

unint64_t sub_2611C3690()
{
  result = qword_27FE875D8;
  if (!qword_27FE875D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875D8);
  }

  return result;
}

unint64_t sub_2611C36E8()
{
  result = qword_27FE875E0;
  if (!qword_27FE875E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875E0);
  }

  return result;
}

unint64_t sub_2611C374C()
{
  result = qword_27FE875E8;
  if (!qword_27FE875E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875E8);
  }

  return result;
}

uint64_t static LocaleHelper.encode(language:)(uint64_t a1)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F8, &qword_261221B88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87600, &qword_261221B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26121C930();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87608, &qword_261221B98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_26121C910();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2611ABE1C(v25, v14, &qword_27FE87608, &qword_261221B98);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2611AC114(v14, &qword_27FE87608, &qword_261221B98);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_26121C8E0();
    sub_26121C900();
    sub_26121C8F0();
    sub_26121C800();
    v21 = sub_26121C7D0();
    (*(v23 + 8))(v10, v24);
    (*(v16 + 8))(v19, v15);
    return v21;
  }
}

uint64_t static LocaleHelper.findLocaleInBundle(locale:bundle:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = v46 - v8;
  v9 = sub_26121C910();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v49 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v46 - v14;
  v16 = sub_26121C930();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v46 - v22;
  sub_2611ABE1C(a1, v15, &qword_27FE87548, &unk_261221BA0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2611AC114(v15, &qword_27FE87548, &unk_261221BA0);
    return (*(v17 + 56))(a3, 1, 1, v16);
  }

  v48 = a3;
  v25 = *(v17 + 32);
  v47 = v23;
  v25();
  v26 = [a2 localizations];
  v27 = sub_26121CEC0();

  v28 = *(v27 + 16);
  if (v28)
  {
    v53 = MEMORY[0x277D84F90];
    sub_2611C58E0(0, v28, 0);
    v29 = v53;
    v46[1] = v27;
    v30 = (v27 + 40);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;

      sub_26121C7C0();
      v53 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2611C58E0(v33 > 1, v34 + 1, 1);
        v29 = v53;
      }

      *(v29 + 16) = v34 + 1;
      (v25)(v29 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v34, v21, v16);
      v30 += 2;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v35);
  v36 = v47;
  v46[-2] = v47;
  v37 = sub_2611C458C(sub_2611C5F44, &v46[-4], v29);
  v38 = v37;
  v39 = *(v37 + 16);
  v40 = v48;
  if (v39 <= 1)
  {
    if (v39)
    {
      (*(v17 + 16))(v48, v37 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    goto LABEL_19;
  }

  v41 = v49;
  sub_26121C920();
  v42 = v52;
  sub_26121C8F0();
  (*(v50 + 8))(v41, v51);
  v43 = sub_2611C5F74(v38, v42);

  sub_2611AC114(v42, &qword_27FE875F0, &qword_261221B80);
  v44 = *(v43 + 16);
  if (v44 < 2)
  {
    if (v44)
    {
      (*(v17 + 16))(v40, v43 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

LABEL_19:

    (*(v17 + 56))(v40, v45, 1, v16);
    return (*(v17 + 8))(v36, v16);
  }

  (*(v17 + 16))(v40, v43 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);

  (*(v17 + 56))(v40, 0, 1, v16);
  return (*(v17 + 8))(v36, v16);
}

uint64_t sub_2611C40A4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = sub_26121C7F0();
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87628, &unk_261221BF0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87600, &qword_261221B90);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = sub_26121C910();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v36 - v24;
  sub_26121C920();
  sub_26121C8E0();
  v26 = *(v19 + 8);
  v26(v25, v18);
  sub_26121C920();
  sub_26121C8E0();
  v26(v23, v18);
  v27 = v38;
  v28 = v40;
  v29 = *(v5 + 56);
  sub_2611ABE1C(v17, v8, &qword_27FE87600, &qword_261221B90);
  sub_2611ABE1C(v15, &v8[v29], &qword_27FE87600, &qword_261221B90);
  v30 = *(v27 + 48);
  if (v30(v8, 1, v28) != 1)
  {
    sub_2611ABE1C(v8, v41, &qword_27FE87600, &qword_261221B90);
    if (v30(&v8[v29], 1, v28) != 1)
    {
      v32 = v37;
      (*(v27 + 32))(v37, &v8[v29], v28);
      sub_2611C6424(&qword_27FE87630, MEMORY[0x277CC9640]);
      v33 = v41;
      v31 = sub_26121CC20();
      v34 = *(v27 + 8);
      v34(v32, v28);
      sub_2611AC114(v15, &qword_27FE87600, &qword_261221B90);
      sub_2611AC114(v17, &qword_27FE87600, &qword_261221B90);
      v34(v33, v28);
      sub_2611AC114(v8, &qword_27FE87600, &qword_261221B90);
      return v31 & 1;
    }

    sub_2611AC114(v15, &qword_27FE87600, &qword_261221B90);
    sub_2611AC114(v17, &qword_27FE87600, &qword_261221B90);
    (*(v27 + 8))(v41, v28);
    goto LABEL_6;
  }

  sub_2611AC114(v15, &qword_27FE87600, &qword_261221B90);
  sub_2611AC114(v17, &qword_27FE87600, &qword_261221B90);
  if (v30(&v8[v29], 1, v28) != 1)
  {
LABEL_6:
    sub_2611AC114(v8, &qword_27FE87628, &unk_261221BF0);
    v31 = 0;
    return v31 & 1;
  }

  sub_2611AC114(v8, &qword_27FE87600, &qword_261221B90);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_2611C458C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_26121C930();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2611C58E0(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2611C58E0(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

void static LocaleHelper.resolveCardPreferredLocale(from:preferredRegion:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v121 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v108 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = &v108 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v127 = &v108 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v108 - v19;
  v21 = sub_26121C930();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v109 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v112 = &v108 - v27;
  MEMORY[0x28223BE20](v26);
  v118 = &v108 - v28;
  v29 = sub_26121CD60();
  if (v29)
  {
    v30 = v29;
    v31 = sub_2611C5BA0(v29, 0);

    v32 = sub_2611C5AD8(&v135, v31 + 4, v30, a1, a2);

    if (v32 != v30)
    {
LABEL_66:
      __break(1u);
      return;
    }

    v33 = v31;
    v34 = v31[2];
    if (v34)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v34 = *(MEMORY[0x277D84F90] + 16);
    if (v34)
    {
LABEL_4:
      v119 = v20;
      v110 = a4;
      v35 = 0;
      v36 = v33 + 4;
      v126 = v22 + 16;
      v128 = (v22 + 56);
      v129 = (v22 + 32);
      v125 = v22 + 48;
      v120 = v21;
      v111 = v16;
      v123 = v33;
      v114 = v34;
      v113 = v33 + 4;
      while (1)
      {
        v37 = v35 | 1;
        if ((v35 | 1) >= v34)
        {

          v101 = sub_2611F04C0();
          v102 = v108;
          sub_2611ABE1C(v101, v108, &qword_27FE87700, &unk_2612203D0);
          v103 = sub_26121CA60();
          v104 = *(v103 - 8);
          if ((*(v104 + 48))(v102, 1, v103) == 1)
          {
            sub_2611AC114(v102, &qword_27FE87700, &unk_2612203D0);
          }

          else
          {
            v105 = sub_26121CA40();
            v106 = sub_26121CFC0();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 0;
              _os_log_impl(&dword_261197000, v105, v106, "error parsing preferred language tag, array out of bounds", v107, 2u);
              MEMORY[0x2666FCF20](v107, -1, -1);
            }

            (*(v104 + 8))(v108, v103);
          }

          (*v128)(v110, 1, 1, v21);
          return;
        }

        if (v35 >= v33[2])
        {
          goto LABEL_64;
        }

        v122 = v35;
        v38 = &v36[2 * v35];
        v39 = *v38;
        v40 = v38[1];

        v41 = sub_26121CBE0();
        v43 = v42;

        v135 = v41;
        v136 = v43;
        if (v37 >= v123[2])
        {
          goto LABEL_65;
        }

        v44 = &v36[2 * v37];
        v45 = *v44;
        v46 = v44[1];

        v47 = sub_26121CBE0();
        v49 = v48;

        MEMORY[0x2666FBF20](v47, v49);

        v130 = v135;
        v131 = v136;
        v51 = MEMORY[0x2666FB9C0](v50);
        v52 = v51;
        v53 = *(v51 + 16);
        if (v53)
        {
          v54 = 0;
          v55 = v51 + 40;
          v116 = v53 - 1;
          v56 = MEMORY[0x277D84F90];
          v117 = v51 + 40;
          do
          {
            v124 = v56;
            v57 = (v55 + 16 * v54);
            v58 = v54;
            while (1)
            {
              if (v58 >= *(v52 + 16))
              {
                __break(1u);
                goto LABEL_62;
              }

              v60 = *(v57 - 1);
              v59 = *v57;
              v54 = v58 + 1;
              v135 = v60;
              v136 = v59;
              v132 = v130;
              v133 = v131;
              sub_2611B6988();

              if (sub_26121D140())
              {
                break;
              }

              v57 += 2;
              ++v58;
              if (v53 == v54)
              {
                v56 = v124;
                goto LABEL_23;
              }
            }

            v61 = v124;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v134 = v61;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2611B7D88(0, *(v61 + 16) + 1, 1);
              v61 = v134;
            }

            v64 = *(v61 + 16);
            v63 = *(v61 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_2611B7D88((v63 > 1), v64 + 1, 1);
              v61 = v134;
            }

            *(v61 + 16) = v64 + 1;
            v65 = v61 + 16 * v64;
            *(v65 + 32) = v60;
            *(v65 + 40) = v59;
            v66 = v116 == v58;
            v56 = v61;
            v55 = v117;
          }

          while (!v66);
        }

        else
        {
          v56 = MEMORY[0x277D84F90];
        }

LABEL_23:

        v67 = *(v56 + 16);
        if (v67)
        {
          v135 = MEMORY[0x277D84F90];
          sub_2611C58E0(0, v67, 0);
          v68 = v135;
          v69 = (v56 + 40);
          v21 = v120;
          v70 = v118;
          do
          {
            v71 = *(v69 - 1);
            v72 = *v69;

            sub_26121C7C0();
            v135 = v68;
            v74 = *(v68 + 16);
            v73 = *(v68 + 24);
            if (v74 >= v73 >> 1)
            {
              sub_2611C58E0(v73 > 1, v74 + 1, 1);
              v68 = v135;
            }

            *(v68 + 16) = v74 + 1;
            (*(v22 + 32))(v68 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v74, v70, v21);
            v69 += 2;
            --v67;
          }

          while (v67);
        }

        else
        {

          v68 = MEMORY[0x277D84F90];
          v21 = v120;
        }

        v75 = sub_2611C5F74(v68, v121);
        v76 = _s19ProximityReaderCore12LocaleHelperC12findUIBundleSo8NSBundleCSgyFZ_0();
        v77 = v119;
        v131 = v76;
        if (v76)
        {
          v78 = *(v75 + 16);
          if (v78)
          {
            v79 = 0;
            while (v79 < *(v75 + 16))
            {
              v80 = v127;
              (*(v22 + 16))(v127, v75 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v79, v21);
              v81 = *(v22 + 56);
              v81(v80, 0, 1, v21);
              static LocaleHelper.findLocaleInBundle(locale:bundle:)(v80, v131, v77);
              sub_2611AC114(v80, &qword_27FE87548, &unk_261221BA0);
              if ((*(v22 + 48))(v77, 1, v21) != 1)
              {

                v95 = *v129;
                v96 = v112;
                (*v129)(v112, v77, v21);
                v97 = v110;
                v95(v110, v96, v21);
                v81(v97, 0, 1, v21);
                return;
              }

              ++v79;
              sub_2611AC114(v77, &qword_27FE87548, &unk_261221BA0);
              if (v78 == v79)
              {
                goto LABEL_36;
              }
            }

LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_36:

          v82 = *(v68 + 16);
          v83 = v111;
          if (v82)
          {
            v84 = 0;
            while (v84 < *(v68 + 16))
            {
              v85 = v127;
              (*(v22 + 16))(v127, v68 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v84, v21);
              v86 = *(v22 + 56);
              v86(v85, 0, 1, v21);
              static LocaleHelper.findLocaleInBundle(locale:bundle:)(v85, v131, v83);
              sub_2611AC114(v85, &qword_27FE87548, &unk_261221BA0);
              if ((*(v22 + 48))(v83, 1, v21) != 1)
              {

                v98 = *v129;
                v99 = v109;
                (*v129)(v109, v83, v21);
                v100 = v110;
                v98(v110, v99, v21);
                v86(v100, 0, 1, v21);
                return;
              }

              ++v84;
              sub_2611AC114(v83, &qword_27FE87548, &unk_261221BA0);
              if (v82 == v84)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_63;
          }

LABEL_41:
        }

        else
        {

          v87 = sub_2611F04C0();
          v88 = v115;
          sub_2611ABE1C(v87, v115, &qword_27FE87700, &unk_2612203D0);
          v89 = sub_26121CA60();
          v90 = *(v89 - 8);
          if ((*(v90 + 48))(v88, 1, v89) != 1)
          {
            v91 = sub_26121CA40();
            v92 = sub_26121CFC0();
            v93 = os_log_type_enabled(v91, v92);
            v36 = v113;
            if (v93)
            {
              v94 = swift_slowAlloc();
              *v94 = 0;
              _os_log_impl(&dword_261197000, v91, v92, "UI Bundle not found, unable to check Locales", v94, 2u);
              MEMORY[0x2666FCF20](v94, -1, -1);
            }

            (*(v90 + 8))(v115, v89);
            v33 = v123;
            goto LABEL_48;
          }

          sub_2611AC114(v88, &qword_27FE87700, &unk_2612203D0);
        }

        v33 = v123;
        v36 = v113;
LABEL_48:
        v35 = v122 + 2;
        v34 = v114;
        if (v122 + 2 >= v114)
        {

          a4 = v110;
          goto LABEL_52;
        }
      }
    }
  }

LABEL_52:
  (*(v22 + 56))(a4, 1, 1, v21);
}

uint64_t sub_2611C547C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v2 = sub_26121C8A0();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87618, &qword_261221BE8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = sub_26121C910();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C920();
  sub_26121C8F0();
  (*(v17 + 8))(v20, v16);
  v21 = *(v6 + 56);
  v22 = v31;
  sub_2611ABE1C(v15, v9, &qword_27FE875F0, &qword_261221B80);
  sub_2611ABE1C(v32, &v9[v21], &qword_27FE875F0, &qword_261221B80);
  v23 = *(v22 + 48);
  if (v23(v9, 1, v2) != 1)
  {
    v25 = v30;
    sub_2611ABE1C(v9, v30, &qword_27FE875F0, &qword_261221B80);
    if (v23(&v9[v21], 1, v2) != 1)
    {
      v26 = v29;
      (*(v22 + 32))(v29, &v9[v21], v2);
      sub_2611C6424(&qword_27FE87620, MEMORY[0x277CC9698]);
      v24 = sub_26121CC20();
      v27 = *(v22 + 8);
      v27(v26, v2);
      sub_2611AC114(v15, &qword_27FE875F0, &qword_261221B80);
      v27(v25, v2);
      sub_2611AC114(v9, &qword_27FE875F0, &qword_261221B80);
      return v24 & 1;
    }

    sub_2611AC114(v15, &qword_27FE875F0, &qword_261221B80);
    (*(v22 + 8))(v25, v2);
    goto LABEL_6;
  }

  sub_2611AC114(v15, &qword_27FE875F0, &qword_261221B80);
  if (v23(&v9[v21], 1, v2) != 1)
  {
LABEL_6:
    sub_2611AC114(v9, &qword_27FE87618, &qword_261221BE8);
    v24 = 0;
    return v24 & 1;
  }

  sub_2611AC114(v9, &qword_27FE875F0, &qword_261221B80);
  v24 = 1;
  return v24 & 1;
}

size_t sub_2611C58E0(size_t a1, int64_t a2, char a3)
{
  result = sub_2611C5900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2611C5900(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87638, &unk_261221C20);
  v10 = *(sub_26121C930() - 8);
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
  v15 = *(sub_26121C930() - 8);
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

uint64_t sub_2611C5AD8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_26121CDC0();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2611C5BA0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87610, &qword_261221BE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

id _s19ProximityReaderCore12LocaleHelperC12findUIBundleSo8NSBundleCSgyFZ_0()
{
  v0 = sub_26121C550();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26121C5F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  v16 = sub_26121CC50();
  v17 = [objc_opt_self() bundleWithIdentifier_];

  if (!v17)
  {
    return 0;
  }

  v18 = [v17 bundleURL];
  sub_26121C5B0();

  sub_26121C5A0();
  v19 = *(v6 + 8);
  v19(v10, v5);
  sub_26121C5A0();
  v19(v13, v5);
  v24[0] = 0xD00000000000002FLL;
  v24[1] = 0x800000026122D350;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_2611B6988();
  sub_26121C5E0();
  (*(v1 + 8))(v4, v0);
  v20 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v21 = sub_26121C590();
  v22 = [v20 initWithURL_];

  v19(v13, v5);
  v19(v15, v5);
  return v22;
}

uint64_t sub_2611C5F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_26121C910();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26121C930();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v58 = a2;

  v52 = a1;
  v20 = sub_2611C458C(sub_2611C63F4, v57, a1);
  if (!*(v20 + 16))
  {
    v46 = v8;
    v21 = v48;
    v56 = v17;
    v22 = sub_26121C8A0();
    v23 = *(v22 - 8);
    v54 = *(v23 + 48);
    v55 = v22;
    v53 = v23 + 48;
    if ((v54)(a2, 1) != 1)
    {

      v24 = *(v52 + 16);
      if (v24)
      {
        v49 = v11;
        v50 = v7;
        v26 = *(v13 + 16);
        v25 = v13 + 16;
        v51 = v26;
        v43 = (*(v25 + 64) + 32) & ~*(v25 + 64);
        v27 = v52 + v43;
        v28 = *(v25 + 56);
        v42 = (v25 - 8);
        v47 = (v25 + 16);
        v48 = v21 + 8;
        v20 = MEMORY[0x277D84F90];
        v29 = v46;
        v44 = v25;
        v45 = v12;
        v52 = v28;
        v26(v19, v27, v12);
        while (1)
        {
          v31 = v19;
          v32 = v49;
          sub_26121C920();
          v33 = v50;
          sub_26121C8F0();
          (*v48)(v32, v29);
          v34 = v54(v33, 1, v55);
          sub_2611AC114(v33, &qword_27FE875F0, &qword_261221B80);
          if (v34 == 1)
          {
            v35 = *v47;
            (*v47)(v56, v31, v12);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = v20;
            v19 = v31;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2611C58E0(0, *(v20 + 16) + 1, 1);
              v20 = v59;
            }

            v30 = v52;
            v38 = *(v20 + 16);
            v37 = *(v20 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_2611C58E0(v37 > 1, v38 + 1, 1);
              v30 = v52;
              v20 = v59;
            }

            *(v20 + 16) = v38 + 1;
            v39 = v20 + v43 + v38 * v30;
            v12 = v45;
            v35(v39, v56, v45);
            v29 = v46;
          }

          else
          {
            (*v42)(v31, v12);
            v30 = v52;
            v19 = v31;
          }

          v27 += v30;
          if (!--v24)
          {
            break;
          }

          v51(v19, v27, v12);
        }
      }

      else
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return v20;
}

uint64_t sub_2611C6424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AmountFormatter.formatter(currency:useISOCurrencySymbol:region:uiLanguageIdentifier:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v144 = a4;
  v141 = a3;
  LODWORD(v140) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v136 = &v123 - v8;
  v146 = sub_26121C910();
  v126 = *(v146 - 8);
  v9 = *(v126 + 64);
  MEMORY[0x28223BE20](v146);
  v145 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87600, &qword_261221B90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v137 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v123 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v139 = (&v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v123 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v123 - v24;
  v26 = sub_26121C930();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v135 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v123 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v138 = &v123 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v125 = &v123 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v123 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v123 - v41;
  sub_26121C7E0();
  v43 = sub_26121CD10();
  v142 = v44;
  v143 = v43;

  v45 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_26121C8C0();
  v46 = sub_26121C820();
  v147 = *(v27 + 8);
  v148 = v27 + 8;
  v147(v42, v26);
  [v45 setLocale_];

  v123 = v33;
  if (v140)
  {
    v47 = sub_2611F04C0();
    sub_2611B8B74(v47, v25);
    v48 = sub_26121CA60();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v25, 1, v48) == 1)
    {
      sub_2611AC114(v25, &qword_27FE87700, &unk_2612203D0);
      v50 = 8;
    }

    else
    {
      v140 = a5;
      v51 = sub_26121CA40();
      v52 = sub_26121CFD0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = v52;
        v55 = v53;
        _os_log_impl(&dword_261197000, v51, v54, "Using iso4217 symbol style", v53, 2u);
        MEMORY[0x2666FCF20](v55, -1, -1);
      }

      (*(v49 + 8))(v25, v48);
      v50 = 8;
      a5 = v140;
    }
  }

  else
  {
    v50 = 2;
  }

  [v45 setNumberStyle_];
  type metadata accessor for CurrencyDefinitions();
  v56 = sub_26121C8A0();
  v57 = *(v56 - 8);
  (*(v57 + 16))(v17, v141, v56);
  (*(v57 + 56))(v17, 0, 1, v56);
  v58 = v142;
  static CurrencyDefinitions.find(isoCurrencyCode:region:)(v143, v142, v17, &v149);
  sub_2611AC114(v17, &qword_27FE875F0, &qword_261221B80);
  v59 = v151;
  if (!v151)
  {
    v90 = sub_2611F04C0();
    v91 = v139;
    sub_2611B8B74(v90, v139);
    v92 = sub_26121CA60();
    v93 = *(v92 - 8);
    if ((*(v93 + 48))(v91, 1, v92) == 1)
    {
      sub_2611AC114(v91, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v97 = sub_26121CA40();
      v98 = sub_26121CFC0();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_261197000, v97, v98, "No definition, use USD code, use default locale, standard symbol", v99, 2u);
        v100 = v99;
        v58 = v142;
        MEMORY[0x2666FCF20](v100, -1, -1);
      }

      (*(v93 + 8))(v91, v92);
    }

    v101 = sub_2611C7704(&unk_2873A89A8);
    CurrencyDef.init(_:_:_:_:_:)(v101, v102, 0x53555F6E65, 0xE500000000000000, 2, 0, v143, v58, &v149);
    v103 = v149;
    v104 = v150;
    sub_2611C740C(&v149);
    sub_26119DA0C(v103, v104);

    return v45;
  }

  v134 = v45;
  v131 = v149;
  v130 = v150;
  v129 = v152;
  v132 = v153;
  v128 = v154;
  v127 = v155;

  v61 = *(v59 + 16);
  v62 = MEMORY[0x277D84F90];
  v133 = v59;
  if (v61)
  {
    v140 = a5;
    v149 = MEMORY[0x277D84F90];
    sub_2611C58E0(0, v61, 0);
    v62 = v149;
    v63 = (v59 + 40);
    do
    {
      v64 = *(v63 - 1);
      v65 = *v63;

      sub_26121C7C0();
      v149 = v62;
      v67 = *(v62 + 16);
      v66 = *(v62 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_2611C58E0(v66 > 1, v67 + 1, 1);
        v62 = v149;
      }

      *(v62 + 16) = v67 + 1;
      result = (*(v27 + 32))(v62 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v67, v40, v26);
      v63 += 2;
      --v61;
    }

    while (v61);
    a5 = v140;
  }

  v69 = v137;
  v68 = v138;
  if (!a5 || (v142 = *(v62 + 16)) == 0)
  {
LABEL_26:
    v83 = *(v62 + 16);
    v45 = v134;
    if (v83)
    {
      v84 = v136;
      (*(v27 + 16))(v136, v62 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * (v83 - 1), v26);

      (*(v27 + 56))(v84, 0, 1, v26);
      v85 = v135;
      (*(v27 + 32))(v135, v84, v26);
      v86 = v133;
      v87 = v132;
      v88 = v131;
      v89 = v130;
    }

    else
    {

      v94 = v136;
      (*(v27 + 56))(v136, 1, 1, v26);
      v85 = v135;
      sub_26121C8C0();
      v95 = (*(v27 + 48))(v94, 1, v26);
      v86 = v133;
      v87 = v132;
      v88 = v131;
      v89 = v130;
      if (v95 != 1)
      {
        sub_2611AC114(v94, &qword_27FE87548, &unk_261221BA0);
      }
    }

    v96 = sub_26121C820();
    v147(v85, v26);
    [v45 setLocale_];

    goto LABEL_33;
  }

  v70 = 0;
  v141 = v62 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v143 = v27 + 16;
  v140 = v126 + 8;
  while (1)
  {
    if (v70 >= *(v62 + 16))
    {
      __break(1u);
      return result;
    }

    v71 = v141 + *(v27 + 72) * v70;
    v139 = *(v27 + 16);
    (v139)(v68, v71, v26);
    v72 = v145;
    sub_26121C920();
    sub_26121C8E0();
    (*v140)(v72, v146);
    v73 = sub_26121C7F0();
    v74 = v69;
    v75 = *(v73 - 8);
    if ((*(v75 + 48))(v74, 1, v73) == 1)
    {
      sub_2611AC114(v74, &qword_27FE87600, &qword_261221B90);
      v69 = v74;
      goto LABEL_19;
    }

    v76 = v26;
    v77 = a5;
    v78 = sub_26121C7E0();
    v80 = v79;
    (*(v75 + 8))(v74, v73);
    v81 = v78;
    a5 = v77;
    if (v81 == v144 && v80 == v77)
    {
      break;
    }

    v82 = sub_26121D4D0();

    v26 = v76;
    v69 = v137;
    v68 = v138;
    if (v82)
    {

      goto LABEL_40;
    }

LABEL_19:
    ++v70;
    result = (v147)(v68, v26);
    if (v142 == v70)
    {
      goto LABEL_26;
    }
  }

  v26 = v76;
LABEL_40:
  v105 = v125;
  (*(v27 + 32))(v125, v138, v26);
  v106 = sub_26121C820();
  v45 = v134;
  [v134 setLocale_];

  v107 = sub_2611F04C0();
  v108 = v124;
  sub_2611B8B74(v107, v124);
  v109 = sub_26121CA60();
  v110 = *(v109 - 8);
  v111 = (*(v110 + 48))(v108, 1, v109);
  v112 = v123;
  if (v111 == 1)
  {
    v147(v105, v26);
    sub_2611AC114(v108, &qword_27FE87700, &unk_2612203D0);
    v86 = v133;
    v87 = v132;
    v88 = v131;
    v89 = v130;
  }

  else
  {
    (v139)(v123, v105, v26);

    v113 = sub_26121CA40();
    v114 = v112;
    v115 = sub_26121CFD0();

    if (os_log_type_enabled(v113, v115))
    {
      v116 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v149 = v146;
      *v116 = 136315394;
      *(v116 + 4) = sub_2611AA228(v144, a5, &v149);
      *(v116 + 12) = 2080;
      v117 = sub_26121C7D0();
      v119 = v118;
      v147(v114, v26);
      v120 = sub_2611AA228(v117, v119, &v149);
      v108 = v124;

      *(v116 + 14) = v120;
      _os_log_impl(&dword_261197000, v113, v115, "Found %s in candidates, %s", v116, 0x16u);
      v121 = v146;
      swift_arrayDestroy();
      v45 = v134;
      MEMORY[0x2666FCF20](v121, -1, -1);
      MEMORY[0x2666FCF20](v116, -1, -1);

      v147(v125, v26);
    }

    else
    {

      v122 = v147;
      v147(v112, v26);
      v122(v125, v26);
    }

    v87 = v132;
    v88 = v131;
    v89 = v130;
    (*(v110 + 8))(v108, v109);
    v86 = v133;
  }

LABEL_33:
  v149 = v88;
  v150 = v89;
  v151 = v86;
  v152 = v129;
  LOBYTE(v153) = v87 & 1;
  v154 = v128;
  v155 = v127;
  sub_2611C740C(&v149);
  sub_2611C77B4(v88, v89, v86);
  return v45;
}

void sub_2611C740C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_26121C930();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v16 = *(a1 + 40);
    v17 = sub_26121CC50();
  }

  else
  {
    v18 = v11;
    v19 = [v2 locale];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    sub_26121C850();

    sub_26121C810();
    v22 = v21;
    (*(v9 + 8))(v13, v18);
    if (v22)
    {
      v17 = sub_26121CC50();
    }

    else
    {
      v17 = 0;
    }
  }

  [v2 setCurrencySymbol_];

  if (v15)
  {
    v23 = sub_2611F04C0();
    sub_2611B8B74(v23, v7);
    v24 = sub_26121CA60();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v7, 1, v24) == 1)
    {
      sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v26 = sub_26121CA40();
      v27 = sub_26121CFD0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261197000, v26, v27, "hideDecimal enabled", v28, 2u);
        MEMORY[0x2666FCF20](v28, -1, -1);
      }

      (*(v25 + 8))(v7, v24);
    }

    [v2 setMaximumFractionDigits_];
    [v2 setMinimumFractionDigits_];
  }
}

uint64_t sub_2611C7704(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87640, &qword_261225D00);
  v10 = sub_2611C7810();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2611AB648(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_2611C77B4(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_26119DA0C(result, a2);
  }

  return result;
}

unint64_t sub_2611C7810()
{
  result = qword_27FE87648;
  if (!qword_27FE87648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87640, &qword_261225D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87648);
  }

  return result;
}

void sub_2611C7874()
{
  type metadata accessor for LogoManager();
  v0 = swift_allocObject();
  SecureStorage.init()();
  qword_27FE8D808 = v0;
}

uint64_t static LogoManager.shared.getter()
{
  if (qword_27FE8D800 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2611C790C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  v10 = sub_26121C5F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2611C8360(a1, a2);
  if (v15[2] == 1)
  {
    v16 = v15[4];
    v17 = v15[5];

    type metadata accessor for Utilities();
    v21[2] = static Utilities.logoDirectoryPath()();
    v21[3] = v18;
    MEMORY[0x2666FBF20](v16, v17);
    sub_26121C570();

    (*(v11 + 56))(v9, 0, 1, v10);

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v14, v9, v10);
      v20 = SecureStorage.read(at:)();
      (*(v11 + 8))(v14, v10);
      return v20;
    }

    sub_2611AC114(v9, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2611C7CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v46[1] = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = v46 - v8;
  v9 = sub_26121C5F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v46 - v15;
  result = sub_2611C8360(a1, a2);
  v19 = result;
  v56 = *(result + 16);
  if (!v56)
  {
  }

  v20 = 0;
  v53 = (v10 + 16);
  v57 = (v10 + 8);
  v21 = (result + 40);
  *&v18 = 136315138;
  v47 = v18;
  v54 = result;
  v55 = v14;
  v52 = v9;
  while (v20 < *(v19 + 16))
  {
    v23 = *(v21 - 1);
    v22 = *v21;
    type metadata accessor for Utilities();

    v59[0] = static Utilities.logoDirectoryPath()();
    v59[1] = v24;
    MEMORY[0x2666FBF20](v23, v22);

    sub_26121C570();

    if (SecureStorage.delete(at:)())
    {
      result = (*v57)(v16, v9);
    }

    else
    {
      v25 = sub_2611F0510();
      v26 = v58;
      sub_2611B8B74(v25, v58);
      v27 = sub_26121CA60();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        (*v57)(v16, v9);
        result = sub_2611AC114(v58, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v29 = v55;
        (*v53)(v55, v16, v9);
        v30 = sub_26121CA40();
        v31 = sub_26121CFC0();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v48 = v32;
          v33 = swift_slowAlloc();
          v49 = v30;
          v50 = v33;
          v59[0] = v33;
          *v32 = v47;
          v34 = sub_26121C5C0();
          v36 = v35;
          v51 = *v57;
          v37 = v29;
          v38 = v52;
          v51(v37, v52);
          v39 = sub_2611AA228(v34, v36, v59);

          v40 = v48;
          *(v48 + 1) = v39;
          v41 = v31;
          v42 = v49;
          v43 = v40;
          _os_log_impl(&dword_261197000, v49, v41, "Could not clear cached logo in %s", v40, 0xCu);
          v44 = v50;
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x2666FCF20](v44, -1, -1);
          MEMORY[0x2666FCF20](v43, -1, -1);

          v51(v16, v38);
          v9 = v38;
        }

        else
        {

          v45 = *v57;
          v9 = v52;
          (*v57)(v29, v52);
          v45(v16, v9);
        }

        result = (*(v28 + 8))(v58, v27);
        v19 = v54;
      }
    }

    ++v20;
    v21 += 2;
    if (v56 == v20)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2611C8360(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - v8;
  type metadata accessor for Utilities();
  v10._countAndFlagsBits = static Utilities.logoDirectoryPath()();
  v11 = SecureStorage.getDirectoryContent(at:)(v10);
  if (v12)
  {

    v13 = sub_2611F0510();
    sub_2611B8B74(v13, v7);
    v14 = sub_26121CA60();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v7, 1, v14) == 1)
    {
      sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v40 = v12;
      v41 = sub_26121CA40();
      v42 = sub_26121CFC0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v69[0] = v44;
        *v43 = 136315138;
        swift_getErrorValue();
        v45 = sub_26121D550();
        v47 = sub_2611AA228(v45, v46, v69);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_261197000, v41, v42, "Empty logo directory: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x2666FCF20](v44, -1, -1);
        MEMORY[0x2666FCF20](v43, -1, -1);
      }

      (*(v15 + 8))(v7, v14);
    }

    return MEMORY[0x277D84F90];
  }

  v16 = v11;
  v66 = a1;

  if (v16)
  {
    v64 = v9;
    v18 = *(v16 + 16);
    if (!v18)
    {
      v21 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }

    v19 = 0;
    v20 = v16 + 40;
    v62 = v18 - 1;
    v21 = MEMORY[0x277D84F90];
    v63 = v16 + 40;
    while (1)
    {
      v65 = v21;
      v22 = (v20 + 16 * v19);
      v23 = v19;
      while (1)
      {
        if (v23 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v25 = *(v22 - 1);
        v24 = *v22;
        v69[0] = 46;
        v69[1] = 0xE100000000000000;
        MEMORY[0x28223BE20](result);
        *(&v61 - 2) = v69;

        sub_2611C9EE4(sub_2611ABD60, (&v61 - 4), v25, v24);
        v68 = v12;
        if (v26)
        {
          goto LABEL_8;
        }

        v27 = v16;
        v28 = v18;
        v29 = sub_26121CE60();
        v30 = MEMORY[0x2666FBEB0](v29);
        v32 = v31;
        v33 = v67;

        if (v30 == v66 && v32 == v33)
        {
          break;
        }

        v35 = sub_26121D4D0();

        v18 = v28;
        v16 = v27;
        if (v35)
        {
          goto LABEL_18;
        }

LABEL_8:
        ++v23;

        v22 += 2;
        v12 = v68;
        if (v18 == v23)
        {
          v21 = v65;
          goto LABEL_33;
        }
      }

      v18 = v28;
      v16 = v27;
LABEL_18:
      v21 = v65;
      result = swift_isUniquelyReferenced_nonNull_native();
      v70 = v21;
      if ((result & 1) == 0)
      {
        result = sub_2611B7D88(0, *(v21 + 16) + 1, 1);
        v21 = v70;
      }

      v36 = v25;
      v38 = *(v21 + 16);
      v37 = *(v21 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_2611B7D88((v37 > 1), v38 + 1, 1);
        v36 = v25;
        v21 = v70;
      }

      v19 = v23 + 1;
      *(v21 + 16) = v38 + 1;
      v39 = v21 + 16 * v38;
      *(v39 + 32) = v36;
      *(v39 + 40) = v24;
      v20 = v63;
      v12 = v68;
      if (v62 == v23)
      {
LABEL_33:

        v9 = v64;
        if (*(v21 + 16))
        {
          goto LABEL_34;
        }

        return v21;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_34:
    v48 = sub_2611F0510();
    sub_2611B8B74(v48, v9);
    v49 = sub_26121CA60();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v9, 1, v49) == 1)
    {
      sub_2611AC114(v9, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {

      v51 = v21;
      v52 = sub_26121CA40();
      v53 = sub_26121CFB0();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = v9;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v69[0] = v56;
        *v55 = 136315138;
        v57 = v51;
        v58 = MEMORY[0x2666FC050](v51, MEMORY[0x277D837D0]);
        v60 = sub_2611AA228(v58, v59, v69);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_261197000, v52, v53, "getFilesMatching at: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x2666FCF20](v56, -1, -1);
        v9 = v54;
        MEMORY[0x2666FCF20](v55, -1, -1);
      }

      else
      {
        v57 = v51;
      }

      (*(v50 + 8))(v9, v49);
      return v57;
    }
  }

  return v21;
}

uint64_t sub_2611C89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_26121C5F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  type metadata accessor for Utilities();
  v46[0] = static Utilities.logoDirectoryPath()();
  v46[1] = v20;
  MEMORY[0x2666FBF20](a3, a4);
  sub_26121C570();

  SecureStorage.save(at:data:)(v19, a1, v45);
  v21 = v13;
  v22 = v17;
  v23 = sub_2611F0510();
  sub_2611B8B74(v23, v11);
  v24 = sub_26121CA60();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    (*(v21 + 8))(v19, v12);
    return sub_2611AC114(v11, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v27 = v12;
    (*(v21 + 16))(v22, v19, v12);
    v28 = sub_26121CA40();
    v29 = sub_26121CFB0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = v30;
      v44 = swift_slowAlloc();
      v46[0] = v44;
      *v30 = 136315138;
      sub_2611C9C48();
      v31 = sub_26121D4C0();
      v45 = v11;
      v33 = v32;
      v43 = *(v21 + 8);
      v34 = v22;
      v35 = v27;
      v43(v34, v27);
      v36 = sub_2611AA228(v31, v33, v46);
      v11 = v45;

      v37 = v42;
      *(v42 + 1) = v36;
      v38 = v37;
      _os_log_impl(&dword_261197000, v28, v29, "Cached at: %s", v37, 0xCu);
      v39 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x2666FCF20](v39, -1, -1);
      MEMORY[0x2666FCF20](v38, -1, -1);

      v43(v19, v35);
    }

    else
    {

      v40 = *(v21 + 8);
      v40(v22, v27);
      v40(v19, v27);
    }

    return (*(v25 + 8))(v11, v24);
  }
}

void sub_2611C8F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v6 = sub_26121C5F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_2611F0510();
  sub_2611B8B74(v13, v12);
  v14 = sub_26121CA60();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_2611AC114(v12, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v31 = v4;
    v16 = sub_26121CA40();
    v17 = sub_26121CFB0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a1;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261197000, v16, v17, "Clear logo", v18, 2u);
      v20 = v19;
      a1 = v30;
      MEMORY[0x2666FCF20](v20, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    v4 = v31;
  }

  v21 = [objc_opt_self() sharedSession];
  v22 = sub_26121C590();
  (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v23, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v26 = (v25 + v24);
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v4;
  aBlock[4] = sub_2611C9D50;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2611C9B68;
  aBlock[3] = &block_descriptor_0;
  v28 = _Block_copy(aBlock);

  v29 = [v21 dataTaskWithURL:v22 completionHandler:v28];
  _Block_release(v28);

  [v29 resume];
}

void sub_2611C9320(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = a7;
  v83 = a8;
  v84 = a6;
  v13 = sub_26121C5F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v28 = &v75 - v27;
  if (a4)
  {
    v29 = a4;
    v30 = sub_2611F0510();
    sub_2611B8B74(v30, v28);
    v31 = sub_26121CA60();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v28, 1, v31) == 1)
    {

      sub_2611AC114(v28, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v40 = a4;
      v41 = sub_26121CA40();
      v42 = sub_26121CFC0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v85 = v44;
        *v43 = 136315138;
        swift_getErrorValue();
        v45 = sub_26121D550();
        v47 = sub_2611AA228(v45, v46, &v85);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_261197000, v41, v42, "Error received when fetching merchant logo: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x2666FCF20](v44, -1, -1);
        MEMORY[0x2666FCF20](v43, -1, -1);
      }

      else
      {
      }

      (*(v32 + 8))(v28, v31);
    }

    return;
  }

  v80 = a5;
  v81 = v25;
  if (!a3)
  {
    goto LABEL_8;
  }

  v33 = v26;
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (!v34)
  {
    goto LABEL_8;
  }

  v35 = v34;
  v36 = a3;
  if ([v35 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {

LABEL_8:
    v37 = sub_2611F0510();
    sub_2611B8B74(v37, v22);
    v38 = sub_26121CA60();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v22, 1, v38) == 1)
    {
LABEL_9:
      sub_2611AC114(v22, &qword_27FE87700, &unk_2612203D0);
      return;
    }

    v48 = sub_26121CA40();
    v49 = sub_26121CFC0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_261197000, v48, v49, "Non 200 response", v50, 2u);
      MEMORY[0x2666FCF20](v50, -1, -1);
    }

    (*(v39 + 8))(v22, v38);
    return;
  }

  if (a2 >> 60 == 15)
  {
    v51 = sub_2611F0510();
    v22 = v33;
    sub_2611B8B74(v51, v33);
    v52 = sub_26121CA60();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v33, 1, v52) == 1)
    {

      goto LABEL_9;
    }

    v61 = sub_26121CA40();
    v62 = sub_26121CFC0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_261197000, v61, v62, "Did not receive logo data from provided logoURL", v63, 2u);
      MEMORY[0x2666FCF20](v63, -1, -1);
    }

    (*(v53 + 8))(v33, v52);
  }

  else
  {
    v79 = v36;
    v54 = a1;
    sub_26119D904(a1, a2);
    v55 = sub_2611F0510();
    v56 = v81;
    sub_2611B8B74(v55, v81);
    v57 = sub_26121CA60();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v56, 1, v57) == 1)
    {
      sub_2611AC114(v56, &qword_27FE87700, &unk_2612203D0);
      v59 = v82;
      v60 = v83;
    }

    else
    {
      v64 = v14;
      v65 = *(v14 + 16);
      v66 = v17;
      v65(v17, v80, v13);
      v67 = sub_26121CA40();
      v68 = sub_26121CFB0();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v85 = v78;
        *v69 = 136315138;
        sub_2611C9C48();
        v77 = v68;
        v76 = sub_26121D4C0();
        v71 = v70;
        (*(v64 + 8))(v66, v13);
        v72 = sub_2611AA228(v76, v71, &v85);

        *(v69 + 4) = v72;
        _os_log_impl(&dword_261197000, v67, v77, "Logo: %s", v69, 0xCu);
        v73 = v78;
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x2666FCF20](v73, -1, -1);
        MEMORY[0x2666FCF20](v69, -1, -1);
      }

      else
      {

        (*(v64 + 8))(v66, v13);
      }

      v59 = v82;
      (*(v58 + 8))(v81, v57);
      v54 = a1;
      v60 = v83;
    }

    v85 = v84;
    v86 = v59;

    MEMORY[0x2666FBF20](46, 0xE100000000000000);
    v74 = sub_26121C560();
    MEMORY[0x2666FBF20](v74);

    (*(*v60 + 128))(v54, a2, v85, v86);

    sub_26119EF48(v54, a2);
  }
}

uint64_t sub_2611C9B68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_26121C690();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_26119EF48(v6, v11);
}

unint64_t sub_2611C9C48()
{
  result = qword_27FE87650;
  if (!qword_27FE87650)
  {
    sub_26121C5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87650);
  }

  return result;
}

uint64_t sub_2611C9CA0()
{
  v1 = sub_26121C5F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_2611C9D50(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = *(sub_26121C5F0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v4 + v11);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v4 + v12);

  sub_2611C9320(a1, a2, a3, a4, v4 + v10, v14, v15, v16);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2611C9EE4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_26121CD70();
    v13[0] = sub_26121CE40();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t AutoBugCaptureDomain.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26121D340();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2611CA064(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7665447974706D45;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xED00004449656369;
    }

    else
    {
      v4 = 0x800000026122D400;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000026122D420;
    v3 = 0xD000000000000012;
  }

  else if (a1 == 3)
  {
    v3 = 0x7865746E6F436F4ELL;
    v4 = 0xE900000000000074;
  }

  else
  {
    v3 = 0x6167656C65446F4ELL;
    v4 = 0xEA00000000006574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7665447974706D45;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xED00004449656369;
    }

    else
    {
      v5 = 0x800000026122D400;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000026122D420;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE900000000000074;
    if (v3 != 0x7865746E6F436F4ELL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEA00000000006574;
    if (v3 != 0x6167656C65446F4ELL)
    {
LABEL_31:
      v7 = sub_26121D4D0();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t AutoBugCaptureType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26121D340();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2611CA360()
{
  sub_26121D5B0();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611CA3E8()
{
  sub_26121D5B0();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611CA440@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26121D340();

  *a2 = v5 != 0;
  return result;
}

ProximityReaderCore::AutoBugCaptureSubType_optional __swiftcall AutoBugCaptureSubType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26121D340();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoBugCaptureSubType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7665447974706D45;
  v3 = 0xD000000000000012;
  v4 = 0x7865746E6F436F4ELL;
  if (v1 != 3)
  {
    v4 = 0x6167656C65446F4ELL;
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

uint64_t sub_2611CA5D4()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611CA6D8()
{
  *v0;
  *v0;
  sub_26121CD50();
}

uint64_t sub_2611CA7C8()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

void sub_2611CA8D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00004449656369;
  v4 = 0x7665447974706D45;
  v5 = 0x800000026122D420;
  v6 = 0xD000000000000012;
  v7 = 0xE900000000000074;
  v8 = 0x7865746E6F436F4ELL;
  if (v2 != 3)
  {
    v8 = 0x6167656C65446F4ELL;
    v7 = 0xEA00000000006574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000026122D400;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2611CA994()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_26121C760();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  sub_26121C730();
  v16 = OBJC_IVAR____TtC19ProximityReaderCoreP33_80F1E7BDC80F47D41FEC6722D8B1E6A222AutoBugCaptureReporter_lastReportedDate;
  swift_beginAccess();
  sub_2611ABE1C(v0 + v16, v7, &unk_27FE879C0, &unk_261221600);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2611AC114(v7, &unk_27FE879C0, &unk_261221600);
    (*(v9 + 32))(v5, v15, v8);
LABEL_6:
    v22 = v5;
    v21 = 1;
    (*(v9 + 56))(v22, 0, 1, v8);
    swift_beginAccess();
    sub_2611CCE48(v22, v0 + v16);
    swift_endAccess();
    return v21;
  }

  v24 = v5;
  v25 = v0;
  v17 = *(v9 + 32);
  v17(v13, v7, v8);
  sub_26121C6F0();
  v19 = v18;
  v20 = *(v9 + 8);
  v20(v13, v8);
  if (v19 >= 86400.0)
  {
    v5 = v24;
    v0 = v25;
    v17(v24, v15, v8);
    goto LABEL_6;
  }

  v20(v15, v8);
  return 0;
}

void sub_2611CAC64(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = *(a1 + 4);
  v60 = *(a1 + 1);
  v61 = v13;
  v15 = *(a1 + 5);
  if (sub_2611CA994())
  {
    v58 = v15;
    v16 = v1[2];
    v17 = sub_26121CC50();
    v18 = sub_26121CC50();
    v19 = sub_26121CC50();

    v20 = sub_26121CC50();
    v21 = sub_26121CC50();
    v56 = v12;
    v22 = v21;
    v59 = v16;
    v57 = [v16 signatureWithDomain:v17 type:v18 subType:v19 subtypeContext:v20 detectedProcess:v21 triggerThresholdValues:0];

    v23 = sub_2611F0560();
    sub_2611ABE1C(v23, v8, &qword_27FE87700, &unk_2612203D0);
    v24 = sub_26121CA60();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v8, 1, v24) == 1)
    {
      sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
      v26 = v58;
      v27 = v59;
    }

    else
    {
      v26 = v58;

      v31 = sub_26121CA40();
      v32 = sub_26121CFB0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v54 = v33;
        v55 = swift_slowAlloc();
        v67 = v26;
        v68 = v55;
        *v33 = 136315138;
        LOBYTE(aBlock) = v11;
        v63 = v60;
        v64 = v56;
        v65 = v61;
        v66 = v14;

        LODWORD(v61) = v32;
        v34 = AutoBugCaptureIssue.description.getter();
        v36 = v35;

        v37 = sub_2611AA228(v34, v36, &v68);

        v38 = v54;
        *(v54 + 1) = v37;
        v39 = v38;
        _os_log_impl(&dword_261197000, v31, v61, "Submitting snapshot request to ABC for signature: %s", v38, 0xCu);
        v40 = v55;
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x2666FCF20](v40, -1, -1);
        MEMORY[0x2666FCF20](v39, -1, -1);
      }

      v27 = v59;
      (*(v25 + 8))(v8, v24);
    }

    v41 = v57;
    if (v57 && (aBlock = 0, v42 = v57, sub_26121CB90(), v42, aBlock))
    {
      v43 = sub_26121CB80();

      if (!v26)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v43 = 0;
      if (!v26)
      {
LABEL_15:
        v66 = sub_2611CC410;
        v67 = v2;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        v64 = sub_2611CB708;
        v65 = &block_descriptor_31;
        v44 = _Block_copy(&aBlock);

        [v27 snapshotWithSignature:v43 duration:0 event:v26 payload:v44 reply:0.0];
        _Block_release(v44);

        return;
      }
    }

    sub_2611CB440(v26);
    v26 = sub_26121CB80();

    goto LABEL_15;
  }

  v28 = sub_2611F0560();
  sub_2611ABE1C(v28, v10, &qword_27FE87700, &unk_2612203D0);
  v29 = sub_26121CA60();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v10, 1, v29) == 1)
  {
    sub_2611AC114(v10, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {

    v45 = sub_26121CA40();
    v46 = sub_26121CFB0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v15;
      v68 = v59;
      *v47 = 136315138;
      LOBYTE(aBlock) = v11;
      v63 = v60;
      v64 = v12;
      v65 = v61;
      v66 = v14;

      LODWORD(v61) = v46;
      v48 = AutoBugCaptureIssue.description.getter();
      v50 = v49;

      v51 = sub_2611AA228(v48, v50, &v68);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_261197000, v45, v61, "Not reporting to AutoBugCapture because we are rate limited: %s", v47, 0xCu);
      v52 = v59;
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x2666FCF20](v52, -1, -1);
      MEMORY[0x2666FCF20](v47, -1, -1);
    }

    (*(v30 + 8))(v10, v29);
  }
}

uint64_t sub_2611CB440(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87678, &unk_261222710);
    v2 = sub_26121D310();
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
    sub_2611AC930(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2611B69DC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2611B69DC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2611B69DC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26121D190();
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
    result = sub_2611B69DC(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2611CB708(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_26121CBA0();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_2611CB798()
{
  sub_2611AC114(v0 + OBJC_IVAR____TtC19ProximityReaderCoreP33_80F1E7BDC80F47D41FEC6722D8B1E6A222AutoBugCaptureReporter_lastReportedDate, &unk_27FE879C0, &unk_261221600);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_2611CB814()
{
  v10 = sub_26121D010();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26121D000();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26121CAE0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2611CCEB8();
  sub_26121CAD0();
  v11 = MEMORY[0x277D84F90];
  sub_2611CCF04(&qword_27FE87680, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87688, &qword_261221FB8);
  sub_2611CCF4C(&qword_27FE87690, &qword_27FE87688, &qword_261221FB8);
  sub_26121D160();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_26121D050();
  qword_27FE8D818 = result;
  return result;
}

uint64_t sub_2611CBA64()
{
  v0 = type metadata accessor for AutoBugCaptureReporter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v4 = OBJC_IVAR____TtC19ProximityReaderCoreP33_80F1E7BDC80F47D41FEC6722D8B1E6A222AutoBugCaptureReporter_lastReportedDate;
  v5 = sub_26121C760();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_27FE8D828 = v3;
  return result;
}

uint64_t static AutoBugCaptureManager.sendIssue(_:)(_OWORD *a1)
{
  v2 = sub_26121CAC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26121CAE0();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v20[2] = a1[2];
  if (qword_27FE8D810 != -1)
  {
    swift_once();
  }

  v16 = qword_27FE8D818;
  v12 = swift_allocObject();
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  aBlock[4] = sub_2611CBE5C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2611A8D70;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);
  sub_2611CBED4(v20, v18);
  sub_26121CAD0();
  v18[0] = MEMORY[0x277D84F90];
  sub_2611CCF04(&qword_27FE87308, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87310, &qword_261221C80);
  sub_2611CCF4C(&qword_27FE87318, &qword_27FE87310, &qword_261221C80);
  sub_26121D160();
  MEMORY[0x2666FC1C0](0, v10, v6, v14);
  _Block_release(v14);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v17);
}

uint64_t sub_2611CBE14()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_2611CBE5C()
{
  if (qword_27FE8D820 != -1)
  {
    swift_once();
  }

  sub_2611CAC64((v0 + 16));
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AutoBugCaptureIssue.subTypeContext.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AutoBugCaptureIssue.process.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void AutoBugCaptureIssue.init(type:subType:subTypeContext:process:payload:)(_BYTE *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
}

unint64_t AutoBugCaptureIssue.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = 0xED00004449656369;
  v6 = 0x800000026122D420;
  v7 = 0xD000000000000012;
  v8 = 0xE900000000000074;
  v9 = 0x7865746E6F436F4ELL;
  if (v2 != 3)
  {
    v9 = 0x6167656C65446F4ELL;
    v8 = 0xEA00000000006574;
  }

  if (v2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*v0)
  {
    v1 = 0x7665447974706D45;
  }

  else
  {
    v5 = 0x800000026122D400;
  }

  if (*v0 <= 1u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 1u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  MEMORY[0x2666FBF20](v10, v11);

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](v3, v4);
  return 0xD00000000000001ALL;
}

unint64_t sub_2611CC0D8()
{
  result = qword_27FE87658;
  if (!qword_27FE87658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87658);
  }

  return result;
}

unint64_t sub_2611CC130()
{
  result = qword_27FE87660;
  if (!qword_27FE87660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87660);
  }

  return result;
}

unint64_t sub_2611CC188()
{
  result = qword_27FE87668;
  if (!qword_27FE87668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87668);
  }

  return result;
}

uint64_t type metadata accessor for AutoBugCaptureReporter()
{
  result = qword_27FE8DD38;
  if (!qword_27FE8DD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2611CC264()
{
  sub_2611CC304();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2611CC304()
{
  if (!qword_27FE87670)
  {
    sub_26121C760();
    v0 = sub_26121D0C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE87670);
    }
  }
}

uint64_t sub_2611CC36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2611CC3B4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2611CC414(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26121D190();

  return sub_2611CC458(a1, v5);
}

unint64_t sub_2611CC458(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2611CC520(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2666FC320](v9, a1);
      sub_2611CC57C(v9);
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

uint64_t sub_2611CC5D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v61 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = &v61 - v11;
  if (!a1)
  {
    return result;
  }

  v13 = *MEMORY[0x277D6B198];
  v64 = sub_26121CC80();
  v65 = v14;
  sub_26121D1B0();
  if (!*(a1 + 16) || (v15 = sub_2611CC414(v66), (v16 & 1) == 0))
  {
    sub_2611CC57C(v66);
    goto LABEL_11;
  }

  sub_2611AC930(*(a1 + 56) + 32 * v15, v67);
  sub_2611CC57C(v66);
  if ((swift_dynamicCast() & 1) == 0 || v64 != 1)
  {
LABEL_11:
    v23 = *MEMORY[0x277D6B168];
    v64 = sub_26121CC80();
    v65 = v24;
    sub_26121D1B0();
    if (*(a1 + 16) && (v25 = sub_2611CC414(v66), (v26 & 1) != 0))
    {
      sub_2611AC930(*(a1 + 56) + 32 * v25, v67);
      sub_2611CC57C(v66);
      if (swift_dynamicCast())
      {
        v27 = v64;
        v28 = *MEMORY[0x277D6B180];
        v64 = sub_26121CC80();
        v65 = v29;
        sub_26121D1B0();
        if (*(a1 + 16) && (v30 = sub_2611CC414(v66), (v31 & 1) != 0))
        {
          sub_2611AC930(*(a1 + 56) + 32 * v30, v67);
          sub_2611CC57C(v66);
          if (swift_dynamicCast())
          {
            v32 = v64;
            v33 = v65;
            goto LABEL_28;
          }
        }

        else
        {
          sub_2611CC57C(v66);
        }

        v32 = 0x6E776F6E6B6E55;
        v33 = 0xE700000000000000;
LABEL_28:
        v41 = 0x6465746365707865;
        v42 = 0xE800000000000000;
        if (v27 != *MEMORY[0x277D6B040] && v27 != *MEMORY[0x277D6B058])
        {
          if (v27 == *MEMORY[0x277D6B038] || v27 == *MEMORY[0x277D6B088])
          {
            v42 = 0xE800000000000000;
          }

          else
          {
            v41 = 0x7463657078656E75;
            v42 = 0xEA00000000006465;
          }
        }

        v44 = sub_2611F0560();
        sub_2611ABE1C(v44, v9, &qword_27FE87700, &unk_2612203D0);
        v45 = sub_26121CA60();
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(v9, 1, v45) != 1)
        {
          v63 = v32;

          v47 = sub_26121CA40();
          v48 = sub_26121CFB0();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v66[0] = v62;
            *v49 = 136315650;
            v50 = sub_2611AA228(v41, v42, v66);

            *(v49 + 4) = v50;
            *(v49 + 12) = 2048;
            *(v49 + 14) = v27;
            *(v49 + 22) = 2080;
            v51 = sub_2611AA228(v63, v33, v66);

            *(v49 + 24) = v51;
            _os_log_impl(&dword_261197000, v47, v48, "Diagnostic reporter snapshot rejected with %s reason: %ld (%s)", v49, 0x20u);
            v52 = v62;
            swift_arrayDestroy();
            MEMORY[0x2666FCF20](v52, -1, -1);
            MEMORY[0x2666FCF20](v49, -1, -1);
          }

          else
          {
          }

          return (*(v46 + 8))(v9, v45);
        }

        v37 = v9;
        return sub_2611AC114(v37, &qword_27FE87700, &unk_2612203D0);
      }
    }

    else
    {
      sub_2611CC57C(v66);
    }

    v34 = sub_2611F0560();
    sub_2611ABE1C(v34, v6, &qword_27FE87700, &unk_2612203D0);
    v35 = sub_26121CA60();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v6, 1, v35) != 1)
    {
      v38 = sub_26121CA40();
      v39 = sub_26121CFB0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261197000, v38, v39, "Diagnostic reporter snapshot rejected with unknown reason", v40, 2u);
        MEMORY[0x2666FCF20](v40, -1, -1);
      }

      return (*(v36 + 8))(v6, v35);
    }

    v37 = v6;
    return sub_2611AC114(v37, &qword_27FE87700, &unk_2612203D0);
  }

  v17 = *MEMORY[0x277D6B188];
  v64 = sub_26121CC80();
  v65 = v18;
  sub_26121D1B0();
  if (!*(a1 + 16) || (v19 = sub_2611CC414(v66), (v20 & 1) == 0))
  {
    sub_2611CC57C(v66);
    goto LABEL_41;
  }

  sub_2611AC930(*(a1 + 56) + 32 * v19, v67);
  sub_2611CC57C(v66);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    v22 = 0x6E776F6E6B6E55;
    v21 = 0xE700000000000000;
    goto LABEL_42;
  }

  v22 = v64;
  v21 = v65;
LABEL_42:
  v53 = sub_2611F0560();
  sub_2611ABE1C(v53, v12, &qword_27FE87700, &unk_2612203D0);
  v54 = sub_26121CA60();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v12, 1, v54) == 1)
  {

    v37 = v12;
    return sub_2611AC114(v37, &qword_27FE87700, &unk_2612203D0);
  }

  v56 = sub_26121CA40();
  v57 = sub_26121CFB0();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66[0] = v59;
    *v58 = 136315138;
    v60 = sub_2611AA228(v22, v21, v66);

    *(v58 + 4) = v60;
    _os_log_impl(&dword_261197000, v56, v57, "Diagnostic reporter snapshot accepted with sessionID [%s]", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x2666FCF20](v59, -1, -1);
    MEMORY[0x2666FCF20](v58, -1, -1);
  }

  else
  {
  }

  return (*(v55 + 8))(v12, v54);
}

uint64_t sub_2611CCE48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2611CCEB8()
{
  result = qword_27FE872E8;
  if (!qword_27FE872E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE872E8);
  }

  return result;
}

uint64_t sub_2611CCF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2611CCF4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

Swift::Void __swiftcall notificationCallback(notification:responseCode:)(CFUserNotificationRef_optional notification, Swift::UInt responseCode)
{
  v34 = responseCode;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = sub_2611F043C();
  sub_2611ABE1C(v13, v12, &qword_27FE87700, &unk_2612203D0);
  v14 = sub_26121CA60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_2611AC114(v12, &qword_27FE87700, &unk_2612203D0);
    if (notification.value)
    {
LABEL_3:
      v17 = qword_27FE8DD50;
      v18 = notification.value;
      if (v17 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = sub_2611CE88C(v18);
      swift_endAccess();
      if (v19)
      {
        v35[0] = v34 & 3;
        v19(v35);
        sub_2611CE920(v19);

        return;
      }

      sub_2611ABE1C(v13, v10, &qword_27FE87700, &unk_2612203D0);
      if (v16(v10, 1, v14) == 1)
      {

        v25 = v10;
        goto LABEL_14;
      }

      v29 = sub_26121CA40();
      v30 = sub_26121CFC0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261197000, v29, v30, "BaselineErrorDialog callback object not found", v31, 2u);
        MEMORY[0x2666FCF20](v31, -1, -1);
      }

      (*(v15 + 8))(v10, v14);
      return;
    }
  }

  else
  {
    v33 = v10;
    v20 = sub_26121CA40();
    v21 = sub_26121CFD0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = v15;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_261197000, v20, v21, "notificationCallback(notification:responseCode:)", v22, 2u);
      v24 = v23;
      v15 = v32;
      MEMORY[0x2666FCF20](v24, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    v10 = v33;
    if (notification.value)
    {
      goto LABEL_3;
    }
  }

  sub_2611ABE1C(v13, v7, &qword_27FE87700, &unk_2612203D0);
  if (v16(v7, 1, v14) == 1)
  {
    v25 = v7;
LABEL_14:
    sub_2611AC114(v25, &qword_27FE87700, &unk_2612203D0);
    return;
  }

  v26 = sub_26121CA40();
  v27 = sub_26121CFC0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_261197000, v26, v27, "BaselineErrorDialog callback notification is nil", v28, 2u);
    MEMORY[0x2666FCF20](v28, -1, -1);
  }

  (*(v15 + 8))(v7, v14);
}

unint64_t sub_2611CD40C()
{
  result = sub_2611CF13C(MEMORY[0x277D84F90]);
  qword_27FE8DD58 = result;
  return result;
}

void *BaselineErrorDialog.__allocating_init(localizedMessage:)(uint64_t countAndFlagsBits, void *object)
{
  result = swift_allocObject();
  result[2] = 0;
  if (!object)
  {
    v5 = result;
    v6 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(result);
    v8 = v7;
    v9._countAndFlagsBits = sub_2611AE074();
    v11 = v10;
    v12._countAndFlagsBits = v6;
    v12._object = v8;
    v9._object = v11;
    v13 = String.localized(table:comment:)(v12, v9);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;

    result = v5;
  }

  result[3] = countAndFlagsBits;
  result[4] = object;
  return result;
}

void *BaselineErrorDialog.init(localizedMessage:)(uint64_t countAndFlagsBits, void *object)
{
  v2[2] = 0;
  if (!object)
  {
    v3 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(countAndFlagsBits);
    v5 = v4;
    v6._countAndFlagsBits = sub_2611AE074();
    v8 = v7;
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v6._object = v8;
    v10 = String.localized(table:comment:)(v9, v6);

    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
  }

  v2[3] = countAndFlagsBits;
  v2[4] = object;
  return v2;
}

void sub_2611CD584()
{
  v1 = v0;
  v97 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v92 = &v87 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v87 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v87 - v12;
  v14 = sub_2611F043C();
  sub_2611ABE1C(v14, v13, &qword_27FE87700, &unk_2612203D0);
  v15 = sub_26121CA60();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v91 = v11;
  if (v18 == 1)
  {
    sub_2611AC114(v13, &qword_27FE87700, &unk_2612203D0);
    if (v1[2])
    {
LABEL_3:
      sub_2611ABE1C(v14, v6, &qword_27FE87700, &unk_2612203D0);
      if (v17(v6, 1, v15) == 1)
      {
        v19 = v6;
LABEL_11:
        sub_2611AC114(v19, &qword_27FE87700, &unk_2612203D0);
        goto LABEL_26;
      }

      v72 = sub_26121CA40();
      v73 = sub_26121CFD0();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_261197000, v72, v73, "Already showing, don't show another one", v74, 2u);
        MEMORY[0x2666FCF20](v74, -1, -1);
      }

      (*(v16 + 8))(v6, v15);
      goto LABEL_26;
    }
  }

  else
  {
    v20 = sub_26119DE2C();
    v93 = v16;
    v21 = v17;
    v22 = v20;
    v23 = sub_2611AE074();
    v24 = v22 & 1;
    v17 = v21;
    v16 = v93;
    sub_2611F0778(v24, v1, 0x2928776F6873, 0xE600000000000000, v23, v25);

    (*(v16 + 8))(v13, v15);
    if (v1[2])
    {
      goto LABEL_3;
    }
  }

  v88 = v14;
  v89 = v17;
  v93 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87698, &qword_261221FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261221FC0;
  v96 = *MEMORY[0x277CBF188];
  v27 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876A0, &qword_261221FF0);
  sub_2611CE930();
  v28 = sub_26121D1B0();
  v29 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v28);
  v90 = v15;
  v31 = v30;
  v32._countAndFlagsBits = sub_2611AE074();
  v34 = v33;
  v35._countAndFlagsBits = v29;
  v35._object = v31;
  v32._object = v34;
  v36 = String.localized(table:comment:)(v35, v32);

  v37 = MEMORY[0x277D837D0];
  *(inited + 96) = MEMORY[0x277D837D0];
  v38 = v37;
  *(inited + 72) = v36;
  v96 = *MEMORY[0x277CBF198];
  v39 = v96;
  sub_26121D1B0();
  v87 = v1;
  v40 = v1[3];
  v41 = v1[4];
  *(inited + 168) = v38;
  v42 = v38;
  *(inited + 144) = v40;
  *(inited + 152) = v41;
  v96 = *MEMORY[0x277CBF1E8];
  v43 = v96;

  v44 = sub_26121D1B0();
  v45 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v44);
  v47 = v46;
  v48._countAndFlagsBits = sub_2611AE074();
  v50 = v49;
  v51._countAndFlagsBits = v45;
  v51._object = v47;
  v48._object = v50;
  v52 = String.localized(table:comment:)(v51, v48);

  *(inited + 240) = v42;
  *(inited + 216) = v52;
  v96 = *MEMORY[0x277CBF1C0];
  v53 = v96;
  v54 = sub_26121D1B0();
  v55 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ(v54);
  v57 = v56;
  v58._countAndFlagsBits = sub_2611AE074();
  v60 = v59;
  v61._countAndFlagsBits = v55;
  v61._object = v57;
  v58._object = v60;
  v62 = String.localized(table:comment:)(v61, v58);
  v63 = v92;

  v64 = v90;

  *(inited + 312) = v42;
  *(inited + 288) = v62;
  sub_2611CF24C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876B8, &qword_261221FF8);
  swift_arrayDestroy();
  v95 = 0;
  v65 = sub_26121CB80();

  v66 = CFUserNotificationCreate(0, 0.0, 3uLL, &v95, v65);

  v67 = v87[2];
  v68 = v87;
  v87[2] = v66;
  v69 = v66;

  if (v69)
  {
    if (!v95)
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v69, sub_2611CDED8, 0);
      v80 = v91;
      sub_2611ABE1C(v88, v91, &qword_27FE87700, &unk_2612203D0);
      if (v89(v80, 1, v64) == 1)
      {
        sub_2611AC114(v80, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v81 = sub_26121CA40();
        v82 = sub_26121CFD0();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_261197000, v81, v82, "blockForNotification", v83, 2u);
          MEMORY[0x2666FCF20](v83, -1, -1);
        }

        (*(v93 + 8))(v80, v64);
      }

      if (qword_27FE8DD50 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = qword_27FE8DD58;
      qword_27FE8DD58 = 0x8000000000000000;
      sub_2611CEFDC(sub_2611CF388, v68, v69, isUniquelyReferenced_nonNull_native);
      qword_27FE8DD58 = v94;
      swift_endAccess();
      v85 = CFRunLoopGetMain();
      CFRunLoopAddSource(v85, RunLoopSource, *MEMORY[0x277CBF048]);

      goto LABEL_26;
    }
  }

  sub_2611ABE1C(v88, v63, &qword_27FE87700, &unk_2612203D0);
  v70 = v89(v63, 1, v64);
  v71 = v93;
  if (v70 == 1)
  {
    v19 = v63;
    goto LABEL_11;
  }

  v75 = sub_26121CA40();
  v76 = sub_26121CFC0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 67109120;
    swift_beginAccess();
    *(v77 + 4) = v95;
    _os_log_impl(&dword_261197000, v75, v76, "Could not create baselineErrorDialog: %d", v77, 8u);
    v78 = v77;
    v63 = v92;
    MEMORY[0x2666FCF20](v78, -1, -1);
  }

  (*(v71 + 8))(v63, v64);
LABEL_26:
  v86 = *MEMORY[0x277D85DE8];
}

void sub_2611CDED8(void *a1, Swift::UInt a2)
{
  v4 = a1;
  notificationCallback(notification:responseCode:)(a1, a2);
}

void sub_2611CDF2C(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v58 - v6;
  v7 = sub_26121C5F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v58 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v58 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - v21;
  v23 = *a1;
  v24 = sub_2611F043C();
  sub_2611ABE1C(v24, v22, &qword_27FE87700, &unk_2612203D0);
  v25 = sub_26121CA60();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v22, 1, v25) == 1)
  {
    sub_2611AC114(v22, &qword_27FE87700, &unk_2612203D0);
    if (v23 != 3)
    {
      goto LABEL_3;
    }

LABEL_10:
    v37 = v65;
    sub_2611ABE1C(v24, v65, &qword_27FE87700, &unk_2612203D0);
    if (v27(v37, 1, v25) == 1)
    {
LABEL_14:
      sub_2611AC114(v37, &qword_27FE87700, &unk_2612203D0);
      goto LABEL_30;
    }

    v38 = sub_26121CA40();
    v39 = sub_26121CFD0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v26;
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "Cancelled";
LABEL_19:
      _os_log_impl(&dword_261197000, v38, v39, v42, v41, 2u);
      v44 = v41;
      v26 = v40;
      MEMORY[0x2666FCF20](v44, -1, -1);
    }

LABEL_20:

    (*(v26 + 8))(v37, v25);
    goto LABEL_30;
  }

  v60 = v8;
  v61 = v7;
  v30 = v26;
  v31 = v25;
  v32 = sub_26121CA40();
  v33 = sub_26121CFD0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v59 = a2;
    v35 = v34;
    *v34 = 134217984;
    *(v34 + 4) = v23;
    _os_log_impl(&dword_261197000, v32, v33, "blockForNotification response = %lu", v34, 0xCu);
    v36 = v35;
    a2 = v59;
    MEMORY[0x2666FCF20](v36, -1, -1);
  }

  v26 = v30;
  v25 = v31;
  (*(v30 + 8))(v22, v31);
  v8 = v60;
  v7 = v61;
  if (v23 == 3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v23 == 1)
  {
    v37 = v63;
    sub_2611ABE1C(v24, v63, &qword_27FE87700, &unk_2612203D0);
    if (v27(v37, 1, v25) == 1)
    {
      goto LABEL_14;
    }

    v38 = sub_26121CA40();
    v39 = sub_26121CFD0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v26;
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "Not Now";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v23)
  {
    v43 = v66;
    sub_2611ABE1C(v24, v66, &qword_27FE87700, &unk_2612203D0);
    if (v27(v43, 1, v25) == 1)
    {
      sub_2611AC114(v43, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v51 = sub_26121CA40();
      v52 = sub_26121CFC0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = v26;
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = v23;
        _os_log_impl(&dword_261197000, v51, v52, "Unexpected baselineErrorDialog responseCode: %lu", v54, 0xCu);
        v55 = v54;
        v26 = v53;
        MEMORY[0x2666FCF20](v55, -1, -1);
      }

      (*(v26 + 8))(v43, v25);
    }
  }

  else
  {
    v28 = sub_2611F04C0();
    v29 = v64;
    sub_2611ABE1C(v28, v64, &qword_27FE87700, &unk_2612203D0);
    if (v27(v29, 1, v25) == 1)
    {
      sub_2611AC114(v29, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v45 = sub_26121CA40();
      v46 = sub_26121CFD0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v26;
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_261197000, v45, v46, "Install", v48, 2u);
        v49 = v48;
        v26 = v47;
        MEMORY[0x2666FCF20](v49, -1, -1);
      }

      (*(v26 + 8))(v29, v25);
    }

    v50 = v67;
    sub_26121C5D0();
    if ((*(v8 + 48))(v50, 1, v7) == 1)
    {
      sub_2611AC114(v50, &qword_27FE872F0, &unk_261222100);
    }

    else
    {
      v56 = v62;
      (*(v8 + 32))(v62, v50, v7);
      type metadata accessor for Utilities();
      sub_2611A371C(v56, 0);
      (*(v8 + 8))(v56, v7);
    }
  }

LABEL_30:
  v57 = *(a2 + 16);
  *(a2 + 16) = 0;
}

uint64_t BaselineErrorDialog.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t BaselineErrorDialog.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2611CE714()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26121C9F0();
}

uint64_t sub_2611CE760()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26121C9E0();
}

uint64_t sub_2611CE7B8()
{
  sub_26121D5B0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_26121C9E0();
  return sub_26121D5D0();
}

uint64_t sub_2611CE820(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_26121C9D0();
}

uint64_t sub_2611CE88C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2611CE9E4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2611CEE78();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_2611CEC9C(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_2611CE920(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2611CE930()
{
  result = qword_27FE876A8;
  if (!qword_27FE876A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE876A0, &qword_261221FF0);
    sub_2611CF480(&qword_27FE876B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE876A8);
  }

  return result;
}

unint64_t sub_2611CE9E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_26121D5A0();

  return sub_2611CEE0C(a1, v4);
}

uint64_t sub_2611CEA28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876D8, &qword_2612220F8);
  result = sub_26121D300();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = sub_26121D5A0();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2611CEC9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26121D180() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_26121D5A0();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2611CEE0C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_2611CEE78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876D8, &qword_2612220F8);
  v2 = *v0;
  v3 = sub_26121D2F0();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

unint64_t sub_2611CEFDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2611CE9E4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2611CEA28(v16, a4 & 1);
      v20 = *v5;
      result = sub_2611CE9E4(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_26121D520();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2611CEE78();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t sub_2611CF13C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876D8, &qword_2612220F8);
  v3 = sub_26121D310();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_2611CE9E4(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_2611CE9E4(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2611CF24C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87678, &unk_261222710);
    v3 = sub_26121D310();
    v4 = a1 + 32;

    while (1)
    {
      sub_2611ABE1C(v4, v13, &qword_27FE876B8, &qword_261221FF8);
      result = sub_2611CC414(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2611B69DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2611CF480(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ResponseDataType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611CF4DC()
{
  result = qword_27FE876E0;
  if (!qword_27FE876E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE876E0);
  }

  return result;
}

unint64_t sub_2611CF560@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611D0C38(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t CardReaderErrorType.description.getter(uint64_t a1)
{
  result = 0x776F6C6C41746F6ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x726F707075736E75;
    case 2:
      return 0x456B726F7774656ELL;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0xD000000000000016;
    case 5:
      return 0x7964616552746F6ELL;
    case 6:
      return 0xD000000000000010;
    case 7:
      return 0x4665726170657270;
    case 8:
      return 0x4565726170657270;
    case 9:
    case 24:
      return 0xD000000000000012;
    case 10:
      return 0x6E656B6F54707370;
    case 11:
      return 0xD000000000000010;
    case 12:
    case 26:
    case 28:
      v3 = 5;
      goto LABEL_28;
    case 13:
    case 27:
      return 0xD000000000000011;
    case 14:
      return 0x6142656369766564;
    case 15:
      return 0xD000000000000017;
    case 16:
      return 2037609826;
    case 17:
      return 0xD000000000000010;
    case 18:
    case 19:
      return 0xD000000000000014;
    case 20:
      return 0xD000000000000022;
    case 21:
      return 0x746E61686372656DLL;
    case 22:
      return 0x4D64696C61766E69;
    case 23:
      v3 = 9;
LABEL_28:
      result = v3 | 0xD000000000000010;
      break;
    case 25:
      result = 0x6C41746F4E666173;
      break;
    case 29:
      result = 0x7272454244666173;
      break;
    case 30:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      sub_26121D510();
      __break(1u);
      JUMPOUT(0x2611CF92CLL);
  }

  return result;
}

id CardReaderErrorInternal.__allocating_init(_:userInfo:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = a1;
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CardReaderErrorInternal.init(_:userInfo:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = a1;
  *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CardReaderErrorInternal();
  return objc_msgSendSuper2(&v4, sel_init);
}

id CardReaderErrorInternal.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_26121CC50();
  v9 = [a1 decodeIntegerForKey_];

  v10 = sub_2611D0C38(v9);
  if (v11)
  {
    v12 = sub_2611F02B4();
    sub_2611ABE1C(v12, v7, &qword_27FE87700, &unk_2612203D0);
    v13 = sub_26121CA60();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v7, 1, v13) == 1)
    {

      sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v20 = sub_26121CA40();
      v21 = sub_26121CFC0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261197000, v20, v21, "CardReaderErrorInternal | Failed to decode object", v22, 2u);
        MEMORY[0x2666FCF20](v22, -1, -1);
      }

      (*(v14 + 8))(v7, v13);
    }

    type metadata accessor for CardReaderErrorInternal();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B00, &qword_2612221F8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2612203B0;
    v16 = sub_2611AC98C(0, &qword_27FE870A0, 0x277CCACA8);
    *(v15 + 32) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2612221E0;
    *(v17 + 32) = v16;
    *(v17 + 40) = sub_2611AC98C(0, &qword_27FE87708, 0x277CCABB0);
    v18 = sub_26121D080();

    if (v18)
    {
      v19 = sub_2611CFE70(v18);
    }

    else
    {
      v19 = 0;
    }

    *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = v19;
    v24 = type metadata accessor for CardReaderErrorInternal();
    v26.receiver = v2;
    v26.super_class = v24;
    v25 = objc_msgSendSuper2(&v26, sel_init);

    return v25;
  }
}

unint64_t sub_2611CFE70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v2 = sub_26121D310();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_2611CC520(*(a1 + 48) + 40 * v14, v29);
        sub_2611AC930(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_2611CC520(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2611AC930(v27 + 8, v22);
        sub_2611AC114(v26, &unk_27FE87750, &unk_2612223E0);
        v23 = v20;
        sub_2611B69DC(v22, v24);
        v15 = v23;
        sub_2611B69DC(v24, v25);
        sub_2611B69DC(v25, &v23);
        result = sub_2611B3970(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2611B69DC(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_2611B69DC(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_2611AC114(v26, &unk_27FE87750, &unk_2612223E0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id CardReaderErrorInternal.init(_bridgedNSError:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 domain];
  v5 = sub_26121CC80();
  v7 = v6;

  sub_2611D0DA4(&qword_27FE87710, v8, type metadata accessor for CardReaderErrorInternal);
  if (v5 == sub_26121C390() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_26121D4D0();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v12 = sub_2611D0C38([a1 code]);
  if (v13)
  {
LABEL_9:

    type metadata accessor for CardReaderErrorInternal();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = v12;
  v15 = [a1 userInfo];
  v16 = sub_26121CBA0();

  *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = v16;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for CardReaderErrorInternal();
  v17 = objc_msgSendSuper2(&v18, sel_init);

  return v17;
}

void sub_2611D036C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code);
  v4 = sub_26121CC50();
  [a1 encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo))
  {

    v5 = sub_26121CB80();
    v6 = sub_26121CC50();
    [a1 encodeObject:v5 forKey:v6];
  }
}

unint64_t sub_2611D054C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code);
  if (v1 <= 13)
  {
    if (v1 != 7)
    {
      if (v1 == 9)
      {
        v8[0] = 0xD000000000000012;
        v8[1] = 0x800000026122D800;
        v3 = 0xD000000000000019;
        v2 = 0x800000026122D610;
        goto LABEL_13;
      }

      return CardReaderErrorType.description.getter(v1);
    }

    v5 = 0x4665726170657270;
    v6 = 0xED000064656C6961;
LABEL_12:
    v8[0] = v5;
    v8[1] = v6;
    v3 = 0x746544726F727265;
    v2 = 0xEC000000736C6961;
    goto LABEL_13;
  }

  if (v1 != 14)
  {
    if (v1 != 29)
    {
      if (v1 == 30)
      {
        strcpy(v8, "unknown");
        v8[1] = 0xE700000000000000;
        v2 = 0x800000026122D630;
        v3 = 0xD000000000000010;
LABEL_13:
        v4 = sub_2611D0888(v3, v2);
        goto LABEL_14;
      }

      return CardReaderErrorType.description.getter(v1);
    }

    v5 = 0x7272454244666173;
    v6 = 0xEA0000000000726FLL;
    goto LABEL_12;
  }

  strcpy(v8, "deviceBanned");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v4 = sub_2611D06C4();
LABEL_14:
  MEMORY[0x2666FBF20](v4);

  return v8[0];
}

uint64_t sub_2611D06C4()
{
  v1 = sub_26121C760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  if (!v6)
  {
    return 0;
  }

  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_2611B3970(0xD000000000000011, 0x800000026122D5F0);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_2611AC930(*(v6 + 56) + 32 * v7, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v12[0] = 40;
  v12[1] = 0xE100000000000000;
  sub_26121C710();
  sub_2611D0DA4(&qword_27FE87740, 255, MEMORY[0x277CC9578]);
  v9 = sub_26121D4C0();
  MEMORY[0x2666FBF20](v9);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x2666FBF20](41, 0xE100000000000000);
  return v12[0];
}

uint64_t sub_2611D0888(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  if (v3)
  {
    if (*(v3 + 16) && (v4 = sub_2611B3970(a1, a2), (v5 & 1) != 0))
    {
      sub_2611AC930(*(v3 + 56) + 32 * v4, v10);
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    sub_2611ABE1C(v10, &v8, &qword_27FE87B10, &qword_26121F890);
    if (v9)
    {
      sub_2611B69DC(&v8, v7);
      MEMORY[0x2666FBF20](40, 0xE100000000000000);
      sub_26121D2D0();
      MEMORY[0x2666FBF20](41, 0xE100000000000000);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_2611AC114(v10, &qword_27FE87B10, &qword_26121F890);
    }

    else
    {
      sub_2611AC114(v10, &qword_27FE87B10, &qword_26121F890);
    }
  }

  return 0;
}

id CardReaderErrorInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CardReaderErrorInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardReaderErrorInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611D0A90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 112))(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2611D0AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_2611D0B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

unint64_t CardReaderErrorInternal.errorUserInfo.getter()
{
  if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo))
  {
    v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  }

  else
  {
    v1 = sub_2611C1B98(MEMORY[0x277D84F90]);
  }

  return v1;
}

unint64_t sub_2611D0BE4()
{
  if (*(*v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo))
  {
    v1 = *(*v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  }

  else
  {
    v1 = sub_2611C1B98(MEMORY[0x277D84F90]);
  }

  return v1;
}

unint64_t sub_2611D0C38(unint64_t result)
{
  if (result > 0x1E)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611D0C70()
{
  result = qword_27FE87718;
  if (!qword_27FE87718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87718);
  }

  return result;
}

uint64_t sub_2611D0DA4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t AnalyticsError.hashValue.getter()
{
  sub_26121D5B0();
  MEMORY[0x2666FC740](0);
  return sub_26121D5D0();
}

uint64_t sub_2611D0E70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  result = swift_initStackObject();
  *(result + 16) = xmmword_2612223F0;
  v1 = *MEMORY[0x277D44040];
  if (!*MEMORY[0x277D44040])
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *MEMORY[0x277D44040];
  *(v2 + 32) = sub_26121CC80();
  *(v2 + 40) = v4;
  v5 = v1;
  result = sub_2611999FC();
  v6 = *result;
  *(v2 + 72) = MEMORY[0x277D839F8];
  *(v2 + 48) = v6;
  v7 = *MEMORY[0x277D44080];
  if (!*MEMORY[0x277D44080])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *MEMORY[0x277D44080];
  *(v2 + 80) = sub_26121CC80();
  *(v2 + 88) = v9;
  v10 = v7;
  result = sub_261199A10();
  v11 = *result;
  *(v2 + 120) = MEMORY[0x277D84CC0];
  *(v2 + 96) = v11;
  if (*MEMORY[0x277D44010])
  {
    v12 = *MEMORY[0x277D44010];

    v13 = sub_26121CC80();
    v15 = v14;

    *(v2 + 128) = v13;
    *(v2 + 136) = v15;
    *(v2 + 168) = MEMORY[0x277D839B0];
    *(v2 + 144) = 1;
    v16 = sub_2611C1B98(v2);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
    result = swift_arrayDestroy();
    qword_27FE8E368 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AnalyticsReporter.serviceName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AnalyticsReporter.sessionID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AnalyticsReporter.hierarchyToken.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AnalyticsReporter.creationTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnalyticsReporter() + 32);
  v4 = sub_26121C760();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AnalyticsReporter()
{
  result = qword_27FE8E8F0;
  if (!qword_27FE8E8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnalyticsReporter.sessionDuration.getter()
{
  v0 = sub_26121C760();
  v23 = *(v0 - 8);
  v24 = v0;
  v1 = *(v23 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26121C990();
  v21 = *(v4 - 8);
  v22 = v4;
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26121C430();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87560, &unk_261222400);
  v12 = sub_26121C980();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2612203B0;
  (*(v13 + 104))(v16 + v15, *MEMORY[0x277CC99A8], v12);
  sub_2611C1D10(v16);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
  swift_deallocClassInstance();
  LODWORD(v13) = *(type metadata accessor for AnalyticsReporter() + 32);
  sub_26121C750();
  sub_26121C940();

  (*(v23 + 8))(v3, v24);
  (*(v21 + 8))(v7, v22);
  v17 = sub_26121C410();
  (*(v8 + 8))(v11, v20);
  return v17;
}

uint64_t sub_2611D147C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E65636976726573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6863726172656968;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0xEE006E656B6F5479;
    }

    else
    {
      v6 = 0x800000026122D960;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x496E6F6973736573;
    }

    else
    {
      v5 = 0x4E65636976726573;
    }

    if (v4)
    {
      v6 = 0xE900000000000044;
    }

    else
    {
      v6 = 0xEB00000000656D61;
    }
  }

  v7 = 0x6863726172656968;
  v8 = 0x800000026122D960;
  if (a2 == 2)
  {
    v8 = 0xEE006E656B6F5479;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 0x496E6F6973736573;
    v2 = 0xE900000000000044;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26121D4D0();
  }

  return v11 & 1;
}

uint64_t sub_2611D15E4()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611D16C4()
{
  *v0;
  *v0;
  *v0;
  sub_26121CD50();
}

uint64_t sub_2611D1790()
{
  v1 = *v0;
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611D186C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2611D4694();
  *a2 = result;
  return result;
}

void sub_2611D189C(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E65636976726573;
  v4 = 0xEE006E656B6F5479;
  v5 = 0x6863726172656968;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000026122D960;
  }

  if (*v1)
  {
    v3 = 0x496E6F6973736573;
    v2 = 0xE900000000000044;
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

unint64_t sub_2611D1938()
{
  v1 = 0x4E65636976726573;
  v2 = 0x6863726172656968;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
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

uint64_t sub_2611D19D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2611D4694();
  *a1 = result;
  return result;
}

uint64_t sub_2611D1A04(uint64_t a1)
{
  v2 = sub_2611D46E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D1A40(uint64_t a1)
{
  v2 = sub_2611D46E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnalyticsReporter.init(serviceName:hierarchyToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a4;
  v89 = a3;
  v90 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = v84 - v9;
  v10 = sub_26121C7B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnalyticsReporter();
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26121C7A0();
  v19 = _s10Foundation4UUIDV19ProximityReaderCoreE10toFileNameSSyF_0();
  v21 = v20;
  v22 = *(v11 + 8);
  v22(v14, v10);
  v18[3] = v19;
  v18[4] = v21;
  v84[2] = v21;
  v23 = a1;
  v18[1] = a1;
  v18[2] = a2;
  v88 = v15;
  v24 = *(v15 + 32);

  v85 = v24;
  v93 = v18;
  v25 = v92;
  sub_26121C750();
  if (v25)
  {
    v26 = v25;
    v27 = v89;
  }

  else
  {
    sub_26121C7A0();
    v27 = _s10Foundation4UUIDV19ProximityReaderCoreE10toFileNameSSyF_0();
    v26 = v28;
    v22(v14, v10);
  }

  v29 = v93;
  v93[5] = v27;
  v29[6] = v26;

  v30 = sub_2611999B4();
  v32 = *v30;
  v31 = *(v30 + 1);

  v33 = sub_261199A70();
  v34 = *(v33 + 1);
  v35 = *v33 == v23;
  v91 = v23;
  if (v35 && v34 == a2 || (sub_26121D4D0() & 1) != 0 || (v36 = sub_261199A9C(), *v36 == v23) && v36[1] == a2 || (sub_26121D4D0() & 1) != 0)
  {

    v37 = sub_2611999DC();
    v32 = *v37;
    v31 = *(v37 + 1);

    v38 = 55;
  }

  else
  {
    v38 = 31;
  }

  if (qword_27FE8E360 != -1)
  {
    swift_once();
  }

  v84[1] = v26;
  v89 = a2;
  result = *MEMORY[0x277D44028];
  if (!*MEMORY[0x277D44028])
  {
    __break(1u);
    goto LABEL_33;
  }

  v40 = qword_27FE8E368;
  v41 = sub_26121CC80();
  v43 = v42;
  v44 = objc_opt_self();

  v45 = [v44 mainBundle];
  v46 = [v45 bundleIdentifier];

  v47 = MEMORY[0x277D837D0];
  if (v46)
  {
    v48 = sub_26121CC80();
    v50 = v49;

    v97 = v47;
    if (v50)
    {
      goto LABEL_20;
    }

    v48 = 0;
  }

  else
  {
    v48 = 0;
    v97 = MEMORY[0x277D837D0];
  }

  v50 = 0xE000000000000000;
LABEL_20:
  *&v96 = v48;
  *(&v96 + 1) = v50;
  sub_2611B69DC(&v96, v95);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = v40;
  sub_2611B63A0(v95, v41, v43, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D44030];
  if (!*MEMORY[0x277D44030])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v52 = v94;
  v53 = sub_26121CC80();
  v55 = v54;
  v97 = MEMORY[0x277D849A8];
  LODWORD(v96) = v38;
  sub_2611B69DC(&v96, v95);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v52;
  sub_2611B63A0(v95, v53, v55, v56);

  v57 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612221E0;
  result = *MEMORY[0x277D44090];
  if (!*MEMORY[0x277D44090])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_26121CC80();
  *(inited + 32) = result;
  *(inited + 40) = v59;
  *(inited + 72) = v47;
  *(inited + 48) = v32;
  *(inited + 56) = v31;
  v60 = v91;
  if (!*MEMORY[0x277D44098])
  {
LABEL_35:
    __break(1u);
    return result;
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v61;
  *(inited + 120) = v47;
  v62 = v89;
  *(inited + 96) = v60;
  *(inited + 104) = v62;
  v63 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  sub_2611CB440(v57);

  sub_2611CB440(v63);

  v64 = objc_allocWithZone(MEMORY[0x277D43FE0]);
  v65 = sub_26121CB80();

  v66 = sub_26121CB80();

  v67 = sub_26121CEB0();
  v68 = [v64 initWithSessionInfo:v65 userInfo:v66 frameworksToCheck:v67];

  if (v68)
  {
    v69 = v93;
    *v93 = v68;
    v70 = v90;
    sub_2611B8950(v69, v90);
    (*(v87 + 56))(v70, 0, 1, v88);
    return sub_2611B8BE4(v69);
  }

  else
  {
    v71 = sub_2611F05A8();
    v72 = v86;
    sub_2611ABE1C(v71, v86, &qword_27FE87700, &unk_2612203D0);
    v73 = sub_26121CA60();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      sub_2611AC114(v72, &qword_27FE87700, &unk_2612203D0);
      v75 = v90;
      v76 = v88;
      v77 = v87;
      v78 = v85;
    }

    else
    {
      v79 = sub_26121CA40();
      v80 = sub_26121CFC0();
      v81 = os_log_type_enabled(v79, v80);
      v78 = v85;
      if (v81)
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_261197000, v79, v80, "Could not create the RTCReporting object", v82, 2u);
        MEMORY[0x2666FCF20](v82, -1, -1);
      }

      (*(v74 + 8))(v72, v73);
      v75 = v90;
      v76 = v88;
      v77 = v87;
    }

    v83 = sub_26121C760();
    (*(*(v83 - 8) + 8))(v93 + v78, v83);
    return (*(v77 + 56))(v75, 1, 1, v76);
  }
}

uint64_t AnalyticsReporter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v75 - v5;
  v6 = sub_26121C760();
  v84 = *(v6 - 8);
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87768, &qword_261222420);
  v85 = *(v10 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - v12;
  v14 = type metadata accessor for AnalyticsReporter();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2611D46E0();
  v20 = v86;
  sub_26121D5F0();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v21 = v9;
  v81 = v14;
  v86 = v6;
  LOBYTE(v89) = 0;
  v22 = sub_26121D3B0();
  v24 = v17;
  *(v17 + 1) = v22;
  *(v17 + 2) = v25;
  LOBYTE(v89) = 1;
  v26 = v22;
  v27 = v25;
  v28 = sub_26121D3B0();
  v79 = v26;
  v80 = v27;
  *(v24 + 3) = v28;
  *(v24 + 4) = v29;
  LOBYTE(v89) = 2;
  *(v24 + 5) = sub_26121D3B0();
  *(v24 + 6) = v30;
  LOBYTE(v89) = 3;
  sub_2611D4F14(&qword_27FE87778, MEMORY[0x277CC9578]);
  v31 = v10;
  v32 = v86;
  sub_26121D3F0();
  v77 = v13;
  v76 = v31;
  (*(v84 + 32))(&v24[*(v81 + 32)], v21, v32);
  if (qword_27FE8E360 != -1)
  {
    swift_once();
  }

  result = *MEMORY[0x277D44028];
  if (!*MEMORY[0x277D44028])
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = qword_27FE8E368;
  v78 = sub_26121CC80();
  v38 = v37;
  v39 = objc_opt_self();
  v40 = v36;

  v41 = [v39 mainBundle];
  v42 = [v41 bundleIdentifier];

  v43 = MEMORY[0x277D837D0];
  if (v42)
  {
    v44 = sub_26121CC80();
    v46 = v45;

    v90 = v43;
    if (v46)
    {
      goto LABEL_12;
    }

    v44 = 0;
  }

  else
  {
    v44 = 0;
    v90 = MEMORY[0x277D837D0];
  }

  v46 = 0xE000000000000000;
LABEL_12:
  *&v89 = v44;
  *(&v89 + 1) = v46;
  sub_2611B69DC(&v89, v88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v40;
  sub_2611B63A0(v88, v78, v38, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D44030];
  if (!*MEMORY[0x277D44030])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v48 = v91;
  v49 = sub_26121CC80();
  v51 = v50;
  v90 = MEMORY[0x277D849A8];
  LODWORD(v89) = 31;
  sub_2611B69DC(&v89, v88);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v48;
  sub_2611B63A0(v88, v49, v51, v52);

  v53 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612221E0;
  result = *MEMORY[0x277D44090];
  v55 = MEMORY[0x277D837D0];
  if (!*MEMORY[0x277D44090])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(inited + 32) = sub_26121CC80();
  *(inited + 40) = v56;
  v57 = sub_2611999B4();
  v58 = *v57;
  v59 = *(v57 + 1);
  *(inited + 72) = v55;
  *(inited + 48) = v58;
  *(inited + 56) = v59;
  result = *MEMORY[0x277D44098];
  if (!*MEMORY[0x277D44098])
  {
LABEL_26:
    __break(1u);
    return result;
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v60;
  *(inited + 120) = v55;
  v61 = v80;
  *(inited + 96) = v79;
  *(inited + 104) = v61;

  v62 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  sub_2611CB440(v53);

  sub_2611CB440(v62);

  v63 = objc_allocWithZone(MEMORY[0x277D43FE0]);
  v64 = sub_26121CB80();

  v65 = sub_26121CB80();

  v66 = sub_26121CEB0();
  v67 = [v63 initWithSessionInfo:v64 userInfo:v65 frameworksToCheck:v66];

  if (v67)
  {
    (*(v85 + 8))(v77, v76);
    *v24 = v67;
    sub_2611B8950(v24, v83);
    __swift_destroy_boxed_opaque_existential_1(v87);
    return sub_2611B8BE4(v24);
  }

  else
  {
    v68 = sub_2611F05A8();
    v69 = v82;
    sub_2611ABE1C(v68, v82, &qword_27FE87700, &unk_2612203D0);
    v70 = sub_26121CA60();
    v71 = *(v70 - 8);
    if ((*(v71 + 48))(v69, 1, v70) == 1)
    {
      sub_2611AC114(v69, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v72 = sub_26121CA40();
      v73 = sub_26121CFC0();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_261197000, v72, v73, "Could not create the RTCReporting object", v74, 2u);
        MEMORY[0x2666FCF20](v74, -1, -1);
      }

      (*(v71 + 8))(v69, v70);
    }

    sub_2611D4734();
    swift_allocError();
    swift_willThrow();
    (*(v85 + 8))(v77, v76);
    __swift_destroy_boxed_opaque_existential_1(v87);
    v33 = *(v24 + 2);

    v35 = *(v24 + 4);

    v34 = *(v24 + 6);

    return (*(v84 + 8))(&v24[*(v81 + 32)], v86);
  }
}

uint64_t AnalyticsReporter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87788, &qword_261222428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611D46E0();
  sub_26121D600();
  v11 = v3[1];
  v12 = v3[2];
  v19[15] = 0;
  sub_26121D460();
  if (!v2)
  {
    v13 = v3[3];
    v14 = v3[4];
    v19[14] = 1;
    sub_26121D460();
    v15 = v3[5];
    v16 = v3[6];
    v19[13] = 2;
    sub_26121D460();
    v17 = *(type metadata accessor for AnalyticsReporter() + 32);
    v19[12] = 3;
    sub_26121C760();
    sub_2611D4F14(&qword_27FE87790, MEMORY[0x277CC9578]);
    sub_26121D4A0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2611D2F0C()
{
  v1 = type metadata accessor for AnalyticsReporter();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_26121CF50();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2611B8950(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_2611B88EC(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_2611D3684(0, 0, v7, &unk_261222440, v10);
}

uint64_t sub_2611D30A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611D314C, 0, 0);
}

uint64_t sub_2611D314C()
{
  v1 = **(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_2611D326C;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE877D0, &qword_261222708);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2611D3604;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v2;
  [v1 startConfigurationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2611D326C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2611D334C, 0, 0);
}

uint64_t sub_2611D334C()
{
  if (!*(v0 + 144))
  {
    v12 = *(v0 + 168);
    v13 = sub_2611F05A8();
    sub_2611ABE1C(v13, v12, &qword_27FE87700, &unk_2612203D0);
    v3 = sub_26121CA60();
    v4 = *(v3 - 8);
    v14 = (*(v4 + 48))(v12, 1, v3);
    v6 = *(v0 + 168);
    if (v14 != 1)
    {
      v16 = *(v0 + 168);
      v8 = sub_26121CA40();
      v17 = sub_26121CFC0();
      if (os_log_type_enabled(v8, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261197000, v8, v17, "RTC storebag was NOT found!", v18, 2u);
        MEMORY[0x2666FCF20](v18, -1, -1);
      }

      v11 = *(v0 + 168);
      goto LABEL_11;
    }

LABEL_7:
    sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
    v15 = 1;
    goto LABEL_12;
  }

  v1 = *(v0 + 176);

  v2 = sub_2611F05A8();
  sub_2611ABE1C(v2, v1, &qword_27FE87700, &unk_2612203D0);
  v3 = sub_26121CA60();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 176);
  if (v5 == 1)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 176);
  v8 = sub_26121CA40();
  v9 = sub_26121CFB0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_261197000, v8, v9, "RTC storebag found!", v10, 2u);
    MEMORY[0x2666FCF20](v10, -1, -1);
  }

  v11 = *(v0 + 176);
LABEL_11:

  (*(v4 + 8))(v11, v3);
  v15 = 0;
LABEL_12:
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  **(v0 + 152) = v15;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2611D3604(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_26121CEC0();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_2611D3684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2611ABE1C(a3, v27 - v11, &qword_27FE87798, &qword_261222430);
  v13 = sub_26121CF50();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2611AC114(v12, &qword_27FE87798, &qword_261222430);
  }

  else
  {
    sub_26121CF40();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26121CF10();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26121CD20() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE877C8, &qword_2612226F8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2611AC114(a3, &qword_27FE87798, &qword_261222430);

      return v24;
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

  sub_2611AC114(a3, &qword_27FE87798, &qword_261222430);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE877C8, &qword_2612226F8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2611D3998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26121C7B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[5];
  v11 = v1[6];
  v16 = v10;
  v17 = v11;

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  sub_26121C7A0();
  v12 = _s10Foundation4UUIDV19ProximityReaderCoreE10toFileNameSSyF_0();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x2666FBF20](v12, v14);

  return AnalyticsReporter.init(serviceName:hierarchyToken:)(v8, v9, v16, v17, a1);
}

id sub_2611D3AE0(uint64_t a1)
{
  v37[23] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v36 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612223F0;
  if (!*MEMORY[0x277D43FF0])
  {
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 32) = sub_26121CC80();
  *(inited + 40) = v8;
  v9 = sub_261199A24();
  v10 = MEMORY[0x277D84C58];
  v11 = *v9;
  *(inited + 72) = MEMORY[0x277D84C58];
  *(inited + 48) = v11;
  if (!*MEMORY[0x277D44008])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v12;
  v13 = *sub_261199A38();
  *(inited + 120) = v10;
  *(inited + 96) = v13;
  if (!*MEMORY[0x277D44000])
  {
    goto LABEL_17;
  }

  *(inited + 128) = sub_26121CC80();
  *(inited + 136) = v14;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87448, &qword_2612210C0);
  *(inited + 144) = a1;

  v15 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  v16 = *v1;
  sub_2611CB440(v15);

  v17 = sub_26121CB80();

  v37[0] = 0;
  LODWORD(v16) = [v16 sendMessageWithDictionary:v17 error:v37];

  v18 = v37[0];
  if (v16)
  {
    v19 = *MEMORY[0x277D85DE8];

    return v18;
  }

  else
  {
    v36[0] = v37[0];
    v21 = v37[0];
    v22 = sub_26121C500();

    swift_willThrow();
    v23 = sub_2611F05A8();
    sub_2611ABE1C(v23, v6, &qword_27FE87700, &unk_2612203D0);
    v24 = sub_26121CA60();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v6, 1, v24) == 1)
    {

      result = sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v26 = v22;
      v27 = sub_26121CA40();
      v28 = sub_26121CFC0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136315138;
        v36[1] = v22;
        v31 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87550, &qword_261221C30);
        v32 = sub_26121CCF0();
        v34 = sub_2611AA228(v32, v33, v37);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_261197000, v27, v28, "Error sending analytics: [%s]", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x2666FCF20](v30, -1, -1);
        MEMORY[0x2666FCF20](v29, -1, -1);
      }

      else
      {
      }

      result = (*(v25 + 8))(v6, v24);
    }

    v35 = *MEMORY[0x277D85DE8];
  }

  return result;
}

id static AnalyticsReporter.sendSingleEvent(serviceName:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[17] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v43 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612221E0;
  if (!*MEMORY[0x277D44090])
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  *(inited + 32) = sub_26121CC80();
  *(inited + 40) = v11;
  v12 = sub_2611999B4();
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  if (!*MEMORY[0x277D44098])
  {
    goto LABEL_17;
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v16;
  *(inited + 120) = v15;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  v17 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  v18 = objc_opt_self();
  if (qword_27FE8E360 != -1)
  {
    swift_once();
  }

  sub_2611CB440(qword_27FE8E368);
  v19 = sub_26121CB80();

  sub_2611CB440(v17);

  v20 = sub_26121CB80();

  v21 = *sub_261199A24();
  v22 = *sub_261199A38();
  sub_2611CB440(a3);
  v23 = sub_26121CB80();

  v44[0] = 0;
  v24 = [v18 sendOneMessageWithSessionInfo:v19 userInfo:v20 category:v21 type:v22 payload:v23 error:v44];

  v25 = v44[0];
  if (v24)
  {
    v26 = *MEMORY[0x277D85DE8];

    return v25;
  }

  else
  {
    v43[0] = v44[0];
    v28 = v44[0];
    v29 = sub_26121C500();

    swift_willThrow();
    v30 = sub_2611F05A8();
    sub_2611ABE1C(v30, v9, &qword_27FE87700, &unk_2612203D0);
    v31 = sub_26121CA60();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v9, 1, v31) == 1)
    {

      result = sub_2611AC114(v9, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v33 = v29;
      v34 = sub_26121CA40();
      v35 = sub_26121CFC0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v44[0] = v37;
        *v36 = 136315138;
        v43[1] = v29;
        v38 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87550, &qword_261221C30);
        v39 = sub_26121CCF0();
        v41 = sub_2611AA228(v39, v40, v44);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_261197000, v34, v35, "Error sending analytics: [%s]", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x2666FCF20](v37, -1, -1);
        MEMORY[0x2666FCF20](v36, -1, -1);
      }

      else
      {
      }

      result = (*(v32 + 8))(v9, v31);
    }

    v42 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_2611D448C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2611D4580;

  return v6(v2 + 32);
}

uint64_t sub_2611D4580()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2611D4694()
{
  v0 = sub_26121D340();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2611D46E0()
{
  result = qword_27FE87770;
  if (!qword_27FE87770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87770);
  }

  return result;
}

unint64_t sub_2611D4734()
{
  result = qword_27FE87780;
  if (!qword_27FE87780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87780);
  }

  return result;
}

uint64_t sub_2611D4788()
{
  v1 = (type metadata accessor for AnalyticsReporter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = v1[10];
  v10 = sub_26121C760();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2611D4890(uint64_t a1)
{
  v4 = *(type metadata accessor for AnalyticsReporter() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2611BBFEC;

  return sub_2611D30A4(a1, v6, v7, v1 + v5);
}

unint64_t sub_2611D4970()
{
  result = qword_27FE877A0;
  if (!qword_27FE877A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877A0);
  }

  return result;
}

unint64_t sub_2611D49C8()
{
  result = qword_27FE877A8;
  if (!qword_27FE877A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877A8);
  }

  return result;
}

unint64_t sub_2611D4A20()
{
  result = qword_27FE877B0;
  if (!qword_27FE877B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877B0);
  }

  return result;
}

unint64_t sub_2611D4A78()
{
  result = qword_27FE877B8;
  if (!qword_27FE877B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877B8);
  }

  return result;
}

uint64_t sub_2611D4AF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26121C760();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_2611D4BB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26121C760();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_2611D4C54()
{
  result = sub_2611D4CE4();
  if (v1 <= 0x3F)
  {
    result = sub_26121C760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2611D4CE4()
{
  result = qword_27FE877C0;
  if (!qword_27FE877C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE877C0);
  }

  return result;
}

uint64_t sub_2611D4D40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2611D4D78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2611D4F60;

  return sub_2611D448C(a1, v5);
}

uint64_t sub_2611D4E30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2611BBFEC;

  return sub_2611D448C(a1, v5);
}

uint64_t sub_2611D4F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AccountAuth.partnerToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken + 8);

  return v1;
}

uint64_t AccountAuth.gsToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken + 8);

  return v1;
}

uint64_t AccountAuth.altDsId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId + 8);

  return v1;
}

uint64_t AccountAuth.deviceLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale);
  v2 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale + 8);

  return v1;
}

id AccountAuth.__allocating_init(partnerToken:relink:gsToken:altDsId:deviceLocale:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken];
  *v19 = a1;
  v19[1] = a2;
  v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink] = a3;
  v20 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken];
  *v20 = a4;
  v20[1] = a5;
  v21 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId];
  *v21 = a6;
  v21[1] = a7;
  v22 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale];
  *v22 = a8;
  v22[1] = a9;
  v24.receiver = v18;
  v24.super_class = v9;
  return objc_msgSendSuper2(&v24, sel_init);
}

id AccountAuth.init(partnerToken:relink:gsToken:altDsId:deviceLocale:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken];
  *v10 = a1;
  v10[1] = a2;
  v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink] = a3;
  v11 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken];
  *v11 = a4;
  v11[1] = a5;
  v12 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId];
  *v12 = a6;
  v12[1] = a7;
  v13 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale];
  *v13 = a8;
  v13[1] = a9;
  v15.receiver = v9;
  v15.super_class = type metadata accessor for AccountAuth();
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_2611D51EC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken);
  v4 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken + 8);
  v5 = sub_26121CC50();
  v6 = sub_26121CC50();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink);
  v8 = sub_26121CC50();
  [a1 encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken);
  v10 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken + 8);
  v11 = sub_26121CC50();
  v12 = sub_26121CC50();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId);
  v14 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId + 8);
  v15 = sub_26121CC50();
  v16 = sub_26121CC50();
  [a1 encodeObject:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale);
  v18 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale + 8);
  v19 = sub_26121CC50();
  v20 = sub_26121CC50();
  [a1 encodeObject:v19 forKey:v20];
}

id AccountAuth.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  sub_261199284();
  v8 = sub_26121D060();
  if (v8)
  {
    v9 = v8;
    v10 = sub_26121CC50();
    v11 = [a1 decodeBoolForKey_];

    v12 = sub_26121D060();
    if (v12)
    {
      v13 = v12;
      v14 = sub_26121D060();
      if (v14)
      {
        v15 = v14;
        v16 = sub_26121D060();
        if (v16)
        {
          v17 = v16;
          v18 = sub_26121CC80();
          v19 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken];
          *v19 = v18;
          v19[1] = v20;
          v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink] = v11;
          v21 = sub_26121CC80();
          v22 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken];
          *v22 = v21;
          v22[1] = v23;
          v24 = sub_26121CC80();
          v25 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId];
          *v25 = v24;
          v25[1] = v26;
          v27 = sub_26121CC80();
          v29 = v28;

          v30 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale];
          *v30 = v27;
          v30[1] = v29;
          v31 = type metadata accessor for AccountAuth();
          v41.receiver = v2;
          v41.super_class = v31;
          v32 = objc_msgSendSuper2(&v41, sel_init);

          return v32;
        }

        v34 = v13;
        v9 = v15;
      }

      else
      {
        v34 = v9;
        v9 = v13;
      }
    }
  }

  v35 = sub_2611F02B4();
  sub_2611B8B74(v35, v7);
  v36 = sub_26121CA60();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v7, 1, v36) == 1)
  {

    sub_2611D57E4(v7);
  }

  else
  {
    v38 = sub_26121CA40();
    v39 = sub_26121CFC0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_261197000, v38, v39, "AccountAuth | Failed to decode object", v40, 2u);
      MEMORY[0x2666FCF20](v40, -1, -1);
    }

    (*(v37 + 8))(v7, v36);
  }

  type metadata accessor for AccountAuth();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2611D57E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AccountAuth.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountAuth.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountAuth();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

ProximityReaderCore::InternalOptions __swiftcall InternalOptions.init(returnReadResultImmediately:includeErrorInReadResult:)(Swift::Bool returnReadResultImmediately, Swift::Bool includeErrorInReadResult)
{
  *v2 = returnReadResultImmediately;
  v2[1] = includeErrorInReadResult;
  result.returnReadResultImmediately = returnReadResultImmediately;
  return result;
}

unint64_t sub_2611D5A50()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t sub_2611D5A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x800000026122DA50 == a2;
  if (v5 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026122DA70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_2611D5B70(uint64_t a1)
{
  v2 = sub_2611D5D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D5BAC(uint64_t a1)
{
  v2 = sub_2611D5D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87808, &qword_261222750);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611D5D74();
  sub_26121D600();
  v15 = 0;
  sub_26121D470();
  if (!v2)
  {
    v14 = 1;
    sub_26121D470();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2611D5D74()
{
  result = qword_27FE8E900[0];
  if (!qword_27FE8E900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8E900);
  }

  return result;
}

uint64_t InternalOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87810, &qword_261222758);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611D5D74();
  sub_26121D5F0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_26121D3C0();
    v15 = 1;
    v13 = sub_26121D3C0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for InternalOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}