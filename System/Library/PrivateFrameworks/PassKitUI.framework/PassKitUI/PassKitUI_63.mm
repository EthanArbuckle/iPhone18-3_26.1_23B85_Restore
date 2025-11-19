id sub_1BD6D4C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502B0);
  return sub_1BD6D46F0(v2, a2 + *(v7 + 44));
}

uint64_t sub_1BD6D4CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6D4D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 1;
  }

  for (i = v1 + 32; ; i += 88)
  {
    v4 = *(i + 16);
    v12[0] = *i;
    v12[1] = v4;
    v5 = *(i + 32);
    v6 = *(i + 48);
    v7 = *(i + 64);
    v13 = *(i + 80);
    v12[3] = v6;
    v12[4] = v7;
    v12[2] = v5;
    v8 = *&v12[0];
    sub_1BD40F770(v12, v11);
    sub_1BD40F770(v12, v11);
    v9 = [v8 dateComponentsRange];
    if (!v9)
    {
      break;
    }

    sub_1BD40F7CC(v12);
    sub_1BD40F7CC(v12);
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1BD40F7CC(v12);
  sub_1BD40F7CC(v12);
  return 0;
}

uint64_t sub_1BD6D4DF8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v12[3] = v3;
  v12[4] = *(a1 + 72);
  v13 = *(a1 + 88);
  v4 = *(a1 + 24);
  v12[0] = *(a1 + 8);
  v12[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v6;
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v15 = *(a2 + 88);
  v14[3] = v8;
  v14[4] = v9;
  v14[2] = v7;
  if (sub_1BD3FE0F0(v2, v5))
  {
    v10 = sub_1BD5C795C(v12, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1BD6D4E94(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v88 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v84 - v11;
  v13 = [a1 shippingMethod];
  v91 = a2;
  if (!v13)
  {

    v61 = 0;
    v62 = 0;
    v21 = 0;
    v23 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v16 = 0;
LABEL_33:
    v70 = 0;
    v71 = 0;
LABEL_44:
    v82 = v91;
    *v91 = v61;
    v82[1] = v62;
    v82[2] = v21;
    v82[3] = v23;
    v82[4] = v63;
    v82[5] = v71;
    v82[6] = v64;
    v82[7] = v65;
    v82[8] = v66;
    v82[9] = v67;
    v82[10] = v16;
    v82[11] = v70;
    return;
  }

  v89 = v13;
  v90 = a1;
  v14 = [a1 paymentRequest];
  if (!v14)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v15 = v14;
  v16 = [v14 availableShippingMethods];

  if (!v16)
  {

    v61 = 0;
    v62 = 0;
    v21 = 0;
    v23 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    goto LABEL_33;
  }

  v85 = v12;
  v84 = v16;
  v17 = [v16 methods];
  sub_1BD6D56D0();
  v103 = sub_1BE052744();

  v18 = v90;
  v19 = [v90 currencyCode];
  if (!v19)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = v19;
  v21 = sub_1BE052434();
  v23 = v22;

  v24 = [v18 paymentRequest];
  if (!v24)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v25 = v24;
  v26 = [v24 shippingType];

  v27 = v103;
  if (v103 >> 62)
  {
    goto LABEL_46;
  }

  v28 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v86 = 0xEE00454C5449545FLL;
  v87 = 0x474E495050494853;
  v29 = MEMORY[0x1E69B8068];
  v102 = v26;
  if (v28)
  {
    v30 = v27;
    v112 = MEMORY[0x1E69E7CC0];
    v27 = sub_1BD531AA4(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v32 = v112;
      v33 = v30;
      v92 = v30 & 0xFFFFFFFFFFFFFF8;
      v100 = 0x80000001BE1359F0;
      v101 = v30 & 0xC000000000000001;
      v99 = 0x80000001BE1359D0;
      v98 = *MEMORY[0x1E69B8068];
      v96 = (v88 + 8);
      v97 = (v88 + 104);
      v94 = v4;
      v95 = v28 - 1;
      v93 = v7;
      while (1)
      {
        v108 = v32;
        if (v101)
        {
          v34 = MEMORY[0x1BFB40900](v31, v33);
        }

        else
        {
          if (v31 >= *(v92 + 16))
          {
            goto LABEL_45;
          }

          v34 = *(v33 + 8 * v31 + 32);
        }

        v35 = v34;
        v111 = 0;
        (*v97)(v7, v98, v4);
        sub_1BE048C84();
        v36 = v35;
        v37 = PKPassKitBundle();
        if (!v37)
        {
          goto LABEL_48;
        }

        v38 = v37;
        v39 = sub_1BE04B6F4();
        v106 = v40;

        (*v96)(v7, v4);
        v41 = [v36 dateComponentsRange];
        v107 = v39;
        if (v41)
        {
          v42 = v41;
          v43 = [objc_allocWithZone(MEMORY[0x1E69B8790]) init];
          v44 = [v43 stringFromDateComponentsRange_];

          if (v44)
          {
            v45 = sub_1BE052434();
            v104 = v46;
            v105 = v45;

            goto LABEL_22;
          }
        }

        v47 = [v36 detail];
        if (!v47)
        {
          v104 = 0;
          v105 = 0;
          goto LABEL_24;
        }

        v42 = v47;
        v48 = sub_1BE052434();
        v104 = v49;
        v105 = v48;
LABEL_22:

LABEL_24:
        sub_1BD5C7B84(v36);
        v51 = v50;
        v53 = v52;

        v54 = v111;
        v109[0] = *v110;
        *(v109 + 3) = *&v110[3];
        v32 = v108;
        v112 = v108;
        v56 = *(v108 + 16);
        v55 = *(v108 + 24);
        if (v56 >= v55 >> 1)
        {
          v27 = sub_1BD531AA4((v55 > 1), v56 + 1, 1);
          v32 = v112;
        }

        *(v32 + 16) = v56 + 1;
        v57 = v32 + 88 * v56;
        *(v57 + 32) = v36;
        *(v57 + 40) = v21;
        v26 = v102;
        *(v57 + 48) = v23;
        *(v57 + 56) = v26;
        *(v57 + 64) = v54;
        v58 = *(v109 + 3);
        *(v57 + 65) = v109[0];
        *(v57 + 68) = v58;
        v59 = v106;
        *(v57 + 72) = v107;
        *(v57 + 80) = v59;
        v60 = v104;
        *(v57 + 88) = v105;
        *(v57 + 96) = v60;
        *(v57 + 104) = v51;
        *(v57 + 112) = v53;
        if (v95 == v31)
        {
          v68 = v32;

          v69 = v68;
          v4 = v94;
          v29 = MEMORY[0x1E69B8068];
          goto LABEL_35;
        }

        ++v31;
        v7 = v93;
        v4 = v94;
        v33 = v103;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v83 = v27;
          v28 = sub_1BE053704();
          v27 = v83;
          goto LABEL_8;
        }
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_35:
  LOBYTE(v112) = 0;
  v108 = v69;
  if (v26 == 3)
  {
    v86 = 0x80000001BE1359D0;
    v72 = 0xD000000000000013;
  }

  else if (v26 == 2)
  {
    v86 = 0x80000001BE1359F0;
    v72 = 0xD000000000000011;
  }

  else
  {
    if (v26 != 1)
    {
      goto LABEL_42;
    }

    v72 = 0x59524556494C4544;
  }

  v87 = v72;
LABEL_42:
  v73 = v88;
  v74 = v85;
  (*(v88 + 104))(v85, *v29, v4);
  sub_1BE048C84();
  v75 = v89;
  v76 = PKPassKitBundle();
  if (v76)
  {
    v77 = v76;
    v64 = sub_1BE04B6F4();
    v65 = v78;

    (*(v73 + 8))(v74, v4);
    v66 = sub_1BD5C7AA0(v75);
    v67 = v79;
    sub_1BD5C7B84(v75);
    v16 = v80;
    v70 = v81;

    v71 = v112;
    v62 = v89;
    v63 = v102;
    v61 = v108;
    goto LABEL_44;
  }

LABEL_52:
  __break(1u);
}

unint64_t sub_1BD6D56D0()
{
  result = qword_1EBD45FC8;
  if (!qword_1EBD45FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45FC8);
  }

  return result;
}

uint64_t sub_1BD6D571C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1BD6D5764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD6D57E0()
{
  result = qword_1EBD502D8;
  if (!qword_1EBD502D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD502D8);
  }

  return result;
}

const char *sub_1BD6D5848()
{
  v1 = "Shasta";
  v2 = "Phoenix";
  if (*v0 != 2)
  {
    v2 = "WalletFPANUpdates";
  }

  if (*v0)
  {
    v1 = "ShastaProvisioning";
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

uint64_t sub_1BD6D58A8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BD6D5928(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1BE048C84();
  sub_1BD6D5A50(v2, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6D59B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

void sub_1BD6D5A50(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v28 == a1 && v29 == a2)
  {

    return;
  }

  v6 = sub_1BE053B84();

  if (v6)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_ignoreNextSearchedText] == 1)
  {
    v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_ignoreNextSearchedText] = 0;
    return;
  }

  v7 = *&v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel];
  [v7 endSearch];
  if (v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_emptyResultsForEmptySearchTerm] == 1)
  {
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = v2;
      sub_1BE04D8C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v23;
      sub_1BE04D8C4();
      return;
    }
  }

  v9 = objc_allocWithZone(MEMORY[0x1E69B8530]);
  v10 = sub_1BE052404();
  v11 = [v9 initWithFullText_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v11 setOutputKey_];
  v12 = sub_1BE052434();
  v14 = v13;
  v15 = [v11 keysToFetch];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_1BE052744();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1BD03B038(0, *(v17 + 16) + 1, 1, v17);
  }

  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v20 = v18 + 1;
  if (v18 >= v19 >> 1)
  {
    v25 = v17;
    v26 = *(v17 + 16);
    v27 = sub_1BD03B038((v19 > 1), v18 + 1, 1, v25);
    v18 = v26;
    v17 = v27;
  }

  *(v17 + 16) = v20;
  v21 = v17 + 16 * v18;
  *(v21 + 32) = v12;
  *(v21 + 40) = v14;
  v22 = sub_1BE052724();

  [v11 setKeysToFetch_];

  [v7 beginSearch_];
}

uint64_t sub_1BD6D5D64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

char *sub_1BD6D5DD8(int a1, int a2, int a3)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD503B8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__isMatchingContact;
  LOBYTE(v36) = 0;
  sub_1BE04D874();
  (*(v14 + 32))(&v3[v18], v17, v13);
  v19 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel;
  *&v3[v19] = [objc_allocWithZone(MEMORY[0x1E69B8528]) init];
  v20 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__contactResults;
  v21 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD50340);
  sub_1BE04D874();
  v22 = *(v9 + 32);
  v22(&v3[v20], v12, v8);
  v23 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__mapsResults;
  v36 = v21;
  sub_1BE04D874();
  v22(&v3[v23], v12, v8);
  v24 = &v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__searchText;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1BE04D874();
  (*(v4 + 32))(&v3[v25], v7, v31);
  v26 = v33;
  v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_emptyResultsForEmptySearchTerm] = v32;
  v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_ignoreNextSearchedText] = v26;
  v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_mapsOnly] = v34;
  v27 = type metadata accessor for AddressSearchingModel();
  v35.receiver = v3;
  v35.super_class = v27;
  v28 = objc_msgSendSuper2(&v35, sel_init);
  [*&v28[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel] setDelegate_];
  return v28;
}

id sub_1BD6D614C(void *a1, char a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v17)
  {
    v10 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v5;
    sub_1BE04D8C4();
    if (a2)
    {
      v12 = &v11[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
      v13 = *&v11[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
      *v12 = a3;
      *(v12 + 1) = a4;
      sub_1BE048964();
      sub_1BD0D4744(v13);
      return [*&v11[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel] selectMapSearchCompletion_];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v11;
    sub_1BE04D8C4();
    sub_1BE052434();
    v16 = sub_1BE052404();

    [a1 setValueSource_];

    v10 = a1;
  }

  return a3(v10);
}

id sub_1BD6D6334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressSearchingModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AddressSearchingModel()
{
  result = qword_1EBD50320;
  if (!qword_1EBD50320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6D6524()
{
  sub_1BD540F14(319, &qword_1EBD368F0);
  if (v0 <= 0x3F)
  {
    sub_1BD6D6670();
    if (v1 <= 0x3F)
    {
      sub_1BD540F14(319, &unk_1EBD49E00);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD6D6670()
{
  if (!qword_1EBD50338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD50340);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD50338);
    }
  }
}

uint64_t sub_1BD6D66D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddressSearchingModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

char *sub_1BD6D6714(unint64_t a1, id a2)
{
  result = [a2 contactsSearchResults];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1BD0E5E8C(0, &qword_1EBD406E0);
  v5 = sub_1BE052744();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v16 = MEMORY[0x1E69E7CC0];
      result = sub_1BD532354(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        break;
      }

      v7 = 0;
      v15 = a1;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB40900](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        result = [v9 pkContactWithCleanedUpCountryCode];
        if (!result)
        {
          goto LABEL_22;
        }

        v11 = result;

        a1 = *(v16 + 16);
        v12 = *(v16 + 24);
        if (a1 >= v12 >> 1)
        {
          sub_1BD532354((v12 > 1), a1 + 1, 1);
        }

        *(v16 + 16) = a1 + 1;
        v13 = v16 + 16 * a1;
        *(v13 + 32) = v11;
        *(v13 + 40) = 0;
        ++v7;
        if (v8 == v6)
        {

          a1 = v15;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v6 = sub_1BE053704();
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_19:

LABEL_20:
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6D69BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BE051FA4();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  aBlock[4] = v22;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v23;
  v17 = _Block_copy(aBlock);
  v18 = v4;
  v19 = a1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v24);
}

char *sub_1BD6D6C4C(void *a1, id a2)
{
  result = [a2 completionSearchResults];
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  sub_1BD0E5E8C(0, &qword_1EBD503C8);
  v5 = sub_1BE052744();

  if (v5 >> 62)
  {
    v6 = sub_1BE053704();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:

    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    return sub_1BE04D8C4();
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1BD532354(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v15;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB40900](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v16 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v9;
        sub_1BD532354((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v16;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      v12 = v8 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = 1;
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BD6D6EB0(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  result = sub_1BE04D8C4();
  v6 = &v4[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
  v7 = *&v4[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
  if (v7)
  {
    sub_1BE048964();
    v8 = [a2 pkContactWithCleanedUpCountryCode];
    if (v8)
    {
      sub_1BE052434();
      v9 = v8;
      v10 = sub_1BE052404();

      [v9 setValueSource_];
    }

    v7(v8);
    sub_1BD0D4744(v7);

    v11 = *v6;
    *v6 = 0;
    v6[1] = 0;
    return sub_1BD0D4744(v11);
  }

  return result;
}

uint64_t sub_1BD6D7084@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD6D7104(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6D71C4(void *a1)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1BD6D7460;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_162;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v1;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

id TrailingAccessoryLabel.attributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) attributedText];

  return v1;
}

void TrailingAccessoryLabel.attributedText.setter(void *a1)
{
  [*&v1[OBJC_IVAR___PKTrailingAccessoryLabel_textView] setAttributedText_];
  [v1 setNeedsLayout];
}

void (*TrailingAccessoryLabel.attributedText.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) attributedText];
  return sub_1BD6D7658;
}

void sub_1BD6D7658(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[*(a1 + 16)];
  if (a2)
  {
    v4 = *a1;
    [v3 setAttributedText_];
    [v2 setNeedsLayout];
  }

  else
  {
    v4 = *a1;
    [*&v2[*(a1 + 16)] setAttributedText_];
    [v2 setNeedsLayout];
  }
}

id TrailingAccessoryLabel.maximumNumberOfLines.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  v2 = [v1 maximumNumberOfLines];

  return v2;
}

void TrailingAccessoryLabel.maximumNumberOfLines.setter(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  [v3 setMaximumNumberOfLines_];
}

void sub_1BD6D78B4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a2 = v4;
}

void sub_1BD6D791C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = [*(*a2 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  [v3 setMaximumNumberOfLines_];
}

void (*TrailingAccessoryLabel.maximumNumberOfLines.modify(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = [*(v1 + v3) textContainer];
  v5 = [v4 maximumNumberOfLines];

  *a1 = v5;
  return sub_1BD6D7A14;
}

void sub_1BD6D7A14(uint64_t *a1)
{
  v1 = *a1;
  v2 = [*(a1[1] + a1[2]) textContainer];
  [v2 setMaximumNumberOfLines_];
}

double TrailingAccessoryLabel.contentInsets.getter()
{
  v1 = v0 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  return *v1;
}

id TrailingAccessoryLabel.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [v4 setNeedsLayout];
}

id sub_1BD6D7C14(_OWORD *a1, void **a2)
{
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  return [v3 setNeedsLayout];
}

id (*TrailingAccessoryLabel.contentInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD1ED468;
}

id TrailingAccessoryLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TrailingAccessoryLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets];
  v11 = *MEMORY[0x1E69DDCE0];
  v12 = *(MEMORY[0x1E69DDCE0] + 8);
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  v14 = *(MEMORY[0x1E69DDCE0] + 24);
  *v10 = *MEMORY[0x1E69DDCE0];
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  *&v4[v15] = sub_1BD1AE038(MEMORY[0x1E69E7CC0]);
  v16 = &v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_textView] = v17;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  v20 = *&v18[OBJC_IVAR___PKTrailingAccessoryLabel_textView];
  v21 = v18;
  [v20 setAdjustsFontForContentSizeCategory_];
  [*&v18[v19] setEditable_];
  [*&v18[v19] setSelectable_];
  [*&v18[v19] setTextAlignment_];
  [*&v18[v19] setTextContainerInset_];
  [*&v18[v19] setContentInsetAdjustmentBehavior_];
  v22 = [*&v18[v19] textContainer];
  [v22 setLineFragmentPadding_];

  [*&v18[v19] setScrollEnabled_];
  PKAccessibilityIDSet(*&v18[v19], *MEMORY[0x1E69B9D20]);
  v23 = *&v18[v19];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor_];

  [v21 addSubview_];
  return v21;
}

CGSize __swiftcall TrailingAccessoryLabel.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = sub_1BD6D80C8(1, 0.0, 0.0, a1.width, 1.79769313e308);
  v3 = width;
  result.height = v2;
  result.width = v3;
  return result;
}

double sub_1BD6D80C8(char a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5)
{
  v11 = sub_1BD6D8900(v5, a4);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MidX = CGRectGetMidX(v27);
  v13.n128_f64[0] = v11 * -0.5;
  v14.n128_f64[0] = MidX + v11 * -0.5;
  PKFloatFloorToPixel(v14, v13);
  v16 = v15;
  v17 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  v18 = [*(v5 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) attributedText];
  if (v18)
  {
    v19 = v18;
    if ([v18 length] >= 1)
    {
      v20 = *(v5 + v17);
      [v20 sizeThatFits_];
      v22 = v21;

      goto LABEL_6;
    }
  }

  v22 = *(v5 + OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize + 8);
LABEL_6:
  v28.origin.x = v16;
  v28.origin.y = a3;
  v28.size.width = v11;
  v28.size.height = v22;
  MaxY = CGRectGetMaxY(v28);
  if ((a1 & 1) == 0)
  {
    [*(v5 + v17) setFrame_];
    v24 = [*(v5 + v17) textContainer];
    [v24 setSize_];
  }

  sub_1BD6D89F0(v16, a3, v11, v22, v26, a1 & 1);
  return MaxY;
}

Swift::Void __swiftcall TrailingAccessoryLabel.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  sub_1BD6D80C8(0, v1, v2, v3, v4);
}

Swift::Void __swiftcall TrailingAccessoryLabel.registerAccessory(view:withSize:for:)(UIView *view, CGSize withSize, Swift::String a3)
{
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  height = withSize.height;
  width = withSize.width;
  v7 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  if (!*(*&v3[v7] + 16) || (sub_1BE048C84(), sub_1BD148F70(countAndFlagsBits, object), v9 = v8, , (v9 & 1) == 0))
  {
    *&v16 = countAndFlagsBits;
    *(&v16 + 1) = object;
    v17 = width;
    v18 = height;
    v19 = view;
    v20 = 0;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v10 = view;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *&v3[v7];
    *&v3[v7] = 0x8000000000000000;
    sub_1BD1DBC60(&v16, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

    *&v3[v7] = v15;
    swift_endAccess();
    v12.f64[0] = width;
    v12.f64[1] = height;
    *&v3[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize] = vbslq_s8(vcgeq_f64(v12, *&v3[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]), v12, *&v3[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]);
    [v3 addSubview_];
  }
}

Swift::Void __swiftcall TrailingAccessoryLabel.registerAccessory(layer:withSize:for:)(CALayer layer, CGSize withSize, Swift::String a3)
{
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  height = withSize.height;
  width = withSize.width;
  v7 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  if (!*(*&v3[v7] + 16) || (sub_1BE048C84(), sub_1BD148F70(countAndFlagsBits, object), v9 = v8, , (v9 & 1) == 0))
  {
    *&v17 = countAndFlagsBits;
    *(&v17 + 1) = object;
    v18 = width;
    v19 = height;
    isa = layer.super.isa;
    v21 = 1;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v10 = layer.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *&v3[v7];
    *&v3[v7] = 0x8000000000000000;
    sub_1BD1DBC60(&v17, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

    *&v3[v7] = v16;
    swift_endAccess();
    v12.f64[0] = width;
    v12.f64[1] = height;
    *&v3[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize] = vbslq_s8(vcgeq_f64(v12, *&v3[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]), v12, *&v3[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]);
    v13 = [v3 layer];
    [v13 addSublayer_];
  }
}

uint64_t sub_1BD6D8688(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t, double, double))
{
  v12 = sub_1BE052434();
  v14 = v13;
  v15 = a5;
  v16 = a1;
  a7(v15, v12, v14, a2, a3);
}

Swift::Void __swiftcall TrailingAccessoryLabel.unregisterAccessories()()
{
  v1 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048C84();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + 48 * (v9 | (v8 << 6));
    v11 = *(v10 + 32);
    if (*(v10 + 40))
    {
      v12 = &selRef_removeFromSuperlayer;
    }

    else
    {
      v12 = &selRef_removeFromSuperview;
    }

    [v11 *v12];
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

      *&v0[v1] = MEMORY[0x1E69E7CC8];

      v13 = &v0[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize];
      *v13 = 0;
      *(v13 + 1) = 0;
      [v0 setNeedsLayout];
      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1BD6D8900(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v5 = *(*(a1 + v4) + 16);
  v6 = a1 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  v7 = *(v6 + 8) + *(v6 + 24);
  if (v5)
  {
    v8 = [*(a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textAlignment];
    v9 = 1.0;
    if (v8 == 1)
    {
      v9 = 2.0;
    }

    v10 = v9 * (*(a1 + OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize) + 6.0);
    if (v7 <= v10)
    {
      v7 = v10;
    }
  }

  return a2 - v7;
}

void sub_1BD6D89F0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_1BD6D8B9C(v6, 0, a1, a2, a3, a4);
    v7 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
    swift_beginAccess();
    v8 = *&v6[v7];
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(v8 + 56) + 48 * (v15 | (v14 << 6)) + 32);
      sub_1BE048C84();
      v17 = v16;
      PKSizeAlignedInRect();
      PKRectRoundToPixel(v18, v19, v20, v21, v22);
      [v17 setFrame_];
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

CGFloat sub_1BD6D8B9C(char *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [a1 _shouldReverseLayoutDirection];
  v13 = sub_1BD6D8D5C(a1, a2, a3, a4, a5, a6);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    [v14 typographicBounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v15 layoutFragmentFrame];
    v26 = v25;
    v28 = v27;
    v29 = OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize;
    v30 = *&a1[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize];
    v48.origin.x = v18;
    v48.origin.y = v20;
    v48.size.width = v22;
    v48.size.height = v24;
    Height = CGRectGetHeight(v48);
    v32 = v18;
    v33 = v20;
    v34 = v22;
    v35 = v24;
    if (v12)
    {
      MinX = CGRectGetMinX(*&v32);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v32);
    }

    v37 = v20;
    v38 = v30;
    v39 = Height;
    v49 = CGRectOffset(*&MinX, v26, v28);
    y = v49.origin.y;
    v41 = v49.size.height;
    v42 = *&a1[v29];
    v43 = 6.0;
    if (v12)
    {
      v43 = -(v42 + 6.0);
    }

    v44 = v49.origin.x + v43;
    v45 = *&a1[OBJC_IVAR___PKTrailingAccessoryLabel_textView];
    [v45 convertRect:a1 toCoordinateSpace:{v44, y, v42, v41}];
    a3 = v46;
  }

  return a3;
}

unint64_t sub_1BD6D8D5C(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = [*(a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textLayoutManager];
  if (!result)
  {
    return result;
  }

  v12 = result;
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  [result ensureLayoutForBounds_];
  v29 = 0;
  v13 = [v12 documentRange];
  v14 = [v13 endLocation];

  v15 = swift_allocObject();
  *(v15 + 16) = &v29;
  v16 = swift_allocObject();
  v16[2] = sub_1BD6D91F0;
  v16[3] = v15;
  aBlock[4] = sub_1BD22277C;
  v28 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD055558;
  aBlock[3] = &block_descriptor_163;
  v17 = _Block_copy(aBlock);
  v18 = v28;
  sub_1BE048964();

  v19 = [v12 enumerateTextLayoutFragmentsFromLocation:v14 options:1 usingBlock:v17];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (!v29)
    {
      if (a2)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v18 = v29;
    v16 = v29;
    v21 = [v16 textLineFragments];
    sub_1BD6D9224();
    isEscapingClosureAtFileLocation = sub_1BE052744();

    if (!(isEscapingClosureAtFileLocation >> 62))
    {
      v22 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_6;
      }

LABEL_19:

      if (a2)
      {
LABEL_20:
        v26 = [v12 documentRange];
        [v12 invalidateLayoutForRange_];

LABEL_22:
        return 0;
      }

LABEL_21:

      goto LABEL_22;
    }
  }

  v22 = sub_1BE053704();
  if (!v22)
  {
    goto LABEL_19;
  }

LABEL_6:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
LABEL_25:
    MEMORY[0x1BFB40900](result, isEscapingClosureAtFileLocation);
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v24 = *(isEscapingClosureAtFileLocation + 8 * result + 32);
LABEL_11:

  if (a2)
  {
    v25 = [v12 documentRange];
    [v12 invalidateLayoutForRange_];
  }

  else
  {
  }

  return v18;
}

id TrailingAccessoryLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD6D91F0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
  v4 = a1;

  return 0;
}

unint64_t sub_1BD6D9224()
{
  result = qword_1EBD503F0;
  if (!qword_1EBD503F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD503F0);
  }

  return result;
}

uint64_t sub_1BD6D9280()
{

  sub_1BD0D4534(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_1BD6D92FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v11 = sub_1BE04BA54();
  (*(v7 + 8))(v10, v6);
  v12 = sub_1BE04BBD4();
  v13 = *(v3 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1BD6D981C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD4F4AA0;
  aBlock[3] = &block_descriptor_164;
  v16 = _Block_copy(aBlock);
  sub_1BE048964();

  [v12 setupProductForProvisioning:v13 includePurchases:(v11 & 1) == 0 withCompletionHandler:v16];
  _Block_release(v16);
}

void sub_1BD6D94EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v12 = a2;
      v13 = sub_1BE04A844();
      v14 = swift_allocObject();
      *(v14 + 16) = a5;
      *(v14 + 24) = a6;
      aBlock[4] = sub_1BD1B5F6C;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_12_5;
      v15 = _Block_copy(aBlock);
      sub_1BE048964();

      v16 = PKAlertForDisplayableErrorWithCancelHandler(v13, 0, v15);
      _Block_release(v15);

      if (v16)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v17 = *(v11 + 48);
          ObjectType = swift_getObjectType();
          (*(v17 + 24))(v16, ObjectType, v17);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      a5(0);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      if (a3)
      {
        v19 = a3;
      }

      *(Strong + 32) = v19;
      sub_1BE048C84();

      a5(1);
    }
  }
}

id sub_1BD6D96F8(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[2];
  v6 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x80000001BE1229B0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v5;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v3;
  v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = v4;
  v10.receiver = v7;
  v10.super_class = v6;
  sub_1BE048C84();
  v9 = v4;
  sub_1BE048964();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t type metadata accessor for PaymentOfferInstallmentCriteriaIconView()
{
  result = qword_1EBD503F8;
  if (!qword_1EBD503F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6D98A4()
{
  sub_1BD6D9968();
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD39D98);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1BD249694();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD6D9968()
{
  if (!qword_1EBD50408)
  {
    sub_1BD0E5E8C(255, &qword_1EBD50410);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD50408);
    }
  }
}

double sub_1BD6D99EC@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v66 = &v59 - v12;
  v13 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v59 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50420);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v65 = &v59 - v35;
  v36 = *a1;
  if (*a1)
  {
    PKScreenScale();
    v60 = a1;
    v38 = [v36 urlForScreenScale:sub_1BD6DA288() appearance:v37];
    if (v38)
    {
      v39 = v38;
      sub_1BE04A9F4();

      (*(v4 + 56))(v23, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v23, 1, 1, v3);
    }

    sub_1BD0DE204(v23, v27, &unk_1EBD3CF70);
    v41 = v3;
    v40 = v60;
  }

  else
  {
    (*(v4 + 56))(v27, 1, 1, v3, v34);
    v40 = a1;
    v41 = v3;
  }

  v42 = v64;
  sub_1BD23FAEC(v40, v64);
  v43 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v44 = swift_allocObject();
  sub_1BD6DA624(v42, v44 + v43);
  v45 = [objc_opt_self() sharedURLCache];
  sub_1BD0DE19C(v27, v19, &unk_1EBD3CF70);
  if ((*(v4 + 48))(v19, 1, v41) == 1)
  {
    sub_1BD226BBC(v19);
    v46 = 1;
    v47 = v66;
  }

  else
  {
    v48 = *(v4 + 32);
    v64 = v44;
    v49 = v45;
    v50 = v62;
    v48(v62, v19, v41);
    (*(v4 + 16))(v61, v50, v41);
    v47 = v66;
    sub_1BE04A114();
    v51 = v50;
    v45 = v49;
    v44 = v64;
    (*(v4 + 8))(v51, v41);
    v46 = 0;
  }

  v52 = sub_1BE04A134();
  (*(*(v52 - 8) + 56))(v47, v46, 1, v52);
  sub_1BD0DE204(v47, &v31[v28[10]], &qword_1EBD45720);
  *(v31 + 2) = sub_1BD6DA688;
  *(v31 + 3) = v44;
  *&v31[v28[12]] = 0;
  v53 = &v31[v28[13]];
  *v53 = 0;
  *(v53 + 1) = 0;
  *(v53 + 2) = 0;
  v53[24] = 1;
  *&v31[v28[11]] = v45;
  v68 = 0x8000000000000000;
  sub_1BE051694();
  sub_1BD226BBC(v27);
  *v31 = v69;
  v54 = v65;
  sub_1BD0DE204(v31, v65, &qword_1EBD50420);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v55 = v67;
  sub_1BD0DE204(v54, v67, &qword_1EBD50420);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50428) + 36));
  v57 = v70;
  *v56 = v69;
  v56[1] = v57;
  result = *&v71;
  v56[2] = v71;
  return result;
}

double sub_1BD6DA03C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v13 = [*(a2 + 8) issuerName];
    v14 = sub_1BE052434();
    v16 = v15;

    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    if (v17 > 36.0)
    {
      v19 = 32.0;
    }

    else
    {
      v19 = 20.0;
    }

    v20 = sub_1BE0512A4();
    v21 = sub_1BE051284();
    LOBYTE(v26) = 1;
    v29 = v14;
    v30 = v16;
    *v31 = v17;
    *&v31[8] = v18;
    *&v31[16] = v19;
    *&v31[24] = v20;
    *&v31[32] = v21;
    v32 = 1;
  }

  else
  {
    (*(v7 + 104))(v11, *MEMORY[0x1E6981630], v6, v9);
    v12 = sub_1BE0515E4();
    (*(v7 + 8))(v11, v6);
    v28 = 1;
    v25[8] = 0;
    v29 = v12;
    v30 = 0;
    *v31 = 1;
    *&v31[2] = v26;
    *&v31[18] = *v27;
    *&v31[32] = *&v27[14];
    v32 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
  sub_1BD223C50();
  sub_1BD3F835C();
  sub_1BE04F9A4();
  v22 = v34;
  v23 = v35[0];
  *a3 = v33;
  a3[1] = v22;
  a3[2] = v23;
  result = *(v35 + 9);
  *(a3 + 41) = *(v35 + 9);
  return result;
}

uint64_t sub_1BD6DA288()
{
  v19 = sub_1BE04F3D4();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v18 - v7;
  v9 = sub_1BE04E354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  sub_1BD0DE19C(v0 + *(v14 + 28), v8, &qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v19);
  }

  v16 = (*(v10 + 88))(v13, v9);
  if (v16 == *MEMORY[0x1E697DBB8])
  {
    return 1;
  }

  if (v16 == *MEMORY[0x1E697DBA8])
  {
    return 2;
  }

  (*(v10 + 8))(v13, v9);
  return 0;
}

uint64_t sub_1BD6DA55C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD6D99EC(v1, a1);
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50418) + 36));
  v4 = *(sub_1BE04EDE4() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  __asm { FMOV            V0.2D, #8.0 }

  *v3 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50);
  *&v3[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1BD6DA624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD6DA688@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentOfferInstallmentCriteriaIconView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD6DA03C(a1, v6, a2);
}

unint64_t sub_1BD6DA708()
{
  result = qword_1EBD50430;
  if (!qword_1EBD50430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50418);
    sub_1BD6DA7C0();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50430);
  }

  return result;
}

unint64_t sub_1BD6DA7C0()
{
  result = qword_1EBD50438;
  if (!qword_1EBD50438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50440);
    sub_1BD6DA844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50438);
  }

  return result;
}

unint64_t sub_1BD6DA844()
{
  result = qword_1EBD50448;
  if (!qword_1EBD50448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50428);
    sub_1BD0DE4F4(&qword_1EBD50450, &qword_1EBD50420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50448);
  }

  return result;
}

char *sub_1BD6DA8FC()
{
  if (sub_1BD6DAF04() && (v1 = *(v0 + 56)) != 0)
  {
    v2 = *(v0 + 64);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    sub_1BD0D44B8(v1);
    sub_1BE048964();
    v4 = sub_1BD1D95CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1BD1D95CC((v5 > 1), v6 + 1, 1, v4);
    }

    sub_1BD0D4744(v1);
    *(v4 + 2) = v6 + 1;
    v7 = &v4[24 * v6];
    *(v7 + 16) = 4;
    *(v7 + 5) = sub_1BD267328;
    *(v7 + 6) = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = [*(v0 + 16) savingsDetails];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 contactNumber];

    if (v10)
    {
      v11 = sub_1BE052434();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *(v0 + 24);
        if (v15)
        {
          v16 = *(v0 + 32);
          v17 = swift_allocObject();
          *(v17 + 16) = v15;
          *(v17 + 24) = v16;
          sub_1BD0D44B8(v15);
          sub_1BE048964();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1BD1D95CC(0, *(v4 + 2) + 1, 1, v4);
          }

          v19 = *(v4 + 2);
          v18 = *(v4 + 3);
          if (v19 >= v18 >> 1)
          {
            v4 = sub_1BD1D95CC((v18 > 1), v19 + 1, 1, v4);
          }

          sub_1BD0D4744(v15);
          *(v4 + 2) = v19 + 1;
          v20 = &v4[24 * v19];
          *(v20 + 16) = 0;
          *(v20 + 5) = sub_1BD214190;
          *(v20 + 6) = v17;
        }
      }
    }
  }

  v21 = sub_1BD6DACE8();
  if (v22)
  {
    v23 = v21;
    v24 = v22;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v26 = *(v0 + 40);
      if (v26)
      {
        v27 = *(v0 + 48);
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        *(v28 + 24) = v27;
        sub_1BD0D44B8(v26);
        sub_1BE048964();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1BD1D95CC(0, *(v4 + 2) + 1, 1, v4);
        }

        v30 = *(v4 + 2);
        v29 = *(v4 + 3);
        if (v30 >= v29 >> 1)
        {
          v4 = sub_1BD1D95CC((v29 > 1), v30 + 1, 1, v4);
        }

        sub_1BD0D4744(v26);
        *(v4 + 2) = v30 + 1;
        v31 = &v4[24 * v30];
        *(v31 + 16) = 2;
        *(v31 + 5) = sub_1BD267328;
        *(v31 + 6) = v28;
      }
    }
  }

  if (*(v4 + 2) == 1)
  {
    v32 = v4[32] == 0;
    sub_1BE048964();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1BD1D95CC(0, 2, 1, v4);
    }

    v34 = *(v4 + 2);
    v33 = *(v4 + 3);
    if (v34 >= v33 >> 1)
    {
      v4 = sub_1BD1D95CC((v33 > 1), v34 + 1, 1, v4);
    }

    *(v4 + 2) = v34 + 1;
    v35 = &v4[24 * v34];
    v35[32] = 2 * v32;
    v35[33] = 1;
    *(v35 + 5) = PKEdgeInsetsMake;
    *(v35 + 6) = 0;
  }

  return v4;
}

id sub_1BD6DACE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v16 - v8;
  result = [*(v0 + 16) savingsDetails];
  if (result)
  {
    v11 = result;
    v12 = [result contactWebsite];

    if (v12)
    {
      sub_1BE04A9F4();

      v13 = sub_1BE04AA64();
      (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
    }

    else
    {
      v13 = sub_1BE04AA64();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    }

    sub_1BD226B4C(v4, v9);
    sub_1BE04AA64();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      sub_1BD226BBC(v9);
      return 0;
    }

    else
    {
      v15 = sub_1BE04A9B4();
      (*(v14 + 8))(v9, v13);
      return v15;
    }
  }

  return result;
}

BOOL sub_1BD6DAF04()
{
  v1 = [*(v0 + 16) savingsDetails];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 businessChatIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BE052434();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 && ([objc_opt_self() deviceSupportsBusinessChat] & 1) != 0;
}

uint64_t sub_1BD6DAFC0()
{
  sub_1BD0D4744(*(v0 + 24));
  sub_1BD0D4744(*(v0 + 40));
  sub_1BD0D4744(*(v0 + 56));

  return swift_deallocClassInstance();
}

char *sub_1BD6DB034@<X0>(char **a1@<X8>)
{
  result = sub_1BD6DA8FC();
  *a1 = result;
  return result;
}

unint64_t sub_1BD6DB08C()
{
  result = qword_1EBD50458;
  if (!qword_1EBD50458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50458);
  }

  return result;
}

uint64_t sub_1BD6DB0E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v1 = sub_1BD6DB0E0();

      return v1;
    }
  }

  return result;
}

uint64_t sub_1BD6DB14C()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v1) = (*(v2 + 72))(ObjectType, v2);
    *(v0 + 112) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1BD6DB1B4()
{
  v1 = *(v0 + 113);
  if (v1 == 2)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v1) = (*(v2 + 80))(ObjectType, v2);
    *(v0 + 113) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1BD6DB21C()
{
  if (*(v0 + 88) == 1)
  {
    *(v0 + 88) = 0;
    if (*(v0 + 32))
    {
      v1 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v1 + 64))(ObjectType, v1);
    }
  }

  swift_unknownObjectRelease();

  sub_1BD28B4B8(*(v0 + 48));
  swift_weakDestroy();

  swift_weakDestroy();
  sub_1BD0D4534(v0 + 96);
  return v0;
}

uint64_t sub_1BD6DB2BC()
{
  sub_1BD6DB21C();

  return swift_deallocClassInstance();
}

uint64_t sub_1BD6DB314(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  LOBYTE(v6) = a4;
  if (!a2)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v10 = *(v4 + 72);
  if (v10 >> 62)
  {
    v11 = sub_1BE053704();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_13:
    swift_beginAccess();
    v14 = sub_1BE048964();
    MEMORY[0x1BFB3F7A0](v14);
    if (*((*(v5 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_25:
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
LABEL_15:
    swift_weakAssign();
    if (!a3)
    {
      sub_1BE048964();
    }

    swift_weakAssign();
    sub_1BE048964();

    *(a1 + 57) = v6 & 1;
    return result;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_4:
  v18 = v6;
  sub_1BE048964();
  sub_1BE048C84();
  v6 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB40900](v6, v10);
      swift_unknownObjectRelease();
      if (v12 == a2)
      {
        break;
      }

      goto LABEL_10;
    }

    if (v6 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(v10 + 8 * v6 + 32) == a2)
    {
      break;
    }

LABEL_10:
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    ++v6;
    if (v13 == v11)
    {

      LOBYTE(v6) = v18;
      goto LABEL_13;
    }
  }

  v16 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_29:
    result = sub_1BE053704();
    if (result >= v16)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  v17 = *(v5 + 72);
  LOBYTE(v6) = v18;
  if (v17 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  if ((v16 & 0x8000000000000000) == 0)
  {
    sub_1BE048964();
    sub_1BD1DD044(v16, v16, a1);
    swift_endAccess();

    goto LABEL_15;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1BD6DB5A4(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD1DE2D8(0, 0, v1);
    swift_endAccess();
  }

  result = sub_1BE053704();
  v2 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1BFB40900](i, v1);
        swift_weakAssign();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v4 = v1 + 32;
      do
      {
        v4 += 8;
        swift_weakAssign();
        --v2;
      }

      while (v2);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6DB6B4()
{
  v1 = v0;
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  *(v3 + 32) = v1;
  *(v2 + 16) = v3;
  v4 = objc_opt_self();
  sub_1BE048964();
  v5 = [v4 hashTableWithOptions_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F6CC;
  *(inited + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118);
  *(swift_initStackObject() + 16) = inited;
  v8 = sub_1BE048964();
  v9 = *(inited + 16);
  v9(v15, v8);
  while (1)
  {
    v11 = v15[0];
    if (!v15[0])
    {
      break;
    }

    if (*(v15[0] + 88) == 1 && (*(v15[0] + 88) = 0, *(v11 + 32)))
    {
      v12 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      (*(v12 + 64))(ObjectType, v12);
    }

    else
    {
    }

    v9(v15, v10);
  }

  swift_setDeallocating();

  swift_beginAccess();
  *(v1 + 72) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD6DB8A0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = swift_conformsToProtocol2();
  if (!v4 || v2 == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_beginAccess();
  v7 = *(v0 + 72);
  if (v7 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
LABEL_12:
      v9 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else if ((v7 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          sub_1BE048964();
LABEL_17:
          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          swift_unknownObjectRetain();
          goto LABEL_20;
        }

        __break(1u);
        return result;
      }

      swift_unknownObjectRetain();
      sub_1BE048C84();
      v10 = MEMORY[0x1BFB40900](v9, v7);

      goto LABEL_17;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }
  }

  swift_unknownObjectRetain();
  v12 = 0;
  v11 = 0;
LABEL_20:
  ObjectType = swift_getObjectType();
  v14 = (*(v6 + 16))(v12, v11, ObjectType, v6);
  v16 = v15;
  swift_unknownObjectRelease();
  if (!v14)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  type metadata accessor for UIFlowNode();
  v17 = swift_allocObject();
  v18 = swift_getObjectType();
  v19 = swift_unknownObjectRetain();
  v20 = sub_1BD6DC1D0(v19, v17, v18, v16);
  swift_beginAccess();
  v21 = sub_1BE048964();
  MEMORY[0x1BFB3F7A0](v21);
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  swift_weakAssign();
  swift_weakAssign();
  *(v20 + 57) = 1;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_1BD6DBB64()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_24;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1BE048C84();
    if (v4)
    {
      v10 = v2;
      v2 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1BFB40900](v2, v3);
          v6 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v2 = v10;
            v7 = v11;
            goto LABEL_18;
          }
        }

        else
        {
          if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_24:
            v4 = sub_1BE053704();
            goto LABEL_4;
          }

          v5 = *(v3 + 8 * v2 + 32);
          sub_1BE048964();
          v6 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_15;
          }
        }

        if (v5 == v0)
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v2;
        if (v6 == v4)
        {
          goto LABEL_16;
        }
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_18:

    *(v2 + 72) = v7;

    swift_weakAssign();
    if (*(v0 + 88))
    {
      *(v0 + 88) = 0;
      if (*(v0 + 32))
      {
        v8 = *(v0 + 24);
        ObjectType = swift_getObjectType();
        (*(v8 + 64))(ObjectType, v8);
      }
    }
  }

  return result;
}

uint64_t sub_1BD6DBD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3 || !a2)
  {
    if ((a3 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    MEMORY[0x1BFB3F610]();
    MEMORY[0x1BFB3F610](0xA3D3D3D3D20, 0xE600000000000000);
    MEMORY[0x1BFB3F610](0x203D3D3D3DLL, 0xE500000000000000);
  }

  v6 = sub_1BE052614();
  v8 = v7;
  v9 = sub_1BD6DB14C();
  if (v9)
  {
    v10 = 0x3A6C61646F6D202CLL;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xEC00000073655920;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (*(v3 + 114))
  {
    v12 = 0xD00000000000001ALL;
  }

  else
  {
    v12 = 0;
  }

  if (*(v3 + 114))
  {
    v13 = 0x80000001BE135EB0;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  if (*(v3 + 115))
  {
    v14 = 0xD000000000000014;
  }

  else
  {
    v14 = 0;
  }

  v23 = v14;
  if (*(v3 + 115))
  {
    v15 = 0x80000001BE135E90;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](10, 0xE100000000000000);
  MEMORY[0x1BFB3F610](v6, v8);

  MEMORY[0x1BFB3F610](2108704, 0xE300000000000000);
  v16 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = (*(v16 + 8))(ObjectType, v16);
  MEMORY[0x1BFB3F610](v18);

  MEMORY[0x1BFB3F610](0x3A65746174732820, 0xE900000000000020);
  sub_1BE053974();
  MEMORY[0x1BFB3F610](v10, v11);

  MEMORY[0x1BFB3F610](v12, v13);

  MEMORY[0x1BFB3F610](v23, v15);

  MEMORY[0x1BFB3F610](41, 0xE100000000000000);
  MEMORY[0x1BFB3F610](0, 0xE000000000000000);

  result = swift_beginAccess();
  v4 = *(v3 + 72);
  if (!(v4 >> 62))
  {
    v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_34:
  result = sub_1BE053704();
  v20 = result;
  if (!result)
  {
    return 0;
  }

LABEL_25:
  if (v20 >= 1)
  {
    sub_1BE048C84();
    v21 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB40900](v21, v4);
      }

      else
      {
        sub_1BE048964();
      }

      ++v21;
      v22 = sub_1BD6DBD34(0, 0, a3 + 1);
      MEMORY[0x1BFB3F610](v22);
    }

    while (v20 != v21);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6DC0B0()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  MEMORY[0x1BFB3F610](v3);

  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  return 0x3C65646F4ELL;
}

uint64_t sub_1BD6DC138()
{
  sub_1BD0D4534(v0 + 16);

  sub_1BD28B4C8(*(v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_1BD6DC1A4()
{
  v1 = *(v0 + 48);
  sub_1BD28B4A8(v1);
  return v1;
}

uint64_t sub_1BD6DC1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x1E69E7CC8];
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  swift_weakInit();
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 112) = 514;
  type metadata accessor for UIFlowModifier();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    *(a2 + 16) = *(v7 + 16);
    v8 = *(v7 + 32);
    v9 = *(v7 + 33);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = *(a2 + 16);
  }

  else
  {
    *(a2 + 16) = a1;
    *(a2 + 24) = a4;
    v8 = byte_1EBDAB280;
    v9 = byte_1EBDAB281;
  }

  *(a2 + 114) = v8;
  *(a2 + 115) = v9;
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10 && a1)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    v14 = v13(ObjectType, v11);
    v15 = *(v14 + 16);
    if (v15)
    {
      type metadata accessor for UIFlowNode();
      v16 = (v14 + 40);
      do
      {
        v17 = *v16;
        v18 = swift_allocObject();
        v19 = swift_getObjectType();
        v20 = swift_unknownObjectRetain_n();
        v21 = sub_1BD6DC1D0(v20, v18, v19, v17);
        swift_beginAccess();
        v22 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v22);
        if (*((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_weakAssign();
        swift_weakAssign();
        *(v21 + 57) = 0;

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_1BD6DC534(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v20 = sub_1BE04BAC4();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v3);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v19 = v2;
  v6 = sub_1BD188298(v2, KeyPath);

  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  v25 = 0x80000001BE1182A0;
  v26 = 0x80000001BE1182F0;
  v23 = 0x80000001BE118230;
  v24 = 0x80000001BE118280;
  while (2)
  {
    if (v7)
    {
      v10 = "ection";
      switch(*v8)
      {
        case 4:
          goto LABEL_6;
        case 0xD:
          v10 = "Auto Reload Set Up";
LABEL_6:
          if (0x80000001BE118310 != (v10 | 0x8000000000000000))
          {
            goto LABEL_2;
          }

          goto LABEL_14;
        default:
LABEL_2:
          v9 = sub_1BE053B84();

          ++v8;
          --v7;
          if ((v9 & 1) == 0)
          {
            continue;
          }

LABEL_14:

          v13 = 0x6F63206775626564;
          v14 = 0xEC0000006769666ELL;
          break;
      }

      goto LABEL_15;
    }

    break;
  }

  v11 = v17;
  sub_1BE04BC34();
  v12 = sub_1BE04BA54();
  (*(v18 + 8))(v11, v20);
  if (v12)
  {
    if (sub_1BD6DC958())
    {
      v13 = 0;
      v14 = 0;
LABEL_15:
      v15 = 0;
      return v22(v13, v14, 0, v15);
    }

    v13 = 0xD000000000000027;
    v14 = 0x80000001BE135F30;
  }

  else
  {
    v14 = 0x80000001BE135F10;
    v13 = 0xD000000000000013;
  }

  v15 = 1;
  return v22(v13, v14, 0, v15);
}

uint64_t sub_1BD6DC958()
{
  v1 = sub_1BE04B944();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v6 = sub_1BE04B8E4();
  (*(v2 + 8))(v5, v1);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_provisionedPassesGroups);
  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    do
    {
      v9 = 0;
      v34 = v7;
      v35 = v7 & 0xC000000000000001;
      v31 = v7 + 32;
      v32 = v7 & 0xFFFFFFFFFFFFFF8;
      v10 = &selRef_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize_;
      v33 = v8;
      while (1)
      {
        if (v35)
        {
          v11 = MEMORY[0x1BFB40900](v9);
        }

        else
        {
          if (v9 >= *(v32 + 16))
          {
            goto LABEL_29;
          }

          v11 = *(v31 + 8 * v9);
        }

        v12 = v11;
        v13 = __OFADD__(v9, 1);
        v14 = v9 + 1;
        if (v13)
        {
          break;
        }

        v15 = sub_1BE04BD44();
        v16 = v15;
        v36 = v14;
        v37 = v12;
        if (v15 >> 62)
        {
          v17 = sub_1BE053704();
          if (v17)
          {
LABEL_12:
            v18 = 0;
            v38 = v16 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x1BFB40900](v18, v16);
              }

              else
              {
                if (v18 >= *(v38 + 16))
                {
                  goto LABEL_27;
                }

                v19 = *(v16 + 8 * v18 + 32);
              }

              v20 = v19;
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              if ([v19 v10[133]] - 3 < 2 || PKShowFakeVerificationChannels())
              {
                v22 = [v6 verificationRecordForPass_];
                if (v22)
                {
                  v23 = v6;
                  v24 = v10;
                  v25 = v22;
                  v26 = [v22 activeMethodGroup];

                  v10 = v24;
                  v6 = v23;

                  v20 = v26;
                  if (!v26)
                  {

                    v27 = 1;
                    v6 = v37;
                    goto LABEL_32;
                  }
                }
              }

              ++v18;
              if (v21 == v17)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_27:
            __break(1u);
            break;
          }
        }

        else
        {
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_12;
          }
        }

LABEL_4:

        v7 = v34;
        v9 = v36;
        if (v36 == v33)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v28 = v7;
      v29 = sub_1BE053704();
      v7 = v28;
      v8 = v29;
    }

    while (v29);
  }

LABEL_31:
  v27 = 0;
LABEL_32:

  return v27;
}

uint64_t sub_1BD6DCC64()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD6DCCA0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD6DCCF0()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_context];
  v2 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationNoticeViewController());
  sub_1BE048964();
  v3 = v0;

  return sub_1BD6DCD58(v1, v3, v2);
}

id sub_1BD6DCD58(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationNoticeViewController_delegate + 8] = 0;
  v12 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationNoticeViewController_provisioningContext] = a1;
  *(v12 + 8) = &off_1F3BB6820;
  swift_unknownObjectWeakAssign();
  sub_1BE048964();
  sub_1BE04BC34();
  v13 = sub_1BE04B9A4();
  (*(v8 + 8))(v11, v7);
  v17.receiver = a3;
  v17.super_class = ObjectType;
  result = objc_msgSendSuper2(&v17, sel_initWithContext_, v13);
  if (result)
  {
    v15 = result;
    [v15 setExplanationViewControllerDelegate_];
    v16 = [v15 navigationItem];
    [v16 setHidesBackButton_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD6DCF10(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BD6DD1AC(a1, a2, a3, a4, a5);
  v6 = v5;
  v7 = v5;
  return v6;
}

void sub_1BD6DD028(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1BE052224();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id NearbyPeerPaymentViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyPeerPaymentViewProvider.init()()
{
  *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewProvider_amountEntryVC] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NearbyPeerPaymentViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD6DD1AC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a3;
  v60 = a5;
  v57 = a2;
  v58 = a4;
  v61 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50490);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v55 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v55 - v22);
  MEMORY[0x1EEE9AC00](v24, v25);
  v56 = &v55 - v26;
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(0);
  swift_allocObject();
  v27 = NearbyPeerPaymentSenderAuthorizationController.init()();
  v28 = *(v17 + 36);
  v29 = type metadata accessor for FeatureError(0);
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  sub_1BD23C2BC(v12, v8);
  v30 = v27;
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD0DE53C(v12, &qword_1EBD416C0);
  v31 = (v23 + *(v17 + 40));
  type metadata accessor for AirDropRequirements();
  v32 = swift_allocObject();
  v33 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
  [v33 activate];
  *(v32 + 16) = v33;
  *(v32 + 24) = [objc_opt_self() nearFieldSharingEnabled];
  *(v32 + 25) = 769;
  sub_1BE04B5C4();
  v64 = v32;
  sub_1BE051694();
  v34 = v66;
  *v31 = v65;
  v31[1] = v34;
  v35 = [objc_opt_self() sharedInstance];
  if (!v35)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  v37 = [v35 account];

  if (!v37)
  {

    sub_1BD0DE53C(v23 + v28, &qword_1EBD3E968);

    (*(v62 + 56))(v16, 1, 1, v17);
LABEL_15:
    sub_1BD0DE53C(v16, &qword_1EBD50490);
    return;
  }

  *v23 = v30;
  v23[3] = v37;
  v38 = v61;
  if (v61)
  {
    v39 = v37;
    v40 = v38;
  }

  else
  {
    sub_1BD1973C4();
    v41 = v37;
    v40 = sub_1BE053054();
  }

  v42 = v38;
  v43 = [v37 currentBalance];

  if (!v43)
  {
    goto LABEL_18;
  }

  v44 = [v43 currency];

  v45 = PKCurrencyAmountMake();
  if (!v45)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v23[4] = v45;
  v23[5] = 0;
  v46 = v60;
  v47 = v57;
  if (!v59)
  {
    v47 = 0;
  }

  v48 = 0xE000000000000000;
  if (v59)
  {
    v48 = v59;
  }

  v23[6] = v47;
  v23[7] = v48;
  v23[8] = 0;
  v23[1] = v58;
  v23[2] = v46;
  sub_1BD6DD7E0(v23, v16);
  v49 = v62;
  (*(v62 + 56))(v16, 0, 1, v17);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD6DD844(v23);
  if ((*(v49 + 48))(v16, 1, v17) == 1)
  {

    goto LABEL_15;
  }

  v50 = v16;
  v51 = v56;
  sub_1BD6DD8A0(v50, v56);
  sub_1BD6DD7E0(v51, v55);
  v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD50498));
  v53 = sub_1BE04F894();
  [v53 setOverrideUserInterfaceStyle_];

  sub_1BD6DD844(v51);
  v54 = *(v63 + OBJC_IVAR___PKNearbyPeerPaymentViewProvider_amountEntryVC);
  *(v63 + OBJC_IVAR___PKNearbyPeerPaymentViewProvider_amountEntryVC) = v53;
}

uint64_t sub_1BD6DD7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6DD844(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD6DD8A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentAmountEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD6DD904()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v1 <= 0x3F)
    {
      sub_1BD6DDEB0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD6DD9BC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 < a2)
  {
    v16 = ((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  v27 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v30 = (*(v8 + 48))(v27);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v15 + v27) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  if (v29 < 0)
  {
    v29 = -1;
  }

  return (v29 + 1);
}

unsigned int *sub_1BD6DDBF8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10)
  {
    v13 = v10 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v16 = v12 + 7;
  v17 = ((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v14 + a2;
      v23 = result;
      bzero(result, ((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v17) = 0;
  }

  else if (v5)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v8 == v14)
  {
    v24 = *(v7 + 56);

    return v24();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v13 == v14)
    {
      v25 = *(v9 + 56);
      v26 = a2 + 1;

      return v25(result, v26, v10);
    }

    else
    {
      v27 = ((result + v16) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v27 = a2 - 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        v27[1] = a2;
      }
    }
  }

  return result;
}

void sub_1BD6DDEB0()
{
  if (!qword_1EBD4A850)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4A850);
    }
  }
}

uint64_t sub_1BD6DDF44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  v37 = a1[2];
  sub_1BE04EBD4();
  v35 = a1[4];
  v31 = MEMORY[0x1E697F940];
  v76 = v35;
  v77 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  swift_getWitnessTable();
  type metadata accessor for OffsetScrollView();
  sub_1BE04EBD4();
  v3 = sub_1BE04EBD4();
  v32 = a1;
  v34 = a1[3];
  sub_1BE0534B4();
  v33 = a1[5];
  v75 = v33;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v74 = MEMORY[0x1E697EBF8];
  v71 = swift_getWitnessTable();
  v72 = v77;
  v4 = swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520);
  sub_1BE04EBD4();
  v69 = swift_getWitnessTable();
  v70 = sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  v5 = sub_1BE04EBD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v4;
  v28 = v4;
  v68 = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  *&v78 = v3;
  *(&v78 + 1) = MEMORY[0x1E6981CD8];
  *&v79 = OpaqueTypeMetadata2;
  *(&v79 + 1) = v5;
  *&v80 = v4;
  *(&v80 + 1) = MEMORY[0x1E6981CD0];
  *&v81 = OpaqueTypeConformance2;
  v27 = OpaqueTypeConformance2;
  *(&v81 + 1) = v7;
  v8 = v7;
  v30 = MEMORY[0x1E6981460];
  v9 = swift_getOpaqueTypeMetadata2();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  v17 = v36;
  sub_1BD6DE60C(v32, v18, &v56);
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v49 = v60;
  v50 = v61;
  v51 = v62;
  v52 = v63;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  sub_1BE051C64();
  *&v19 = v37;
  *(&v19 + 1) = v34;
  *&v20 = v35;
  *(&v20 + 1) = v33;
  v42 = v19;
  v43 = v20;
  v44 = v17;
  v39 = v19;
  v40 = v20;
  v41 = v17;
  v21 = swift_checkMetadataState();
  v22 = swift_checkMetadataState();
  v23 = swift_checkMetadataState();
  v24 = v28;
  sub_1BE0510B4();
  v86 = v53;
  v87 = v54;
  v88 = v55;
  v82 = v49;
  v83 = v50;
  v84 = v51;
  v85 = v52;
  v78 = v45;
  v79 = v46;
  v80 = v47;
  v81 = v48;
  (*(*(v21 - 8) + 8))(&v78, v21);
  *&v56 = v21;
  *(&v56 + 1) = MEMORY[0x1E6981CD8];
  *&v57 = v22;
  *(&v57 + 1) = v23;
  *&v58 = v24;
  *(&v58 + 1) = MEMORY[0x1E6981CD0];
  *&v59 = v27;
  *(&v59 + 1) = v8;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v12);
  v25 = *(v31 + 8);
  v25(v12, v9);
  sub_1BD147308(v16);
  return (v25)(v16, v9);
}

uint64_t sub_1BD6DE60C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v54 - v10;
  v13 = (v3 + *(v12 + 56));
  v14 = *v13;
  v15 = v13[1];
  *&v112 = v14;
  *(&v112 + 1) = v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  v16 = v101;
  v17 = *(v5 + 16);
  v70 = v5 + 16;
  v71 = v17;
  v60 = v11;
  v18 = v3;
  v57 = v3;
  v17(v11, v3, a1);
  v19 = *(v5 + 80);
  v61 = (v19 + 56) & ~v19;
  v59 = v7;
  v20 = swift_allocObject();
  v21 = a1[3];
  v67 = a1[2];
  v54 = v21;
  *(v20 + 2) = v67;
  *(v20 + 3) = v21;
  v22 = a1[5];
  v66 = a1[4];
  *(v20 + 4) = v66;
  *(v20 + 5) = v22;
  *(v20 + 6) = v16;
  v68 = *(v5 + 32);
  v69 = v22;
  v68(&v20[(v19 + 56) & ~v19], v11, a1);
  v23 = v64;
  v24 = v18;
  v25 = a1;
  v55 = a1;
  v71(v64, v24, a1);
  v58 = v19;
  v26 = (v19 + 48) & ~v19;
  v27 = swift_allocObject();
  v28 = v66;
  v29 = v54;
  *(v27 + 2) = v67;
  *(v27 + 3) = v29;
  v30 = v68;
  v31 = v69;
  *(v27 + 4) = v28;
  *(v27 + 5) = v31;
  v30(&v27[v26], v23, v25);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v63 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v87 = v28;
  v88 = v63;
  v56 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  PKEdgeInsetsMake(sub_1BD6E01F4, v20);
  *&v112 = v32;
  *(&v112 + 1) = v33;
  *&v113 = v34;
  *(&v113 + 1) = v35;
  sub_1BE051CD4();
  type metadata accessor for OffsetScrollView();
  WitnessTable = swift_getWitnessTable();
  sub_1BE050F54();

  v95 = v107;
  v96 = v108;
  v97 = v109;
  v91 = v103;
  v92 = v104;
  v93 = v105;
  v94 = v106;
  v89 = v101;
  v90 = v102;
  v36 = v55;
  v37 = v57;
  v38 = (v57 + *(v55 + 16));
  v39 = *v38;
  v40 = v38[1];
  *&v112 = v39;
  *(&v112 + 1) = v40;
  sub_1BE0516A4();
  v41 = v74;
  v42 = v60;
  v71(v60, v37, v36);
  v43 = v61;
  v44 = swift_allocObject();
  v45 = v66;
  *(v44 + 2) = v67;
  *(v44 + 3) = v29;
  v46 = v68;
  v47 = v69;
  *(v44 + 4) = v45;
  *(v44 + 5) = v47;
  *(v44 + 6) = v41;
  v46(&v44[v43], v42, v36);
  v48 = sub_1BE04EBD4();
  v85 = WitnessTable;
  v86 = MEMORY[0x1E697EBF8];
  v49 = swift_getWitnessTable();
  sub_1BD6E0768(sub_1BD6E0AD8, v44);

  v100[6] = v95;
  v100[7] = v96;
  v100[8] = v97;
  v100[2] = v91;
  v100[3] = v92;
  v100[4] = v93;
  v100[5] = v94;
  v100[0] = v89;
  v100[1] = v90;
  (*(*(v48 - 8) + 8))(v100, v48);
  v82 = v120;
  v83 = v121;
  v84 = v122;
  v78 = v116;
  v79 = v117;
  v80 = v118;
  v81 = v119;
  v74 = v112;
  v75 = v113;
  v76 = v114;
  v77 = v115;
  v50 = sub_1BE04EBD4();
  v72 = v49;
  v73 = v63;
  swift_getWitnessTable();
  sub_1BD147308(&v74);
  v109 = v82;
  v110 = v83;
  v111 = v84;
  v105 = v78;
  v106 = v79;
  v107 = v80;
  v108 = v81;
  v101 = v74;
  v102 = v75;
  v103 = v76;
  v104 = v77;
  v51 = *(*(v50 - 8) + 8);
  v51(&v101, v50);
  v82 = v97;
  v83 = v98;
  v84 = v99;
  v78 = v93;
  v79 = v94;
  v80 = v95;
  v81 = v96;
  v74 = v89;
  v75 = v90;
  v76 = v91;
  v77 = v92;
  sub_1BD147308(&v74);
  v120 = v82;
  v121 = v83;
  v122 = v84;
  v116 = v78;
  v117 = v79;
  v118 = v80;
  v119 = v81;
  v112 = v74;
  v113 = v75;
  v114 = v76;
  v115 = v77;
  return (v51)(&v112, v50);
}

uint64_t sub_1BD6DECC0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v38 = a5;
  v39 = a3;
  v40 = a2;
  v41 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v36 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v63 = a5;
  v64 = v36;
  swift_getWitnessTable();
  type metadata accessor for OffsetScrollView();
  sub_1BE04EBD4();
  v33 = sub_1BE04EBD4();
  sub_1BE0534B4();
  v62 = a6;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v61 = MEMORY[0x1E697EBF8];
  v58 = swift_getWitnessTable();
  v59 = v36;
  v34 = swift_getWitnessTable();
  *&v47 = v33;
  *(&v47 + 1) = OpaqueTypeMetadata2;
  *&v48 = v34;
  *(&v48 + 1) = swift_getOpaqueTypeConformance2();
  v12 = *(&v48 + 1);
  v35 = MEMORY[0x1E697CE30];
  v13 = swift_getOpaqueTypeMetadata2();
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  v21 = a1[9];
  v55 = a1[8];
  v56 = v21;
  v57 = a1[10];
  v22 = a1[5];
  v51 = a1[4];
  v52 = v22;
  v23 = a1[7];
  v53 = a1[6];
  v54 = v23;
  v24 = a1[1];
  v47 = *a1;
  v48 = v24;
  v25 = a1[3];
  v49 = a1[2];
  v50 = v25;
  v42 = v39;
  v43 = a4;
  v44 = v38;
  v45 = v37;
  v46 = v40;
  sub_1BE04F7B4();
  v26 = swift_checkMetadataState();
  v27 = swift_checkMetadataState();
  v28 = v12;
  v29 = v34;
  sub_1BE050954();
  *&v47 = v26;
  *(&v47 + 1) = v27;
  *&v48 = v29;
  *(&v48 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v16);
  v30 = *(v36 + 8);
  v30(v16, v13);
  sub_1BD147308(v20);
  return (v30)(v20, v13);
}

uint64_t sub_1BD6DF0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a4;
  v29 = a1;
  v31 = a6;
  v30 = sub_1BE04F714();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE0534B4();
  v36 = a5;
  WitnessTable = swift_getWitnessTable();
  v32 = v12;
  v33 = WitnessTable;
  v26[1] = MEMORY[0x1E697D198];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v16);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v26 - v21;
  v32 = v27;
  v33 = a3;
  v34 = v28;
  v35 = a5;
  type metadata accessor for ContentStickyFooterScrollView();
  sub_1BE04F704();
  v23 = swift_checkMetadataState();
  sub_1BE050CB4();
  (*(v8 + 8))(v11, v30);
  v32 = v23;
  v33 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v18);
  v24 = *(v15 + 8);
  v24(v18, OpaqueTypeMetadata2);
  sub_1BD147308(v22);
  return (v24)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1BD6DF364@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a2;
  v35 = a6;
  v31 = a5;
  v32 = a3;
  v29 = a4;
  v36 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v33 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v61 = a5;
  v62 = v33;
  swift_getWitnessTable();
  v30 = type metadata accessor for OffsetScrollView();
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520);
  v9 = sub_1BE04EBD4();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520);
  v28[1] = v9;
  swift_getWitnessTable();
  v28[0] = sub_1BE04F6A4();
  v10 = sub_1BE04EBD4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v28 - v17;
  v19 = a1[9];
  v56 = a1[8];
  v57 = v19;
  v58 = a1[10];
  v20 = a1[5];
  v52 = a1[4];
  v53 = v20;
  v21 = a1[7];
  v54 = a1[6];
  v55 = v21;
  v22 = a1[1];
  v48 = *a1;
  v49 = v22;
  v23 = a1[3];
  v50 = a1[2];
  v51 = v23;
  v37 = v32;
  v38 = v29;
  v39 = v31;
  v40 = v35;
  v41 = v34;
  sub_1BE04F7B4();
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x1E697EBF8];
  v44 = swift_getWitnessTable();
  v45 = v33;
  v27 = swift_getWitnessTable();
  sub_1BE050A44();
  v24 = swift_getWitnessTable();
  v42 = v27;
  v43 = v24;
  swift_getWitnessTable();
  sub_1BD147308(v14);
  v25 = *(v11 + 8);
  v25(v14, v10);
  sub_1BD147308(v18);
  return (v25)(v18, v10);
}

uint64_t sub_1BD6DF7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a1;
  v33 = a5;
  v31 = a4;
  v38 = a6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50530);
  MEMORY[0x1EEE9AC00](v37, v8);
  v35 = (&WitnessTable - v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1BE051854();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &WitnessTable - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520);
  v14 = sub_1BE04EBD4();
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &WitnessTable - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v30 = &WitnessTable - v20;
  v39 = a2;
  v40 = a3;
  v21 = v31;
  v22 = v33;
  v41 = v31;
  v42 = v33;
  v43 = v32;
  sub_1BE04F7B4();
  sub_1BE051844();
  v46 = a2;
  v47 = a3;
  v48 = v21;
  v49 = v22;
  type metadata accessor for ContentStickyFooterScrollView();
  v23 = v35;
  sub_1BD6DFE3C(v35);
  sub_1BE051CD4();
  v24 = swift_getWitnessTable();
  sub_1BD6E0094(&qword_1EBD50538, &qword_1EBD50530, &unk_1BE0F0CD8, sub_1BD6DFFA8);
  sub_1BE050834();
  sub_1BD6E002C(v23);
  (*(v34 + 8))(v13, v10);
  v25 = sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520);
  v44 = v24;
  v45 = v25;
  swift_getWitnessTable();
  v26 = v30;
  sub_1BD147308(v17);
  v27 = *(v36 + 8);
  v27(v17, v14);
  sub_1BD147308(v26);
  return (v27)(v26, v14);
}

uint64_t sub_1BD6DFBE8(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE0534B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v28 - v17;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v19 = type metadata accessor for ContentStickyFooterScrollView();
  v20 = (a1 + *(v19 + 68));
  v21 = *v20;
  v22 = v20[1];
  v31 = v21;
  v32 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  v23 = v29[0];
  v24 = *(v19 + 52);
  v30[1] = a5;
  WitnessTable = swift_getWitnessTable();
  sub_1BD147308(a1 + v24);
  v30[0] = v23;
  v31 = v30;
  (*(v11 + 16))(v14, v18, v10);
  v32 = v14;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A858);
  v29[1] = v10;
  v28[0] = sub_1BD6E0094(&qword_1EBD36868, &qword_1EBD4A858, &unk_1BE0E1658, sub_1BD0EEEE0);
  v28[1] = WitnessTable;
  sub_1BD13A4C4(&v31, 2uLL, v29);
  v26 = *(v11 + 8);
  v26(v18, v10);
  return (v26)(v14, v10);
}

uint64_t sub_1BD6DFE3C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE051404();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888) + 36);
  sub_1BE051BD4();
  v4 = sub_1BE0501D4();
  v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0) + 36)] = v4;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50530);
  *(a1 + *(result + 36)) = v6;
  return result;
}

unint64_t sub_1BD6DFFA8()
{
  result = qword_1EBD50540;
  if (!qword_1EBD50540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50548);
    sub_1BD56254C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50540);
  }

  return result;
}

uint64_t sub_1BD6E002C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD6E0094(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD6E0148(double a1, double a2)
{
  if (a2 != a1)
  {
    type metadata accessor for ContentStickyFooterScrollView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
    sub_1BE0516B4();
    return sub_1BD6E020C();
  }

  return result;
}

uint64_t sub_1BD6E020C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516A4();
  return sub_1BE0516B4();
}

uint64_t sub_1BD6E0338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a3;
  v33 = a5;
  v30 = a1;
  v31 = a4;
  v35 = a6;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v8 = type metadata accessor for ContentStickyFooterScrollView();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  v13 = sub_1BE04EBD4();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v30 - v20;
  (*(v9 + 16))(v12, a1, v8, v19);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v25 = v31;
  v24 = v32;
  *(v23 + 2) = a2;
  *(v23 + 3) = v24;
  v26 = v33;
  *(v23 + 4) = v25;
  *(v23 + 5) = v26;
  (*(v9 + 32))(&v23[v22], v12, v8);
  sub_1BD6E0768(sub_1BD6E0EB8, v23);

  v27 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v36 = v25;
  v37 = v27;
  swift_getWitnessTable();
  sub_1BD147308(v16);
  v28 = *(v34 + 8);
  v28(v16, v13);
  sub_1BD147308(v21);
  return (v28)(v21, v13);
}

uint64_t sub_1BD6E0620@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for ContentStickyFooterScrollView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1BD6E0338(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_1BD6E06CC()
{
  type metadata accessor for ContentStickyFooterScrollView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516B4();
  return sub_1BD6E020C();
}

uint64_t sub_1BD6E0768(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048964();
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70);
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70);
  sub_1BE050834();
}

uint64_t sub_1BD6E0878(double a1, double a2)
{
  if (a2 != a1)
  {
    type metadata accessor for ContentStickyFooterScrollView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
    sub_1BE0516B4();
    return sub_1BD6E020C();
  }

  return result;
}

uint64_t objectdestroyTm_79()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = type metadata accessor for ContentStickyFooterScrollView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = *(v2 + 52);
  v5 = *(v7 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v7))
  {
    (*(v5 + 8))(v3 + v4, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6E0AF0(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128), double a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for ContentStickyFooterScrollView() - 8);
  v9.n128_u64[0] = v2[6];
  v10 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));
  v11.n128_f64[0] = a2;

  return a1(v10, v4, v5, v6, v7, v11, v9);
}

uint64_t sub_1BD6E0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04E684();
  v6 = v5;
  sub_1BE051404();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = type metadata accessor for ContentStickyFooterScrollView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = *(v2 + 52);
  v5 = *(v7 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v7))
  {
    (*(v5 + 8))(v3 + v4, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6E0EB8()
{
  type metadata accessor for ContentStickyFooterScrollView();

  return sub_1BD6E06CC();
}

void sub_1BD6E10D0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v31 - v9;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showCancelButton) == 1)
  {
    [v0 setHidesBackButton:1 animated:{0, v8}];
    v11 = [v0 navigationItem];
    v12 = [v11 leftBarButtonItem];

    if (v12)
    {
    }

    else
    {
      (*(v2 + 104))(v10, *MEMORY[0x1E69B80D0], v1);
      v13 = PKPassKitBundle();
      if (!v13)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v14 = v13;
      sub_1BE04B6F4();

      (*(v2 + 8))(v10, v1);
      updated = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
      v32[0] = v0;
      v15 = v0;
      v16 = sub_1BE052404();

      v17 = updated;
      if (updated)
      {
        v18 = __swift_project_boxed_opaque_existential_1(v32, updated);
        v31[1] = v31;
        v19 = *(v17 - 8);
        v20 = MEMORY[0x1EEE9AC00](v18, v18);
        v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v22, v20);
        v23 = sub_1BE053B74();
        (*(v19 + 8))(v22, v17);
        __swift_destroy_boxed_opaque_existential_0(v32);
      }

      else
      {
        v23 = 0;
      }

      v24 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v16 style:0 target:v23 action:sel_cancel];

      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BE0B7020;
      *(v25 + 32) = v24;
      sub_1BD0E5E8C(0, &qword_1EBD41C40);
      v26 = v24;
      v27 = sub_1BE052724();

      [v15 _setLeftBarButtonItems_animated_];
    }
  }

  else
  {
    [v0 setHidesBackButton:0 animated:{0, v8}];
    [v0 _setLeftBarButtonItems_animated_];
  }

  if (*(v0 + OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showSubmitButton) == 1)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B80D8], v1);
    v28 = PKPassKitBundle();
    if (v28)
    {
      v29 = v28;
      sub_1BE04B6F4();

      (*(v2 + 8))(v5, v1);
      v30 = sub_1BE052404();

      [v0 setPrimaryButtonTitleText_];

      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  [v0 setShowPrimaryButton_];
}

void sub_1BD6E15FC()
{
  v1 = v0;
  [v0 showActivitySpinnerWithTitle:0 subtitle:0];
  v2 = [v0 dockView];
  if (v2)
  {
    v3 = v2;
    [v2 setButtonsEnabled_];

    v4 = *&v0[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_coordinator];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = v1;
    v7 = sub_1BD986EF4();
    if (v7)
    {
      v9 = v7;
      sub_1BD6E1758(v7, 0);
    }

    else
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      sub_1BD987AF8(v4, v8, sub_1BD6E24F8, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD6E1758(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1BD6E2500;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_7;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v21);
}

void sub_1BD6E1A24(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong hideActivitySpinner];
    v7 = [v6 dockView];
    if (v7)
    {
      v8 = v7;
      [v7 setButtonsEnabled_];

      if (a2)
      {
        v9 = a2;
        v10 = [v6 navigationController];
        [v10 pushViewController:v9 animated:1];

        return;
      }

      if (a3)
      {
        v11 = a3;
        v12 = sub_1BD6E1BE8(a3);
        if (v12)
        {
          v13 = v12;
          [v6 presentViewController:v12 animated:1 completion:0];

          return;
        }
      }

      v14 = [v6 presentingViewController];
      if (v14)
      {
        v15 = v14;
        [v14 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD6E1BE8(void *a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &aBlock[-1] - v10;
  if (!a1)
  {
    return 0;
  }

  aBlock[0] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  sub_1BD0E5E8C(0, &qword_1EBD45E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v42 = v1;
  v13 = v44;
  v14 = [v44 localizedFailureReason];
  v15 = v3;
  if (v14)
  {
    v16 = v14;
    sub_1BE052434();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v20 = v13;
  v21 = [v13 localizedRecoverySuggestion];
  if (v21)
  {
    v22 = v4;
    v23 = v21;
    sub_1BE052434();
    v25 = v24;

    v4 = v22;
    if (v18)
    {
LABEL_9:
      v26 = sub_1BE052404();

      goto LABEL_12;
    }
  }

  else
  {
    v25 = 0;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
LABEL_12:
  v27 = v20;
  v28 = v15;
  if (v25)
  {
    v29 = sub_1BE052404();
  }

  else
  {
    v29 = 0;
  }

  v19 = [objc_opt_self() alertControllerWithTitle:v26 message:v29 preferredStyle:1];

  v30 = [v27 code];
  v31 = *MEMORY[0x1E69B8068];
  v32 = *(v4 + 104);
  if (v30 == 40349)
  {
    v32(v11, v31, v15);
    result = PKPassKitBundle();
    if (result)
    {
      v34 = result;
      sub_1BE04B6F4();

      (*(v4 + 8))(v11, v28);
      v35 = sub_1BE052404();

      v36 = [objc_opt_self() actionWithTitle:v35 style:1 handler:0];
LABEL_20:

      [v19 addAction_];
      return v19;
    }

    __break(1u);
  }

  else
  {
    v32(v7, v31, v15);
    result = PKPassKitBundle();
    if (result)
    {
      v37 = result;
      sub_1BE04B6F4();

      (*(v4 + 8))(v7, v15);
      v38 = swift_allocObject();
      v39 = v42;
      *(v38 + 16) = v42;
      v40 = v39;
      v35 = sub_1BE052404();

      aBlock[4] = sub_1BD6E24E8;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD198918;
      aBlock[3] = &block_descriptor_165;
      v41 = _Block_copy(aBlock);

      v36 = [objc_opt_self() actionWithTitle:v35 style:1 handler:v41];
      _Block_release(v41);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6E208C()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD6E24F0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9_7;
  v12 = _Block_copy(aBlock);

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_1BD6E2324()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_1BD6E23D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD6E251C(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_1BE04BD74();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) + 84);
  v33 = v1;
  v6 = *(v1 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 40;
    v38 = *(v6 + 16);
    v31 = v7 - 1;
    v10 = MEMORY[0x1E69E7CC0];
    v32 = v6 + 40;
    do
    {
      v11 = (v9 + 16 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v13 = *(v11 - 8);
        v14 = *v11;
        v8 = v12 + 1;
        v15 = *v11;
        v16 = sub_1BD11285C(&unk_1F3B8E328);
        v17 = sub_1BD6CC328(v13, v16);

        if (v17)
        {
          break;
        }

        v11 += 2;
        ++v12;
        if (v38 == v8)
        {
          goto LABEL_15;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD532168(0, *(v10 + 16) + 1, 1);
        v10 = v39;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BD532168((v19 > 1), v20 + 1, 1);
        v10 = v39;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v13;
      *(v21 + 40) = v14;
      v9 = v32;
    }

    while (v31 != v12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  v23 = v35;
  v22 = v36;
  v24 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x1E69B8068], v37);
  v25 = PKPassKitBundle();
  if (v25)
  {
    v26 = v25;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v22 + 8))(v23, v24);
    sub_1BD6E2E10(v27, v29, v10, v34);
  }

  else
  {
LABEL_18:
    __break(1u);
  }
}

void sub_1BD6E27DC(uint64_t a1, void *a2, void *a3)
{
  v58 = a3;
  v59 = type metadata accessor for AvailablePass(0);
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v5);
  v57 = v6;
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaymentPassMethodSheet(0);
  v55 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8, v9);
  v56 = v10;
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  v20 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = a1;
  sub_1BD6E40FC(a1, v27, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD6E4314(v27, type metadata accessor for WrappedPass);
      return;
    }

    sub_1BD6E42AC(v27, v23, type metadata accessor for PlaceholderPass);
    v30 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v30 setCardType_];
    sub_1BD6E4314(v23, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v29 = *v27;
    v30 = [*v27 secureElementPass];

    if (!v30)
    {
      return;
    }
  }

  v51 = v11;
  v52 = v7;
  v53 = a2;
  v64 = v30;
  LOBYTE(v65) = 32;
  v31 = v60;
  v32 = *(v60 + v8[10]);
  objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
  v33 = v32;
  v54 = v30;
  v34 = v58;
  v35 = v58;
  v36 = sub_1BD8D1EE0(&v64, v32, v34);

  v37 = (v31 + v8[31]);
  v39 = v37[1];
  v64 = *v37;
  v38 = v64;
  v65 = v39;
  v63 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390);
  sub_1BE0516B4();
  sub_1BD6E40FC(v62, v19, type metadata accessor for AvailablePass);
  (*(v61 + 56))(v19, 0, 1, v59);
  sub_1BD0DE19C(v19, v15, &qword_1EBD520A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);
  sub_1BE0516B4();
  sub_1BD0DE53C(v19, &qword_1EBD520A0);
  v64 = v38;
  v65 = v39;
  sub_1BE0516A4();
  v40 = v63;
  if (!v63)
  {
LABEL_10:

    return;
  }

  if (*(v31 + v8[28]))
  {
    v41 = v51;
    sub_1BD6E40FC(v31, v51, type metadata accessor for PaymentPassMethodSheet);
    v42 = v52;
    sub_1BD6E40FC(v62, v52, type metadata accessor for AvailablePass);
    v43 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v44 = (v56 + *(v61 + 80) + v43) & ~*(v61 + 80);
    v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1BD6E42AC(v41, v46 + v43, type metadata accessor for PaymentPassMethodSheet);
    sub_1BD6E42AC(v42, v46 + v44, type metadata accessor for AvailablePass);
    v47 = v53;
    *(v46 + v45) = v53;
    v48 = v47;
    v49 = sub_1BE048964();
    sub_1BD8C1B80(v49, 1, sub_1BD6E41AC, v46);

    goto LABEL_10;
  }

  type metadata accessor for PresentationContext();
  sub_1BD6E4164(&unk_1EBD361B0, type metadata accessor for PresentationContext);
  sub_1BE04EEB4();
  __break(1u);
}

uint64_t sub_1BD6E2E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50570);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  if (PKOslo2024UIUpdatesEnabled() && *(a3 + 16))
  {
    v20 = a1;
    v21 = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v20 = sub_1BE0506C4();
    v21 = v13;
    v22 = v14 & 1;
    v23 = v15;
    MEMORY[0x1EEE9AC00](v20, v13);
    *(&v18 - 2) = a3;
    *(&v18 - 1) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50578);
    sub_1BD6E3E54();
    sub_1BE051A24();
    (*(v19 + 32))(a4, v12, v9);
    return (*(v19 + 56))(a4, 0, 1, v9);
  }

  else
  {
    v17 = *(v19 + 56);

    return v17(a4, 1, 1, v9);
  }
}

uint64_t sub_1BD6E3038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassMethodSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = *(a1 + 16);
  v12[0] = 0;
  v12[1] = v8;
  swift_getKeyPath();
  sub_1BD6E40FC(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_1BD6E42AC(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PaymentPassMethodSheet);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50590);
  sub_1BD2D5394();
  sub_1BD6E3F34(&qword_1EBD50588, &qword_1EBD50590, &unk_1BE0F0D38, sub_1BD6E3F04);
  return sub_1BE0519C4();
}

void sub_1BD6E3224(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for PaymentPassMethodSheet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v15 = *(a2 + 16 * v14 + 40);
  v16 = *(a3 + *(v12 + 40));
  if (v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v15 = 0;
    v16 = 0;
    v25 = 0;
    v19 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    sub_1BD6E40FC(a3, &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassMethodSheet);
    v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    sub_1BD6E42AC(v13, v19 + v18, type metadata accessor for PaymentPassMethodSheet);
    v27[7] = 0;
    v20 = v15;
    v21 = v16;
    sub_1BE048964();
    sub_1BE051694();
    v22 = v28;
    v23 = v29;
    sub_1BE048964();
    v24 = [v21 ineligibleDetailsForCriteria_];
    v28 = v20;
    v29 = v21;
    v25 = sub_1BD6E4088;
    v30 = sub_1BD6E4088;
    v31 = v19;
    v32 = v24;
    v33 = v22;
    v34 = v23;
    v26 = v24;
    sub_1BD638E10();
  }

  *a4 = v15;
  a4[1] = v16;
  a4[2] = v25;
  a4[3] = v19;
  a4[4] = v26;
  a4[5] = v22;
  a4[6] = v23;
}

uint64_t sub_1BD6E3478(void *a1, void *a2, uint64_t a3)
{
  v59 = a1;
  v60 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v57 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v12 = *MEMORY[0x1E69BAA28];
  *(inited + 32) = *MEMORY[0x1E69BAA28];
  v13 = v12;
  v58 = a2;
  v14 = [a2 issuerName];
  v15 = sub_1BE052434();
  v17 = v16;

  *(inited + 40) = v15;
  *(inited + 48) = v17;
  v18 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1BE0B98D0;
  v20 = *MEMORY[0x1E69BA680];
  *(v19 + 32) = *MEMORY[0x1E69BA680];
  *(v19 + 40) = sub_1BE052434();
  *(v19 + 48) = v21;
  v22 = *MEMORY[0x1E69BA440];
  *(v19 + 56) = *MEMORY[0x1E69BA440];
  strcpy((v19 + 64), "setupPayLater");
  v23 = *MEMORY[0x1E69BABE8];
  *(v19 + 78) = -4864;
  *(v19 + 80) = v23;
  *(v19 + 88) = sub_1BE052434();
  *(v19 + 96) = v24;
  v25 = v20;
  v26 = v22;
  v27 = v23;
  v28 = sub_1BD1AAF50(v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  if (*(v18 + 16))
  {
    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v28;
    sub_1BD6BC0F4(v18, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v63);
  }

  v30 = objc_opt_self();
  v31 = *MEMORY[0x1E69BB6E0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD6E4164(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v32 = v31;
  v33 = sub_1BE052224();

  [v30 subject:v32 sendEvent:v33];

  if (!v59)
  {
    v40 = v58;
    *v10 = v58;
    v41 = _s11DetailSheetOMa();
    swift_storeEnumTagMultiPayload();
    (*(*(v41 - 8) + 56))(v10, 0, 1, v41);
    type metadata accessor for PaymentPassMethodSheet(0);
    sub_1BD0DE19C(v10, v57, &unk_1EBD43B20);
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8);
    sub_1BE0516B4();
    v43 = v10;
    v44 = &unk_1EBD43B20;
    return sub_1BD0DE53C(v43, v44);
  }

  v34 = v59;
  v35 = [v34 domain];
  v36 = sub_1BE052434();
  v38 = v37;

  if (v36 == sub_1BE052434() && v38 == v39)
  {
  }

  else
  {
    v45 = sub_1BE053B84();

    if ((v45 & 1) == 0)
    {
      v47 = v34;
      v48 = sub_1BE04A844();

      v49 = PKPaymentOffersDisplayableError();
      v46 = v49;
      goto LABEL_11;
    }
  }

  v46 = v34;
  v47 = v46;
LABEL_11:
  sub_1BD2B1EAC(v46, &v63);
  v50 = v64;
  if (v64)
  {
    v51 = v63;
    v52 = sub_1BD1C2B14();
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    *(v53 + 24) = v50;
    v54 = v66;
    *(v53 + 32) = v65;
    *(v53 + 48) = v54;
    v55 = &type metadata for AuthorizationError;
  }

  else
  {
    v53 = 0;
    v55 = 0;
    v52 = 0;
    v62[1] = 0;
    v62[2] = 0;
  }

  v62[0] = v53;
  v62[3] = v55;
  v62[4] = v52;
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v62, &v61, &qword_1EBD51EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80);
  sub_1BE0516B4();

  v43 = v62;
  v44 = &qword_1EBD51EC0;
  return sub_1BD0DE53C(v43, v44);
}

void sub_1BD6E3A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v48 = a1;
  v5 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v42 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for AvailablePass(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v42 = v22 + 56;
  v43 = v23;
  v23(v20, 1, 1, v21);
  v46 = type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v20, v16, &qword_1EBD520A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0);
  v47 = a2;
  sub_1BE0516B4();
  sub_1BD0DE53C(v20, &qword_1EBD520A0);
  sub_1BD0DE19C(v48, v12, &unk_1EBD57C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v12;
    if (*v12)
    {
      v25 = v24;
      v26 = sub_1BE04A844();

      v27 = (v47 + *(v46 + 116));
      v28 = v27[1];
      v50 = *v27;
      v29 = v50;
      v51 = v28;
      v49 = v26;
      sub_1BE048964();
      v30 = v26;
      v31 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
      sub_1BE0516B4();
    }
  }

  else
  {
    sub_1BD6E42AC(v12, v8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v32 = *(v8 + 1);
    if (v32)
    {
      v34 = v46;
      v33 = v47;
      v35 = *(v47 + *(v46 + 52));
      sub_1BD6E40FC(v44, v20, type metadata accessor for AvailablePass);
      v43(v20, 0, 1, v21);
      v36 = (v33 + v34[39]);
      v37 = *v36;
      v38 = *(v36 + 1);
      LOBYTE(v50) = v37;
      v51 = v38;
      v39 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78);
      sub_1BE0516A4();
      v35(v20, v45, v49);
      sub_1BD0DE53C(v20, &qword_1EBD520A0);
      v40 = *(v33 + v34[12]);
      v41 = v39;
      v40(v32);

      (*(v33 + v34[23]))();
    }

    sub_1BD6E4314(v8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }
}

unint64_t sub_1BD6E3E54()
{
  result = qword_1EBD50580;
  if (!qword_1EBD50580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50578);
    sub_1BD6E3F34(&qword_1EBD50588, &qword_1EBD50590, &unk_1BE0F0D38, sub_1BD6E3F04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50580);
  }

  return result;
}

uint64_t sub_1BD6E3F34(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD6E3FB0()
{
  result = qword_1EBD505A8;
  if (!qword_1EBD505A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD505A8);
  }

  return result;
}

void sub_1BD6E4004(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1BD6E3224(a1, v6, v7, a2);
}

uint64_t sub_1BD6E4088(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BD6E3478(a1, v4, v5);
}

uint64_t sub_1BD6E40FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6E4164(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD6E41AC(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AvailablePass(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD6E3A44(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_1BD6E42AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6E4314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD6E43A4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id))
{
  v8 = a3;
  v9 = a4;
  v12 = a1;
  [v8 dismissViewControllerAnimated:1 completion:0];
  v10 = *&v12[OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent + 8];
  sub_1BE048964();
  v11 = a5(v9);
  v10(v11);
}

uint64_t sub_1BD6E4494(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent))
  {
    v2 = [a1 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
    v3 = sub_1BE052744();

    if (v3 >> 62)
    {
      result = sub_1BE053704();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1BFB40900](0, v3);
          goto LABEL_7;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v5 = *(v3 + 32);
LABEL_7:
          v6 = v5;

          v7 = [v6 value];

          v8 = [v7 stringValue];
          sub_1BE052434();

          return sub_1BE052644();
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    return sub_1BE052644();
  }

  v9 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v10 = sub_1BE052744();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_19:

LABEL_20:
    sub_1BD0E5E8C(0, &qword_1EBD45E60);
    sub_1BE0530A4();
    goto LABEL_21;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = [v12 value];

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_21:

  return sub_1BE052494();
}

id sub_1BD6E472C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent))
  {
    if ([a1 value])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    if (*(&v7 + 1))
    {
      sub_1BD0E5E8C(0, &qword_1EBD50650);
      if (swift_dynamicCast())
      {
        v2 = [v5 stringValue];

        v3 = sub_1BE052434();
        return v3;
      }

      return 0;
    }

    goto LABEL_14;
  }

  if ([a1 value])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_14:
    sub_1BD14EC0C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

id sub_1BD6E48E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactPickerController.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD6E496C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = type metadata accessor for ContactPickerController.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent];
  *v8 = v3;
  *(v8 + 1) = v5;
  *(v8 + 2) = v4;
  v10.receiver = v7;
  v10.super_class = v6;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD6E49F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6E4D48();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD6E4A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6E4D48();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD6E4AB8()
{
  sub_1BD6E4D48();
  sub_1BE0500A4();
  __break(1u);
}

id sub_1BD6E4AE4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  sub_1BD0E5E8C(0, &qword_1EBD50628);
  v1 = sub_1BE052BB4();
  [v0 setPredicateForEnablingContact_];

  v2 = sub_1BE052BB4();
  [v0 setPredicateForSelectionOfContact_];

  v3 = sub_1BE052BB4();
  [v0 setPredicateForSelectionOfProperty_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B69E0;
  *(v4 + 32) = sub_1BE052434();
  *(v4 + 40) = v5;
  v6 = sub_1BE052724();

  [v0 setDisplayedPropertyKeys_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50638);
  sub_1BE050154();
  [v0 setDelegate_];

  [v0 setMode_];
  return v0;
}

unint64_t sub_1BD6E4D48()
{
  result = qword_1EBD50640;
  if (!qword_1EBD50640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50640);
  }

  return result;
}

void sub_1BD6E4DE4()
{
  _s31SpendingSummaryDetailsViewModelVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD49DA08();
    if (v1 <= 0x3F)
    {
      sub_1BD6E4E8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD6E4E8C()
{
  if (!qword_1EBD50668)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD50668);
    }
  }
}

unint64_t sub_1BD6E4EF0()
{
  result = qword_1EBD50670;
  if (!qword_1EBD50670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50670);
  }

  return result;
}

uint64_t sub_1BD6E4F44(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_1BE0491F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - v10;
  sub_1BD0DE19C(v1, &v13 - v10, &qword_1EBD45CC0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t sub_1BD6E5140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50678);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50680);
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v8);
  v10 = &v19 - v9;
  *v6 = sub_1BE04F7C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50688) + 44)];
  v19 = v2;
  sub_1BD6E541C(v2, v11);
  v12 = sub_1BE050194();
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v12)
  {
    sub_1BE0501A4();
  }

  sub_1BE051CD4();
  v13 = sub_1BD0DE4F4(&qword_1EBD50690, &qword_1EBD50678);
  sub_1BE050DB4();
  sub_1BD0DE53C(v6, &qword_1EBD50678);
  v14 = v19 + *(_s17SummaryDetailViewVMa(0) + 28);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v22) = v15;
  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698);
  sub_1BE0516A4();
  v22 = v3;
  v23 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1BD6E4EF0();
  v17 = v20;
  sub_1BE051064();
  return (*(v7 + 8))(v10, v17);
}

uint64_t sub_1BD6E541C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v134 = a1;
  v169 = a2;
  v2 = sub_1BE050034();
  v167 = *(v2 - 8);
  v168 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v166 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1BE04F5B4();
  v155 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v5);
  v151 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506A0);
  v8 = *(v7 - 8);
  v148 = v7;
  v149 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v147 = &v134 - v10;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506A8);
  MEMORY[0x1EEE9AC00](v156, v11);
  v146 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506B0);
  v14 = *(v13 - 8);
  v158 = v13;
  v159 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v152 = &v134 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506B8);
  v18 = *(v17 - 8);
  v160 = v17;
  v161 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v153 = &v134 - v20;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506C0);
  v165 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v21);
  v154 = &v134 - v22;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506C8);
  v179 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v23);
  v162 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v177 = &v134 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506D0);
  v29 = *(v28 - 8);
  v140 = v28;
  v141 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v136 = &v134 - v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506D8);
  MEMORY[0x1EEE9AC00](v139, v32);
  v135 = &v134 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506E0);
  v35 = *(v34 - 8);
  v142 = v34;
  v143 = v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v137 = &v134 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506E8);
  v39 = *(v38 - 8);
  v144 = v38;
  v145 = v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v138 = &v134 - v41;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506F0);
  v178 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v42);
  v170 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v180 = &v134 - v46;
  sub_1BD6E6534();
  v195 = v47;
  v196 = v48;
  sub_1BD0DDEBC();
  v49 = sub_1BE0506C4();
  v51 = v50;
  v53 = v52;
  sub_1BE050294();
  v54 = sub_1BE0505F4();
  v56 = v55;
  v58 = v57;

  sub_1BD0DDF10(v49, v51, v53 & 1);

  sub_1BE050364();
  v59 = sub_1BE050544();
  v174 = v60;
  v175 = v59;
  LOBYTE(v49) = v61;
  v176 = v62;
  sub_1BD0DDF10(v54, v56, v58 & 1);

  v173 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v171 = v49 & 1;
  LOBYTE(v188) = v49 & 1;
  v183 = 0;
  v172 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  LOBYTE(v195) = 0;
  v79 = v134;
  v182 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506F8);
  sub_1BD6F00E4(&qword_1EBD50700, &qword_1EBD506F8, &unk_1BE0F1010, sub_1BD6EEDE4);
  v80 = v136;
  sub_1BE0504E4();
  sub_1BD0DE4F4(&qword_1EBD50738, &qword_1EBD506D0);
  v81 = v135;
  v82 = v140;
  sub_1BE050D24();
  (*(v141 + 8))(v80, v82);
  v83 = v139;
  *(v81 + *(v139 + 36)) = 256;
  sub_1BE0501C4();
  v84 = sub_1BD6EEF58();
  v85 = v137;
  sub_1BE050904();
  sub_1BD0DE53C(v81, &qword_1EBD506D8);
  sub_1BE0501E4();
  v195 = v83;
  v196 = v84;
  v141 = MEMORY[0x1E697CDF8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = v138;
  v88 = v142;
  sub_1BE050904();
  (*(v143 + 8))(v85, v88);
  sub_1BE0501F4();
  v195 = v88;
  v196 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v89 = v144;
  sub_1BE050904();
  (*(v145 + 8))(v87, v89);
  v181 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50748);
  sub_1BD0DE4F4(&qword_1EBD50750, &qword_1EBD50748);
  v90 = v147;
  sub_1BE0504E4();
  sub_1BD0DE4F4(&qword_1EBD50758, &qword_1EBD506A0);
  v91 = v146;
  v92 = v148;
  sub_1BE050E24();
  (*(v149 + 8))(v90, v92);
  v93 = v151;
  sub_1BE04F584();
  v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50760) + 36);
  v95 = v155;
  v96 = v157;
  (*(v155 + 16))(&v91[v94], v93, v157);
  v97 = v95;
  v98 = *(v95 + 56);
  v99 = &v91[v94];
  v100 = v91;
  v98(v99, 0, 1, v96);
  KeyPath = swift_getKeyPath();
  v102 = &v91[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50768) + 36)];
  v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v97 + 32))(v102 + v103, v93, v96);
  v98(v102 + v103, 0, 1, v96);
  *v102 = KeyPath;
  v104 = v156;
  *(v100 + *(v156 + 36)) = 256;
  sub_1BE0501C4();
  v105 = sub_1BD6EF05C();
  v106 = v152;
  sub_1BE050904();
  sub_1BD0DE53C(v100, &qword_1EBD506A8);
  sub_1BE0501E4();
  v195 = v104;
  v196 = v105;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = v153;
  v109 = v158;
  sub_1BE050904();
  (*(v159 + 8))(v106, v109);
  sub_1BE0501F4();
  v195 = v109;
  v196 = v107;
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v154;
  v112 = v160;
  sub_1BE050904();
  (*(v161 + 8))(v108, v112);
  v113 = v166;
  sub_1BE050024();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50788);
  v195 = v112;
  v196 = v110;
  swift_getOpaqueTypeConformance2();
  v114 = sub_1BE04EEA4();
  v115 = sub_1BD6EED94(&qword_1EBD48208, MEMORY[0x1E697ED30]);
  v195 = v114;
  v196 = v115;
  swift_getOpaqueTypeConformance2();
  v116 = v177;
  v117 = v163;
  sub_1BE050BD4();
  (*(v167 + 8))(v113, v168);
  (*(v165 + 8))(v111, v117);
  v168 = *(v178 + 16);
  v118 = v170;
  v119 = v150;
  v168(v170, v180, v150);
  v167 = *(v179 + 16);
  v120 = v162;
  v121 = v164;
  (v167)(v162, v116, v164);
  *&v188 = v175;
  *(&v188 + 1) = v174;
  LOBYTE(v189) = v171;
  *(&v189 + 1) = *v185;
  DWORD1(v189) = *&v185[3];
  *(&v189 + 1) = v176;
  LOBYTE(v190) = v173;
  *(&v190 + 1) = *v184;
  DWORD1(v190) = *&v184[3];
  *(&v190 + 1) = v64;
  *&v191 = v66;
  *(&v191 + 1) = v68;
  *&v192 = v70;
  BYTE8(v192) = 0;
  *(&v192 + 9) = *v187;
  HIDWORD(v192) = *&v187[3];
  LOBYTE(v193) = v172;
  DWORD1(v193) = *&v186[3];
  *(&v193 + 1) = *v186;
  *(&v193 + 1) = v72;
  *&v194[0] = v74;
  *(&v194[0] + 1) = v76;
  *&v194[1] = v78;
  BYTE8(v194[1]) = 0;
  v122 = v188;
  v123 = v189;
  v124 = v191;
  v125 = v169;
  v169[2] = v190;
  v125[3] = v124;
  *v125 = v122;
  v125[1] = v123;
  v126 = v192;
  v127 = v193;
  v128 = v194[0];
  *(v125 + 105) = *(v194 + 9);
  v125[5] = v127;
  v125[6] = v128;
  v125[4] = v126;
  v129 = v125;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50790);
  v168(&v129[*(v130 + 48)], v118, v119);
  (v167)(&v129[*(v130 + 64)], v120, v121);
  sub_1BD0DE19C(&v188, &v195, &qword_1EBD50798);
  v131 = *(v179 + 8);
  v131(v177, v121);
  v132 = *(v178 + 8);
  v132(v180, v119);
  v131(v120, v121);
  v132(v170, v119);
  v195 = v175;
  v196 = v174;
  v197 = v171;
  *v198 = *v185;
  *&v198[3] = *&v185[3];
  v199 = v176;
  v200 = v173;
  *v201 = *v184;
  *&v201[3] = *&v184[3];
  v202 = v64;
  v203 = v66;
  v204 = v68;
  v205 = v70;
  v206 = 0;
  *&v207[3] = *&v187[3];
  *v207 = *v187;
  v208 = v172;
  *&v209[3] = *&v186[3];
  *v209 = *v186;
  v210 = v72;
  v211 = v74;
  v212 = v76;
  v213 = v78;
  v214 = 0;
  return sub_1BD0DE53C(&v195, &qword_1EBD50798);
}

void sub_1BD6E6534()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD0DE19C(v0 + *(v10 + 20), v9, &qword_1EBD38DB8);
  if (*(v0 + *(v10 + 24)))
  {
    if (*(v0 + *(v10 + 24)) == 1)
    {
      if (qword_1EBD36D38 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBDAB4A8;
      v12 = sub_1BE04AE64();
      v13 = [v11 stringFromDate_];
    }

    else
    {
      if (qword_1EBD36D40 != -1)
      {
        swift_once();
      }

      v17 = qword_1EBDAB4B0;
      v12 = sub_1BE04AE64();
      v13 = [v17 stringFromDate_];
    }

    v18 = v13;

    sub_1BE052434();
    goto LABEL_12;
  }

  sub_1BE04ADD4();
  v14 = sub_1BE04AE64();
  v15 = sub_1BE04AE64();
  v16 = PKDateRangeStringFromDateToDate();

  if (v16)
  {
    sub_1BE052434();

    (*(v2 + 8))(v5, v1);
LABEL_12:
    sub_1BD0DE53C(v9, &qword_1EBD38DB8);
    return;
  }

  __break(1u);
}

double sub_1BD6E6808@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50730);
  sub_1BD0DE4F4(&qword_1EBD50728, &qword_1EBD50730);
  sub_1BE051A44();
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50710) + 36);
  *v2 = xmmword_1BE0F0E90;
  *(v2 + 16) = xmmword_1BE0F0EA0;
  *(v2 + 32) = 0;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506F8) + 36);
  result = 8.0;
  *v3 = xmmword_1BE0F0EB0;
  *(v3 + 16) = xmmword_1BE0F0EB0;
  *(v3 + 32) = 0;
  return result;
}

uint64_t sub_1BD6E690C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507A8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v20 - v16;
  sub_1BD6E6AFC(&v20 - v16);
  sub_1BD6E6F70(v9);
  sub_1BD0DE19C(v17, v13, &qword_1EBD507A8);
  sub_1BD0DE19C(v9, v5, &qword_1EBD507A0);
  sub_1BD0DE19C(v13, a1, &qword_1EBD507A8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507B0);
  sub_1BD0DE19C(v5, a1 + *(v18 + 48), &qword_1EBD507A0);
  sub_1BD0DE53C(v9, &qword_1EBD507A0);
  sub_1BD0DE53C(v17, &qword_1EBD507A8);
  sub_1BD0DE53C(v5, &qword_1EBD507A0);
  return sub_1BD0DE53C(v13, &qword_1EBD507A8);
}

uint64_t sub_1BD6E6AFC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50810);
  MEMORY[0x1EEE9AC00](v33, v2);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50818);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50820);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - v12;
  v14 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD6EF420(v1 + *(v23 + 28), v17, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BD6EF2C8(v17, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
    return (*(v10 + 56))(v36, 1, 1, v9);
  }

  else
  {
    v32 = v9;
    v25 = sub_1BD6EF488(v17, v22, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    if (*(*&v22[*(v18 + 32)] + 16) || *(*&v22[*(v18 + 52)] + 16))
    {
      MEMORY[0x1EEE9AC00](v25, v26);
      *(&v31 - 2) = v1;
      *(&v31 - 1) = v22;
      sub_1BD6E9CA4(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50828);
      sub_1BD6EFDFC();
      sub_1BD6EFFD0();
      sub_1BE051A24();
      v27 = v35;
      v28 = &v8[*(v35 + 36)];
      v28[32] = 0;
      *v28 = 0u;
      *(v28 + 1) = 0u;
      sub_1BD0DE204(v8, v13, &qword_1EBD50818);
      v29 = 0;
    }

    else
    {
      v29 = 1;
      v27 = v35;
    }

    (*(v34 + 56))(v13, v29, 1, v27);
    v30 = v36;
    sub_1BD0DE204(v13, v36, &qword_1EBD50820);
    (*(v10 + 56))(v30, 0, 1, v32);
    return sub_1BD6EF2C8(v22, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
  }
}

uint64_t sub_1BD6E6F70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1BE04E2E4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507B8);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v39 - v14;
  v16 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD6EF420(v2 + *(v25 + 28), v19, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v26 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa;
    v27 = v19;
  }

  else
  {
    sub_1BD6EF488(v19, v24, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    if (sub_1BD9FD33C())
    {
      v28 = (v2 + *(_s17SummaryDetailViewVMa(0) + 28));
      v29 = *v28;
      v30 = *(v28 + 1);
      v45[0] = v29;
      v46 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698);
      v31 = sub_1BE0516A4();
      if ((v47 & 1) == 0)
      {
        v39[0] = v39;
        MEMORY[0x1EEE9AC00](v31, v32);
        v39[-2] = v24;
        v39[-1] = v2;
        sub_1BD6ECB40(v45);
        v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50798);
        sub_1BD0DE4F4(&qword_1EBD507D0, &qword_1EBD507C8);
        sub_1BD6F0564(&qword_1EBD507D8, &qword_1EBD50798, &unk_1BE0F1090, sub_1BD2A275C);
        sub_1BE051A54();
        v35 = v42;
        v34 = v43;
        (*(v42 + 104))(v6, *MEMORY[0x1E697DAD8], v43);
        sub_1BD6EF330();
        v36 = v41;
        sub_1BE050B84();
        (*(v35 + 8))(v6, v34);
        (*(v40 + 8))(v10, v36);
        v37 = &v15[*(v11 + 36)];
        v37[32] = 0;
        *v37 = 0u;
        *(v37 + 1) = 0u;
        v38 = v44;
        sub_1BD0DE204(v15, v44, &qword_1EBD507C0);
        (*(v12 + 56))(v38, 0, 1, v11);
        return sub_1BD6EF2C8(v24, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      }
    }

    v26 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model;
    v27 = v24;
  }

  sub_1BD6EF2C8(v27, v26);
  return (*(v12 + 56))(v44, 1, 1, v11);
}

uint64_t sub_1BD6E750C()
{
  sub_1BE04FBB4();
  sub_1BE04EEA4();
  sub_1BD6EED94(&qword_1EBD48208, MEMORY[0x1E697ED30]);
  return sub_1BE04E5D4();
}

void sub_1BD6E75AC()
{
  v0 = sub_1BE052434();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v11;
  v12 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = v0;
  *(inited + 96) = v2;
  v13 = v6;
  v14 = v10;
  v15 = v12;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD6EED94(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v16 = sub_1BE052224();

  [v3 subject:v4 sendEvent:v16];
}

void sub_1BD6E7788(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50920);
  sub_1BD6E77DC(a1, (a2 + *(v4 + 44)));
}

void sub_1BD6E77DC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v172 = a1;
  v181 = a2;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50928);
  MEMORY[0x1EEE9AC00](v180, v2);
  v165 = &v142 - v3;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50930);
  MEMORY[0x1EEE9AC00](v163, v4);
  v162 = &v142 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50938);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v164 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v177 = &v142 - v11;
  v159 = sub_1BE04AF64();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v12);
  v157 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v156 = &v142 - v16;
  v155 = sub_1BE0493F4();
  v171 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v17);
  v170 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = _s23SpendingDescriptionViewVMa(0);
  MEMORY[0x1EEE9AC00](v154, v19);
  v161 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v153 = &v142 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v173 = &v142 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50940);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v160 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v184 = (&v142 - v32);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50948);
  MEMORY[0x1EEE9AC00](v176, v33);
  v179 = &v142 - v34;
  v152 = sub_1BE04EDC4();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v35);
  v149 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v146 = &v142 - v39;
  v147 = sub_1BE050474();
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v40);
  v144 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50950);
  v150 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v42);
  v148 = &v142 - v43;
  v44 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v169 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182, v48);
  v183 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50958);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v178 = &v142 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v175 = &v142 - v55;
  v56 = sub_1BE052404();
  v57 = PKLocalizedBankConnectString(v56);

  if (v57)
  {
    v58 = sub_1BE052434();
    v60 = v59;

    v185 = v58;
    v186 = v60;
    sub_1BD0DDEBC();
    v61 = sub_1BE0506C4();
    v63 = v62;
    LOBYTE(v58) = v64;
    sub_1BE0502A4();
    v65 = sub_1BE0505F4();
    v67 = v66;
    v69 = v68;

    sub_1BD0DDF10(v61, v63, v58 & 1);

    LODWORD(v185) = sub_1BE04FC94();
    v168 = sub_1BE050574();
    v167 = v70;
    v166 = v71;
    v73 = v72;
    sub_1BD0DDF10(v65, v67, v69 & 1);

    v74 = _s31SpendingSummaryDetailsViewModelVMa(0);
    v75 = v172;
    sub_1BD6EF420(v172 + v74[7], v47, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
    v76 = v182;
    if ((*(v169 + 48))(v47, 1, v182) == 1)
    {
      sub_1BD6EF2C8(v47, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
      v77 = v145;
      v78 = v144;
      v79 = v147;
      (*(v145 + 104))(v144, *MEMORY[0x1E6980F00], v147);
      v80 = *MEMORY[0x1E6980E28];
      v81 = sub_1BE050354();
      v82 = *(v81 - 8);
      v83 = v146;
      (*(v82 + 104))(v146, v80, v81);
      (*(v82 + 56))(v83, 0, 1, v81);
      sub_1BE0503C4();
      sub_1BD0DE53C(v83, &qword_1EBD49130);
      (*(v77 + 8))(v78, v79);
      v84 = sub_1BE0505F4();
      v86 = v85;
      LOBYTE(v79) = v87;

      sub_1BE050364();
      v88 = sub_1BE050544();
      v90 = v89;
      LOBYTE(v80) = v91;
      v93 = v92;
      sub_1BD0DDF10(v84, v86, v79 & 1);

      v185 = v88;
      v186 = v90;
      LOBYTE(v79) = v80 & 1;
      v187 = v80 & 1;
      v188 = v93;
      v94 = v149;
      sub_1BE04EDB4();
      v95 = MEMORY[0x1E6981148];
      v96 = MEMORY[0x1E6981138];
      v97 = v148;
      sub_1BE0510A4();
      (*(v151 + 8))(v94, v152);
      sub_1BD0DDF10(v88, v90, v79);

      v98 = v150;
      v99 = v174;
      (*(v150 + 16))(v179, v97, v174);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD50960, &qword_1EBD50928);
      v185 = v95;
      v186 = v96;
      swift_getOpaqueTypeConformance2();
      v100 = v175;
      sub_1BE04F9A4();
      (*(v98 + 8))(v97, v99);
    }

    else
    {
      v101 = v183;
      sub_1BD6EF488(v47, v183, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      v102 = sub_1BE04F504();
      v103 = v184;
      *v184 = v102;
      v103[1] = 0;
      *(v103 + 16) = 1;
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50970);
      sub_1BD6E8B0C(v101, (v103 + *(v104 + 44)));
      v105 = v155;
      (*(v171 + 16))(v170, v101 + *(v76 + 20), v155);
      v106 = v156;
      sub_1BD0DE19C(v101 + *(v76 + 24), v156, &qword_1EBD44F98);
      v107 = *(v75 + v74[6]);
      v108 = v75 + v74[5];
      v109 = v157;
      sub_1BE04AEF4();
      sub_1BD6EED94(&qword_1EBD525D0, MEMORY[0x1E6969530]);
      v110 = v159;
      v111 = sub_1BE052314();
      v143 = v73;
      if (v111)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
        v112 = sub_1BE0522F4();
      }

      else
      {
        v112 = 0;
      }

      (*(v158 + 8))(v109, v110);
      v113 = v153;
      (*(v171 + 32))(v153, v170, v105);
      v114 = v154;
      sub_1BD0DE204(v106, v113 + *(v154 + 20), &qword_1EBD44F98);
      *(v113 + *(v114 + 24)) = v107;
      *(v113 + *(v114 + 28)) = v112 & 1;
      v115 = v173;
      sub_1BD6EF488(v113, v173, _s23SpendingDescriptionViewVMa);
      v116 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
      v117 = v162;
      sub_1BD0DE19C(v108, &v162[v116[5]], &qword_1EBD38DB8);
      v118 = v183;
      v119 = sub_1BE0493A4();
      v121 = v120;
      v122 = *(v118 + *(v182 + 28));
      *&v117[v116[11]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8);
      swift_storeEnumTagMultiPayload();
      *v117 = v107;
      v123 = &v117[v116[6]];
      *v123 = v119;
      v123[1] = v121;
      *&v117[v116[7]] = v122;
      v117[v116[8]] = 1;
      v117[v116[9]] = 0;
      v117[v116[10]] = 0;
      v124 = &v117[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50978) + 36)];
      *v124 = 0x3FFD1745D1745D17;
      *(v124 + 4) = 0;
      sub_1BE048C84();
      LOBYTE(v119) = sub_1BE0501E4();
      sub_1BE04E1F4();
      v125 = &v117[*(v163 + 36)];
      *v125 = v119;
      *(v125 + 1) = v126;
      *(v125 + 2) = v127;
      *(v125 + 3) = v128;
      *(v125 + 4) = v129;
      v125[40] = 0;
      sub_1BE052434();
      sub_1BD6F0564(&qword_1EBD50980, &qword_1EBD50930, &unk_1BE0F1248, sub_1BD6F05E8);
      v130 = v177;
      sub_1BE050DE4();

      sub_1BD0DE53C(v117, &qword_1EBD50930);
      v131 = v160;
      sub_1BD0DE19C(v184, v160, &qword_1EBD50940);
      v132 = v161;
      sub_1BD6EF420(v115, v161, _s23SpendingDescriptionViewVMa);
      v133 = v164;
      sub_1BD0DE19C(v130, v164, &qword_1EBD50938);
      v134 = v165;
      sub_1BD0DE19C(v131, v165, &qword_1EBD50940);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50998);
      sub_1BD6EF420(v132, v134 + *(v135 + 48), _s23SpendingDescriptionViewVMa);
      sub_1BD0DE19C(v133, v134 + *(v135 + 64), &qword_1EBD50938);
      sub_1BD0DE53C(v133, &qword_1EBD50938);
      sub_1BD6EF2C8(v132, _s23SpendingDescriptionViewVMa);
      sub_1BD0DE53C(v131, &qword_1EBD50940);
      sub_1BD0DE19C(v134, v179, &qword_1EBD50928);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD50960, &qword_1EBD50928);
      v185 = MEMORY[0x1E6981148];
      v186 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      v100 = v175;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v134, &qword_1EBD50928);
      sub_1BD0DE53C(v177, &qword_1EBD50938);
      sub_1BD6EF2C8(v173, _s23SpendingDescriptionViewVMa);
      sub_1BD0DE53C(v184, &qword_1EBD50940);
      sub_1BD6EF2C8(v183, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      v73 = v143;
    }

    v136 = v178;
    sub_1BD0DE19C(v100, v178, &qword_1EBD50958);
    v137 = v181;
    v138 = v168;
    v139 = v167;
    *v181 = v168;
    v137[1] = v139;
    v140 = v166 & 1;
    *(v137 + 16) = v166 & 1;
    v137[3] = v73;
    v137[4] = sub_1BD1F3E44;
    v137[5] = 0;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50968);
    sub_1BD0DE19C(v136, v137 + *(v141 + 48), &qword_1EBD50958);
    sub_1BD0D7F18(v138, v139, v140);
    sub_1BE048C84();
    sub_1BD0DE53C(v100, &qword_1EBD50958);
    sub_1BD0DE53C(v136, &qword_1EBD50958);
    sub_1BD0DDF10(v138, v139, v140);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD6E8B0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a1;
  v78 = a2;
  v2 = _s21SpendingTrendIconViewVMa();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v67 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v72 = &v65 - v7;
  v73 = type metadata accessor for FinanceKitSpendingTrend();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v8);
  v66 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509A0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v75 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v74 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v65 - v18;
  v20 = sub_1BE050474();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE04B0F4();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  sub_1BE04B054();
  v30 = sub_1BE0493E4();
  v32 = v31;
  (*(v26 + 8))(v29, v25);
  v79 = v30;
  v80 = v32;
  sub_1BD0DDEBC();
  v33 = sub_1BE0506C4();
  v35 = v34;
  LOBYTE(v25) = v36;
  v68 = v37;
  v38 = v20;
  (*(v21 + 104))(v24, *MEMORY[0x1E6980F00], v20);
  v39 = *MEMORY[0x1E6980E28];
  v40 = sub_1BE050354();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v19, v39, v40);
  (*(v41 + 56))(v19, 0, 1, v40);
  sub_1BE0503C4();
  sub_1BD0DE53C(v19, &qword_1EBD49130);
  (*(v21 + 8))(v24, v38);
  v42 = sub_1BE0505F4();
  v44 = v43;
  LOBYTE(v24) = v45;

  sub_1BD0DDF10(v33, v35, v25 & 1);

  sub_1BE050364();
  v46 = sub_1BE050544();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_1BD0DDF10(v42, v44, v24 & 1);
  v53 = v72;

  sub_1BD0DE19C(v69 + *(v70 + 24), v53, &qword_1EBD44F98);
  if ((*(v71 + 48))(v53, 1, v73) == 1)
  {
    sub_1BD0DE53C(v53, &qword_1EBD44F98);
    v54 = 1;
    v55 = v74;
  }

  else
  {
    v56 = v53;
    v57 = v66;
    sub_1BD6EF488(v56, v66, type metadata accessor for FinanceKitSpendingTrend);
    v58 = v57;
    v59 = v67;
    sub_1BD6EF488(v58, v67, type metadata accessor for FinanceKitSpendingTrend);
    v55 = v74;
    sub_1BD6EF488(v59, v74, _s21SpendingTrendIconViewVMa);
    v54 = 0;
  }

  (*(v76 + 56))(v55, v54, 1, v77);
  v60 = v75;
  sub_1BD0DE19C(v55, v75, &qword_1EBD509A0);
  v61 = v78;
  *v78 = v46;
  v61[1] = v48;
  v62 = v50 & 1;
  *(v61 + 16) = v62;
  v61[3] = v52;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509A8);
  sub_1BD0DE19C(v60, v61 + *(v63 + 48), &qword_1EBD509A0);
  sub_1BD0D7F18(v46, v48, v62);
  sub_1BE048C84();
  sub_1BD0DE53C(v55, &qword_1EBD509A0);
  sub_1BD0DE53C(v60, &qword_1EBD509A0);
  sub_1BD0DDF10(v46, v48, v62);
}

uint64_t sub_1BD6E91F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508A0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508F8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50868);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24[-v14];
  v16 = (a1 + *(_s17SummaryDetailViewVMa(0) + 28));
  v17 = *v16;
  v18 = *(v16 + 1);
  v24[16] = v17;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698);
  sub_1BE0516A4();
  v19 = v24[15];
  v20 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  if (v19)
  {
    sub_1BD6E994C(*(a2 + *(v20 + 52)), v7);
    sub_1BD0DE19C(v7, v11, &qword_1EBD508A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD6F0244(&qword_1EBD50860, &qword_1EBD50868, &unk_1BE0F1140, sub_1BD6F00B4);
    sub_1BD6F0244(&qword_1EBD50898, &qword_1EBD508A0, &unk_1BE0F1158, sub_1BD6F02C0);
    sub_1BE04F9A4();
    v21 = v7;
    v22 = &qword_1EBD508A0;
  }

  else
  {
    sub_1BD6E9538(*(a2 + *(v20 + 32)), a2, v15);
    sub_1BD0DE19C(v15, v11, &qword_1EBD50868);
    swift_storeEnumTagMultiPayload();
    sub_1BD6F0244(&qword_1EBD50860, &qword_1EBD50868, &unk_1BE0F1140, sub_1BD6F00B4);
    sub_1BD6F0244(&qword_1EBD50898, &qword_1EBD508A0, &unk_1BE0F1158, sub_1BD6F02C0);
    sub_1BE04F9A4();
    v21 = v15;
    v22 = &qword_1EBD50868;
  }

  return sub_1BD0DE53C(v21, v22);
}

uint64_t sub_1BD6E9538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v9 = _s17SummaryDetailViewVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50878);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v20 = &KeyPath - v19;
  if (*(a1 + 16))
  {
    v35 = a1;
    v31 = v16;
    v32 = v17;
    KeyPath = swift_getKeyPath();
    sub_1BD6EF420(v33, &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s17SummaryDetailViewVMa);
    (*(v6 + 16))(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v5);
    v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v22 = *(v6 + 80);
    v34 = a3;
    v23 = (v11 + v22 + v21) & ~v22;
    v24 = swift_allocObject();
    sub_1BD6EF488(v13, v24 + v21, _s17SummaryDetailViewVMa);
    (*(v6 + 32))(v24 + v23, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37258);
    sub_1BD0DE4F4(&qword_1EBD50908, &qword_1EBD50900);
    sub_1BD0DE4F4(&qword_1EBD50890, &qword_1EBD37258);
    sub_1BE0519C4();
    v25 = v31;
    v26 = &v20[*(v31 + 36)];
    v26[32] = 0;
    *v26 = 0u;
    *(v26 + 1) = 0u;
    v27 = v34;
    sub_1BD0DE204(v20, v34, &qword_1EBD50878);
    return (*(v32 + 56))(v27, 0, 1, v25);
  }

  else
  {
    v29 = *(v17 + 56);

    return v29(a3, 1, 1, v18);
  }
}

uint64_t sub_1BD6E994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s17SummaryDetailViewVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508B0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9, v10);
  v14 = v19 - v13;
  if (*(a1 + 16))
  {
    v19[0] = v11;
    v19[1] = a1;
    swift_getKeyPath();
    sub_1BD6EF420(v2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s17SummaryDetailViewVMa);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    sub_1BD6EF488(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s17SummaryDetailViewVMa);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50910);
    _s17GroupBreakdownRowVMa(0);
    sub_1BD0DE4F4(&qword_1EBD50918, &qword_1EBD50910);
    sub_1BD6EED94(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
    sub_1BD6EED94(&qword_1EBD508B8, _s17GroupBreakdownRowVMa);
    sub_1BE0519C4();
    (*(v19[0] + 32))(a2, v14, v9);
    return (*(v19[0] + 56))(a2, 0, 1, v9);
  }

  else
  {
    v18 = *(v11 + 56);

    return v18(a2, 1, 1, v9, v12);
  }
}

void sub_1BD6E9CA4(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_1BE04FAB4();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50848);
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v7);
  v9 = &v41 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508C0);
  v10 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v11);
  v13 = &v41 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50840);
  MEMORY[0x1EEE9AC00](v41, v14);
  v16 = &v41 - v15;
  v17 = sub_1BE052404();
  v18 = PKLocalizedBankConnectString(v17);

  if (v18)
  {
    v19 = sub_1BE052434();
    v21 = v20;

    v53 = v19;
    v54 = v21;
    v22 = (v1 + *(_s17SummaryDetailViewVMa(0) + 28));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v47) = v23;
    v48 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698);
    sub_1BE0516C4();
    v47 = v50;
    v48 = v51;
    v49 = v52;
    sub_1BE051D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508C8);
    sub_1BE051954();

    v47 = v50;
    v48 = v51;
    v49 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508D0);
    sub_1BD6F0394();
    sub_1BD0DE4F4(&qword_1EBD508E0, &qword_1EBD508D0);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE04FAA4();
    sub_1BD0DE4F4(&qword_1EBD50850, &qword_1EBD50848);
    v25 = v43;
    v26 = v45;
    sub_1BE050924();
    (*(v44 + 8))(v5, v26);
    (*(v6 + 8))(v9, v25);
    LOBYTE(v26) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    (*(v10 + 32))(v16, v13, v42);
    v35 = &v16[*(v41 + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50810);
    v37 = v46;
    v38 = (v46 + *(v36 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v40 = sub_1BE0505C4();
    (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
    *v38 = swift_getKeyPath();
    sub_1BD0DE204(v16, v37, &qword_1EBD50840);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6EA1F0(char *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508E8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v48 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v47 - v21;
  v23 = sub_1BE052404();
  v24 = PKLocalizedBankConnectString(v23);

  if (v24)
  {
    v25 = sub_1BE052434();
    v27 = v26;

    v51 = v25;
    v52 = v27;
    sub_1BD0DDEBC();
    *v18 = sub_1BE0506C4();
    *(v18 + 1) = v28;
    v18[16] = v29 & 1;
    *(v18 + 3) = v30;
    *(v18 + 16) = 256;
    v31 = v2[4];
    v31(v22, v18, v1);
    v32 = sub_1BE052404();
    v33 = PKLocalizedBankConnectString(v32);

    if (v33)
    {
      v34 = sub_1BE052434();
      v36 = v35;

      v51 = v34;
      v52 = v36;
      *v11 = sub_1BE0506C4();
      *(v11 + 1) = v37;
      v11[16] = v38 & 1;
      *(v11 + 3) = v39;
      *(v11 + 16) = 257;
      v40 = v47;
      v31(v47, v11, v1);
      v41 = v2[2];
      v42 = v48;
      v41(v48, v22, v1);
      v43 = v49;
      v41(v49, v40, v1);
      v44 = v50;
      v41(v50, v42, v1);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508F0);
      v41(&v44[*(v45 + 48)], v43, v1);
      v46 = v2[1];
      v46(v40, v1);
      v46(v22, v1);
      v46(v43, v1);
      v46(v42, v1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD6EA58C@<X0>(_WORD *a1@<X8>)
{
  result = sub_1BE049AF4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD6EA5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v58 = a2;
  v56 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v54 = *(v5 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v51 = &v39 - v7;
  v8 = sub_1BE049B04();
  v49 = *(v8 - 8);
  v50 = v8;
  v52 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v57 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BE04AFE4();
  v11 = *(v47 - 8);
  v48 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v47, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v14;
  v15 = _s17SummaryDetailViewVMa(0);
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v39 - v20;
  v46 = &v39 - v20;
  v22 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
  v23 = v22[6];
  v24 = sub_1BE0493F4();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v21, a1 + v23, v24);
  (*(v25 + 56))(v21, 0, 1, v24);
  v44 = a1 + v22[7];
  v43 = *(a1 + v22[5]);
  v42 = a1;
  v26 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
  v27 = v58;
  sub_1BD6EF420(v58, &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), _s17SummaryDetailViewVMa);
  v28 = v47;
  (*(v11 + 16))(v14, v53, v47);
  v30 = v49;
  v29 = v50;
  (*(v49 + 16))(v57, a1, v50);
  v31 = v51;
  sub_1BD0DE19C(v27 + v26, v51, &qword_1EBD38DB8);
  v32 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v33 = (v16 + *(v11 + 80) + v32) & ~*(v11 + 80);
  v34 = (v48 + *(v30 + 80) + v33) & ~*(v30 + 80);
  v35 = (v52 + *(v54 + 80) + v34) & ~*(v54 + 80);
  v36 = swift_allocObject();
  sub_1BD6EF488(v40, v36 + v32, _s17SummaryDetailViewVMa);
  (*(v11 + 32))(v36 + v33, v41, v28);
  (*(v30 + 32))(v36 + v34, v57, v29);
  sub_1BD0DE204(v31, v36 + v35, &qword_1EBD38DB8);
  v59 = v42;
  v60 = v43;
  v37 = v46;
  v61 = v58;
  v62 = v46;
  v63 = v44;
  _s16BreakdownRowViewVMa();
  sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa);
  sub_1BE051704();
  return sub_1BD0DE53C(v37, &qword_1EBD3BCA0);
}

double sub_1BD6EAB4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04AFE4();
  (*(*(v6 - 8) + 16))(a3, a2, v6);
  v7 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
  v8 = _s17GroupBreakdownRowVMa(0);
  sub_1BD0DE19C(a2 + v7, a3 + v8[5], &qword_1EBD38DB8);
  sub_1BD6EF420(a1, a3 + v8[6], type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown);
  type metadata accessor for NavigationController();
  sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v9 = sub_1BE04EEC4();
  v11 = v10;
  v12 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00);
  sub_1BE051694();
  result = *&v15;
  *(a3 + v12) = v15;
  v14 = (a3 + v8[8]);
  *v14 = v9;
  v14[1] = v11;
  return result;
}

uint64_t sub_1BD6EACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v236 = a2;
  v238 = a1;
  v211 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v204 = &v194 - v5;
  v203 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
  v205 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v6);
  v197 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v206 = &v194 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v200 = &v194 - v13;
  v201 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
  v199 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v14);
  v202 = &v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v214 = *(v16 - 8);
  v215 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v216 = &v194 - v18;
  v19 = sub_1BE04AFE4();
  v220 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v213 = v21;
  v230 = &v194 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s17SummaryDetailViewVMa(0);
  v227 = *(v22 - 8);
  v23 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v232 = &v194 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v231 = &v194 - v30;
  v237 = sub_1BE049B04();
  v31 = *(v237 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v237, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v194 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37258);
  v234 = *(v38 - 8);
  v235 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v217 = &v194 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v194 - v43;
  v45 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v198 = &v194 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50800);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v210 = &v194 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v209 = &v194 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v208 = &v194 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v221 = &v194 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v207 = &v194 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v219 = &v194 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v218 = &v194 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v226 = &v194 - v72;
  v225 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  sub_1BD0DE19C(v238 + v225[9], v44, &qword_1EBD507F8);
  v73 = (*(v46 + 48))(v44, 1, v45);
  v74 = v236;
  v222 = v19;
  v223 = v23;
  v228 = &v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = v31;
  v233 = v37;
  v75 = v227;
  v224 = &v194 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = v32;
  if (v73 == 1)
  {
    sub_1BD0DE53C(v44, &qword_1EBD507F8);
    v76 = *(v234 + 56);
    v76(v226, 1, 1, v235);
    v77 = v231;
  }

  else
  {
    v78 = v31;
    v79 = v37;
    v80 = v198;
    sub_1BD6EF488(v44, v198, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
    (*(v78 + 104))(v79, *MEMORY[0x1E6967A90], v237);
    v81 = sub_1BE0493F4();
    v82 = *(v81 - 8);
    v83 = v231;
    (*(v82 + 16))(v231, v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v84 = type metadata accessor for FinanceKitSpendingTrend();
    (*(*(v84 - 8) + 56))(v232, 1, 1, v84);
    v195 = *(v80 + *(v45 + 20));
    v85 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
    v86 = v228;
    sub_1BD6EF420(v74, v228, _s17SummaryDetailViewVMa);
    v87 = v220;
    v88 = v222;
    (*(v220 + 16))(v230, v238, v222);
    v89 = v32;
    v90 = v78;
    (*(v78 + 16))(v224, v233, v237);
    v91 = v216;
    sub_1BD0DE19C(v74 + v85, v216, &qword_1EBD38DB8);
    v92 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v93 = (v23 + *(v87 + 80) + v92) & ~*(v87 + 80);
    v94 = (v213 + *(v90 + 80) + v93) & ~*(v90 + 80);
    v95 = (v89 + *(v214 + 80) + v94) & ~*(v214 + 80);
    v96 = swift_allocObject();
    sub_1BD6EF488(v86, v96 + v92, _s17SummaryDetailViewVMa);
    (*(v87 + 32))(v96 + v93, v230, v88);
    (*(v90 + 32))(v96 + v94, v224, v237);
    v97 = v232;
    v98 = sub_1BD0DE204(v91, v96 + v95, &qword_1EBD38DB8);
    MEMORY[0x1EEE9AC00](v98, v99);
    v100 = v233;
    v101 = v195;
    *(&v194 - 6) = v233;
    *(&v194 - 5) = v101;
    v77 = v231;
    *(&v194 - 4) = v236;
    *(&v194 - 3) = v77;
    *(&v194 - 2) = v97;
    _s16BreakdownRowViewVMa();
    sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa);
    v102 = v217;
    sub_1BE051704();
    sub_1BD0DE53C(v97, &qword_1EBD44F98);
    sub_1BD0DE53C(v77, &qword_1EBD3BCA0);
    (*(v229 + 8))(v100, v237);
    v103 = v234;
    v104 = v235;
    v105 = v226;
    (*(v234 + 32))(v226, v102, v235);
    v76 = *(v103 + 56);
    v76(v105, 0, 1, v104);
    sub_1BD6EF2C8(v198, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  }

  v106 = v200;
  sub_1BD0DE19C(v238 + v225[10], v200, &qword_1EBD507F0);
  v107 = v201;
  if ((*(v199 + 48))(v106, 1, v201) == 1)
  {
    sub_1BD0DE53C(v106, &qword_1EBD507F0);
    v76(v218, 1, 1, v235);
  }

  else
  {
    v108 = v202;
    sub_1BD6EF488(v106, v202, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    v109 = v229;
    v110 = v233;
    (*(v229 + 104))(v233, *MEMORY[0x1E6967A70], v237);
    v111 = sub_1BE0493F4();
    v112 = *(v111 - 8);
    (*(v112 + 16))(v77, v108, v111);
    (*(v112 + 56))(v77, 0, 1, v111);
    v113 = type metadata accessor for FinanceKitSpendingTrend();
    (*(*(v113 - 8) + 56))(v232, 1, 1, v113);
    v201 = *(v108 + *(v107 + 20));
    v114 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
    v115 = v236;
    v116 = v228;
    sub_1BD6EF420(v236, v228, _s17SummaryDetailViewVMa);
    v117 = v220;
    v118 = v222;
    (*(v220 + 16))(v230, v238, v222);
    (*(v109 + 16))(v224, v110, v237);
    v119 = v216;
    sub_1BD0DE19C(v115 + v114, v216, &qword_1EBD38DB8);
    v120 = (*(v227 + 80) + 16) & ~*(v227 + 80);
    v121 = (v223 + *(v117 + 80) + v120) & ~*(v117 + 80);
    v122 = v109;
    v123 = (v213 + *(v109 + 80) + v121) & ~*(v109 + 80);
    v124 = (v212 + *(v214 + 80) + v123) & ~*(v214 + 80);
    v125 = swift_allocObject();
    sub_1BD6EF488(v116, v125 + v120, _s17SummaryDetailViewVMa);
    v126 = v237;
    (*(v117 + 32))(v125 + v121, v230, v118);
    v127 = v125 + v123;
    v128 = v235;
    (*(v122 + 32))(v127, v224, v126);
    v129 = v231;
    v130 = v217;
    v131 = sub_1BD0DE204(v119, v125 + v124, &qword_1EBD38DB8);
    MEMORY[0x1EEE9AC00](v131, v132);
    v133 = v232;
    v134 = v233;
    v135 = v201;
    *(&v194 - 6) = v233;
    *(&v194 - 5) = v135;
    *(&v194 - 4) = v236;
    *(&v194 - 3) = v129;
    *(&v194 - 2) = v133;
    _s16BreakdownRowViewVMa();
    sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa);
    sub_1BE051704();
    sub_1BD0DE53C(v133, &qword_1EBD44F98);
    sub_1BD0DE53C(v129, &qword_1EBD3BCA0);
    v136 = v234;
    (*(v229 + 8))(v134, v126);
    v137 = v218;
    (*(v136 + 32))(v218, v130, v128);
    v76 = *(v136 + 56);
    v76(v137, 0, 1, v128);
    sub_1BD6EF2C8(v202, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  }

  v138 = v206;
  v139 = v205;
  v140 = v204;
  sub_1BD0DE19C(v238 + v225[11], v204, &qword_1EBD507E8);
  v141 = (*(v139 + 48))(v140, 1, v203);
  v143 = v227;
  v142 = v228;
  v144 = v223;
  if (v141 == 1)
  {
    sub_1BD0DE53C(v140, &qword_1EBD507E8);
  }

  else
  {
    sub_1BD6EF488(v140, v138, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    if (PKBankConnectExcludeFromSpendingSummariesAndHighlights())
    {
      sub_1BD6EF420(v236, v142, _s17SummaryDetailViewVMa);
      v145 = v197;
      sub_1BD6EF420(v138, v197, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      v146 = (*(v143 + 80) + 16) & ~*(v143 + 80);
      v147 = (v144 + *(v139 + 80) + v146) & ~*(v139 + 80);
      v148 = swift_allocObject();
      sub_1BD6EF488(v228, v148 + v146, _s17SummaryDetailViewVMa);
      v149 = sub_1BD6EF488(v145, v148 + v147, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      MEMORY[0x1EEE9AC00](v149, v150);
      *(&v194 - 2) = v138;
      _s16BreakdownRowViewVMa();
      sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa);
      v151 = v217;
      sub_1BE051704();
      v152 = v235;
      v153 = v219;
      (*(v234 + 32))(v219, v151, v235);
      v142 = v228;
      v76(v153, 0, 1, v152);
      sub_1BD6EF2C8(v138, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      v154 = v222;
      v155 = v220;
      goto LABEL_13;
    }

    sub_1BD6EF2C8(v138, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
  }

  v154 = v222;
  v155 = v220;
  v76(v219, 1, 1, v235);
LABEL_13:
  v156 = v229;
  v157 = v233;
  if (*(v238 + v225[12]))
  {
    v225 = *(v238 + v225[12]);
    v158 = v237;
    (*(v229 + 104))(v233, *MEMORY[0x1E6967AC0], v237);
    v159 = sub_1BE0493F4();
    (*(*(v159 - 8) + 56))(v231, 1, 1, v159);
    v160 = type metadata accessor for FinanceKitSpendingTrend();
    (*(*(v160 - 8) + 56))(v232, 1, 1, v160);
    v161 = _s31SpendingSummaryDetailsViewModelVMa(0);
    v162 = v142;
    v163 = *(v161 + 20);
    v164 = v236;
    sub_1BD6EF420(v236, v162, _s17SummaryDetailViewVMa);
    (*(v155 + 16))(v230, v238, v154);
    v165 = v224;
    (*(v156 + 16))(v224, v157, v158);
    v166 = v216;
    sub_1BD0DE19C(v164 + v163, v216, &qword_1EBD38DB8);
    v167 = (*(v227 + 80) + 16) & ~*(v227 + 80);
    v168 = (v223 + *(v155 + 80) + v167) & ~*(v155 + 80);
    v169 = (v213 + *(v156 + 80) + v168) & ~*(v156 + 80);
    v170 = (v212 + *(v214 + 80) + v169) & ~*(v214 + 80);
    v171 = v154;
    v172 = swift_allocObject();
    sub_1BD6EF488(v228, v172 + v167, _s17SummaryDetailViewVMa);
    (*(v155 + 32))(v172 + v168, v230, v171);
    v173 = v172 + v169;
    v174 = v237;
    (*(v156 + 32))(v173, v165, v237);
    v175 = sub_1BD0DE204(v166, v172 + v170, &qword_1EBD38DB8);
    MEMORY[0x1EEE9AC00](v175, v176);
    v178 = v232;
    v177 = v233;
    v179 = v225;
    *(&v194 - 6) = v233;
    *(&v194 - 5) = v179;
    v180 = v231;
    *(&v194 - 4) = v236;
    *(&v194 - 3) = v180;
    *(&v194 - 2) = v178;
    _s16BreakdownRowViewVMa();
    sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa);
    v181 = v217;
    sub_1BE051704();
    sub_1BD0DE53C(v178, &qword_1EBD44F98);
    sub_1BD0DE53C(v180, &qword_1EBD3BCA0);
    (*(v229 + 8))(v177, v174);
    v182 = v234;
    v183 = v235;
    v184 = v207;
    (*(v234 + 32))(v207, v181, v235);
    (*(v182 + 56))(v184, 0, 1, v183);
  }

  else
  {
    v184 = v207;
    v76(v207, 1, 1, v235);
  }

  v185 = v221;
  sub_1BD0DE19C(v226, v221, &qword_1EBD50800);
  v186 = v218;
  v187 = v208;
  sub_1BD0DE19C(v218, v208, &qword_1EBD50800);
  v188 = v219;
  v189 = v209;
  sub_1BD0DE19C(v219, v209, &qword_1EBD50800);
  v190 = v210;
  sub_1BD0DE19C(v184, v210, &qword_1EBD50800);
  v191 = v211;
  sub_1BD0DE19C(v185, v211, &qword_1EBD50800);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50808);
  sub_1BD0DE19C(v187, v191 + v192[12], &qword_1EBD50800);
  sub_1BD0DE19C(v189, v191 + v192[16], &qword_1EBD50800);
  sub_1BD0DE19C(v190, v191 + v192[20], &qword_1EBD50800);
  sub_1BD0DE53C(v184, &qword_1EBD50800);
  sub_1BD0DE53C(v188, &qword_1EBD50800);
  sub_1BD0DE53C(v186, &qword_1EBD50800);
  sub_1BD0DE53C(v226, &qword_1EBD50800);
  sub_1BD0DE53C(v190, &qword_1EBD50800);
  sub_1BD0DE53C(v189, &qword_1EBD50800);
  sub_1BD0DE53C(v187, &qword_1EBD50800);
  return sub_1BD0DE53C(v221, &qword_1EBD50800);
}

uint64_t sub_1BD6EC694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15[-v6 - 8];
  if (*(a1 + *(_s17SummaryDetailViewVMa(0) + 24)))
  {
    v8 = *(a2 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) + 20));
    v9 = _s31SpendingSummaryDetailsViewModelVMa(0);
    sub_1BD0DE19C(a1 + *(v9 + 20), v7, &qword_1EBD38DB8);
    type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel(0);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08);
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 2, v12);
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE04B5C4();
    *(v10 + 16) = v8;
    sub_1BD0DE204(v7, v10 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel_range, &qword_1EBD38DB8);
    sub_1BD0F9B4C(v15);
    sub_1BD982668(v15);

    return sub_1BD6EFD4C(v15);
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD6EC8AC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04B0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE052404();
  v10 = PKLocalizedBankConnectString(v9);

  if (v10)
  {
    v11 = sub_1BE052434();
    v13 = v12;

    v14 = sub_1BE052404();
    v15 = PKLocalizedString(v14);

    if (v15)
    {
      sub_1BE052434();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BE0B69E0;
      v17 = *(*(a1 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) + 20)) + 16);
      v18 = MEMORY[0x1E69E65A8];
      *(v16 + 56) = MEMORY[0x1E69E6530];
      *(v16 + 64) = v18;
      *(v16 + 32) = v17;
      v19 = sub_1BE052454();
      v21 = v20;

      sub_1BE04B054();
      v22 = sub_1BE0493E4();
      v24 = v23;
      (*(v5 + 8))(v8, v4);
      PKScreenScale();
      v25 = PKIconForFKManuallyExcluded();
      v26 = *(_s16BreakdownRowViewVMa() + 32);
      v27 = type metadata accessor for FinanceKitSpendingTrend();
      (*(*(v27 - 8) + 56))(a2 + v26, 1, 1, v27);
      *a2 = v11;
      a2[1] = v13;
      a2[2] = v19;
      a2[3] = v21;
      a2[4] = v22;
      a2[5] = v24;
      a2[6] = v25;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD6ECB40(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedBankConnectString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v4 = sub_1BE0506C4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = sub_1BE050234();
    sub_1BE04E1F4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = v8 & 1;
    v21 = sub_1BE050204();
    sub_1BE04E1F4();
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v20;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = v13;
    *(a1 + 48) = v15;
    *(a1 + 56) = v17;
    *(a1 + 64) = v19;
    *(a1 + 72) = 0;
    *(a1 + 80) = v21;
    *(a1 + 88) = v22;
    *(a1 + 96) = v23;
    *(a1 + 104) = v24;
    *(a1 + 112) = v25;
    *(a1 + 120) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6ECCB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = sub_1BE052404();
  [v5 setLocalizedDateFormatFromTemplate_];

  *a4 = v5;
}

uint64_t sub_1BD6ECD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v28[-v9 - 8];
  v11 = sub_1BE049B04();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = sub_1BE04AFE4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v28[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + *(_s17SummaryDetailViewVMa(0) + 24)))
  {
    (*(v17 + 16))(v20, a2, v16);
    (*(v12 + 16))(v15, a3, v11);
    sub_1BD0DE19C(v27, v10, &qword_1EBD38DB8);
    sub_1BE0490F4();
    sub_1BE048964();
    v27 = sub_1BE0490B4();
    type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel(0);
    v21 = swift_allocObject();
    v22 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution;
    v23 = sub_1BE049184();
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    v24 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
    v25 = sub_1BE0495A4();
    (*(*(v25 - 8) + 56))(v21 + v24, 1, 1, v25);
    *(v21 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions) = 0;
    sub_1BE04B5C4();
    (*(v17 + 32))(v21 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID, v20, v16);
    (*(v12 + 32))(v21 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category, v15, v11);
    sub_1BD0DE204(v10, v21 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range, &qword_1EBD38DB8);
    *(v21 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store) = v27;
    sub_1BD628774(v28);
    sub_1BD9827A8(v28);

    return sub_1BD6EFDA0(v28);
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD6ED11C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v34 = a4;
  v9 = sub_1BE049B04();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE049AE4();
  v32 = v15;
  v33 = v14;
  v16 = sub_1BE052404();
  v17 = PKLocalizedString(v16);

  if (v17)
  {
    sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    v19 = *(a2 + 16);
    v20 = MEMORY[0x1E69E65A8];
    *(v18 + 56) = MEMORY[0x1E69E6530];
    *(v18 + 64) = v20;
    *(v18 + 32) = v19;
    v21 = sub_1BE052454();
    v23 = v22;

    sub_1BD6ED354(a1, a3);
    v25 = v24;
    v27 = v26;
    (*(v10 + 16))(v13, a1, v9);
    MEMORY[0x1BFB3FF90](v13);
    PKScreenScale();
    v28 = PKIconForFKCategory();
    v29 = _s16BreakdownRowViewVMa();
    sub_1BD0DE19C(v34, a5 + *(v29 + 32), &qword_1EBD44F98);
    v30 = v32;
    *a5 = v33;
    a5[1] = v30;
    a5[2] = v21;
    a5[3] = v23;
    a5[4] = v25;
    a5[5] = v27;
    a5[6] = v28;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6ED354(uint64_t a1, uint64_t a2)
{
  v23 = sub_1BE04B0F4();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22 - v9;
  v11 = sub_1BE0493F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a2, v10, &qword_1EBD3BCA0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD3BCA0);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    if (sub_1BE049AA4())
    {
      sub_1BE04B054();
      sub_1BE0493E4();
      (*(v3 + 8))(v6, v23);
      (*(v12 + 8))(v15, v11);
    }

    else
    {
      v16 = sub_1BE052404();
      v17 = PKLocalizedPaymentString(v16);

      if (v17)
      {
        sub_1BE052434();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1BE0B69E0;
        sub_1BE04B054();
        v19 = sub_1BE0493E4();
        v21 = v20;
        (*(v3 + 8))(v6, v23);
        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 64) = sub_1BD110550();
        *(v18 + 32) = v19;
        *(v18 + 40) = v21;
        sub_1BE052454();

        (*(v12 + 8))(v15, v11);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BD6ED6D4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37258);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v37 - v4;
  v6 = _s17GroupBreakdownRowVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BD6EF420(v1, &v37 - v10, _s17GroupBreakdownRowVMa);
  v11 = *(v7 + 80);
  v12 = swift_allocObject();
  sub_1BD6EF488(&v37 - v10, v12 + ((v11 + 16) & ~v11), _s17GroupBreakdownRowVMa);
  v45 = v1;
  _s16BreakdownRowViewVMa();
  sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa);
  v41 = v5;
  v13 = sub_1BE051704();
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1BD6EF420(v1, &v37 - v10, _s17GroupBreakdownRowVMa);
  sub_1BE0528A4();
  v15 = sub_1BE052894();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  sub_1BD6EF488(&v37 - v10, v16 + ((v11 + 32) & ~v11), _s17GroupBreakdownRowVMa);
  v18 = sub_1BE0528D4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v39 = sub_1BE04EAA4();
    v40 = &v37;
    v38 = *(v39 - 8);
    MEMORY[0x1EEE9AC00](v39, v23);
    v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1BE053834();

    v47 = 0xD00000000000004ELL;
    v48 = 0x80000001BE1362D0;
    v46 = 387;
    v26 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v26);

    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    (*(v19 + 16))(&v37 - v22, &v37 - v22, v18, v29);
    sub_1BE04EA94();
    (*(v19 + 8))(&v37 - v22, v18);
    v30 = v44;
    (*(v42 + 32))(v44, v41, v43);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37260);
    return (*(v38 + 32))(v30 + *(v31 + 36), v25, v39);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37268);
    v34 = v44;
    v35 = (v44 + *(v33 + 36));
    v36 = sub_1BE04E7B4();
    (*(v19 + 32))(&v35[*(v36 + 20)], &v37 - v22, v18);
    *v35 = &unk_1BE0F1368;
    *(v35 + 1) = v16;
    return (*(v42 + 32))(v34, v41, v43);
  }
}

uint64_t sub_1BD6EDC68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v24 - v4;
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v24 - v13;
  v15 = _s17GroupBreakdownRowVMa(0);
  if (*(a1 + *(v15 + 32)))
  {
    v16 = v15;
    v17 = *(v7 + 16);
    v17(v14, a1, v6);
    v17(v10, a1 + *(v16 + 24), v6);
    sub_1BD0DE19C(a1 + *(v16 + 20), v5, &qword_1EBD38DB8);
    sub_1BE0490F4();
    sub_1BE048964();
    v18 = sub_1BE0490B4();
    type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel(0);
    v19 = swift_allocObject();
    *(v19 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading) = 0;
    v20 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
    v21 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
    (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
    sub_1BE04B5C4();
    v22 = *(v7 + 32);
    v22(v19 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_accountID, v14, v6);
    v22(v19 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_groupID, v10, v6);
    sub_1BD0DE204(v5, v19 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_range, &qword_1EBD38DB8);
    *(v19 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_store) = v18;
    sub_1BDA4B278(v24);
    sub_1BD9828E8(v24);

    return sub_1BD6F0998(v24);
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD6EDF9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE049B04();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B0F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s17GroupBreakdownRowVMa(0);
  v12 = a1 + *(v39 + 24);
  v13 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  v14 = (v12 + v13[5]);
  v15 = v14[1];
  v42 = *v14;
  v43 = v15;
  sub_1BE048C84();
  v16 = sub_1BE052404();
  v17 = PKLocalizedString(v16);

  if (v17)
  {
    sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    v19 = *(*(v12 + v13[9]) + 16);
    v20 = MEMORY[0x1E69E65A8];
    *(v18 + 56) = MEMORY[0x1E69E6530];
    *(v18 + 64) = v20;
    *(v18 + 32) = v19;
    v21 = sub_1BE052454();
    v40 = v22;
    v41 = v21;

    sub_1BE04B054();
    v23 = sub_1BE0493E4();
    v25 = v24;
    v26 = (*(v8 + 8))(v11, v7);
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v35 - 2) = a1;
    v28 = sub_1BD6E4F44(sub_1BD6F095C);
    if (v28)
    {
      goto LABEL_6;
    }

    v45 = *(a1 + *(v39 + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8);
    sub_1BE0516A4();
    v28 = v44;
    if (v44)
    {
      goto LABEL_6;
    }

    v29 = v36;
    (*(v37 + 16))(v36, v12 + v13[8], v38);
    MEMORY[0x1BFB3FF90](v29);
    PKScreenScale();
    v30 = PKIconForFKCategory();
    if (v30)
    {
      v28 = v30;
LABEL_6:
      v31 = v13[11];
      v32 = _s16BreakdownRowViewVMa();
      sub_1BD0DE19C(v12 + v31, a2 + *(v32 + 32), &qword_1EBD44F98);
      v33 = v43;
      *a2 = v42;
      a2[1] = v33;
      v34 = v40;
      a2[2] = v41;
      a2[3] = v34;
      a2[4] = v23;
      a2[5] = v25;
      a2[6] = v28;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD6EE338()
{
  v0 = sub_1BE0491E4();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v4 = sub_1BE04AAB4();
  v5 = [v3 initWithData_];

  sub_1BD1245AC(v0, v2);
  v6 = sub_1BE0491C4();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v8 = [objc_opt_self() clearColor];
  }

  PKScreenScale();
  v9 = PKIconWithImageAndBackgroundColor();

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t sub_1BD6EE45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = _s17GroupBreakdownRowVMa(0);
  v3[7] = swift_task_alloc();
  v4 = sub_1BE04D214();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1BE0491F4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1BE0528A4();
  v3[16] = sub_1BE052894();
  v7 = sub_1BE052844();
  v3[17] = v7;
  v3[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD6EE620, v7, v6);
}

uint64_t sub_1BD6EE620()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[5] + *(v0[6] + 24);
  v5 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  sub_1BD0DE19C(v4 + *(v5 + 28), v1, &qword_1EBD45CC0);
  v6 = *(v3 + 48);
  v0[19] = v6;
  v0[20] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v2) == 1)
  {
    sub_1BD0DE53C(v0[15], &qword_1EBD45CC0);
    sub_1BE0490F4();
    v0[21] = sub_1BE0490B4();
    v7 = *(v5 + 24);
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_1BD6EE804;
    v9 = v0[14];

    return MEMORY[0x1EEDC14C0](v9, v4 + v7, 1, 1);
  }

  else
  {
    v10 = v0[15];

    sub_1BD0DE53C(v10, &qword_1EBD45CC0);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1BD6EE804()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BD6EEA84;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BD6EE920;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD6EE920()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  if (v1(v2, 1, v3) == 1)
  {
    sub_1BD0DE53C(*(v0 + 112), &qword_1EBD45CC0);
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    (*(v6 + 32))(v4, *(v0 + 112), v5);
    sub_1BD6EE338();
    *(v0 + 16) = *(v7 + *(v8 + 28));
    *(v0 + 32) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8);
    sub_1BE0516B4();
    (*(v6 + 8))(v4, v5);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BD6EEA84()
{
  v27 = v0;
  v1 = v0[23];
  v2 = v0[7];
  v3 = v0[5];

  sub_1BE04D114();
  sub_1BD6EF420(v3, v2, _s17GroupBreakdownRowVMa);
  v4 = v1;
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  if (v7)
  {
    v25 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v13 = 136315394;
    sub_1BE04AFE4();
    v24 = v12;
    sub_1BD6EED94(&unk_1EBD39960, MEMORY[0x1E69695A8]);
    v15 = sub_1BE053B24();
    v17 = v16;
    sub_1BD6EF2C8(v11, _s17GroupBreakdownRowVMa);
    v18 = sub_1BD123690(v15, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_1BD026000, v5, v6, "Failed to generate icon for breakdown with ID: %s with error: %@.", v13, 0x16u);
    sub_1BD0DE53C(v14, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1BFB45F20](v23, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {

    sub_1BD6EF2C8(v11, _s17GroupBreakdownRowVMa);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BD6EED94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD6EEDE4()
{
  result = qword_1EBD50708;
  if (!qword_1EBD50708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50710);
    sub_1BD6EEE9C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50708);
  }

  return result;
}

unint64_t sub_1BD6EEE9C()
{
  result = qword_1EBD50718;
  if (!qword_1EBD50718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50720);
    sub_1BD0DE4F4(&qword_1EBD50728, &qword_1EBD50730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50718);
  }

  return result;
}

unint64_t sub_1BD6EEF58()
{
  result = qword_1EBD50740;
  if (!qword_1EBD50740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506D0);
    sub_1BD0DE4F4(&qword_1EBD50738, &qword_1EBD506D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50740);
  }

  return result;
}

unint64_t sub_1BD6EF05C()
{
  result = qword_1EBD50770;
  if (!qword_1EBD50770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506A8);
    sub_1BD6EF0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50770);
  }

  return result;
}

unint64_t sub_1BD6EF0E8()
{
  result = qword_1EBD50778;
  if (!qword_1EBD50778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50768);
    sub_1BD6EF1A0();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50778);
  }

  return result;
}

unint64_t sub_1BD6EF1A0()
{
  result = qword_1EBD50780;
  if (!qword_1EBD50780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506A0);
    sub_1BD0DE4F4(&qword_1EBD50758, &qword_1EBD506A0);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50780);
  }

  return result;
}

uint64_t sub_1BD6EF2C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD6EF330()
{
  result = qword_1EBD507E0;
  if (!qword_1EBD507E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD507B8);
    sub_1BD0DE4F4(&qword_1EBD507D0, &qword_1EBD507C8);
    sub_1BD6F0564(&qword_1EBD507D8, &qword_1EBD50798, &unk_1BE0F1090, sub_1BD2A275C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD507E0);
  }

  return result;
}

uint64_t sub_1BD6EF420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6EF488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6EF4F8()
{
  v1 = *(_s17SummaryDetailViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD6EC694(v0 + v2, v5);
}

uint64_t objectdestroyTm_80()
{
  v40 = _s17SummaryDetailViewVMa(0);
  v50 = (*(*(v40 - 8) + 80) + 16) & ~*(*(v40 - 8) + 80);
  v49 = *(*(v40 - 8) + 64);
  v1 = sub_1BE04AFE4();
  v2 = *(v1 - 8);
  v48 = *(v2 + 80);
  v47 = *(v2 + 64);
  v41 = sub_1BE049B04();
  v3 = *(v41 - 8);
  v4 = *(v3 + 80);
  v46 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v6 = *(*(v5 - 8) + 80);
  v7 = v0 + v50;
  v44 = v1;
  v45 = *(v2 + 8);
  v43 = v0;
  v45(v0 + v50, v1);
  v8 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v9 = v0 + v50 + *(v8 + 20);
  v10 = sub_1BE04AF64();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v42 = v5;
  v11(v9 + *(v5 + 36), v10);
  v12 = v7 + *(v8 + 28);
  v13 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v14 = (*(*(v13 - 1) + 48))(v12, 1, v13);
  v16 = v46;
  v15 = v47;
  v18 = v48;
  v17 = v49;
  v19 = v50;
  if (!v14)
  {
    v36 = v6;
    v37 = v11;
    v38 = v4;
    v39 = v3;
    v45(v12, v44);
    v20 = v13[5];
    v21 = sub_1BE0493F4();
    v22 = *(*(v21 - 8) + 8);
    v22(v12 + v20, v21);
    v23 = v13[6];
    v24 = type metadata accessor for FinanceKitSpendingTrend();
    v25 = v13;
    if (!(*(*(v24 - 8) + 48))(v12 + v23, 1, v24) && swift_getEnumCaseMultiPayload() <= 3)
    {
      v22(v12 + v23, v21);
    }

    v26 = v12 + v13[9];
    v27 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {
      v22(v26, v21);
    }

    v28 = v12 + v25[10];
    v29 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {
      v22(v28, v21);
    }

    v30 = v12 + v25[11];
    v31 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {
      v22(v30, v21);
    }

    v4 = v38;
    v3 = v39;
    v19 = v50;
    v18 = v48;
    v17 = v49;
    v16 = v46;
    v15 = v47;
    v11 = v37;
    v6 = v36;
  }

  v32 = (v19 + v17 + v18) & ~v18;
  v33 = (v32 + v15 + v4) & ~v4;
  v34 = (v33 + v16 + v6) & ~v6;

  v45(v43 + v32, v44);
  (*(v3 + 8))(v43 + v33, v41);
  v11(v43 + v34, v10);
  v11(v43 + v34 + *(v42 + 36), v10);

  return swift_deallocObject();
}

uint64_t sub_1BD6EFBB4()
{
  v1 = *(_s17SummaryDetailViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1BE049B04() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
  v11 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1BD6ECD38(v0 + v2, v0 + v5, v0 + v8, v11);
}

unint64_t sub_1BD6EFDFC()
{
  result = qword_1EBD50830;
  if (!qword_1EBD50830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50810);
    sub_1BD6EFEB4();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50830);
  }

  return result;
}

unint64_t sub_1BD6EFEB4()
{
  result = qword_1EBD50838;
  if (!qword_1EBD50838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50848);
    sub_1BE04FAB4();
    sub_1BD0DE4F4(&qword_1EBD50850, &qword_1EBD50848);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50838);
  }

  return result;
}

unint64_t sub_1BD6EFFD0()
{
  result = qword_1EBD50858;
  if (!qword_1EBD50858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50828);
    sub_1BD6F0244(&qword_1EBD50860, &qword_1EBD50868, &unk_1BE0F1140, sub_1BD6F00B4);
    sub_1BD6F0244(&qword_1EBD50898, &qword_1EBD508A0, &unk_1BE0F1158, sub_1BD6F02C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50858);
  }

  return result;
}

uint64_t sub_1BD6F00E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD6F0194()
{
  result = qword_1EBD50880;
  if (!qword_1EBD50880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50888);
    sub_1BD0DE4F4(&qword_1EBD50890, &qword_1EBD37258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50880);
  }

  return result;
}

uint64_t sub_1BD6F0244(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD6F02C0()
{
  result = qword_1EBD508A8;
  if (!qword_1EBD508A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD508B0);
    sub_1BD6EED94(&qword_1EBD508B8, _s17GroupBreakdownRowVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD508A8);
  }

  return result;
}

unint64_t sub_1BD6F0394()
{
  result = qword_1EBD508D8;
  if (!qword_1EBD508D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD508D8);
  }

  return result;
}

uint64_t sub_1BD6F03E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s17SummaryDetailViewVMa(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1BE04AFE4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1BD6EA5B8(a1, v2 + v6, v9, a2);
}

double sub_1BD6F04DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s17SummaryDetailViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD6EAB4C(a1, v6, a2);
}

uint64_t sub_1BD6F0564(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD6F05E8()
{
  result = qword_1EBD50988;
  if (!qword_1EBD50988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50978);
    sub_1BD6EED94(&qword_1EBD50990, type metadata accessor for FinanceKitSpendingSummariesGraphView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50988);
  }

  return result;
}

void sub_1BD6F06CC()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BD0F5C4C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(319);
      if (v2 <= 0x3F)
      {
        sub_1BD6F0798();
        if (v3 <= 0x3F)
        {
          sub_1BD49DA08();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD6F0798()
{
  if (!qword_1EBD509C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4AB00);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD509C0);
    }
  }
}

uint64_t sub_1BD6F0818()
{
  v1 = *(_s17GroupBreakdownRowVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD6EDC68(v2);
}

uint64_t sub_1BD6F0880()
{
  v2 = *(_s17GroupBreakdownRowVMa(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD6EE45C(v4, v5, v0 + v3);
}

uint64_t FlightWidgetStatusSymbolContent.init(symbolName:symbolColor:displayContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t static FlightWidgetStatusSymbolAndMessageContent.createContent(viewModel:context:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  v16 = *a2;
  v10 = v16;
  static FlightWidgetStatusSymbolContent.createContent(viewModel:context:)(a1, &v16, &v17);
  v15 = v17;
  v11 = v18;
  v12 = v19;
  LOBYTE(v17) = v10;
  static FlightWidgetStatusMessageContent.createContent(viewModel:context:)(a1, &v17, v9);
  *a3 = v15;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  v13 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent();
  sub_1BD6F0F30(v9, a3 + *(v13 + 20));
  *(a3 + *(v13 + 24)) = v10;
  return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
}

void static FlightWidgetStatusSymbolContent.createContent(viewModel:context:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_55;
  }

  v6 = *a2;
  v7 = v4;
  v8 = PKCurrentlyReleventFlightStepForFlight();
  v9 = [v8 status];

  if (v9 == 3)
  {
    v10 = 0x80000001BE1363F0;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1BE0513C4();
  v12 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  if (v12 <= 6)
  {
    if (*(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) <= 2u)
    {
      if (v9 == 3)
      {
        v10 = 0x80000001BE1363F0;
      }

      else
      {
        v10 = 0x80000001BE1363D0;
      }

      if (v9 == 3)
      {
        goto LABEL_22;
      }

      v13 = 0xD00000000000001CLL;
LABEL_53:
      *a3 = v13;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      *(a3 + 24) = v6;
      return;
    }

    if (*(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) > 4u)
    {
      if (v12 != 5)
      {
        v13 = 0x656E616C70726961;

        v10 = 0xEE0064756F6C632ELL;
        goto LABEL_53;
      }

      v15 = "airplane.departure";
LABEL_48:
      v10 = (v15 - 32) | 0x8000000000000000;
      v13 = 0xD000000000000012;
      goto LABEL_53;
    }

    if (v12 == 3)
    {

      if (v6 <= 1)
      {
        v13 = 0x65646F637271;

        v10 = 0xE600000000000000;
        goto LABEL_53;
      }

LABEL_50:

      goto LABEL_55;
    }

    if (v6 <= 1)
    {

      if (v9 == 3)
      {
        v13 = 0xD000000000000019;
      }

      else
      {
        v13 = 0xD000000000000012;
      }

      if (v9 == 3)
      {
        v10 = 0x80000001BE1363F0;
      }

      else
      {
        v10 = 0x80000001BE1363B0;
      }

      goto LABEL_53;
    }

LABEL_54:

    goto LABEL_55;
  }

  if (*(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) <= 0xAu)
  {
    if (v12 - 8 < 2)
    {
      if (v9 != 3)
      {
        goto LABEL_49;
      }

LABEL_22:
      if (v6 > 1 && (v6 == 2 || v6 == 3))
      {
        v13 = 0xD000000000000019;
        v14 = sub_1BE051434();

        v11 = v14;
      }

      else
      {
        v13 = 0xD000000000000019;
      }

      goto LABEL_53;
    }

    if (v12 == 7)
    {

      v10 = 0x80000001BE136390;
      v13 = 0xD000000000000010;
      goto LABEL_53;
    }

    if (v6 <= 1)
    {
LABEL_49:
      v10 = 0xEF6465646E616C2ELL;
      v13 = 0x656E616C70726961;

      goto LABEL_53;
    }

    if (v6 == 2 || v6 == 3)
    {

      v15 = "suitcase.cart.fill";
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v12 - 11 < 2)
  {

    v10 = 0x80000001BE136350;
    v13 = 0xD000000000000014;
    goto LABEL_53;
  }

  if (v12 != 13)
  {
    goto LABEL_54;
  }

  v16 = sub_1BE0513B4();

  if (v6 > 1 && (v6 == 2 || v6 == 3))
  {
    v10 = 0x80000001BE136320;
    v13 = 0xD000000000000020;
    v11 = v16;
    goto LABEL_53;
  }

LABEL_55:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}