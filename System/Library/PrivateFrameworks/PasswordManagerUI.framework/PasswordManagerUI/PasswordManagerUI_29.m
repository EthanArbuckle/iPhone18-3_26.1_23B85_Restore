uint64_t sub_21CA25394()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CA2549C, v2, v1);
}

uint64_t sub_21CA2549C()
{
  v1 = v0[32];

  v2 = v0[18];
  if (v2)
  {
    v3 = v0[20];
    v4 = *(v3 + 24);
    if (v4)
    {
      v5 = *(v3 + 32);
      v7 = v0[29];
      v6 = v0[30];
      v8 = v0[26];
      v9 = v0[27];
      v11 = v0[23];
      v10 = v0[24];
      *v9 = v2;
      swift_storeEnumTagMultiPayload();
      v12 = (v6 + v7[7]);
      *v12 = 0u;
      v12[1] = 0u;
      sub_21CA25B14(v9, v6 + v7[6], type metadata accessor for PMAccount.Storage);
      v13 = v7[5];
      sub_21C71DD5C(v4);
      v14 = v2;
      sub_21C7C8A3C(v6 + v13);
      sub_21CA25B14(v6 + v13, v10, type metadata accessor for PMAccount.UniqueID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = v0[24];
      if (EnumCaseMultiPayload == 1)
      {
        v17 = v0[21];
        sub_21CA25B7C(v16, v17, type metadata accessor for PMAccount.SIWAUniqueID);
        v18 = sub_21C7CE99C();
        v20 = v19;
        v21 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v17 = v0[22];
        sub_21CA25B7C(v16, v17, type metadata accessor for PMAccount.CombinedUniqueID);
        v18 = sub_21C7CE408();
        v20 = v31;
        v21 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21CA25BE4(v17, v21);
      v32 = v0[30];
      sub_21CA25BE4(v0[27], type metadata accessor for PMAccount.Storage);
      *v32 = v18;
      v32[1] = v20;
      v4(v32);
      sub_21C71B710(v4);

      sub_21CA25BE4(v32, type metadata accessor for PMAccount);
    }

    else
    {
    }

    v34 = v0[30];
    v33 = v0[31];
    v36 = v0[27];
    v35 = v0[28];
    v38 = v0[24];
    v37 = v0[25];
    v40 = v0[21];
    v39 = v0[22];

    v30 = v0[1];
  }

  else
  {
    sub_21CA25C44();
    swift_allocError();
    v23 = v0[30];
    v22 = v0[31];
    v25 = v0[27];
    v24 = v0[28];
    v27 = v0[24];
    v26 = v0[25];
    v28 = v0[22];
    v42 = v0[21];
    *v29 = 0;
    swift_willThrow();

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_21CA257B8(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 highLevelDomain];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CB855C4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a2 highLevelDomain];
  v10 = sub_21CB855C4();
  v12 = v11;

  if (!v8)
  {
    goto LABEL_28;
  }

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_21CB86344();

    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v15 = [v3 user];
  if (v15)
  {
    v16 = v15;
    v17 = sub_21CB855C4();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a2 username];
  v21 = sub_21CB855C4();
  v23 = v22;

  if (!v19)
  {
    goto LABEL_28;
  }

  if (v17 == v21 && v19 == v23)
  {

    goto LABEL_20;
  }

  v24 = sub_21CB86344();

  if (v24)
  {
LABEL_20:
    v25 = [v3 password];
    if (v25)
    {
      v26 = v25;
      v27 = sub_21CB855C4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v31 = [a2 password];
    v32 = sub_21CB855C4();
    v34 = v33;

    if (v29)
    {
      if (v27 == v32 && v29 == v34)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_21CB86344();
      }

      goto LABEL_29;
    }

LABEL_28:
    v30 = 0;
LABEL_29:

    return v30 & 1;
  }

LABEL_22:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_21CA25A3C()
{
  v2 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5438, &qword_21CBBDF58);
  return sub_21CB84D64();
}

uint64_t sub_21CA25A90()
{
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5468, &qword_21CBBDF68);
  return sub_21CB84D64();
}

uint64_t sub_21CA25B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA25B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA25BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CA25C44()
{
  result = qword_27CDF5478;
  if (!qword_27CDF5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5478);
  }

  return result;
}

uint64_t sub_21CA25C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21CA233A0(a1, v4, v5, v6, (v1 + 5));
}

uint64_t type metadata accessor for PMWiFiDetailsView()
{
  result = qword_27CDF5498;
  if (!qword_27CDF5498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA25DD0()
{
  sub_21CA25F14(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21CA25F14(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21CA25F14(319, &qword_27CDF54A8, type metadata accessor for PMWiFiDetailsModel, MEMORY[0x277CE12F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CA25F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21CA25FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v6[0] = a1;
  v6[1] = a2;
  v5 = a3;
  return a4(v6, &v5);
}

double sub_21CA26010@<D0>(_OWORD *a1@<X8>)
{
  sub_21C7D7AC0();
  sub_21CB82F94();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21CA26060(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21CA2BC2C;
    *(v4 + 24) = v3;
  }

  sub_21C71DD5C(v1);
  sub_21C7D7AC0();
  return sub_21CB82FA4();
}

uint64_t sub_21CA26148(uint64_t a1)
{
  v2 = sub_21CB82054();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82C04();
}

uint64_t sub_21CA26224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{

  sub_21CB84F74();
  sub_21CB81F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
  sub_21CB81F74();

  *(a8 + 88) = v21;
  *(a8 + 96) = v22;
  *(a8 + 104) = v23;
  *(a8 + 105) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v14 = *(v13 + 80);
  *(a8 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = v24;
  *(a8 + 40) = v25;
  *(a8 + 48) = v26;
  *(a8 + 56) = v27;
  *(a8 + 64) = a3;
  *(a8 + 72) = a4;
  *(a8 + 80) = 0;
  v15 = *(v13 + 76);

  a5(v16);
}

uint64_t sub_21CA263B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8);
  v6 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21C968B34(v4);
}

uint64_t sub_21CA26478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  sub_21C968B34(*a1);
  return sub_21C9685CC(v2, v3, v4);
}

uint64_t sub_21CA264C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode);
  return result;
}

uint64_t sub_21CA265A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = type metadata accessor for PMWiFiDetailsView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54B0, &qword_21CBBE108);
  v7 = *(v23[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v10 = v23 - v9;
  sub_21CA2B6EC(v2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiDetailsView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_21CA2B54C(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v24 = sub_21CA2B5B0;
  v25 = v12;
  v23[4] = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54B8, &qword_21CBBE110);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54C0, &qword_21CBBE118);
  v15 = sub_21C6EADEC(&qword_27CDF54C8, &qword_27CDF54B8, &qword_21CBBE110);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54D0, &qword_21CBBE120);
  v17 = sub_21CA2B5D0();
  v28 = v16;
  v29 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21CB84894();

  v19 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v20 = v24;
  type metadata accessor for PMWiFiDetailsModel();
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB81124();
  v27 = OpaqueTypeConformance2;
  v28 = v20;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  swift_getOpaqueTypeConformance2();
  v21 = v23[0];
  sub_21CB84394();

  (*(v7 + 8))(v10, v21);
}

uint64_t sub_21CA26914@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v87 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5500, &qword_21CBBE1A0);
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v76 = v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5508, &qword_21CBBE1A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = v73 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5510, &qword_21CBBE1B0);
  v10 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v77 = v73 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5518, &qword_21CBBE1B8);
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = v73 - v14;
  v15 = type metadata accessor for PMWiFiNetwork();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (v73 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5520, &qword_21CBBE1C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v82 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = v73 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5528, &qword_21CBBE1C8);
  v80 = *(v27 - 8);
  v28 = *(v80 + 64);
  MEMORY[0x28223BE20](v27);
  v81 = v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v73 - v31;
  v91 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5530, &qword_21CBBE1D0);
  sub_21C6EADEC(&qword_27CDF5538, &qword_27CDF5530, &qword_21CBBE1D0);
  v89 = v32;
  sub_21CB85054();
  v33 = *(type metadata accessor for PMWiFiDetailsView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v88 = a1;
  v78 = v33;
  sub_21CB85084();
  v34 = v92;
  swift_getKeyPath();
  v92 = v34;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v35 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v34 + v35, v21, type metadata accessor for PMWiFiNetwork);

  if (*(v21 + *(v15 + 36)) == 1)
  {
    sub_21CA2BCB4(v21, type metadata accessor for PMWiFiNetwork);
  }

  else
  {
    sub_21C807A74(v21);
    v37 = v36;
    sub_21CA2BCB4(v21, type metadata accessor for PMWiFiNetwork);
    if (v37)
    {

      v73[4] = v73;
      MEMORY[0x28223BE20](v38);
      v73[3] = &v73[-4];
      v73[-2] = v88;
      v39 = sub_21CB84AB4();
      sub_21CB85214();
      sub_21CB82374();
      v92 = v39;
      v93 = v98;
      LOBYTE(v94) = v99;
      v95 = v100;
      v96 = v101;
      v97 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5560, &qword_21CBBE1F0);
      sub_21CA2B89C();
      sub_21CB84494();

      v73[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5570, &qword_21CBBE1F8);
      v73[1] = sub_21CA2B920();
      v73[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC310, &unk_21CBA3F10);
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
      v42 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
      v92 = v41;
      v93 = MEMORY[0x277D837D0];
      v94 = v42;
      v95 = MEMORY[0x277D837E0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v44 = type metadata accessor for PMWiFiQRCodeView();
      v45 = sub_21CB83994();
      v46 = sub_21CA2BC6C(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
      v92 = v44;
      v93 = v45;
      v94 = v46;
      v95 = MEMORY[0x277CDE2B8];
      v47 = swift_getOpaqueTypeConformance2();
      v92 = v73[0];
      v93 = v40;
      v94 = OpaqueTypeConformance2;
      v95 = v47;
      swift_getOpaqueTypeConformance2();
      v48 = v74;
      sub_21CB85034();
      v49 = v48;
      v50 = v79;
      (*(v12 + 32))(v90, v49, v79);
      v51 = v50;
      v52 = 0;
      v53 = v85;
      goto LABEL_6;
    }
  }

  v52 = 1;
  v53 = v85;
  v51 = v79;
LABEL_6:
  v54 = 1;
  (*(v12 + 56))(v90, v52, 1, v51);
  v55 = v88;
  sub_21CB85084();
  v56 = v92;
  swift_getKeyPath();
  v92 = v56;
  sub_21CB810D4();

  v57 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v56 + v57, v18, type metadata accessor for PMWiFiNetwork);

  LOBYTE(v57) = v18[*(v15 + 36)];
  v58 = sub_21CA2BCB4(v18, type metadata accessor for PMWiFiNetwork);
  v59 = v84;
  v60 = v83;
  if ((v57 & 1) == 0)
  {
    MEMORY[0x28223BE20](v58);
    v73[-2] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5540, &unk_21CBBE1D8);
    sub_21CA2B76C();
    sub_21CA2B7C0();
    v61 = v76;
    sub_21CB85034();
    (*(v60 + 32))(v53, v61, v59);
    v54 = 0;
  }

  (*(v60 + 56))(v53, v54, 1, v59);
  v62 = v80;
  v63 = *(v80 + 16);
  v64 = v81;
  v63(v81, v89, v27);
  v65 = v27;
  v66 = v90;
  v67 = v82;
  sub_21C777948(v90, v82);
  v68 = v86;
  sub_21C6EDBAC(v53, v86, &qword_27CDF5508, &qword_21CBBE1A8);
  v69 = v87;
  v63(v87, v64, v65);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5558, &qword_21CBBE1E8);
  sub_21C777948(v67, &v69[*(v70 + 48)]);
  sub_21C6EDBAC(v68, &v69[*(v70 + 64)], &qword_27CDF5508, &qword_21CBBE1A8);
  sub_21C6EA794(v53, &qword_27CDF5508, &qword_21CBBE1A8);
  sub_21C6EA794(v66, &qword_27CDF5520, &qword_21CBBE1C0);
  v71 = *(v62 + 8);
  v71(v89, v65);
  sub_21C6EA794(v68, &qword_27CDF5508, &qword_21CBBE1A8);
  sub_21C6EA794(v67, &qword_27CDF5520, &qword_21CBBE1C0);
  return (v71)(v64, v65);
}

uint64_t sub_21CA27500@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - v6;
  v7 = type metadata accessor for PMWiFiDetailsView();
  v8 = (v7 - 8);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v38 = v11;
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v39 = *(v48 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v48);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC310, &unk_21CBA3F10);
  v17 = *(v16 - 8);
  v45 = v16;
  v46 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v40 = type metadata accessor for PMWiFiDetailsView;
  v41 = &v38 - v19;
  sub_21CA2B6EC(v2, v12, type metadata accessor for PMWiFiDetailsView);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_21CA2B54C(v12, v21 + v20);
  sub_21CB84DA4();
  v22 = v8[9];
  v23 = (v2 + v8[10]);
  v24 = v23[1];
  v49 = *v23;
  v50 = v24;
  v25 = *(v2 + v22);

  sub_21CB852C4();
  v26 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v27 = v48;
  sub_21CB845E4();

  (*(v39 + 8))(v15, v27);
  v28 = v2 + v8[8];
  v30 = v42;
  v29 = v43;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v44 + 8))(v30, v29);
  sub_21CA2B6EC(v2, v12, v40);
  v31 = swift_allocObject();
  sub_21CA2B54C(v12, v31 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5010, &qword_21CBBCED8);
  v49 = v48;
  v50 = MEMORY[0x277D837D0];
  v51 = v26;
  v52 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  v32 = type metadata accessor for PMWiFiQRCodeView();
  v33 = sub_21CB83994();
  v34 = sub_21CA2BC6C(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v52 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v35 = v45;
  v36 = v41;
  sub_21CB847B4();

  return (*(v46 + 8))(v36, v35);
}

uint64_t sub_21CA27A84@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v42 = *(v47 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v47);
  v40 = &v40 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54F0, &qword_21CBBE138);
  v44 = *(v46 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v40 - v6;
  v7 = sub_21CB83604();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54E0, &unk_21CBBE128);
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = type metadata accessor for PMWiFiNetwork();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF54D0, &qword_21CBBE120);
  v18 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v20 = &v40 - v19;
  v21 = *(type metadata accessor for PMWiFiDetailsView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v22 = a1;
  sub_21CB85084();
  v23 = v51;
  swift_getKeyPath();
  v51 = v23;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v24 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v23 + v24, v17, type metadata accessor for PMWiFiNetwork);

  LOBYTE(v23) = v17[*(v14 + 44)];
  v25 = sub_21CA2BCB4(v17, type metadata accessor for PMWiFiNetwork);
  if (v23)
  {
    v26 = sub_21C8F0690();
    v27 = v40;
    MEMORY[0x21CF131E0](v26, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v26);
    v28 = sub_21C6EADEC(&qword_27CDF54E8, &qword_27CDF54E0, &unk_21CBBE128);
    v49 = v9;
    v50 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v50 = v26;
    v30 = swift_getOpaqueTypeConformance2();
    v31 = v47;
    MEMORY[0x21CF13200](v27, v46, v47, OpaqueTypeConformance2, v30);
    (*(v42 + 8))(v27, v31);
  }

  else
  {
    MEMORY[0x28223BE20](v25);
    *(&v40 - 2) = v22;
    sub_21CB835E4();
    type metadata accessor for PMShareWiFiNetworkButton();
    sub_21CA2BC6C(&qword_27CDF54F8, type metadata accessor for PMShareWiFiNetworkButton);
    sub_21CB82194();
    v32 = sub_21C6EADEC(&qword_27CDF54E8, &qword_27CDF54E0, &unk_21CBBE128);
    v33 = v43;
    MEMORY[0x21CF131E0](v12, v9, v32);
    v49 = v9;
    v50 = v32;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = sub_21C8F0690();
    v49 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v50 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v46;
    MEMORY[0x21CF131F0](v33, v46, v47, v34, v36);
    (*(v44 + 8))(v33, v37);
    (*(v41 + 8))(v12, v9);
  }

  v38 = sub_21CA2B5D0();
  MEMORY[0x21CF131E0](v20, v45, v38);
  return sub_21C6EA794(v20, &qword_27CDF54D0, &qword_21CBBE120);
}

uint64_t sub_21CA280C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for PMWiFiDetailsView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v8 + v3, a1, type metadata accessor for PMWiFiNetwork);

  sub_21CB85084();
  v4 = sub_21C967FB4();

  v5 = type metadata accessor for PMShareWiFiNetworkButton();
  *(a1 + *(v5 + 20)) = v4 & 1;
  v6 = *(v5 + 24);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CA2825C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C90, &qword_21CBB26F0);
  v185 = *(v186 - 8);
  v3 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v183 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v198 = &v161 - v6;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BB8, &qword_21CBBE2B0);
  v7 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v166 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v167 = &v161 - v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5580, &unk_21CBBE2B8);
  v11 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v180 = &v161 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v164 = &v161 - v15;
  v165 = sub_21CB83ED4();
  v163 = *(v165 - 8);
  v16 = *(v163 + 64);
  MEMORY[0x28223BE20](v165);
  v162 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5588, &qword_21CBBE2C8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v182 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v197 = &v161 - v22;
  v201 = sub_21CB81024();
  v203 = *(v201 - 8);
  v23 = *(v203 + 64);
  MEMORY[0x28223BE20](v201);
  v25 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v161 - v27;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v29 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v31 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v200 = &v161 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v161 - v35;
  v187 = type metadata accessor for PMWiFiNetwork();
  v37 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v172 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v161 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5590, &qword_21CBBE2D8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v195 = &v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v161 - v46;
  v199 = *(type metadata accessor for PMWiFiDetailsView() + 24);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v48 = v213;
  swift_getKeyPath();
  v213 = v48;
  v190 = sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v49 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  v192 = type metadata accessor for PMWiFiNetwork;
  sub_21CA2B6EC(v48 + v49, v41, type metadata accessor for PMWiFiNetwork);

  v50 = *(v41 + 2);
  v51 = *(v41 + 3);

  v191 = type metadata accessor for PMWiFiNetwork;
  sub_21CA2BCB4(v41, type metadata accessor for PMWiFiNetwork);
  v52 = sub_21CA29FEC();
  v204 = a1;
  v194 = v47;
  sub_21CA26224(v50, v51, v52, v53, sub_21CA2BB74, &qword_27CDF5590, &qword_21CBBE2D8, v47);
  sub_21CB81014();
  v196 = sub_21CB81004();
  *&v177 = v54;
  v56 = v203 + 8;
  v55 = *(v203 + 8);
  v57 = v201;
  v55(v28, v201);
  sub_21CB81014();
  sub_21CB81014();
  v170 = sub_21CB80FF4();
  v169 = v58;
  v178 = v25;
  v55(v25, v57);
  v171 = v28;
  v59 = a1;
  v189 = v55;
  v203 = v56;
  v55(v28, v57);
  sub_21CB85084();
  v60 = v212;
  swift_getKeyPath();
  v212 = v60;
  sub_21CB810D4();

  v61 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v60 + v61, v41, v192);

  v62 = *(v41 + 3);
  v168 = *(v41 + 2);

  sub_21CA2BCB4(v41, v191);
  LOBYTE(v208) = 0;
  sub_21CB84D44();
  v63 = v211;
  v36[88] = v210;
  *(v36 + 12) = v63;
  LOBYTE(v208) = 0;
  sub_21CB84D44();
  v64 = v211;
  v36[104] = v210;
  *(v36 + 14) = v64;
  LOBYTE(v208) = 0;
  sub_21CB84D44();
  v65 = v211;
  v36[120] = v210;
  *(v36 + 16) = v65;
  LOBYTE(v208) = 0;
  sub_21CB84D44();
  v66 = v211;
  v36[136] = v210;
  *(v36 + 18) = v66;
  *(v36 + 19) = swift_getKeyPath();
  *(v36 + 20) = 0;
  v36[168] = 0;
  *(v36 + 22) = swift_getKeyPath();
  v36[184] = 0;
  v67 = v193;
  v68 = *(v193 + 116);
  *&v36[v68] = swift_getKeyPath();
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v69 = &v36[v67[30]];
  v70 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  v71 = sub_21CA2BC6C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  v175 = v70;
  v173 = v71;
  *v69 = sub_21CB823C4();
  v69[1] = v72;
  v73 = v67[31];
  v174 = type metadata accessor for PMWiFiDetailsModel();
  sub_21CB821F4();
  *&v36[v67[32]] = 0;
  v74 = &v36[v67[33]];
  *v74 = 0x707954656772616CLL;
  *(v74 + 1) = 0xE900000000000065;
  v75 = v177;
  *v36 = v196;
  *(v36 + 1) = v75;
  v76 = v169;
  *(v36 + 2) = v170;
  *(v36 + 3) = v76;
  *(v36 + 4) = v168;
  *(v36 + 5) = v62;
  *(v36 + 6) = 0;
  v36[56] = 1;
  *(v36 + 57) = 0;
  *(v36 + 8) = 0;
  *(v36 + 9) = 0;
  *&v77 = 257;
  v177 = v77;
  *(v36 + 20) = 257;
  *(v36 + 42) = 256;
  v196 = v36;
  v36[86] = 0;
  sub_21CB85084();
  v78 = v210;
  swift_getKeyPath();
  v210 = v78;
  sub_21CB810D4();

  v79 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  v80 = v78 + v79;
  v81 = v172;
  sub_21CA2B6EC(v80, v172, v192);

  v82 = *(v81 + 32);
  v83 = *(v81 + 40);

  sub_21CA2BCB4(v81, v191);
  v188 = v59;
  if (v83)
  {
    sub_21CB85084();
    v84 = v208;
    swift_getKeyPath();
    v208 = v84;
    sub_21CB810D4();

    v85 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
    swift_beginAccess();
    sub_21CA2B6EC(v84 + v85, v41, type metadata accessor for PMWiFiNetwork);

    LOBYTE(v84) = v41[*(v187 + 36)];
    sub_21CA2BCB4(v41, type metadata accessor for PMWiFiNetwork);
    if ((v84 & 1) == 0)
    {
      v202 = v82;
      v119 = v171;
      sub_21CB81014();
      v120 = v178;
      sub_21CB81014();
      v199 = sub_21CB80FF4();
      v192 = v121;
      v122 = v201;
      v123 = v189;
      v189(v120, v201);
      v123(v119, v122);
      sub_21CB81014();
      sub_21CB81014();
      v191 = sub_21CB80FF4();
      v125 = v124;
      v123(v120, v122);
      v123(v119, v122);
      v126 = v163;
      v127 = v162;
      v128 = v165;
      (*(v163 + 104))(v162, *MEMORY[0x277CE0A68], v165);
      v129 = *MEMORY[0x277CE0980];
      v130 = sub_21CB83DC4();
      v131 = *(v130 - 8);
      v132 = v164;
      (*(v131 + 104))(v164, v129, v130);
      (*(v131 + 56))(v132, 0, 1, v130);
      v133 = sub_21CB83E24();
      sub_21C6EA794(v132, &qword_27CDEBB58, &qword_21CBAF8A0);
      (*(v126 + 8))(v127, v128);
      v206 = 0;
      sub_21CB84D44();
      v134 = v209;
      v135 = v200;
      *(v200 + 88) = v208;
      *(v135 + 96) = v134;
      v206 = 0;
      sub_21CB84D44();
      v136 = v209;
      *(v135 + 104) = v208;
      *(v135 + 112) = v136;
      v206 = 0;
      sub_21CB84D44();
      v137 = v209;
      *(v135 + 120) = v208;
      *(v135 + 128) = v137;
      v206 = 0;
      sub_21CB84D44();
      v138 = v209;
      *(v135 + 136) = v208;
      *(v135 + 144) = v138;
      *(v135 + 152) = swift_getKeyPath();
      *(v135 + 160) = 0;
      *(v135 + 168) = 0;
      *(v135 + 176) = swift_getKeyPath();
      *(v135 + 184) = 0;
      v139 = v193;
      v140 = *(v193 + 116);
      *(v135 + v140) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v141 = (v135 + v139[30]);
      *v141 = sub_21CB823C4();
      v141[1] = v142;
      v143 = v135 + v139[31];
      sub_21CB821F4();
      *(v135 + v139[32]) = 0;
      v144 = (v135 + v139[33]);
      *v144 = 0x707954656772616CLL;
      v144[1] = 0xE900000000000065;
      v145 = v192;
      *v135 = v199;
      *(v135 + 8) = v145;
      *(v135 + 16) = v191;
      *(v135 + 24) = v125;
      *(v135 + 32) = v202;
      *(v135 + 40) = v83;
      *(v135 + 48) = v133;
      *(v135 + 56) = 1;
      *(v135 + 57) = 1;
      *(v135 + 64) = 0;
      *(v135 + 72) = 0;
      *(v135 + 80) = v177;
      *(v135 + 84) = 256;
      *(v135 + 86) = 0;
      v114 = &qword_27CDF1B78;
      v115 = &qword_21CBBE2D0;
      sub_21C6EDBAC(v135, v180, &qword_27CDF1B78, &qword_21CBBE2D0);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
      sub_21C943548();
      v117 = v197;
      sub_21CB83494();
      v118 = v135;
      goto LABEL_6;
    }
  }

  v86 = v171;
  sub_21CB81014();
  v87 = v178;
  sub_21CB81014();
  v192 = sub_21CB80FF4();
  v191 = v88;
  v89 = v201;
  v90 = v189;
  v189(v87, v201);
  v90(v86, v89);
  sub_21CB81014();
  sub_21CB81014();
  v172 = sub_21CB80FF4();
  v170 = v91;
  v90(v87, v89);
  v90(v86, v89);
  sub_21CB85084();
  v92 = v208;
  swift_getKeyPath();
  v208 = v92;
  sub_21CB810D4();

  v93 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v92 + v93, v41, type metadata accessor for PMWiFiNetwork);

  LODWORD(v92) = v41[*(v187 + 36)];
  sub_21CA2BCB4(v41, type metadata accessor for PMWiFiNetwork);
  sub_21CB81014();
  v94 = sub_21CB81004();
  v96 = v95;
  v189(v86, v201);
  v205 = 0;
  sub_21CB84D44();
  v97 = v207;
  v31[88] = v206;
  *(v31 + 12) = v97;
  v205 = 0;
  sub_21CB84D44();
  v98 = v207;
  v31[104] = v206;
  *(v31 + 14) = v98;
  v205 = 0;
  sub_21CB84D44();
  v99 = v207;
  v31[120] = v206;
  *(v31 + 16) = v99;
  v205 = 0;
  sub_21CB84D44();
  v100 = v207;
  v31[136] = v206;
  *(v31 + 18) = v100;
  *(v31 + 19) = swift_getKeyPath();
  *(v31 + 20) = 0;
  v31[168] = 0;
  *(v31 + 22) = swift_getKeyPath();
  v31[184] = 0;
  v101 = v193;
  v102 = *(v193 + 116);
  *&v31[v102] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v103 = &v31[v101[30]];
  *v103 = sub_21CB823C4();
  v103[1] = v104;
  v105 = &v31[v101[31]];
  sub_21CB821F4();
  *&v31[v101[32]] = 0;
  v106 = &v31[v101[33]];
  *v106 = 0x707954656772616CLL;
  *(v106 + 1) = 0xE900000000000065;
  v107 = v191;
  *v31 = v192;
  *(v31 + 1) = v107;
  v108 = v170;
  *(v31 + 2) = v172;
  *(v31 + 3) = v108;
  *(v31 + 4) = v94;
  *(v31 + 5) = v96;
  *(v31 + 6) = 0;
  v31[56] = 1;
  *(v31 + 57) = 0;
  *(v31 + 8) = 0;
  *(v31 + 9) = 0;
  *(v31 + 20) = v177;
  *(v31 + 42) = 256;
  v31[86] = 0;
  KeyPath = swift_getKeyPath();
  v110 = swift_allocObject();
  *(v110 + 16) = 1;
  v111 = v31;
  v112 = v166;
  sub_21C716934(v111, v166, &qword_27CDF1B78, &qword_21CBBE2D0);
  v113 = (v112 + *(v181 + 36));
  *v113 = KeyPath;
  v113[1] = sub_21C73574C;
  v113[2] = v110;
  v114 = &qword_27CDF1BB8;
  v115 = &qword_21CBBE2B0;
  v116 = v167;
  sub_21C716934(v112, v167, &qword_27CDF1BB8, &qword_21CBBE2B0);
  sub_21C6EDBAC(v116, v180, &qword_27CDF1BB8, &qword_21CBBE2B0);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
  sub_21C943548();
  v117 = v197;
  sub_21CB83494();
  v118 = v116;
LABEL_6:
  sub_21C6EA794(v118, v114, v115);
  v146 = v188;
  v147 = sub_21CB85184();
  MEMORY[0x28223BE20](v147);
  *(&v161 - 2) = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  sub_21C831C64();
  v148 = v198;
  sub_21CB851A4();
  v149 = v195;
  sub_21C6EDBAC(v194, v195, &qword_27CDF5590, &qword_21CBBE2D8);
  v150 = v200;
  sub_21C6EDBAC(v196, v200, &qword_27CDF1B78, &qword_21CBBE2D0);
  v151 = v182;
  sub_21C6EDBAC(v117, v182, &qword_27CDF5588, &qword_21CBBE2C8);
  v152 = v185;
  v153 = *(v185 + 16);
  v154 = v183;
  v155 = v186;
  v153(v183, v148, v186);
  v156 = v149;
  v157 = v184;
  sub_21C6EDBAC(v156, v184, &qword_27CDF5590, &qword_21CBBE2D8);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5598, &qword_21CBBE3A8);
  sub_21C6EDBAC(v150, v157 + v158[12], &qword_27CDF1B78, &qword_21CBBE2D0);
  sub_21C6EDBAC(v151, v157 + v158[16], &qword_27CDF5588, &qword_21CBBE2C8);
  v153((v157 + v158[20]), v154, v155);
  v159 = *(v152 + 8);
  v159(v198, v155);
  sub_21C6EA794(v197, &qword_27CDF5588, &qword_21CBBE2C8);
  sub_21C6EA794(v196, &qword_27CDF1B78, &qword_21CBBE2D0);
  sub_21C6EA794(v194, &qword_27CDF5590, &qword_21CBBE2D8);
  v159(v154, v155);
  sub_21C6EA794(v151, &qword_27CDF5588, &qword_21CBBE2C8);
  sub_21C6EA794(v200, &qword_27CDF1B78, &qword_21CBBE2D0);
  return sub_21C6EA794(v195, &qword_27CDF5590, &qword_21CBBE2D8);
}

uint64_t sub_21CA29BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMWiFiNetwork();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for PMWiFiDetailsView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v12 = v23;
  swift_getKeyPath();
  v23 = v12;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v13 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v12 + v13, v10, type metadata accessor for PMWiFiNetwork);

  if (v10[*(v7 + 36)] & 1) != 0 || (v10[*(v7 + 52)])
  {
    sub_21CB81014();
    v14 = sub_21CB81004();
    v16 = v15;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = PMWiFiNetwork.localizedSecurityType.getter();
    v16 = v17;
  }

  sub_21CA2BCB4(v10, type metadata accessor for PMWiFiNetwork);
  v22[1] = v14;
  v22[2] = v16;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_21CA29ECC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CA29FEC()
{
  v0 = type metadata accessor for PMWiFiNetwork();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB85174();
  result = 0;
  if ((v4 & 1) == 0)
  {
    v6 = *(type metadata accessor for PMWiFiDetailsView() + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
    sub_21CB85084();
    v7 = v12;
    swift_getKeyPath();
    v12 = v7;
    sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB810D4();

    v8 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
    swift_beginAccess();
    sub_21CA2B6EC(v7 + v8, v3, type metadata accessor for PMWiFiNetwork);

    sub_21CB85084();
    v9 = sub_21C967FB4();

    countAndFlagsBits = PMWiFiNetwork.userVisibleType(isActive:)(v9 & 1)._countAndFlagsBits;
    sub_21CA2BCB4(v3, type metadata accessor for PMWiFiNetwork);
    return countAndFlagsBits;
  }

  return result;
}

uint64_t sub_21CA2A1C4()
{
  v0 = type metadata accessor for PMWiFiIcon();
  v1 = *(*(v0 - 1) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21CB85174())
  {
    v4 = 8.18181818;
  }

  else
  {
    v4 = 7.63636364;
  }

  if (sub_21CB85174())
  {
    v5 = 60.0;
  }

  else
  {
    v5 = 56.0;
  }

  if (sub_21CB85174())
  {
    v6 = 34.2857143;
  }

  else
  {
    v6 = 32.0;
  }

  v7 = v0[5];
  v8 = *(type metadata accessor for PMWiFiDetailsView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v9 = v16;
  swift_getKeyPath();
  v16 = v9;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v10 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v9 + v10, v3 + v7, type metadata accessor for PMWiFiNetwork);

  v11 = type metadata accessor for PMWiFiNetwork();
  (*(*(v11 - 8) + 56))(v3 + v7, 0, 1, v11);
  sub_21CB85084();
  v12 = sub_21C967FB4();

  *v3 = v4;
  v3[1] = v5;
  v3[2] = v5;
  v3[3] = v6;
  *(v3 + v0[6]) = v12 & 1;
  v13 = v0[7];
  *(v3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21CA2BC6C(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon);
  sub_21CB84494();
  return sub_21CA2BCB4(v3, type metadata accessor for PMWiFiIcon);
}

uint64_t sub_21CA2A4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - v7;
  v9 = type metadata accessor for PMWiFiDetailsView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v32 - v15;
  sub_21CB81ED4();
  v17 = sub_21CB81F14();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  sub_21CA2B6EC(a1, v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiDetailsView);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_21CA2B54C(v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_21CB84D94();
  v20 = a1 + *(v10 + 32);
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v5 + 8))(v8, v4);
  v21 = v33[3];
  v22 = v33[4];
  v23 = v33[5];
  v24 = v33[6];
  v25 = v33[7];
  KeyPath = swift_getKeyPath();
  v32[1] = v21;
  v32[2] = v22;
  v32[3] = v23;
  v32[4] = v24;
  v32[5] = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
  MEMORY[0x21CF14A20](v33, v27);
  v28 = v33[0];
  if (v33[0])
  {

    sub_21C968AF4(v29);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5540, &unk_21CBBE1D8);
  v31 = (a2 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = v21;
  v31[2] = v22;
  v31[3] = v23;
  v31[4] = v24;
  v31[5] = v25;
  v31[6] = v28;
  return result;
}

uint64_t sub_21CA2A824(uint64_t a1)
{
  v2 = type metadata accessor for PMWiFiDetailsView();
  v3 = v2 - 8;
  v25[0] = *(v2 - 8);
  v4 = *(v25[0] + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMWiFiNetwork();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v11 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7730, &unk_21CBA0E60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21CBA0690;
  sub_21CB85084();
  v13 = v26;
  swift_getKeyPath();
  v26 = v13;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v14 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v13 + v14, v9, type metadata accessor for PMWiFiNetwork);

  v16 = *v9;
  v15 = v9[1];

  sub_21CA2BCB4(v9, type metadata accessor for PMWiFiNetwork);
  *(v12 + 32) = v16;
  *(v12 + 40) = v15;
  sub_21CA2B6EC(a1, v5, type metadata accessor for PMWiFiDetailsView);
  v17 = (*(v25[0] + 80) + 16) & ~*(v25[0] + 80);
  v18 = swift_allocObject();
  sub_21CA2B54C(v5, v18 + v17);
  v19 = (v11 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v20 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  if (v20 && (v21 = v19[1], v22 = v19[2], (sub_21C9675F0(*(v11 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration), v12) & 1) != 0))
  {
    *v19 = v12;
    v19[1] = sub_21CA2BAC8;
    v19[2] = v18;
    sub_21C968AF4(v20);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v25[-4] = v11;
    v25[-3] = v12;
    v25[-2] = sub_21CA2BAC8;
    v25[-1] = v18;
    v25[2] = v11;
    sub_21CB810C4();
  }
}

uint64_t sub_21CA2ABD8(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMWiFiNetwork();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMWiFiDetailsView();
  v12 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v13 = v20;
  v14 = *(v20 + 16);
  v15 = qword_27CDEA4C0;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v14, v20);

  swift_getKeyPath();
  v20 = v13;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v16 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v13 + v16, v10, type metadata accessor for PMWiFiNetwork);
  sub_21CB634FC(v10);

  sub_21CA2BCB4(v10, type metadata accessor for PMWiFiNetwork);

  v17 = a1 + *(v11 + 20);
  sub_21C95B2C8(v6);
  sub_21CB823A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21CA2AE90@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CA2AFBC()
{
  v0 = *(type metadata accessor for PMWiFiDetailsView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  if (*(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) == 1)
  {
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21CA2B118@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CA2B244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMWiFiQRCodeView();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMWiFiDetailsView();
  v13 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  sub_21CB85084();
  v14 = v22;
  swift_getKeyPath();
  v22 = v14;
  sub_21CA2BC6C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v15 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21CA2B6EC(v14 + v15, v11, type metadata accessor for PMWiFiNetwork);

  *&v11[*(v8 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v16 = v12[7];
  v17 = (a1 + v12[8]);
  v18 = v17[1];
  v21[1] = *v17;
  v21[2] = v18;
  v19 = *(a1 + v16);

  sub_21CB852C4();
  sub_21CB834F4();

  sub_21CA2BC6C(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView);
  sub_21CB84524();
  (*(v4 + 8))(v7, v3);
  return sub_21CA2BCB4(v11, type metadata accessor for PMWiFiQRCodeView);
}

uint64_t sub_21CA2B54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiDetailsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA2B5D0()
{
  result = qword_27CDF54D8;
  if (!qword_27CDF54D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54D0, &qword_21CBBE120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF54E0, &unk_21CBBE128);
    sub_21C6EADEC(&qword_27CDF54E8, &qword_27CDF54E0, &unk_21CBBE128);
    swift_getOpaqueTypeConformance2();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF54D8);
  }

  return result;
}

uint64_t sub_21CA2B6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA2B76C()
{
  result = qword_27CDF5548;
  if (!qword_27CDF5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5548);
  }

  return result;
}

unint64_t sub_21CA2B7C0()
{
  result = qword_27CDF5550;
  if (!qword_27CDF5550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5540, &unk_21CBBE1D8);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21CA1AA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5550);
  }

  return result;
}

unint64_t sub_21CA2B89C()
{
  result = qword_27CDF5568;
  if (!qword_27CDF5568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5560, &qword_21CBBE1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5568);
  }

  return result;
}

unint64_t sub_21CA2B920()
{
  result = qword_27CDF5578;
  if (!qword_27CDF5578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5510, &qword_21CBBE1B0);
    sub_21CA2B89C();
    sub_21CA2BC6C(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5578);
  }

  return result;
}

uint64_t sub_21CA2BA0C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiDetailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CA2BAE0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMWiFiDetailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CA2BBF4(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2);
}

uint64_t sub_21CA2BC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v7 = a3;
  return v4(v8, &v7);
}

uint64_t sub_21CA2BC6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CA2BCB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI24PMSecurityRecommendationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CA2BD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v33 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[3];
  *&v40[16] = v2[2];
  *&v40[32] = v8;
  v41 = *(v2 + 8);
  v9 = v2[1];
  v39 = *v2;
  *v40 = v9;
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v4 + 8))(v7, v3);
  v35 = v10;
  v36 = v12;
  sub_21C71F3FC();
  v32 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  v28[1] = v17;
  v30 = *(&v39 + 1);
  v31 = v39;
  v29 = v40[0];
  v42[0] = *&v40[8];
  v42[1] = *&v40[24];
  v37 = *&v40[8];
  v38 = *&v40[24];
  v18 = swift_allocObject();
  v19 = *&v40[32];
  *(v18 + 48) = *&v40[16];
  *(v18 + 64) = v19;
  *(v18 + 80) = v41;
  v20 = *v40;
  *(v18 + 16) = v39;
  *(v18 + 32) = v20;
  v21 = swift_allocObject();
  v22 = *&v40[32];
  *(v21 + 48) = *&v40[16];
  *(v21 + 64) = v22;
  *(v21 + 80) = v41;
  v23 = *v40;
  *(v21 + 16) = v39;
  *(v21 + 32) = v23;
  sub_21CA2C61C(&v39, &v35);
  sub_21CA2C61C(&v39, &v35);
  sub_21CA2C654(v42, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55B0, &qword_21CBBE4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  sub_21C6EADEC(&qword_27CDF55B8, &qword_27CDF55B0, &qword_21CBBE4B8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  v25 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v35 = v24;
  v36 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v32;
  sub_21CB843F4();
  sub_21C74A72C(v26, v14, v16 & 1);

  sub_21C7D33F0(v37, *(&v37 + 1), v38, *(&v38 + 1));
}

uint64_t sub_21CA2C148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v24 = sub_21CB82A04();
  v23[0] = *(v24 - 8);
  v5 = *(v23[0] + 64);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 16);
  v16 = a1[3];
  v17 = swift_allocObject();
  v18 = *(a2 + 48);
  *(v17 + 48) = *(a2 + 32);
  *(v17 + 64) = v18;
  v19 = *(a2 + 64);
  v20 = *(a2 + 16);
  *(v17 + 16) = *a2;
  *(v17 + 32) = v20;
  *(v17 + 80) = v19;
  *(v17 + 88) = v13;
  *(v17 + 96) = v14;
  *(v17 + 104) = v15;
  *(v17 + 112) = v16;
  sub_21CA2C61C(a2, v25);

  v21 = v16;
  sub_21CB84DA4();
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB84334();
  (*(v23[0] + 8))(v7, v24);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21CA2C3BC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CA2C4E8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CA2C654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A8, &qword_21CBBE4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA2C6C4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8[0] = v1;
  v8[1] = v2;
  v9 = v3;
  v10 = v4;
  return v5(v8);
}

uint64_t sub_21CA2C73C()
{
  v1 = sub_21CB809E4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55C0, &qword_21CBBE558);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55C8, &qword_21CBBE560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = v0[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  v15 = v0[1];
  if (v14)
  {
    sub_21CA2CA14(*v0, v15, v13, v0[4], v4);
    v16 = sub_21CB84044();
    v18 = v17;
    v29 = v16;
    v30 = v17;
    v20 = v19 & 1;
    v31 = v19 & 1;
    v32 = v21;
    sub_21CB845C4();
    sub_21C74A72C(v16, v18, v20);
  }

  else
  {
    v29 = *v0;
    v30 = v15;
    sub_21C71F3FC();

    v22 = sub_21CB84054();
    v24 = v23;
    v29 = v22;
    v30 = v23;
    v26 = v25 & 1;
    v31 = v25 & 1;
    v32 = v27;
    sub_21CB845C4();
    sub_21C74A72C(v22, v24, v26);
  }

  sub_21C6EDBAC(v12, v8, &qword_27CDF55C8, &qword_21CBBE560);
  swift_storeEnumTagMultiPayload();
  sub_21C74A7F4();
  sub_21CB83494();
  return sub_21C6EA794(v12, &qword_27CDF55C8, &qword_21CBBE560);
}

void sub_21CA2CA14(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v105 = a3;
  v106 = a4;
  v78 = a5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55D8, &qword_21CBBE568);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v77 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55E0, &qword_21CBBE570);
  v11 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55E8, &qword_21CBBE578);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  v20 = sub_21CB809B4();
  v99 = *(v20 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x28223BE20](v20);
  v101 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = &v77 - v24;
  v25 = sub_21CB80A44();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v103 = sub_21CB809E4();
  v79 = *(v103 - 8);
  v27 = *(v79 + 64);
  MEMORY[0x28223BE20](v103);
  v95 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;

  sub_21CB80A34();
  sub_21CB809F4();
  v108 = sub_21CB84B34();
  v89 = sub_21CA2D49C();
  sub_21CB80A04();
  v32 = *MEMORY[0x277CBECE8];
  v33 = CFLocaleCopyCurrent();
  v109.location = 0;
  v109.length = 0;
  v34 = CFStringTokenizerCreate(v32, 0, v109, 0, v33);

  if (v34)
  {
    v35 = objc_opt_self();
    v36 = sub_21CB85584();
    v37 = sub_21CB85584();
    v38 = [v35 searchMatchWithTokenizer:v34 string:v36 searchPattern:v37 matchingType:v106];

    if (v38)
    {
      v96 = v34;
      v97 = v31;
      v87 = v19;
      v77 = v38;
      v39 = sub_21CB81044();
      v40 = *(v39 + 16);
      v104 = a1;
      v86 = v16;
      v106 = v39;
      if (v40)
      {
        v41 = (v39 + 40);
        v42 = MEMORY[0x277D84F90];
        v43 = v96;
        do
        {
          v47 = *(v41 - 1);
          v48 = *v41;
          if (sub_21CB85694() >= v48)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v108 = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B1360(0, v42[2] + 1, 1);
              v42 = v108;
            }

            v45 = v42[2];
            v44 = v42[3];
            if (v45 >= v44 >> 1)
            {
              sub_21C7B1360((v44 > 1), v45 + 1, 1);
              v42 = v108;
            }

            v42[2] = v45 + 1;
            v46 = &v42[2 * v45];
            v46[4] = v47;
            v46[5] = v48;
          }

          v41 += 2;
          --v40;
        }

        while (v40);
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
        v43 = v96;
      }

      v88 = a2;

      v31 = v97;
      v84 = v42[2];
      if (v84)
      {
        v50 = 0;
        v51 = (v79 + 16);
        v100 = (v99 + 48);
        v83 = (v99 + 32);
        v80 = (v99 + 16);
        v82 = (v99 + 8);
        v52 = v42 + 5;
        v85 = v42;
        v81 = (v79 + 16);
        while (v50 < v42[2])
        {
          v106 = v50;
          v53 = *(v52 - 1);
          v54 = *v52;
          v98 = v52;
          sub_21CB856C4();
          v99 = sub_21CB856C4();
          v55 = *v51;
          v56 = v95;
          (*v51)(v95, v31, v103);
          sub_21C7441E4(&qword_27CDF55F8, MEMORY[0x277CC8C40]);
          v57 = v20;
          v58 = v31;
          v59 = v87;
          sub_21CB809C4();
          v60 = *v100;
          if ((*v100)(v59, 1, v57) == 1)
          {

LABEL_25:
            sub_21C6EA794(v59, &qword_27CDF55E8, &qword_21CBBE578);
            (*(v79 + 32))(v78, v97, v103);
            return;
          }

          v61 = v102;
          v105 = *v83;
          v105(v102, v59, v57);
          v55(v56, v58, v103);
          v62 = v86;
          sub_21CB809C4();
          if (v60(v62, 1, v57) == 1)
          {
            (*v82)(v61, v57);

            v59 = v62;
            goto LABEL_25;
          }

          v63 = v101;
          v105(v101, v62, v57);
          sub_21C7441E4(&qword_27CDF5600, MEMORY[0x277CC8C20]);
          if ((sub_21CB85524() & 1) == 0)
          {
            goto LABEL_27;
          }

          v64 = v61;
          ++v106;
          v65 = *v80;
          v66 = v63;
          v67 = v92;
          (*v80)(v92, v64, v57);
          v68 = v94;
          v65((v67 + *(v94 + 48)), v66, v57);
          v69 = v93;
          sub_21C6EDBAC(v67, v93, &qword_27CDF55D8, &qword_21CBBE568);
          v70 = *(v68 + 48);
          v20 = v57;
          v71 = v90;
          v72 = v105;
          v105(v90, v69, v20);
          v73 = *v82;
          (*v82)((v69 + v70), v20);
          v74 = v67;
          v31 = v97;
          sub_21CA2D4F0(v74, v69);
          v72(v71 + *(v91 + 36), v69 + *(v68 + 48), v20);
          v73(v69, v20);
          v75 = sub_21CB84B14();
          sub_21CA2D560();
          v76 = sub_21CB80A14();
          v107 = v75;
          v50 = v106;
          sub_21CB80A54();
          v76(&v108, 0);
          sub_21C6EA794(v71, &qword_27CDF55E0, &qword_21CBBE570);
          v73(v101, v20);
          v73(v102, v20);
          v52 = v98 + 2;
          v43 = v96;
          v42 = v85;
          v51 = v81;
          if (v84 == v50)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
    }

    else
    {
    }

    (*(v79 + 32))(v78, v31, v103);
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_21CA2D460()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_21CA2C73C();
}

unint64_t sub_21CA2D49C()
{
  result = qword_27CDF55F0;
  if (!qword_27CDF55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF55F0);
  }

  return result;
}

uint64_t sub_21CA2D4F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55D8, &qword_21CBBE568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA2D560()
{
  result = qword_27CDF5608;
  if (!qword_27CDF5608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF55E0, &qword_21CBBE570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5608);
  }

  return result;
}

unint64_t sub_21CA2D5C4()
{
  result = qword_27CDF5610;
  if (!qword_27CDF5610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5618, &unk_21CBBE580);
    sub_21C74A7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5610);
  }

  return result;
}

uint64_t sub_21CA2D648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21CA2D6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21CA2D728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v7 = *(v2 + 1);
  v6 = *(v2 + 2);
  v8 = v2[24];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5620, &qword_21CBBE678);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5628, &unk_21CBBE680) + 36));
  *v11 = sub_21CA2D8A8;
  v11[1] = v9;

  sub_21CA2D904(v6, v8);
  v12 = sub_21CB85214();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v15 = v18 != 1 || (sub_21C7316D8(v6, v8) & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5630, &unk_21CBBE690);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v12;
  *(v17 + 16) = v14;
  return result;
}

uint64_t sub_21CA2D8A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CA2D904(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21CA2D910@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB82A84();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5660, &qword_21CBBE710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5668, &qword_21CBBE718);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v47 - v13;
  v15 = [objc_opt_self() isPasswordsAppInstalled];
  v16 = *(v3 + 28);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_21CB831A4();
  (*(*(v18 - 8) + 104))(&v6[v16], v17, v18);
  __asm { FMOV            V0.2D, #5.0 }

  *v6 = _Q0;
  if (v15)
  {
    v47[1] = sub_21CB837C4();
  }

  else
  {
    sub_21CB84A84();
    v25 = sub_21CB84B04();

    v48 = v25;
  }

  v24 = sub_21CB82384();
  sub_21C9D03AC(v6, v10);
  *&v10[*(v7 + 52)] = v24;
  *&v10[*(v7 + 56)] = 256;
  v26 = sub_21CB83D44();
  sub_21CB81F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_21C716934(v10, v14, &qword_27CDF5660, &qword_21CBBE710);
  v35 = &v14[*(v11 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_21CB83CD4();
  sub_21CB81F24();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_21C716934(v14, a1, &qword_27CDF5668, &qword_21CBBE718);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5670, &unk_21CBBE720);
  v46 = a1 + *(result + 36);
  *v46 = v36;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

unint64_t sub_21CA2DC3C()
{
  result = qword_27CDF5638;
  if (!qword_27CDF5638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5630, &unk_21CBBE690);
    sub_21CA2DCF4();
    sub_21C6EADEC(&qword_27CDF5650, &qword_27CDF5658, qword_21CBBE6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5638);
  }

  return result;
}

unint64_t sub_21CA2DCF4()
{
  result = qword_27CDF5640;
  if (!qword_27CDF5640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5628, &unk_21CBBE680);
    sub_21C6EADEC(&qword_27CDF5648, &qword_27CDF5620, &qword_21CBBE678);
    sub_21C7E3870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5640);
  }

  return result;
}

unint64_t sub_21CA2DDC8()
{
  result = qword_27CDF5678;
  if (!qword_27CDF5678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5670, &unk_21CBBE720);
    sub_21CA2DE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5678);
  }

  return result;
}

unint64_t sub_21CA2DE54()
{
  result = qword_27CDF5680;
  if (!qword_27CDF5680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5668, &qword_21CBBE718);
    sub_21C6EADEC(qword_27CDF5688, &qword_27CDF5660, &qword_21CBBE710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5680);
  }

  return result;
}

uint64_t sub_21CA2DF24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21CA2DF18(a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PMUpdateLockWindowVisibilitiesPayload(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for PMUpdateLockWindowVisibilitiesPayload(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21CA2E0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5790, &unk_21CBBE960);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_21CA2E160()
{
  result = qword_27CDF5798;
  if (!qword_27CDF5798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5790, &unk_21CBBE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5798);
  }

  return result;
}

uint64_t sub_21CA2E1C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_21CA2E220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_21CA2E2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57A0, &qword_21CBBEAA8);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57A8, &unk_21CBBEAB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = sub_21CB82F84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v43 = *(v3 + 16);
  v16 = *(v3 + 8);
  v42 = v16;
  if (v43 == 1)
  {
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v42, &qword_27CDF4CA0, &qword_21CBBEB00);
    (*(v12 + 8))(v15, v11);
    if (v39)
    {
      goto LABEL_10;
    }
  }

  v41 = *(v3 + 32);
  v18 = *(v3 + 24);
  v40 = v18;
  if (v41 == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_8:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57B0, &qword_21CBBEAF0);
      (*(*(v19 - 8) + 16))(v6, v31, v19);
      swift_storeEnumTagMultiPayload();
      sub_21CA2EC14();
      sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0);
      return sub_21CB83494();
    }
  }

  else
  {

    sub_21CB85B04();
    v21 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v40, &qword_27CDF4CA0, &qword_21CBBEB00);
    (*(v12 + 8))(v15, v11);
    if (v39 != 1)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v39 = *(v3 + 40);
  v34 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v22 = v37;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57B0, &qword_21CBBEAF0);
  (*(*(v25 - 8) + 16))(v10, v31, v25);
  v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57B8, &qword_21CBBEAF8) + 36)];
  *v26 = KeyPath;
  v26[1] = sub_21C735744;
  v26[2] = v24;
  v37 = *(v3 + 8);
  v38 = *(v3 + 16);
  v35 = *(v3 + 24);
  v36 = *(v3 + 32);
  v27 = swift_allocObject();
  v28 = *(v3 + 16);
  *(v27 + 16) = *v3;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v3 + 32);
  *(v27 + 64) = *(v3 + 48);
  v29 = &v10[*(v7 + 36)];
  *v29 = sub_21CA2EC0C;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  sub_21C6EDBAC(v10, v6, &qword_27CDF57A8, &unk_21CBBEAB0);
  swift_storeEnumTagMultiPayload();
  sub_21C6EDBAC(&v37, &v34, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v35, &v34, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v39, &v34, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21CA2EC14();
  sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0);
  sub_21CB83494();
  return sub_21C6EA794(v10, &qword_27CDF57A8, &unk_21CBBEAB0);
}

uint64_t sub_21CA2E88C(uint64_t a1)
{
  v2 = sub_21CB853D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21CB85404();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C8582C0();
  v16 = sub_21CB85CF4();
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v20 = *(a1 + 40);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = *(a1 + 48);
  aBlock[4] = sub_21CA2EDD4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_29;
  v13 = _Block_copy(aBlock);
  sub_21C6EDBAC(&v23, v18, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v21, v18, &qword_27CDF4CA0, &qword_21CBBEB00);
  sub_21C6EDBAC(&v20, v18, &unk_27CDF40F0, &qword_21CBA2500);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  v14 = v16;
  MEMORY[0x21CF15800](0, v10, v6, v13);
  _Block_release(v13);

  (*(v3 + 8))(v6, v2);
  return (*(v7 + 8))(v10, v17);
}

uint64_t sub_21CA2EBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  return sub_21CA2E2AC(a1, a2);
}

unint64_t sub_21CA2EC14()
{
  result = qword_27CDF57C0;
  if (!qword_27CDF57C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57A8, &unk_21CBBEAB0);
    sub_21CA2ECA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57C0);
  }

  return result;
}

unint64_t sub_21CA2ECA0()
{
  result = qword_27CDF57C8;
  if (!qword_27CDF57C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57B8, &qword_21CBBEAF8);
    sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57C8);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  sub_21C7025C4(*(v0 + 24), *(v0 + 32));
  sub_21C7025C4(*(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21CA2EDD4()
{
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

unint64_t sub_21CA2EE28()
{
  result = qword_27CDF57D8;
  if (!qword_27CDF57D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57E0, &qword_21CBBEB08);
    sub_21CA2EC14();
    sub_21C6EADEC(&qword_27CDF57D0, &qword_27CDF57B0, &qword_21CBBEAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57D8);
  }

  return result;
}

id sub_21CA2EEF0()
{
  v0 = sub_21CB80E34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_21CB86094();

    v14 = 0xD000000000000023;
    v15 = 0x800000021CB98340;
    sub_21CB80E24();
    v7 = sub_21CB80DF4();
    v9 = v8;
    (*(v1 + 8))(v4, v0);
    MEMORY[0x21CF151F0](v7, v9);

    v10 = sub_21CB85584();
    [v6 addListenerID:v10 forService:1];

    v11 = sub_21CB85584();
    v12 = [v6 availabilityForListenerID:v11 forService:1];

    v13 = sub_21CB85584();

    [v6 removeListenerID:v13 forService:1];

    return (v12 == 1);
  }

  return result;
}

PasswordManagerUI::PMWindowGroupIdentifier_optional __swiftcall PMWindowGroupIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21CB86244();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21CA2F148(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00736C69617465;
  v3 = 0x44746E756F636361;
  v4 = *a1;
  v5 = 0x6174654469666977;
  v6 = 0xEB00000000736C69;
  if (v4 == 1)
  {
    v5 = 0x44746E756F636361;
    v6 = 0xEE00736C69617465;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000021CB89FD0;
  }

  if (*a2 != 1)
  {
    v3 = 0x6174654469666977;
    v2 = 0xEB00000000736C69;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000021CB89FD0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21CB86344();
  }

  return v11 & 1;
}

unint64_t sub_21CA2F260()
{
  result = qword_27CDF57E8;
  if (!qword_27CDF57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF57E8);
  }

  return result;
}

uint64_t sub_21CA2F2B4()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

uint64_t sub_21CA2F370()
{
  *v0;
  *v0;
  sub_21CB854C4();
}

uint64_t sub_21CA2F418()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21CB854C4();

  return sub_21CB864D4();
}

void sub_21CA2F4DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736C69617465;
  v4 = 0x44746E756F636361;
  if (v2 != 1)
  {
    v4 = 0x6174654469666977;
    v3 = 0xEB00000000736C69;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x800000021CB89FD0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_21CA2F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57F0, &qword_21CBBECD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - v14;
  sub_21CA2F7F8(a1, v20 - v14);
  swift_getKeyPath();
  v20[1] = a1;
  sub_21CA2FD2C(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel);
  sub_21CB810D4();

  v16 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  sub_21CA2FD74(a1 + v16, v7, type metadata accessor for PMAppAccountDetailsModel.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D4AC0(v7, v11);
  }

  else
  {
    v17 = *v7;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();
  }

  sub_21CA2FCBC(v15, a2);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57F8, &qword_21CBBED08);
  return sub_21C7D4AC0(v11, a2 + *(v18 + 52));
}

uint64_t sub_21CA2F7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v30 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5800, &qword_21CBBED58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v31 = type metadata accessor for PMCombinedAccountDetailsView();
  v16 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v34 = a1;
  sub_21CA2FD2C(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel);
  sub_21CB810D4();

  v23 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
  swift_beginAccess();
  sub_21CA2FD74(a1 + v23, v22, type metadata accessor for PMAppAccountDetailsModel.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D4AC0(v22, v11);
    sub_21CA2FD74(v11, v8, type metadata accessor for PMAccount);
    v24 = v30;
    sub_21CB2E2C8(v8, v30);
    sub_21CA2FD74(v24, v15, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_21CA2FD2C(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView);
    sub_21CA2FD2C(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    sub_21CB83494();
    sub_21CA2FDDC(v24, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    v25 = type metadata accessor for PMAccount;
    v26 = v11;
  }

  else
  {
    v27 = *v22;

    sub_21C91D3E0(v18);
    sub_21CA2FD74(v18, v15, type metadata accessor for PMCombinedAccountDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_21CA2FD2C(&qword_27CDEB540, type metadata accessor for PMCombinedAccountDetailsView);
    sub_21CA2FD2C(&qword_27CDEB538, type metadata accessor for PMSignInWithAppleAccountDetailsView);
    sub_21CB83494();

    v25 = type metadata accessor for PMCombinedAccountDetailsView;
    v26 = v18;
  }

  return sub_21CA2FDDC(v26, v25);
}

uint64_t sub_21CA2FCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF57F0, &qword_21CBBECD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA2FD2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CA2FD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA2FDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CA2FE3C()
{
  result = qword_27CDF5808[0];
  if (!qword_27CDF5808[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF57F8, &qword_21CBBED08);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF5808);
  }

  return result;
}

uint64_t sub_21CA2FEA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CA2FEDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21CA2FF24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA2FFDC(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_21CB83B74();
  sub_21CB828F4();
  sub_21CB828F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5890, &qword_21CBBEE50);
  swift_getTupleTypeMetadata2();
  sub_21CB85354();
  swift_getWitnessTable();
  v4 = sub_21CB84E14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  sub_21CB83054();
  v12 = *(a1 + 24);
  v17 = v3;
  v18 = v12;
  v19 = v1;
  sub_21CB84E04();
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v8, v4, WitnessTable);
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_21C72BE10(v11, v4, WitnessTable);
  return (v14)(v11, v4);
}

uint64_t sub_21CA3020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5890, &qword_21CBBEE50);
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = (&v40 - v10);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB83B74();
  v16 = sub_21CB828F4();
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v20 = sub_21CB828F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v40 = &v40 - v27;
  v44 = a1;
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  v28(v26);
  v41 = a3;
  v42 = a2;
  sub_21CB84494();
  (*(v11 + 8))(v15, a2);
  sub_21CB83CF4();
  v30 = sub_21C735F84();
  v52[4] = a3;
  v52[5] = v30;
  WitnessTable = swift_getWitnessTable();
  sub_21CB84884();
  (*(v43 + 8))(v19, v16);
  v52[2] = WitnessTable;
  v52[3] = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = v40;
  sub_21C72BE10(v24, v20, v32);
  v34 = *(v21 + 8);
  v34(v24, v20);
  v35 = sub_21CB832E4();
  v36 = v45;
  *v45 = v35;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5898, &qword_21CBBEE58);
  sub_21CA306A8(v44, v42, v41, v36 + *(v37 + 44));
  (*(v21 + 16))(v24, v33, v20);
  v52[0] = v24;
  v38 = v46;
  sub_21C6EDBAC(v36, v46, &qword_27CDF5890, &qword_21CBBEE50);
  v52[1] = v38;
  v51[0] = v20;
  v51[1] = v47;
  v49 = v32;
  v50 = sub_21C6EADEC(&qword_27CDF58A0, &qword_27CDF5890, &qword_21CBBEE50);
  sub_21C74A55C(v52, 2uLL, v51);
  sub_21C6EA794(v36, &qword_27CDF5890, &qword_21CBBEE50);
  v34(v33, v20);
  sub_21C6EA794(v38, &qword_27CDF5890, &qword_21CBBEE50);
  return (v34)(v24, v20);
}

uint64_t sub_21CA306A8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58A8, &qword_21CBBEE60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v42 = sub_21CB84FB4();
  v39 = *(v42 - 8);
  v13 = v39;
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v42);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58B0, &qword_21CBBEE68);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  *v25 = sub_21CB83054();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58B8, &qword_21CBBEE70);
  sub_21CA30A64(a1, a2, a3, &v25[*(v26 + 44)]);
  v38 = v18;
  sub_21CB84FA4();
  *v12 = sub_21CB83074();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58C0, &qword_21CBBEE78) + 44)];
  v37 = v12;
  sub_21CA310DC(a1, a2, a3, v27);
  v41 = v22;
  sub_21C6EDBAC(v25, v22, &qword_27CDF58B0, &qword_21CBBEE68);
  v28 = *(v13 + 16);
  v29 = v40;
  v30 = v18;
  v31 = v42;
  v28(v40, v30, v42);
  v32 = v43;
  sub_21C6EDBAC(v12, v43, &qword_27CDF58A8, &qword_21CBBEE60);
  v33 = v44;
  sub_21C6EDBAC(v22, v44, &qword_27CDF58B0, &qword_21CBBEE68);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58C8, &qword_21CBBEE80);
  v28((v33 + *(v34 + 48)), v29, v31);
  sub_21C6EDBAC(v32, v33 + *(v34 + 64), &qword_27CDF58A8, &qword_21CBBEE60);
  sub_21C6EA794(v37, &qword_27CDF58A8, &qword_21CBBEE60);
  v35 = *(v39 + 8);
  v35(v38, v31);
  sub_21C6EA794(v25, &qword_27CDF58B0, &qword_21CBBEE68);
  sub_21C6EA794(v32, &qword_27CDF58A8, &qword_21CBBEE60);
  v35(v29, v31);
  return sub_21C6EA794(v41, &qword_27CDF58B0, &qword_21CBBEE68);
}

uint64_t sub_21CA30A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v53 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58D8, &qword_21CBBEE98);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58E0, &unk_21CBBEEA0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  *v8 = sub_21CB832F4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0) + 44)];
  v26 = v51;
  sub_21CA30EA8();
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v8, v13, &qword_27CDF39C0, &qword_21CBBEE90);
  v27 = &v13[*(v10 + 44)];
  v28 = v60;
  *(v27 + 4) = v59;
  *(v27 + 5) = v28;
  *(v27 + 6) = v61;
  v29 = v56;
  *v27 = v55;
  *(v27 + 1) = v29;
  v30 = v58;
  *(v27 + 2) = v57;
  *(v27 + 3) = v30;
  LOBYTE(v8) = sub_21CB83D44();
  sub_21CB81F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_21C716934(v13, v21, &qword_27CDF58D8, &qword_21CBBEE98);
  v39 = &v21[*(v15 + 44)];
  *v39 = v8;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  sub_21C716934(v21, v24, &qword_27CDF58E0, &unk_21CBBEEA0);
  v40 = *(a1 + 56);
  v50 = *(a1 + 48);
  v41 = swift_allocObject();
  *(v41 + 16) = v52;
  *(v41 + 24) = v26;
  v42 = *(a1 + 80);
  *(v41 + 96) = *(a1 + 64);
  *(v41 + 112) = v42;
  *(v41 + 128) = *(a1 + 96);
  v43 = *(a1 + 16);
  *(v41 + 32) = *a1;
  *(v41 + 48) = v43;
  v44 = *(a1 + 48);
  *(v41 + 64) = *(a1 + 32);
  *(v41 + 80) = v44;
  sub_21C6EDBAC(v24, v18, &qword_27CDF58E0, &unk_21CBBEEA0);
  v45 = v53;
  sub_21C6EDBAC(v18, v53, &qword_27CDF58E0, &unk_21CBBEEA0);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58E8, &unk_21CBBEEB0) + 48));
  *v46 = v50;
  v46[1] = v40;
  v46[2] = sub_21CA3145C;
  v46[3] = v41;

  v47 = type metadata accessor for PMBreadcrumbTip();
  (*(*(v47 - 8) + 16))(v54, a1, v47);

  sub_21C6EA794(v24, &qword_27CDF58E0, &unk_21CBBEEA0);

  return sub_21C6EA794(v18, &qword_27CDF58E0, &unk_21CBBEEA0);
}

uint64_t sub_21CA30EA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0);
  return sub_21CB81FC4();
}

uint64_t sub_21CA30F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *a1;
  v27 = a1[1];
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83E04();
  v9 = sub_21CB83FA4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21C74A72C(v4, v6, v8 & 1);

  v26 = a1[2];
  v28 = a1[3];

  v16 = sub_21CB84054();
  v18 = v17;
  v19 = v13 & 1;
  v24 = v13 & 1;
  v21 = v20 & 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 & 1;
  *(a2 + 56) = v22;
  sub_21C79B058(v9, v11, v19);

  sub_21C79B058(v16, v18, v21);

  sub_21C74A72C(v16, v18, v21);

  sub_21C74A72C(v9, v11, v24);
}

uint64_t sub_21CA310DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v27[-v18];
  v28 = a1[2];
  v29 = v28;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = a1[5];
  *(v20 + 96) = a1[4];
  *(v20 + 112) = v21;
  *(v20 + 128) = a1[6];
  v22 = a1[1];
  *(v20 + 32) = *a1;
  *(v20 + 48) = v22;
  v23 = a1[3];
  *(v20 + 64) = a1[2];
  *(v20 + 80) = v23;
  sub_21C805950(&v29, v27);
  v24 = type metadata accessor for PMBreadcrumbTip();
  (*(*(v24 - 8) + 16))(v27, a1, v24);
  sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB845C4();
  (*(v9 + 8))(v12, v8);
  sub_21C6EDBAC(v19, v16, &qword_27CDEC948, &qword_21CBA4E30);
  *a4 = 0;
  *(a4 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF58D0, &qword_21CBBEE88);
  sub_21C6EDBAC(v16, a4 + *(v25 + 48), &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v19, &qword_27CDEC948, &qword_21CBA4E30);
  return sub_21C6EA794(v16, &qword_27CDEC948, &qword_21CBA4E30);
}

uint64_t sub_21CA313DC(uint64_t a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21CA2FFDC(a1);
}

uint64_t sub_21CA31434()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  return v1();
}

uint64_t sub_21CA3145C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return v1();
}

uint64_t sub_21CA31484@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA30F50(*(v1 + 32), a1);
}

uint64_t type metadata accessor for PMISIconView()
{
  result = qword_27CDF58F8;
  if (!qword_27CDF58F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA31504()
{
  sub_21C6E8F4C(319, &qword_27CDF5908, 0x277D1B1A8);
  if (v0 <= 0x3F)
  {
    sub_21C6E8F4C(319, &qword_27CDF5910, 0x277D1B1C8);
    if (v1 <= 0x3F)
    {
      sub_21CA315C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CA315C8()
{
  if (!qword_27CDF5918)
  {
    sub_21CB82854();
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF5918);
    }
  }
}

id sub_21CA3163C()
{
  result = [*v0 prepareImageForDescriptor_];
  if (result)
  {
    v2 = result;
    v3 = [result CGImage];
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 16);
      if (v5 <= 0.0)
      {
LABEL_9:
        v10 = v4;
        [v2 scale];
        [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v10 scale:0 orientation:v11];

        v12 = sub_21CB84BA4();
        return v12;
      }

      result = [v2 scale];
      v7 = v5 * v6;
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v7 > -9.22337204e18)
      {
        if (v7 < 9.22337204e18)
        {
          v8 = sub_21CA3178C(v4, v7);
          if (v8)
          {
            v9 = v8;

            v4 = v9;
          }

          goto LABEL_9;
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    return 0;
  }

  return result;
}

CGColorSpace *sub_21CA3178C(CGImage *a1, uint64_t a2)
{
  v5 = sub_21CB82854();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  result = CGImageGetColorSpace(a1);
  if (result)
  {
    v14 = result;
    result = CGImageGetWidth(a1);
    v15 = result + a2;
    if (__OFADD__(result, a2))
    {
      __break(1u);
    }

    else
    {
      v24[1] = a2;
      Height = CGImageGetHeight(a1);
      BitsPerComponent = CGImageGetBitsPerComponent(a1);
      BitmapInfo = CGImageGetBitmapInfo(a1);
      v19 = __CGBitmapContextCreate(v15, Height, BitsPerComponent, v14, BitmapInfo);
      if (v19)
      {
        v20 = v19;
        v21 = v2 + *(type metadata accessor for PMISIconView() + 28);
        sub_21C95BCFC(v12);
        (*(v6 + 104))(v9, *MEMORY[0x277CDFA90], v5);
        sub_21CB82844();
        v22 = *(v6 + 8);
        v22(v9, v5);
        v22(v12, v5);
        CGImageGetWidth(a1);
        CGImageGetHeight(a1);
        sub_21CB85AB4();
        Image = CGBitmapContextCreateImage(v20);

        return Image;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

id sub_21CA319CC@<X0>(void *a1@<X8>)
{
  result = sub_21CA3163C();
  *a1 = result;
  return result;
}

id sub_21CA31A14(char a1)
{
  v2 = [objc_opt_self() imageDescriptorNamed_];
  [v2 setDrawBorder_];
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  [v2 setAppearance_];
  return v2;
}

uint64_t type metadata accessor for PMKeyboardShortcutActionViewModifier()
{
  result = qword_27CDF5920;
  if (!qword_27CDF5920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CA31B48()
{
  result = sub_21CB82A04();
  if (v1 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CA31BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a2;
  v60 = a3;
  v49[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5938, &qword_21CBBEFB0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = v49 - v6;
  v7 = sub_21CB83634();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMKeyboardShortcutActionViewModifier();
  v49[0] = *(v12 - 8);
  v13 = *(v49[0] + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5940, &qword_21CBBEFB8);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5948, &qword_21CBBEFC0);
  v19 = *(v18 - 8);
  v52 = v18;
  v53 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v49 - v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5950, &qword_21CBBEFC8);
  v23 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v25 = v49 - v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5958, &qword_21CBBEFD0);
  v62 = *(v55 - 8);
  v26 = v62[8];
  MEMORY[0x28223BE20](v55);
  v50 = v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v61 = v49 - v29;
  sub_21CA322F0(a1, v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v49[0] + 80) + 16) & ~*(v49[0] + 80);
  v31 = swift_allocObject();
  sub_21CA32354(v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  sub_21CB84DA4();
  sub_21CB83624();
  v32 = sub_21C6EADEC(&qword_27CDF5960, &qword_27CDF5940, &qword_21CBBEFB8);
  v33 = sub_21CA3262C(&qword_27CDF2658, MEMORY[0x277CDE0B8]);
  sub_21CB84124();
  (*(v8 + 8))(v11, v7);
  (*(v51 + 8))(v17, v14);
  *&v63 = v14;
  *(&v63 + 1) = v7;
  *&v64 = v32;
  *(&v64 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v52;
  sub_21CB84494();
  (*(v53 + 8))(v22, v34);
  sub_21CB85214();
  sub_21CB82374();
  v35 = &v25[*(v54 + 36)];
  v36 = v64;
  *v35 = v63;
  *(v35 + 1) = v36;
  *(v35 + 2) = v65;
  sub_21CA32424();
  v37 = v61;
  sub_21CB84334();
  sub_21C7783A4(v25);
  v38 = v62[2];
  v39 = v50;
  v40 = v55;
  v38(v50, v37, v55);
  v41 = v56;
  v42 = v57;
  v43 = *(v57 + 16);
  v44 = v58;
  v43(v56, v59, v58);
  v45 = v60;
  v38(v60, v39, v40);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5980, &qword_21CBBEFE0);
  v43(&v45[*(v46 + 48)], v41, v44);
  v47 = v62[1];
  v47(v61, v40);
  (*(v42 + 8))(v41, v44);
  return (v47)(v39, v40);
}

uint64_t sub_21CA32294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_21CB85214();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5930, &qword_21CBBEFA8);
  return sub_21CA31BE8(v2, a1, a2 + *(v6 + 44));
}

uint64_t sub_21CA322F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMKeyboardShortcutActionViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA32354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMKeyboardShortcutActionViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA323B8()
{
  v1 = type metadata accessor for PMKeyboardShortcutActionViewModifier();
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_21CA32424()
{
  result = qword_27CDF5968;
  if (!qword_27CDF5968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5950, &qword_21CBBEFC8);
    sub_21CA324B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5968);
  }

  return result;
}

unint64_t sub_21CA324B0()
{
  result = qword_27CDF5970;
  if (!qword_27CDF5970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5978, &qword_21CBBEFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5940, &qword_21CBBEFB8);
    sub_21CB83634();
    sub_21C6EADEC(&qword_27CDF5960, &qword_27CDF5940, &qword_21CBBEFB8);
    sub_21CA3262C(&qword_27CDF2658, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_21CA3262C(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5970);
  }

  return result;
}

uint64_t sub_21CA3262C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21CA32694()
{
  sub_21CA32708();
  if (v0 <= 0x3F)
  {
    sub_21CA32750();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CA32708()
{
  if (!qword_27CDF59A8)
  {
    v0 = type metadata accessor for PMAccount(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF59A8);
    }
  }
}

void sub_21CA32750()
{
  if (!qword_27CDF59B0)
  {
    type metadata accessor for PMWiFiNetwork();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF59B0);
    }
  }
}

void sub_21CA32804()
{
  sub_21CA32974(319, &qword_27CDF59C8, type metadata accessor for PMLargeTypeView.Icon, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21CA32974(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21C7086F8();
      if (v2 <= 0x3F)
      {
        sub_21CA32974(319, &qword_27CDEC498, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CA32974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21CA329F4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_21CB85134();
      v5 = sub_21CB85844();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_21CB85134();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

double sub_21CA32B50@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_21CB83F94();
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v16.origin.x = a3;
      v16.origin.y = a4;
      v16.size.width = a5;
      v16.size.height = a6;
      CGRectGetMinX(v16);
      v17.origin.x = a3;
      v17.origin.y = a4;
      v17.size.width = a5;
      v17.size.height = a6;
      CGRectGetMaxY(v17);
      sub_21CB83F74();
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
      v19.origin.x = a3;
      v19.origin.y = a4;
      v19.size.width = a5;
      v19.size.height = a6;
      CGRectGetMinY(v19);
      sub_21CB83F84();
    }

    v20.origin.x = a3;
    v20.origin.y = a4;
    v20.size.width = a5;
    v20.size.height = a6;
    CGRectGetMaxX(v20);
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxY(v21);
    sub_21CB83F74();
    v22.origin.x = a3;
    v22.origin.y = a4;
    v22.size.width = a5;
    v22.size.height = a6;
    CGRectGetMaxX(v22);
    goto LABEL_7;
  }

  if (a1 == 2)
  {
    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    CGRectGetMinX(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMaxY(v24);
    sub_21CB83F74();
    v25.origin.x = a3;
    v25.origin.y = a4;
    v25.size.width = a5;
    v25.size.height = a6;
    CGRectGetMinX(v25);
LABEL_7:
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    CGRectGetMinY(v26);
    sub_21CB83F84();
  }

  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  return result;
}

double sub_21CA32D18@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_21CA32B50(*v5, v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_21CA32D80(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21CB81E44();
  return sub_21CA32E08;
}

void sub_21CA32E08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21CA32E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA3907C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_21CA32EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA3907C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_21CA32F1C(uint64_t a1)
{
  v2 = sub_21CA3907C();

  return MEMORY[0x282133738](a1, v2);
}

double sub_21CA32F68()
{
  v1 = sub_21CB83834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = v0 + *(type metadata accessor for PMLargeTypeView(0) + 28);
  sub_21C728D50(v19);
  (*(v2 + 104))(v16, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_21C6EDBAC(v19, v9, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v16, &v9[v21], &qword_27CDEC390, &qword_21CBA40E0);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    if (v22(&v9[v21], 1, v1) == 1)
    {
      sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
      return 44.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v9, v13, &qword_27CDEC390, &qword_21CBA40E0);
  if (v22(&v9[v21], 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v2 + 8))(v13, v1);
LABEL_6:
    sub_21C6EA794(v9, &qword_27CDEE530, &unk_21CBA9D80);
    return 70.0;
  }

  v24 = &v9[v21];
  v25 = v29;
  (*(v2 + 32))(v29, v24, v1);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v26 = sub_21CB85574();
  v27 = *(v2 + 8);
  v27(v25, v1);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
  v27(v13, v1);
  sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
  result = 70.0;
  if (v26)
  {
    return 44.0;
  }

  return result;
}

double sub_21CA333E4()
{
  v1 = sub_21CB83834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = v0 + *(type metadata accessor for PMLargeTypeView(0) + 28);
  sub_21C728D50(v19);
  (*(v2 + 104))(v16, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_21C6EDBAC(v19, v9, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v16, &v9[v21], &qword_27CDEC390, &qword_21CBA40E0);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    if (v22(&v9[v21], 1, v1) == 1)
    {
      sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
      return 72.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v9, v13, &qword_27CDEC390, &qword_21CBA40E0);
  if (v22(&v9[v21], 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v2 + 8))(v13, v1);
LABEL_6:
    sub_21C6EA794(v9, &qword_27CDEE530, &unk_21CBA9D80);
    return 100.0;
  }

  v24 = &v9[v21];
  v25 = v29;
  (*(v2 + 32))(v29, v24, v1);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v26 = sub_21CB85574();
  v27 = *(v2 + 8);
  v27(v25, v1);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
  v27(v13, v1);
  sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
  result = 100.0;
  if (v26)
  {
    return 72.0;
  }

  return result;
}

double sub_21CA33858()
{
  v1 = sub_21CB83834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = v0 + *(type metadata accessor for PMLargeTypeView(0) + 28);
  sub_21C728D50(v19);
  (*(v2 + 104))(v16, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_21C6EDBAC(v19, v9, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v16, &v9[v21], &qword_27CDEC390, &qword_21CBA40E0);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    if (v22(&v9[v21], 1, v1) == 1)
    {
      sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
      return 8.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v9, v13, &qword_27CDEC390, &qword_21CBA40E0);
  if (v22(&v9[v21], 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v2 + 8))(v13, v1);
LABEL_6:
    sub_21C6EA794(v9, &qword_27CDEE530, &unk_21CBA9D80);
    return 10.0;
  }

  v24 = &v9[v21];
  v25 = v29;
  (*(v2 + 32))(v29, v24, v1);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v26 = sub_21CB85574();
  v27 = *(v2 + 8);
  v27(v25, v1);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
  v27(v13, v1);
  sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
  result = 10.0;
  if (v26)
  {
    return 8.0;
  }

  return result;
}

double sub_21CA33CBC()
{
  v1 = sub_21CB83834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = v0 + *(type metadata accessor for PMLargeTypeView(0) + 28);
  sub_21C728D50(v19);
  (*(v2 + 104))(v16, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_21C6EDBAC(v19, v9, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v16, &v9[v21], &qword_27CDEC390, &qword_21CBA40E0);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    if (v22(&v9[v21], 1, v1) == 1)
    {
      sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
      return 42.0;
    }

    goto LABEL_6;
  }

  sub_21C6EDBAC(v9, v13, &qword_27CDEC390, &qword_21CBA40E0);
  if (v22(&v9[v21], 1, v1) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v2 + 8))(v13, v1);
LABEL_6:
    sub_21C6EA794(v9, &qword_27CDEE530, &unk_21CBA9D80);
    return 58.0;
  }

  v24 = &v9[v21];
  v25 = v29;
  (*(v2 + 32))(v29, v24, v1);
  sub_21CA38E78(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v26 = sub_21CB85574();
  v27 = *(v2 + 8);
  v27(v25, v1);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
  v27(v13, v1);
  sub_21C6EA794(v9, &qword_27CDEC390, &qword_21CBA40E0);
  result = 58.0;
  if (v26)
  {
    return 42.0;
  }

  return result;
}

uint64_t sub_21CA34130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59D8, &qword_21CBBF078);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-v5];
  v14 = a1;
  sub_21CB83CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59F0, &qword_21CBBF088);
  sub_21CA37B50();
  sub_21CB81FF4();
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59E0, &qword_21CBBF080);
  sub_21C6EADEC(&qword_27CDF59E8, &qword_27CDF59D8, &qword_21CBBF078);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v9 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  v15 = v8;
  v16 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v7;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CB84894();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21CA3438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_21CB83604();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_21CB835C4();
  v18[4] = a1;
  type metadata accessor for PMPlatformRoleButton();
  sub_21CA38E78(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB82194();
  v15 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  MEMORY[0x21CF131E0](v9, v5, v15);
  (*(v6 + 8))(v9, v5);
  v18[6] = v5;
  v18[7] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v14, v10, OpaqueTypeConformance2);
  return (*(v11 + 8))(v14, v10);
}

double sub_21CA34644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + *(type metadata accessor for PMLargeTypeView(0) + 52));
  *a2 = sub_21CB832E4();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A20, &qword_21CBBF0A8);
  sub_21CA34724(v2, a2 + *(v5 + 44));
  LOBYTE(v2) = sub_21CB83CF4();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A08, &qword_21CBBF090) + 36);
  *v6 = v2;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  LOBYTE(v2) = sub_21CB83D04();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59F0, &qword_21CBBF088) + 36);
  *v7 = v2;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  return result;
}

uint64_t sub_21CA34724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A28, &qword_21CBBF0B0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A30, &qword_21CBBF0B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  sub_21CA34944(&v28 - v17);
  sub_21CA3580C(v11);
  v19 = sub_21CB83CD4();
  v20 = *(a1 + *(type metadata accessor for PMLargeTypeView(0) + 52));
  sub_21CB81F24();
  v21 = &v11[*(v5 + 44)];
  *v21 = v19;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_21C6EDBAC(v18, v15, &qword_27CDF5A30, &qword_21CBBF0B8);
  sub_21C77881C(v11, v8);
  sub_21C6EDBAC(v15, a2, &qword_27CDF5A30, &qword_21CBBF0B8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A38, &qword_21CBBF0C0);
  sub_21C77881C(v8, a2 + *(v26 + 48));
  sub_21C6EA794(v11, &qword_27CDF5A28, &qword_21CBBF0B0);
  sub_21C6EA794(v18, &qword_27CDF5A30, &qword_21CBBF0B8);
  sub_21C6EA794(v8, &qword_27CDF5A28, &qword_21CBBF0B0);
  return sub_21C6EA794(v15, &qword_27CDF5A30, &qword_21CBBF0B8);
}

uint64_t sub_21CA34944@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v113 = type metadata accessor for PMWiFiIcon();
  v2 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v4 = (v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v100 = v95 - v6;
  v98 = type metadata accessor for PMWiFiNetwork();
  v97 = *(v98 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v99 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BD8, &qword_21CBBF230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v95 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BE0, &qword_21CBBF238);
  v13 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v111 = v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BE8, &unk_21CBBF240);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v112 = v95 - v17;
  v18 = sub_21CB80E34();
  v103 = *(v18 - 8);
  v104 = v18;
  v19 = *(v103 + 64);
  MEMORY[0x28223BE20](v18);
  v102 = v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = v95 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v107 = v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v96 = v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v95 - v30;
  v109 = type metadata accessor for PMAccountIcon();
  v32 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v34 = v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v105 = v95 - v36;
  v37 = type metadata accessor for PMAccount(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v106 = v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v108 = v95 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A0, &qword_21CBA2788);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = v95 - v44;
  v46 = type metadata accessor for PMLargeTypeView(0);
  sub_21C6EDBAC(v1 + *(v46 + 20), v45, &qword_27CDEB9A0, &qword_21CBA2788);
  v47 = type metadata accessor for PMLargeTypeView.Icon(0);
  if ((*(*(v47 - 8) + 48))(v45, 1, v47) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_21CA38CBC();
    return sub_21CB83494();
  }

  else
  {
    v95[1] = v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB9A8, &qword_21CBA2830) + 48)];
      v50 = v99;
      sub_21CA38DA8(v45, v99, type metadata accessor for PMWiFiNetwork);
      if (sub_21CB85174())
      {
        v51 = 8.18181818;
      }

      else
      {
        v51 = 7.63636364;
      }

      if (sub_21CB85174())
      {
        v52 = 60.0;
      }

      else
      {
        v52 = 56.0;
      }

      if (sub_21CB85174())
      {
        v53 = 34.2857143;
      }

      else
      {
        v53 = 32.0;
      }

      v54 = v113;
      v55 = *(v113 + 20);
      sub_21CA38E10(v50, v4 + v55, type metadata accessor for PMWiFiNetwork);
      (*(v97 + 56))(v4 + v55, 0, 1, v98);
      *v4 = v51;
      v4[1] = v52;
      v4[2] = v52;
      v4[3] = v53;
      *(v4 + *(v54 + 24)) = v49;
      v56 = *(v54 + 28);
      *(v4 + v56) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
      swift_storeEnumTagMultiPayload();
      v57 = v100;
      sub_21CA38DA8(v4, v100, type metadata accessor for PMWiFiIcon);
      sub_21CA38E10(v57, v111, type metadata accessor for PMWiFiIcon);
      swift_storeEnumTagMultiPayload();
      sub_21CA38E78(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
      sub_21CA38E78(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon);
      v58 = v112;
      sub_21CB83494();
      sub_21C6EDBAC(v58, v12, &qword_27CDF5BE8, &unk_21CBBF240);
      swift_storeEnumTagMultiPayload();
      sub_21CA38CBC();
      sub_21CB83494();
      sub_21C6EA794(v58, &qword_27CDF5BE8, &unk_21CBBF240);
      sub_21CA38EC0(v57, type metadata accessor for PMWiFiIcon);
      v59 = type metadata accessor for PMWiFiNetwork;
      v60 = v50;
    }

    else
    {
      v61 = v108;
      sub_21CA38DA8(v45, v108, type metadata accessor for PMAccount);
      sub_21CA38E10(v61, v106, type metadata accessor for PMAccount);
      PMAccount.signInWithAppleAccount.getter(v31);
      v62 = type metadata accessor for PMSignInWithAppleAccount();
      v63 = *(*(v62 - 8) + 48);
      v64 = v63(v31, 1, v62);
      v100 = v15;
      if (v64 == 1)
      {
        sub_21C6EA794(v31, &qword_27CDEB2A8, &qword_21CBA1670);
        v99 = PMAccount.titleForSorting.getter();
        v98 = v65;
      }

      else
      {
        v66 = &v31[*(v62 + 24)];
        v67 = v66[1];
        v99 = *v66;
        v98 = v67;

        sub_21CA38EC0(v31, type metadata accessor for PMSignInWithAppleAccount);
      }

      v97 = PMAccount.userVisibleDomain.getter();
      v95[0] = v68;
      v69 = v96;
      PMAccount.signInWithAppleAccount.getter(v96);
      if (v63(v69, 1, v62) == 1)
      {
        sub_21C6EA794(v69, &qword_27CDEB2A8, &qword_21CBA1670);
        v70 = sub_21CB85B74();
        (*(*(v70 - 8) + 56))(v107, 1, 1, v70);
      }

      else
      {
        v71 = *(v62 + 20);
        v72 = sub_21CB85B74();
        v73 = *(v72 - 8);
        v74 = v69 + v71;
        v75 = v107;
        (*(v73 + 16))(v107, v74, v72);
        sub_21CA38EC0(v69, type metadata accessor for PMSignInWithAppleAccount);
        (*(v73 + 56))(v75, 0, 1, v72);
      }

      KeyPath = swift_getKeyPath();
      v96 = v12;
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(KeyPath, v116);

      type metadata accessor for PMAccountsState();
      sub_21CA38E78(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
      v77 = sub_21CB82674();
      v79 = v78;

      *v34 = v77;
      *(v34 + 1) = v79;
      *(v34 + 2) = swift_getKeyPath();
      *(v34 + 3) = swift_getKeyPath();
      *(v34 + 4) = swift_getKeyPath();
      v115 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
      sub_21CB84D44();
      *(v34 + 40) = v116;
      v80 = v109;
      v81 = *(v109 + 44);
      v82 = sub_21CB85B74();
      (*(*(v82 - 8) + 56))(&v34[v81], 1, 1, v82);
      v83 = &v34[v80[16]];
      v84 = &v34[v80[17]];
      *v84 = sub_21C7E79A0;
      *(v84 + 1) = 0;
      v84[16] = 0;
      v85 = v80[18];
      v86 = v101;
      sub_21CB80E24();
      v87 = v103;
      v88 = v104;
      (*(v103 + 16))(v102, v86, v104);
      sub_21CB84D44();
      (*(v87 + 8))(v86, v88);
      sub_21CA38EC0(v106, type metadata accessor for PMAccount);
      v89 = v98;
      *(v34 + 7) = v99;
      *(v34 + 8) = v89;
      v90 = v95[0];
      *(v34 + 9) = v97;
      *(v34 + 10) = v90;
      sub_21C805878(v107, &v34[v81]);
      v34[v80[12]] = 1;
      v34[v80[13]] = 1;
      v34[v80[14]] = 1;
      v91 = &v34[v80[15]];
      *v91 = xmmword_21CBA4340;
      v91[16] = 0;
      *v83 = 0u;
      *(v83 + 1) = 0u;
      *(v83 + 2) = 0u;
      *(v83 + 6) = 1;
      v92 = v34;
      v93 = v105;
      sub_21CA38DA8(v92, v105, type metadata accessor for PMAccountIcon);
      sub_21CA38E10(v93, v111, type metadata accessor for PMAccountIcon);
      swift_storeEnumTagMultiPayload();
      sub_21CA38E78(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
      sub_21CA38E78(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon);
      v94 = v112;
      sub_21CB83494();
      sub_21C6EDBAC(v94, v96, &qword_27CDF5BE8, &unk_21CBBF240);
      swift_storeEnumTagMultiPayload();
      sub_21CA38CBC();
      sub_21CB83494();
      sub_21C6EA794(v94, &qword_27CDF5BE8, &unk_21CBBF240);
      sub_21CA38EC0(v93, type metadata accessor for PMAccountIcon);
      v60 = v108;
      v59 = type metadata accessor for PMAccount;
    }

    return sub_21CA38EC0(v60, v59);
  }
}

uint64_t sub_21CA3580C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_21CB83274();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB83A34();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMLargeTypeView(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A40, &qword_21CBBF0C8);
  v13 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v15 = v37 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A48, &qword_21CBBF0D0);
  v45 = *(v42 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  v18 = v37 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A50, &qword_21CBBF0D8);
  v19 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v41 = v37 - v23;
  v24 = *(v2 + *(v10 + 44));
  v25 = *v2;
  v38 = v2[1];
  v39 = v25;
  v26 = sub_21CB85694();
  if (v26 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  *v15 = sub_21CB83CA4();
  v37[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A58, &unk_21CBBF0E0) + 44);
  v52 = sub_21CA37D04(v27, 0, -1);
  v37[0] = swift_getKeyPath();
  sub_21CA38E10(v2, v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMLargeTypeView);
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  sub_21CA38DA8(v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PMLargeTypeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A60, &qword_21CBBF108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5A68, &qword_21CBBF110);
  sub_21C6EADEC(&qword_27CDF5A70, &qword_27CDF5A60, &qword_21CBBF108);
  sub_21C6EADEC(&qword_27CDF5A78, &qword_27CDF5A68, &qword_21CBBF110);
  sub_21CB84FD4();
  v30 = v43;
  sub_21CB83A24();
  v31 = sub_21CA3800C();
  v32 = v40;
  sub_21CB844F4();
  (*(v46 + 8))(v30, v47);
  sub_21C6EA794(v15, &qword_27CDF5A40, &qword_21CBBF0C8);
  v33 = v48;
  sub_21CB83214();
  v52 = v32;
  v53 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_21CB84594();
  (*(v49 + 8))(v33, v50);
  (*(v45 + 8))(v18, v34);
  v52 = v39;
  v53 = v38;
  sub_21C71F3FC();
  v35 = v41;
  sub_21CB82894();
  sub_21C6EA794(v21, &qword_27CDF5A50, &qword_21CBBF0D8);
  sub_21CA380BC();
  sub_21CB84634();
  return sub_21C6EA794(v35, &qword_27CDF5A50, &qword_21CBBF0D8);
}

uint64_t sub_21CA35E00(uint64_t a1)
{
  v3 = sub_21CB836C4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_21CB85124();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21CB85134();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_21CA32F68();
  (*(v6 + 104))(v9, *MEMORY[0x277CDF0F0], v5);
  v14 = type metadata accessor for PMLargeTypeView(0);
  v15 = *(v1 + *(v14 + 44));
  sub_21CB85144();
  sub_21CA329F4(v13, a1);
  v16 = *(v1 + *(v14 + 48));
  v19 = v1;
  v20 = a1;
  sub_21CB832E4();
  v21 = 0;
  sub_21CA38E78(&qword_27CDF5AA0, MEMORY[0x277CE0428]);
  sub_21CB86524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AA8, &qword_21CBBF120);
  sub_21CA381BC();
  return sub_21CB852A4();
}

uint64_t sub_21CA36080@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMLargeTypeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81EE4();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21CA38E10(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMLargeTypeView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21CA38DA8(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMLargeTypeView);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21CA37CA4;
  v19[1] = v17;
  return result;
}

uint64_t sub_21CA36288(uint64_t a1)
{
  v20 = sub_21CB82F84();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_21CB823B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMLargeTypeView(0);
  sub_21C6EDBAC(a1 + *(v15 + 24), v9, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_21CB823A4();
  return (*(v11 + 8))(v14, v10);
}

BOOL sub_21CA36510()
{
  v1 = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v7 = *v0;
  v8 = v0[1];

  do
  {
    sub_21CB85714();
    v4 = v3;
    if (!v3)
    {
      break;
    }

    v5 = sub_21CB854E4();
  }

  while ((v5 & 1) != 0);

  return v4 == 0;
}

uint64_t sub_21CA36590(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_21;
  }

  v5 = *v2;
  v6 = v2[1];
  result = sub_21CB85694();
  v7 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_19;
  }

  if (__OFSUB__(a2, 1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = v4 % a2;
  if (v7 == v4 || v8 == a2 - 1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if (v7 == v4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v8)
  {
    return v10;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_21CA36628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v87 = a1;
  v88 = a4;
  v6 = sub_21CB82054();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = v74 - v10;
  v11 = sub_21CB83D74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AF0, &qword_21CBBF140);
  v21 = *(v20 - 8);
  v86 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v24 = v74 - v23;
  v96 = a1;
  v97 = a2;
  v85 = a2;
  sub_21C71F3FC();

  v25 = sub_21CB84054();
  v77 = v26;
  v78 = v25;
  v28 = v27;
  v74[0] = v29;
  sub_21CA33CBC();
  v30 = *MEMORY[0x277CE0980];
  v31 = sub_21CB83DC4();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v19, v30, v31);
  (*(v32 + 56))(v19, 0, 1, v31);
  sub_21CB83E14();
  sub_21C6EA794(v19, &qword_27CDEBB58, &qword_21CBAF8A0);
  (*(v12 + 104))(v15, *MEMORY[0x277CE0948], v11);
  sub_21CB83D84();

  (*(v12 + 8))(v15, v11);
  sub_21CB83DA4();

  v34 = v77;
  v33 = v78;
  v35 = sub_21CB84024();
  v82 = v36;
  v83 = v35;
  LOBYTE(v31) = v37;
  v81 = v38;

  v39 = v74[1];
  sub_21C74A72C(v33, v34, v28 & 1);

  sub_21CA32F68();
  sub_21CA333E4();
  sub_21CB85214();
  sub_21CB82374();
  LODWORD(v77) = v31 & 1;
  LOBYTE(v96) = v31 & 1;
  LODWORD(v78) = sub_21CB83CE4();
  v74[0] = sub_21CB84A94();
  v40 = type metadata accessor for PMLargeTypeView(0);
  v41 = v39 + *(v40 + 32);
  v42 = v75;
  sub_21C74F0F8(v75);
  v44 = v79;
  v43 = v80;
  v45 = v76;
  (*(v79 + 104))(v76, *MEMORY[0x277CDF3D0], v80);
  sub_21CB82044();
  v46 = *(v44 + 8);
  v46(v45, v43);
  v46(v42, v43);
  v47 = sub_21CB84B04();

  v48 = *(v39 + *(v40 + 40));
  sub_21CB82164();
  v49 = v115;
  LODWORD(v46) = v116;
  LODWORD(v44) = v117;
  v50 = v118;
  v51 = v119;
  v52 = v120;
  v53 = sub_21CB85214();
  v55 = v54;
  v56 = sub_21CB85214();
  LOBYTE(v90) = v84;
  *(&v90 + 1) = v113[0];
  DWORD1(v90) = *(v113 + 3);
  *(&v90 + 1) = v49;
  *&v91 = __PAIR64__(v44, v46);
  *(&v91 + 1) = v50;
  *&v92 = v51;
  *(&v92 + 1) = v52;
  *&v93 = v47;
  WORD4(v93) = 256;
  *(&v93 + 10) = v111;
  HIWORD(v93) = v112;
  *&v94 = v53;
  *(&v94 + 1) = v55;
  *&v95 = v56;
  *(&v95 + 1) = v57;
  *&v114[23] = v91;
  *&v114[7] = v90;
  *&v114[87] = v95;
  *&v114[71] = v94;
  *&v114[55] = v93;
  *&v114[39] = v92;
  LOBYTE(v96) = v84;
  HIDWORD(v96) = *(v113 + 3);
  *(&v96 + 1) = v113[0];
  v97 = v49;
  v98 = v46;
  v99 = v44;
  v100 = v50;
  v101 = v51;
  v102 = v52;
  v103 = v47;
  v104 = 256;
  v106 = v112;
  v105 = v111;
  v107 = v53;
  v108 = v55;
  v109 = v56;
  v110 = v57;
  sub_21C6EDBAC(&v90, &v89, &qword_27CDF5B60, &unk_21CBBF178);
  sub_21C6EA794(&v96, &qword_27CDF5B60, &unk_21CBBF178);
  v58 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v59 = [objc_opt_self() pm_defaults];
  v60 = sub_21CB81E74();
  v61 = sub_21CB85254();
  v62 = &v24[*(v86 + 44)];
  LODWORD(v46) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB920, &qword_21CBCC940) + 28);
  v63 = v85;

  sub_21CB82B04();
  *v62 = swift_getKeyPath();
  v64 = v122;
  *(v24 + 2) = v121;
  *(v24 + 3) = v64;
  *(v24 + 4) = v123;
  v65 = *&v114[32];
  *(v24 + 137) = *&v114[48];
  v66 = *&v114[80];
  *(v24 + 153) = *&v114[64];
  *(v24 + 169) = v66;
  v67 = *&v114[16];
  *(v24 + 89) = *v114;
  *(v24 + 105) = v67;
  v68 = v82;
  *v24 = v83;
  *(v24 + 1) = v68;
  v24[16] = v77;
  *(v24 + 3) = v81;
  *(v24 + 10) = 3;
  v24[88] = v78;
  v69 = *&v114[95];
  *(v24 + 121) = v65;
  *(v24 + 23) = v69;
  *(v24 + 24) = v60;
  v24[200] = 1;
  *(v24 + 26) = v61;
  *(v24 + 27) = v87;
  *(v24 + 28) = v63;
  if ((sub_21CB854D4() & 1) == 0)
  {
    if ((sub_21CB854E4() & 1) == 0)
    {
      v70 = sub_21CB84A74();
      goto LABEL_9;
    }

    if (!sub_21CA36510())
    {
      v70 = sub_21CB84AE4();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ((sub_21CB854B4() & 1) == 0)
  {
LABEL_6:
    v70 = sub_21CB84B14();
    goto LABEL_9;
  }

  v70 = sub_21CB84AA4();
LABEL_9:
  v71 = v70;
  v72 = v88;
  sub_21C716934(v24, v88, &qword_27CDF5AF0, &qword_21CBBF140);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AE0, &qword_21CBBF138);
  *(v72 + *(result + 36)) = v71;
  return result;
}

uint64_t sub_21CA36E00(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMLargeTypeView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  v8 = a1[1];
  v13[1] = sub_21CA389FC();
  swift_getKeyPath();
  sub_21CA38E10(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMLargeTypeView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21CA38DA8(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMLargeTypeView);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21CA38BC4;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BA8, &qword_21CBBF1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AC0, &qword_21CBBF128);
  sub_21C6EADEC(&qword_27CDF5BB0, &qword_27CDF5BA8, &qword_21CBBF1D0);
  sub_21CA38240();
  return sub_21CB84FD4();
}

uint64_t sub_21CA37014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v73 = a4;
  v74 = a2;
  v75 = a3;
  v72 = a1;
  v81 = a5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BA0, &unk_21CBBF1A0);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v67 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BB8, &qword_21CBBF1D8);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = &v67 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B90, &qword_21CBBF198);
  v9 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v71 = &v67 - v10;
  v11 = sub_21CB831A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B70, &qword_21CBBF188);
  v16 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v18 = &v67 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BC0, &qword_21CBBF1E0);
  v19 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v79 = &v67 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BC8, &qword_21CBBF1E8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AD0, &qword_21CBBF130);
  v25 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v27 = &v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5AE0, &qword_21CBBF138);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v67 - v30;
  v32 = sub_21CA36590(v72, v73);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      sub_21CA36628(v74, v75, 2, v18);
      sub_21CA33858();
      sub_21CA33858();
      (*(v12 + 104))(v15, *MEMORY[0x277CE0118], v11);
      v36 = &v18[*(v76 + 36)];
      v37 = sub_21CB83824();
      (*(v12 + 16))(&v36[*(v37 + 20)], v15, v11);
      sub_21CB83504();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      (*(v12 + 8))(v15, v11);
      *v36 = v39;
      *(v36 + 1) = v41;
      *(v36 + 2) = v43;
      *(v36 + 3) = v45;
      *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B80, &qword_21CBBF190) + 36)] = 256;
      v46 = &qword_27CDF5B70;
      v47 = &qword_21CBBF188;
      sub_21C6EDBAC(v18, v69, &qword_27CDF5B70, &qword_21CBBF188);
      swift_storeEnumTagMultiPayload();
      sub_21CA38800();
      sub_21CA38944();
      v48 = v71;
      sub_21CB83494();
      sub_21C6EDBAC(v48, v79, &qword_27CDF5B90, &qword_21CBBF198);
      swift_storeEnumTagMultiPayload();
      sub_21CA382CC();
      sub_21CA388B8();
      sub_21CB83494();
      sub_21C6EA794(v48, &qword_27CDF5B90, &qword_21CBBF198);
      v33 = v18;
    }

    else
    {
      v61 = v67;
      sub_21CA36628(v74, v75, 3, v67);
      v62 = sub_21CA33858();
      v63 = (v61 + *(v70 + 36));
      v64 = sub_21CB82A84();
      (*(v12 + 104))(v63 + *(v64 + 20), *MEMORY[0x277CE0118], v11);
      *v63 = v62;
      v63[1] = v62;
      *(v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAC0, &qword_21CBA2B60) + 36)) = 256;
      v46 = &qword_27CDF5BA0;
      v47 = &unk_21CBBF1A0;
      sub_21C6EDBAC(v61, v69, &qword_27CDF5BA0, &unk_21CBBF1A0);
      swift_storeEnumTagMultiPayload();
      sub_21CA38800();
      sub_21CA38944();
      v65 = v71;
      sub_21CB83494();
      sub_21C6EDBAC(v65, v79, &qword_27CDF5B90, &qword_21CBBF198);
      swift_storeEnumTagMultiPayload();
      sub_21CA382CC();
      sub_21CA388B8();
      sub_21CB83494();
      sub_21C6EA794(v65, &qword_27CDF5B90, &qword_21CBBF198);
      v33 = v61;
    }

    v34 = v46;
    v35 = v47;
  }

  else if (v32)
  {
    v49 = v11;
    v50 = v18;
    sub_21CA36628(v74, v75, 1, v18);
    sub_21CA33858();
    sub_21CA33858();
    (*(v12 + 104))(v15, *MEMORY[0x277CE0118], v49);
    v51 = &v18[*(v76 + 36)];
    v52 = sub_21CB83824();
    (*(v12 + 16))(&v51[*(v52 + 20)], v15, v49);
    sub_21CB83504();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    (*(v12 + 8))(v15, v49);
    *v51 = v54;
    *(v51 + 1) = v56;
    *(v51 + 2) = v58;
    *(v51 + 3) = v60;
    *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5B80, &qword_21CBBF190) + 36)] = 256;
    sub_21C6EDBAC(v50, v24, &qword_27CDF5B70, &qword_21CBBF188);
    swift_storeEnumTagMultiPayload();
    sub_21CA38358();
    sub_21CA38800();
    sub_21CB83494();
    sub_21C6EDBAC(v27, v79, &qword_27CDF5AD0, &qword_21CBBF130);
    swift_storeEnumTagMultiPayload();
    sub_21CA382CC();
    sub_21CA388B8();
    sub_21CB83494();
    sub_21C6EA794(v27, &qword_27CDF5AD0, &qword_21CBBF130);
    v33 = v50;
    v34 = &qword_27CDF5B70;
    v35 = &qword_21CBBF188;
  }

  else
  {
    sub_21CA36628(v74, v75, 0, v31);
    sub_21C6EDBAC(v31, v24, &qword_27CDF5AE0, &qword_21CBBF138);
    swift_storeEnumTagMultiPayload();
    sub_21CA38358();
    sub_21CA38800();
    sub_21CB83494();
    sub_21C6EDBAC(v27, v79, &qword_27CDF5AD0, &qword_21CBBF130);
    swift_storeEnumTagMultiPayload();
    sub_21CA382CC();
    sub_21CA388B8();
    sub_21CB83494();
    sub_21C6EA794(v27, &qword_27CDF5AD0, &qword_21CBBF130);
    v33 = v31;
    v34 = &qword_27CDF5AE0;
    v35 = &qword_21CBBF138;
  }

  return sub_21C6EA794(v33, v34, v35);
}

uint64_t sub_21CA3798C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59D0, &qword_21CBBF070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59D8, &qword_21CBBF078);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59E0, &qword_21CBBF080);
  sub_21C6EADEC(&qword_27CDF59E8, &qword_27CDF59D8, &qword_21CBBF078);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21CA37B50()
{
  result = qword_27CDF59F8;
  if (!qword_27CDF59F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59F0, &qword_21CBBF088);
    sub_21CA37BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF59F8);
  }

  return result;
}

unint64_t sub_21CA37BDC()
{
  result = qword_27CDF5A00;
  if (!qword_27CDF5A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A08, &qword_21CBBF090);
    sub_21C6EADEC(&qword_27CDF5A10, &qword_27CDF5A18, &unk_21CBBF098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5A00);
  }

  return result;
}

uint64_t sub_21CA37CA4()
{
  v1 = *(type metadata accessor for PMLargeTypeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CA36288(v2);
}

uint64_t sub_21CA37D04(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
    v11 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_21CA37F98(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMLargeTypeView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_21CA35E00(*a1);
}

unint64_t sub_21CA3800C()
{
  result = qword_27CDF5A80;
  if (!qword_27CDF5A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A40, &qword_21CBBF0C8);
    sub_21C6EADEC(&qword_27CDF5A88, &qword_27CDF5A90, &qword_21CBBF118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5A80);
  }

  return result;
}

unint64_t sub_21CA380BC()
{
  result = qword_27CDF5A98;
  if (!qword_27CDF5A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A50, &qword_21CBBF0D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5A40, &qword_21CBBF0C8);
    sub_21CA3800C();
    swift_getOpaqueTypeConformance2();
    sub_21CA38E78(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5A98);
  }

  return result;
}

unint64_t sub_21CA381BC()
{
  result = qword_27CDF5AB0;
  if (!qword_27CDF5AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AA8, &qword_21CBBF120);
    sub_21CA38240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AB0);
  }

  return result;
}

unint64_t sub_21CA38240()
{
  result = qword_27CDF5AB8;
  if (!qword_27CDF5AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AC0, &qword_21CBBF128);
    sub_21CA382CC();
    sub_21CA388B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AB8);
  }

  return result;
}

unint64_t sub_21CA382CC()
{
  result = qword_27CDF5AC8;
  if (!qword_27CDF5AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AD0, &qword_21CBBF130);
    sub_21CA38358();
    sub_21CA38800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AC8);
  }

  return result;
}

unint64_t sub_21CA38358()
{
  result = qword_27CDF5AD8;
  if (!qword_27CDF5AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AE0, &qword_21CBBF138);
    sub_21CA38410();
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AD8);
  }

  return result;
}

unint64_t sub_21CA38410()
{
  result = qword_27CDF5AE8;
  if (!qword_27CDF5AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5AF0, &qword_21CBBF140);
    sub_21CA384C8();
    sub_21C6EADEC(&qword_27CDEB938, &qword_27CDEB920, &qword_21CBCC940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AE8);
  }

  return result;
}

unint64_t sub_21CA384C8()
{
  result = qword_27CDF5AF8;
  if (!qword_27CDF5AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B00, &qword_21CBBF148);
    sub_21CA38580();
    sub_21C6EADEC(&qword_27CDEB930, &qword_27CDEB918, &unk_21CBA26D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5AF8);
  }

  return result;
}

unint64_t sub_21CA38580()
{
  result = qword_27CDF5B08;
  if (!qword_27CDF5B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B10, &qword_21CBBF150);
    sub_21CA3860C();
    sub_21C99CCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B08);
  }

  return result;
}

unint64_t sub_21CA3860C()
{
  result = qword_27CDF5B18;
  if (!qword_27CDF5B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B20, &qword_21CBBF158);
    sub_21CA386C4();
    sub_21C6EADEC(&qword_27CDF5B58, &qword_27CDF5B60, &unk_21CBBF178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B18);
  }

  return result;
}

unint64_t sub_21CA386C4()
{
  result = qword_27CDF5B28;
  if (!qword_27CDF5B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B30, &qword_21CBBF160);
    sub_21CA3877C();
    sub_21C6EADEC(&qword_27CDF5B48, &qword_27CDF5B50, &qword_21CBBF170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B28);
  }

  return result;
}

unint64_t sub_21CA3877C()
{
  result = qword_27CDF5B38;
  if (!qword_27CDF5B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B40, &qword_21CBBF168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B38);
  }

  return result;
}

unint64_t sub_21CA38800()
{
  result = qword_27CDF5B68;
  if (!qword_27CDF5B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B70, &qword_21CBBF188);
    sub_21CA38358();
    sub_21C6EADEC(&qword_27CDF5B78, &qword_27CDF5B80, &qword_21CBBF190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B68);
  }

  return result;
}

unint64_t sub_21CA388B8()
{
  result = qword_27CDF5B88;
  if (!qword_27CDF5B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5B90, &qword_21CBBF198);
    sub_21CA38800();
    sub_21CA38944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B88);
  }

  return result;
}

unint64_t sub_21CA38944()
{
  result = qword_27CDF5B98;
  if (!qword_27CDF5B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5BA0, &unk_21CBBF1A0);
    sub_21CA38358();
    sub_21C6EADEC(&qword_27CDEBAB8, &qword_27CDEBAC0, &qword_21CBA2B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5B98);
  }

  return result;
}

uint64_t sub_21CA389FC()
{

  result = sub_21CB85714();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    while (!__OFADD__(v3, 1))
    {
      if (!v4)
      {
        v6 = v2[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v7 = v1;
        v8 = result;
        v9 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5BD0, &unk_21CBBF220);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[3 * v14 + 4])
          {
            memmove(v11 + 4, v2 + 4, 24 * v14);
          }

          v2[2] = 0;
        }

        v5 = (v13 + 24 * v14);
        v4 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v11;
        result = v8;
        v1 = v7;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        goto LABEL_27;
      }

      *v5 = v3;
      v5[1] = result;
      v5[2] = v1;
      v5 += 3;
      result = sub_21CB85714();
      ++v3;
      if (!v1)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = 0;
LABEL_22:

  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v4);
  v19 = v18 - v4;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21CA38BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for PMLargeTypeView(0) - 8);
  v10 = *(v4 + ((*(v9 + 64) + ((*(v9 + 80) + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21CA37014(a1, a2, a3, v10, a4);
}

uint64_t sub_21CA38C88(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

unint64_t sub_21CA38CBC()
{
  result = qword_27CDF5BF0;
  if (!qword_27CDF5BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5BE8, &unk_21CBBF240);
    sub_21CA38E78(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
    sub_21CA38E78(&qword_27CDEDDD0, type metadata accessor for PMWiFiIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5BF0);
  }

  return result;
}

uint64_t sub_21CA38DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA38E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA38E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CA38EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CA38F78()
{
  result = qword_27CDF5C18;
  if (!qword_27CDF5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C18);
  }

  return result;
}

unint64_t sub_21CA38FD0()
{
  result = qword_27CDF5C20;
  if (!qword_27CDF5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C20);
  }

  return result;
}

unint64_t sub_21CA39028()
{
  result = qword_27CDF5C28;
  if (!qword_27CDF5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C28);
  }

  return result;
}

unint64_t sub_21CA3907C()
{
  result = qword_27CDF5C30;
  if (!qword_27CDF5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C30);
  }

  return result;
}

unint64_t sub_21CA390E4()
{
  result = qword_27CDF5C38;
  if (!qword_27CDF5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5C38);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PMListSubtitleCellLabeledContentStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21CA39198@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_21CB83B84();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_21CB83B94();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_21CB83BA4();
  sub_21CB83BB4();
  v18 = *(v11 + 16);
  v18(v14, v17, v10);
  v19 = *(v3 + 16);
  v19(v6, v9, v1);
  v20 = v31;
  v18(v31, v14, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C70, &qword_21CBBF570) + 48)];
  v22 = v28;
  v19(v21, v6, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v6, v25);
  return (v26)(v14, v10);
}

uint64_t sub_21CA39428@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_21CB832F4();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C58, &qword_21CBBF560) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C60, &qword_21CBBF568);
  sub_21C6EADEC(&qword_27CDF5C68, &qword_27CDF5C60, &qword_21CBBF568);
  return sub_21CB81FC4();
}

__n128 sub_21CA39538@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for PMPasswordManagerState();
  sub_21C707D40(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v8 = sub_21CB82B54();
  swift_getKeyPath();
  v9 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C88, &qword_21CBBF638) + 36);
  sub_21CB82B74();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier(0);
  v12 = (v9 + *(v11 + 20));
  *v12 = sub_21CA39BFC;
  v12[1] = v10;
  v13 = v9 + *(v11 + 24);
  *v13 = sub_21CA20F74;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C90, &qword_21CBBF640);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  v15 = a2;
  v16 = sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE20, &unk_21CBBF670);
  sub_21CB84D44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAE28, &unk_21CBA0620);
  sub_21CB84D44();
  v19 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5C98, &qword_21CBBF680) + 36);
  *v19 = v22;
  *(v19 + 16) = v23;
  *(v19 + 24) = sub_21CA39C04;
  *(v19 + 32) = v17;
  result = v21;
  *(v19 + 56) = v21;
  *(v19 + 40) = v21;
  return result;
}

uint64_t sub_21CA39808(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C725C54(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21C7B7380(v7);
  }

  sub_21C7D4AC0(v7, v12);
  sub_21CA39970(v12, a2);
  return sub_21C7D4A64(v12);
}

uint64_t sub_21CA39970(void *a1, void *a2)
{
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a2;
    sub_21CB81DC4();
    sub_21CACB1D0();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    sub_21C8185F8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DC4();
    sub_21CACB1D0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v6 = a1[1];
    *(inited + 32) = *a1;
    *(inited + 40) = v6;
    swift_bridgeObjectRetain_n();
    sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DC4();
    v7 = *&v4[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController];

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_21CB81DC4();
  }

  else
  {
    type metadata accessor for PMPasswordManagerState();
    sub_21C707D40(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

unint64_t sub_21CA39C0C()
{
  result = qword_27CDF5CA0;
  if (!qword_27CDF5CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5C98, &qword_21CBBF680);
    sub_21CA39C98();
    sub_21C725BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CA0);
  }

  return result;
}

unint64_t sub_21CA39C98()
{
  result = qword_27CDF5CA8;
  if (!qword_27CDF5CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5C88, &qword_21CBBF638);
    sub_21CA39D54();
    sub_21C707D40(&qword_27CDF5CB8, type metadata accessor for PMHandleInboundOTPAuthURLStorageViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CA8);
  }

  return result;
}

unint64_t sub_21CA39D54()
{
  result = qword_27CDF5CB0;
  if (!qword_27CDF5CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5C90, &qword_21CBBF640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5CB0);
  }

  return result;
}

void sub_21CA39DB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB85B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = *(v2 + 24);
  sub_21CB85B64();
  v13 = sub_21CB85584();

  v21 = [v12 objectForKey_];

  v14 = v21;
  if (v21)
  {
  }

  else
  {
    v15 = sub_21CB858E4();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    sub_21CB858B4();

    v16 = sub_21CB858A4();
    v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 2) = v16;
    *(v18 + 3) = v19;
    *(v18 + 4) = v2;
    (*(v5 + 32))(&v18[v17], v7, v4);
    sub_21C98B608(0, 0, v11, &unk_21CBBF800, v18);
  }
}

uint64_t sub_21CA3A040(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 184) = a8;
  *(v9 + 192) = a9;
  *(v9 + 168) = a1;
  *(v9 + 176) = a2;
  *(v9 + 152) = a6;
  *(v9 + 160) = a7;
  v10 = sub_21CB85B74();
  *(v9 + 200) = v10;
  v11 = *(v10 - 8);
  *(v9 + 208) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  sub_21CB858B4();
  *(v9 + 224) = sub_21CB858A4();
  v14 = sub_21CB85874();
  *(v9 + 232) = v14;
  *(v9 + 240) = v13;

  return MEMORY[0x2822009F8](sub_21CA3A13C, v14, v13);
}

uint64_t sub_21CA3A13C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = *(v0 + 20);
  v4 = *(*(v0 + 19) + 16);
  sub_21CB85B64();
  v5 = sub_21CB85584();
  *(v0 + 31) = v5;

  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_21CA3A298;
  v6 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5CC0, &unk_21CBBF7E8);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_21C9635DC;
  *(v0 + 13) = &block_descriptor_30;
  *(v0 + 14) = v6;
  [v4 fetchAppIconForBundleID:v5 iconSize:v0 + 10 completion:{v2, v1}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CA3A298()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_21CA3A558;
  }

  else
  {
    v6 = sub_21CA3A3C8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CA3A3C8()
{
  v1 = v0[31];
  v2 = v0[28];

  v3 = v0[18];

  if (v3)
  {
    v4 = [v3 data];
    if (v4)
    {
      v5 = v4;
      v6 = sub_21CB80C84();
      v8 = v7;

      v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
      sub_21C7A35D0(v6, v8);
      v10 = sub_21CB80C64();
      v11 = [v9 initWithData_];

      sub_21C7A34C0(v6, v8);
      if (v11)
      {
        v13 = v0[23];
        v12 = v0[24];
        v14 = v0[20];
        v15 = *(v0[19] + 24);
        sub_21CB85B64();
        v16 = sub_21CB85584();

        [v15 setObject:v11 forKey:v16];

        v13(v11);
      }

      sub_21C7A34C0(v6, v8);
    }
  }

  v17 = v0[27];

  v18 = v0[1];

  return v18();
}

uint64_t sub_21CA3A558()
{
  v32 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];

  swift_willThrow();

  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v4 = v0[32];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[20];
  v9 = sub_21CB81C84();
  __swift_project_value_buffer(v9, qword_27CE186F8);
  (*(v6 + 16))(v5, v8, v7);
  v10 = v4;
  v11 = sub_21CB81C64();
  v12 = sub_21CB85AF4();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[32];
  v15 = v0[26];
  v16 = v0[27];
  v17 = v0[25];
  if (v13)
  {
    log = v11;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v18 = 136315394;
    v20 = sub_21CB85B64();
    v22 = v21;
    (*(v15 + 8))(v16, v17);
    v23 = sub_21C98E004(v20, v22, &v31);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v14;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_21C6E5000, log, v12, "App icon fetching failed for clientID: %s with error: %@", v18, 0x16u);
    sub_21C91C9A4(v19);
    MEMORY[0x21CF16D90](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x21CF16D90](v29, -1, -1);
    MEMORY[0x21CF16D90](v18, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v16, v17);
  }

  v26 = v0[27];

  v27 = v0[1];

  return v27();
}

uint64_t sub_21CA3A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_21CB858B4();
  v5[21] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_21CA3A884, v7, v6);
}

uint64_t sub_21CA3A884()
{
  v1 = v0[20];
  v2 = *(v0[19] + 16);
  sub_21CB85B64();
  v3 = sub_21CB85584();
  v0[24] = v3;

  v0[2] = v0;
  v0[3] = sub_21CA3A9C4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB18DC;
  v0[13] = &block_descriptor_5_0;
  v0[14] = v4;
  [v2 cancelAppIconRequestBundleID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CA3A9C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_21CA3AB70;
  }

  else
  {
    v6 = sub_21CA3AAF4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CA3AAF4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  **(v0 + 144) = *(v0 + 200) != 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CA3AB70()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);

  swift_willThrow();

  **(v0 + 144) = *(v0 + 200) != 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21CA3AC04()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CA3AC68(uint64_t a1)
{
  v4 = *(sub_21CB85B74() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21CA3A7E8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21CA3AD68@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v141 = a4;
  v7 = sub_21CB83294();
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = *(v124 + 64);
  MEMORY[0x28223BE20](v7);
  v123 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D08, &qword_21CBBFA00);
  v10 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = v114 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D10, &qword_21CBBFA08);
  v131 = *(v12 - 8);
  v132 = v12;
  v13 = *(v131 + 64);
  MEMORY[0x28223BE20](v12);
  v128 = v114 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D18, &qword_21CBBFA10);
  v15 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v130 = v114 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D20, &qword_21CBBFA18);
  v17 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v134 = v114 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D28, &qword_21CBBFA20);
  v19 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v135 = v114 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D30, &qword_21CBBFA28);
  v21 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v136 = v114 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D38, &qword_21CBBFA30);
  v139 = *(v23 - 8);
  v140 = v23;
  v24 = *(v139 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v151 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v149 = v114 - v27;
  v28 = sub_21CB81024();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D40, &qword_21CBBFA38);
  v150 = *(v138 - 8);
  v33 = v150[8];
  v34 = MEMORY[0x28223BE20](v138);
  v148 = v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v147 = v114 - v36;
  v118 = a1;
  v119 = a2;
  v120 = a3;
  sub_21C74D668(a1, a2, a3, v114 - v36);
  sub_21CB81014();
  v37 = sub_21CB81004();
  v39 = v38;
  v40 = *(v29 + 8);
  v115 = v32;
  v116 = v29 + 8;
  v117 = v28;
  v114[0] = v40;
  v40(v32, v28);
  *&v172 = v37;
  *(&v172 + 1) = v39;
  v114[1] = sub_21C71F3FC();
  v41 = sub_21CB84054();
  v43 = v42;
  LOBYTE(v32) = v44;
  sub_21CB83DB4();
  v45 = sub_21CB84024();
  v47 = v46;
  LOBYTE(a1) = v48;

  sub_21C74A72C(v41, v43, v32 & 1);

  v126 = sub_21CB84014();
  v145 = v49;
  v146 = v50;
  v52 = v51;
  sub_21C74A72C(v45, v47, a1 & 1);

  LOBYTE(v41) = sub_21CB83CD4();
  v53 = sub_21CB83D24();
  sub_21CB83D24();
  if (sub_21CB83D24() != v41)
  {
    v53 = sub_21CB83D24();
  }

  v144 = v53;
  v142 = v52 & 1;
  v170 = v52 & 1;
  v167 = 1;
  KeyPath = swift_getKeyPath();
  v54 = v115;
  sub_21CB81014();
  v55 = sub_21CB81004();
  v57 = v56;
  (v114[0])(v54, v117);
  *&v172 = v55;
  *(&v172 + 1) = v57;
  v58 = swift_allocObject();
  v59 = v118 & 1;
  *(v58 + 16) = v118 & 1;
  *(v58 + 24) = v119;
  *(v58 + 32) = v120;

  v60 = v122;
  sub_21CB84DE4();
  v61 = (v60 + *(v121 + 36));
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v63 = *MEMORY[0x277CDF420];
  v64 = sub_21CB82064();
  (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
  *v61 = swift_getKeyPath();
  v65 = v123;
  sub_21CB83284();
  sub_21C74E8E8();
  sub_21C74E3A0(&qword_27CDF5D50, MEMORY[0x277CDDEE0]);
  v66 = v128;
  v67 = v125;
  sub_21CB84124();
  (*(v124 + 8))(v65, v67);
  sub_21C6EA794(v60, &qword_27CDF5D08, &qword_21CBBFA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49D0, &qword_21CBBBFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  LOBYTE(v60) = sub_21CB83CD4();
  *(inited + 32) = v60;
  v69 = sub_21CB83D04();
  *(inited + 33) = v69;
  v70 = sub_21CB83D24();
  sub_21CB83D24();
  if (sub_21CB83D24() != v60)
  {
    v70 = sub_21CB83D24();
  }

  sub_21CB83D24();
  if (sub_21CB83D24() != v69)
  {
    v70 = sub_21CB83D24();
  }

  v71 = v130;
  (*(v131 + 32))(v130, v66, v132);
  v72 = &v71[*(v127 + 36)];
  *v72 = v70;
  *(v72 + 8) = 0u;
  *(v72 + 24) = 0u;
  v72[40] = 1;
  v73 = sub_21CB83CF4();
  sub_21CB81F24();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v71;
  v83 = v134;
  sub_21C716934(v82, v134, &qword_27CDF5D18, &qword_21CBBFA10);
  v84 = v83 + *(v129 + 36);
  *v84 = v73;
  *(v84 + 8) = v75;
  *(v84 + 16) = v77;
  *(v84 + 24) = v79;
  *(v84 + 32) = v81;
  *(v84 + 40) = 0;
  sub_21CB85204();
  sub_21CB82AC4();
  v85 = v135;
  sub_21C716934(v83, v135, &qword_27CDF5D20, &qword_21CBBFA18);
  v86 = (v85 + *(v133 + 36));
  v87 = v177;
  v86[4] = v176;
  v86[5] = v87;
  v86[6] = v178;
  v88 = v173;
  *v86 = v172;
  v86[1] = v88;
  v89 = v175;
  v86[2] = v174;
  v86[3] = v89;
  v90 = swift_getKeyPath();
  v91 = swift_allocObject();
  *(v91 + 16) = v59;
  v92 = v136;
  sub_21C716934(v85, v136, &qword_27CDF5D28, &qword_21CBBFA20);
  v93 = (v92 + *(v137 + 36));
  *v93 = v90;
  v93[1] = sub_21C735744;
  v93[2] = v91;
  sub_21C74E9CC();
  v94 = v149;
  sub_21CB846B4();
  sub_21C6EA794(v92, &qword_27CDF5D30, &qword_21CBBFA28);
  v95 = v150[2];
  v96 = v148;
  v97 = v138;
  v95(v148, v147, v138);
  v98 = v139;
  v99 = v140;
  v137 = *(v139 + 16);
  (v137)(v151, v94, v140);
  v100 = v141;
  *v141 = 0;
  *(v100 + 8) = 1;
  v100[2] = 0;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5D78, &qword_21CBBFAE0);
  v102 = v96;
  v103 = v97;
  v95(v100 + v101[12], v102, v97);
  v104 = (v100 + v101[16]);
  v105 = v126;
  *&v152 = v126;
  *(&v152 + 1) = v145;
  LOBYTE(v153) = v142;
  *(&v153 + 1) = *v169;
  DWORD1(v153) = *&v169[3];
  *(&v153 + 1) = v146;
  LOBYTE(v154[0]) = v144;
  *(v154 + 1) = *v168;
  DWORD1(v154[0]) = *&v168[3];
  *(&v154[1] + 8) = 0u;
  *(v154 + 8) = 0u;
  BYTE8(v154[2]) = 1;
  HIDWORD(v154[2]) = *&v171[3];
  *(&v154[2] + 9) = *v171;
  *&v154[3] = KeyPath;
  BYTE8(v154[3]) = 1;
  v106 = v153;
  *v104 = v152;
  v104[1] = v106;
  v107 = v154[0];
  v108 = v154[1];
  v109 = v154[2];
  *(v104 + 73) = *(&v154[2] + 9);
  v104[3] = v108;
  v104[4] = v109;
  v104[2] = v107;
  v110 = v151;
  (v137)(v100 + v101[20], v151, v99);
  sub_21C74EC28(&v152, v155);
  v111 = *(v98 + 8);
  v111(v149, v99);
  v112 = v150[1];
  v112(v147, v103);
  v111(v110, v99);
  v155[0] = v105;
  v155[1] = v145;
  v156 = v142;
  *v157 = *v169;
  *&v157[3] = *&v169[3];
  v158 = v146;
  v159 = v144;
  *v160 = *v168;
  *&v160[3] = *&v168[3];
  v161 = 0u;
  v162 = 0u;
  v163 = 1;
  *v164 = *v171;
  *&v164[3] = *&v171[3];
  v165 = KeyPath;
  v166 = 1;
  sub_21C6EA794(v155, &qword_27CDF5D80, &unk_21CBBFAE8);
  return (v112)(v148, v103);
}

unint64_t sub_21CA3BAF4()
{
  result = qword_27CDF5D60;
  if (!qword_27CDF5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D28, &qword_21CBBFA20);
    sub_21C74EB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5D60);
  }

  return result;
}

unint64_t sub_21CA3BB80()
{
  result = qword_27CDF5DF0;
  if (!qword_27CDF5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5DE8, &qword_21CBBFBC0);
    sub_21C74E2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5DF0);
  }

  return result;
}

unint64_t sub_21CA3BC0C()
{
  result = qword_27CDF5E18;
  if (!qword_27CDF5E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D90, &qword_21CBBFB00);
    sub_21C74E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E18);
  }

  return result;
}

unint64_t sub_21CA3BC98()
{
  result = qword_27CDF5E78;
  if (!qword_27CDF5E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5D00, &qword_21CBBF9F8);
    sub_21CA3BD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E78);
  }

  return result;
}

unint64_t sub_21CA3BD24()
{
  result = qword_27CDF5E80;
  if (!qword_27CDF5E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5CE0, &qword_21CBBF9D8);
    sub_21CA3BDDC();
    sub_21C6EADEC(&qword_27CDF5B48, &qword_27CDF5B50, &qword_21CBBF170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E80);
  }

  return result;
}

unint64_t sub_21CA3BDDC()
{
  result = qword_27CDF5E88;
  if (!qword_27CDF5E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5CD8, &qword_21CBBF9D0);
    sub_21C6EADEC(&qword_27CDF5E90, &qword_27CDF5CD0, &qword_21CBBF9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5E88);
  }

  return result;
}

uint64_t sub_21CA3BE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EC0, &qword_21CBBFD10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EA8, &qword_21CBBFD08);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  sub_21CA3C288(a1, v11);
  if (*(*(a1 + 40) + 24) == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , v31 != 1))
  {
    v18 = 1;
  }

  else
  {
    v16 = [objc_opt_self() sharedFeatureManager];
    v17 = [v16 isUserAllowedToTogglePasswordAutoFillEnabledState];

    v18 = v17 ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  sub_21C716934(v11, v15, &qword_27CDF5EC0, &qword_21CBBFD10);
  v21 = &v15[*(v12 + 36)];
  *v21 = KeyPath;
  v21[1] = sub_21C735744;
  v21[2] = v20;
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  (*(v4 + 8))(v7, v3);
  v31 = v22;
  v32 = v24;
  sub_21C71F3FC();
  v25 = sub_21CB84054();
  v27 = v26;
  LOBYTE(v24) = v28;
  v33 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21CA403D4();
  sub_21CB84744();

  sub_21C74A72C(v25, v27, v24 & 1);

  return sub_21C6EA794(v15, &qword_27CDF5EA8, &qword_21CBBFD08);
}

uint64_t sub_21CA3C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EE0, &qword_21CBBFDB0);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EE8, &qword_21CBBFDB8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EF0, &qword_21CBBFDC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v37 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    sub_21CA3C7A4(v13);
    sub_21C716934(v13, v19, &qword_27CDF5EE8, &qword_21CBBFDB8);
    (*(v10 + 56))(v19, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v19, 1, 1, v9);
  }

  v20 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v42[10] = v42[0];
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  v21[3] = *(a1 + 32);
  v21[4] = v22;
  v21[5] = *(a1 + 64);
  v23 = *(a1 + 16);
  v21[1] = *a1;
  v21[2] = v23;
  sub_21CA40544(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF21F0, &qword_21CBBFE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EF8, &qword_21CBBFE18);
  sub_21C6EADEC(&qword_27CDF5F00, &qword_27CDF21F0, &qword_21CBBFE10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F08, &qword_21CBBFE20);
  v25 = sub_21CB83024();
  v26 = sub_21C6EADEC(&qword_27CDF5F10, &qword_27CDF5F08, &qword_21CBBFE20);
  v27 = sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0]);
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = v26;
  v42[3] = v27;
  swift_getOpaqueTypeConformance2();
  sub_21CA405EC();
  sub_21CB84FF4();
  v28 = v37;
  sub_21C7794C4(v19, v37);
  v30 = v40;
  v29 = v41;
  v31 = *(v40 + 16);
  v32 = v38;
  v31(v38, v8, v41);
  v33 = v39;
  sub_21C7794C4(v28, v39);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F28, &qword_21CBBFE28);
  v31((v33 + *(v34 + 48)), v32, v29);
  v35 = *(v30 + 8);
  v35(v8, v29);
  sub_21C6EA794(v19, &qword_27CDF5EF0, &qword_21CBBFDC0);
  v35(v32, v29);
  return sub_21C6EA794(v28, &qword_27CDF5EF0, &qword_21CBBFDC0);
}

uint64_t sub_21CA3C7A4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_21CB83024();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F30, &qword_21CBBFE30);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F38, &qword_21CBBFE38);
  v11 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v13 = &v34 - v12;
  sub_21CB858B4();
  v14 = sub_21CB858A4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  sub_21CA40544(v1, v43);
  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v19 = v1[3];
  *(v18 + 64) = v1[2];
  *(v18 + 80) = v19;
  *(v18 + 96) = v1[4];
  v20 = v1[1];
  *(v18 + 32) = *v1;
  *(v18 + 48) = v20;
  sub_21CB84F64();
  v42 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F40, &qword_21CBBFE40);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F48, &unk_21CBBFE48);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v23 = sub_21CA4065C(&qword_27CDF5F50, &qword_27CDF5F48, &unk_21CBBFE48, sub_21CA4070C);
  v24 = sub_21C7E3710();
  v43[0] = v21;
  v43[1] = v22;
  v43[2] = v23;
  v43[3] = v24;
  swift_getOpaqueTypeConformance2();
  sub_21CB84EA4();
  v25 = v35;
  sub_21CB83014();
  sub_21C6EADEC(&qword_27CDF5F78, &qword_27CDF5F30, &qword_21CBBFE30);
  sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0]);
  v26 = v36;
  v27 = v38;
  sub_21CB841B4();
  (*(v39 + 8))(v25, v27);
  (*(v37 + 8))(v10, v26);
  v28 = [objc_opt_self() sharedFeatureManager];
  v29 = [v28 isAutoFillFromKeychainRestricted];

  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = &v13[*(v40 + 36)];
  *v32 = KeyPath;
  v32[1] = sub_21C87E800;
  v32[2] = v31;
  sub_21CA407C4();
  sub_21CB845C4();

  return sub_21C6EA794(v13, &qword_27CDF5F38, &qword_21CBBFE38);
}

uint64_t sub_21CA3CCA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_21CB83024();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F08, &qword_21CBBFE20);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_21CB858B4();
  sub_21CA40544(v2, v41);
  v15 = a1;
  v16 = sub_21CB858A4();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v19 = v2[3];
  *(v17 + 64) = v2[2];
  *(v17 + 80) = v19;
  *(v17 + 96) = v2[4];
  v20 = v2[1];
  *(v17 + 32) = *v2;
  *(v17 + 48) = v20;
  *(v17 + 112) = v15;
  sub_21CA40544(v2, v41);
  v21 = v15;
  v22 = sub_21CB858A4();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v18;
  v24 = v3[3];
  *(v23 + 64) = v3[2];
  *(v23 + 80) = v24;
  *(v23 + 96) = v3[4];
  v25 = v3[1];
  *(v23 + 32) = *v3;
  *(v23 + 48) = v25;
  *(v23 + 112) = v21;
  sub_21CB84F64();
  v39 = v3;
  v40 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FA8, &qword_21CBBFEE8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5FB0, &qword_21CBBFEF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v28 = sub_21CA4065C(&qword_27CDF5FB8, &qword_27CDF5FB0, &qword_21CBBFEF0, sub_21CA40CA0);
  v29 = sub_21C7E3710();
  v41[0] = v26;
  v41[1] = v27;
  v41[2] = v28;
  v41[3] = v29;
  swift_getOpaqueTypeConformance2();
  sub_21CB84EA4();
  sub_21CB83014();
  sub_21C6EADEC(&qword_27CDF5F10, &qword_27CDF5F08, &qword_21CBBFE20);
  sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0]);
  v30 = v34;
  v31 = v36;
  sub_21CB841B4();
  (*(v37 + 8))(v9, v31);
  return (*(v35 + 8))(v14, v30);
}

uint64_t sub_21CA3D090@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CA3D1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if ((*(*(a1 + 40) + 24) & 1) == 0)
  {
    sub_21CB81014();
    v13 = sub_21CB81004();
    v15 = v14;
    (*(v5 + 8))(v8, v4);
    v17[0] = v13;
    v17[1] = v15;
    sub_21C71F3FC();
    result = sub_21CB84054();
    v11 = v16 & 1;
  }

  *a2 = result;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

void sub_21CA3D30C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedFeatureManager];
  v10 = [v9 isUserAllowedToTogglePasswordAutoFillEnabledState];

  if (v10)
  {
    if (*(*(a1 + 40) + 24) != 1)
    {
      v17 = 0uLL;
      v19 = -1;
      v18 = 0uLL;
      goto LABEL_7;
    }

    sub_21CA3D500(&v24);
    v20 = v24;
    v21 = v25;
    v22 = *(&v25 + 1);
    v23 = 1;
  }

  else
  {
    sub_21CB81014();
    v11 = sub_21CB81004();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    *&v24 = v11;
    *(&v24 + 1) = v13;
    sub_21C71F3FC();
    *&v20 = sub_21CB84054();
    *(&v20 + 1) = v14;
    v21 = v15 & 1;
    v22 = v16;
    v23 = 0;
  }

  sub_21CB83494();
  v17 = v24;
  v18 = v25;
  v19 = v26;
LABEL_7:
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
}

unint64_t sub_21CA3D500@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v38 != 1)
  {
    goto LABEL_7;
  }

  v9 = *(v1 + 8);
  v10 = sub_21C954454();
  v11 = *(v10 + 2);
  if (v11 != 3)
  {
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        sub_21CB81014();
        sub_21CB81004();
        (*(v4 + 8))(v7, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_21CBA0690;
        *(v12 + 56) = MEMORY[0x277D837D0];
        result = sub_21C7C0050();
        *(v12 + 64) = result;
        if (*(v10 + 2))
        {
          v15 = *(v10 + 4);
          v14 = *(v10 + 5);

          *(v12 + 32) = v15;
          *(v12 + 40) = v14;
LABEL_15:
          v32 = sub_21CB85594();
          v34 = v33;

          v38 = v32;
          v39 = v34;
          goto LABEL_16;
        }

        goto LABEL_20;
      }

LABEL_7:
      sub_21CB81014();
      v16 = sub_21CB81004();
      v18 = v17;
      (*(v4 + 8))(v7, v3);
      v38 = v16;
      v39 = v18;
LABEL_16:
      sub_21C71F3FC();
      result = sub_21CB84054();
      *a1 = result;
      *(a1 + 8) = v35;
      *(a1 + 16) = v36 & 1;
      *(a1 + 24) = v37;
      return result;
    }

    sub_21CB81014();
    sub_21CB81004();
    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21CBA15B0;
    v20 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    result = sub_21C7C0050();
    *(v19 + 64) = result;
    v21 = *(v10 + 2);
    if (v21)
    {
      v22 = result;
      result = *(v10 + 5);
      *(v19 + 32) = *(v10 + 4);
      *(v19 + 40) = result;
      *(v19 + 96) = v20;
      *(v19 + 104) = v22;
      if (v21 != 1)
      {
        v24 = *(v10 + 6);
        v23 = *(v10 + 7);

        *(v19 + 72) = v24;
        *(v19 + 80) = v23;
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21CBA15A0;
  v26 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  result = sub_21C7C0050();
  *(v25 + 64) = result;
  v27 = *(v10 + 2);
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = result;
  result = *(v10 + 5);
  *(v25 + 32) = *(v10 + 4);
  *(v25 + 40) = result;
  *(v25 + 96) = v26;
  *(v25 + 104) = v28;
  if (v27 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = *(v10 + 7);
  *(v25 + 72) = *(v10 + 6);
  *(v25 + 80) = v29;
  *(v25 + 136) = v26;
  *(v25 + 144) = v28;
  if (v27 >= 3)
  {
    v31 = *(v10 + 8);
    v30 = *(v10 + 9);

    *(v25 + 112) = v31;
    *(v25 + 120) = v30;
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21CA3D994(uint64_t a1)
{
  v2 = [objc_opt_self() sharedManager];
  [v2 canEnableCredentialProviderExtension];

  v4 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

void sub_21CA3DA30(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() sharedFeatureManager];
  v3 = [v2 shouldAutoFillPasswordsFromKeychain];

  *a1 = v3;
}

void sub_21CA3DA94(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    v14 = *(a4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D54();
    if (v13 == 1)
    {
      v14 = *(a4 + 64);
      v13 = *(a4 + 64);
      v15 = *(&v14 + 1);
      sub_21C6EDBAC(&v15, &v12, &qword_27CDF5FA0, &qword_21CBBFEE0);
      sub_21CB84D54();
      v12 = v14;
      sub_21CB84D64();
      sub_21C6EA794(&v14, &unk_27CDF40F0, &qword_21CBA2500);
      return;
    }

    v7 = [objc_opt_self() sharedFeatureManager];
    [v7 setShouldAutoFillPasswordsFromKeychain_];

    v8 = [objc_opt_self() sharedManager];
    v9 = [v8 canEnableCredentialProviderExtension];

    v6 = v9 ^ 1;
  }

  else
  {
    v5 = [objc_opt_self() sharedFeatureManager];
    [v5 setShouldAutoFillPasswordsFromKeychain_];

    v6 = 0;
  }

  v14 = *(a4 + 48);
  LOBYTE(v13) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v10 = *(a4 + 8);
  v11 = [objc_opt_self() sharedManager];
  sub_21C954AFC(v11);
}

uint64_t sub_21CA3DCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F70, &qword_21CBBFE60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F60, &qword_21CBBFE58);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F48, &unk_21CBBFE48);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  *v6 = sub_21CB83074();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F88, &qword_21CBBFE68);
  sub_21CA3DF70(a1, &v6[*(v16 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v6, v11, &qword_27CDF5F70, &qword_21CBBFE60);
  v17 = &v11[*(v8 + 44)];
  v18 = v28;
  *(v17 + 4) = v27;
  *(v17 + 5) = v18;
  *(v17 + 6) = v29;
  v19 = v24;
  *v17 = v23;
  *(v17 + 1) = v19;
  v20 = v26;
  *(v17 + 2) = v25;
  *(v17 + 3) = v20;
  sub_21C716934(v11, v15, &qword_27CDF5F60, &qword_21CBBFE58);
  v15[*(v12 + 36)] = 0;
  v22[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21CA4065C(&qword_27CDF5F50, &qword_27CDF5F48, &unk_21CBBFE48, sub_21CA4070C);
  sub_21C7E3710();
  sub_21CB84154();
  return sub_21C6EA794(v15, &qword_27CDF5F48, &unk_21CBBFE48);
}

uint64_t sub_21CA3DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-v9];
  v11 = type metadata accessor for PMISIconView();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v25[-v17];
  v19 = *MEMORY[0x277D49CC0];
  v20 = sub_21CA31A14(1);
  v21 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

  v22 = *(v12 + 36);
  *(v18 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
  swift_storeEnumTagMultiPayload();
  *v18 = v21;
  v18[1] = v20;
  v18[2] = 0;
  *v10 = sub_21CB832F4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  LODWORD(v22) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0) + 44);
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0);
  sub_21CB81FC4();
  sub_21CA40A1C(v18, v15);
  sub_21C6EDBAC(v10, v7, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21CA40A1C(v15, a2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F98, &qword_21CBBFED8);
  sub_21C6EDBAC(v7, a2 + *(v23 + 48), &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EA794(v10, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21CA40A80(v18);
  sub_21C6EA794(v7, &qword_27CDF39C0, &qword_21CBBEE90);
  return sub_21CA40A80(v15);
}

uint64_t sub_21CA3E24C@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_21CB81024();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21CA40ADC();
  v46 = v6;
  v41 = sub_21C71F3FC();
  v7 = sub_21CB84054();
  v9 = v8;
  v11 = v10;
  v12 = [objc_opt_self() sharedFeatureManager];
  v13 = [v12 isAutoFillFromKeychainRestricted];

  if (v13)
  {
    sub_21CB84B34();
  }

  else
  {
    sub_21CB84B14();
  }

  v14 = sub_21CB83FB4();
  v38 = v15;
  v39 = v14;
  HIDWORD(v37) = v16;
  v40 = v17;

  sub_21C74A72C(v7, v9, v11 & 1);

  sub_21CB81014();
  v18 = sub_21CB81004();
  v20 = v19;
  (*(v2 + 8))(v5, v42);
  v45 = v18;
  v46 = v20;
  v21 = sub_21CB84054();
  v23 = v22;
  LOBYTE(v20) = v24;
  sub_21CB83E94();
  v25 = sub_21CB84024();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_21C74A72C(v21, v23, v20 & 1);

  v32 = BYTE4(v37) & 1;
  v43 = BYTE4(v37) & 1;
  LOBYTE(v45) = BYTE4(v37) & 1;
  v44 = v29 & 1;
  v34 = v38;
  v33 = v39;
  *a1 = v39;
  *(a1 + 8) = v34;
  *(a1 + 16) = v32;
  *(a1 + 24) = v40;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v29 & 1;
  *(a1 + 56) = v31;
  v35 = v33;
  sub_21C79B058(v33, v34, v32);

  sub_21C79B058(v25, v27, v29 & 1);

  sub_21C74A72C(v25, v27, v29 & 1);

  sub_21C74A72C(v35, v34, v43);
}

uint64_t sub_21CA3E524@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    sub_21CB81014();
    sub_21CB81014();
    v14 = sub_21CB80FF4();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v6, v2);
    v17(v9, v2);
    v18 = *MEMORY[0x277D49CC0];
    v19 = sub_21CB855C4();
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    MEMORY[0x28223BE20](v22);
    *(&v25 - 2) = v14;
    *(&v25 - 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21CB84DA4();

    (*(v26 + 32))(a1, v13, v10);
    return (*(v26 + 56))(a1, 0, 1, v10);
  }

  else
  {
    v24 = *(v26 + 56);

    return v24(a1, 1, 1, v10);
  }
}

uint64_t sub_21CA3E8AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FD8, &qword_21CBBFF00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FC8, &qword_21CBBFEF8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FB0, &qword_21CBBFEF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - v16;
  *v8 = sub_21CB83074();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FE0, &qword_21CBBFF08);
  sub_21CA3EB80(a1, a2, &v8[*(v18 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v8, v13, &qword_27CDF5FD8, &qword_21CBBFF00);
  v19 = &v13[*(v10 + 44)];
  v20 = v30;
  *(v19 + 4) = v29;
  *(v19 + 5) = v20;
  *(v19 + 6) = v31;
  v21 = v26;
  *v19 = v25;
  *(v19 + 1) = v21;
  v22 = v28;
  *(v19 + 2) = v27;
  *(v19 + 3) = v22;
  sub_21C716934(v13, v17, &qword_27CDF5FC8, &qword_21CBBFEF8);
  v17[*(v14 + 36)] = 0;
  v24[4] = a2;
  v24[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21CA4065C(&qword_27CDF5FB8, &qword_27CDF5FB0, &qword_21CBBFEF0, sub_21CA40CA0);
  sub_21C7E3710();
  sub_21CB84154();
  return sub_21C6EA794(v17, &qword_27CDF5FB0, &qword_21CBBFEF0);
}

uint64_t sub_21CA3EB80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C0, &qword_21CBBEE90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FE8, &qword_21CBBFF10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_21CA3EE1C(a2, &v23 - v17);
  *v11 = sub_21CB832F4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF39C8, &unk_21CBB87F0) + 44);
  v25 = a2;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF730, &qword_21CBBFED0);
  sub_21C6EADEC(&qword_27CDEF738, &qword_27CDEF730, &qword_21CBBFED0);
  sub_21CB81FC4();
  sub_21C6EDBAC(v18, v15, &qword_27CDF5FE8, &qword_21CBBFF10);
  sub_21C6EDBAC(v11, v8, &qword_27CDF39C0, &qword_21CBBEE90);
  v20 = v24;
  sub_21C6EDBAC(v15, v24, &qword_27CDF5FE8, &qword_21CBBFF10);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5FF0, &qword_21CBBFF18);
  sub_21C6EDBAC(v8, v20 + *(v21 + 48), &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EA794(v11, &qword_27CDF39C0, &qword_21CBBEE90);
  sub_21C6EA794(v18, &qword_27CDF5FE8, &qword_21CBBFF10);
  sub_21C6EA794(v8, &qword_27CDF39C0, &qword_21CBBEE90);
  return sub_21C6EA794(v15, &qword_27CDF5FE8, &qword_21CBBFF10);
}

uint64_t sub_21CA3EE1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMISIconView();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [a1 sf_bundleIdentifierForContainingApp];
  if (v9)
  {
    v10 = v9;
    sub_21CB855C4();

    v11 = sub_21CA31A14(1);
    v12 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v13 = sub_21CB85584();

    v14 = [v12 initWithBundleIdentifier_];

    v15 = *(v4 + 28);
    *(v8 + v15) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
    swift_storeEnumTagMultiPayload();
    *v8 = v14;
    v8[1] = v11;
    v8[2] = 0;
    sub_21CA40D68(v8, a2);
    return (*(v19 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v17 = *(v19 + 56);

    return v17(a2, 1, 1, v4);
  }
}

uint64_t sub_21CA3F014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedManager];
  v6 = [v5 displayNameForExtension_];

  sub_21CB855C4();
  sub_21C71F3FC();
  v7 = sub_21CB84054();
  v9 = v8;
  v11 = v10;
  v12 = [v4 sharedManager];
  v13 = [v12 extensionIsEnabled_];

  if (v13 & 1) != 0 || (v14 = [v4 sharedManager], v15 = objc_msgSend(v14, sel_canEnableCredentialProviderExtension), v14, (v15))
  {
    sub_21CB84B14();
  }

  else
  {
    sub_21CB84B34();
  }

  v16 = sub_21CB83FB4();
  v36 = v17;
  v37 = v16;
  v35 = v18;
  v38 = v19;

  sub_21C74A72C(v7, v9, v11 & 1);

  v20 = [v4 sharedManager];
  v21 = [v20 supportedCredentialTypesStringForExtension_];

  sub_21CB855C4();
  v22 = sub_21CB84054();
  v24 = v23;
  v26 = v25;
  sub_21CB83E94();
  v27 = sub_21CB84024();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_21C74A72C(v22, v24, v26 & 1);

  *a2 = v37;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_21C79B058(v37, v36, v35 & 1);

  sub_21C79B058(v27, v29, v31 & 1);

  sub_21C74A72C(v27, v29, v31 & 1);

  sub_21C74A72C(v37, v36, v35 & 1);
}

uint64_t sub_21CA3F2F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v22 - v7;
  v9 = [a1 sf_bundleIdentifierForContainingApp];
  if (v9)
  {
    v10 = v9;
    v11 = sub_21CB855C4();
    v13 = v12;

    v14 = [objc_opt_self() sharedManager];
    v15 = [v14 displayNameForExtension_];

    v16 = sub_21CB855C4();
    v18 = v17;

    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    *(v19 + 24) = v13;
    MEMORY[0x28223BE20](v19);
    *(&v22 - 2) = v16;
    *(&v22 - 1) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21CB84DA4();

    (*(v23 + 32))(a2, v8, v4);
    return (*(v23 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v21 = *(v23 + 56);

    return v21(a2, 1, 1, v4);
  }
}

void sub_21CA3F5B4(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = [objc_opt_self() sharedManager];
  LOBYTE(a1) = [v4 extensionIsEnabled_];

  *a2 = a1;
}

uint64_t sub_21CA3F620(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  if (v7 == 1 && (v17 = *(a4 + 48), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500), sub_21CB84D54(), v16 == 1))
  {
    v17 = *(a4 + 64);
    v16 = *(a4 + 64);
    v19 = *(&v17 + 1);
    sub_21C6EDBAC(&v19, &v15, &qword_27CDF5FA0, &qword_21CBBFEE0);
    sub_21CB84D54();
    v15 = v17;
    sub_21CB84D64();
    return sub_21C6EA794(&v17, &unk_27CDF40F0, &qword_21CBA2500);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v9 sharedManager];
    v11 = a5;
    [v10 setExtension:v11 isEnabled:v7];

    if (v7)
    {
      v12 = [v9 sharedManager];
      v13 = [v12 shouldShowConfigurationUIForEnablingExtension_];

      if (v13)
      {
        v17 = *(a4 + 16);
        v18 = *(a4 + 32);
        *&v16 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2678, &qword_21CBBFF20);
        sub_21CB84F34();
      }

      else
      {
      }

      v14 = [v9 sharedManager];
      [v14 canEnableCredentialProviderExtension];
    }

    else
    {
    }

    v17 = *(a4 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    return sub_21CB84D64();
  }
}

uint64_t sub_21CA3F860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_21CB858E4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21CB858B4();

  v9 = sub_21CB858A4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = a2;
  sub_21C822EDC(0, 0, v7, &unk_21CBBFE78, v10);
}

uint64_t sub_21CA3F988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_21CB858B4();
  v5[21] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_21CA3FA24, v7, v6);
}

uint64_t sub_21CA3FA24()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[24] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[19];
    v4 = v0[20];
    v5 = sub_21CB85584();
    v0[25] = v5;
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_21CA3FB88;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21CA92000;
    v0[13] = &block_descriptor_31;
    v0[14] = v6;
    [v2 openApplicationWithBundleIdentifier:v5 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_21CA3FB88()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_21CA3FD3C;
  }

  else
  {
    v6 = sub_21CA3FCB8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CA3FCB8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  *v4 = *(v0 + 216);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21CA3FD3C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_21CA3FDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21C7C0050();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_21CB85594();
  v12 = v11;

  v14[0] = v10;
  v14[1] = v12;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CA3FF80@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v19 = v1[4];
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  sub_21CA3D1BC(&v15, v14);
  sub_21CA3D30C(&v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5EA0, &unk_21CBBFCF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC140, &unk_21CBA3D10);
  sub_21C87DED8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EA8, &qword_21CBBFD08);
  v6 = sub_21CA403D4();
  v12[0] = v5;
  v12[1] = MEMORY[0x277CE1428];
  v12[2] = MEMORY[0x277CE0BD8];
  v12[3] = v6;
  v12[4] = MEMORY[0x277CE1410];
  v12[5] = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21C7FC4F4();
  sub_21CB85044();
  v7 = swift_allocObject();
  v8 = v18;
  *(v7 + 3) = v17;
  *(v7 + 4) = v8;
  *(v7 + 5) = v19;
  v9 = v16;
  *(v7 + 1) = v15;
  *(v7 + 2) = v9;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5ED8, &unk_21CBBFD20) + 36));
  *v10 = sub_21CA4053C;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = 0;
  return sub_21CA40544(&v15, v12);
}

uint64_t sub_21CA40164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C310(KeyPath, v15);

  type metadata accessor for PMCredentialProviderExtensionManager();
  sub_21CA405A4(&qword_27CDF5E98, type metadata accessor for PMCredentialProviderExtensionManager);
  v11 = sub_21CB82674();
  v13 = v12;

  sub_21CB84D44();
  v17[0] = 0;
  result = sub_21CB84D44();
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = v15;
  *(a5 + 49) = v15;
  *(a5 + 52) = *(&v15 + 3);
  *(a5 + 56) = v16;
  *(a5 + 64) = v15;
  *(a5 + 65) = *v17;
  *(a5 + 68) = *&v17[3];
  *(a5 + 72) = v16;
  return result;
}

uint64_t sub_21CA40304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21CA4034C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CA403D4()
{
  result = qword_27CDF5EB0;
  if (!qword_27CDF5EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EA8, &qword_21CBBFD08);
    sub_21CA4048C();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5EB0);
  }

  return result;
}

unint64_t sub_21CA4048C()
{
  result = qword_27CDF5EB8;
  if (!qword_27CDF5EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EC0, &qword_21CBBFD10);
    sub_21C6EADEC(&qword_27CDF5EC8, &qword_27CDF5ED0, &qword_21CBBFD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5EB8);
  }

  return result;
}

uint64_t sub_21CA405A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CA405EC()
{
  result = qword_27CDF5F20;
  if (!qword_27CDF5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5F20);
  }

  return result;
}

void sub_21CA40640(unsigned __int8 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21CA3DA30(a1);
}

uint64_t sub_21CA4065C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CA4070C()
{
  result = qword_27CDF5F58;
  if (!qword_27CDF5F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F60, &qword_21CBBFE58);
    sub_21C6EADEC(&qword_27CDF5F68, &qword_27CDF5F70, &qword_21CBBFE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5F58);
  }

  return result;
}

unint64_t sub_21CA407C4()
{
  result = qword_27CDF5F80;
  if (!qword_27CDF5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F38, &qword_21CBBFE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5F30, &qword_21CBBFE30);
    sub_21CB83024();
    sub_21C6EADEC(&qword_27CDF5F78, &qword_27CDF5F30, &qword_21CBBFE30);
    sub_21CA405A4(&qword_27CDF5F18, MEMORY[0x277CDDDF0]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5F80);
  }

  return result;
}

uint64_t sub_21CA40954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CA3F988(a1, v4, v5, v7, v6);
}

uint64_t sub_21CA40A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMISIconView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA40A80(uint64_t a1)
{
  v2 = type metadata accessor for PMISIconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CA40ADC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  return v8;
}

void sub_21CA40C78(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_21CA3F5B4(v1[14], a1);
}

unint64_t sub_21CA40CA0()
{
  result = qword_27CDF5FC0;
  if (!qword_27CDF5FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5FC8, &qword_21CBBFEF8);
    sub_21C6EADEC(&qword_27CDF5FD0, &qword_27CDF5FD8, &qword_21CBBFF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5FC0);
  }

  return result;
}

uint64_t sub_21CA40D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMISIconView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA40DCC()
{
  result = qword_27CDF5FF8;
  if (!qword_27CDF5FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5ED8, &unk_21CBBFD20);
    sub_21CA40E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5FF8);
  }

  return result;
}

unint64_t sub_21CA40E58()
{
  result = qword_27CDF6000;
  if (!qword_27CDF6000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6008, &qword_21CBBFF28);
    sub_21C87DED8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5EA8, &qword_21CBBFD08);
    sub_21CA403D4();
    swift_getOpaqueTypeConformance2();
    sub_21C7FC4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6000);
  }

  return result;
}

uint64_t sub_21CA40F90(uint64_t a1, uint64_t a2)
{
  sub_21CB858B4();

  v4 = sub_21CB858A4();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;

  v7 = sub_21CB858A4();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  sub_21CB84F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6010, &qword_21CBBFFC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6018, &qword_21CBBFFC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6020, &qword_21CBBFFD0);
  sub_21CA41F88();
  sub_21CA42004(&qword_27CDF6030, &qword_27CDF6018, &qword_21CBBFFC8);
  sub_21CA42004(&qword_27CDF6048, &qword_27CDF6020, &qword_21CBBFFD0);
  return sub_21CB84E34();
}

uint64_t sub_21CA411D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6070, &unk_21CBC00B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6040, &qword_21CBBFFD8);
    sub_21C6EADEC(&qword_27CDF6078, &qword_27CDF6070, &unk_21CBC00B8);
    sub_21C6EADEC(&qword_27CDF6038, &qword_27CDF6040, &qword_21CBBFFD8);
    sub_21CA42298();
    return sub_21CB84FF4();
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager();
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CA413CC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21CA41500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6040, &qword_21CBBFFD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v12 = v17;
    if (v17)
    {
      MEMORY[0x28223BE20](v11);
      *(&v16 - 4) = a1;
      *(&v16 - 3) = a2;
      *(&v16 - 2) = v12;
      MEMORY[0x28223BE20](v13);
      *(&v16 - 4) = a1;
      *(&v16 - 3) = a2;
      *(&v16 - 2) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6050, &qword_21CBC0028);
      sub_21CA420A8();
      sub_21CB84C84();

      (*(v7 + 32))(a3, v10, v6);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    return (*(v7 + 56))(a3, v14, 1, v6);
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager();
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CA41794@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager();
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

void sub_21CA41880(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  if (a4)
  {
    v11 = *a1;
    v10 = a1[1];
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = sub_21CB858E4();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      sub_21CB858B4();
      swift_retain_n();

      v14 = sub_21CB858A4();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = a4;
      v15[5] = v11;
      v15[6] = v10;
      sub_21C98B308(0, 0, v9, &unk_21CBC00C8, v15);
    }
  }

  else
  {
    type metadata accessor for PMOTPAuthHandlerManager();
    sub_21CA4215C(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
    sub_21CB82B64();
    __break(1u);
  }
}

uint64_t sub_21CA41A40(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6050, &qword_21CBC0028);
  sub_21CA420A8();
  return sub_21CB84C84();
}

uint64_t sub_21CA41AE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v40[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6068, &qword_21CBC0030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - v7;
  v9 = type metadata accessor for PMISIconView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = v40 - v15;
  v17 = [a1 bundleIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CB855C4();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if (v19 == 0xD000000000000015 && 0x800000021CB986D0 == v21)
      {

LABEL_10:
        v24 = sub_21CA31A14(1);
        v25 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
        v26 = sub_21CB85584();
        v27 = [v25 initWithType_];

        v28 = *(v9 + 28);
        *&v16[v28] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
        swift_storeEnumTagMultiPayload();
        *v16 = v27;
        v12 = v16;
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v23 = sub_21CB86344();

  if (v23)
  {
    goto LABEL_10;
  }

  v29 = [a1 bundleIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = sub_21CB855C4();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
    }
  }

  v24 = sub_21CA31A14(1);
  v35 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v36 = sub_21CB85584();

  v37 = [v35 initWithBundleIdentifier_];

  v38 = *(v9 + 28);
  *&v12[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2478, &unk_21CBBFEC0);
  swift_storeEnumTagMultiPayload();
  *v12 = v37;
LABEL_17:
  *(v12 + 1) = v24;
  *(v12 + 2) = a3;
  sub_21CA40A1C(v12, v8);
  swift_storeEnumTagMultiPayload();
  sub_21CA4215C(&qword_27CDF6060, type metadata accessor for PMISIconView);
  sub_21CB83494();
  return sub_21CA40A80(v12);
}

uint64_t sub_21CA41EC8@<X0>(id a1@<X2>, uint64_t a2@<X8>)
{
  v3 = [a1 localizedName];
  sub_21CB855C4();

  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21CA41F58@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_21CA41794(v1[4], a1);
}

uint64_t sub_21CA41F78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA413CC(a1);
}

unint64_t sub_21CA41F88()
{
  result = qword_27CDF6028;
  if (!qword_27CDF6028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6010, &qword_21CBBFFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6028);
  }

  return result;
}

uint64_t sub_21CA42004(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_21C6EADEC(&qword_27CDF6038, &qword_27CDF6040, &qword_21CBBFFD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CA42098@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA41AE8(*(v1 + 32), a1, 8.0);
}

unint64_t sub_21CA420A8()
{
  result = qword_27CDF6058;
  if (!qword_27CDF6058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6050, &qword_21CBC0028);
    sub_21CA4215C(&qword_27CDF6060, type metadata accessor for PMISIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6058);
  }

  return result;
}

uint64_t sub_21CA4215C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CA421C8(uint64_t a1)
{
  v2 = sub_21CB82854();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82CD4();
}

uint64_t sub_21CA42290(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA41A40(a1);
}

unint64_t sub_21CA42298()
{
  result = qword_27CDF6080;
  if (!qword_27CDF6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6080);
  }

  return result;
}

uint64_t sub_21CA422EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA41EC8(*(v1 + 32), a1);
}

uint64_t sub_21CA4230C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA41AE8(*(v1 + 32), a1, 0.0);
}

uint64_t sub_21CA4231C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21CA93650(a1, v4, v5, v6, v7, v8);
}

void *sub_21CA423E8()
{
  swift_getKeyPath();
  sub_21CA42C34();
  sub_21CB810D4();

  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

id sub_21CA42460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CA42C34();
  sub_21CB810D4();

  v4 = *(v3 + 144);
  *a2 = v4;

  return v4;
}

void sub_21CA424E8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21CA42518(v2);
}

void sub_21CA42518(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 144);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA42C34();
    sub_21CB810C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21CA42C8C();
  v5 = v4;
  v6 = a1;
  v7 = sub_21CB85DD4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 144);
LABEL_8:
  *(v2 + 144) = a1;
}

void sub_21CA42668(uint64_t a1, void *a2)
{
  v2 = *(a1 + 144);
  *(a1 + 144) = a2;
  v3 = a2;
}

uint64_t sub_21CA4269C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a1;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  return MEMORY[0x2822009F8](sub_21CA426C4, a6, 0);
}

uint64_t sub_21CA426C4()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = sub_21C9F52A8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_21CA42734, 0, 0);
}

uint64_t sub_21CA42734()
{
  v1 = *(v0 + 16);
  sub_21CA42518(*(v0 + 48));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CA42798()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);
  v3 = *(v0 + 104);
  v10[4] = *(v0 + 88);
  v10[5] = v3;
  v10[6] = *(v0 + 120);
  v4 = *(v0 + 40);
  v10[0] = *(v0 + 24);
  v10[1] = v4;
  v10[2] = *(v0 + 56);
  v10[3] = v2;
  sub_21C7A344C(v10);

  v5 = OBJC_IVAR____TtC17PasswordManagerUI23PMGroupMemberImageModel___observationRegistrar;
  v6 = sub_21CB81114();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGroupMemberImageModel()
{
  result = qword_27CDF60A0;
  if (!qword_27CDF60A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CA428C8()
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

uint64_t sub_21CA42988(uint64_t a1, _OWORD *a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  *(v3 + 144) = 0;
  sub_21CB81104();
  v12 = a2[2];
  *(v3 + 72) = a2[3];
  v13 = a2[5];
  *(v3 + 88) = a2[4];
  *(v3 + 104) = v13;
  *(v3 + 120) = a2[6];
  v14 = a2[1];
  *(v3 + 24) = *a2;
  *(v3 + 40) = v14;
  *(v3 + 16) = a1;
  *(v3 + 56) = v12;
  *(v3 + 136) = a3;
  if (*(v3 + 144))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v22[-2] = v3;
    v22[-1] = 0;
    v22[1] = v3;

    sub_21C7A33F0(a2, v23);
    sub_21CA42C34();
    sub_21CB810C4();
  }

  else
  {

    sub_21C7A33F0(a2, v23);
  }

  v16 = sub_21CB858E4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v4;
  *(v17 + 40) = a1;
  v18 = a2[5];
  *(v17 + 112) = a2[4];
  *(v17 + 128) = v18;
  *(v17 + 144) = a2[6];
  v19 = a2[1];
  *(v17 + 48) = *a2;
  *(v17 + 64) = v19;
  v20 = a2[3];
  *(v17 + 80) = a2[2];
  *(v17 + 96) = v20;
  *(v17 + 160) = a3;

  sub_21C7A33F0(a2, v23);

  sub_21C98B308(0, 0, v11, &unk_21CBAAE68, v17);

  return v4;
}