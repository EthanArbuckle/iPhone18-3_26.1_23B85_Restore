void (*sub_1CAEDA200(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CAEEC824(v6, a2, a3);
  return sub_1CAEDA288;
}

void (*sub_1CAEDA28C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CAEEC8D4(v6, a2, a3);
  return sub_1CAEF0588;
}

void sub_1CAEDA314(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1CAEDA360(uint64_t a1)
{
  v2 = sub_1CAEFA7CC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1CAEF0250(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1CAEDA3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  v4[31] = swift_task_alloc();
  v4[32] = sub_1CAEFA64C();
  v4[33] = sub_1CAEFA63C();
  v5 = swift_task_alloc();
  v4[34] = v5;
  *v5 = v4;
  v5[1] = sub_1CAEDA4C4;

  return sub_1CAED74C4();
}

uint64_t sub_1CAEDA4C4()
{

  v1 = sub_1CAEFA62C();

  return MEMORY[0x1EEE6DFA0](sub_1CAEDA600, v1, v0);
}

uint64_t sub_1CAEDA600()
{
  v1 = v0[30];

  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1CAEF102C(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v0;
  v0[22] = v3;
  v4 = v0 + 22;
  v5 = v1;
  v89 = v4;
  sub_1CAEF9F1C();
  v6 = *&v5[OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedConfigurations];
  v90 = v2;
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v8 = v86;
  if (v7)
  {
    v9 = 0;
    v87 = v6 & 0xC000000000000001;
    v82 = v6;
    v84 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v87)
      {
        v10 = MEMORY[0x1CCAAB4D0](v9, v6);
      }

      else
      {
        if (v9 >= *(v84 + 16))
        {
          goto LABEL_40;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v7 = sub_1CAEFA80C();
        goto LABEL_3;
      }

      v13 = v7;
      v14 = [v10 role];
      v15 = sub_1CAEFA4EC();
      v17 = v16;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CAEF9F0C();

      v18 = v8[23];
      v19 = sub_1CAEFA4EC();
      v21 = v20;

      if (v15 == v19 && v17 == v21)
      {
        break;
      }

      v22 = sub_1CAEFA9FC();

      if (v22)
      {
        goto LABEL_15;
      }

LABEL_6:
      v8 = v86;
      v7 = v13;
      v6 = v82;
      ++v9;
      if (v12 == v7)
      {
        v23 = v90;
        goto LABEL_19;
      }
    }

LABEL_15:
    sub_1CAEFA90C();
    sub_1CAEFA93C();
    sub_1CAEFA94C();
    sub_1CAEFA91C();
    goto LABEL_6;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
  {
    v24 = sub_1CAEFA80C();
    v25 = v89;
    if (v24)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v24 = *(v23 + 16);
    v25 = v89;
    if (v24)
    {
LABEL_22:
      if (v24 >= 1)
      {
        v26 = 0;
        v80 = v25 - 20;
        v81 = v23;
        v27 = v25 - 16;
        v28 = (v25 - 12);
        v83 = v24;
        v85 = v23 & 0xC000000000000001;
        v79 = (v25 - 12);
        while (1)
        {
          v30 = v85 ? MEMORY[0x1CCAAB4D0](v26, v23) : *(v23 + 8 * v26 + 32);
          v29 = v30;
          v31 = [v30 _path];
          v32 = [v31 serverIdentity];

          if (v32)
          {
            break;
          }

LABEL_26:
          ++v26;

          if (v24 == v26)
          {
            goto LABEL_43;
          }
        }

        v88 = v29;
        v33 = [v32 provider];

        v34 = sub_1CAEFA4EC();
        v36 = v35;

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1CAEF9F0C();

        if (*(v8[29] + 16))
        {
          sub_1CAEAE8E4(v34, v36);
          v38 = v37;

          if (v38)
          {
            goto LABEL_36;
          }
        }

        else
        {
        }

        swift_getKeyPath();
        swift_getKeyPath();

        v39 = sub_1CAEF9EFC();
        v41 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = *v41;
        *v41 = 0x8000000000000000;
        sub_1CAEEA54C(MEMORY[0x1E69E7CC0], v34, v36, isUniquelyReferenced_nonNull_native, &qword_1EC482650);

        *v41 = v91;
        v8 = v86;
        v39(v80, 0);
        v28 = v79;

LABEL_36:
        v43 = sub_1CAED4588(v27);
        v45 = sub_1CAEDA28C(v28, v34, v36);
        if (*v44)
        {
          v46 = v44;
          v47 = v88;
          MEMORY[0x1CCAAB1B0]();
          if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1CAEFA5FC();
          }

          sub_1CAEFA61C();
        }

        (v45)(v28, 0);

        (v43)(v27, 0);
        v29 = v88;
        v23 = v81;
        v24 = v83;
        goto LABEL_26;
      }

      __break(1u);
LABEL_65:
      result = sub_1CAEFA80C();
      v48 = v86;
      if (!result)
      {
        goto LABEL_66;
      }

      goto LABEL_58;
    }
  }

LABEL_43:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v48 = v86;

  v49 = *(v86[24] + 16);

  if (!v49)
  {
    goto LABEL_67;
  }

  v50 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v51 = v86[25];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (*(v51 + 16))
  {
    sub_1CAEAE8E4(v86[14], v86[15]);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_52;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    if (v86[20] || v86[21] != 0xE000000000000000)
    {
      v54 = sub_1CAEFA9FC();

      v50 = v86;
      if ((v54 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }
  }

  else
  {
  }

  v50 = v86;
LABEL_52:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v55 = sub_1CAEDA360(v50[26]);
  v57 = v56;

  if (v57)
  {
    v58 = v50[31];
    v59 = v50[30];
    swift_getKeyPath();
    swift_getKeyPath();
    v50[18] = v55;
    v50[19] = v57;
    v60 = v59;
    sub_1CAEF9F1C();
    PFCurrentDeviceClass();
    v61 = sub_1CAEFA67C();
    v62 = v58;
    (*(*(v61 - 8) + 56))(v58, 1, 1, v61);
    v63 = v60;
    v64 = sub_1CAEFA63C();
    v65 = swift_allocObject();
    v66 = MEMORY[0x1E69E85E0];
    v65[2] = v64;
    v65[3] = v66;
    v65[4] = v63;
    sub_1CAED4CC8(0, 0, v62, &unk_1CAF04ED8, v65);
  }

LABEL_54:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v68 = v50[16];
  v67 = v50[17];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v69 = v50[27];
  if (!*(v69 + 16))
  {
    v48 = v50;

    goto LABEL_66;
  }

  v70 = sub_1CAEAE8E4(v68, v67);
  v72 = v71;

  if ((v72 & 1) == 0)
  {

    v48 = v86;
    goto LABEL_67;
  }

  v7 = *(*(v69 + 56) + 8 * v70);

  if (v7 >> 62)
  {
    goto LABEL_65;
  }

  v48 = v86;
  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_66:

    goto LABEL_67;
  }

LABEL_58:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v74 = MEMORY[0x1CCAAB4D0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v74 = *(v7 + 32);
  }

  v75 = v74;
  v76 = v48[30];

  swift_getKeyPath();
  swift_getKeyPath();
  v86[28] = v75;
  v77 = v76;
  v48 = v86;
  sub_1CAEF9F1C();
LABEL_67:

  v78 = v48[1];

  return v78();
}

unint64_t sub_1CAEDB108()
{
  result = sub_1CAEED82C();
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_1CAEFA80C();
    result = v6;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1CCAAB4D0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(result + 32);
LABEL_6:
    v3 = v2;

    v4 = [v3 identifier];

    sub_1CAEFA4EC();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v0;
    return sub_1CAEF9F1C();
  }

  __break(1u);
  return result;
}

id sub_1CAEDB284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CAEDB698@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewModel();
  result = sub_1CAEF9EDC();
  *a1 = result;
  return result;
}

id sub_1CAEDB6D8()
{
  v0 = *MEMORY[0x1E69C53C0];
  v1 = objc_allocWithZone(type metadata accessor for ViewModel());
  v2 = v0;
  v3 = sub_1CAEEDD88(v2);

  return v3;
}

uint64_t PosterViewControllerConfigurationView.init(forConfigurationOfRole:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for RenderingCoordinator();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  sub_1CAEF9E6C();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;

  *(v6 + 40) = 0;
  *(v6 + 48) = xmmword_1CAF04130;
  *(v6 + 104) = 2;
  sub_1CAEFA37C();
  sub_1CAEFA37C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EB8);
  sub_1CAEFA37C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EC0);
  sub_1CAEFA37C();
  sub_1CAEFA37C();
  sub_1CAEFA37C();
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_1CAEDB9EC;
  }

  else
  {
    v8 = nullsub_1;
    v7 = 0;
  }

  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 24) = v7;
  *a4 = sub_1CAEDB6D8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = v12;
  *(a4 + 48) = v13;
  *(a4 + 56) = v12;
  *(a4 + 64) = v13;
  *(a4 + 72) = v12;
  *(a4 + 80) = v13;
  *(a4 + 88) = v12;
  *(a4 + 96) = v13;
  *(a4 + 104) = v12;
  *(a4 + 112) = v13;
  *(a4 + 120) = a1;
  *(a4 + 128) = sub_1CAEDB9B4;
  *(a4 + 136) = result;
  return result;
}

uint64_t sub_1CAEDB9B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1CAEDBA18@<X0>(char *a1@<X8>)
{
  v57 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482558) - 8;
  v2 = MEMORY[0x1EEE9AC00](v54);
  v56 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v60 = v48 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482560);
  v63 = *(v55 - 8);
  v5 = MEMORY[0x1EEE9AC00](v55);
  v53 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = v48 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482568);
  v62 = *(v52 - 8);
  v8 = MEMORY[0x1EEE9AC00](v52);
  v61 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = v48 - v10;
  v11 = v1[7];
  v79 = v1[6];
  v80 = v11;
  v81 = v1[8];
  v12 = v1[3];
  v75 = v1[2];
  v76 = v12;
  v13 = v1[5];
  v77 = v1[4];
  v78 = v13;
  v14 = v1[1];
  v73 = *v1;
  v74 = v14;
  v15 = sub_1CAEFA13C();
  v48[1] = v16;
  v49 = v15;
  v48[0] = v17;
  v18 = *(&v73 + 1);
  v58 = v73;
  v19 = v74;
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v51 = v18;
  v50 = v19;
  v20 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  v70 = v67;
  v71 = v68;
  v72 = v69;
  v66 = &v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482570);
  sub_1CAEEFAD8(&qword_1EC482578, &qword_1EC482570);
  sub_1CAEFA3CC();
  v49 = sub_1CAEFA13C();
  v21 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  v70 = v67;
  v71 = v68;
  v72 = v69;
  v65 = &v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482580);
  sub_1CAEEFB40();
  sub_1CAEFA3CC();
  sub_1CAEFA13C();
  v22 = swift_allocObject();
  v23 = v80;
  v22[7] = v79;
  v22[8] = v23;
  v22[9] = v81;
  v24 = v76;
  v22[3] = v75;
  v22[4] = v24;
  v25 = v78;
  v22[5] = v77;
  v22[6] = v25;
  v26 = v74;
  v22[1] = v73;
  v22[2] = v26;
  sub_1CAEE86AC(&v73, &v67);
  v27 = v60;
  sub_1CAEFA3BC();
  v28 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v29 = v67;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482590) + 52)) = v29;
  v30 = swift_allocObject();
  v31 = v80;
  v30[7] = v79;
  v30[8] = v31;
  v30[9] = v81;
  v32 = v76;
  v30[3] = v75;
  v30[4] = v32;
  v33 = v78;
  v30[5] = v77;
  v30[6] = v33;
  v34 = v74;
  v30[1] = v73;
  v30[2] = v34;
  v35 = (v27 + *(v54 + 44));
  sub_1CAEFA00C();
  sub_1CAEE86AC(&v73, &v67);
  sub_1CAEFA65C();
  *v35 = &unk_1CAF04DE8;
  v35[1] = v30;
  v36 = v61;
  v37 = *(v62 + 16);
  v38 = v52;
  v37(v61, v59, v52);
  v58 = *(v63 + 16);
  v39 = v53;
  v40 = v55;
  v58(v53, v64, v55);
  v41 = v27;
  v42 = v56;
  sub_1CAEB33EC(v41, v56, &qword_1EC482558);
  v43 = v57;
  v37(v57, v36, v38);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482598);
  v58(&v43[*(v44 + 48)], v39, v40);
  sub_1CAEB33EC(v42, &v43[*(v44 + 64)], &qword_1EC482558);
  sub_1CAEB3344(v60, &qword_1EC482558);
  v45 = *(v63 + 8);
  v45(v64, v40);
  v46 = *(v62 + 8);
  v46(v59, v38);
  sub_1CAEB3344(v42, &qword_1EC482558);
  v45(v39, v40);
  return (v46)(v61, v38);
}

uint64_t sub_1CAEDC1F4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482570);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - v4;
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v6 = sub_1CAEF9F7C();
  v7 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v9 = v17[0];
  v8 = v17[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v10 = v17[0];
  if (!*(v17[0] + 16))
  {

    goto LABEL_5;
  }

  v11 = sub_1CAEAE8E4(v9, v8);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:

    v15 = 1;
    return (*(v3 + 56))(a1, v15, 1, v2);
  }

  v14 = *(*(v10 + 56) + 8 * v11);

  v17[0] = v14;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825A0);
  sub_1CAEB6054(&qword_1EC4825A8, &qword_1EC4825A0);
  sub_1CAEFA43C();
  (*(v3 + 32))(a1, v5, v2);
  v15 = 0;
  return (*(v3 + 56))(a1, v15, 1, v2);
}

uint64_t sub_1CAEDC520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1CAEFA64C();
  v4[3] = sub_1CAEFA63C();
  v6 = sub_1CAEFA62C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CAEDC5B8, v6, v5);
}

uint64_t sub_1CAEDC5B8()
{
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  *(v0 + 48) = sub_1CAEF9F7C();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1CAEDC6B8;

  return sub_1CAED692C();
}

uint64_t sub_1CAEDC6B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1CAEDC7F8, v4, v3);
}

uint64_t sub_1CAEDC7F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CAEDC858(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  v1[3] = swift_task_alloc();
  v1[4] = sub_1CAEFA64C();
  v1[5] = sub_1CAEFA63C();
  v3 = sub_1CAEFA62C();

  return MEMORY[0x1EEE6DFA0](sub_1CAEDC92C, v3, v2);
}

uint64_t sub_1CAEDC92C()
{
  v1 = *(v0 + 24);

  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v2 = sub_1CAEF9F7C();
  v3 = sub_1CAEFA67C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_1CAEFA63C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_1CAED4CC8(0, 0, v1, &unk_1CAF04DF8, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1CAEDCAB8@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482558) - 8;
  v2 = MEMORY[0x1EEE9AC00](v59);
  v61 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v52 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482610);
  v69 = *(v60 - 8);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v52 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482568);
  v68 = *(v57 - 8);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v52 - v10;
  v11 = v1[7];
  v84 = v1[6];
  v85 = v11;
  v86 = v1[8];
  v12 = v1[3];
  v80 = v1[2];
  v81 = v12;
  v13 = v1[5];
  v82 = v1[4];
  v83 = v13;
  v14 = v1[1];
  v78 = *v1;
  v79 = v14;
  v15 = sub_1CAEFA13C();
  v53 = v16;
  v54 = v15;
  v52 = v17;
  v18 = *(&v78 + 1);
  v63 = v78;
  v19 = v79;
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v56 = v18;
  v55 = v19;
  v20 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  v75 = v72;
  v76 = v73;
  v77 = v74;
  v71 = &v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482570);
  sub_1CAEEFAD8(&qword_1EC482578, &qword_1EC482570);
  sub_1CAEFA3CC();
  v21 = sub_1CAEFA13C();
  v53 = v22;
  v54 = v21;
  v23 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  v75 = v72;
  v76 = v73;
  v70 = &v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482618);
  sub_1CAEE87F0(&qword_1EC482620, &qword_1EC482628);
  sub_1CAEEFE98();
  v24 = v64;
  sub_1CAEFA3CC();
  sub_1CAEFA13C();
  v25 = swift_allocObject();
  v26 = v85;
  v25[7] = v84;
  v25[8] = v26;
  v25[9] = v86;
  v27 = v81;
  v25[3] = v80;
  v25[4] = v27;
  v28 = v83;
  v25[5] = v82;
  v25[6] = v28;
  v29 = v79;
  v25[1] = v78;
  v25[2] = v29;
  sub_1CAEE86AC(&v78, &v72);
  v30 = v66;
  sub_1CAEFA3BC();
  v31 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v32 = v72;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482590) + 52)) = v32;
  v33 = swift_allocObject();
  v34 = v85;
  v33[7] = v84;
  v33[8] = v34;
  v33[9] = v86;
  v35 = v81;
  v33[3] = v80;
  v33[4] = v35;
  v36 = v83;
  v33[5] = v82;
  v33[6] = v36;
  v37 = v79;
  v33[1] = v78;
  v33[2] = v37;
  v38 = (v30 + *(v59 + 44));
  sub_1CAEFA00C();
  sub_1CAEE86AC(&v78, &v72);
  sub_1CAEFA65C();
  *v38 = &unk_1CAF04EB8;
  v38[1] = v33;
  v39 = v67;
  v40 = *(v68 + 16);
  v41 = v57;
  v40(v67, v65, v57);
  v63 = *(v69 + 16);
  v42 = v58;
  v43 = v24;
  v44 = v60;
  v63(v58, v43, v60);
  v45 = v30;
  v46 = v61;
  sub_1CAEB33EC(v45, v61, &qword_1EC482558);
  v47 = v62;
  v40(v62, v39, v41);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482648);
  v63(&v47[*(v48 + 48)], v42, v44);
  sub_1CAEB33EC(v46, &v47[*(v48 + 64)], &qword_1EC482558);
  sub_1CAEB3344(v66, &qword_1EC482558);
  v49 = *(v69 + 8);
  v49(v64, v44);
  v50 = *(v68 + 8);
  v50(v65, v41);
  sub_1CAEB3344(v46, &qword_1EC482558);
  v49(v42, v44);
  return (v50)(v67, v41);
}

uint64_t sub_1CAEDD2EC()
{
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v0 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v1 = v5[2];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1CAEE9B70(v5[2], 0);
  v3 = sub_1CAEED558(&v5, v2 + 4, v1, v5);
  sub_1CAE66924();
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    v2 = MEMORY[0x1E69E7CC0];
  }

  v5 = v2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825A0);
  sub_1CAEB6054(&qword_1EC4825A8, &qword_1EC4825A0);
  return sub_1CAEFA43C();
}

uint64_t sub_1CAEDD4D4@<X0>(uint64_t a1@<X8>)
{
  sub_1CAECA920();

  result = sub_1CAEFA2AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CAEDD540@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  *a1 = v3;
  return result;
}

uint64_t sub_1CAEDD5C0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1CAEF9F1C();
}

uint64_t sub_1CAEDD634@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482640);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &KeyPath - v4;
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v6 = sub_1CAEF9F7C();
  v7 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v9 = v21;
  v8 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v10 = v21;
  if (!*(v21 + 16))
  {

    goto LABEL_5;
  }

  v11 = sub_1CAEAE8E4(v9, v8);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:

    v18 = 1;
    return (*(v3 + 56))(a1, v18, 1, v2);
  }

  v14 = *(*(v10 + 56) + 8 * v11);

  v25 = v14;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482660);
  sub_1CAEB6054(&qword_1EC482668, &qword_1EC482658);
  v15 = a1;
  v16 = sub_1CAEE8888(&qword_1EC482628, &qword_1EC481F68);
  v17 = sub_1CAEB33A4(255, &qword_1EC481F68);
  v21 = MEMORY[0x1E6981148];
  v22 = v17;
  v23 = MEMORY[0x1E6981138];
  v24 = v16;
  swift_getOpaqueTypeConformance2();
  a1 = v15;
  sub_1CAEFA43C();
  (*(v3 + 32))(v15, v5, v2);
  v18 = 0;
  return (*(v3 + 56))(a1, v18, 1, v2);
}

id sub_1CAEDD9F8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAEF9E1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v8 = [v18 pr_posterUUID];
  sub_1CAEF9DFC();

  v9 = sub_1CAEF9DCC();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v19 = v9;
  v20 = v11;
  sub_1CAECA920();
  *a2 = sub_1CAEFA2AC();
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  v14 = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  *(a2 + 40) = 1;

  return v14;
}

uint64_t sub_1CAEDDB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1CAEFA64C();
  v4[3] = sub_1CAEFA63C();
  v6 = sub_1CAEFA62C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CAEDDBE0, v6, v5);
}

uint64_t sub_1CAEDDBE0()
{
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  *(v0 + 48) = sub_1CAEF9F7C();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1CAEDDCE0;

  return sub_1CAED74C4();
}

uint64_t sub_1CAEDDCE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1CAEF05A0, v4, v3);
}

uint64_t sub_1CAEDDE20(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  v1[3] = swift_task_alloc();
  v1[4] = sub_1CAEFA64C();
  v1[5] = sub_1CAEFA63C();
  v3 = sub_1CAEFA62C();

  return MEMORY[0x1EEE6DFA0](sub_1CAEDDEF4, v3, v2);
}

uint64_t sub_1CAEDDEF4()
{
  v1 = *(v0 + 24);

  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v2 = sub_1CAEF9F7C();
  v3 = sub_1CAEFA67C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_1CAEFA63C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_1CAED4CC8(0, 0, v1, &unk_1CAF04ED0, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1CAEDE080@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482548);
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v39 = v38 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825B0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = (v38 - v3);
  v4 = sub_1CAEFA12C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38[1] = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v38[0] = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v38 - v9;
  v11 = sub_1CAEF9CFC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[7];
  v59 = v1[6];
  v60 = v15;
  v61 = v1[8];
  v16 = v1[3];
  v55 = v1[2];
  v56 = v16;
  v17 = v1[5];
  v57 = v1[4];
  v58 = v17;
  v18 = v1[1];
  v53 = *v1;
  v54 = v18;
  v19 = v53;
  v20 = v18;
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v42 = v19;
  v41 = v20;
  v21 = sub_1CAEF9F7C();
  sub_1CAED9364(v10);
  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {

    sub_1CAEB3344(v10, &qword_1EC482060);
    sub_1CAEFA13C();
    v23 = sub_1CAEF9F8C();
    swift_getKeyPath();
    sub_1CAEFA02C();

    v47 = v50;
    v48 = v51;
    v49 = v52;
    MEMORY[0x1EEE9AC00](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825B8);
    sub_1CAEEFD88();
    v25 = v39;
    sub_1CAEFA3CC();
    v26 = v40;
    v27 = v46;
    (*(v40 + 16))(v44, v25, v46);
    swift_storeEnumTagMultiPayload();
    sub_1CAEB6054(&qword_1EC482540, &qword_1EC482548);
    sub_1CAEFA16C();
    return (*(v26 + 8))(v25, v27);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v29 = sub_1CAEF9D0C();
    v40 = v30;

    v39 = *(v12 + 8);
    (v39)(v14, v11);
    sub_1CAEAF634(v29, v40);
    sub_1CAEFA11C();
    sub_1CAEFA10C();
    v31 = sub_1CAEF9F7C();
    v32 = v38[0];
    sub_1CAED9364(v38[0]);

    if (v22(v32, 1, v11) == 1)
    {
      sub_1CAEB3344(v32, &qword_1EC482060);
    }

    else
    {
      sub_1CAEF9C4C();
      (v39)(v32, v11);
    }

    sub_1CAEFA0FC();

    sub_1CAEFA10C();
    sub_1CAEFA14C();
    v33 = sub_1CAEFA29C();
    v34 = v44;
    *v44 = v33;
    v34[1] = v35;
    *(v34 + 16) = v36 & 1;
    v34[3] = v37;
    swift_storeEnumTagMultiPayload();
    sub_1CAEB6054(&qword_1EC482540, &qword_1EC482548);
    return sub_1CAEFA16C();
  }
}

uint64_t sub_1CAEDE850@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CAEDE8CC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1CAEF9F1C();
}

uint64_t sub_1CAEDE948()
{
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v0 = sub_1CAEF9F7C();
  sub_1CAEED82C();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825D0);
  sub_1CAEB6054(&qword_1EC4825D8, &qword_1EC4825C8);
  sub_1CAEE8888(&unk_1EC4825E0, &qword_1EC4820A8);
  swift_getOpaqueTypeConformance2();
  return sub_1CAEFA43C();
}

void sub_1CAEDEB20(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 givenName];
  v5 = sub_1CAEFA4EC();
  v7 = v6;

  v18 = v5;
  v19 = v7;
  sub_1CAECA920();
  v8 = sub_1CAEFA2AC();
  v10 = v9;
  LOBYTE(v7) = v11;
  v13 = v12;
  v14 = [v3 identifier];
  v15 = sub_1CAEFA4EC();
  v17 = v16;

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = 1;
}

uint64_t sub_1CAEDEC04@<X0>(uint64_t a1@<X1>, int a2@<W2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v60 = a3;
  LODWORD(v66) = a2;
  v70 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482170);
  MEMORY[0x1EEE9AC00](v65);
  v57 = (&v57 - v5);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482178);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v57 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482180);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v57 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482188);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v57 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482190);
  MEMORY[0x1EEE9AC00](v67);
  v68 = (&v57 - v9);
  sub_1CAEF9FFC();
  sub_1CAEF9FFC();
  v10 = *(a1 + 16);
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  LODWORD(v59) = v10;
  v11 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (*v93 != 2 && *v93 != 1)
  {
    sub_1CAEF9FFC();
  }

  if (v66)
  {
    *v93 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482230);
    sub_1CAEFA38C();
    v12 = v87;
    if (v87)
    {
      sub_1CAEFA13C();
      v13 = sub_1CAEFA29C();
      v15 = v14;
      v17 = v16;
      v19 = v18;
      sub_1CAEFA47C();
      v21 = v20;
      v23 = v22;
      v17 &= 1u;
      v86[0] = v17;
      v24 = sub_1CAEFA46C();
      *(&v73 + 1) = *v71;
      DWORD1(v73) = *&v71[3];
      *&v72 = v13;
      *(&v72 + 1) = v15;
      LOBYTE(v73) = v17;
      *(&v73 + 1) = v19;
      v74 = xmmword_1CAF04140;
      *&v75 = v21;
      *(&v75 + 1) = v23;
      *&v76 = v24;
      *(&v76 + 1) = v25;
      v95 = v75;
      *v96 = v76;
      *&v93[16] = v73;
      v94 = xmmword_1CAF04140;
      *v93 = v72;
      v77[0] = v13;
      v77[1] = v15;
      v78 = v17;
      *&v79[3] = *&v71[3];
      *v79 = *v71;
      v80 = v19;
      v81 = xmmword_1CAF04140;
      v82 = v21;
      v83 = v23;
      v84 = v24;
      v85 = v25;

      sub_1CAEB33EC(&v72, &v87, &qword_1EC482208);
      sub_1CAEB3344(v77, &qword_1EC482208);
      *&v86[8] = *v93;
      *&v86[72] = *v96;
      *&v86[56] = v95;
      *v86 = v12;
      *&v86[40] = v94;
      *&v86[24] = *&v93[16];
      v94 = *&v86[32];
      v95 = *&v86[48];
      *v96 = *&v86[64];
      *&v96[16] = *&v86[80];
      *v93 = *v86;
      *&v93[16] = *&v86[16];
      v92 = 0;
      v96[24] = 0;
      sub_1CAEB33EC(v86, &v87, &qword_1EC4821F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821F8);
      sub_1CAEEEEC0();
      sub_1CAEFA16C();

      sub_1CAEB3344(v86, &qword_1EC4821F8);
      v94 = v89;
      v95 = v90;
      *v96 = v91[0];
      *&v96[9] = *(v91 + 9);
      *v93 = v87;
      *&v93[16] = v88;
    }

    else
    {
      sub_1CAEFA13C();
      v50 = sub_1CAEFA29C();
      LOBYTE(v72) = v51 & 1;
      v92 = 1;
      *&v87 = v50;
      *(&v87 + 1) = v52;
      LOBYTE(v88) = v51 & 1;
      *(&v88 + 1) = v77[0];
      DWORD1(v88) = *(v77 + 3);
      *(&v88 + 1) = v53;
      v89 = *v86;
      v90 = *&v86[16];
      v91[0] = *&v86[32];
      *&v91[1] = *&v86[48];
      BYTE8(v91[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821F8);
      sub_1CAEEEEC0();
      sub_1CAEFA16C();
    }

    v54 = v95;
    v55 = v68;
    v68[2] = v94;
    v55[3] = v54;
    v55[4] = *v96;
    *(v55 + 73) = *&v96[9];
    v56 = *&v93[16];
    *v55 = *v93;
    v55[1] = v56;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821E0);
    sub_1CAEEEE34();
    sub_1CAEEEF78();
    return sub_1CAEFA16C();
  }

  else
  {
    v26 = sub_1CAEF9F7C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    if (v93[0] == 1)
    {
      v27 = [objc_allocWithZone(type metadata accessor for BoundingShapeContext()) init];
      v28 = sub_1CAEF9F7C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CAEF9F0C();

      v29 = *v93;
      *&v87 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4815C0);
      sub_1CAEFA42C();
      v30 = *v93;
      v66 = *&v93[8];
      *&v87 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482220);
      sub_1CAEFA42C();
      v59 = *v93;
      v31 = *&v93[16];
      v32 = *(type metadata accessor for ShapeBoundedPosterEditingView(0) + 44);
      KeyPath = swift_getKeyPath();
      v34 = v58;
      *&v58[v32] = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819E0);
      swift_storeEnumTagMultiPayload();
      v35 = v60;
      *v34 = v60;
      *(v34 + 8) = v27;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0;
      *(v34 + 16) = v29;
      *(v34 + 40) = 0;
      *(v34 + 48) = v30;
      *(v34 + 56) = v66;
      *(v34 + 72) = v59;
      *(v34 + 88) = v31;
      v36 = v35;
      sub_1CAEFA46C();
      sub_1CAEF9FCC();
      v37 = v63;
      v38 = (v34 + *(v62 + 36));
      v39 = *&v93[16];
      *v38 = *v93;
      v38[1] = v39;
      v38[2] = v94;
      v40 = &qword_1EC482180;
      sub_1CAEB33EC(v34, v37, &qword_1EC482180);
    }

    else
    {
      v42 = sub_1CAEFA46C();
      v34 = v57;
      *v57 = v42;
      *(v34 + 8) = v43;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482198);
      sub_1CAEDF6D8(v60, a1, v34 + *(v44 + 44));
      *v93 = *(a1 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821A0);
      sub_1CAEFA38C();
      v45 = v87;
      v87 = *(a1 + 104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821A8);
      sub_1CAEFA3AC();
      v46 = *v93;
      v47 = *&v93[16];
      v48 = v34 + *(v65 + 36);
      *v48 = v45;
      *(v48 + 8) = v46;
      *(v48 + 24) = v47;
      v40 = &qword_1EC482170;
      sub_1CAEB33EC(v34, v63, &qword_1EC482170);
    }

    swift_storeEnumTagMultiPayload();
    sub_1CAEEEC6C();
    sub_1CAEEED28();
    v41 = v64;
    sub_1CAEFA16C();
    sub_1CAEB3344(v34, v40);
    sub_1CAEB33EC(v41, v68, &qword_1EC482188);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821E0);
    sub_1CAEEEE34();
    sub_1CAEEEF78();
    sub_1CAEFA16C();
    return sub_1CAEB3344(v41, &qword_1EC482188);
  }
}

uint64_t sub_1CAEDF6D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481CE0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482240);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v30 - v15);
  v31 = [objc_allocWithZone(type metadata accessor for BoundingShapeContext()) init];
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v17 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v18 = v37;
  v37 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821A0);
  sub_1CAEFA38C();
  v19 = v34;
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4819C8);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for ShapeBoundedPosterLiveRenderingView(0);
  v22 = v31;
  v21 = v32;
  *(v16 + v20[5]) = v32;
  *(v16 + v20[6]) = v22;
  *(v16 + v20[7]) = v18;
  *(v16 + v20[8]) = v19;
  *(v16 + v20[9]) = 0;
  *(v16 + v20[10]) = 0;
  v23 = v21;
  sub_1CAEFA46C();
  sub_1CAEF9FCC();
  v24 = (v16 + *(v11 + 44));
  v25 = v38;
  *v24 = v37;
  v24[1] = v25;
  v24[2] = v39;
  v34 = *(a2 + 24);
  sub_1CAEFA38C();
  v26 = v36;
  v36 = *(a2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4821A8);
  sub_1CAEFA3AC();
  static RenderingEventsAndTransitionsSupport.transitionControls(forRenderingCoordinator:transitionProgress:)(v26, v34, *(&v34 + 1), v9, v35);

  sub_1CAEB33EC(v16, v14, &unk_1EC482240);
  sub_1CAEB33EC(v9, v7, &qword_1EC481CE0);
  v27 = v33;
  sub_1CAEB33EC(v14, v33, &unk_1EC482240);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482250);
  sub_1CAEB33EC(v7, v27 + *(v28 + 48), &qword_1EC481CE0);
  sub_1CAEB3344(v9, &qword_1EC481CE0);
  sub_1CAEB3344(v16, &unk_1EC482240);
  sub_1CAEB3344(v7, &qword_1EC481CE0);
  return sub_1CAEB3344(v14, &unk_1EC482240);
}

uint64_t sub_1CAEDFB10(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1CAEDFBE8@<X0>(char *a1@<X8>)
{
  v79 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482388);
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v64 - v2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482390);
  v68 = *(v69 - 8);
  v3 = MEMORY[0x1EEE9AC00](v69);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v64 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482398);
  v65 = *(v66 - 8);
  v6 = MEMORY[0x1EEE9AC00](v66);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v64 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823A8);
  v76 = *(v77 - 8);
  v14 = MEMORY[0x1EEE9AC00](v77);
  v83 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823B0);
  v74 = *(v75 - 8);
  v18 = MEMORY[0x1EEE9AC00](v75);
  v81 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v64 - v20;
  v22 = v1[7];
  v89[6] = v1[6];
  v90 = v22;
  v91 = v1[8];
  v23 = v1[3];
  v89[2] = v1[2];
  v89[3] = v23;
  v24 = v1[5];
  v89[4] = v1[4];
  v89[5] = v24;
  v25 = v1[1];
  v89[0] = *v1;
  v89[1] = v25;
  v87 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823B8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4823C0);
  v27 = sub_1CAEFA19C();
  v28 = sub_1CAEB6054(&qword_1EC4823C8, &qword_1EC4823C0);
  v88[0] = v26;
  v88[1] = v27;
  v88[2] = v28;
  v88[3] = MEMORY[0x1E697C6A0];
  v29 = 1;
  swift_getOpaqueTypeConformance2();
  v80 = v21;
  sub_1CAEFA44C();
  v86 = v89;
  sub_1CAEE3250(v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823D8);
  sub_1CAEEF580();
  sub_1CAEEFAD8(&qword_1EC482428, &qword_1EC4823D8);
  v82 = v17;
  v30 = sub_1CAEFA45C();
  if (!*(&v90 + 1))
  {
    MEMORY[0x1EEE9AC00](v30);
    *(&v64 - 2) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482430);
    sub_1CAEB6054(&qword_1EC482438, &qword_1EC482430);
    v31 = v9;
    v64 = v9;
    v32 = sub_1CAEFA44C();
    MEMORY[0x1EEE9AC00](v32);
    *(&v64 - 2) = v89;
    sub_1CAEE3FFC(v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482440);
    sub_1CAEB6054(&qword_1EC482448, &qword_1EC482440);
    v33 = v71;
    sub_1CAEFA45C();
    v34 = v65;
    v35 = *(v65 + 16);
    v36 = v70;
    v37 = v31;
    v38 = v66;
    v35(v70, v37, v66);
    v39 = v68;
    v40 = *(v68 + 16);
    v41 = v67;
    v42 = v33;
    v43 = v69;
    v40(v67, v42, v69);
    v35(v72, v36, v38);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482450);
    v45 = v72;
    v40(&v72[*(v44 + 48)], v41, v43);
    v46 = *(v39 + 8);
    v46(v71, v43);
    v47 = *(v34 + 8);
    v47(v64, v38);
    v46(v41, v43);
    v47(v70, v38);
    sub_1CAEEF728(v45, v85);
    v29 = 0;
  }

  v48 = v85;
  (*(v73 + 56))(v85, v29, 1, v78);
  v49 = v74;
  v50 = *(v74 + 16);
  v51 = v81;
  v52 = v75;
  v50(v81, v80, v75);
  v53 = v76;
  v54 = *(v76 + 16);
  v55 = v77;
  v54(v83, v82, v77);
  sub_1CAEB33EC(v48, v84, &qword_1EC4823A0);
  v56 = v79;
  v50(v79, v51, v52);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482458);
  v58 = v83;
  v54(&v56[*(v57 + 48)], v83, v55);
  v59 = &v56[*(v57 + 64)];
  v60 = v84;
  sub_1CAEB33EC(v84, v59, &qword_1EC4823A0);
  sub_1CAEB3344(v85, &qword_1EC4823A0);
  v61 = *(v53 + 8);
  v61(v82, v55);
  v62 = *(v49 + 8);
  v62(v80, v52);
  sub_1CAEB3344(v60, &qword_1EC4823A0);
  v61(v58, v55);
  return (v62)(v81, v52);
}

uint64_t sub_1CAEE067C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = sub_1CAEFA19C();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = sub_1CAEFA13C();
  v17 = v9;
  v18 = v8;
  v15[1] = v10;
  v16 = v11;
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v12 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  v21 = v24;
  v22 = v25;
  v23 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482670);
  sub_1CAEF03F0();
  sub_1CAEB6054(&qword_1EC482680, &qword_1EC482670);
  sub_1CAEFA3CC();
  sub_1CAEFA18C();
  sub_1CAEB6054(&qword_1EC4823C8, &qword_1EC4823C0);
  v13 = v19;
  sub_1CAEFA2DC();
  (*(v1 + 8))(v3, v13);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1CAEE09A4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  *a1 = v3;
  return result;
}

uint64_t sub_1CAEE0A24(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1CAEF9F1C();
}

uint64_t sub_1CAEE0A94@<X0>(char *a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482688);
  v37 = *(v1 - 8);
  v2 = v37;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v36 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v36 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  sub_1CAEFA13C();
  *v18 = sub_1CAEFA29C();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 16) = 256;
  sub_1CAEFA13C();
  *v16 = sub_1CAEFA29C();
  *(v16 + 1) = v22;
  v16[16] = v23 & 1;
  *(v16 + 3) = v24;
  *(v16 + 16) = 257;
  sub_1CAEFA13C();
  *v13 = sub_1CAEFA29C();
  *(v13 + 1) = v25;
  v13[16] = v26 & 1;
  *(v13 + 3) = v27;
  *(v13 + 16) = 258;
  v28 = *(v2 + 16);
  v29 = v10;
  v38 = v10;
  v28(v10, v18, v1);
  v30 = v7;
  v28(v7, v16, v1);
  v31 = v39;
  v28(v39, v13, v1);
  v32 = v40;
  v28(v40, v29, v1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482690);
  v28(&v32[*(v33 + 48)], v30, v1);
  v28(&v32[*(v33 + 64)], v31, v1);
  v34 = *(v37 + 8);
  v34(v13, v1);
  v34(v16, v1);
  v34(v18, v1);
  v34(v31, v1);
  v34(v30, v1);
  return (v34)(v38, v1);
}

uint64_t sub_1CAEE0E7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v204 = a2;
  v3 = sub_1CAEFA12C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v170 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v175 = &v168 - v6;
  v177 = sub_1CAEF9CFC();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v169 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482410);
  MEMORY[0x1EEE9AC00](v187);
  v184 = &v168 - v8;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824A0);
  MEMORY[0x1EEE9AC00](v179);
  v181 = (&v168 - v9);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824A8);
  MEMORY[0x1EEE9AC00](v180);
  v171 = &v168 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824B0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v182 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v183 = &v168 - v14;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824B8);
  MEMORY[0x1EEE9AC00](v195);
  v203 = (&v168 - v15);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824C0);
  MEMORY[0x1EEE9AC00](v191);
  v193 = &v168 - v16;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4823F0);
  MEMORY[0x1EEE9AC00](v202);
  v194 = &v168 - v17;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482400);
  MEMORY[0x1EEE9AC00](v192);
  v185 = &v168 - v18;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824C8);
  MEMORY[0x1EEE9AC00](v173);
  v168 = &v168 - v19;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824D0);
  MEMORY[0x1EEE9AC00](v186);
  v174 = &v168 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824D8);
  MEMORY[0x1EEE9AC00](v172);
  v178 = &v168 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824E0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v168 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824E8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v168 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824F0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v168 - v32;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4824F8);
  v34 = MEMORY[0x1EEE9AC00](v188);
  v201 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v190 = &v168 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v168 - v38;
  v40 = *a1;
  v39 = a1[1];
  v189 = a1;
  LODWORD(a1) = *(a1 + 16);
  v41 = type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v196 = v40;
  v198 = v39;
  v199 = a1;
  v197 = v41;
  v42 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (!v205[0])
  {
    v176 = v27;
    v177 = v25;
    v179 = v24;
    v180 = v22;
    v184 = v31;
    v201 = v33;
    sub_1CAEFA13C();
    v183 = v58;
    LODWORD(v181) = v59;
    v182 = v60;
    v61 = sub_1CAEF9F8C();
    swift_getKeyPath();
    sub_1CAEFA02C();

    v213 = *v205;
    v214 = *&v205[8];
    type metadata accessor for PRPosterRole(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482500);
    sub_1CAEEEC14(&qword_1EC481720, type metadata accessor for PRPosterRole);
    sub_1CAEEF830();
    v62 = v200;
    sub_1CAEFA3CC();
    v63 = v189;
    LOBYTE(v61) = v189[15] != 0;
    KeyPath = swift_getKeyPath();
    v65 = swift_allocObject();
    *(v65 + 16) = v61;
    v66 = (v62 + *(v188 + 36));
    *v66 = KeyPath;
    v66[1] = sub_1CAEF059C;
    v66[2] = v65;
    v67 = sub_1CAEF9F7C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v68 = *v205;
    v69 = sub_1CAEFA4EC();
    v71 = v70;
    if (v69 == sub_1CAEFA4EC() && v71 == v72)
    {

      v73 = v184;
      v74 = v174;
      v75 = v178;
LABEL_32:
      v137 = v63[7];
      v210 = v63[6];
      v211 = v137;
      v212 = v63[8];
      v138 = v63[3];
      v206 = v63[2];
      v207 = v138;
      v139 = v63[5];
      v208 = v63[4];
      v209 = v139;
      v140 = *v63;
      *&v205[16] = v63[1];
      *v205 = v140;
      v141 = v176;
      sub_1CAEDBA18(v176);
      sub_1CAEB33EC(v141, v75, &qword_1EC4824E8);
      swift_storeEnumTagMultiPayload();
      sub_1CAEB6054(&qword_1EC482530, &qword_1EC4824E8);
      sub_1CAEEF9E0();
      v142 = v179;
      sub_1CAEFA16C();
      sub_1CAEB33EC(v142, v74, &qword_1EC4824E0);
      swift_storeEnumTagMultiPayload();
      sub_1CAEEF928();
      v143 = v201;
      sub_1CAEFA16C();
      sub_1CAEB3344(v142, &qword_1EC4824E0);
      sub_1CAEB3344(v141, &qword_1EC4824E8);
      goto LABEL_33;
    }

    v91 = sub_1CAEFA9FC();

    v73 = v184;
    v74 = v174;
    if (v91)
    {

      v75 = v178;
      goto LABEL_32;
    }

    v120 = sub_1CAEFA4EC();
    v122 = v121;
    v123 = sub_1CAEFA4EC();
    v75 = v178;
    if (v120 == v123 && v122 == v124)
    {
LABEL_24:

      goto LABEL_32;
    }

    v136 = sub_1CAEFA9FC();

    if ((v136 & 1) == 0)
    {
      v149 = sub_1CAEFA4EC();
      v151 = v150;
      if (v149 == sub_1CAEFA4EC() && v151 == v152)
      {
        goto LABEL_24;
      }

      v153 = sub_1CAEFA9FC();

      if ((v153 & 1) == 0)
      {
        v154 = sub_1CAEFA4EC();
        v156 = v155;
        if (v154 == sub_1CAEFA4EC() && v156 == v157)
        {
        }

        else
        {
          v158 = sub_1CAEFA9FC();

          if ((v158 & 1) == 0)
          {
            sub_1CAEFA13C();
            *v74 = sub_1CAEFA29C();
            *(v74 + 8) = v165;
            *(v74 + 16) = v166 & 1;
            *(v74 + 24) = v167;
            swift_storeEnumTagMultiPayload();
            sub_1CAEEF928();
            v143 = v201;
            sub_1CAEFA16C();
            goto LABEL_33;
          }
        }

        v159 = v63[7];
        v210 = v63[6];
        v211 = v159;
        v212 = v63[8];
        v160 = v63[3];
        v206 = v63[2];
        v207 = v160;
        v161 = v63[5];
        v208 = v63[4];
        v209 = v161;
        v162 = *v63;
        *&v205[16] = v63[1];
        *v205 = v162;
        v163 = v168;
        sub_1CAEDE080(v168);
        sub_1CAEB33EC(v163, v75, &qword_1EC4824C8);
        swift_storeEnumTagMultiPayload();
        sub_1CAEB6054(&qword_1EC482530, &qword_1EC4824E8);
        sub_1CAEEF9E0();
        v164 = v179;
        sub_1CAEFA16C();
        sub_1CAEB33EC(v164, v74, &qword_1EC4824E0);
        swift_storeEnumTagMultiPayload();
        sub_1CAEEF928();
        v143 = v201;
        sub_1CAEFA16C();
        sub_1CAEB3344(v164, &qword_1EC4824E0);
        sub_1CAEB3344(v163, &qword_1EC4824C8);
LABEL_33:
        v144 = v190;
        v145 = v185;
        sub_1CAEB33EC(v200, v190, &qword_1EC4824F8);
        sub_1CAEB33EC(v143, v73, &qword_1EC4824F0);
        sub_1CAEB33EC(v144, v145, &qword_1EC4824F8);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482550);
        sub_1CAEB33EC(v73, v145 + *(v146 + 48), &qword_1EC4824F0);
        sub_1CAEB3344(v73, &qword_1EC4824F0);
        sub_1CAEB3344(v144, &qword_1EC4824F8);
        sub_1CAEB33EC(v145, v193, &qword_1EC482400);
        swift_storeEnumTagMultiPayload();
        sub_1CAEB6054(&qword_1EC4823F8, &qword_1EC482400);
        sub_1CAEB6054(&qword_1EC482408, &qword_1EC482410);
        v147 = v143;
        v148 = v194;
        sub_1CAEFA16C();
        sub_1CAEB33EC(v148, v203, &qword_1EC4823F0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482420);
        sub_1CAEEF638();
        sub_1CAEB6054(&qword_1EC482418, &qword_1EC482420);
        sub_1CAEFA16C();
        sub_1CAEB3344(v148, &qword_1EC4823F0);
        sub_1CAEB3344(v145, &qword_1EC482400);
        sub_1CAEB3344(v147, &qword_1EC4824F0);
        v119 = &v215;
        return sub_1CAEB3344(*(v119 - 32), &qword_1EC4824F8);
      }
    }

    goto LABEL_32;
  }

  if (v205[0] == 1)
  {
    sub_1CAEFA13C();
    v200 = v43;
    v186 = v44;
    v45 = sub_1CAEF9F8C();
    swift_getKeyPath();
    sub_1CAEFA02C();

    v213 = *v205;
    v214 = *&v205[8];
    type metadata accessor for PRPosterRole(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482500);
    sub_1CAEEEC14(&qword_1EC481720, type metadata accessor for PRPosterRole);
    sub_1CAEEF830();
    v46 = v201;
    sub_1CAEFA3CC();
    v47 = v189;
    v48 = v189[15] != 0;
    v49 = swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    v51 = (v46 + *(v188 + 36));
    *v51 = v49;
    v51[1] = sub_1CAEF059C;
    v51[2] = v50;
    v52 = sub_1CAEF9F7C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    v53 = *v205;
    v54 = sub_1CAEFA4EC();
    v56 = v55;
    if (v54 == sub_1CAEFA4EC() && v56 == v57)
    {
      goto LABEL_19;
    }

    v90 = sub_1CAEFA9FC();

    if (v90)
    {
      goto LABEL_12;
    }

    v104 = sub_1CAEFA4EC();
    v106 = v105;
    if (v104 != sub_1CAEFA4EC() || v106 != v107)
    {
      v125 = sub_1CAEFA9FC();

      if (v125)
      {
LABEL_12:

        goto LABEL_20;
      }

      v126 = sub_1CAEFA4EC();
      v128 = v127;
      if (v126 != sub_1CAEFA4EC() || v128 != v129)
      {
        v130 = sub_1CAEFA9FC();

        if ((v130 & 1) == 0)
        {
          sub_1CAEFA13C();
          v131 = sub_1CAEFA29C();
          v132 = v181;
          *v181 = v131;
          v132[1] = v133;
          *(v132 + 16) = v134 & 1;
          v132[3] = v135;
          swift_storeEnumTagMultiPayload();
          sub_1CAEB6054(&qword_1EC482518, &qword_1EC4824A8);
          v113 = v183;
          sub_1CAEFA16C();
          goto LABEL_21;
        }

LABEL_20:
        v108 = v47[7];
        v210 = v47[6];
        v211 = v108;
        v212 = v47[8];
        v109 = v47[3];
        v206 = v47[2];
        v207 = v109;
        v110 = v47[5];
        v208 = v47[4];
        v209 = v110;
        v111 = *v47;
        *&v205[16] = v47[1];
        *v205 = v111;
        v112 = v171;
        sub_1CAEDCAB8(v171);
        sub_1CAEB33EC(v112, v181, &qword_1EC4824A8);
        swift_storeEnumTagMultiPayload();
        sub_1CAEB6054(&qword_1EC482518, &qword_1EC4824A8);
        v113 = v183;
        sub_1CAEFA16C();
        sub_1CAEB3344(v112, &qword_1EC4824A8);
LABEL_21:
        v114 = v190;
        sub_1CAEB33EC(v201, v190, &qword_1EC4824F8);
        v115 = v182;
        sub_1CAEB33EC(v113, v182, &qword_1EC4824B0);
        v116 = v184;
        sub_1CAEB33EC(v114, v184, &qword_1EC4824F8);
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482520);
        sub_1CAEB33EC(v115, v116 + *(v117 + 48), &qword_1EC4824B0);
        sub_1CAEB3344(v115, &qword_1EC4824B0);
        sub_1CAEB3344(v114, &qword_1EC4824F8);
        sub_1CAEB33EC(v116, v193, &qword_1EC482410);
        swift_storeEnumTagMultiPayload();
        sub_1CAEB6054(&qword_1EC4823F8, &qword_1EC482400);
        sub_1CAEB6054(&qword_1EC482408, &qword_1EC482410);
        v118 = v194;
        sub_1CAEFA16C();
        sub_1CAEB33EC(v118, v203, &qword_1EC4823F0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482420);
        sub_1CAEEF638();
        sub_1CAEB6054(&qword_1EC482418, &qword_1EC482420);
        sub_1CAEFA16C();
        sub_1CAEB3344(v118, &qword_1EC4823F0);
        sub_1CAEB3344(v116, &qword_1EC482410);
        sub_1CAEB3344(v113, &qword_1EC4824B0);
        v119 = &v216;
        return sub_1CAEB3344(*(v119 - 32), &qword_1EC4824F8);
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  PFCurrentDeviceClass();
  sub_1CAEFA13C();
  v76 = sub_1CAEFA29C();
  v78 = v77;
  v80 = v79;
  v201 = v81;
  sub_1CAEAEDA0(v76, v81, v77 & 1);

  v82 = sub_1CAEF9F7C();
  v83 = v175;
  sub_1CAED9364(v175);

  v84 = v176;
  v85 = v177;
  if ((*(v176 + 6))(v83, 1, v177) == 1)
  {
    sub_1CAEB3344(v83, &qword_1EC482060);
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
  }

  else
  {
    v92 = v78;
    v93 = v169;
    (*(v84 + 4))(v169, v83, v85);
    sub_1CAEFA11C();
    sub_1CAEFA10C();
    sub_1CAEF9C4C();
    sub_1CAEFA0FC();

    sub_1CAEFA10C();
    sub_1CAEFA14C();
    v86 = sub_1CAEFA29C();
    v87 = v94;
    v96 = v95;
    v89 = v97;
    v98 = v93;
    v78 = v92;
    (*(v84 + 1))(v98, v85);
    v88 = v96 & 1;
    sub_1CAEAEDA0(v86, v87, v88);
  }

  v99 = v78 & 1;
  v205[0] = v78 & 1;
  v100 = v201;
  sub_1CAEAEDA0(v76, v201, v78 & 1);

  sub_1CAEEF798(v86, v87, v88, v89);
  sub_1CAEEF7DC(v86, v87, v88, v89);
  sub_1CAEEF820(v76, v100, v78 & 1);

  v101 = v205[0];
  v102 = v203;
  *v203 = v76;
  v102[1] = v100;
  *(v102 + 16) = v101;
  v102[3] = v80;
  v102[4] = v86;
  v102[5] = v87;
  v102[6] = v88;
  v102[7] = v89;
  swift_storeEnumTagMultiPayload();
  sub_1CAEAEDA0(v76, v100, v99);

  sub_1CAEEF798(v86, v87, v88, v89);
  sub_1CAEAEDA0(v76, v100, v99);

  sub_1CAEEF798(v86, v87, v88, v89);
  v200 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482420);
  sub_1CAEEF638();
  sub_1CAEB6054(&qword_1EC482418, &qword_1EC482420);
  sub_1CAEFA16C();
  sub_1CAEEF820(v76, v100, v99);

  sub_1CAEEF7DC(v86, v87, v88, v89);
  sub_1CAEEF820(v76, v100, v99);

  sub_1CAEEF7DC(v86, v87, v88, v89);
  sub_1CAEEF820(v76, v100, v99);

  return sub_1CAEEF7DC(v86, v87, v88, v89);
}

uint64_t sub_1CAEE2DC8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  *a1 = v3;
  return result;
}

uint64_t sub_1CAEE2E48(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  v4 = v2;
  sub_1CAEF9F1C();
  return sub_1CAED3FBC();
}

uint64_t sub_1CAEE2EE0()
{
  PFCurrentDeviceClass();
  v0 = PFPosterRolesSupportedForDeviceClass();
  type metadata accessor for PFPosterRole(0);
  sub_1CAEEEC14(&qword_1EC481710, type metadata accessor for PFPosterRole);
  v1 = sub_1CAEFA69C();

  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1CAEE9C7C(*(v1 + 16), 0, &qword_1EC482608);
  v4 = sub_1CAEED6B0(v9, v3 + 4, v2, v1);
  sub_1CAE66924();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4825F8);
  sub_1CAEB6054(&qword_1EC482600, &qword_1EC4825F0);
  type metadata accessor for PRPosterRole(255);
  v6 = v5;
  v7 = sub_1CAEEEC14(&qword_1EC481720, type metadata accessor for PRPosterRole);
  v9[0] = MEMORY[0x1E6981148];
  v9[1] = v6;
  v9[2] = MEMORY[0x1E6981138];
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  return sub_1CAEFA43C();
}

id sub_1CAEE311C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  sub_1CAEFA4EC();
  sub_1CAECA920();
  sub_1CAEFA7AC();

  v5 = sub_1CAEFA2AC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = v3;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = result;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_1CAEE3250@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v2 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (v15 != 1)
  {
    goto LABEL_7;
  }

  v3 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v4 = sub_1CAEFA4EC();
  v6 = v5;
  if (v4 != sub_1CAEFA4EC() || v6 != v7)
  {
    v8 = sub_1CAEFA9FC();

    if (v8)
    {
      goto LABEL_6;
    }

LABEL_7:
    result = 0;
    v10 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_8;
  }

LABEL_6:
  sub_1CAEFA13C();
  result = sub_1CAEFA29C();
  v13 = v12 & 1;
LABEL_8:
  *a1 = result;
  a1[1] = v10;
  a1[2] = v13;
  a1[3] = v11;
  return result;
}

uint64_t sub_1CAEE34A0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482440);
  v48 = *(v50 - 8);
  v3 = MEMORY[0x1EEE9AC00](v50);
  v55 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482460);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = v44 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482468);
  v45 = *(v53 - 8);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v52 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - v12;
  v47 = sub_1CAEFA13C();
  v44[1] = v15;
  v44[2] = v14;
  LODWORD(v51) = v16;
  v17 = a1[1];
  v44[0] = *a1;
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v18 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  v57 = v59;
  v58 = v60;
  type metadata accessor for PRPosterBoundingShape(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482470);
  sub_1CAEEEC14(&qword_1EC482478, type metadata accessor for PRPosterBoundingShape);
  sub_1CAEEFAD8(&qword_1EC482480, &qword_1EC482470);
  v51 = v13;
  sub_1CAEFA3CC();
  v47 = v17;
  v19 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (v59)
  {
    v20 = 1;
    v22 = v49;
    v21 = v50;
    v23 = v48;
  }

  else
  {
    sub_1CAEFA13C();
    v24 = sub_1CAEF9F8C();
    swift_getKeyPath();
    sub_1CAEFA02C();

    v25 = v56;
    sub_1CAEFA3EC();
    v23 = v48;
    v22 = v49;
    v26 = v25;
    v21 = v50;
    (*(v48 + 32))(v49, v26, v50);
    v20 = 0;
  }

  (*(v23 + 56))(v22, v20, 1, v21);
  sub_1CAEFA13C();
  v27 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  v28 = v56;
  sub_1CAEFA3EC();
  v29 = v45;
  v30 = *(v45 + 16);
  v31 = v52;
  v32 = v53;
  v30(v52, v51, v53);
  v33 = v54;
  sub_1CAEB33EC(v22, v54, &qword_1EC482460);
  v34 = *(v23 + 16);
  v35 = v28;
  v36 = v50;
  v34(v55, v35, v50);
  v37 = v46;
  v30(v46, v31, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482488);
  sub_1CAEB33EC(v33, &v37[*(v38 + 48)], &qword_1EC482460);
  v39 = v55;
  v34(&v37[*(v38 + 64)], v55, v36);
  v40 = *(v48 + 8);
  v40(v56, v36);
  sub_1CAEB3344(v49, &qword_1EC482460);
  v41 = *(v29 + 8);
  v42 = v53;
  v41(v51, v53);
  v40(v39, v36);
  sub_1CAEB3344(v54, &qword_1EC482460);
  return (v41)(v52, v42);
}

uint64_t sub_1CAEE3BEC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  *a1 = v3;
  return result;
}

uint64_t sub_1CAEE3C6C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1CAEF9F1C();
}

uint64_t sub_1CAEE3CDC()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482490);
  sub_1CAEB6054(&qword_1EC482498, &qword_1EC482490);
  sub_1CAEEEC14(&qword_1EC482478, type metadata accessor for PRPosterBoundingShape);
  return sub_1CAEFA43C();
}

uint64_t sub_1CAEE3DF8@<X0>(uint64_t a1@<X8>)
{
  sub_1CAECA920();
  result = sub_1CAEFA2AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CAEE3EC8()
{
  sub_1CAEFA13C();
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v0 = sub_1CAEF9F8C();
  swift_getKeyPath();
  sub_1CAEFA02C();

  return sub_1CAEFA3EC();
}

uint64_t sub_1CAEE3FFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAEFA12C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CAEFA11C();
  sub_1CAEFA10C();
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v3 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  sub_1CAEFA0FC();

  sub_1CAEFA10C();
  sub_1CAEFA14C();
  result = sub_1CAEFA29C();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1CAEE41F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[44] = a4;
  v5 = sub_1CAEF9CFC();
  v4[45] = v5;
  v4[46] = *(v5 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = sub_1CAEFA64C();
  v4[51] = sub_1CAEFA63C();
  v6 = sub_1CAEFA62C();
  v4[52] = v6;
  v4[53] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CAEE4334, v6, v7);
}

uint64_t sub_1CAEE4334()
{
  v1 = *(v0 + 352);
  *(v0 + 144) = *(v1 + 56);
  *(v0 + 176) = *(v1 + 56);
  *(v0 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F48);
  sub_1CAEFA38C();
  *(v0 + 440) = *(v0 + 280);
  *(v0 + 448) = *v1;
  *(v0 + 456) = *(v1 + 8);
  *(v0 + 578) = *(v1 + 16);
  *(v0 + 464) = type metadata accessor for ViewModel();
  *(v0 + 472) = sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  *(v0 + 480) = sub_1CAEF9F7C();
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  v2[1] = sub_1CAEE44BC;

  return sub_1CAED7A2C();
}

uint64_t sub_1CAEE44BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {

    v5 = *(v4 + 416);
    v6 = *(v4 + 424);
    v7 = sub_1CAEE5484;
  }

  else
  {
    *(v4 + 504) = a1;
    v5 = *(v4 + 416);
    v6 = *(v4 + 424);
    v7 = sub_1CAEE4614;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1CAEE4614()
{
  v1 = *(v0 + 504);

  *(v0 + 192) = *(v0 + 144);
  *(v0 + 288) = v1;
  sub_1CAEFA39C();
  *(v0 + 208) = *(v0 + 144);
  sub_1CAEFA38C();
  v2 = *(v0 + 296);
  *(v0 + 512) = v2;
  if (v2)
  {
    *(v0 + 520) = sub_1CAEFA63C();
    v3 = sub_1CAEFA62C();
    *(v0 + 528) = v3;
    *(v0 + 536) = v4;

    return MEMORY[0x1EEE6DFA0](sub_1CAEE48A4, v3, v4);
  }

  v5 = *(v0 + 440);
  *(v0 + 224) = *(v0 + 144);
  sub_1CAEFA38C();
  v6 = *(v0 + 304);
  if (!v5)
  {
    if (v6)
    {

      goto LABEL_13;
    }

    v7 = 0;
LABEL_12:
    v9 = *(v0 + 352);
    *(v0 + 160) = *(v9 + 40);
    *(v0 + 240) = *(v9 + 40);
    *(v0 + 576) = 1;
    *(v0 + 272) = *(v0 + 168);
    sub_1CAEB33EC(v0 + 272, v0 + 312, &qword_1EC482328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F18);
    sub_1CAEFA39C();

    sub_1CAEB3344(v0 + 160, &qword_1EC481F18);
    goto LABEL_13;
  }

  v7 = *(v0 + 440);
  if (v6)
  {
    sub_1CAEB33A4(0, &qword_1EC481F68);
    v7 = v7;
    v8 = sub_1CAEFA76C();

    if (v8)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1CAEE48A4()
{
  v1 = v0[64];
  v2 = [objc_allocWithZone(type metadata accessor for BoundingShapeContext()) init];
  v3 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v4 = [objc_allocWithZone(PRUISPosterRenderingViewController) initWithConfiguration:v1 context:v2 boundingShape:v0[40]];
  v0[68] = v4;

  v5 = [objc_opt_self() mainScreen];
  v0[69] = v5;
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_1CAEE4AFC;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482330);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CAEDFB10;
  v0[13] = &block_descriptor_276;
  v0[14] = v6;
  [v4 snapshotWithOptions:0 forScreen:v5 completionBlock:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CAEE4AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 560) = v2;
  v3 = *(v1 + 536);
  v4 = *(v1 + 528);
  if (v2)
  {
    v5 = sub_1CAEE5304;
  }

  else
  {
    v5 = sub_1CAEE4C58;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CAEE4C58()
{
  v1 = v0[69];
  v2 = v0[68];

  v0[71] = sub_1CAEFA36C();
  v3 = v0[52];
  v4 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1CAEE4D10, v3, v4);
}

uint64_t sub_1CAEE4D10()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 352);

  *(v0 + 256) = *(v2 + 72);
  *(v0 + 336) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC482230);
  sub_1CAEFA39C();
  v3 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  if (*(v0 + 577) != 1)
  {

    goto LABEL_15;
  }

  if (qword_1EC481588 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 512);
  v5 = sub_1CAEF9EBC();
  __swift_project_value_buffer(v5, qword_1EC481EA0);
  v6 = v4;
  v7 = sub_1CAEF9E9C();
  v8 = sub_1CAEFA70C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 512);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_1CAE63000, v7, v8, "Attempting to archive configuration <%@> and write it to disk.", v10, 0xCu);
    sub_1CAEB3344(v11, &qword_1EC481A00);
    MEMORY[0x1CCAAC620](v11, -1, -1);
    MEMORY[0x1CCAAC620](v10, -1, -1);
  }

  v13 = *(v0 + 512);

  v14 = objc_opt_self();
  *(v0 + 344) = 0;
  v15 = [v14 archiveConfiguration:v13 format:0 error:v0 + 344];
  v16 = *(v0 + 344);
  if (v15)
  {
    v17 = *(v0 + 496);
    v19 = *(v0 + 384);
    v18 = *(v0 + 392);
    v20 = *(v0 + 360);
    v21 = *(v0 + 368);
    v22 = v15;
    sub_1CAEF9CCC();
    v23 = v16;

    (*(v21 + 32))(v18, v19, v20);
    v24 = sub_1CAEF9D0C();
    if (!v17)
    {
      v39 = v24;
      v40 = v25;
      sub_1CAEF9C6C();
      sub_1CAEF9D3C();
      v41 = *(v0 + 512);
      v42 = *(v0 + 392);
      v44 = *(v0 + 368);
      v43 = *(v0 + 376);
      v45 = *(v0 + 360);
      sub_1CAEAF634(v39, v40);

      v46 = *(v44 + 8);
      v46(v43, v45);
      v46(v42, v45);
      goto LABEL_15;
    }

    v26 = *(v0 + 392);
    v27 = *(v0 + 360);
    v28 = *(v0 + 368);

    (*(v28 + 8))(v26, v27);
  }

  else
  {
    v29 = v16;
    v30 = sub_1CAEF9BFC();

    swift_willThrow();
  }

  v31 = *(v0 + 512);
  v32 = sub_1CAEF9E9C();
  v33 = sub_1CAEFA6EC();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 512);
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v35;
    *v37 = v35;
    v38 = v35;
    _os_log_impl(&dword_1CAE63000, v32, v33, "Could not write archived configuration <%@> to disk.", v36, 0xCu);
    sub_1CAEB3344(v37, &qword_1EC481A00);
    MEMORY[0x1CCAAC620](v37, -1, -1);
    MEMORY[0x1CCAAC620](v36, -1, -1);
  }

  else
  {
  }

LABEL_15:
  v47 = *(v0 + 440);
  *(v0 + 224) = *(v0 + 144);
  sub_1CAEFA38C();
  v48 = *(v0 + 304);
  if (v47)
  {
    v49 = *(v0 + 440);
    if (!v48 || (sub_1CAEB33A4(0, &qword_1EC481F68), v49 = v49, v50 = sub_1CAEFA76C(), v49, v48, (v50 & 1) == 0))
    {

      goto LABEL_23;
    }
  }

  else
  {
    if (v48)
    {

      goto LABEL_23;
    }

    v49 = 0;
  }

  v51 = *(v0 + 352);
  *(v0 + 160) = *(v51 + 40);
  *(v0 + 240) = *(v51 + 40);
  *(v0 + 576) = 1;
  *(v0 + 272) = *(v0 + 168);
  sub_1CAEB33EC(v0 + 272, v0 + 312, &qword_1EC482328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F18);
  sub_1CAEFA39C();

  sub_1CAEB3344(v0 + 160, &qword_1EC481F18);
LABEL_23:

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1CAEE5304()
{
  v1 = v0[69];
  v2 = v0[68];

  swift_willThrow();

  v3 = v0[52];
  v4 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1CAEE53B4, v3, v4);
}

uint64_t sub_1CAEE53B4()
{
  v1 = *(v0 + 512);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CAEE5484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CAEE554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1CAEB33EC(a3, v22 - v9, &qword_1EC4820C8);
  v11 = sub_1CAEFA67C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1CAEB3344(v10, &qword_1EC4820C8);
  }

  else
  {
    sub_1CAEFA66C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1CAEFA62C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1CAEFA4FC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1CAEB3344(a3, &qword_1EC4820C8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CAEB3344(a3, &qword_1EC4820C8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t PosterViewControllerConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EC8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481ED0);
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v46 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481ED8);
  v54 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v46 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EE0);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EE8);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v46 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EF0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v46 - v13;
  v14 = v1[7];
  v83 = v1[6];
  v84 = v14;
  v85 = v1[8];
  v15 = v1[3];
  *v81 = v1[2];
  *&v81[16] = v15;
  v16 = v1[5];
  *&v81[32] = v1[4];
  v82 = v16;
  v17 = v1[1];
  v79 = *v1;
  v80 = v17;
  v64 = &v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EF8);
  sub_1CAEB6054(&qword_1EC481F00, &qword_1EC481EF8);
  sub_1CAEFA28C();
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v18 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  v51 = v9;
  v52 = v6;
  if (v70)
  {
    v19 = sub_1CAEFA9FC();
  }

  else
  {
    v19 = 1;
  }

  v68[0] = *&v81[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F18);
  sub_1CAEFA3AC();
  v63 = *(&v70 + 1);
  v20 = v70;
  v76 = v83;
  v77 = v84;
  v78 = v85;
  v72 = *v81;
  v73 = *&v81[16];
  v74 = *&v81[32];
  v75 = v82;
  v70 = v79;
  v71 = v80;
  sub_1CAEE806C(v68);
  v65 = v68[0];
  v66 = v68[1];
  v67 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F20);
  sub_1CAEE82F4();
  sub_1CAEFA3FC();
  if (v19)
  {
    v21 = sub_1CAEB6054(&qword_1EC481F40, &qword_1EC481ED8);

    v22 = MEMORY[0x1E6981910];
    v23 = v47;
    v24 = v49;
    v25 = v52;
    sub_1CAEFA31C();

    v46 = v20;
    v26 = v48;
    (*(v48 + 16))(v53, v23, v3);
    swift_storeEnumTagMultiPayload();
    *&v70 = v24;
    *(&v70 + 1) = v22;
    *&v71 = v21;
    *(&v71 + 1) = MEMORY[0x1E6981900];
    swift_getOpaqueTypeConformance2();
    v27 = v51;
    sub_1CAEFA16C();

    (*(v26 + 8))(v23, v3);
    v28 = v54;
  }

  else
  {
    v28 = v54;
    v25 = v52;
    v24 = v49;
    (*(v54 + 16))(v53, v52, v49);
    swift_storeEnumTagMultiPayload();
    v29 = sub_1CAEB6054(&qword_1EC481F40, &qword_1EC481ED8);
    *&v70 = v24;
    *(&v70 + 1) = MEMORY[0x1E6981910];
    *&v71 = v29;
    *(&v71 + 1) = MEMORY[0x1E6981900];
    swift_getOpaqueTypeConformance2();
    v27 = v51;
    sub_1CAEFA16C();
  }

  (*(v28 + 8))(v25, v24);
  v30 = v55;
  sub_1CAEE89FC(v27, v55, &qword_1EC481EE0);
  v70 = *&v81[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F48);
  sub_1CAEFA38C();
  v31 = *&v68[0];
  v32 = swift_allocObject();
  v33 = v84;
  v32[7] = v83;
  v32[8] = v33;
  v32[9] = v85;
  v34 = *&v81[16];
  v32[3] = *v81;
  v32[4] = v34;
  v35 = v82;
  v32[5] = *&v81[32];
  v32[6] = v35;
  v36 = v80;
  v32[1] = v79;
  v32[2] = v36;
  sub_1CAEE86AC(&v79, &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EB8);
  sub_1CAEE86E4();
  sub_1CAEE87F0(&qword_1EC481F58, &qword_1EC481F60);
  v37 = v59;
  sub_1CAEFA32C();

  sub_1CAEB3344(v30, &qword_1EC481EE0);
  v38 = swift_allocObject();
  v39 = v84;
  *(v38 + 7) = v83;
  *(v38 + 8) = v39;
  *(v38 + 9) = v85;
  v40 = *&v81[16];
  *(v38 + 3) = *v81;
  *(v38 + 4) = v40;
  v41 = v82;
  *(v38 + 5) = *&v81[32];
  *(v38 + 6) = v41;
  v42 = v80;
  *(v38 + 1) = v79;
  *(v38 + 2) = v42;
  v43 = v58;
  (*(v60 + 32))(v58, v37, v61);
  v44 = (v43 + *(v57 + 36));
  *v44 = sub_1CAEE89F4;
  v44[1] = v38;
  v44[2] = 0;
  v44[3] = 0;
  sub_1CAEE89FC(v43, v62, &qword_1EC481EF0);
  return sub_1CAEE86AC(&v79, &v70);
}

uint64_t sub_1CAEE61C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482258);
  MEMORY[0x1EEE9AC00](v134);
  v118 = v100 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482260);
  MEMORY[0x1EEE9AC00](v113);
  v101 = (v100 - v4);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482268);
  v103 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v102 = v100 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482270);
  MEMORY[0x1EEE9AC00](v110);
  v112 = v100 - v6;
  v7 = sub_1CAEFA12C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100[1] = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482278);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v136 = v100 - v12;
  v109 = sub_1CAEFA19C();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482280);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = v100 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482288);
  v115 = *(v116 - 8);
  v15 = MEMORY[0x1EEE9AC00](v116);
  v111 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v121 = v100 - v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482290);
  MEMORY[0x1EEE9AC00](v128);
  v131 = v100 - v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482298);
  v122 = *(v137 - 8);
  v19 = MEMORY[0x1EEE9AC00](v137);
  v100[0] = v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v120 = v100 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4822A0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v133 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v132 = v100 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4822A8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v100 - v27;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4822B0);
  MEMORY[0x1EEE9AC00](v127);
  v30 = v100 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4822B8);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v130 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v100 - v34;
  v36 = *a1;
  v37 = *(a1 + 8);
  v38 = *(a1 + 16);
  v39 = type metadata accessor for ViewModel();
  v40 = sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v126 = v36;
  v125 = v37;
  v124 = v38;
  v123 = v39;
  v119 = v40;

  PFCurrentDeviceClass();
  v41 = *(a1 + 96);
  v42 = *(a1 + 128);
  v147 = *(a1 + 112);
  v148 = v42;
  v43 = *(a1 + 48);
  v142 = *(a1 + 32);
  v143 = v43;
  v44 = *(a1 + 64);
  v145 = *(a1 + 80);
  v146 = v41;
  v144 = v44;
  v45 = *(a1 + 16);
  v140 = *a1;
  v141 = v45;
  sub_1CAEDFBE8(v30);
  sub_1CAEB33EC(v30, v28, &qword_1EC4822B0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4822C0);
  sub_1CAEB6054(&qword_1EC4822C8, &qword_1EC4822B0);
  sub_1CAEB6054(&qword_1EC4822D0, &qword_1EC4822C0);
  v129 = v35;
  sub_1CAEFA16C();
  sub_1CAEB3344(v30, &qword_1EC4822B0);
  if (*(a1 + 120))
  {
    sub_1CAEFA13C();
    v46 = swift_allocObject();
    v47 = *(a1 + 112);
    v46[7] = *(a1 + 96);
    v46[8] = v47;
    v46[9] = *(a1 + 128);
    v48 = *(a1 + 48);
    v46[3] = *(a1 + 32);
    v46[4] = v48;
    v49 = *(a1 + 80);
    v46[5] = *(a1 + 64);
    v46[6] = v49;
    v50 = *(a1 + 16);
    v46[1] = *a1;
    v46[2] = v50;
    sub_1CAEE86AC(a1, &v140);
    v51 = v120;
    sub_1CAEFA3BC();
    v52 = v122;
    v53 = v137;
    (*(v122 + 16))(v131, v51, v137);
    swift_storeEnumTagMultiPayload();
    sub_1CAEB6054(&qword_1EC482308, &qword_1EC482298);
    sub_1CAEB6054(&qword_1EC482318, &qword_1EC482258);
    v54 = v132;
    sub_1CAEFA16C();
    (*(v52 + 8))(v51, v53);
  }

  else
  {
    sub_1CAEFA13C();
    v55 = sub_1CAEF9F8C();
    swift_getKeyPath();
    sub_1CAEFA02C();

    v138 = v140;
    v139 = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4822D8);
    sub_1CAEEF004();
    sub_1CAEEFAD8(&qword_1EC4822E8, &qword_1EC4822D8);
    v56 = v104;
    sub_1CAEFA3CC();
    v57 = v107;
    sub_1CAEFA18C();
    sub_1CAEB6054(&qword_1EC4822F0, &qword_1EC482280);
    v58 = v106;
    v59 = v109;
    sub_1CAEFA2DC();
    (*(v108 + 8))(v57, v59);
    (*(v105 + 8))(v56, v58);
    v60 = sub_1CAEF9F7C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    if (v140)
    {
      v61 = sub_1CAEFA46C();
      v62 = v101;
      *v101 = v61;
      *(v62 + 8) = v63;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4822F8);
      sub_1CAEE7CB0(a1, v62 + *(v64 + 44));
      v65 = swift_allocObject();
      v66 = *(a1 + 112);
      v65[7] = *(a1 + 96);
      v65[8] = v66;
      v65[9] = *(a1 + 128);
      v67 = *(a1 + 48);
      v65[3] = *(a1 + 32);
      v65[4] = v67;
      v68 = *(a1 + 80);
      v65[5] = *(a1 + 64);
      v65[6] = v68;
      v69 = *(a1 + 16);
      v65[1] = *a1;
      v65[2] = v69;
      sub_1CAEE86AC(a1, &v140);
      v70 = sub_1CAEB6054(&qword_1EC482300, &qword_1EC482260);
      v71 = v102;
      v72 = v113;
      sub_1CAEFA2FC();

      sub_1CAEB3344(v62, &qword_1EC482260);
      v73 = v103;
      v74 = v117;
      (*(v103 + 16))(v112, v71, v117);
      swift_storeEnumTagMultiPayload();
      sub_1CAEB6054(&qword_1EC482308, &qword_1EC482298);
      *&v140 = v72;
      *(&v140 + 1) = v70;
      swift_getOpaqueTypeConformance2();
      sub_1CAEFA16C();
      (*(v73 + 8))(v71, v74);
    }

    else
    {
      sub_1CAEFA11C();
      sub_1CAEFA10C();
      v75 = sub_1CAEF9F7C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CAEF9F0C();

      sub_1CAEFA0FC();

      sub_1CAEFA10C();
      sub_1CAEFA14C();
      v76 = swift_allocObject();
      v77 = *(a1 + 112);
      v76[7] = *(a1 + 96);
      v76[8] = v77;
      v76[9] = *(a1 + 128);
      v78 = *(a1 + 48);
      v76[3] = *(a1 + 32);
      v76[4] = v78;
      v79 = *(a1 + 80);
      v76[5] = *(a1 + 64);
      v76[6] = v79;
      v80 = *(a1 + 16);
      v76[1] = *a1;
      v76[2] = v80;
      sub_1CAEE86AC(a1, &v140);
      v81 = v100[0];
      sub_1CAEFA3BC();
      v82 = v122;
      v83 = v137;
      (*(v122 + 16))(v112, v81, v137);
      swift_storeEnumTagMultiPayload();
      sub_1CAEB6054(&qword_1EC482308, &qword_1EC482298);
      v84 = sub_1CAEB6054(&qword_1EC482300, &qword_1EC482260);
      *&v140 = v113;
      *(&v140 + 1) = v84;
      swift_getOpaqueTypeConformance2();
      sub_1CAEFA16C();
      (*(v82 + 8))(v81, v83);
    }

    v85 = v118;
    v54 = v132;
    v86 = v116;
    v87 = v115;
    v88 = v114;
    v89 = *(v115 + 16);
    v90 = v111;
    v91 = v121;
    v89(v111, v121, v116);
    sub_1CAEB33EC(v136, v88, &qword_1EC482278);
    v89(v85, v90, v86);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482310);
    sub_1CAEB33EC(v88, v85 + *(v92 + 48), &qword_1EC482278);
    sub_1CAEB3344(v88, &qword_1EC482278);
    v93 = *(v87 + 8);
    v93(v90, v86);
    sub_1CAEB33EC(v85, v131, &qword_1EC482258);
    swift_storeEnumTagMultiPayload();
    sub_1CAEB6054(&qword_1EC482308, &qword_1EC482298);
    sub_1CAEB6054(&qword_1EC482318, &qword_1EC482258);
    sub_1CAEFA16C();
    sub_1CAEB3344(v85, &qword_1EC482258);
    sub_1CAEB3344(v136, &qword_1EC482278);
    v93(v91, v86);
  }

  v94 = v129;
  v95 = v130;
  sub_1CAEB33EC(v129, v130, &qword_1EC4822B8);
  v96 = v133;
  sub_1CAEB33EC(v54, v133, &qword_1EC4822A0);
  v97 = v135;
  sub_1CAEB33EC(v95, v135, &qword_1EC4822B8);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482320);
  sub_1CAEB33EC(v96, v97 + *(v98 + 48), &qword_1EC4822A0);
  sub_1CAEB3344(v54, &qword_1EC4822A0);
  sub_1CAEB3344(v94, &qword_1EC4822B8);
  sub_1CAEB3344(v96, &qword_1EC4822A0);
  return sub_1CAEB3344(v95, &qword_1EC4822B8);
}

uint64_t type metadata accessor for ViewModel()
{
  result = qword_1EC481FF8;
  if (!qword_1EC481FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAEE76A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1CAEFA64C();
  v4[3] = sub_1CAEFA63C();
  v6 = sub_1CAEFA62C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CAEE7740, v6, v5);
}

uint64_t sub_1CAEE7740()
{
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  *(v0 + 48) = sub_1CAEF9F7C();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1CAEE7840;

  return sub_1CAED7A2C();
}

uint64_t sub_1CAEE7840(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = sub_1CAEE79E4;
  }

  else
  {

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = sub_1CAEE795C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CAEE795C()
{
  v1 = v0[8];

  if (v1)
  {
    v2 = v0[8];
    (*(v0[2] + 128))(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CAEE79E4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CAEE7A50@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  *a1 = v3;
  return result;
}

uint64_t sub_1CAEE7ACC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1CAEF9F1C();
}

uint64_t sub_1CAEE7B38()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482088);
  sub_1CAEB6054(&qword_1EC482378, &qword_1EC482088);
  sub_1CAEEF004();
  return sub_1CAEFA43C();
}

uint64_t sub_1CAEE7C24@<X0>(uint64_t a1@<X8>)
{
  sub_1CAECA920();
  result = sub_1CAEFA2AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CAEE7CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1CAEFA12C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482340);
  v14 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v13 - v4;
  sub_1CAEFA11C();
  sub_1CAEFA10C();
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
  v6 = sub_1CAEF9F7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  sub_1CAEFA0FC();

  sub_1CAEFA10C();
  sub_1CAEFA14C();
  v17 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F18);
  sub_1CAEFA3AC();
  sub_1CAEE806C(v23);
  if (PFCurrentDeviceClass())
  {
    v7 = PFCurrentDeviceClass() == 1;
  }

  else
  {
    v7 = 1;
  }

  sub_1CAEE83AC(v7, v21);
  sub_1CAEB3344(v23, &qword_1EC481F20);
  v17 = v21[0];
  v18 = v21[1];
  v19 = v21[2];
  v20 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482348);
  sub_1CAEEF440();
  sub_1CAEFA01C();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  v10 = v16;
  (*(v14 + 32))(v16, v5, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482368);
  v12 = (v10 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = sub_1CAEEF558;
  v12[2] = v9;
  return result;
}

double sub_1CAEE806C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v33 = v1[6];
  v34 = v3;
  v35 = v1[8];
  v4 = v1[3];
  v29 = v1[2];
  v30 = v4;
  v5 = v1[5];
  v31 = v1[4];
  v32 = v5;
  v6 = v1[1];
  v27 = *v1;
  v28 = v6;
  v20[0] = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F48);
  sub_1CAEFA38C();
  v7 = v22;
  if (v22)
  {
    type metadata accessor for ViewModel();
    sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);
    v8 = sub_1CAEF9F7C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CAEF9F0C();

    LOBYTE(v8) = v20[0];
    v9 = swift_allocObject();
    v10 = v34;
    *(v9 + 112) = v33;
    *(v9 + 128) = v10;
    *(v9 + 144) = v35;
    v11 = v30;
    *(v9 + 48) = v29;
    *(v9 + 64) = v11;
    v12 = v32;
    *(v9 + 80) = v31;
    *(v9 + 96) = v12;
    v13 = v28;
    *(v9 + 16) = v27;
    *(v9 + 32) = v13;
    *(v9 + 160) = v8;
    *(v9 + 168) = v7;
    v22 = sub_1CAEEEC5C;
    v23 = v9;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    sub_1CAEE86AC(&v27, v20);
  }

  else
  {
    sub_1CAEFA13C();
    v22 = sub_1CAEFA29C();
    v23 = v15;
    v24 = v14 & 1;
    v25 = v16;
    v26 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F38);
  sub_1CAEB6054(&qword_1EC481F30, &qword_1EC481F38);
  sub_1CAEFA16C();
  result = *v20;
  v18 = v20[1];
  v19 = v21;
  *a1 = v20[0];
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  return result;
}

unint64_t sub_1CAEE82F4()
{
  result = qword_1EC481F28;
  if (!qword_1EC481F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481F20);
    sub_1CAEB6054(&qword_1EC481F30, &qword_1EC481F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481F28);
  }

  return result;
}

double sub_1CAEE83AC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1CAEFA05C();
    sub_1CAEFA27C();
  }

  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  sub_1CAEB33EC(v7, v9, &qword_1EC482370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481F20);
  sub_1CAEEF4CC();
  sub_1CAEE82F4();
  sub_1CAEFA16C();
  v5 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v5;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_1CAEE84F0(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, _BYTE *, uint64_t, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-v8];
  v10 = sub_1CAEFA67C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1CAEFA64C();
  sub_1CAEE86AC(a1, v19);
  v11 = sub_1CAEFA63C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = a1[7];
  *(v12 + 128) = a1[6];
  *(v12 + 144) = v14;
  *(v12 + 160) = a1[8];
  v15 = a1[3];
  *(v12 + 64) = a1[2];
  *(v12 + 80) = v15;
  v16 = a1[5];
  *(v12 + 96) = a1[4];
  *(v12 + 112) = v16;
  v17 = a1[1];
  *(v12 + 32) = *a1;
  *(v12 + 48) = v17;
  a4(0, 0, v9, a3, v12);
}

uint64_t sub_1CAEE8644(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1EEE66BB8]();
  }

  else
  {
  }
}

unint64_t sub_1CAEE86E4()
{
  result = qword_1EC481F50;
  if (!qword_1EC481F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481ED8);
    sub_1CAEB6054(&qword_1EC481F40, &qword_1EC481ED8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC481F50);
  }

  return result;
}

uint64_t sub_1CAEE87F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481EB8);
    sub_1CAEE8888(a2, &qword_1EC481F68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CAEE8888(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CAEB33A4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CAEE88CC(uint64_t a1)
{
  type metadata accessor for ViewModel();
  sub_1CAEEEC14(&qword_1EC481F08, type metadata accessor for ViewModel);

  PFCurrentDeviceClass();
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1CAEF9F7C();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    v6 = v4;
    sub_1CAEF9F1C();
    sub_1CAED3FBC();
  }
}

uint64_t sub_1CAEE89FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CAEE8AA0()
{
  sub_1CAEE8E44(319, &qword_1EC482008, type metadata accessor for PRPosterRole);
  if (v0 <= 0x3F)
  {
    sub_1CAEE8EEC(319, &qword_1EC482010);
    if (v1 <= 0x3F)
    {
      sub_1CAEE8E98(319, &qword_1EC482018, &qword_1EC482020);
      if (v2 <= 0x3F)
      {
        sub_1CAEE8E98(319, &qword_1EC482028, &qword_1EC481EB8);
        if (v3 <= 0x3F)
        {
          sub_1CAEE8E98(319, &qword_1EC482030, &qword_1EC482038);
          if (v4 <= 0x3F)
          {
            sub_1CAEE8E44(319, &qword_1EC482040, type metadata accessor for PRPosterBoundingShape);
            if (v5 <= 0x3F)
            {
              sub_1CAEE8EEC(319, &qword_1EC482048);
              if (v6 <= 0x3F)
              {
                sub_1CAEE8EEC(319, &qword_1EC482050);
                if (v7 <= 0x3F)
                {
                  sub_1CAEE8E98(319, &qword_1EC482058, &qword_1EC482060);
                  if (v8 <= 0x3F)
                  {
                    sub_1CAEE8EEC(319, &qword_1EC482068);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_1CAEE8E44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAEF9F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CAEE8E98(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1CAEF9F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CAEE8EEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CAEF9F2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1CAEE8F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAEE8FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CAEE902C()
{
  result = qword_1EC482070;
  if (!qword_1EC482070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC481EB8);
    sub_1CAEE86E4();
    sub_1CAEE87F0(&qword_1EC481F58, &qword_1EC481F60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewModel.ConfigurationFetchStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewModel.ConfigurationFetchStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CAEE92C4()
{
  result = qword_1EC482078;
  if (!qword_1EC482078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482078);
  }

  return result;
}

unint64_t sub_1CAEE9360()
{
  result = qword_1EC482090;
  if (!qword_1EC482090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482090);
  }

  return result;
}

uint64_t sub_1CAEE93C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();

  *a1 = v3;
  return result;
}

uint64_t sub_1CAEE943C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1CAEF9F1C();
}

uint64_t sub_1CAEE94B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEF9F0C();
}

uint64_t sub_1CAEE952C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1CAEB33EC(a1, &v13 - v8, &qword_1EC482060);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CAEB33EC(v9, v7, &qword_1EC482060);
  v11 = v10;
  sub_1CAEF9F1C();
  return sub_1CAEB3344(v9, &qword_1EC482060);
}

uint64_t sub_1CAEE9658(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CAEE9750;

  return v6(a1);
}

uint64_t sub_1CAEE9750()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1CAEE9848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4826C8);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1CAEE994C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820F8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1CAEE9A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1CAEE9B70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820D0);
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

void *sub_1CAEE9BF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1CAEE9C7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

uint64_t sub_1CAEE9CF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4826D0);
  result = sub_1CAEFA97C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1CAEAF5D0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1CAEAF688(v23, &v36);
        sub_1CAEAE83C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1CAEFA84C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1CAEAF5D0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1CAEE9FB0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1CAEFA97C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1CAEFAAAC();
      sub_1CAEFA51C();
      result = sub_1CAEFAACC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1CAEEA250(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CAEFA7DC() + 1) & ~v5;
    do
    {
      sub_1CAEFAAAC();

      sub_1CAEFA51C();
      v9 = sub_1CAEFAACC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1CAEEA400(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CAEAE7A4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1CAEEA768();
      goto LABEL_7;
    }

    sub_1CAEE9CF8(v13, a3 & 1);
    v19 = sub_1CAEAE7A4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1CAEAF688(a2, v21);
      return sub_1CAEEA6EC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1CAEFAA1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1CAEAF5D0(a1, v17);
}

uint64_t sub_1CAEEA54C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1CAEAE8E4(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1CAEE9FB0(v18, a4 & 1, a5);
      v13 = sub_1CAEAE8E4(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1CAEFAA1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1CAEEA90C(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

_OWORD *sub_1CAEEA6EC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1CAEAF5D0(a3, (a4[7] + 32 * a1));
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

void *sub_1CAEEA768()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4826D0);
  v2 = *v0;
  v3 = sub_1CAEFA96C();
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
        v18 = 40 * v17;
        sub_1CAEAF688(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1CAEAE83C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1CAEAF5D0(v22, (*(v4 + 56) + v17));
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

void *sub_1CAEEA90C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1CAEFA96C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1CAEEAA6C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CAEED818(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CAEEAB54(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1CAEEAAD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1CAE66450(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1CAEEAC4C(v6);
  return sub_1CAEFA91C();
}

uint64_t sub_1CAEEAB54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAEFA9DC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1CAEFA60C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CAEEAFAC(v7, v8, a1, v4);
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
    return sub_1CAEEAD60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CAEEAC4C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAEFA9DC();
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
        sub_1CAEB33A4(0, &qword_1EC481DB0);
        v6 = sub_1CAEFA60C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1CAEEB588(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1CAEEAE30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CAEEAD60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1CAEFA9FC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CAEEAE30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = sub_1CAEFA4EC();
      v13 = v12;

      v14 = [v9 identifier];
      v15 = sub_1CAEFA4EC();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_1CAEFA9FC();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CAEEAFAC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1CAEEC428(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1CAEEBD88((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1CAEFA9FC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1CAEFA9FC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CAEE994C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1CAEE994C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1CAEEBD88((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1CAEEC428(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1CAEEC39C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1CAEFA9FC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

void sub_1CAEEB588(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_1CAEEBFB0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1CAEEC428(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1CAEEC39C(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_1CAEEC428(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 identifier];
      v16 = sub_1CAEFA4EC();
      v18 = v17;

      v19 = [v14 identifier];
      v20 = sub_1CAEFA4EC();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_1CAEFA9FC();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 identifier];
          v5 = sub_1CAEFA4EC();
          v29 = v28;

          v30 = [v26 identifier];
          v31 = sub_1CAEFA4EC();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_1CAEFA9FC();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_1CAEE994C(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_1CAEE994C((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_1CAEEBFB0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1CAEEC428(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1CAEEC39C(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 identifier];
    v5 = sub_1CAEFA4EC();
    v51 = v50;

    v52 = [v48 identifier];
    v53 = sub_1CAEFA4EC();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_1CAEFA9FC();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

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
}

uint64_t sub_1CAEEBD88(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1CAEFA9FC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1CAEFA9FC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1CAEEBFB0(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 identifier];
        v38 = sub_1CAEFA4EC();
        v40 = v39;

        v41 = [v36 identifier];
        v42 = sub_1CAEFA4EC();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_1CAEFA9FC();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 identifier];
        v18 = sub_1CAEFA4EC();
        v20 = v19;

        v21 = [v16 identifier];
        v22 = sub_1CAEFA4EC();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_1CAEFA9FC();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1CAEEC39C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CAEEC428(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1CAEEC43C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4826C8);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1CAEEC540(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481DF0);
  v10 = *(sub_1CAEF9CFC() - 8);
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
  v15 = *(sub_1CAEF9CFC() - 8);
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

char *sub_1CAEEC718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void (*sub_1CAEEC824(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1CAEECE20(v7);
  v7[9] = sub_1CAEEC9E0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CAEEC8D0;
}

void (*sub_1CAEEC8D4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1CAEECE54(v7);
  v7[9] = sub_1CAEECB60(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1CAEF0594;
}

void sub_1CAEEC980(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1CAEEC9E0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **, char)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1CAEAE8E4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1CAEEA90C(&unk_1EC4820D8);
      v13 = v21;
      goto LABEL_11;
    }

    sub_1CAEE9FB0(v18, a4 & 1, &unk_1EC4820D8);
    v13 = sub_1CAEAE8E4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1CAEFAA1C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1CAEECB5C;
}

void (*sub_1CAEECB60(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **, char)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1CAEAE8E4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1CAEEA90C(&qword_1EC482650);
      v13 = v21;
      goto LABEL_11;
    }

    sub_1CAEE9FB0(v18, a4 & 1, &qword_1EC482650);
    v13 = sub_1CAEAE8E4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1CAEFAA1C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1CAEF0598;
}

void sub_1CAEECCDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_1CAEEDD34(*(v13 + 48) + 16 * v12);
      sub_1CAEEA250(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1CAEECE20(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CAEECE48;
}

uint64_t (*sub_1CAEECE54(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1CAEF0570;
}

uint64_t sub_1CAEECE94(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1CAEFA80C();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1CAEE9BF4(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1CAEECF30(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CAEFA80C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CAEFA80C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CAEB6054(&unk_1EC4826B8, &qword_1EC4826B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4826B0);
            v9 = sub_1CAEED44C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CAEB33A4(0, &qword_1EDE9D108);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAEED0E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CAEFA80C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CAEFA80C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CAEB6054(&qword_1EC4826A8, &qword_1EC4826A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4826A0);
            v9 = sub_1CAEED44C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CAEB33A4(0, &qword_1EC481E88);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAEED298(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CAEFA80C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CAEFA80C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CAEB6054(&qword_1EC4820F0, &qword_1EC4820E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820E8);
            v9 = sub_1CAEED4CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CAEB33A4(0, &qword_1EC481DB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CAEED44C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCAAB4D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CAEF057C;
  }

  __break(1u);
  return result;
}

void (*sub_1CAEED4CC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCAAB4D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CAEED54C;
  }

  __break(1u);
  return result;
}

void *sub_1CAEED558(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CAEED6B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1CAEED82C()
{
  v29[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481D90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CAF03C90;
  v1 = *MEMORY[0x1E695C300];
  v2 = *MEMORY[0x1E695C240];
  *(v0 + 32) = *MEMORY[0x1E695C300];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C230];
  v4 = *MEMORY[0x1E695C420];
  *(v0 + 48) = *MEMORY[0x1E695C230];
  *(v0 + 56) = v4;
  v5 = objc_opt_self();
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = [v5 predicateForContactsWithWallpaperMetadata];
  v11 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820A0);
  v12 = sub_1CAEFA5CC();

  v29[0] = 0;
  v13 = [v11 unifiedContactsMatchingPredicate:v10 keysToFetch:v12 error:v29];

  v14 = v29[0];
  if (v13)
  {
    sub_1CAEB33A4(0, &qword_1EC4820A8);
    v15 = sub_1CAEFA5EC();
    v16 = v14;
  }

  else
  {
    v17 = v29[0];
    v18 = sub_1CAEF9BFC();

    swift_willThrow();
    if (qword_1EC481588 != -1)
    {
      swift_once();
    }

    v19 = sub_1CAEF9EBC();
    __swift_project_value_buffer(v19, qword_1EC481EA0);
    v20 = v18;
    v21 = sub_1CAEF9E9C();
    v22 = sub_1CAEFA6EC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_1CAEFAA4C();
      v27 = sub_1CAEC5CF8(v25, v26, v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1CAE63000, v21, v22, "error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1CCAAC620](v24, -1, -1);
      MEMORY[0x1CCAAC620](v23, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1CAEEDBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CAEF0574;

  return sub_1CAED95EC(a1, v4, v5, v6);
}

uint64_t sub_1CAEEDC7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CAEF0574;

  return sub_1CAEE9658(a1, v4);
}

id sub_1CAEEDD88(void *a1)
{
  v107 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4820C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482168);
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482160);
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v76 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482060);
  v8 = MEMORY[0x1EEE9AC00](v100);
  v99 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482158);
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v76 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482150);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v76 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482148);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v76 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482140);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v76 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482138);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v76 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482130);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v18 = &v76 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482128);
  v19 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482120);
  v88 = v22;
  v87 = *(v22 - 8);
  v23 = v87;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - v24;
  v26 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_service;
  *&v1[v26] = [objc_allocWithZone(MEMORY[0x1E69C5058]) init];
  v27 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__role;
  v85 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__role;
  v111 = *MEMORY[0x1E69C53C0];
  v28 = v111;
  type metadata accessor for PRPosterRole(0);
  v90 = v29;
  v30 = v28;
  sub_1CAEF9EEC();
  (*(v23 + 32))(&v1[v27], v25, v22);
  v31 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__extensionIdentifier;
  v111 = 0xD000000000000023;
  v112 = 0x80000001CAF0A2F0;
  sub_1CAEF9EEC();
  v32 = *(v19 + 32);
  v33 = v76;
  v32(&v1[v31], v21, v76);
  v34 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__descriptor;
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_1CAEF9EEC();
  v32(&v1[v34], v21, v33);
  v35 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__descriptorsForExtensions;
  v36 = MEMORY[0x1E69E7CC8];
  v111 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482020);
  sub_1CAEF9EEC();
  (*(v77 + 32))(&v1[v35], v18, v78);
  v37 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__configuration;
  v111 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC481EB8);
  v38 = v79;
  sub_1CAEF9EEC();
  (*(v80 + 32))(&v1[v37], v38, v81);
  v39 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__configurationsForExtensions;
  v111 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482038);
  v40 = v82;
  sub_1CAEF9EEC();
  (*(v83 + 32))(&v1[v39], v40, v84);
  v41 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__contactIdentifier;
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_1CAEF9EEC();
  v32(&v1[v41], v21, v33);
  v42 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__boundingShape;
  v111 = 0;
  type metadata accessor for PRPosterBoundingShape(0);
  v43 = v86;
  sub_1CAEF9EEC();
  (*(v89 + 32))(&v1[v42], v43, v91);
  v44 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__showAsSnapshot;
  LOBYTE(v111) = 0;
  v45 = v92;
  sub_1CAEF9EEC();
  v46 = *(v93 + 32);
  v47 = v94;
  v46(&v1[v44], v45, v94);
  v48 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__archiveConfigurationToDisk;
  LOBYTE(v111) = 1;
  sub_1CAEF9EEC();
  v46(&v1[v48], v45, v47);
  v49 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__isEditor;
  LOBYTE(v111) = 0;
  sub_1CAEF9EEC();
  v46(&v1[v49], v45, v47);
  v50 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__configurationFetchStyle;
  LOBYTE(v111) = 0;
  v51 = v95;
  sub_1CAEF9EEC();
  (*(v96 + 32))(&v1[v50], v51, v97);
  v52 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__archiveURLFromFilePicker;
  v53 = sub_1CAEF9CFC();
  v54 = v98;
  (*(*(v53 - 8) + 56))(v98, 1, 1, v53);
  sub_1CAEB33EC(v54, v99, &qword_1EC482060);
  v55 = v101;
  sub_1CAEF9EEC();
  sub_1CAEB3344(v54, &qword_1EC482060);
  (*(v102 + 32))(&v1[v52], v55, v103);
  v56 = OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel__presentationStyle;
  LOBYTE(v111) = 0;
  v57 = v104;
  sub_1CAEF9EEC();
  (*(v105 + 32))(&v1[v56], v57, v106);
  v58 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedDescriptorIdentifiers] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC21PosterBoardUIServicesP33_6566E723EB1314FCC9387EF6739CF4379ViewModel_cachedConfigurations] = v58;
  v59 = v85;
  swift_beginAccess();
  v60 = *(v87 + 8);
  v61 = v107;
  v60(&v1[v59], v88);
  v110 = v61;
  sub_1CAEF9EEC();
  swift_endAccess();
  v62 = type metadata accessor for ViewModel();
  v109.receiver = v1;
  v109.super_class = v62;
  v63 = objc_msgSendSuper2(&v109, sel_init);
  PFCurrentDeviceClass();
  v64 = sub_1CAEFA67C();
  v65 = v108;
  (*(*(v64 - 8) + 56))(v108, 1, 1, v64);
  sub_1CAEFA64C();
  v66 = v63;
  v67 = sub_1CAEFA63C();
  v68 = swift_allocObject();
  v69 = MEMORY[0x1E69E85E0];
  v68[2] = v67;
  v68[3] = v69;
  v68[4] = v66;
  sub_1CAED4CC8(0, 0, v65, &unk_1CAF04F40, v68);

  v70 = objc_opt_self();
  v71 = 6;
  v72 = &off_1F4AC9340;
  do
  {

    v73 = [v70 standardUserDefaults];
    v74 = sub_1CAEFA4BC();

    [v73 addObserver:v66 forKeyPath:v74 options:5 context:0];

    v72 += 2;
    --v71;
  }

  while (v71);
  return v66;
}

uint64_t sub_1CAEEEAAC(uint64_t result, char *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = qword_1F4AC9338 == result && off_1F4AC9340 == a2;
    if (v4 || (sub_1CAEFA9FC() & 1) != 0 || (qword_1F4AC9348 == v3 ? (v5 = off_1F4AC9350 == a2) : (v5 = 0), v5 || (sub_1CAEFA9FC() & 1) != 0 || qword_1F4AC9358 == v3 && off_1F4AC9360 == a2 || (sub_1CAEFA9FC() & 1) != 0 || qword_1F4AC9368 == v3 && off_1F4AC9370 == a2 || (sub_1CAEFA9FC() & 1) != 0 || qword_1F4AC9378 == v3 && off_1F4AC9380 == a2 || (sub_1CAEFA9FC() & 1) != 0 || qword_1F4AC9388 == v3 && off_1F4AC9390 == a2 || (result = sub_1CAEFA9FC(), (result & 1) != 0)))
    {

      return sub_1CAED5110();
    }
  }

  return result;
}

uint64_t sub_1CAEEEC14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CAEEEC6C()
{
  result = qword_1EC4821B0;
  if (!qword_1EC4821B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482180);
    sub_1CAEEEC14(&qword_1EC481A30, type metadata accessor for ShapeBoundedPosterEditingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4821B0);
  }

  return result;
}

unint64_t sub_1CAEEED28()
{
  result = qword_1EC4821C0;
  if (!qword_1EC4821C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482170);
    sub_1CAEB6054(&qword_1EC4821C8, &qword_1EC4821D0);
    sub_1CAEEEDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4821C0);
  }

  return result;
}

unint64_t sub_1CAEEEDE0()
{
  result = qword_1EC4821D8;
  if (!qword_1EC4821D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4821D8);
  }

  return result;
}

unint64_t sub_1CAEEEE34()
{
  result = qword_1EC4821E8;
  if (!qword_1EC4821E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4821E0);
    sub_1CAEEEEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4821E8);
  }

  return result;
}

unint64_t sub_1CAEEEEC0()
{
  result = qword_1EC4821F0;
  if (!qword_1EC4821F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4821F8);
    sub_1CAEB6054(&qword_1EC482200, &qword_1EC482208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4821F0);
  }

  return result;
}

unint64_t sub_1CAEEEF78()
{
  result = qword_1EC482210;
  if (!qword_1EC482210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482188);
    sub_1CAEEEC6C();
    sub_1CAEEED28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482210);
  }

  return result;
}

unint64_t sub_1CAEEF004()
{
  result = qword_1EC4822E0;
  if (!qword_1EC4822E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4822E0);
  }

  return result;
}

uint64_t sub_1CAEEF13C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CAEF0574;

  return sub_1CAEE76A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1CAEEF1EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CAEF0574;

  return sub_1CAEE41F0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1CAEEF29C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CAEEF34C;

  return sub_1CAEE41F0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1CAEEF34C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1CAEEF440()
{
  result = qword_1EC482350;
  if (!qword_1EC482350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482348);
    sub_1CAEEF4CC();
    sub_1CAEE82F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482350);
  }

  return result;
}

unint64_t sub_1CAEEF4CC()
{
  result = qword_1EC482358;
  if (!qword_1EC482358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482360);
    sub_1CAEE82F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482358);
  }

  return result;
}

unint64_t sub_1CAEEF580()
{
  result = qword_1EC4823E0;
  if (!qword_1EC4823E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4823D0);
    sub_1CAEEF638();
    sub_1CAEB6054(&qword_1EC482418, &qword_1EC482420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4823E0);
  }

  return result;
}

unint64_t sub_1CAEEF638()
{
  result = qword_1EC4823E8;
  if (!qword_1EC4823E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4823F0);
    sub_1CAEB6054(&qword_1EC4823F8, &qword_1EC482400);
    sub_1CAEB6054(&qword_1EC482408, &qword_1EC482410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4823E8);
  }

  return result;
}

uint64_t sub_1CAEEF728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC482388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAEEF798(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CAEAEDA0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1CAEEF7DC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CAEEF820(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1CAEEF820(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1CAEEF830()
{
  result = qword_1EC482510;
  if (!qword_1EC482510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC482500);
    type metadata accessor for PRPosterRole(255);
    sub_1CAEEEC14(&qword_1EC481720, type metadata accessor for PRPosterRole);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482510);
  }

  return result;
}

unint64_t sub_1CAEEF928()
{
  result = qword_1EC482528;
  if (!qword_1EC482528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4824E0);
    sub_1CAEB6054(&qword_1EC482530, &qword_1EC4824E8);
    sub_1CAEEF9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482528);
  }

  return result;
}

unint64_t sub_1CAEEF9E0()
{
  result = qword_1EC482538;
  if (!qword_1EC482538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4824C8);
    sub_1CAEB6054(&qword_1EC482540, &qword_1EC482548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482538);
  }

  return result;
}

uint64_t sub_1CAEEFAD8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAEEFB40()
{
  result = qword_1EC482588;
  if (!qword_1EC482588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482580);
    sub_1CAEEFAD8(&qword_1EC482578, &qword_1EC482570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482588);
  }

  return result;
}

uint64_t sub_1CAEEFC3C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CAEF0574;

  return sub_1CAEDC858(v0 + 16);
}

uint64_t sub_1CAEEFCD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CAEEF34C;

  return sub_1CAEDC520(a1, v4, v5, v1 + 32);
}

unint64_t sub_1CAEEFD88()
{
  result = qword_1EC4825C0;
  if (!qword_1EC4825C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4825B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4825C0);
  }

  return result;
}

unint64_t sub_1CAEEFE98()
{
  result = qword_1EC482630;
  if (!qword_1EC482630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482618);
    sub_1CAEEFF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482630);
  }

  return result;
}

unint64_t sub_1CAEEFF1C()
{
  result = qword_1EC482638;
  if (!qword_1EC482638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC482640);
    sub_1CAEB33A4(255, &qword_1EC481F68);
    sub_1CAEE8888(&qword_1EC482628, &qword_1EC481F68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482638);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  sub_1CAEE8644(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1CAEF0108()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CAEF0574;

  return sub_1CAEDDE20(v0 + 16);
}

uint64_t sub_1CAEF019C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CAEF0574;

  return sub_1CAEDA3DC(a1, v4, v5, v6);
}

uint64_t sub_1CAEF0250(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t objectdestroy_263Tm()
{
  swift_unknownObjectRelease();
  sub_1CAEE8644(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1CAEF0340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CAEF0574;

  return sub_1CAEDDB48(a1, v4, v5, v1 + 32);
}

unint64_t sub_1CAEF03F0()
{
  result = qword_1EC482678;
  if (!qword_1EC482678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC482678);
  }

  return result;
}

uint64_t sub_1CAEF0444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CAEF0574;

  return sub_1CAED4990(a1, v4, v5, v6);
}

uint64_t objectdestroy_154Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id KeyboardPresentationMockTransition.init(initialProgress:finalProgress:)(double a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC21PosterBoardUIServices34KeyboardPresentationMockTransition_progress] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4817A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF026A0;
  sub_1CAEFA86C();
  v4 = sub_1CAEAE898();
  v5 = sub_1CAEFA73C();
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  sub_1CAEF0C9C(inited);
  swift_setDeallocating();
  sub_1CAEAF568(inited + 32);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CAF026A0;
  v14 = 0x73736572676F7270;
  v15 = 0xE800000000000000;
  sub_1CAEFA86C();
  v7 = sub_1CAEFA73C();
  *(v6 + 96) = v4;
  *(v6 + 72) = v7;
  sub_1CAEF0C9C(v6);
  swift_setDeallocating();
  sub_1CAEAF568(v6 + 32);
  v8 = *MEMORY[0x1E69C53D8];
  v9 = sub_1CAEFA48C();

  v10 = sub_1CAEFA48C();

  v13.receiver = v2;
  v13.super_class = type metadata accessor for KeyboardPresentationMockTransition();
  v11 = objc_msgSendSuper2(&v13, sel_initWithType_initialStateMetadata_finalStateMetadata_, v8, v9, v10);

  return v11;
}

double sub_1CAEF07E8()
{
  v1 = OBJC_IVAR____TtC21PosterBoardUIServices34KeyboardPresentationMockTransition_progress;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1CAEF082C(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21PosterBoardUIServices34KeyboardPresentationMockTransition_progress;
  swift_beginAccess();
  *&v2[v4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4817A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAF026A0;
  sub_1CAEFA86C();
  v6 = sub_1CAEAE898();
  v7 = sub_1CAEFA73C();
  *(inited + 96) = v6;
  *(inited + 72) = v7;
  sub_1CAEF0C9C(inited);
  swift_setDeallocating();
  sub_1CAEAF568(inited + 32);
  v8 = sub_1CAEFA48C();

  [v2 setCurrentStateMetadata_];
}

void (*sub_1CAEF0968(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC21PosterBoardUIServices34KeyboardPresentationMockTransition_progress;
  *(v3 + 144) = v1;
  *(v3 + 152) = v4;
  swift_beginAccess();
  return sub_1CAEF09F4;
}

void sub_1CAEF09F4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4817A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CAF026A0;
    v3[16] = 0x73736572676F7270;
    v3[17] = 0xE800000000000000;
    sub_1CAEFA86C();
    v6 = sub_1CAEAE898();
    v7 = sub_1CAEFA73C();
    *(inited + 96) = v6;
    *(inited + 72) = v7;
    sub_1CAEF0C9C(inited);
    swift_setDeallocating();
    sub_1CAEAF568(inited + 32);
    v8 = sub_1CAEFA48C();

    [v4 setCurrentStateMetadata_];
  }

  free(v3);
}

id KeyboardPresentationMockTransition.__allocating_init(type:initialStateMetadata:finalStateMetadata:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1CAEFA48C();

  v5 = sub_1CAEFA48C();

  v6 = [v3 initWithType:a1 initialStateMetadata:v4 finalStateMetadata:v5];

  return v6;
}

id KeyboardPresentationMockTransition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyboardPresentationMockTransition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CAEF0C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4826D0);
    v3 = sub_1CAEFA98C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CAEF0FBC(v4, v13);
      result = sub_1CAEAE7A4(v13);
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
      result = sub_1CAEAF5D0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CAEF0EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4826E8);
    v3 = sub_1CAEFA98C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1CAEAE8E4(v5, v6);
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

uint64_t sub_1CAEF0FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4817A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAEF1040(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1CAEFA98C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1CAEAE8E4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EC4849A8 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EC48499C > a2)
  {
    return 1;
  }

  if (dword_1EC48499C < a2)
  {
    return 0;
  }

  return dword_1EC4849A0 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EC4849B0 == -1)
  {
    if (qword_1EC4849B8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC4849B8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC4849A8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC48499C > a3)
      {
        return 1;
      }

      if (dword_1EC48499C >= a3)
      {
        return dword_1EC4849A0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC4849B8;
  if (qword_1EC4849B8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC4849B8 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1CCAABDC0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC48499C, &dword_1EC4849A0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void PRAmbientDisplayStyleDescription_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull PRAmbientDisplayStyleDescription(PRAmbientDisplayStyle)"];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"PRPosterSnapshotDefinition_AmbientAdditions.m";
  v7 = 1024;
  v8 = 27;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}