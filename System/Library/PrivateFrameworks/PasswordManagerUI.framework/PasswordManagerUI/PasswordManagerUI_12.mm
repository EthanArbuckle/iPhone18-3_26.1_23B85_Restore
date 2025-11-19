uint64_t sub_21C83FF40(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PMSystemSettingsNavigationDestination();
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA58, &qword_21CBC6B90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA50, &unk_21CBA8100);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  v88 = sub_21CB85C44();
  v23 = *(v88 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v88);
  v80 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v86 = v2;
  v87 = &v79 - v27;
  v89 = v23;
  if (a2)
  {
    v28 = a2;
  }

  else
  {
    v29 = v2[9];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v23 = v89;

    v28 = v90[0];
  }

  sub_21C6EDBAC(a1, v17, &qword_27CDEDA50, &unk_21CBA8100);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) != 1)
  {
    sub_21C716934(v17, v22, &unk_27CDF20B0, &unk_21CBA0090);

    goto LABEL_9;
  }

  v79 = v28;
  v82 = v13;
  v31 = v86[4];
  if (v31)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v32 = v31;
    sub_21CB81DB4();

    v33 = v30(v17, 1, v18);
    v13 = v82;
    v23 = v89;
    v28 = v79;
    if (v33 != 1)
    {
      sub_21C6EA794(v17, &qword_27CDEDA50, &unk_21CBA8100);
    }

LABEL_9:
    v34 = v88;
    if ((*(v23 + 48))(v22, 1, v88) == 1)
    {

      return sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
    }

    v36 = *(v23 + 32);
    v37 = v87;
    v36(v87, v22, v34);
    v38 = sub_21C7A120C(v37, v28);

    if (!v38)
    {
      return (*(v23 + 8))(v37, v34);
    }

    v39 = v86[4];
    if (!v39)
    {
      goto LABEL_37;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v39;
    sub_21CB81DB4();

    v41 = *(v90[0] + 16);
    if (v41)
    {
      v42 = v84;
      v43 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v79 = *(v84 + 72);
      sub_21C84467C(v90[0] + v43 + v79 * (v41 - 1), v13, type metadata accessor for PMSystemSettingsNavigationDestination);

      (*(v42 + 56))(v13, 0, 1, v85);
      v44 = v83;
      sub_21C6EDBAC(v13, v83, &qword_27CDEDA58, &qword_21CBC6B90);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v46 = v86[9];
          swift_getKeyPath();
          swift_getKeyPath();
          sub_21CB81DB4();

          MEMORY[0x28223BE20](v47);
          v48 = v87;
          *(&v79 - 2) = v87;
          v50 = *(sub_21CAE853C(sub_21C844560, (&v79 - 4), v49) + 16);

          v51 = v79;
          v82 = v13;
          if (v50)
          {
LABEL_21:
            (*(v89 + 16))(v81, v48, v34);
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath();
            swift_getKeyPath();
            v60 = v40;
            v61 = sub_21CB81DA4();
            v63 = v62;
            v64 = *v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v63 = v64;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v64 = sub_21CA4F6AC(0, v64[2] + 1, 1, v64);
              *v63 = v64;
            }

            v67 = v64[2];
            v66 = v64[3];
            if (v67 >= v66 >> 1)
            {
              v64 = sub_21CA4F6AC(v66 > 1, v67 + 1, 1, v64);
              *v63 = v64;
            }

            v68 = v87;
            v64[2] = v67 + 1;
            sub_21C844998(v81, v64 + v43 + v67 * v51, type metadata accessor for PMSystemSettingsNavigationDestination);
            v61(v90, 0);

            v13 = v82;
            v34 = v88;
            v69 = v89;
            goto LABEL_32;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v52 = v40;
          v53 = sub_21CB81DA4();
          v55 = *v54;
          if (*(*v54 + 16))
          {
            v48 = v53;
            v23 = v54;
            v56 = *v54;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v57 = v55[2];
              if (v57)
              {
LABEL_20:
                v58 = v57 - 1;
                sub_21C8446E4(v55 + v43 + (v57 - 1) * v51, type metadata accessor for PMSystemSettingsNavigationDestination);
                v55[2] = v58;
                *v23 = v55;
                v48(v90, 0);

                swift_getKeyPath();
                swift_getKeyPath();
                v59 = v52;
                sub_21CB81DB4();

                v48 = v87;
                v34 = v88;
                goto LABEL_21;
              }

              goto LABEL_35;
            }
          }

          else
          {
            __break(1u);
          }

          v55 = sub_21CAA112C(v55);
          v57 = v55[2];
          if (v57)
          {
            goto LABEL_20;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        sub_21C8446E4(v44, type metadata accessor for PMSystemSettingsNavigationDestination);
        v69 = v89;
        v68 = v87;
      }

      else
      {
        v86 = v43;
        v72 = v80;
        v36(v80, v44, v34);
        sub_21C705EB0(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v68 = v87;
        v73 = sub_21CB85574();
        v69 = v89;
        v74 = v72;
        v43 = v86;
        (*(v89 + 8))(v74, v34);
        if (v73)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {

      v70 = v84 + 56;
      (*(v84 + 56))(v13, 1, 1, v85);
      v71 = *(v70 + 16);
      v43 = (*(v70 + 24) + 32) & ~*(v70 + 24);
      v69 = v89;
      v68 = v87;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_21CBA0690;
    (*(v69 + 16))(v75 + v43, v68, v34);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v90[0] = v75;
    v76 = v40;
    v69 = v89;
    sub_21CB81DC4();
LABEL_32:
    sub_21C6EA794(v13, &qword_27CDEDA58, &qword_21CBC6B90);
    return (*(v69 + 8))(v68, v34);
  }

LABEL_36:
  v77 = v86[5];
  type metadata accessor for PMPasswordManagerState();
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);

  sub_21CB82B64();
  __break(1u);
LABEL_37:
  v78 = v86[5];
  type metadata accessor for PMPasswordManagerState();
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C840AF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA50, &unk_21CBA8100);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_21C6EDBAC(a1, &v8 - v4, &unk_27CDF20B0, &unk_21CBA0090);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_21C83FF40(v5, 0);
  return sub_21C6EA794(v5, &qword_27CDEDA50, &unk_21CBA8100);
}

uint64_t sub_21C840C5C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21CB81DC4();
}

uint64_t sub_21C840CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C840DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PMGroupInvitationSheetContent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA38, &qword_21CBA8080);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30[-v13];
  v15 = (a2 + *(type metadata accessor for PMAccountsView() + 48));
  v17 = *v15;
  v16 = v15[1];
  v33 = v17;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA40, &qword_21CBA8088);
  sub_21CB84D54();
  v18 = v32;
  swift_getKeyPath();
  v33 = v18;
  sub_21C705EB0(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v19 = *(v18 + 24);
  v31 = a1;

  sub_21C9691D4(sub_21C844540, v19, v14);

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  if ((*(*(v20 - 8) + 48))(v14, 1, v20) == 1)
  {
    sub_21C6EA794(v14, &qword_27CDEDA38, &qword_21CBA8080);
    v21 = 1;
  }

  else
  {
    v22 = *&v14[*(v20 + 48)];
    sub_21C8446E4(v14, type metadata accessor for PMSharingGroup);
    v23 = sub_21CB85C44();
    (*(*(v23 - 8) + 16))(v10, a1, v23);
    *&v10[*(v6 + 20)] = v22;
    v24 = &v10[*(v6 + 24)];
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7073E8(KeyPath, v33);

    type metadata accessor for PMGroupsStore();
    sub_21C705EB0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
    v26 = sub_21CB82674();
    v28 = v27;

    *v24 = v26;
    v24[1] = v28;
    sub_21C844998(v10, a3, type metadata accessor for PMGroupInvitationSheetContent);
    v21 = 0;
  }

  return (*(v7 + 56))(a3, v21, 1, v6);
}

uint64_t sub_21C8411EC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC00, &qword_21CBA8508);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC08, &qword_21CBA8510);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  type metadata accessor for PMSystemSettingsNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v17 = &v16[v10[21]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v16[v10[20]];
  *v18 = sub_21C8414B8;
  *(v18 + 1) = 0;
  v19 = &v16[v10[19]];
  *v19 = sub_21C844CA0;
  *(v19 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v20 = &v8[v2[21]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v8[v2[20]];
  *v21 = sub_21C8414BC;
  v21[1] = 0;
  v22 = &v8[v2[19]];
  *v22 = sub_21C8414C0;
  v22[1] = 0;
  sub_21C6EDBAC(v16, v13, &qword_27CDEDC08, &qword_21CBA8510);
  sub_21C6EDBAC(v8, v5, &qword_27CDEDC00, &qword_21CBA8508);
  v23 = v27;
  sub_21C6EDBAC(v13, v27, &qword_27CDEDC08, &qword_21CBA8510);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC10, &qword_21CBA8518);
  sub_21C6EDBAC(v5, v23 + *(v24 + 48), &qword_27CDEDC00, &qword_21CBA8508);
  sub_21C6EA794(v8, &qword_27CDEDC00, &qword_21CBA8508);
  sub_21C6EA794(v16, &qword_27CDEDC08, &qword_21CBA8510);
  sub_21C6EA794(v5, &qword_27CDEDC00, &qword_21CBA8508);
  return sub_21C6EA794(v13, &qword_27CDEDC08, &qword_21CBA8510);
}

uint64_t sub_21C8414C0@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_21C8414F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 88) = xmmword_21CBA7B60;
  *(a2 + 104) = 0;
  KeyPath = swift_getKeyPath();
  sub_21C844C40(a1, v14);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704000(KeyPath, v14[0]);

  type metadata accessor for PMTipsStore();
  sub_21C705EB0(&qword_27CDED870, type metadata accessor for PMTipsStore);
  v7 = sub_21CB82674();
  v9 = v8;

  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
  type metadata accessor for PMPasswordManagerState();
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *(a2 + 128) = sub_21CB82B84();
  *(a2 + 136) = v10;
  sub_21CB84D44();
  v11 = v14[1];
  *(a2 + 144) = v14[0];
  *(a2 + 152) = v11;
  v12 = *(type metadata accessor for PMTipView() + 44);
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C705EB0(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  return sub_21CB821F4();
}

BOOL sub_21C84170C()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = *(v7 + 16);

  if (v2)
  {
    return 1;
  }

  v3 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v4 = *(v7 + 16);

  if (v4)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v6 = *(v7 + 16);

  return v6 != 0;
}

uint64_t sub_21C841848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB70, &qword_21CBA8380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB78, &qword_21CBA8388);
  v97 = *(v11 - 8);
  v98 = v11;
  v12 = *(v97 + 64);
  MEMORY[0x28223BE20](v11);
  v94 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB80, &qword_21CBA8390);
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = *(v92 + 64);
  MEMORY[0x28223BE20](v14);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v87 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB88, &qword_21CBA8398);
  v19 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v106 = &v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB90, &qword_21CBA83A0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v101 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v100 = &v87 - v27;
  v28 = type metadata accessor for PMAccountsView();
  v108 = *(v28 - 8);
  v29 = *(v108 + 8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB98, &qword_21CBA83A8);
  v31 = *(v30 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v87 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA0, &unk_21CBA83B0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v99 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v87 - v39;
  v41 = a1;
  v42 = *(a1 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v42;
  sub_21CB81DB4();

  v43 = *(v109 + 16);

  if (v43)
  {
    type metadata accessor for PMSystemSettingsNavigationDestination();
    swift_storeEnumTagMultiPayload();
    sub_21C84467C(v41, &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsView);
    v44 = (v108[80] + 16) & ~v108[80];
    v45 = swift_allocObject();
    sub_21C844998(&v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for PMAccountsView);
    v46 = &v34[v30[19]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v47 = &v34[v30[18]];
    *v47 = sub_21C84496C;
    v47[1] = v45;
    v48 = &v34[v30[17]];
    *v48 = sub_21C8426EC;
    v48[1] = 0;
    sub_21C716934(v34, v40, &qword_27CDEDB98, &qword_21CBA83A8);
    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = v41;
  v51 = *(v31 + 56);
  v52 = 1;
  v108 = v40;
  v51(v40, v49, 1, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v53 = *(v109 + 16);

  v54 = v107;
  if (v53)
  {
    type metadata accessor for PMSystemSettingsNavigationDestination();
    v55 = v106;
    swift_storeEnumTagMultiPayload();
    v56 = v88;
    v57 = v55 + *(v88 + 76);
    *v57 = swift_getKeyPath();
    *(v57 + 8) = 0;
    v58 = (v55 + *(v56 + 72));
    *v58 = nullsub_1;
    v58[1] = 0;
    v59 = (v55 + *(v56 + 68));
    *v59 = sub_21C844CA0;
    v59[1] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
    sub_21CB85C44();
    v96 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBB0, &qword_21CBA83C0);
    sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380);
    sub_21C6EADEC(&qword_27CDEDBC0, &qword_27CDEDBB0, &qword_21CBA83C0);
    sub_21C705EB0(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup);
    v60 = v90;
    sub_21CB84FF4();
    v61 = v89;
    sub_21C6EDBAC(v55, v89, &qword_27CDEDB88, &qword_21CBA8398);
    v63 = v91;
    v62 = v92;
    v64 = *(v92 + 16);
    v65 = v93;
    v64(v91, v60, v93);
    v66 = v94;
    sub_21C6EDBAC(v61, v94, &qword_27CDEDB88, &qword_21CBA8398);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBD0, &qword_21CBA83C8);
    v64((v66 + *(v67 + 48)), v63, v65);
    v68 = *(v62 + 8);
    v68(v60, v65);
    sub_21C6EA794(v106, &qword_27CDEDB88, &qword_21CBA8398);
    v69 = v65;
    v54 = v107;
    v68(v63, v69);
    v50 = v96;
    sub_21C6EA794(v61, &qword_27CDEDB88, &qword_21CBA8398);
    v70 = v66;
    v71 = v100;
    sub_21C716934(v70, v100, &qword_27CDEDB78, &qword_21CBA8388);
    v52 = 0;
  }

  else
  {
    v71 = v100;
  }

  v72 = 1;
  (*(v97 + 56))(v71, v52, 1, v98);
  v73 = *(v50 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v74 = *(v109 + 16);

  if (v74)
  {
    v75 = sub_21CB85C44();
    v76 = v95;
    (*(*(v75 - 8) + 56))(v95, 1, 2, v75);
    type metadata accessor for PMSystemSettingsNavigationDestination();
    swift_storeEnumTagMultiPayload();
    v77 = v103;
    v78 = v76 + *(v103 + 76);
    *v78 = swift_getKeyPath();
    *(v78 + 8) = 0;
    v79 = (v76 + *(v77 + 72));
    *v79 = sub_21C842CA0;
    v79[1] = 0;
    v80 = (v76 + *(v77 + 68));
    *v80 = sub_21C842D5C;
    v80[1] = 0;
    sub_21C716934(v76, v54, &qword_27CDEDB68, &qword_21CBB8730);
    v72 = 0;
  }

  else
  {
    v77 = v103;
  }

  (*(v102 + 56))(v54, v72, 1, v77);
  v81 = v99;
  sub_21C6EDBAC(v108, v99, &qword_27CDEDBA0, &unk_21CBA83B0);
  v82 = v101;
  sub_21C6EDBAC(v71, v101, &qword_27CDEDB90, &qword_21CBA83A0);
  v83 = v104;
  sub_21C6EDBAC(v54, v104, &qword_27CDEDB70, &qword_21CBA8380);
  v84 = v105;
  sub_21C6EDBAC(v81, v105, &qword_27CDEDBA0, &unk_21CBA83B0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBD8, &qword_21CBA8418);
  sub_21C6EDBAC(v82, v84 + *(v85 + 48), &qword_27CDEDB90, &qword_21CBA83A0);
  sub_21C6EDBAC(v83, v84 + *(v85 + 64), &qword_27CDEDB70, &qword_21CBA8380);
  sub_21C6EA794(v54, &qword_27CDEDB70, &qword_21CBA8380);
  sub_21C6EA794(v71, &qword_27CDEDB90, &qword_21CBA83A0);
  sub_21C6EA794(v108, &qword_27CDEDBA0, &unk_21CBA83B0);
  sub_21C6EA794(v83, &qword_27CDEDB70, &qword_21CBA8380);
  sub_21C6EA794(v82, &qword_27CDEDB90, &qword_21CBA83A0);
  return sub_21C6EA794(v81, &qword_27CDEDBA0, &unk_21CBA83B0);
}

uint64_t sub_21C8424C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = (a1 + *(type metadata accessor for PMAccountsView() + 48));
  v13 = *v11;
  v12 = v11[1];
  v21[2] = v13;
  v21[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA40, &qword_21CBA8088);
  sub_21CB84D54();
  *a2 = v21[1];
  type metadata accessor for PMPasswordManagerState();
  sub_21C705EB0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  a2[1] = sub_21CB82B84();
  a2[2] = v14;
  v15 = type metadata accessor for PMGroupInvitationsList();
  v16 = v15[6];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  swift_storeEnumTagMultiPayload();
  v17 = v15[7];
  v18 = sub_21CB85C44();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_21C6EDBAC(v10, v7, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB84D44();
  sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
  v19 = a2 + v15[8];
  result = swift_getKeyPath();
  *v19 = result;
  v19[8] = 0;
  return result;
}

uint64_t sub_21C8426EC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v7);

  type metadata accessor for PMGroupsStore();
  sub_21C705EB0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v3 = sub_21CB82674();
  v5 = v4;

  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21C842800@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v7);

  type metadata accessor for PMAccountsState();
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v3 = sub_21CB82674();
  v5 = v4;

  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21C842914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB85C44();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  type metadata accessor for PMSystemSettingsNavigationDestination();
  swift_storeEnumTagMultiPayload();
  sub_21C84467C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSharingGroup);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21C844998(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMSharingGroup);
  sub_21C84467C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSharingGroup);
  v10 = swift_allocObject();
  sub_21C844998(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v8, type metadata accessor for PMSharingGroup);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBB0, &qword_21CBA83C0);
  v12 = a2 + v11[19];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  v14 = (a2 + v11[18]);
  *v14 = sub_21C844A00;
  v14[1] = v9;
  v15 = (a2 + v11[17]);
  *v15 = sub_21C844B80;
  v15[1] = v10;
  return result;
}

uint64_t sub_21C842B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C84467C(a1, a2, type metadata accessor for PMSharingGroup);
  v3 = type metadata accessor for PMGroupRow();
  v4 = v3[5];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a2 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v13);

  type metadata accessor for PMAccountsState();
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a2 + v3[6];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a2 + v3[7];
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_21C842CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 1, 2, v2);
  v3 = (a1 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
  *(swift_allocObject() + 16) = 0;
  result = sub_21CB84D44();
  *v3 = v5;
  v3[1] = v6;
  return result;
}

uint64_t sub_21C842D5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 1, 2, v2);
  v3 = type metadata accessor for PMRecentlyDeletedRow();
  v4 = *(v3 + 20);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v12);

  type metadata accessor for PMAccountsState();
  sub_21C705EB0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a1 + *(v3 + 24);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

BOOL sub_21C842ED4()
{
  sub_21CB85C44();
  sub_21C705EB0(&qword_27CDEAC48, MEMORY[0x277D49978]);
  return (sub_21CB85574() & 1) == 0;
}

double sub_21C842F6C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_21C842FF4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21C7FB8AC(v2, v3, v4);
  return sub_21CB81DC4();
}

uint64_t sub_21C843088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_21C6EDBAC(a1, &v13 - v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v7, v8);
    v10 = 0;
  }

  v11 = _s19IdentifiableGroupIDVMa();
  return (*(*(v11 - 8) + 56))(a2, v10, 1, v11);
}

uint64_t sub_21C8431E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA30, &qword_21CBA8078);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_21C6EA794(a2, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a1, v11, &qword_27CDEDA30, &qword_21CBA8078);
  v12 = _s19IdentifiableGroupIDVMa();
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDEDA30, &qword_21CBA8078);
    v13 = sub_21CB85C44();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  else
  {
    v14 = sub_21CB85C44();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v7, v11, v14);
    sub_21C8446E4(v11, _s19IdentifiableGroupIDVMa);
    (*(v15 + 56))(v7, 0, 1, v14);
  }

  return sub_21C716934(v7, a2, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C843494(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C843524(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

unint64_t sub_21C8435A8()
{
  result = qword_27CDED8F8;
  if (!qword_27CDED8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8F0, &qword_21CBA7C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED900, &unk_21CBA7CA0);
    sub_21C6EADEC(&qword_27CDED908, &qword_27CDED900, &unk_21CBA7CA0);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED910, &qword_27CDED918, &qword_21CBC1710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED8F8);
  }

  return result;
}

uint64_t sub_21C84370C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21C843798(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_21C6EDBAC(a1, &v14 - v9, &unk_27CDF20B0, &unk_21CBA0090);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v8, &unk_27CDF20B0, &unk_21CBA0090);
  v12 = v11;
  sub_21CB81DC4();
  return sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C843914(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21CB81DC4();
}

uint64_t sub_21C8439D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v16 - v13;
  sub_21C6EDBAC(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

unint64_t sub_21C843A80()
{
  result = qword_27CDED940;
  if (!qword_27CDED940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED898, &qword_21CBA7C28);
    sub_21C843B38();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED940);
  }

  return result;
}

unint64_t sub_21C843B38()
{
  result = qword_27CDED948;
  if (!qword_27CDED948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED930, &qword_21CBA7D28);
    sub_21C843BF0();
    sub_21C6EADEC(&qword_27CDED960, &qword_27CDED968, &unk_21CBAEC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED948);
  }

  return result;
}

unint64_t sub_21C843BF0()
{
  result = qword_27CDED950;
  if (!qword_27CDED950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED928, &unk_21CBA7CE8);
    sub_21C843CA8();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED950);
  }

  return result;
}

unint64_t sub_21C843CA8()
{
  result = qword_27CDED958;
  if (!qword_27CDED958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED920, &qword_21CBA7CB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED890, &qword_21CBA7C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8E8, &qword_21CBA7C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED888, &qword_21CBA7C18);
    sub_21C6EADEC(&qword_27CDED8E0, &qword_27CDED888, &qword_21CBA7C18);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8F0, &qword_21CBA7C98);
    sub_21C8435A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED958);
  }

  return result;
}

uint64_t sub_21C843E74(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMAccountsView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21C83EF08(a1, v4);
}

uint64_t sub_21C843EE8()
{
  v1 = *(type metadata accessor for PMAccountsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21C83F7E0();
}

uint64_t sub_21C843F44(uint64_t a1)
{
  v2 = *(*(type metadata accessor for PMAccountsView() - 8) + 80);

  return sub_21C840AF4(a1);
}

unint64_t sub_21C843FB4()
{
  result = qword_27CDED998;
  if (!qword_27CDED998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8B0, &qword_21CBA7C40);
    sub_21C84406C();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED998);
  }

  return result;
}

unint64_t sub_21C84406C()
{
  result = qword_27CDED9A0;
  if (!qword_27CDED9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8A8, &qword_21CBA7C38);
    sub_21C844124();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9A0);
  }

  return result;
}

unint64_t sub_21C844124()
{
  result = qword_27CDED9A8;
  if (!qword_27CDED9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED8A0, &qword_21CBA7C30);
    sub_21C8441B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9A8);
  }

  return result;
}

unint64_t sub_21C8441B0()
{
  result = qword_27CDED9B0;
  if (!qword_27CDED9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED988, &qword_21CBA7E40);
    sub_21C844268();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9B0);
  }

  return result;
}

unint64_t sub_21C844268()
{
  result = qword_27CDED9B8;
  if (!qword_27CDED9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED980, &qword_21CBA7DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED898, &qword_21CBA7C28);
    sub_21C843A80();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9C0, &qword_27CDED9C8, &unk_21CBA7F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9B8);
  }

  return result;
}

uint64_t sub_21C8443A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAccountsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C840DF4(a1, v6, a2);
}

uint64_t sub_21C844420()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_21C844448()
{
  result = qword_27CDED9F8;
  if (!qword_27CDED9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED9E8, &qword_21CBA7FF8);
    sub_21C705EB0(&qword_27CDEDA00, type metadata accessor for PMGroupInvitationSheetContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED9F8);
  }

  return result;
}

unint64_t sub_21C844588()
{
  result = qword_27CDEDAA0;
  if (!qword_27CDEDAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA98, &unk_21CBABCB0);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDAA0);
  }

  return result;
}

uint64_t sub_21C84467C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8446E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C8447E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C844858()
{
  result = qword_27CDEDB08;
  if (!qword_27CDEDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDB08);
  }

  return result;
}

unint64_t sub_21C8448AC()
{
  result = qword_27CDEDB10;
  if (!qword_27CDEDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDB00, &qword_21CBA8340);
    sub_21C6EADEC(&qword_27CDEDB18, &qword_27CDEDB20, &qword_21CBA8348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDB10);
  }

  return result;
}

uint64_t sub_21C844998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_165Tm()
{
  v1 = (type metadata accessor for PMSharingGroup() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = *(v0 + v3 + v1[8]);

  v8 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C844BAC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t type metadata accessor for PMAccountsViewAccountCell()
{
  result = qword_27CDEDC20;
  if (!qword_27CDEDC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C844D1C()
{
  sub_21C844DA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMAccount(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C844DA8()
{
  if (!qword_27CDEDC30)
  {
    type metadata accessor for PMAccountDetailsSheetController();
    sub_21C84544C(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController);
    v0 = sub_21CB82B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEDC30);
    }
  }
}

uint64_t sub_21C844E58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccountsViewAccountCell();
  sub_21C8453E4(v1 + *(v3 + 20), a1, type metadata accessor for PMAccount);
  v4 = (v1 + *(v3 + 24));
  v6 = *v4;
  v5 = v4[1];

  v7 = sub_21CB837E4();
  v8 = type metadata accessor for PMAccountRow();
  v9 = a1 + v8[7];
  v10 = MEMORY[0x277CE04E8];
  *(v9 + 24) = MEMORY[0x277CE04F8];
  *(v9 + 32) = v10;
  *v9 = v7;
  v11 = v8[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v13 = (a1 + v11);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v26);

  type metadata accessor for PMGroupsStore();
  sub_21C84544C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v14 = sub_21CB82674();
  v16 = v15;

  *v13 = v14;
  v13[1] = v16;
  v17 = a1 + v8[10];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a1 + v8[11];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v8[12];
  *(a1 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v20 = v8[13];
  *(a1 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v21 = v8[14];
  result = swift_getKeyPath();
  *(a1 + v21) = result;
  v23 = (a1 + v8[5]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a1 + v8[6]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a1 + v8[8]);
  *v25 = v6;
  v25[1] = v5;
  return result;
}

uint64_t sub_21C8450C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v8 = (v2 + *(v7 + 28));
  v9 = v8[1];
  *a2 = *v8;
  a2[1] = v9;
  type metadata accessor for PMSystemSettingsNavigationDestination();
  swift_storeEnumTagMultiPayload();
  sub_21C8453E4(v3, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsViewAccountCell);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_21C84529C(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21C8453E4(v3, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountsViewAccountCell);
  v12 = swift_allocObject();
  sub_21C84529C(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDC38, &qword_21CBA85C0);
  v14 = a2 + v13[19];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = (a2 + v13[18]);
  *v15 = sub_21C845300;
  v15[1] = v11;
  v16 = (a2 + v13[17]);
  *v16 = sub_21C845380;
  v16[1] = v12;
}

uint64_t sub_21C84529C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsViewAccountCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C845380@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountsViewAccountCell() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_21C844E58(a1);
}

uint64_t sub_21C8453E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C84544C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C845494()
{
  result = qword_27CDEDC40[0];
  if (!qword_27CDEDC40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDC38, &qword_21CBA85C0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDEDC40);
  }

  return result;
}

uint64_t sub_21C8454F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  v6 = *(a1 + 16);
  v7 = a1;
  v99 = a1;
  v101 = v6;
  OpaqueTypeConformance2 = v6;
  v8 = sub_21CB828F4();
  v9 = sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  *&v113 = v5;
  *(&v113 + 1) = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D837D0];
  *&v114 = v8;
  *(&v114 + 1) = v9;
  v115 = MEMORY[0x277D837E0];
  v11 = MEMORY[0x277D837E0];
  v12 = sub_21CB85004();
  v100 = *(v7 + 32);
  v120 = v100;
  v121 = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0);
  WitnessTable = swift_getWitnessTable();
  *&v113 = v10;
  *(&v113 + 1) = v12;
  v13 = v10;
  *&v114 = v11;
  *(&v114 + 1) = swift_getWitnessTable();
  sub_21CB83F44();
  v88 = *(&v101 + 1);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  v14 = sub_21CB84B94();
  v84 = *(v14 - 8);
  v15 = *(v84 + 8);
  MEMORY[0x28223BE20](v14);
  v82 = v77 - v16;
  v17 = sub_21CB828F4();
  v81 = v17;
  v85 = *(v17 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x28223BE20](v17);
  v79 = v77 - v19;
  v118 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v83 = v20;
  v21 = sub_21C72EC3C();
  v116 = v20;
  v117 = v21;
  v80 = swift_getWitnessTable();
  *&v113 = v17;
  *(&v113 + 1) = v13;
  *&v114 = v80;
  *(&v114 + 1) = MEMORY[0x277D837E0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v98 = v77 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCD8, &unk_21CBB0390);
  v87 = OpaqueTypeMetadata2;
  v25 = sub_21CB828F4();
  v92 = *(v25 - 8);
  v26 = *(v92 + 64);
  MEMORY[0x28223BE20](v25);
  v89 = v77 - v27;
  v93 = v28;
  v29 = sub_21CB828F4();
  v94 = *(v29 - 8);
  v95 = v29;
  v30 = *(v94 + 64);
  MEMORY[0x28223BE20](v29);
  v90 = v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v91 = v77 - v33;
  v102 = v101;
  v34 = v99;
  v35 = v100;
  v36 = *(v99 + 40);
  v103 = v100;
  v104 = v36;
  v105 = v3;
  sub_21CB84B84();
  v37 = *(v3 + 8);
  v78 = *v3;
  v77[1] = v37;
  v77[2] = type metadata accessor for PMAccountsListModel(0);
  v77[0] = sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  v125 = v122;
  v126 = v123;
  v127 = v124;
  v38 = swift_allocObject();
  *(v38 + 16) = v101;
  *(v38 + 32) = v35;
  *(v38 + 40) = v36;
  v39 = *(v3 + 48);
  *(v38 + 80) = *(v3 + 32);
  *(v38 + 96) = v39;
  *(v38 + 112) = *(v3 + 64);
  v40 = *(v3 + 16);
  *(v38 + 48) = *v3;
  *(v38 + 64) = v40;
  v41 = *(v34 - 8);
  v42 = *(v41 + 16);
  v43 = v41 + 16;
  v44 = v34;
  v42(&v113, v3, v34);
  v45 = v79;
  v46 = v82;
  sub_21C80D0D4(&v125, &unk_21CBA8830, v38, v14, v83);
  v47 = v44;

  v128 = v125;
  sub_21C7509C4(&v128);

  v129 = v126;
  v130 = v127;
  sub_21C847CDC(&v129);
  (*(v84 + 1))(v46, v14);
  v48 = swift_allocObject();
  *(v48 + 16) = v101;
  *(v48 + 32) = v100;
  *(v48 + 40) = v36;
  v82 = v36;
  v83 = v43;
  v50 = v80;
  v49 = v81;
  v51 = *(v3 + 48);
  *(v48 + 80) = *(v3 + 32);
  *(v48 + 96) = v51;
  *(v48 + 112) = *(v3 + 64);
  v52 = *(v3 + 16);
  *(v48 + 48) = *v3;
  *(v48 + 64) = v52;
  v84 = v42;
  v42(&v113, v3, v47);
  sub_21CB84214();

  (*(v85 + 8))(v45, v49);
  v53 = v78;
  sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  v122 = v113;
  v123 = v114;
  v124 = v115;
  if (v53)
  {
    v54 = v100;
    v55 = v82;
    v56 = sub_21C847480(v3, OpaqueTypeConformance2, v88, v100, v82);
    v58 = v57;

    *&v110 = v49;
    *(&v110 + 1) = MEMORY[0x277D837D0];
    v111 = v50;
    v112 = MEMORY[0x277D837E0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v89;
    v60 = v56;
    v61 = v87;
    v62 = v98;
    sub_21C807C3C(&v122, sub_21C847D90, v53, v60, v58, v87, v89, OpaqueTypeConformance2);

    v131[0] = v122;
    sub_21C7509C4(v131);

    v110 = v123;
    v111 = v124;
    sub_21C847CDC(&v110);
    (*(v86 + 8))(v62, v61);
    v63 = swift_allocObject();
    *&v64 = v54;
    *(&v64 + 1) = v55;
    *(v63 + 32) = v64;
    *(v63 + 16) = v101;
    v65 = *(v3 + 48);
    *(v63 + 80) = *(v3 + 32);
    *(v63 + 96) = v65;
    *(v63 + 112) = *(v3 + 64);
    v66 = *(v3 + 16);
    *(v63 + 48) = *v3;
    *(v63 + 64) = v66;
    v84(&v113, v3, v99);
    v67 = sub_21C6EADEC(&qword_27CDEDCE0, &qword_27CDEDCD8, &unk_21CBB0390);
    v108 = OpaqueTypeConformance2;
    v109 = v67;
    v68 = v93;
    v69 = swift_getWitnessTable();
    v70 = v90;
    sub_21CA50200(sub_21C847D94, v63, v68);

    (*(v92 + 8))(v59, v68);
    v71 = sub_21C847DA4();
    v106 = v69;
    v107 = v71;
    v72 = v95;
    v73 = swift_getWitnessTable();
    v74 = v91;
    sub_21C72BE10(v70, v72, v73);
    v75 = *(v94 + 8);
    v75(v70, v72);
    sub_21C72BE10(v74, v72, v73);
    return (v75)(v74, v72);
  }

  else
  {
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C846008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v50 = a2;
  v51 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  sub_21CB828F4();
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  v10 = MEMORY[0x277D837D0];
  v64 = MEMORY[0x277D837E0];
  v11 = MEMORY[0x277D837E0];
  v47 = sub_21CB85004();
  v59[3] = a4;
  v59[4] = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0);
  v59[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v60 = v10;
  v61 = v47;
  v62 = v11;
  v63 = WitnessTable;
  v12 = sub_21CB83F44();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v43 = &v40 - v17;
  v41 = *(a3 - 8);
  v18 = v41;
  v19 = *(v41 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v42 = &v40 - v25;
  v26 = a1[8];
  (a1[7])(v24);
  v27 = a3;
  sub_21C72BE10(v22, a3, a5);
  v28 = *(v18 + 8);
  v45 = v18 + 8;
  v46 = v28;
  v28(v22, a3);
  v29 = a1;
  v30 = *a1;
  v31 = a1[1];
  v32 = v29;
  type metadata accessor for PMAccountsListModel(0);
  sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  v52 = v50;
  v53 = a3;
  v54 = v49;
  v55 = a5;
  v40 = a5;
  v56 = v32;
  sub_21CB83F14();
  v33 = swift_getWitnessTable();
  v34 = v43;
  sub_21C72BE10(v15, v12, v33);
  v35 = v48;
  v36 = *(v48 + 8);
  v36(v15, v12);
  v37 = v42;
  (*(v41 + 16))(v22, v42, v27);
  v60 = v22;
  (*(v35 + 16))(v15, v34, v12);
  v61 = v15;
  v59[0] = v27;
  v59[1] = v12;
  v57 = v40;
  v58 = v33;
  sub_21C74A55C(&v60, 2uLL, v59);
  v36(v34, v12);
  v38 = v46;
  v46(v37, v27);
  v36(v15, v12);
  return v38(v22, v27);
}

uint64_t sub_21C846578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  v28 = sub_21CB828F4();
  v29 = sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730);
  v35 = v30;
  v36 = MEMORY[0x277D837D0];
  v37 = v28;
  v38 = v29;
  v39 = MEMORY[0x277D837E0];
  v11 = sub_21CB85004();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v40 = *(a1 + 32);
  v41 = v40;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v20 = *(a1 + 48);
  *(v19 + 80) = *(a1 + 32);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a1 + 64);
  v21 = *(a1 + 16);
  *(v19 + 48) = *a1;
  *(v19 + 64) = v21;
  sub_21C847FA4(&v41, &v35);
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v22 = type metadata accessor for PMAccountsViewAccountsSection();
  (*(*(v22 - 8) + 16))(&v35, a1, v22);
  v23 = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0);
  v33 = a4;
  v34 = v23;
  WitnessTable = swift_getWitnessTable();
  sub_21C7134A8(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21CB84FF4();
  v32 = WitnessTable;
  v25 = swift_getWitnessTable();
  sub_21C72BE10(v15, v11, v25);
  v26 = *(v12 + 8);
  v26(v15, v11);
  sub_21C72BE10(v18, v11, v25);
  return (v26)(v18, v11);
}

uint64_t sub_21C8468E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a5;
  v35 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDCC8, &unk_21CBA87F0);
  v16 = sub_21CB828F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v34 - v23;
  v25 = *(a2 + 40);
  v26 = *(a2 + 48);
  v25(a1, v22);
  v27 = type metadata accessor for PMAccount(0);
  sub_21C80EABC(a1 + *(v27 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7190C0(v10, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v28 = *v10;
    [*v10 canUserEditSavedAccount];
  }

  v29 = v36;
  sub_21CB84284();
  (*(v11 + 8))(v15, a3);
  v30 = sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0);
  v38 = v29;
  v39 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v20, v16, WitnessTable);
  v32 = *(v17 + 8);
  v32(v20, v16);
  sub_21C72BE10(v24, v16, WitnessTable);
  return (v32)(v24, v16);
}

uint64_t sub_21C846C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = sub_21CB858B4();
  v6[23] = sub_21CB858A4();
  v9 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C846CF8, v9, v8);
}

uint64_t sub_21C846CF8()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];

  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v0[11] = v8;
  v0[12] = v6;
  v0[13] = v5;
  v0[14] = v4;
  v11 = type metadata accessor for PMAccountsViewAccountsSection();
  (*(*(v11 - 8) + 16))(v0 + 2, v7, v11);

  v12 = sub_21CB858A4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v8;
  *(v13 + 40) = v6;
  *(v13 + 48) = v5;
  *(v13 + 56) = v4;
  *(v13 + 64) = *v7;
  v15 = *(v7 + 16);
  v16 = *(v7 + 48);
  v17 = *(v7 + 64);
  *(v13 + 96) = *(v7 + 32);
  *(v13 + 112) = v16;
  *(v13 + 80) = v15;
  *(v13 + 128) = v17;
  *(v13 + 136) = v9;
  sub_21C98B308(0, 0, v3, &unk_21CBA8900, v13);

  v18 = swift_task_alloc();
  v18[2] = v8;
  v18[3] = v6;
  v18[4] = v5;
  v18[5] = v4;
  v18[6] = v7;
  sub_21CB85254();
  sub_21CB82524();

  v19 = v0[1];

  return v19();
}

uint64_t sub_21C846EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21CB858B4();
  v5[4] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21C846F98, v7, v6);
}

uint64_t sub_21C846F98()
{
  v1 = v0[2];
  v2 = *v1;
  v0[7] = *v1;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_21C8470BC;
    v4 = v0[3];

    return sub_21C818D98(v4);
  }

  else
  {
    v6 = v1[1];
    type metadata accessor for PMAccountsListModel(0);
    sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);

    return sub_21CB82B64();
  }
}

uint64_t sub_21C8470BC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21C7EF5D4, v5, v4);
}

uint64_t sub_21C847200(void *a1)
{
  v2 = sub_21CB85114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v8;
  if (*a1)
  {
    (*(v3 + 104))(&v13 - v8, *MEMORY[0x277CDF0D8], v2, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v6, v10, v2);

    sub_21CB81DC4();
    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    v12 = a1[1];
    type metadata accessor for PMAccountsListModel(0);
    sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C8473DC(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = -1 << *(result + 32);
    v2 = result;
    v3 = sub_21CB85F24();
    sub_21CAA206C(v3, *(v2 + 36), 0, v2);

    sub_21C847560();
  }

  return result;
}

uint64_t (*sub_21C847480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 48);
  *(v10 + 80) = *(a1 + 32);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v12;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for PMAccountsViewAccountsSection();
  (*(*(v13 - 8) + 16))(v15, a1, v13);
  return sub_21C847DF8;
}

uint64_t sub_21C847560()
{
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_21CB81DC4();
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for PMAccountDetailsSheetController();
    sub_21C7134A8(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C847648(uint64_t *a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_21CB81DB4();

    v12 = sub_21C818A9C(v27);

    v13 = *(v12 + 16);

    if (!v13)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    a1 = sub_21C818A9C(v27);
    v26 = v11;

    v14 = a1[2];
    if (!v14)
    {
LABEL_11:

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v18 = sub_21C818A9C(v27);

      v19 = sub_21C87E898(v18);
      v21 = v20;
      v23 = v22;
      swift_getKeyPath();
      swift_getKeyPath();
      v27 = v19;
      v28 = v21;
      v29 = v23;
      return sub_21CB81DC4();
    }

    v15 = 0;
    while (v15 < a1[2])
    {
      sub_21C80EABC(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, type metadata accessor for PMAccount);
      sub_21C80EABC(&v10[*(v6 + 24)], v5, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v5, type metadata accessor for PMAccount.Storage);
        sub_21C7190C0(v10, type metadata accessor for PMAccount);
      }

      else
      {
        v16 = *v5;
        v17 = [*v5 canUserEditSavedAccount];

        sub_21C7190C0(v10, type metadata accessor for PMAccount);
        if ((v17 & 1) == 0)
        {
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  v25 = a1[1];
  type metadata accessor for PMAccountsListModel(0);
  sub_21C7134A8(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C847A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 8);
  v4 = *v2;
  v5 = v2[1];
  return sub_21C8454F8(a1, a2);
}

uint64_t sub_21C847AD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C847B10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C847B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C847BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21C847C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C846C1C(a1, (v1 + 6), v4, v5, v6, v7);
}

uint64_t sub_21C847CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C847D44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  type metadata accessor for PMAccountsViewAccountsSection();
  return sub_21C8473DC(a1);
}

uint64_t sub_21C847D94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_21C847648(v0 + 6);
}

unint64_t sub_21C847DA4()
{
  result = qword_27CDEDCE8;
  if (!qword_27CDEDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDCE8);
  }

  return result;
}

uint64_t sub_21C847DF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  type metadata accessor for PMAccountsViewAccountsSection();
  return sub_21C847560();
}

uint64_t sub_21C847E54(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21C6F35D0;

  return sub_21C846EFC(a1, v8, v9, (v1 + 8), v10);
}

uint64_t sub_21C847F40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_21C847200(*(v0 + 48));
}

uint64_t sub_21C847F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  return sub_21C8468E8(a1, (v2 + 6), v2[2], v2[4], a2);
}

uint64_t sub_21C847FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C848014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v70 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v55 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD78, &qword_21CBA89E8);
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v55 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD80, &unk_21CBA89F0);
  v57 = *(v58 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v55 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v74 = *(v55 - 8);
  v11 = v74[8];
  MEMORY[0x28223BE20](v55);
  v13 = &v55 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD88, &qword_21CBA8A00);
  v63 = *(v73 - 8);
  v14 = v63;
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v73);
  v17 = &v55 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v18 = *(*(v66 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v66);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v21;
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  v24 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__groupID;
  v60 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__groupID;
  v25 = sub_21CB85C44();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v61 = v23;
  sub_21C6EDBAC(v23, v21, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB81D74();
  sub_21C6EA794(v23, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v14 + 32))(v3 + v24, v17, v73);
  v26 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__usernameInput;
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v27 = v74[4];
  v28 = v55;
  v27(v3 + v26, v13, v55);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__passwordInput;
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v27(v3 + v29, v13, v28);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__notesInput;
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v27(v3 + v30, v13, v28);
  v31 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__titleInput;
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  v27(v3 + v31, v13, v28);
  v32 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__canSaveUserAlertConfiguration;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD58, &unk_21CBA8970);
  v33 = v56;
  sub_21CB81D74();
  (*(v57 + 32))(v3 + v32, v33, v58);
  v34 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__userNameSuggestions;
  *&v77 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBED0, &unk_21CBA1A60);
  v35 = v59;
  sub_21CB81D74();
  (*(v62 + 32))(v3 + v34, v35, v64);
  v36 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountWasSubmitted;
  LOBYTE(v77) = 0;
  v37 = v67;
  sub_21CB81D74();
  (*(v68 + 32))(v3 + v36, v37, v69);
  v38 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountsState;
  *(v3 + v38) = swift_getKeyPath();
  v39 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_bundleIDForFallbackIcon);
  *v39 = 0;
  v39[1] = 0;
  v40 = v70;
  sub_21C84ABC4(v70, v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration, type metadata accessor for PMAddAccountModel.Configuration);
  v42 = *v40;
  v41 = v40[1];
  swift_beginAccess();
  v43 = v74[1];

  v43(v3 + v31, v28);
  v75 = v42;
  v76 = v41;
  sub_21CB81D74();
  swift_endAccess();
  v45 = v40[2];
  v44 = v40[3];
  swift_beginAccess();

  v43(v3 + v29, v28);
  v75 = v45;
  v76 = v44;
  sub_21CB81D74();
  swift_endAccess();
  v46 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v47 = (v40 + *(v46 + 28));
  v48 = v47[1];
  v49 = v39[1];
  *v39 = *v47;
  v39[1] = v48;

  v50 = v61;
  sub_21C6EDBAC(v40 + *(v46 + 24), v61, &unk_27CDF20B0, &unk_21CBA0090);
  v51 = v60;
  swift_beginAccess();
  (*(v63 + 8))(v3 + v51, v73);
  sub_21C6EDBAC(v50, v65, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CB81D74();
  sub_21C6EA794(v50, &unk_27CDF20B0, &unk_21CBA0090);
  swift_endAccess();
  sub_21C84AC2C(v40, type metadata accessor for PMAddAccountModel.Configuration);
  v52 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion);
  v53 = v72;
  *v52 = v71;
  v52[1] = v53;
  return v3;
}

uint64_t sub_21C848830@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v12 = *(v11 + 24);
  v13 = sub_21CB85C44();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = &a2[*(v11 + 28)];
  v15 = type metadata accessor for PMGeneratedPassword(0);
  *v14 = 0;
  *(v14 + 1) = 0;
  v16 = *(v15 + 20);
  sub_21C84ABC4(a1 + v16, v10, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v10;
  if (EnumCaseMultiPayload == 1)
  {
    v19 = *(v10 + 2);

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v21 = sub_21CB80DD4();
    (*(*(v21 - 8) + 8))(&v10[v20], v21);
LABEL_4:
    v23 = [v18 host];

    v22 = sub_21CB855C4();
    v25 = v24;

    goto LABEL_5;
  }

  v22 = [*v10 protectionSpace];

  v18 = v22;
  if (v22)
  {
    goto LABEL_4;
  }

  v25 = 0xE000000000000000;
LABEL_5:
  *a2 = v22;
  *(a2 + 1) = v25;
  sub_21C84ABC4(a1 + v16, v7, type metadata accessor for PMGeneratedPassword.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C84AC2C(a1, type metadata accessor for PMGeneratedPassword);

    v26 = *(v7 + 1);
    v27 = *(v7 + 2);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v29 = sub_21CB80DD4();
    result = (*(*(v29 - 8) + 8))(&v7[v28], v29);
  }

  else
  {
    v31 = *v7;
    v32 = [v31 password];
    v26 = sub_21CB855C4();
    v27 = v33;

    result = sub_21C84AC2C(a1, type metadata accessor for PMGeneratedPassword);
  }

  *(a2 + 2) = v26;
  *(a2 + 3) = v27;
  return result;
}

uint64_t sub_21C848B44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21C848BBC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21C848C38(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(a1, &v13 - v9, &unk_27CDF20B0, &unk_21CBA0090);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v7, &unk_27CDF20B0, &unk_21CBA0090);

  sub_21CB81DC4();
  return sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C848D68()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21C848E14();
}

uint64_t sub_21C848E14()
{
  v1[19] = v0;
  sub_21CB858B4();
  v1[20] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_21C848EAC, v3, v2);
}

uint64_t sub_21C848EAC()
{
  v1 = v0[19];
  v2 = [objc_opt_self() sharedProvider];
  v0[23] = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = v0[10];
  v4 = v0[11];
  v5 = sub_21CB85584();
  v0[24] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C84906C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD90, &qword_21CBA8BD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C84A858;
  v0[13] = &block_descriptor_5;
  v0[14] = v6;
  [v2 suggestedUsersOfType:0 matchingText:v5 limit:3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C84906C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C849174, v2, v1);
}

uint64_t sub_21C849174()
{
  v1 = v0[24];
  v2 = v0[20];

  v3 = v0[18];

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v4 = sub_21CB85FA4();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF15BD0](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ([v8 usageFrequency] > 3)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v10 = v6;
    v11 = [v9 value];
    v12 = sub_21CB855C4();
    v22 = v13;
    v23 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_21CA4F2EC(0, *(v10 + 2) + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    v16 = v10;
    if (v15 >= v14 >> 1)
    {
      v16 = sub_21CA4F2EC((v14 > 1), v15 + 1, 1, v10);
    }

    *(v16 + 2) = v15 + 1;
    v17 = &v16[16 * v15];
    v6 = v16;
    *(v17 + 4) = v23;
    *(v17 + 5) = v22;
  }

  while (v5 != v4);
LABEL_23:
  v18 = v0[23];
  v19 = v0[19];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[10] = v6;

  sub_21CB81DC4();

  v20 = v0[1];

  return v20();
}

uint64_t sub_21C8493C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v15[0] = a1;
  v15[1] = a2;

  sub_21CB81DC4();
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21CB858B4();

  v11 = sub_21CB858A4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v3;
  sub_21C98B308(0, 0, v9, &unk_21CBA8BC0, v12);
}

uint64_t sub_21C84957C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

double sub_21C8495E8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21C84966C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C8496E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C849754()
{
  v1[13] = v0;
  v2 = *(*(type metadata accessor for PMSaveAccountRequest() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = sub_21CB858B4();
  v1[17] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_21C849828, v4, v3);
}

uint64_t sub_21C849828()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountsState;
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
    v16 = v0[13];
  }

  v5 = v0[15];
  sub_21CB86544();
  v6 = sub_21C7072A8(v3, v0[9]);

  sub_21C84A088(v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = v0[15];
    v8 = *(v6 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v7, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  sub_21C84AC2C(v0[15], type metadata accessor for PMSaveAccountRequest);
  v13 = *(v1 + v2);

  sub_21CB86544();
  v0[20] = sub_21C7072A8(v13, v0[12]);

  sub_21C84A088(v11);
  v0[21] = sub_21CB858A4();
  v15 = sub_21CB85874();
  v0[22] = v15;
  v0[23] = v14;

  return MEMORY[0x2822009F8](sub_21C849C78, v15, v14);
}

uint64_t sub_21C849C78()
{
  v1 = v0[20];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v3 = *(v0[20] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_21C849E1C;
    v8 = v0[14];

    return v14(v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[20];
    v10 = v0[21];

    sub_21C84AC2C(v0[14], type metadata accessor for PMSaveAccountRequest);
    v12 = v0[18];
    v13 = v0[19];

    return MEMORY[0x2822009F8](sub_21C849FE8, v12, v13);
  }
}

uint64_t sub_21C849E1C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_21C849F60, v5, v4);
}

uint64_t sub_21C849F60()
{
  v2 = v0[20];
  v1 = v0[21];

  sub_21C84AC2C(v0[14], type metadata accessor for PMSaveAccountRequest);
  v3 = v0[18];
  v4 = v0[19];

  return MEMORY[0x2822009F8](sub_21C849FE8, v3, v4);
}

uint64_t sub_21C849FE8()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion);
  v6 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion + 8);
  v5(1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21C84A088@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = sub_21CB85584();

  v3 = [v2 safari_stringByTrimmingWhitespace];

  v4 = v3;
  if (!v3)
  {
    sub_21CB855C4();
    v4 = sub_21CB85584();
  }

  v5 = sub_21CB855C4();
  v7 = v6;
  v8 = [objc_opt_self() userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount_];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE000000000000000;
  if (v8)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v7;
  }

  v17 = v11;
  v18 = v9;
  if (v8)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v10 = v7;
  }

  v15 = v10;
  v16 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  v13 = a1 + *(type metadata accessor for PMSaveAccountRequest() + 36);
  sub_21CB81DB4();

  *a1 = v19;
  a1[1] = v20;
  a1[2] = v19;
  a1[3] = v20;
  a1[4] = v16;
  a1[5] = v15;
  a1[6] = v19;
  a1[7] = v20;
  a1[8] = v18;
  a1[9] = v17;
  return result;
}

uint64_t sub_21C84A308()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = sub_21CB85584();

  v11 = [v10 safari_bestURLForUserTypedString];

  if (v11)
  {
    sub_21CB80B94();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_21CB80BE4();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v6, v12, 1, v13);
  sub_21C79C3F4(v6, v9);
  sub_21C6EDBAC(v9, v3, &qword_27CDEC300, &qword_21CBA3ED0);
  if ((*(v14 + 48))(v3, 1, v13) == 1)
  {
    sub_21C6EA794(v3, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    v15 = sub_21CB80BB4();
    v17 = v16;
    (*(v14 + 8))(v3, v13);
    if (v17)
    {
      sub_21C6EA794(v9, &qword_27CDEC300, &qword_21CBA3ED0);
      return v15;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C6EA794(v9, &qword_27CDEC300, &qword_21CBA3ED0);

  return v19;
}

BOOL sub_21C84A604()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v1 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v1 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (v8 == *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration) && v9 == *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration + 8))
    {
    }

    else
    {
      v3 = sub_21CB86344();

      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v4 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v4 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v5 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v5 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v7 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v7 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t sub_21C84A858(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_21C6E8F4C(0, &qword_27CDF4D80, 0x277D49E00);
  **(*(v1 + 64) + 40) = sub_21CB85824();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_21C84A8DC()
{
  sub_21C84AC2C(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_configuration, type metadata accessor for PMAddAccountModel.Configuration);
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion + 8);

  v2 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__groupID;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD88, &qword_21CBA8A00);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__usernameInput;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__passwordInput, v5);
  v6(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__notesInput, v5);
  v6(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__titleInput, v5);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__canSaveUserAlertConfiguration;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD80, &unk_21CBA89F0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__userNameSuggestions;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDD78, &qword_21CBA89E8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountWasSubmitted;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel__accountsState);

  v14 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_bundleIDForFallbackIcon + 8);

  return v0;
}

uint64_t sub_21C84AB3C()
{
  sub_21C84A8DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C84ABC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C84AC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C84ACA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C8493C8(v2, v3);
}

uint64_t sub_21C84ACF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21C84AD70(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C84ADF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C84AE74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C84AEF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21C702EFC;

  return sub_21C848D68();
}

uint64_t type metadata accessor for PMWiFiNetworkRow()
{
  result = qword_27CDEDD98;
  if (!qword_27CDEDD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C84B018()
{
  type metadata accessor for PMWiFiNetwork();
  if (v0 <= 0x3F)
  {
    sub_21C72C81C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C84B0D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v34 = sub_21CB83A34();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccountRowLabelStyle();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDA8, &qword_21CBA8D48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDB0, &qword_21CBA8D50);
  v29 = *(v30 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v30);
  v27 = &v27 - v15;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDB8, &qword_21CBA8D58);
  v16 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v18 = &v27 - v17;
  v36 = v2;
  v35 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDC0, &qword_21CBA8D60);
  type metadata accessor for PMWiFiIcon();
  sub_21C6EADEC(&qword_27CDEDDC8, &qword_27CDEDDC0, &qword_21CBA8D60);
  sub_21C84BD8C(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon);
  sub_21CB84C84();
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v19 = *(v5 + 20);
  *(v8 + v19) = sub_21CB83074();
  sub_21C6EADEC(&qword_27CDEDDD8, &qword_27CDEDDA8, &qword_21CBA8D48);
  sub_21C84BD8C(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle);
  v20 = v27;
  sub_21CB840E4();
  sub_21C84BDD4(v8);
  (*(v10 + 8))(v13, v9);
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v29 + 32))(v18, v20, v30);
  v21 = &v18[*(v28 + 36)];
  v22 = v42;
  *(v21 + 4) = v41;
  *(v21 + 5) = v22;
  *(v21 + 6) = v43;
  v23 = v38;
  *v21 = v37;
  *(v21 + 1) = v23;
  v24 = v40;
  *(v21 + 2) = v39;
  *(v21 + 3) = v24;
  v25 = v31;
  sub_21CB83A24();
  sub_21C84BE30();
  sub_21CB844F4();
  (*(v32 + 8))(v25, v34);
  return sub_21C75EEC8(v18);
}

uint64_t sub_21C84B658@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDE8, &qword_21CBA8DD8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDDF0, &qword_21CBA8DE0);
  sub_21C6EADEC(&qword_27CDEDDF8, &qword_27CDEDDF0, &qword_21CBA8DE0);
  return sub_21CB81FC4();
}

uint64_t sub_21C84B730@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v50 = sub_21CB82834();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v50);
  v6 = &object - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE00, &qword_21CBA8DE8);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = v52[8];
  MEMORY[0x28223BE20](v7);
  v51 = &object - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &object - v11;
  v12 = *(a1 + 24);
  object = *(a1 + 16);
  v13 = type metadata accessor for PMWiFiNetworkRow();
  v14 = *(v13 + 20);
  v15 = v13;
  countAndFlagsBits = v13;
  v16 = (a1 + v14);
  v17 = v16[1];
  v47 = *v16;
  v18 = v47;
  sub_21C805AD8();
  v19 = v17;
  v46 = v17;
  swift_bridgeObjectRetain_n();

  v20 = sub_21CB83314();
  v45 = *(v15 + 28);
  sub_21C7448E0(v6);
  v21 = sub_21CB82824();
  v44 = *(v3 + 8);
  v44(v6, v50);
  KeyPath = swift_getKeyPath();
  v66 = v21 & 1;
  *&v58 = object;
  *(&v58 + 1) = v12;
  *&v59 = v18;
  *(&v59 + 1) = v19;
  *&v60 = 4;
  *(&v60 + 1) = v20;
  *&v61 = sub_21C7902AC;
  *(&v61 + 1) = 0;
  *&v62 = KeyPath;
  *(&v62 + 1) = (v21 & 1) == 0;
  v63 = v21 & 1;
  sub_21CB85184();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE08, &qword_21CBA8E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE10, &qword_21CBA8E28);
  v24 = sub_21C84BFE8();
  *&v64[0] = v23;
  *(&v64[0] + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v49;
  sub_21CB84974();
  v64[2] = v60;
  v64[3] = v61;
  v64[4] = v62;
  v65 = v63;
  v64[0] = v58;
  v64[1] = v59;
  sub_21C6EA794(v64, &qword_27CDEDE08, &qword_21CBA8E20);
  v26 = PMWiFiNetwork.userVisibleType(isActive:)(*(a1 + *(countAndFlagsBits + 24)));
  object = v26._object;
  countAndFlagsBits = v26._countAndFlagsBits;
  sub_21C7448E0(v6);
  LOBYTE(v23) = sub_21CB82824();
  v44(v6, v50);
  v27 = (v23 & 1) == 0;
  v28 = swift_getKeyPath();
  v50 = v28;
  LOBYTE(v23) = v23 & 1;
  v57 = v23;
  v29 = v51;
  v30 = v52[2];
  v31 = v53;
  v30(v51, v25, v53);
  v32 = v48;
  v30(v48, v29, v31);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE30, &qword_21CBA8E40) + 48)];
  v34 = object;
  v35 = countAndFlagsBits;
  *&v54 = countAndFlagsBits;
  *(&v54 + 1) = object;
  v37 = v46;
  v36 = v47;
  *&v55 = v47;
  *(&v55 + 1) = v46;
  *&v56[0] = 4;
  *(&v56[0] + 1) = v28;
  *&v56[1] = v27;
  BYTE8(v56[1]) = v23;
  LOBYTE(v28) = v23;
  v38 = v55;
  *v33 = v54;
  *(v33 + 1) = v38;
  *(v33 + 2) = v56[0];
  *(v33 + 41) = *(v56 + 9);
  sub_21C84C12C(&v54, &v58);
  v39 = v53;
  v40 = v52[1];
  v40(v49, v53);
  *&v58 = v35;
  *(&v58 + 1) = v34;
  *&v59 = v36;
  *(&v59 + 1) = v37;
  *&v60 = 4;
  *(&v60 + 1) = v50;
  *&v61 = v27;
  BYTE8(v61) = v28;
  sub_21C6EA794(&v58, &qword_27CDEDE38, &qword_21CBA8E48);
  return (v40)(v51, v39);
}

uint64_t sub_21C84BBF0(__int128 *a1)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 80);
  v2 = *a1;
  v3 = a1[1];
  sub_21CB83E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE08, &qword_21CBA8E20);
  sub_21C84BFE8();
  return sub_21CB840D4();
}

uint64_t sub_21C84BC80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PMWiFiIcon();
  v5 = v4[5];
  sub_21C84BF7C(a1, &a2[v5]);
  v6 = type metadata accessor for PMWiFiNetwork();
  (*(*(v6 - 8) + 56))(&a2[v5], 0, 1, v6);
  v7 = *(a1 + *(type metadata accessor for PMWiFiNetworkRow() + 24));
  *a2 = xmmword_21CBA8CC0;
  *(a2 + 1) = xmmword_21CBA8CD0;
  a2[v4[6]] = v7;
  v8 = v4[7];
  *&a2[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21C84BD8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C84BDD4(uint64_t a1)
{
  v2 = type metadata accessor for PMAccountRowLabelStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C84BE30()
{
  result = qword_27CDEDDE0;
  if (!qword_27CDEDDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDDB8, &qword_21CBA8D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDDA8, &qword_21CBA8D48);
    type metadata accessor for PMAccountRowLabelStyle();
    sub_21C6EADEC(&qword_27CDEDDD8, &qword_27CDEDDA8, &qword_21CBA8D48);
    sub_21C84BD8C(&qword_27CDEC650, type metadata accessor for PMAccountRowLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDDE0);
  }

  return result;
}

uint64_t sub_21C84BF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C84BFE8()
{
  result = qword_27CDEDE18;
  if (!qword_27CDEDE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE08, &qword_21CBA8E20);
    sub_21C84C0A0();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE18);
  }

  return result;
}

unint64_t sub_21C84C0A0()
{
  result = qword_27CDEDE20;
  if (!qword_27CDEDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE28, &unk_21CBA8E30);
    sub_21C805EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE20);
  }

  return result;
}

uint64_t sub_21C84C12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE38, &qword_21CBA8E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C84C19C()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI35PMGlobalAnimationNamespaceContainer___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGlobalAnimationNamespaceContainer()
{
  result = qword_27CDEDE48;
  if (!qword_27CDEDE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C84C28C()
{
  result = sub_21CB81114();
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

uint64_t sub_21C84C3A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

double sub_21C84C440@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v124 = a2;
  *&v121 = sub_21CB82704();
  *&v120 = *(v121 - 8);
  v3 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAddAccountView();
  v118 = *(v5 - 8);
  v6 = *(v118 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = v7;
  v123 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21CB829D4();
  v115 = *(v114 - 8);
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  v110 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_21CB81024();
  v101 = *(v103 - 8);
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v92 - v14;
  v15 = sub_21CB82FD4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEE8, &qword_21CBA8FD8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEE0, &qword_21CBA8FD0);
  v98 = *(v96 - 8);
  v25 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  v27 = &v92 - v26;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDED8, &qword_21CBA8FC8);
  v100 = *(v99 - 8);
  v28 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  v30 = &v92 - v29;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDED0, &qword_21CBA8FC0);
  v104 = *(v102 - 8);
  v31 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  v94 = &v92 - v32;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEC0, &qword_21CBA8FB0);
  v106 = *(v105 - 8);
  v33 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  v95 = &v92 - v34;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF08, &qword_21CBA8FE0);
  v108 = *(v109 - 8);
  v35 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v97 = &v92 - v36;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEB8, &qword_21CBA8FA8);
  v37 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v111 = &v92 - v38;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEA0, &qword_21CBA8FA0);
  v39 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v113 = &v92 - v40;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF10, &qword_21CBA8FE8);
  v116 = *(v117 - 8);
  v41 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v125 = &v92 - v42;
  v127 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF18, &qword_21CBA8FF0);
  sub_21C852918();
  sub_21CB83EF4();
  (*(v16 + 104))(v19, *MEMORY[0x277CDDDC0], v15);
  v43 = sub_21C6EADEC(&qword_27CDEDEF0, &qword_27CDEDEE8, &qword_21CBA8FD8);
  sub_21CB84684();
  (*(v16 + 8))(v19, v15);
  (*(v21 + 8))(v24, v20);
  v44 = v93;
  sub_21CB81014();
  sub_21CB81014();
  v45 = sub_21CB80FF4();
  v47 = v46;
  v48 = *(v101 + 8);
  v49 = v12;
  v50 = v103;
  v48(v49, v103);
  v48(v44, v50);
  *&v133 = v45;
  *(&v133 + 1) = v47;
  v128 = v20;
  v129 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_21C71F3FC();
  v53 = MEMORY[0x277D837D0];
  v54 = v96;
  sub_21CB842F4();

  (*(v98 + 8))(v27, v54);
  v55 = v92;
  v103 = v92[1];
  sub_21C84A604();
  *&v133 = v54;
  *(&v133 + 1) = v53;
  v56 = v55;
  *&v134 = OpaqueTypeConformance2;
  *(&v134 + 1) = v52;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v94;
  v59 = v99;
  sub_21CB84644();
  (*(v100 + 8))(v30, v59);
  v60 = v110;
  sub_21CB85294();
  *&v133 = v59;
  *(&v133 + 1) = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_21C7219B4(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v63 = v95;
  v64 = v102;
  v65 = v114;
  sub_21CB849C4();
  (*(v115 + 8))(v60, v65);
  (*(v104 + 8))(v58, v64);
  v126 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDEC8, &qword_21CBA8FB8);
  *&v133 = v64;
  *(&v133 + 1) = v65;
  v66 = v97;
  *&v134 = v61;
  *(&v134 + 1) = v62;
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEDEF8, &qword_27CDEDEC8, &qword_21CBA8FB8);
  v67 = v105;
  sub_21CB84894();
  (*(v106 + 8))(v63, v67);
  v68 = v56[2];
  sub_21CB85214();
  sub_21CB82AC4();
  v69 = v111;
  (*(v108 + 32))(v111, v66, v109);
  v70 = &v69[*(v107 + 36)];
  v71 = v138;
  *(v70 + 4) = v137;
  *(v70 + 5) = v71;
  *(v70 + 6) = v139;
  v72 = v134;
  *v70 = v133;
  *(v70 + 1) = v72;
  v73 = v136;
  *(v70 + 2) = v135;
  *(v70 + 3) = v73;
  v74 = v123;
  sub_21C8529DC(v56, v123);
  v75 = (*(v118 + 80) + 16) & ~*(v118 + 80);
  v76 = swift_allocObject();
  sub_21C852A40(v74, v76 + v75);
  v77 = v69;
  v78 = v113;
  sub_21C75F114(v77, v113);
  v79 = (v78 + *(v112 + 36));
  *v79 = sub_21C852AA4;
  v79[1] = v76;
  v79[2] = 0;
  v79[3] = 0;
  sub_21C8529DC(v56, v74);
  v80 = swift_allocObject();
  sub_21C852A40(v74, v80 + v75);
  v81 = v119;
  sub_21CB826F4();
  sub_21C852580();
  sub_21CB84944();

  (*(v120 + 8))(v81, v121);
  sub_21C6EA794(v78, &qword_27CDEDEA0, &qword_21CBA8FA0);
  v82 = *v56;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v83 = v128;
  v84 = v129;
  v85 = v132;
  v121 = v130;
  v120 = v131;
  sub_21C8529DC(v56, v74);
  v86 = swift_allocObject();
  sub_21C852A40(v74, v86 + v75);
  v87 = swift_allocObject();
  *(v87 + 16) = sub_21C852B10;
  *(v87 + 24) = v86;
  v88 = v124;
  (*(v116 + 32))(v124, v125, v117);
  v89 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE90, &qword_21CBA8F98) + 36);
  *v89 = v83;
  *(v89 + 8) = v84;
  v90 = v120;
  result = *&v121;
  *(v89 + 16) = v121;
  *(v89 + 32) = v90;
  *(v89 + 48) = v85;
  *(v89 + 56) = sub_21C852B90;
  *(v89 + 64) = v87;
  return result;
}

uint64_t sub_21C84D46C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF30, &unk_21CBA8FF8);
  sub_21C6EADEC(&qword_27CDEDF28, &qword_27CDEDF30, &unk_21CBA8FF8);
  return sub_21CB85034();
}

uint64_t sub_21C84D520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF80, &qword_21CBA91B8);
  v118 = *(v3 - 8);
  v119 = v3;
  v4 = v118[8];
  MEMORY[0x28223BE20](v3);
  v105 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v116 = &v88[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF88, &qword_21CBA91C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v115 = &v88[-v12];
  v104 = sub_21CB82184();
  v103 = *(v104 - 1);
  v13 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v88[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for PMAddAccountView();
  v16 = v15 - 8;
  v94 = *(v15 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x28223BE20](v15);
  v93 = &v88[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for PMPasswordField();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF90, &qword_21CBA91C8);
  v99 = *(v98 - 8);
  v22 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v88[-v23];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF98, &qword_21CBA91D0);
  v101 = *(v100 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v88[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFA0, &qword_21CBA91D8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v111 = &v88[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v109 = &v88[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFA8, &qword_21CBA91E0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v110 = &v88[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v36 = &v88[-v35];
  v112 = &v88[-v35];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFB0, &qword_21CBA91E8);
  v114 = *(v108 - 8);
  v37 = v114[8];
  MEMORY[0x28223BE20](v108);
  v107 = &v88[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v39);
  v113 = &v88[-v40];
  sub_21C84E268(&v88[-v40]);
  sub_21C84E964(v36);
  v95 = "ame constraints specified.";
  v42 = *a1;
  v41 = a1[1];
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v92 = v124;
  v91 = v125;
  v90 = v126;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v43 = v122;

  v44 = HIBYTE(*(&v43 + 1)) & 0xFLL;
  if ((*(&v43 + 1) & 0x2000000000000000) == 0)
  {
    v44 = v43 & 0xFFFFFFFFFFFFLL;
  }

  v89 = v44 == 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v45 = v122;
  v46 = v93;
  sub_21C8529DC(a1, v93);
  v47 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v48 = swift_allocObject();
  sub_21C852A40(v46, v48 + v47);
  v49 = v18[11];
  *&v21[v49] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v50 = v18[12];
  *&v21[v50] = swift_getKeyPath();
  v51 = &v21[v18[13]];
  LOBYTE(v120) = 0;
  sub_21CB84D44();
  v52 = *(&v122 + 1);
  *v51 = v122;
  *(v51 + 1) = v52;
  v53 = &v21[v18[14]];
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_21CB84D44();
  v54 = v123;
  *v53 = v122;
  *(v53 + 2) = v54;
  v55 = &v21[v18[15]];
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_21CB84D44();
  v56 = v123;
  *v55 = v122;
  *(v55 + 2) = v56;
  *v21 = v92;
  v57 = v90;
  *(v21 + 2) = v91;
  *(v21 + 3) = v57;
  v21[32] = 1;
  v21[33] = v89;
  *(v21 + 17) = 256;
  *(v21 + 40) = v45;
  *(v21 + 7) = sub_21C853560;
  *(v21 + 8) = v48;
  v58 = a1 + *(v16 + 36);
  v59 = *v58;
  v60 = *(v58 + 1);
  LOBYTE(v58) = v58[16];
  LOBYTE(v124) = v59;
  *(&v124 + 1) = v60;
  LOBYTE(v125) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v124 = v122;
  LOBYTE(v125) = v123;
  LOBYTE(v122) = 2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE78, &qword_21CBA8ED8);
  v62 = sub_21C7219B4(&qword_27CDEDFB8, type metadata accessor for PMPasswordField);
  v63 = sub_21C721AD4();
  v64 = v96;
  sub_21CB84824();

  sub_21C853500(v21, type metadata accessor for PMPasswordField);
  v65 = v102;
  sub_21CB82174();
  *&v124 = v18;
  *(&v124 + 1) = v61;
  v125 = v62;
  v126 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v97;
  v68 = v98;
  sub_21CB841A4();
  (*(v103 + 8))(v65, v104);
  (*(v99 + 8))(v64, v68);
  *&v124 = v68;
  *(&v124 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v69 = v109;
  v70 = v100;
  sub_21CB845C4();
  (*(v101 + 8))(v67, v70);
  v71 = v115;
  sub_21C84F1AC(v115);
  v72 = v116;
  sub_21C84F828(v116);
  v104 = v114[2];
  v73 = v107;
  v74 = v108;
  (v104)(v107, v113, v108);
  v75 = v110;
  sub_21C6EDBAC(v112, v110, &qword_27CDEDFA8, &qword_21CBA91E0);
  v76 = v111;
  sub_21C6EDBAC(v69, v111, &qword_27CDEDFA0, &qword_21CBA91D8);
  v77 = v71;
  v78 = v117;
  sub_21C6EDBAC(v77, v117, &qword_27CDEDF88, &qword_21CBA91C0);
  v79 = v118[2];
  v80 = v105;
  v79(v105, v72, v119);
  v81 = v106;
  (v104)(v106, v73, v74);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC0, &unk_21CBA9250);
  sub_21C6EDBAC(v75, v81 + v82[12], &qword_27CDEDFA8, &qword_21CBA91E0);
  sub_21C6EDBAC(v76, v81 + v82[16], &qword_27CDEDFA0, &qword_21CBA91D8);
  sub_21C6EDBAC(v78, v81 + v82[20], &qword_27CDEDF88, &qword_21CBA91C0);
  v83 = v119;
  v79((v81 + v82[24]), v80, v119);
  v84 = v118[1];
  v84(v116, v83);
  sub_21C6EA794(v115, &qword_27CDEDF88, &qword_21CBA91C0);
  sub_21C6EA794(v109, &qword_27CDEDFA0, &qword_21CBA91D8);
  sub_21C6EA794(v112, &qword_27CDEDFA8, &qword_21CBA91E0);
  v85 = v114[1];
  v86 = v108;
  v85(v113, v108);
  v84(v80, v83);
  sub_21C6EA794(v117, &qword_27CDEDF88, &qword_21CBA91C0);
  sub_21C6EA794(v111, &qword_27CDEDFA0, &qword_21CBA91D8);
  sub_21C6EA794(v110, &qword_27CDEDFA8, &qword_21CBA91E0);
  return (v85)(v107, v86);
}

uint64_t sub_21C84E268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = &v63 - v5;
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE088, &qword_21CBA93D0);
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE090, &qword_21CBA93D8);
  v18 = *(v17 - 8);
  v71 = v17;
  v72 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v69 = &v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE098, &unk_21CBA93E0);
  v22 = *(v21 - 8);
  v73 = v21;
  v74 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v70 = &v63 - v24;
  v25 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v67 = v81;
  v68 = v80;
  sub_21CB81014();
  sub_21CB81014();
  v26 = sub_21CB80FF4();
  v64 = v27;
  v65 = v26;
  v28 = *(v7 + 8);
  v28(v10, v6);
  v28(v13, v6);
  v29 = *v1;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v30 = v80;
  v31 = v81;
  v32 = v82;
  v33 = v83;
  v34 = *MEMORY[0x277D49D48];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v35 = sub_21CB85694();

  if (v35 <= v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  v37 = sub_21C91A0A0(v36, v30, v31, v32, v33);
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = v2 + *(type metadata accessor for PMAddAccountView() + 28);
  v45 = *v44;
  v46 = *(v44 + 1);
  LOBYTE(v44) = v44[16];
  LOBYTE(v80) = v45;
  v81 = v46;
  LOBYTE(v82) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v47 = v78;
  v48 = v79;
  *(v16 + 11) = v77;
  *(v16 + 12) = v47;
  *(v16 + 52) = v48;
  v49 = v66;
  v50 = *(v66 + 80);
  *&v16[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v51 = v67;
  *v16 = v68;
  *(v16 + 1) = v51;
  v52 = v64;
  *(v16 + 2) = v65;
  *(v16 + 3) = v52;
  *(v16 + 4) = v37;
  *(v16 + 5) = v39;
  *(v16 + 6) = v41;
  *(v16 + 7) = v43;
  *(v16 + 8) = 0;
  *(v16 + 9) = 0;
  v16[80] = 1;
  v53 = v49;
  sub_21C851920(&v16[*(v49 + 76)]);
  v54 = sub_21C6EADEC(&qword_27CDEE0A0, &qword_27CDEE088, &qword_21CBA93D0);
  v55 = v69;
  MEMORY[0x21CF14040](1, v53, v54);
  sub_21C6EA794(v16, &qword_27CDEE088, &qword_21CBA93D0);
  v56 = v75;
  sub_21CB83A84();
  v57 = sub_21CB83A94();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v80 = v53;
  v81 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v70;
  v59 = v71;
  sub_21CB84664();
  sub_21C6EA794(v56, &qword_27CDEE080, &qword_21CBD0220);
  (*(v72 + 8))(v55, v59);
  v80 = v59;
  v81 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v61 = v73;
  sub_21CB841D4();
  return (*(v74 + 8))(v60, v61);
}

uint64_t sub_21C84E964@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v64 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v2 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v60 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAddAccountView();
  v5 = v4 - 8;
  v55 = *(v4 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE068, &qword_21CBA9390);
  v61 = *(v59 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v49 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE070, &qword_21CBA9398);
  v63 = *(v62 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v57 = &v49 - v18;
  v58 = "nt group picker)";
  v52 = v1;
  v19 = *v1;
  v20 = v1[1];
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v51 = v74;
  v49 = *(&v75 + 1);
  v50 = v75;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v14, v7);
  sub_21CB81014();
  sub_21CB81014();
  v25 = sub_21CB80FF4();
  v27 = v26;
  v24(v11, v7);
  v24(v14, v7);
  v28 = v52;
  v29 = v53;
  sub_21C8529DC(v52, v53);
  v30 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v31 = swift_allocObject();
  sub_21C852A40(v29, v31 + v30);
  v67 = v51;
  *&v68 = v50;
  *(&v68 + 1) = v49;
  *&v69 = v21;
  *(&v69 + 1) = v23;
  *&v70 = v25;
  *(&v70 + 1) = v27;
  v71 = 0uLL;
  *&v72 = sub_21C853454;
  *(&v72 + 1) = v31;
  v73 = 0;
  v32 = v28 + *(v5 + 36);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v32) = *(v32 + 16);
  LOBYTE(v74) = v33;
  *(&v74 + 1) = v34;
  LOBYTE(v75) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v66 = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE78, &qword_21CBA8ED8);
  v36 = sub_21C853458();
  v37 = sub_21C721AD4();
  v38 = v56;
  sub_21CB84824();

  v78 = v71;
  v79 = v72;
  v80 = v73;
  v74 = v67;
  v75 = v68;
  v76 = v69;
  v77 = v70;
  sub_21C8534AC(&v74);
  v39 = sub_21CB83034();
  v40 = v60;
  *v60 = v39;
  *(v40 + 8) = 1;
  v41 = v64;
  v42 = *(v64 + 24);
  *(v40 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  *&v67 = &type metadata for PMTextFieldWithSuggestions;
  *(&v67 + 1) = v35;
  *&v68 = v36;
  *(&v68 + 1) = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_21C7219B4(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  v45 = v57;
  v46 = v59;
  sub_21CB844C4();
  sub_21C853500(v40, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  (*(v61 + 8))(v38, v46);
  *&v67 = v46;
  *(&v67 + 1) = v41;
  *&v68 = OpaqueTypeConformance2;
  *(&v68 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v47 = v62;
  sub_21CB845C4();
  return (*(v63 + 8))(v45, v47);
}

uint64_t sub_21C84F1AC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED880, &qword_21CBA7C10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - v4;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE020, &qword_21CBA92E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v39 - v15;
  v16 = sub_21CB82F84();
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PMAddAccountView();
  v21 = v1 + *(v20 + 36);
  v22 = *v21;
  if (v21[8] == 1)
  {
    LOBYTE(v47) = *v21;
  }

  else
  {

    sub_21CB85B04();
    v41 = v9;
    v23 = sub_21CB83C94();
    v40 = v16;
    v24 = v23;
    v9 = v41;
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v22, 0);
    (*(v45 + 8))(v19, v40);
    LOBYTE(v22) = v47;
  }

  if (v22 == 1)
  {
  }

  else
  {
    v25 = sub_21CB86344();

    if ((v25 & 1) == 0)
    {
LABEL_9:
      v37 = 1;
      return (*(v13 + 56))(v46, v37, 1, v12);
    }
  }

  v26 = *(v1 + *(v20 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v27 = *(v47 + 16);

  if (!v27)
  {
    goto LABEL_9;
  }

  v28 = v42;
  sub_21CB81014();
  sub_21CB81014();
  v29 = sub_21CB80FF4();
  v31 = v30;
  v32 = *(v6 + 8);
  v32(v9, v5);
  v32(v28, v5);
  v47 = v29;
  v48 = v31;
  v33 = *v1;
  v34 = v1[1];
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  MEMORY[0x28223BE20](v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE028, &qword_21CBA9368);
  sub_21C8532F0();
  sub_21C6EADEC(&qword_27CDEE038, &qword_27CDEE028, &qword_21CBA9368);
  sub_21C71F3FC();
  v36 = v43;
  sub_21CB84E44();
  (*(v13 + 32))(v46, v36, v12);
  v37 = 0;
  return (*(v13 + 56))(v46, v37, 1, v12);
}

uint64_t sub_21C84F828@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v74 = *(v73 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = v60 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD0, &qword_21CBA9260);
  v4 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v67 = v60 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD8, &qword_21CBA9268);
  v76 = *(v77 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = v60 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFE0, &qword_21CBA9270);
  v8 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v69 = v60 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFE8, &qword_21CBA9278);
  v79 = *(v78 - 8);
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  v71 = v60 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFF0, &qword_21CBA9280);
  v81 = *(v80 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v72 = v60 - v13;
  v14 = sub_21CB81024();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v60 - v20;
  sub_21CB81014();
  sub_21CB81014();
  v22 = sub_21CB80FF4();
  v24 = v23;
  v25 = *(v15 + 8);
  v25(v18, v14);
  v25(v21, v14);
  *&v91 = v22;
  *(&v91 + 1) = v24;
  sub_21C71F3FC();
  v26 = sub_21CB84054();
  v28 = v27;
  LOBYTE(v21) = v29;
  v83 = v30;
  v63 = sub_21CB83134();
  v62 = v31;
  v60[1] = v32;
  v61 = v33;
  v65 = v1;
  v34 = *v1;
  v35 = v1[1];
  type metadata accessor for PMAddAccountModel(0);
  sub_21C7219B4(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21C91A0A0(*MEMORY[0x277D49D50], v91, *(&v91 + 1), v92, *(&v92 + 1));

  LOBYTE(v21) = v21 & 1;
  v64 = v28;
  sub_21C79B058(v26, v28, v21);

  v36 = v26;
  v37 = v66;
  sub_21CB85334();
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  v38 = v67;
  v39 = v73;
  sub_21CB845C4();
  (*(v74 + 8))(v37, v39);
  KeyPath = swift_getKeyPath();
  v41 = v38 + *(v70 + 36);
  *v41 = KeyPath;
  *(v41 + 8) = 0;
  sub_21C853080();
  v42 = v68;
  sub_21CB849E4();
  sub_21C6EA794(v38, &qword_27CDEDFD0, &qword_21CBA9260);
  sub_21CB85224();
  sub_21CB82AC4();
  v43 = v69;
  (*(v76 + 32))(v69, v42, v77);
  v44 = v75;
  v45 = (v43 + *(v75 + 36));
  v46 = v96;
  v47 = v97;
  v45[4] = v95;
  v45[5] = v46;
  v45[6] = v47;
  v48 = v92;
  *v45 = v91;
  v45[1] = v48;
  v49 = v94;
  v45[2] = v93;
  v45[3] = v49;
  v50 = sub_21C853220();
  v51 = v71;
  sub_21CB841E4();
  sub_21C6EA794(v43, &qword_27CDEDFE0, &qword_21CBA9270);
  v88 = v44;
  v89 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v72;
  v54 = v78;
  sub_21CB84314();
  (*(v79 + 8))(v51, v54);
  v55 = v65 + *(type metadata accessor for PMAddAccountView() + 28);
  v56 = *v55;
  v57 = *(v55 + 1);
  LOBYTE(v55) = v55[16];
  LOBYTE(v88) = v56;
  v89 = v57;
  v90 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  sub_21CB81F74();
  v88 = v85;
  v89 = v86;
  v90 = v87;
  v84 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE78, &qword_21CBA8ED8);
  v85 = v54;
  v86 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C721AD4();
  v58 = v80;
  sub_21CB84824();
  sub_21C74A72C(v36, v64, v21);

  return (*(v81 + 8))(v53, v58);
}

uint64_t sub_21C8501D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF40, &qword_21CBA90A0);
  v3 = *(*(v20[0] - 8) + 64);
  MEMORY[0x28223BE20](v20[0]);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF48, &qword_21CBA90A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = sub_21CB83604();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF50, &unk_21CBA90B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  sub_21CB835C4();
  v20[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF58, &unk_21CBA96B0);
  sub_21C852CFC();
  sub_21CB82194();
  sub_21CB835D4();
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF68, &unk_21CBA90C0);
  sub_21C852DF0();
  sub_21CB82194();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_21CB83394();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_21C8504EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = type metadata accessor for PMAddAccountView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v17 = v13 + *(v10 + 20);
  sub_21CB81EF4();
  sub_21C8529DC(v22[0], v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  sub_21C852A40(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *v13 = v14;
  v13[1] = v16;
  v20 = (v13 + *(v10 + 24));
  *v20 = sub_21C853060;
  v20[1] = v19;
  sub_21C7219B4(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB845C4();
  return sub_21C853500(v13, type metadata accessor for PMPlatformRoleButton);
}

uint64_t sub_21C850798(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for PMAddAccountView() + 24);
  sub_21C95B2C8(v6);
  sub_21CB823A4();
  (*(v3 + 8))(v6, v2);
  v8 = *(a1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_completion;
  v9 = *(v8 + 8);
  return (*v8)(0);
}

uint64_t sub_21C8508A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v70 = a2;
  v2 = sub_21CB82A04();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAddAccountView();
  v62 = *(v5 - 8);
  v60 = *(v62 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21CB81024();
  v7 = *(v63 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v63);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v55 = type metadata accessor for PMPlatformRoleButton();
  v14 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF58, &unk_21CBA96B0);
  v17 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF78, &qword_21CBA90D0);
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  MEMORY[0x28223BE20](v19);
  v56 = &v55 - v21;
  v22 = sub_21CB81F14();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81F04();
  sub_21CB81014();
  sub_21CB81014();
  v27 = sub_21CB80FF4();
  v29 = v28;
  v30 = *(v7 + 8);
  v31 = v10;
  v32 = v63;
  v30(v31, v63);
  v30(v13, v32);
  v33 = v23;
  v34 = v55;
  v35 = *(v23 + 16);
  v36 = v16 + *(v55 + 20);
  v63 = v26;
  v58 = v22;
  v35(v36, v26, v22);
  v37 = v64;
  v38 = v59;
  sub_21C8529DC(v64, v59);
  v39 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v40 = swift_allocObject();
  sub_21C852A40(v38, v40 + v39);
  *v16 = v27;
  v16[1] = v29;
  v41 = (v16 + *(v34 + 24));
  *v41 = sub_21C852EE4;
  v41[1] = v40;
  sub_21C7219B4(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  v43 = v56;
  v42 = v57;
  sub_21CB845C4();
  sub_21C853500(v16, type metadata accessor for PMPlatformRoleButton);
  v44 = v65;
  sub_21CB829F4();
  sub_21C852CFC();
  sub_21CB84334();
  (*(v66 + 8))(v44, v67);
  sub_21C6EA794(v42, &qword_27CDEDF58, &unk_21CBA96B0);
  v45 = *(v37 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v47 = v71;
  v46 = v72;

  v48 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v48 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    (*(v33 + 8))(v63, v58);
    v49 = v71;
  }

  else
  {
    (*(v33 + 8))(v63, v58);
    v49 = 1;
  }

  KeyPath = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  v52 = v70;
  (*(v68 + 32))(v70, v43, v69);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF68, &unk_21CBA90C0);
  v54 = (v52 + *(result + 36));
  *v54 = KeyPath;
  v54[1] = sub_21C735744;
  v54[2] = v51;
  return result;
}

uint64_t sub_21C850F7C(uint64_t a1)
{
  v2 = type metadata accessor for PMAddAccountView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v17[15] = 1;

  sub_21CB81DC4();
  v11 = sub_21CB858E4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_21C8529DC(a1, v5);
  sub_21CB858B4();
  v12 = sub_21CB858A4();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_21C852A40(v5, v14 + v13);
  sub_21C98B308(0, 0, v9, &unk_21CBA91A8, v14);
}

uint64_t sub_21C851188()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21C851234();
}

uint64_t sub_21C851234()
{
  v1[2] = v0;
  v2 = sub_21CB823B4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_21CB858B4();
  v1[6] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_21C851328, v6, v5);
}

uint64_t sub_21C851328()
{
  v0[9] = *(v0[2] + 8);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_21C8513C0;

  return sub_21C849754();
}

uint64_t sub_21C8513C0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_21C8515AC;
  }

  else
  {
    v7 = sub_21C8514FC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C8514FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = v5 + *(type metadata accessor for PMAddAccountView() + 24);
  sub_21C95B2C8(v2);
  sub_21CB823A4();
  (*(v4 + 8))(v2, v3);
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21C8515AC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 0;

  sub_21CB81DC4();

  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21C851678(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = (a1 + *(type metadata accessor for PMAddAccountView() + 28));
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  return sub_21CB81F64();
}

double sub_21C851764@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_21C8517EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C852CB0(v2, v3, v4);

  return sub_21CB81DC4();
}

uint64_t sub_21C851898(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0 && result == 1)
  {
    v3 = (a3 + *(type metadata accessor for PMAddAccountView() + 28));
    v4 = *v3;
    v5 = *(v3 + 1);
    v6 = v3[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
    return sub_21CB81F64();
  }

  return result;
}

double sub_21C851920@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB80E34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v36 - v12;
  v13 = *(v1 + 8);
  v14 = *(v13 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_bundleIDForFallbackIcon + 8);
  v41 = *(v13 + OBJC_IVAR____TtC17PasswordManagerUI17PMAddAccountModel_bundleIDForFallbackIcon);
  v42 = v14;

  sub_21C84A308();
  v15 = sub_21CB85584();

  v16 = [v15 safari_highLevelDomainForPasswordManager];

  if (!v16)
  {
    sub_21CB855C4();
    v16 = sub_21CB85584();
  }

  v17 = [v16 _lp_userVisibleHost];

  v18 = sub_21CB855C4();
  v39 = v19;
  v40 = v18;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v37 = *(&v46 + 1);
  v38 = v46;
  v20 = sub_21CB85B74();
  v21 = *(*(v20 - 8) + 56);
  v21(v44, 1, 1, v20);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v46);

  type metadata accessor for PMAccountsState();
  sub_21C7219B4(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v23 = sub_21CB82674();
  v25 = v24;

  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = swift_getKeyPath();
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
  sub_21CB84D44();
  *(a1 + 40) = v46;
  v26 = type metadata accessor for PMAccountIcon();
  v27 = v26[11];
  v21(a1 + v27, 1, 1, v20);
  v28 = a1 + v26[16];
  v29 = a1 + v26[17];
  *v29 = sub_21C7E79A0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  v30 = v26[18];
  sub_21CB80E24();
  (*(v4 + 16))(v43, v9, v3);
  sub_21CB84D44();
  (*(v4 + 8))(v9, v3);
  v31 = v37;
  *(a1 + 56) = v38;
  *(a1 + 64) = v31;
  v32 = v39;
  *(a1 + 72) = v40;
  *(a1 + 80) = v32;
  sub_21C805878(v44, a1 + v27);
  *(a1 + v26[12]) = 1;
  *(a1 + v26[13]) = 0;
  *(a1 + v26[14]) = 0;
  v33 = a1 + v26[15];
  v34 = v42;
  *v33 = v41;
  *(v33 + 8) = v34;
  *(v33 + 16) = 1;
  result = 0.0;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  *(v28 + 48) = 1;
  return result;
}

uint64_t sub_21C851DC0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMAddAccountView() + 28));
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF38, &qword_21CBA9030);
  result = sub_21CB81F54();
  if (v6 <= 2u)
  {
    return sub_21CB81F64();
  }

  return result;
}

uint64_t sub_21C851EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v23 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE040, &qword_21CBA9370);
  v22 = *(v24 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE048, &qword_21CBA9378);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  if (qword_27CDEA498 != -1)
  {
    swift_once();
  }

  v25[0] = qword_27CE18748;
  v25[1] = qword_27CE18750;
  v14 = sub_21CB85C44();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_21C8532F0();
  v16 = sub_21C71F3FC();

  MEMORY[0x21CF11D00](v25, v8, v5, MEMORY[0x277D837D0], v15, v16);
  v17 = *(v21 + *(type metadata accessor for PMAddAccountView() + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380);
  sub_21C6EADEC(&qword_27CDEE050, &qword_27CDEE048, &qword_21CBA9378);
  sub_21C7219B4(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup);
  sub_21CB84FE4();
  sub_21CB82494();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE058, &qword_21CBA9388) + 48);
  sub_21C8533A4();
  v19 = v24;
  sub_21CB82494();
  (*(v22 + 8))(v4, v19);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21C8522E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - v4;
  v6 = (a1 + *(type metadata accessor for PMSharingGroup() + 20));
  v7 = v6[1];
  v13[0] = *v6;
  v13[1] = v7;
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, a1, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = sub_21C8532F0();
  v11 = sub_21C71F3FC();

  return MEMORY[0x21CF11D00](v13, v5, v2, MEMORY[0x277D837D0], v10, v11);
}

uint64_t sub_21C852440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDE90, &qword_21CBA8F98);
  sub_21C8524B8();
  return sub_21CB82924();
}

unint64_t sub_21C8524B8()
{
  result = qword_27CDEDE98;
  if (!qword_27CDEDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDE90, &qword_21CBA8F98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEA0, &qword_21CBA8FA0);
    sub_21C852580();
    swift_getOpaqueTypeConformance2();
    sub_21C8528BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDE98);
  }

  return result;
}

unint64_t sub_21C852580()
{
  result = qword_27CDEDEA8;
  if (!qword_27CDEDEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEA0, &qword_21CBA8FA0);
    sub_21C85260C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDEA8);
  }

  return result;
}

unint64_t sub_21C85260C()
{
  result = qword_27CDEDEB0;
  if (!qword_27CDEDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEB8, &qword_21CBA8FA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEC0, &qword_21CBA8FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEC8, &qword_21CBA8FB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDED0, &qword_21CBA8FC0);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDED8, &qword_21CBA8FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEE0, &qword_21CBA8FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDEE8, &qword_21CBA8FD8);
    sub_21C6EADEC(&qword_27CDEDEF0, &qword_27CDEDEE8, &qword_21CBA8FD8);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C7219B4(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEDEF8, &qword_27CDEDEC8, &qword_21CBA8FB8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDEB0);
  }

  return result;
}

unint64_t sub_21C8528BC()
{
  result = qword_27CDEDF00;
  if (!qword_27CDEDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF00);
  }

  return result;
}

unint64_t sub_21C852918()
{
  result = qword_27CDEDF20;
  if (!qword_27CDEDF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF18, &qword_21CBA8FF0);
    sub_21C6EADEC(&qword_27CDEDF28, &qword_27CDEDF30, &unk_21CBA8FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF20);
  }

  return result;
}

uint64_t sub_21C8529DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddAccountView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C852A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddAccountView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C852B10(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for PMAddAccountView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C851898(a1, a2 & 1, v6);
}

uint64_t sub_21C852B90(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

uint64_t sub_21C852BBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C852C3C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C852CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_21C852CFC()
{
  result = qword_27CDEDF60;
  if (!qword_27CDEDF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF58, &unk_21CBA96B0);
    sub_21C7219B4(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    sub_21C7219B4(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF60);
  }

  return result;
}

unint64_t sub_21C852DF0()
{
  result = qword_27CDEDF70;
  if (!qword_27CDEDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF68, &unk_21CBA90C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF58, &unk_21CBA96B0);
    sub_21C852CFC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEDF70);
  }

  return result;
}

uint64_t sub_21C852EFC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAddAccountView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C852F70()
{
  v2 = *(type metadata accessor for PMAddAccountView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C702EFC;

  return sub_21C851188();
}

unint64_t sub_21C853080()
{
  result = qword_27CDEE000;
  if (!qword_27CDEE000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFD0, &qword_21CBA9260);
    sub_21C853138();
    sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE000);
  }

  return result;
}

unint64_t sub_21C853138()
{
  result = qword_27CDEE008;
  if (!qword_27CDEE008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE010, &qword_21CBA92E0);
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
    sub_21C7219B4(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE008);
  }

  return result;
}

unint64_t sub_21C853220()
{
  result = qword_27CDEE018;
  if (!qword_27CDEE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFE0, &qword_21CBA9270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFD0, &qword_21CBA9260);
    sub_21C853080();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE018);
  }

  return result;
}

unint64_t sub_21C8532F0()
{
  result = qword_27CDEE030;
  if (!qword_27CDEE030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7219B4(&qword_27CDF8950, MEMORY[0x277D49978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE030);
  }

  return result;
}

unint64_t sub_21C8533A4()
{
  result = qword_27CDEE060;
  if (!qword_27CDEE060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE040, &qword_21CBA9370);
    sub_21C6EADEC(&qword_27CDEE050, &qword_27CDEE048, &qword_21CBA9378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE060);
  }

  return result;
}

unint64_t sub_21C853458()
{
  result = qword_27CDEE078;
  if (!qword_27CDEE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE078);
  }

  return result;
}

uint64_t sub_21C853500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C853590@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_21CB81014();
  sub_21CB81014();
  v14 = sub_21CB80FF4();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v5, v1);
  v17(v8, v1);
  v27 = v14;
  v28 = v16;
  sub_21C71F3FC();
  sub_21CB84CB4();
  sub_21CB81014();
  sub_21CB81014();
  v18 = sub_21CB80FF4();
  v20 = v19;
  v17(v5, v1);
  v17(v8, v1);
  v27 = v18;
  v28 = v20;
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v21 = v24;
  sub_21CB846E4();

  return (*(v25 + 8))(v13, v21);
}

uint64_t sub_21C853898@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_21C7335A8(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0B8, &unk_21CBA9530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84DA4();
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v4 == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0C0, &qword_21CBA9570);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_21C735744;
  v9[2] = v7;
  return result;
}

unint64_t sub_21C853A44()
{
  result = qword_27CDEE0C8;
  if (!qword_27CDEE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE0C0, &qword_21CBA9570);
    sub_21C6EADEC(&qword_27CDEE0D0, &qword_27CDEE0D8, &qword_21CBA9578);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE0C8);
  }

  return result;
}

uint64_t type metadata accessor for PMEditAccountWebsitesView()
{
  result = qword_27CDEE0E8;
  if (!qword_27CDEE0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C853B9C()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C853D10(319, &qword_27CDEE0F8, &qword_27CDEE100, &unk_21CBA95B0, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_21C853D10(319, &qword_27CDEE108, &qword_27CDEE110, &qword_21CBB2150, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21C70D9C4(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
        if (v3 <= 0x3F)
        {
          sub_21C70D9C4(319, &qword_27CDEBD50, MEMORY[0x277CDF708]);
          if (v4 <= 0x3F)
          {
            sub_21C853D74();
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

void sub_21C853D10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C853D74()
{
  if (!qword_27CDEE118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE120, &qword_21CBA95C0);
    sub_21C853DE4();
    v0 = sub_21CB81FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE118);
    }
  }
}

unint64_t sub_21C853DE4()
{
  result = qword_27CDEE128;
  if (!qword_27CDEE128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE120, &qword_21CBA95C0);
    sub_21C8589EC(&qword_27CDEE130, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE128);
  }

  return result;
}

void *sub_21C853EB4(uint64_t a1, uint64_t *a2)
{
  v63[9] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B8, &qword_21CBA96C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49[-v6];
  v8 = type metadata accessor for PMEditableWebsite();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v53 = &v49[-v13];
  v57 = *(a1 + 16);
  if (v57)
  {
    v14 = 0;
    v52 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v55 = a1 + v52;
    v60 = *(v12 + 72);
    v56 = (v12 + 56);
    v51 = (v12 + 48);
    v61 = MEMORY[0x277D84F90];
    v59 = v8;
    v54 = a2;
    while (1)
    {
      v15 = v55 + v60 * v14;
      v16 = *a2;
      v17 = (v15 + *(v8 + 20));
      v18 = *v17;
      v19 = v17[1];
      if (*(*a2 + 16))
      {
        v20 = *(v16 + 40);
        sub_21CB86484();

        sub_21CB854C4();
        v21 = sub_21CB864D4();
        v22 = -1 << *(v16 + 32);
        v23 = v21 & ~v22;
        if ((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = (*(v16 + 48) + 16 * v23);
            v26 = *v25 == v18 && v25[1] == v19;
            if (v26 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v8 = v59;
          (*v56)(v7, 1, 1, v59);
          a2 = v54;
          goto LABEL_4;
        }

LABEL_15:

        a2 = v54;
        v8 = v59;
      }

      sub_21CA94078(v63, v18, v19);

      v27 = (v15 + *(v8 + 24));
      v28 = v27[1];
      if (v28 >= 2)
      {
        sub_21C85838C(v15, v7, type metadata accessor for PMEditableWebsite);
        (*v56)(v7, 0, 1, v8);
LABEL_25:
        v42 = v53;
        sub_21C858324(v7, v53, type metadata accessor for PMEditableWebsite);
        sub_21C858324(v42, v58, type metadata accessor for PMEditableWebsite);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_21CA4F590(0, v61[2] + 1, 1, v61);
        }

        v44 = v61[2];
        v43 = v61[3];
        if (v44 >= v43 >> 1)
        {
          v61 = sub_21CA4F590(v43 > 1, v44 + 1, 1, v61);
        }

        v45 = v60;
        v46 = v61;
        v61[2] = v44 + 1;
        sub_21C858324(v58, v46 + v52 + v44 * v45, type metadata accessor for PMEditableWebsite);
        v8 = v59;
        goto LABEL_5;
      }

      v29 = *v27;
      v30 = objc_opt_self();
      v31 = sub_21CB85584();
      v62 = 0;
      v63[0] = 0;
      v32 = [v30 getProtectionSpaceAndHighLevelDomainForUserTypedSite:v31 protectionSpace:v63 highLevelDomain:&v62 mode:1];

      v33 = v63[0];
      if (v32)
      {
        v34 = v63[0] == 0;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        (*v56)(v7, 1, 1, v8);
      }

      else
      {
        v50 = v62;
        v35 = v33;
        v36 = [v35 safari_userVisibleSiteForProtectionSpace];
        v37 = sub_21CB855C4();
        v39 = v38;

        sub_21C7EC3F4(v29, v28);
        sub_21CB80E24();
        v40 = &v7[*(v59 + 20)];
        *v40 = v37;
        v40[1] = v39;
        v8 = v59;
        v41 = &v7[*(v59 + 24)];
        *v41 = v29;
        v41[1] = v28;
        (*v56)(v7, 0, 1, v8);
      }

      if ((*v51)(v7, 1, v8) != 1)
      {
        goto LABEL_25;
      }

LABEL_4:
      sub_21C6EA794(v7, &qword_27CDEE1B8, &qword_21CBA96C8);
LABEL_5:
      if (++v14 == v57)
      {
        goto LABEL_31;
      }
    }
  }

  v61 = MEMORY[0x277D84F90];
LABEL_31:
  v47 = *MEMORY[0x277D85DE8];
  return v61;
}

uint64_t sub_21C85446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v89 = a2;
  v3 = sub_21CB82FD4();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21CB85114();
  v75 = *(v76 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21CB829D4();
  v70 = *(v69 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE188, &unk_21CBA9650);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE170, &qword_21CBA9648);
  v20 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v22 = &v66 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE160, &qword_21CBA9640);
  v23 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v25 = &v66 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE158, &qword_21CBA9638);
  v78 = *(v77 - 8);
  v26 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  v71 = &v66 - v27;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE150, &qword_21CBA9630);
  v80 = *(v79 - 8);
  v28 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v72 = &v66 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE140, &qword_21CBA9620);
  v31 = *(v30 - 8);
  v84 = v30;
  v85 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v73 = &v66 - v33;
  v91 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1A0, &qword_21CBA9670);
  sub_21C6EADEC(&qword_27CDEE1A8, &qword_27CDEE1A0, &qword_21CBA9670);
  sub_21CB83EF4();
  sub_21C6EADEC(&qword_27CDEE180, &qword_27CDEE188, &unk_21CBA9650);
  sub_21CB845C4();
  (*(v16 + 8))(v19, v15);
  sub_21CB85294();
  sub_21C8581A8();
  sub_21C8589EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v34 = v69;
  sub_21CB849C4();
  (*(v70 + 8))(v14, v34);
  sub_21C6EA794(v22, &qword_27CDEE170, &qword_21CBA9648);
  KeyPath = swift_getKeyPath();
  v36 = v68;
  v37 = &v25[*(v68 + 36)];
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v39 = v75;
  v40 = v76;
  (*(v75 + 104))(v11, *MEMORY[0x277CDF0D0], v76);
  sub_21CB84F74();
  (*(v39 + 8))(v11, v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v41 - 8) + 56))(v37 + v38, 0, 1, v41);
  *v37 = KeyPath;
  v42 = v81;
  sub_21CB81014();
  v43 = sub_21CB81004();
  v45 = v44;
  (*(v82 + 8))(v42, v83);
  v92 = v43;
  v93 = v45;
  v46 = sub_21C858064();
  v47 = sub_21C71F3FC();
  v48 = MEMORY[0x277D837D0];
  v49 = v71;
  v50 = v36;
  sub_21CB842F4();

  sub_21C6EA794(v25, &qword_27CDEE160, &qword_21CBA9640);
  v51 = v86;
  v52 = v87;
  v53 = v88;
  (*(v87 + 104))(v86, *MEMORY[0x277CDDDC0], v88);
  v92 = v50;
  v93 = v48;
  v94 = v46;
  v95 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v72;
  v56 = v77;
  sub_21CB84684();
  (*(v52 + 8))(v51, v53);
  (*(v78 + 8))(v49, v56);
  v92 = v56;
  v93 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v73;
  v59 = v79;
  sub_21CB84644();
  (*(v80 + 8))(v55, v59);
  v90 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE148, &qword_21CBA9628);
  v92 = v59;
  v93 = v57;
  swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE190, &unk_21CBA9660);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF50, &unk_21CBA90B0);
  v62 = sub_21C6EADEC(&qword_27CDEE198, &qword_27CDEDF50, &unk_21CBA90B0);
  v92 = v61;
  v93 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v92 = v60;
  v93 = v63;
  swift_getOpaqueTypeConformance2();
  v64 = v84;
  sub_21CB84894();
  return (*(v85 + 8))(v58, v64);
}

uint64_t sub_21C854F20@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1C0, &unk_21CBA96D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21CBA0690;
  v15 = PMAccount.effectiveTitle.getter();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_21C7C0050();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = sub_21CB85594();
  v20 = v19;

  sub_21C8551A4(v8);
  sub_21C6EDBAC(v8, v5, &qword_27CDEE1C0, &unk_21CBA96D0);
  *a1 = v18;
  a1[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1C8, &qword_21CBA96E0);
  sub_21C6EDBAC(v5, a1 + *(v21 + 48), &qword_27CDEE1C0, &unk_21CBA96D0);

  sub_21C6EA794(v8, &qword_27CDEE1C0, &unk_21CBA96D0);
  sub_21C6EA794(v5, &qword_27CDEE1C0, &unk_21CBA96D0);
}

uint64_t sub_21C8551A4@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v56 = sub_21CB81024();
  v53 = *(v56 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v56);
  v52 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = v47 - v12;
  v13 = type metadata accessor for PMEditAccountWebsitesView();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v47[1] = v17;
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1D0, &qword_21CBA96E8);
  v20 = *(v19 - 8);
  v50 = v19 - 8;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v51 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v47 - v24;
  v26 = *(v14 + 32);
  v48 = v1;
  v27 = v1 + v26;
  v63 = *v27;
  v64 = *(v27 + 8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  sub_21CB84F54();
  v63 = v61;
  v64 = v62;
  sub_21C85838C(v1, v18, type metadata accessor for PMEditAccountWebsitesView);
  v28 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v29 = swift_allocObject();
  sub_21C858324(v18, v29 + v28, type metadata accessor for PMEditAccountWebsitesView);
  sub_21CB80E34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1D8, &qword_21CBA96F0);
  sub_21C858474();
  sub_21C858560();
  sub_21C858780();
  sub_21CB84FF4();
  v30 = v48;
  sub_21C85838C(v48, v18, type metadata accessor for PMEditAccountWebsitesView);
  v31 = swift_allocObject();
  sub_21C858324(v18, v31 + v28, type metadata accessor for PMEditAccountWebsitesView);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_21C858834;
  *(v32 + 24) = v31;
  v33 = &v25[*(v50 + 44)];
  *v33 = sub_21C8588A4;
  v33[1] = v32;
  v34 = v52;
  sub_21CB81014();
  v35 = sub_21CB81004();
  v37 = v36;
  (*(v53 + 8))(v34, v56);
  v63 = v35;
  *&v64 = v37;
  sub_21C85838C(v30, v18, type metadata accessor for PMEditAccountWebsitesView);
  v38 = swift_allocObject();
  sub_21C858324(v18, v38 + v28, type metadata accessor for PMEditAccountWebsitesView);
  sub_21C71F3FC();
  v39 = v55;
  sub_21CB84DE4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v40 = v54;
  v41 = v58;
  sub_21CB845C4();
  (*(v59 + 8))(v39, v41);
  v42 = v51;
  sub_21C6EDBAC(v25, v51, &qword_27CDEE1D0, &qword_21CBA96E8);
  v43 = v57;
  sub_21C6EDBAC(v40, v57, &qword_27CDEC948, &qword_21CBA4E30);
  v44 = v60;
  sub_21C6EDBAC(v42, v60, &qword_27CDEE1D0, &qword_21CBA96E8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE230, &qword_21CBA9710);
  sub_21C6EDBAC(v43, v44 + *(v45 + 48), &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v40, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v25, &qword_27CDEE1D0, &qword_21CBA96E8);
  sub_21C6EA794(v43, &qword_27CDEC948, &qword_21CBA4E30);
  return sub_21C6EA794(v42, &qword_27CDEE1D0, &qword_21CBA96E8);
}

uint64_t sub_21C855828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_21CB83604();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF50, &unk_21CBA90B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE190, &unk_21CBA9660);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_21CB835D4();
  v18[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDF58, &unk_21CBA96B0);
  sub_21C852CFC();
  sub_21CB82194();
  v15 = sub_21C6EADEC(&qword_27CDEE198, &qword_27CDEDF50, &unk_21CBA90B0);
  MEMORY[0x21CF131E0](v9, v5, v15);
  (*(v6 + 8))(v9, v5);
  v18[6] = v5;
  v18[7] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v14, v10, OpaqueTypeConformance2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C855ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v98 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE240, &qword_21CBA9718);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = &v79 - v6;
  v83 = sub_21CB80E34();
  v101 = *(v83 - 8);
  v7 = *(v101 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE248, &qword_21CBA9720);
  v9 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v11 = &v79 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE120, &qword_21CBA95C0);
  v12 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v79 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v19);
  v99 = (&v79 - v20);
  v21 = type metadata accessor for PMEditableWebsite();
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v97 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v79 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE220, &qword_21CBA9708);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v79 - v33;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE250, &qword_21CBA9728);
  v95 = *(v96 - 8);
  v35 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = &v79 - v36;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE208, &unk_21CBA96F8);
  v37 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v79 - v38;
  sub_21CB84F54();
  swift_getKeyPath();
  sub_21CB84F44();

  sub_21C6EA794(v34, &qword_27CDEE220, &qword_21CBA9708);
  v87 = v111;
  v86 = v112;
  v85 = v113;
  v84 = v114;
  MEMORY[0x21CF14A20](v31);
  v39 = *(v22 + 28);
  v88 = v30;
  v40 = &v30[v39];
  v42 = *v40;
  v41 = *(v40 + 1);
  v43 = v42 & 0xFFFFFFFFFFFFLL;
  if ((v41 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v41) & 0xF;
  }

  else
  {
    v44 = v43;
  }

  v102 = a1;
  v100 = v31;
  if (v44)
  {
    v45 = *(type metadata accessor for PMEditAccountWebsitesView() + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
    v46 = v99;
    sub_21CB81F54();
    MEMORY[0x21CF14A20](v31);
    v47 = v101;
    v48 = v83;
    (*(v101 + 16))(v18, v27, v83);
    sub_21C858938(v27, type metadata accessor for PMEditableWebsite);
    (*(v47 + 56))(v18, 0, 1, v48);
    v49 = *(v82 + 48);
    sub_21C6EDBAC(v46, v11, &qword_27CDEE120, &qword_21CBA95C0);
    sub_21C6EDBAC(v18, &v11[v49], &qword_27CDEE120, &qword_21CBA95C0);
    v50 = *(v47 + 48);
    v51 = v11;
    if (v50(v11, 1, v48) == 1)
    {
      sub_21C6EA794(v18, &qword_27CDEE120, &qword_21CBA95C0);
      sub_21C6EA794(v99, &qword_27CDEE120, &qword_21CBA95C0);
      v52 = &v11[v49];
      v53 = v48;
      if (v50(v52, 1, v48) == 1)
      {
        sub_21C6EA794(v51, &qword_27CDEE120, &qword_21CBA95C0);
        v54 = 1;
LABEL_13:
        v31 = v100;
        goto LABEL_14;
      }
    }

    else
    {
      v55 = v47;
      v56 = v99;
      v57 = v11;
      v58 = v81;
      sub_21C6EDBAC(v57, v81, &qword_27CDEE120, &qword_21CBA95C0);
      if (v50((v51 + v49), 1, v48) != 1)
      {
        v60 = v51 + v49;
        v61 = v80;
        (*(v55 + 32))(v80, v60, v48);
        sub_21C8589EC(&qword_27CDEE260, MEMORY[0x277CC95F0]);
        v62 = v55;
        v54 = sub_21CB85574();
        v63 = *(v62 + 8);
        v63(v61, v48);
        sub_21C6EA794(v18, &qword_27CDEE120, &qword_21CBA95C0);
        sub_21C6EA794(v56, &qword_27CDEE120, &qword_21CBA95C0);
        v64 = v58;
        v53 = v48;
        v63(v64, v48);
        sub_21C6EA794(v51, &qword_27CDEE120, &qword_21CBA95C0);
        goto LABEL_13;
      }

      sub_21C6EA794(v18, &qword_27CDEE120, &qword_21CBA95C0);
      sub_21C6EA794(v56, &qword_27CDEE120, &qword_21CBA95C0);
      v59 = v58;
      v53 = v48;
      (*(v55 + 8))(v59, v48);
    }

    sub_21C6EA794(v51, &qword_27CDEE248, &qword_21CBA9720);
    v54 = 0;
    goto LABEL_13;
  }

  v53 = v83;
  v54 = 1;
LABEL_14:
  v99 = type metadata accessor for PMEditableWebsite;
  sub_21C858938(v88, type metadata accessor for PMEditableWebsite);
  KeyPath = swift_getKeyPath();
  v108 = 0;
  v104 = KeyPath;
  LOBYTE(v105) = 0;
  *(&v105 + 1) = v87;
  *&v106 = v86;
  *(&v106 + 1) = v85;
  *v107 = v84;
  *&v107[8] = 0x697261666173;
  *&v107[16] = 0xE600000000000000;
  v107[24] = 1;
  v107[25] = v54 & 1;
  v66 = *(type metadata accessor for PMEditAccountWebsitesView() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
  v67 = v89;
  sub_21CB81F74();
  v68 = v97;
  MEMORY[0x21CF14A20](v31);
  v69 = v101;
  v70 = *(v101 + 16);
  v71 = v90;
  v70(v90, v68, v53);
  sub_21C858938(v68, type metadata accessor for PMEditableWebsite);
  (*(v69 + 56))(v71, 0, 1, v53);
  sub_21C85872C();
  sub_21C853DE4();
  v72 = v92;
  sub_21CB84824();
  sub_21C6EA794(v71, &qword_27CDEE120, &qword_21CBA95C0);
  sub_21C6EA794(v67, &qword_27CDEE240, &qword_21CBA9718);
  *v110 = *v107;
  *&v110[10] = *&v107[10];
  v109[1] = v105;
  v109[2] = v106;
  v109[0] = v104;
  sub_21C858998(v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE258, &qword_21CBA9778);
  v73 = *(v69 + 72);
  v74 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_21CBA0690;
  MEMORY[0x21CF14A20](v100);
  v70((v75 + v74), v68, v53);
  sub_21C858938(v68, v99);
  v76 = sub_21C8D7F80(v75);
  swift_setDeallocating();
  (*(v69 + 8))(v75 + v74, v53);
  swift_deallocClassInstance();
  LOBYTE(v75) = sub_21C856698(v76);

  v77 = v93;
  (*(v95 + 32))(v93, v72, v96);
  *(v77 + *(v94 + 36)) = (v75 & 1) == 0;
  sub_21C85861C();
  sub_21CB845C4();
  return sub_21C6EA794(v77, &qword_27CDEE208, &unk_21CBA96F8);
}

uint64_t sub_21C856698(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMEditableWebsite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(a1 + 16))
  {
    return 0;
  }

  v9 = v1 + *(type metadata accessor for PMEditAccountWebsitesView() + 24);
  v25[1] = *v9;
  v26 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](v25, v10);
  v11 = *(v25[0] + 16);
  if (v11)
  {
    v12 = 0;
    v13 = &v8[*(v4 + 24)];
    v14 = v25[0] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    while (1)
    {
      sub_21C85838C(v14, v8, type metadata accessor for PMEditableWebsite);
      if (*(v13 + 1) >= 2uLL && __OFADD__(v12++, 1))
      {
        break;
      }

      sub_21C858938(v8, type metadata accessor for PMEditableWebsite);
      v14 += v15;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_9:
  }

  else
  {

    v12 = 0;
  }

  MEMORY[0x28223BE20](v17);
  *&v24[-16] = v1;
  *&v24[-8] = v12;
  v19 = sub_21C8A1508(sub_21C858A34, &v24[-32], a1);
  v20 = v19;
  MEMORY[0x28223BE20](v19);
  *&v24[-16] = v2;
  v21 = sub_21C857710(0, sub_21C858A54, &v24[-32], a1);
  v23 = v21 < 1 || v12 != v21;
  return v23 & (v20 ^ 1u);
}

uint64_t sub_21C856904(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for PMEditAccountWebsitesView() + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE100, &unk_21CBA95B0);
  sub_21C6EADEC(&qword_27CDEE1E8, &qword_27CDEE100, &unk_21CBA95B0);
  sub_21C6EADEC(&qword_27CDEE238, &qword_27CDEE100, &unk_21CBA95B0);
  sub_21CB85AA4();
  sub_21CB84F34();
}

uint64_t sub_21C856A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE120, &qword_21CBA95C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for PMEditableWebsite();
  v9 = v8 - 8;
  v29 = *(v8 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_21CB80E24();
  v16 = &v15[*(v9 + 28)];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  *&v15[*(v9 + 32)] = xmmword_21CBA4340;
  sub_21C85838C(v15, v12, type metadata accessor for PMEditableWebsite);
  v30 = type metadata accessor for PMEditAccountWebsitesView();
  v17 = *(v30 + 24);
  v32 = a1;
  v18 = (a1 + v17);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v37 = *v18;
  v38 = v20;
  v39 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v40);
  v22 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_21CA4F590(0, v22[2] + 1, 1, v22);
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_21CA4F590(v23 > 1, v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  sub_21C858324(v12, v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, type metadata accessor for PMEditableWebsite);
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v33 = v22;
  sub_21CB84F34();

  v25 = sub_21CB80E34();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v7, v15, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
  v27 = *(v30 + 40);
  sub_21C6EDBAC(v7, v31, &qword_27CDEE120, &qword_21CBA95C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
  sub_21CB81F64();
  sub_21C6EA794(v7, &qword_27CDEE120, &qword_21CBA95C0);
  return sub_21C858938(v15, type metadata accessor for PMEditableWebsite);
}

uint64_t sub_21C856E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v2 = type metadata accessor for PMEditAccountWebsitesView();
  v29 = *(v2 - 8);
  v28 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMPlatformRoleButton();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_21CB81F14();
  v26 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81F04();
  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v5 + 8))(v8, v4);
  (*(v14 + 16))(v12 + *(v9 + 20), v17, v13);
  v21 = v27;
  sub_21C85838C(v30, v27, type metadata accessor for PMEditAccountWebsitesView);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = swift_allocObject();
  sub_21C858324(v21, v23 + v22, type metadata accessor for PMEditAccountWebsitesView);
  *v12 = v18;
  v12[1] = v20;
  v24 = (v12 + *(v9 + 24));
  *v24 = sub_21C8582A8;
  v24[1] = v23;
  sub_21C8589EC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB845C4();
  sub_21C858938(v12, type metadata accessor for PMPlatformRoleButton);
  return (*(v14 + 8))(v17, v26);
}

uint64_t sub_21C8571B8(uint64_t a1)
{
  v25 = a1;
  v2 = sub_21CB823B4();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB853D4();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85404();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMEditAccountWebsitesView();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_21C8582C0();
  v17 = sub_21CB85CF4();
  sub_21C85838C(a1, &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditAccountWebsitesView);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  sub_21C858324(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PMEditAccountWebsitesView);
  aBlock[4] = sub_21C85830C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C8589EC(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v12, v8, v20);
  _Block_release(v20);

  (*(v28 + 8))(v8, v5);
  (*(v26 + 8))(v12, v27);
  v21 = v25 + *(v14 + 40);
  v22 = v29;
  sub_21C95B2C8(v29);
  sub_21CB823A4();
  return (*(v30 + 8))(v22, v31);
}

uint64_t sub_21C8575F8(uint64_t a1)
{
  v14 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for PMEditAccountWebsitesView();
  v3 = (a1 + *(v2 + 24));
  v5 = v3[1];
  v6 = v3[2];
  v12 = *v3;
  v4 = v12;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v11);
  v8 = sub_21C853EB4(v11, &v14);

  v12 = v4;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  v11 = v8;
  sub_21CB84F34();
  v12 = v4;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  MEMORY[0x21CF14A20](&v11, v7);
  v9 = (a1 + *(v2 + 20));
  v12 = *v9;
  v13 = *(v9 + 1);
  sub_21CB84F34();
}

uint64_t sub_21C857710(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = sub_21CB80E34();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v11 = a4 + 56;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 56);
  v15 = (v12 + 63) >> 6;
  v20[1] = v7 + 16;
  v22 = (v7 + 8);
  v24 = a4;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
      v19 = v23;
LABEL_9:
      (*(v7 + 16))(v10, *(v24 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v19);
      v21(&v25, v10);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v22)(v10, v19);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v10, v19);
  }

  else
  {
LABEL_5:
    v19 = v23;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v25;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_21C857928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B8, &qword_21CBA96C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = (a2 + *(type metadata accessor for PMEditAccountWebsitesView() + 24));
  v15 = *v14;
  v16 = v14[1];
  v32 = v14[2];
  v33 = v15;
  v37 = v15;
  v38 = v16;
  v39 = v32;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](&v40);
  v34 = a1;
  v36 = a1;
  sub_21C969390(sub_21C858AA4, v40, v13);
  v35 = v3;

  v18 = type metadata accessor for PMEditableWebsite();
  v19 = *(*(v18 - 8) + 48);
  if (v19(v13, 1, v18) == 1)
  {
    sub_21C6EA794(v13, &qword_27CDEE1B8, &qword_21CBA96C8);
  }

  else
  {
    v31 = a3;
    v20 = &v13[*(v18 + 24)];
    v21 = *v20;
    v22 = v20[1];
    sub_21C7EC3F4(*v20, v22);
    sub_21C858938(v13, type metadata accessor for PMEditableWebsite);
    if (!v22)
    {
      return 1;
    }

    sub_21C858A90(v21, v22);
    a3 = v31;
  }

  v37 = v33;
  v38 = v16;
  v39 = v32;
  v23 = MEMORY[0x21CF14A20](&v40, v17);
  v24 = v40;
  MEMORY[0x28223BE20](v23);
  *(&v30 - 2) = v34;
  sub_21C969390(sub_21C858AA4, v24, v10);

  if (v19(v10, 1, v18) == 1)
  {
    sub_21C6EA794(v10, &qword_27CDEE1B8, &qword_21CBA96C8);
    return 0;
  }

  else
  {
    v26 = &v10[*(v18 + 24)];
    v27 = *v26;
    v28 = v26[1];
    sub_21C7EC3F4(*v26, v28);
    sub_21C858938(v10, type metadata accessor for PMEditableWebsite);
    sub_21C858A90(v27, v28);
    return v28 > 1 && a3 < 2;
  }
}

uint64_t sub_21C857C3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B8, &qword_21CBA96C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = a3 + *(type metadata accessor for PMEditAccountWebsitesView() + 24);
  v19[1] = *v10;
  v20 = *(v10 + 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE1B0, &qword_21CBA96C0);
  MEMORY[0x21CF14A20](v19, v11);
  v18 = a2;
  sub_21C969390(sub_21C858A70, v19[0], v9);

  v12 = type metadata accessor for PMEditableWebsite();
  if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
  {
    return sub_21C6EA794(v9, &qword_27CDEE1B8, &qword_21CBA96C8);
  }

  v14 = &v9[*(v12 + 24)];
  v15 = *v14;
  v16 = v14[1];
  sub_21C7EC3F4(*v14, v16);
  sub_21C858938(v9, type metadata accessor for PMEditableWebsite);
  result = sub_21C858A90(v15, v16);
  if (v16 >= 2)
  {
    if (__OFADD__(*a1, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a1;
    }
  }

  return result;
}

uint64_t sub_21C857E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE138, &qword_21CBA9618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE140, &qword_21CBA9620);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE148, &qword_21CBA9628);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE150, &qword_21CBA9630);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE158, &qword_21CBA9638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE160, &qword_21CBA9640);
  sub_21C858064();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE190, &unk_21CBA9660);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDF50, &unk_21CBA90B0);
  sub_21C6EADEC(&qword_27CDEE198, &qword_27CDEDF50, &unk_21CBA90B0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21C858064()
{
  result = qword_27CDEE168;
  if (!qword_27CDEE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE160, &qword_21CBA9640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE170, &qword_21CBA9648);
    sub_21CB829D4();
    sub_21C8581A8();
    sub_21C8589EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE168);
  }

  return result;
}

unint64_t sub_21C8581A8()
{
  result = qword_27CDEE178;
  if (!qword_27CDEE178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE170, &qword_21CBA9648);
    sub_21C6EADEC(&qword_27CDEE180, &qword_27CDEE188, &unk_21CBA9650);
    sub_21C8589EC(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE178);
  }

  return result;
}

unint64_t sub_21C8582C0()
{
  result = qword_27CDEBE70;
  if (!qword_27CDEBE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEBE70);
  }

  return result;
}

uint64_t sub_21C858324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C85838C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C8583F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMEditAccountWebsitesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C855ABC(a1, v6, a2);
}

unint64_t sub_21C858474()
{
  result = qword_27CDEE1E0;
  if (!qword_27CDEE1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE1B0, &qword_21CBA96C0);
    sub_21C6EADEC(&qword_27CDEE1E8, &qword_27CDEE100, &unk_21CBA95B0);
    sub_21C6EADEC(&qword_27CDEE1F0, &qword_27CDEE100, &unk_21CBA95B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE1E0);
  }

  return result;
}

unint64_t sub_21C858560()
{
  result = qword_27CDEE1F8;
  if (!qword_27CDEE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE1D8, &qword_21CBA96F0);
    sub_21C85861C();
    sub_21C8589EC(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE1F8);
  }

  return result;
}

unint64_t sub_21C85861C()
{
  result = qword_27CDEE200;
  if (!qword_27CDEE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE208, &unk_21CBA96F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE120, &qword_21CBA95C0);
    sub_21C85872C();
    sub_21C853DE4();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEDCD0, &qword_27CDEDCC8, &unk_21CBA87F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE200);
  }

  return result;
}

unint64_t sub_21C85872C()
{
  result = qword_27CDEE210;
  if (!qword_27CDEE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE210);
  }

  return result;
}

unint64_t sub_21C858780()
{
  result = qword_27CDEE218;
  if (!qword_27CDEE218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE220, &qword_21CBA9708);
    sub_21C8589EC(&qword_27CDEE228, type metadata accessor for PMEditableWebsite);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE218);
  }

  return result;
}

uint64_t sub_21C858834(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditAccountWebsitesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C856904(a1, v4);
}

uint64_t sub_21C8588C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMEditAccountWebsitesView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C858938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C8589EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C858A90(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_21C858AC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v22);

  type metadata accessor for PMAccountsState();
  sub_21C705EF8(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v9 = sub_21CB82674();
  v11 = v10;

  *a4 = v9;
  a4[1] = v11;
  v12 = type metadata accessor for PMOnboardingRootView();
  v13 = v12[5];
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[6];
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v15 = v12[7];
  *(a4 + v15) = swift_getKeyPath();
  v16 = v12[8];
  *(a4 + v16) = swift_getKeyPath();
  v17 = v12[9];
  *(a4 + v17) = swift_getKeyPath();
  v18 = (a4 + v12[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE278, &qword_21CBA9888);
  sub_21CB84D44();
  *v18 = v22;
  v19 = v12[12];
  type metadata accessor for UNAuthorizationStatus(0);
  sub_21CB84D44();
  result = *&v22;
  *(a4 + v19) = v22;
  v21 = a4 + v12[10];
  *v21 = a1;
  *(v21 + 1) = a2;
  v21[16] = a3 & 1;
  return result;
}

uint64_t sub_21C858D10@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v43 = sub_21CB83524();
  v41 = *(v43 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMOnboardingRootView();
  v5 = v4 - 8;
  v40 = *(v4 - 8);
  v39 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2C8, &qword_21CBA9988);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D0, &qword_21CBA9990);
  v12 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v14 = v32 - v13;
  v15 = *(v5 + 52);
  v33 = v1;
  v16 = (v1 + v15);
  v18 = *v16;
  v17 = v16[1];
  v50 = v18;
  *&v51 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D74();
  v50 = v45;
  v51 = v46;
  v44 = v1;
  v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE278, &qword_21CBA9888);
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2E0, &qword_21CBA99A0);
  v32[0] = sub_21C6EADEC(&qword_27CDEE2E8, &qword_27CDEE278, &qword_21CBA9888);
  sub_21C6EADEC(&qword_27CDEE2F0, &qword_27CDEE278, &qword_21CBA9888);
  sub_21C6EADEC(&qword_27CDEE2F8, &qword_27CDEE278, &qword_21CBA9888);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE300, &qword_21CBA99A8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE308, &qword_21CBA99B0);
  v21 = sub_21C85B574();
  v22 = sub_21C85B65C();
  v23 = sub_21C85B768(&qword_27CDEE338, &qword_27CDEE308, &qword_21CBA99B0, sub_21C85B6B0);
  v45 = v19;
  *&v46 = &type metadata for PMOnboardingRootView.NavigationLocation;
  *(&v46 + 1) = v20;
  v47 = v21;
  v24 = v35;
  v48 = v22;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_21CB82914();
  sub_21C6EADEC(&qword_27CDEE378, &qword_27CDEE2C8, &qword_21CBA9988);
  v26 = v36;
  sub_21CB84644();
  (*(v37 + 8))(v11, v26);
  v27 = v38;
  sub_21C85B8C8(v33, v38);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = swift_allocObject();
  sub_21C85B92C(v27, v29 + v28);
  v30 = &v14[*(v25 + 36)];
  *v30 = sub_21C85B990;
  v30[1] = v29;
  v30[2] = 0;
  v30[3] = 0;
  sub_21CB83514();
  LOBYTE(v28) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v28)
  {
    sub_21CB83CB4();
  }

  sub_21C85B9F0();
  sub_21CB84534();
  (*(v41 + 8))(v24, v43);
  return sub_21C6EA794(v14, &qword_27CDEE2D0, &qword_21CBA9990);
}

uint64_t sub_21C8592A8(uint64_t a1)
{
  v2 = type metadata accessor for PMOnboardingRootView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  *v8 = swift_getKeyPath();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = *(type metadata accessor for PMAppOnboardingView() + 20);
  *&v8[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  sub_21C85B8C8(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_21C85B92C(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21C85BEBC;
  *(v13 + 24) = v12;
  v14 = &v8[*(v5 + 36)];
  *v14 = KeyPath;
  v14[1] = sub_21C85BB5C;
  v14[2] = v13;
  sub_21C85B8C8(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_21C85B92C(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE308, &qword_21CBA99B0);
  sub_21C85B574();
  sub_21C85B65C();
  sub_21C85B768(&qword_27CDEE338, &qword_27CDEE308, &qword_21CBA99B0, sub_21C85B6B0);
  sub_21CB84564();

  return sub_21C85BBE4(v8);
}

uint64_t sub_21C859578(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_21C7ECAF4();

  return sub_21CB82FA4();
}

uint64_t sub_21C8595D8()
{
  v1 = v0;
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21C85AD74();
  v8 = type metadata accessor for PMOnboardingRootView();
  v9 = v8;
  if (v7 == 5)
  {
    v10 = *(v0 + *(v8 + 36));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v11 = sub_21C725C3C(v10, aBlock);

    v12 = *&v11[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager];
    if (v12)
    {
      v33 = sub_21C85AE9C;
      v34 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      v31 = sub_21CB031D0;
      v32 = &block_descriptor_63;
      v13 = _Block_copy(&aBlock);

      [v12 requestPermissionToSendNotificationsProvisionally:0 withCompletionHandler:v13];
      _Block_release(v13);
    }

    v14 = v1 + *(v9 + 40);
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v14) = *(v14 + 16);
    aBlock = v15;
    v30 = v16;
    LOBYTE(v31) = v14;
    LOBYTE(v26) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    sub_21CB84F34();
    v17 = v1 + *(v9 + 20);
    sub_21C95B2C8(v6);
    sub_21CB823A4();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v19 = (v0 + *(v8 + 44));
    v20 = *v19;
    v21 = v19[1];
    aBlock = *v19;
    v30 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
    sub_21CB84D54();
    v22 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_21CA4F6D4(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_21CA4F6D4((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v22[v24 + 32] = v7;
    v26 = v20;
    v27 = v21;
    v25 = v22;
    sub_21CB84D64();
  }
}

uint64_t sub_21C85990C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v112 = a3;
  v97 = sub_21CB81024();
  v4 = *(v97 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v97);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for PMOnboardingView(0);
  v8 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE390, &qword_21CBA9A40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v104 = &v84 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE398, &qword_21CBA9A48);
  v15 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v84 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE3A0, &qword_21CBA9A50);
  v17 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v102 = &v84 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE3A8, &qword_21CBA9A58);
  v19 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE358, &qword_21CBA99C8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v101 = &v84 - v23;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE348, &qword_21CBA99C0);
  v24 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v103 = &v84 - v25;
  v26 = type metadata accessor for PMOnboardingRootView();
  v106 = *(v26 - 8);
  v27 = *(v106 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v84 - v31;
  v33 = *a1;
  if (v33 > 1)
  {
    v105 = v12;
    v96 = v11;
    if (v33 == 4)
    {
      v103 = sub_21CB84BB4();
      sub_21CB81014();
      v44 = sub_21CB81004();
      v101 = v45;
      v102 = v44;
      v46 = *(v4 + 8);
      v47 = v97;
      v46(v7, v97);
      sub_21CB81014();
      v48 = sub_21CB81004();
      v100 = v49;
      v46(v7, v47);
      sub_21CB81014();
      v50 = sub_21CB81004();
      v52 = v51;
      v46(v7, v47);
      sub_21C85B8C8(v107, &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v53 = (*(v106 + 80) + 16) & ~*(v106 + 80);
      v54 = swift_allocObject();
      sub_21C85B92C(&v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v54 + v53);
      v55 = v102;
      *v10 = v103;
      *(v10 + 1) = v55;
      v56 = v100;
      *(v10 + 2) = v101;
      *(v10 + 3) = v48;
      *(v10 + 4) = v56;
      *(v10 + 5) = 0;
      *(v10 + 24) = 2;
      *(v10 + 7) = v50;
      *(v10 + 8) = v52;
      *(v10 + 9) = sub_21C85BEB8;
      *(v10 + 10) = v54;
      v10[88] = 0;
      *(v10 + 6) = 0u;
      *(v10 + 7) = 0u;
      v10[128] = 0;
      v57 = v108;
      v58 = *(v108 + 28);
      *&v10[v58] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v59 = sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
      v60 = v104;
      sub_21CB84674();
      sub_21C85BC4C(v10);
      v61 = v105;
      v62 = v96;
      (*(v105 + 16))(v111, v60, v96);
      swift_storeEnumTagMultiPayload();
      sub_21C85B6B0();
      v113 = v57;
      v114 = v59;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      return (*(v61 + 8))(v60, v62);
    }

    else
    {
      result = sub_21CB861C4();
      __break(1u);
    }
  }

  else
  {
    v94 = v30;
    v95 = v21;
    if (v33)
    {
      v96 = v11;
      v93 = sub_21CB84BB4();
      sub_21CB81014();
      v92 = sub_21CB81004();
      v91 = v63;
      v64 = *(v4 + 8);
      v65 = v97;
      v64(v7, v97);
      sub_21CB81014();
      v90 = sub_21CB81004();
      v89 = v66;
      v64(v7, v65);
      sub_21CB81014();
      v88 = sub_21CB81004();
      v87 = v67;
      v64(v7, v65);
      v68 = v107;
      sub_21C85B8C8(v107, &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v105 = v12;
      v69 = (*(v106 + 80) + 16) & ~*(v106 + 80);
      v106 = swift_allocObject();
      sub_21C85B92C(&v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v106 + v69);
      sub_21CB81014();
      v86 = sub_21CB81004();
      v85 = v70;
      v64(v7, v65);
      sub_21C85B8C8(v68, &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v71 = swift_allocObject();
      sub_21C85B92C(&v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v71 + v69);
      v72 = v92;
      *v10 = v93;
      *(v10 + 1) = v72;
      v73 = v90;
      *(v10 + 2) = v91;
      *(v10 + 3) = v73;
      *(v10 + 4) = v89;
      *(v10 + 5) = 0;
      *(v10 + 24) = 2;
      v74 = v87;
      *(v10 + 7) = v88;
      *(v10 + 8) = v74;
      v75 = v106;
      *(v10 + 9) = sub_21C85BCA8;
      *(v10 + 10) = v75;
      v10[88] = 0;
      v76 = v85;
      *(v10 + 12) = v86;
      *(v10 + 13) = v76;
      *(v10 + 14) = sub_21C85BCC0;
      *(v10 + 15) = v71;
      v10[128] = 0;
      v77 = v108;
      v78 = *(v108 + 28);
      *&v10[v78] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
      swift_storeEnumTagMultiPayload();
      v79 = sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
      v80 = v104;
      sub_21CB84674();
      sub_21C85BC4C(v10);
      v81 = v96;
      (*(v105 + 16))(v99, v80, v96);
      swift_storeEnumTagMultiPayload();
      sub_21C85B574();
      v113 = v77;
      v114 = v79;
      swift_getOpaqueTypeConformance2();
      v82 = v101;
      sub_21CB83494();
      sub_21C6EDBAC(v82, v102, &qword_27CDEE358, &qword_21CBA99C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE370, &qword_21CBA99D0);
      sub_21C85B768(&qword_27CDEE350, &qword_27CDEE358, &qword_21CBA99C8, sub_21C85B574);
      sub_21C85B84C();
      v83 = v103;
      sub_21CB83494();
      sub_21C6EA794(v82, &qword_27CDEE358, &qword_21CBA99C8);
      sub_21C6EDBAC(v83, v111, &qword_27CDEE348, &qword_21CBA99C0);
      swift_storeEnumTagMultiPayload();
      sub_21C85B6B0();
      sub_21CB83494();
      sub_21C6EA794(v83, &qword_27CDEE348, &qword_21CBA99C0);
      return (*(v105 + 8))(v80, v81);
    }

    else
    {
      *v32 = swift_getKeyPath();
      *(v32 + 1) = 0;
      v32[16] = 0;
      v34 = *(type metadata accessor for PMAppOnboardingView() + 20);
      *&v32[v34] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      sub_21C85B8C8(v107, &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v36 = (*(v106 + 80) + 16) & ~*(v106 + 80);
      v37 = swift_allocObject();
      sub_21C85B92C(&v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_21C85BEBC;
      *(v38 + 24) = v37;
      v39 = &v32[*(v94 + 36)];
      *v39 = KeyPath;
      v39[1] = sub_21C85BEC4;
      v39[2] = v38;
      sub_21C85BD3C(v32, v99);
      swift_storeEnumTagMultiPayload();
      sub_21C85B574();
      v40 = sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
      v113 = v108;
      v114 = v40;
      swift_getOpaqueTypeConformance2();
      v41 = v101;
      sub_21CB83494();
      sub_21C6EDBAC(v41, v102, &qword_27CDEE358, &qword_21CBA99C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE370, &qword_21CBA99D0);
      sub_21C85B768(&qword_27CDEE350, &qword_27CDEE358, &qword_21CBA99C8, sub_21C85B574);
      sub_21C85B84C();
      v42 = v103;
      sub_21CB83494();
      sub_21C6EA794(v41, &qword_27CDEE358, &qword_21CBA99C8);
      sub_21C6EDBAC(v42, v111, &qword_27CDEE348, &qword_21CBA99C0);
      swift_storeEnumTagMultiPayload();
      sub_21C85B6B0();
      sub_21CB83494();
      sub_21C6EA794(v42, &qword_27CDEE348, &qword_21CBA99C0);
      return sub_21C85BBE4(v32);
    }
  }

  return result;
}

uint64_t sub_21C85A7EC()
{
  v1 = v0;
  v2 = type metadata accessor for PMOnboardingRootView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = (v1 + *(v3 + 52));
  v12 = *v10;
  v11 = v10[1];
  v23 = v12;
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D54();
  v13 = *(v22 + 16);
  if (!v13)
  {

    return sub_21C8595D8();
  }

  v14 = *(v22 + v13 + 31);

  if (v14 <= 1)
  {
    if (v14)
    {
      v15 = sub_21CB858E4();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      sub_21C85B8C8(v1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_21CB858B4();
      v16 = sub_21CB858A4();
      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D85700];
      *(v18 + 16) = v16;
      *(v18 + 24) = v19;
      sub_21C85B92C(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
      sub_21C98B308(0, 0, v9, &unk_21CBA9AA8, v18);
    }

    return sub_21C8595D8();
  }

  if (v14 == 4)
  {
    return sub_21C8595D8();
  }

  result = sub_21CB861C4();
  __break(1u);
  return result;
}

void sub_21C85AA74(uint64_t a1)
{
  v2 = type metadata accessor for PMOnboardingRootView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (a1 + *(v3 + 52));
  v8 = *v6;
  v7 = v6[1];
  aBlock = v8;
  v18 = v7;
  v23 = &unk_282E48CD8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D64();
  v9 = *(a1 + *(v3 + 44));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v10 = sub_21C725C3C(v9, aBlock);

  sub_21C85B8C8(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_21C85B92C(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = *&v10[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager];
  if (v13)
  {
    v21 = sub_21C85BAEC;
    v22 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_21C85B33C;
    v20 = &block_descriptor_7;
    v14 = _Block_copy(&aBlock);

    [v13 requestStatusWithCompletionHandler_];

    _Block_release(v14);
  }

  else
  {
  }

  sub_21CB86544();
  v15 = sub_21C725C3C(v9, aBlock);

  [*&v15[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager] removeDeliveredTakeATourNotification];
}

uint64_t sub_21C85AD0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for PMOnboardingRootView() + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE388, &qword_21CBA99D8);
  return sub_21CB84D64();
}

uint64_t sub_21C85AD74()
{
  v1 = v0;
  v2 = type metadata accessor for PMOnboardingRootView();
  v3 = (v0 + *(v2 + 44));
  v10 = *v3;
  v12 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE2D8, &qword_21CBA9998);
  sub_21CB84D54();
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = *(v9 + v4 + 31);

    if ((v5 - 1) < 3)
    {
LABEL_3:
      v11 = *(v1 + *(v2 + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE388, &qword_21CBA99D8);
      sub_21CB84D54();
      if ((v9 - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        return 4;
      }

      return 5;
    }

    if (!v5)
    {
      v7 = [objc_opt_self() sharedFeatureManager];
      v8 = [v7 shouldAutoFillPasswordsFromKeychain];

      if (!v8)
      {
        return 1;
      }

      goto LABEL_3;
    }
  }

  else
  {
  }

  return 5;
}

void sub_21C85AE9C(char a1)
{
  if (a1)
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v1 = sub_21CB81C84();
    __swift_project_value_buffer(v1, qword_27CE186E0);
    oslog = sub_21CB81C64();
    v2 = sub_21CB85B14();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "User granted permission to send notifications";
LABEL_10:
      _os_log_impl(&dword_21C6E5000, oslog, v2, v4, v3, 2u);
      MEMORY[0x21CF16D90](v3, -1, -1);
    }
  }

  else
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    oslog = sub_21CB81C64();
    v2 = sub_21CB85B14();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "User did not grant permission to send notifications";
      goto LABEL_10;
    }
  }
}

uint64_t sub_21C85B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_21CB858B4();
  v4[19] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_21C85B0A4, v6, v5);
}

uint64_t sub_21C85B0A4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_21C85B1CC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C7A1808;
  v0[13] = &block_descriptor_70;
  v0[14] = v2;
  [v1 requestToTurnOnCredentialProviderExtensionWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C85B1CC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C85B2D4, v2, v1);
}

uint64_t sub_21C85B2D4()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_21C8595D8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_21C85B33C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t getEnumTagSinglePayload for PMOnboardingRootView.NavigationLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMOnboardingRootView.NavigationLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21C85B4FC()
{
  result = qword_27CDEE2C0;
  if (!qword_27CDEE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE2C0);
  }

  return result;
}

unint64_t sub_21C85B574()
{
  result = qword_27CDEE310;
  if (!qword_27CDEE310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE300, &qword_21CBA99A8);
    sub_21C705EF8(&qword_27CDEE318, type metadata accessor for PMAppOnboardingView);
    sub_21C6EADEC(&qword_27CDEE320, &qword_27CDEE328, &qword_21CBA99B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE310);
  }

  return result;
}

unint64_t sub_21C85B65C()
{
  result = qword_27CDEE330;
  if (!qword_27CDEE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE330);
  }

  return result;
}

unint64_t sub_21C85B6B0()
{
  result = qword_27CDEE340;
  if (!qword_27CDEE340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE348, &qword_21CBA99C0);
    sub_21C85B768(&qword_27CDEE350, &qword_27CDEE358, &qword_21CBA99C8, sub_21C85B574);
    sub_21C85B84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE340);
  }

  return result;
}

uint64_t sub_21C85B768(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    type metadata accessor for PMOnboardingView(255);
    sub_21C705EF8(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C85B84C()
{
  result = qword_27CDEE368;
  if (!qword_27CDEE368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE370, &qword_21CBA99D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE368);
  }

  return result;
}

uint64_t sub_21C85B8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOnboardingRootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85B92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOnboardingRootView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C85B990()
{
  v1 = *(type metadata accessor for PMOnboardingRootView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C85AA74(v2);
}

unint64_t sub_21C85B9F0()
{
  result = qword_27CDEE380;
  if (!qword_27CDEE380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE2D0, &qword_21CBA9990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE2C8, &qword_21CBA9988);
    sub_21C6EADEC(&qword_27CDEE378, &qword_27CDEE2C8, &qword_21CBA9988);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE380);
  }

  return result;
}

uint64_t sub_21C85BAEC(uint64_t a1)
{
  v3 = *(type metadata accessor for PMOnboardingRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C85AD0C(a1, v4);
}

uint64_t sub_21C85BB64@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMOnboardingRootView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C85990C(a1, v6, a2);
}

uint64_t sub_21C85BBE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C85BC4C(uint64_t a1)
{
  v2 = type metadata accessor for PMOnboardingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C85BD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE300, &qword_21CBA99A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85BDAC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMOnboardingRootView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C85B00C(a1, v6, v7, v1 + v5);
}

id sub_21C85BFB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMAddGroupMembersView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21C85C05C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v2, 0);
    v3 = v16;
    v4 = (v1 + 72);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v15 = v3;
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_21C7B0C0C((v8 > 1), v7 + 1, 1);
      }

      *(v3 + 16) = v7 + 1;
      v9 = v3 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 14;
      --v2;
    }

    while (v2);
  }

  sub_21CB009AC(v3);

  v10 = objc_allocWithZone(PMSharedAccountsGroupMemberPickerViewController);
  v11 = sub_21CB859D4();

  v12 = [v10 initWithAlreadyAddedAddresses_];

  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE488, &unk_21CBA9C50);
  sub_21CB83C84();
  [v12 setDelegate_];

  return v13;
}

uint64_t sub_21C85C1FC(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_21CB823B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAddGroupMembersView();
  sub_21C7B8998(a1 + *(v16 + 24), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21CB823A4();
  return (*(v12 + 8))(v15, v11);
}

id sub_21C85C474@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_21C85CAFC(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_21C85CB60(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = type metadata accessor for PMAddGroupMembersView.Coordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_selection];
  *v12 = v7;
  *(v12 + 1) = v6;
  v13 = &v11[OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_dismissAction];
  *v13 = sub_21C85CBC4;
  v13[1] = v9;
  v15.receiver = v11;
  v15.super_class = v10;

  result = objc_msgSendSuper2(&v15, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_21C85C5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C85CAB8(&qword_27CDEE478);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C85C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C85CAB8(&qword_27CDEE478);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C85C6BC()
{
  sub_21C85CAB8(&qword_27CDEE478);
  sub_21CB83B44();
  __break(1u);
}

char *sub_21C85C700(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_16;
  }

  v3 = [objc_opt_self() sharedManager];
  sub_21C6E8F4C(0, &qword_27CDEE438, 0x277CFBCA0);

  v4 = sub_21CB85814();

  v5 = [v3 groupMemberDataForRecipients_];

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v6 = sub_21CB85824();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:

    v10 = MEMORY[0x277D84F90];
LABEL_15:
    v18 = *(v2 + OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_selection);
    v19 = *(v2 + OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_selection + 8);

    v18(v10);

LABEL_16:
    v20 = *(v2 + OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_dismissAction);
    v21 = *(v2 + OBJC_IVAR____TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator_dismissAction + 8);

    v20(v22);
  }

  v7 = sub_21CB85FA4();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  v25 = MEMORY[0x277D84F90];
  result = sub_21C7B11CC(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v23 = v3;
    v24 = v2;
    v9 = 0;
    v10 = v25;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CF15BD0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      sub_21C9DCC64(v11, v26);

      v13 = v27;
      v14 = v28;

      sub_21C7A344C(v26);
      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21C7B11CC((v15 > 1), v16 + 1, 1);
      }

      ++v9;
      *(v25 + 16) = v16 + 1;
      v17 = v25 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
    }

    while (v7 != v9);

    v3 = v23;
    v2 = v24;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for PMAddGroupMembersView()
{
  result = qword_27CDEE448;
  if (!qword_27CDEE448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C85C9E8()
{
  sub_21C6E9428();
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21C721A6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C85CAB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PMAddGroupMembersView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C85CAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddGroupMembersView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85CB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAddGroupMembersView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85CBC4()
{
  v1 = *(type metadata accessor for PMAddGroupMembersView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C85C1FC(v2);
}

void sub_21C85CC4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21C85CCB0(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 48);
    v2 = *(result + 32);
    v3 = *(result + 112);
    v4 = *(result + 120);
    v5 = *(result + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
    sub_21CB81F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    sub_21CB84F34();
  }

  return result;
}

uint64_t sub_21C85CD7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21C85CDBC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C74A72C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_21C85CE00()
{
  result = qword_27CDEE510;
  if (!qword_27CDEE510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4C0, &qword_21CBA9CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4B8, &qword_21CBA9CC0);
    sub_21C72ECB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE510);
  }

  return result;
}

unint64_t sub_21C85CF38()
{
  result = qword_27CDEE520;
  if (!qword_27CDEE520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE518, &qword_21CBA9D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE520);
  }

  return result;
}

uint64_t sub_21C85CFB4()
{
  v1 = *(type metadata accessor for PMSearchable() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C85CCB0(v2);
}

unint64_t sub_21C85D014()
{
  result = qword_27CDEE540;
  if (!qword_27CDEE540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE528, &qword_21CBA9D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4E0, &qword_21CBA9CE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4D8, &qword_21CBA9CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE518, &qword_21CBA9D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE4D0, &qword_21CBA9CD8);
    sub_21C85CE00();
    swift_getOpaqueTypeConformance2();
    sub_21C85CF38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE540);
  }

  return result;
}

uint64_t sub_21C85D1C0@<X0>(uint64_t a1@<X8>)
{
  v21 = *v1;
  v22 = v1[1];
  sub_21C71F3FC();

  v3 = sub_21CB84054();
  v5 = v4;
  v7 = v6;
  sub_21CB83EB4();
  v8 = sub_21CB84024();
  v10 = v9;
  v12 = v11;

  sub_21C74A72C(v3, v5, v7 & 1);

  v13 = sub_21CB83FD4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_21C74A72C(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

BOOL static audit_token_t.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != a7)
  {
    return 0;
  }

  v8 = (a8 ^ a4) >> 32 == 0;
  if (a4 != a8)
  {
    v8 = 0;
  }

  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a1 != a5)
  {
    v8 = 0;
  }

  return !((a7 ^ a3) >> 32) && v8;
}

double sub_21C85D35C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v7 = v1;
  sub_21C85F27C();
  sub_21CB810D4();

  v3 = v1[2];
  v7 = v1[1];
  v8[0] = v3;
  *(v8 + 11) = *(v1 + 43);
  sub_21C82EA84(&v7, &v6);
  v4 = v8[0];
  *a1 = v7;
  a1[1] = v4;
  result = *(v8 + 11);
  *(a1 + 27) = *(v8 + 11);
  return result;
}

uint64_t sub_21C85D3F8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9 = v3;
  sub_21C85F27C();
  sub_21CB810D4();

  v4 = v3[2];
  v5 = *(v3 + 43);
  v9 = v3[1];
  v10[0] = v4;
  *(v10 + 11) = v5;
  *(a2 + 27) = v5;
  v6 = v3[2];
  *a2 = v3[1];
  a2[1] = v6;
  return sub_21C82EA84(&v9, &v8);
}

uint64_t sub_21C85D490(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  *v5 = a1[1];
  *&v5[11] = *(a1 + 27);
  v2 = *a2;
  swift_getKeyPath();
  sub_21C85F27C();
  sub_21CB810C4();
}

uint64_t sub_21C85D53C(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v5;
  *(a1 + 43) = *(a2 + 27);
  sub_21C82EA84(a2, &v7);
}

uint64_t sub_21C85D5B0()
{
  swift_getKeyPath();
  sub_21C85F27C();
  sub_21CB810D4();

  return *(v0 + 59);
}

uint64_t sub_21C85D620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C85F27C();
  sub_21CB810D4();

  *a2 = *(v3 + 59);
  return result;
}

uint64_t sub_21C85D698(char a1)
{
  if (*(v1 + 59) == (a1 & 1))
  {
    *(v1 + 59) = a1 & 1;
    swift_getKeyPath();
    v5[0] = v1;
    sub_21C85F27C();
    sub_21CB810D4();

    sub_21C85EF6C(*(v1 + 59), v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CB810C4();
    sub_21C85F75C(v5);
  }

  else
  {
    v2 = swift_getKeyPath();
    MEMORY[0x28223BE20](v2);
    v5[0] = v1;
    sub_21C85F27C();
    sub_21CB810C4();
  }
}

uint64_t sub_21C85D850(uint64_t a1, char a2)
{
  *(a1 + 59) = a2;
  swift_getKeyPath();
  v4[0] = a1;
  sub_21C85F27C();
  sub_21CB810D4();

  sub_21C85EF6C(*(a1 + 59), v4);
  swift_getKeyPath();
  v4[7] = a1;
  sub_21CB810C4();
  sub_21C85F75C(v4);
}

uint64_t sub_21C85D954()
{
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);
  v2 = *(v0 + 6);

  sub_21C6EA794(&v0[OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage], &unk_27CDF2CA0, &unk_21CBA5520);
  v4 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider___observationRegistrar;
  v5 = sub_21CB81114();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_21C85DA34@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  *&v8 = v3;
  sub_21C85F27C();
  sub_21CB810D4();

  v4 = v3[2];
  v8 = v3[1];
  v9[0] = v4;
  *(v9 + 11) = *(v3 + 43);
  sub_21C82EA84(&v8, &v7);
  v5 = v9[0];
  *a1 = v8;
  a1[1] = v5;
  result = *(v9 + 11);
  *(a1 + 27) = *(v9 + 11);
  return result;
}

uint64_t sub_21C85DAD0@<X0>(uint64_t a1@<X8>)
{
  sub_21CB813A4();
  v2 = sub_21CB813C4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_21C85DBC4()
{
  v1 = v0;
  v2 = sub_21CB80B74();
  v3 = [objc_opt_self() criteriaForExactFQDNPasswordMatchesOfURL_];

  v4 = objc_allocWithZone(MEMORY[0x277D49B70]);
  v5 = sub_21CB85584();
  v6 = [v4 initWithString:v5 matchingType:1];

  [v3 setUserNameQuery_];
  [v3 setOptions_];
  v7 = [objc_opt_self() sharedStore];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21C85F70C;
  *(v9 + 24) = v8;
  v14[4] = sub_21C85F714;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21C85EB8C;
  v14[3] = &block_descriptor_8;
  v10 = _Block_copy(v14);
  v11 = v3;
  v12 = v1;

  [v7 getSavedAccountsMatchingCriteria:v11 withSynchronousCompletionHandler:v10];
  _Block_release(v10);

  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

id sub_21C85DED0()
{
  v1 = _s18PresentationSourceOMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  v7 = _s21ConfigurationProviderCMa_0(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v12 = type metadata accessor for PMOsloBadge(0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  sub_21CB81104();
  *(v10 + 59) = 0;
  sub_21C85EF6C(0, &v23);
  v13 = v24[0];
  *(v10 + 16) = v23;
  *(v10 + 32) = v13;
  *(v10 + 43) = *(v24 + 11);
  *&v0[v6] = v10;
  v22.receiver = v0;
  v22.super_class = PMSafariStreamlinedStrongPasswordViewController;
  v14 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v21[3] = v1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_21C85F374(v4, boxed_opaque_existential_0);
  v17 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource;
  swift_beginAccess();
  v18 = v14;
  sub_21C85F3D8(v21, v14 + v17);
  swift_endAccess();

  return v18;
}

id PMSafariStreamlinedStrongPasswordViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PMSafariStreamlinedStrongPasswordViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  v3 = _s21ConfigurationProviderCMa_0(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v8 = type metadata accessor for PMOsloBadge(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  sub_21CB81104();
  *(v6 + 59) = 0;
  sub_21C85EF6C(0, &v10);
  v9 = v11[0];
  *(v6 + 16) = v10;
  *(v6 + 32) = v9;
  *(v6 + 43) = *(v11 + 11);
  *(v0 + v2) = v6;
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariStreamlinedStrongPasswordViewController.loadView()()
{
  v1 = [objc_opt_self() sharedLogger];
  [v1 didSurfaceNewStrongPasswordView];

  v2 = *&v0[OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider];
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_21C6EDBAC(v13, v12, &unk_27CDFA2C0, &unk_21CBA68A0);
  v5 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v13, &unk_27CDFA2C0, &unk_21CBA68A0);
  v15[0] = sub_21C85F118;
  v15[1] = v3;
  v15[2] = sub_21C85F120;
  v15[3] = v4;
  v18 = v2;
  v19 = 0;
  sub_21C6EA794(v20, &qword_27CDF3260, &qword_21CBAF450);
  v20[5] = 0;
  sub_21C6EDBAC(&v9, v20, &unk_27CDFA2C0, &unk_21CBA68A0);
  v16 = 0u;
  v17 = 0u;
  v6 = objc_opt_self();
  v20[6] = [v6 biometryType];
  LOBYTE(v6) = [v6 isPad];
  sub_21C6EA794(&v9, &unk_27CDFA2C0, &unk_21CBA68A0);
  v21 = v6;
  sub_21C6EDBAC(v15, &v9, &qword_27CDEE568, &qword_21CBA9E30);
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE570, &qword_21CBA9E38));
  v8 = sub_21CB827D4();
  sub_21C6EA794(v15, &qword_27CDEE568, &qword_21CBA9E30);
  [v5 setView_];
}

void sub_21C85E600(uint64_t a1, id a2)
{
  if (a1 == 1)
  {
    v5 = [a2 delegate];
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 streamlinedStrongPasswordViewControllerDeclinedStrongPassword_];
      }

      swift_unknownObjectRelease();
    }

    oslog = [objc_opt_self() sharedLogger];
    [oslog didSelectXForNewStrongPassword];
  }

  else if (a1 == 8)
  {
    v3 = [a2 delegate];
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        [v4 streamlinedStrongPasswordViewController:a2 shouldFillStrongPasswordWithFormat:0];
      }

      swift_unknownObjectRelease();
    }

    oslog = [objc_opt_self() sharedLogger];
    [oslog didSelectNewStrongPassword];
  }

  else
  {
    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE18550);
    oslog = sub_21CB81C64();
    v8 = sub_21CB85AF4();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      type metadata accessor for PMSafariAutoFillStrongPasswordViewAction(0);
      v11 = sub_21CB85624();
      v13 = sub_21C98E004(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21C6E5000, oslog, v8, "Performing unspecified action in streamlined strong password view: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);

      return;
    }
  }
}

id sub_21C85E8A0(int a1, id a2)
{
  result = [a2 delegate];
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 streamlinedStrongPasswordViewController:a2 shouldFillStrongPasswordWithFormat:0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id PMSafariStreamlinedStrongPasswordViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_21C85EAC8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 matchesForPasswordAutoFill];
    sub_21C6E8F4C(0, &qword_27CDEE5A8, 0x277D49B38);
    v4 = sub_21CB85824();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(a2 + OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider);
  if (v4 >> 62)
  {
    v6 = sub_21CB85FA4();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_21C85D698(v6 == 0);
}

void sub_21C85EB8C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v4(a2);
}

uint64_t sub_21C85EBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s18PresentationSourceOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5D0, &unk_21CBA9F80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v18 = &v33 + *(v17 + 56) - v15;
  sub_21C85F89C(a1, &v33 - v15);
  sub_21C85F89C(a2, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v16, 1, v19) == 1)
  {
    if (v20(v18, 1, v19) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v36 = v8;
  v22 = v4;
  sub_21C85F89C(v16, v12);
  v23 = *(v19 + 48);
  v24 = *&v12[v23 + 8];
  v35 = *&v12[v23];
  if (v20(v18, 1, v19) == 1)
  {

    (*(v5 + 8))(v12, v22);
LABEL_6:
    sub_21C6EA794(v16, &qword_27CDEE5D0, &unk_21CBA9F80);
    return 0;
  }

  v25 = v24;
  v26 = *&v18[v23 + 8];
  v34 = *&v18[v23];
  v27 = v22;
  v28 = v36;
  (*(v5 + 32))();
  v29 = sub_21CB80B84();
  v30 = *(v5 + 8);
  v30(v12, v27);
  if (v29)
  {
    if (v35 == v34 && v25 == v26)
    {

      v30(v28, v27);
      goto LABEL_3;
    }

    v32 = sub_21CB86344();

    v30(v28, v27);
    if (v32)
    {
LABEL_3:
      sub_21C85F900(v16);
      return 1;
    }
  }

  else
  {
    v30(v28, v27);
  }

  sub_21C85F900(v16);
  return 0;
}

double sub_21C85EF6C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  v12(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5B0, &unk_21CBA9F30);
  v16 = swift_allocObject();
  *&result = 2;
  *(v16 + 16) = xmmword_21CBA15B0;
  *(v16 + 32) = a1;
  *(v16 + 33) = 2;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = 0;
  *(a2 + 42) = 0;
  return result;
}

void sub_21C85F130()
{
  sub_21C85F210();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21C85F210()
{
  if (!qword_27CDEE588)
  {
    type metadata accessor for PMOsloBadge(255);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE588);
    }
  }
}

unint64_t sub_21C85F27C()
{
  result = qword_27CDEE598;
  if (!qword_27CDEE598)
  {
    _s21ConfigurationProviderCMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE598);
  }

  return result;
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

uint64_t sub_21C85F374(uint64_t a1, uint64_t a2)
{
  v4 = _s18PresentationSourceOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85F3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D90, &qword_21CBA9F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_21C85F448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s18PresentationSourceOMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  v11 = &v3[OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  v13 = _s21ConfigurationProviderCMa_0(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v18 = type metadata accessor for PMOsloBadge(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  sub_21CB81104();
  *(v16 + 59) = 0;
  sub_21C85EF6C(0, &v32);
  v19 = v33[0];
  *(v16 + 16) = v32;
  *(v16 + 32) = v19;
  *(v16 + 43) = *(v33 + 11);
  *&v3[v12] = v16;
  v31.receiver = v3;
  v31.super_class = PMSafariStreamlinedStrongPasswordViewController;
  v20 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE5A0, &qword_21CBA9EF8);
  v22 = &v10[*(v21 + 48)];
  v23 = sub_21CB80BE4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v10, a1, v23);
  *v22 = a2;
  *(v22 + 1) = a3;
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  v30[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  sub_21C85F374(v10, boxed_opaque_existential_0);
  v26 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource;
  swift_beginAccess();
  v27 = v20;

  sub_21C85F3D8(v30, v20 + v26);
  swift_endAccess();
  sub_21C85DBC4();

  (*(v24 + 8))(a1, v23);
  return v27;
}

uint64_t sub_21C85F714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21C85F7D8()
{
  sub_21C85F830();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_21C85F830()
{
  if (!qword_27CDEE5C8)
  {
    sub_21CB80BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDEE5C8);
    }
  }
}

uint64_t sub_21C85F89C(uint64_t a1, uint64_t a2)
{
  v4 = _s18PresentationSourceOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C85F900(uint64_t a1)
{
  v2 = _s18PresentationSourceOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PMMiniPasswordsIsMenuBarExtra.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CDEE5D8 = a1;
  return result;
}

uint64_t sub_21C85FA5C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CDEE5D8;
  return result;
}

uint64_t EnvironmentValues.isMenuBarExtra.getter()
{
  sub_21C85FAE4();
  sub_21CB82F94();
  return v1;
}

unint64_t sub_21C85FAE4()
{
  result = qword_27CDEE5E0;
  if (!qword_27CDEE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE5E0);
  }

  return result;
}

uint64_t (*EnvironmentValues.isMenuBarExtra.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_21C85FAE4();
  sub_21CB82F94();
  *(a1 + 16) = *(a1 + 17);
  return sub_21C85FBDC;
}

uint64_t sub_21C85FBDC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_21CB82FA4();
}

uint64_t sub_21C85FC24()
{
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_21C85FCDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21C85FD9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C85FEE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v4 = sub_21CB85114();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21C85FFDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85114();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_21C864DFC(&qword_27CDEE658, MEMORY[0x277CDF0E0]);
  v10 = sub_21CB85574();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
    sub_21CB810C4();
  }

  return (v11)(a1, v4);
}

uint64_t sub_21C86025C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_21C8602F8()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v51 = v1;
  v52 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v50 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMWiFiNetwork();
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v48 - v9;
  v57 = sub_21CB80F64();
  v55 = *(v57 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v49 = (v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v48 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel___observationRegistrar;
  v63 = v0;
  v18 = sub_21C864DFC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel);
  sub_21CB810D4();

  v63 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks];
  swift_bridgeObjectRetain_n();
  sub_21C862FC4(&v63);

  v19 = v63;
  v66 = v63;
  swift_getKeyPath();
  v63 = v0;
  v60 = v17;
  sub_21CB810D4();

  v58 = &v0[OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText];
  v20 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8];
  v21 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText] & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v20) & 0xF;
  }

  v53 = v0;
  if (!v21)
  {
    v10 = v19;
    v18 = *(v0 + 2);
    v40 = qword_27CDEA4C0;

    if (v40 != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v22 = *(v19 + 2);

  v55 = v22;
  if (!v22)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_26:

    return sub_21C8617B8(v16, &OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks, sub_21C967BCC);
  }

  v57 = v18;
  v24 = 0;
  v48[1] = "_selectedNetworkIDs";
  v16 = MEMORY[0x277D84F90];
  v25 = v53;
  v49 = (v52 + 8);
  v52 = v5;
  v54 = v23;
  while (v24 < *(v23 + 16))
  {
    v26 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v18 = *(v56 + 72);
    sub_21C84BF7C(v23 + v26 + v18 * v24, v10);
    v27 = *(v10 + 3);
    v63 = *(v10 + 2);
    v64 = v27;
    swift_getKeyPath();
    v61 = v25;

    sub_21CB810D4();

    v28 = *(v58 + 1);
    v61 = *v58;
    v62 = v28;
    sub_21C71F3FC();
    v29 = sub_21CB85EC4();

    if (v29)
    {
      goto LABEL_17;
    }

    if (v10[*(v5 + 36)])
    {
      v30 = v50;
LABEL_14:
      sub_21CB81014();
      v31 = sub_21CB81004();
      v33 = v32;
      (*v49)(v30, v51);
      goto LABEL_16;
    }

    if (v10[*(v5 + 52)])
    {
      v30 = v50;
      goto LABEL_14;
    }

    v31 = PMWiFiNetwork.localizedSecurityType.getter();
    v33 = v34;
LABEL_16:
    v63 = v31;
    v64 = v33;
    swift_getKeyPath();
    v25 = v53;
    v61 = v53;
    sub_21CB810D4();

    v35 = *(v58 + 1);
    v61 = *v58;
    v62 = v35;
    v36 = sub_21CB85EC4();

    v5 = v52;
    if (v36)
    {
LABEL_17:
      sub_21C6F0E30(v10, v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21C7B1204(0, *(v16 + 2) + 1, 1);
        v16 = v65;
      }

      v39 = *(v16 + 2);
      v38 = *(v16 + 3);
      if (v39 >= v38 >> 1)
      {
        sub_21C7B1204(v38 > 1, v39 + 1, 1);
        v16 = v65;
      }

      *(v16 + 2) = v39 + 1;
      sub_21C6F0E30(v59, &v16[v26 + v39 * v18]);
      goto LABEL_7;
    }

    sub_21C864EF0(v10);
LABEL_7:
    ++v24;
    v23 = v54;
    if (v55 == v24)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_23:
  sub_21CB86544();
  sub_21C746438(v18, v63);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((*(v56 + 48))(v16, 1, v5) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEE678, &unk_21CBBA210);
    v16 = v10;
  }

  else
  {
    v42 = *v16;
    v43 = *(v16 + 1);

    v44 = sub_21C864EF0(v16);
    v63 = v42;
    v64 = v43;
    MEMORY[0x28223BE20](v44);
    v48[-2] = &v63;
    v16 = v10;
    sub_21C862ED4(sub_21C864F4C, &v48[-4], v10, type metadata accessor for PMWiFiNetwork);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      v47 = v49;
      sub_21CB80F54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE680, &qword_21CBAA1C0);
      sub_21C6EADEC(&qword_27CDEE688, &qword_27CDEE680, &qword_21CBAA1C0);
      sub_21CB85564();
      (*(v55 + 8))(v47, v57);
      v16 = v66;
    }
  }

  return sub_21C8617B8(v16, &OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks, sub_21C967BCC);
}