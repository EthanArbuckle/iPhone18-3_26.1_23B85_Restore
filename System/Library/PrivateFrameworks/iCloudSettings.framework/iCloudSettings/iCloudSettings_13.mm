uint64_t sub_27599A484(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7070417261656C63;
    }

    else
    {
      v3 = 0x77656956706F70;
    }

    if (v2)
    {
      v4 = 0xED00007473694C73;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D6F487261656C63;
    v4 = 0xED00006174614465;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000002759DD100;
  }

  else
  {
    v3 = 0x656C706D6F436E6FLL;
    v4 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7070417261656C63;
    }

    else
    {
      v6 = 0x77656956706F70;
    }

    if (a2)
    {
      v5 = 0xED00007473694C73;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00006174614465;
    if (v3 != 0x6D6F487261656C63)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000002759DD100;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
    if (v3 != 0x656C706D6F436E6FLL)
    {
LABEL_31:
      v7 = sub_2759BAAC8();
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

uint64_t sub_27599A668(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v2 = 0xEB00000000736E6FLL;
    v3 = 0xEC0000006E6F6974;
    if (a1 == 2)
    {
      v5 = 0x697463416E6F6369;
    }

    else
    {
      v5 = 0x616D696E41657375;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x6C6562616CLL;
    }

    else
    {
      v5 = 25705;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = 0xE200000000000000;
  v8 = 25705;
  v9 = 0x697463416E6F6369;
  v10 = 0xEB00000000736E6FLL;
  if (a2 != 2)
  {
    v9 = 0x616D696E41657375;
    v10 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v8 = 0x6C6562616CLL;
    v7 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2759BAAC8();
  }

  return v13 & 1;
}

uint64_t sub_27599A7B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x656C706D6F436E6FLL;
  v4 = a1;
  v5 = 0x7245636E79536E6FLL;
  v6 = 0xEB00000000726F72;
  v7 = 0x5255796669746F6ELL;
  if (a1 == 4)
  {
    v8 = 0xE90000000000004CLL;
  }

  else
  {
    v7 = 0x6573624F70696B73;
    v8 = 0xEF6E6F6974617672;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x7365636375536E6FLL;
  v10 = 0xE900000000000073;
  if (a1 != 1)
  {
    v9 = 0x746E65696C436E6FLL;
    v10 = 0xED0000726F727245;
  }

  if (!a1)
  {
    v9 = 0x656C706D6F436E6FLL;
    v10 = 0xEC0000006E6F6974;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB00000000726F72;
      if (v11 != 0x7245636E79536E6FLL)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE90000000000004CLL;
      if (v11 != 0x5255796669746F6ELL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEF6E6F6974617672;
      if (v11 != 0x6573624F70696B73)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000073;
        if (v11 != 0x7365636375536E6FLL)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x746E65696C436E6FLL;
      v2 = 0xED0000726F727245;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_2759BAAC8();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_27599A9E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1702063205;
    }

    else
    {
      v3 = 0x6449656C646E7562;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1852139636;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE400000000000000;
  v8 = 1702063205;
  if (a2 != 2)
  {
    v8 = 0x6449656C646E7562;
    v7 = 0xE900000000000073;
  }

  if (a2)
  {
    v6 = 1852139636;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27599AB08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6C69616D45794DLL;
  v3 = 0x65646948776F6873;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0x6D657250776F6873;
    v12 = 0xEE007070416D7569;
    if (a1 == 1)
    {
      v11 = 0x65646948776F6873;
      v12 = 0xEF6C69616D45794DLL;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (v4)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0x80000002759DCC20;
    }
  }

  else
  {
    v5 = 0x80000002759DCC80;
    v6 = 0xD000000000000017;
    if (a1 != 5)
    {
      v6 = 0x566265576E65706FLL;
      v5 = 0xEB00000000776569;
    }

    v7 = 0x80000002759DCC50;
    v8 = 0xD000000000000015;
    if (a1 != 3)
    {
      v8 = 0x616E614D776F6873;
      v7 = 0xEE00736275536567;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x80000002759DCC20;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v2 = 0xEE007070416D7569;
      if (v9 != 0x6D657250776F6873)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000002759DCC80;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xEB00000000776569;
        if (v9 != 0x566265576E65706FLL)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0x80000002759DCC50;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0x616E614D776F6873;
    v2 = 0xEE00736275536567;
  }

  if (v9 != v3)
  {
LABEL_39:
    v13 = sub_2759BAAC8();
    goto LABEL_40;
  }

LABEL_36:
  if (v10 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_27599AD98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000004E414CLL;
  v3 = 0x505F4547414E414DLL;
  v4 = a1;
  v5 = 0xD000000000000013;
  v6 = 0x80000002759DCD20;
  if (a1 != 5)
  {
    v5 = 0x535F44554F4C4349;
    v6 = 0xEE00454741524F54;
  }

  v7 = 0x5F594D5F45444948;
  v8 = 0xED00004C49414D45;
  if (a1 != 3)
  {
    v7 = 0x5F4D55494D455250;
    v8 = 0xEB00000000505041;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x535F594C494D4146;
  v10 = 0xEE00474E49524148;
  if (a1 != 1)
  {
    v9 = 0x5F45544156495250;
    v10 = 0xED000059414C4552;
  }

  if (!a1)
  {
    v9 = 0x505F4547414E414DLL;
    v10 = 0xEB000000004E414CLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    if (a2 != 1)
    {
      v13 = 0x5F45544156495250;
      v14 = 0x59414C4552;
LABEL_28:
      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v11 != v13)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v15 = 0x535F594C494D4146;
    v16 = 0x474E49524148;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0x5F594D5F45444948;
        v14 = 0x4C49414D45;
        goto LABEL_28;
      }

      v3 = 0x5F4D55494D455250;
      v2 = 0xEB00000000505041;
LABEL_31:
      if (v11 != v3)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 5)
    {
      v2 = 0x80000002759DCD20;
      if (v11 != 0xD000000000000013)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v15 = 0x535F44554F4C4349;
    v16 = 0x454741524F54;
  }

  v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  if (v11 != v15)
  {
LABEL_37:
    v17 = sub_2759BAAC8();
    goto LABEL_38;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v17 = 1;
LABEL_38:

  return v17 & 1;
}

void sub_27599B03C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_27599B088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129B0, &qword_2759CFA70);
  v89 = *(v90 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v5 = &v80 - v4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129B8, &qword_2759CFA78);
  v6 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v91 = &v80 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129C0, &qword_2759CFA80);
  v8 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v98 = &v80 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129C8, &qword_2759CFA88);
  v10 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v87 = &v80 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129D0, &qword_2759CFA90);
  v85 = *(v86 - 8);
  v12 = *(v85 + 64);
  v13 = MEMORY[0x28223BE20](v86);
  v83 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v80 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129D8, &qword_2759CFA98);
  v16 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v18 = &v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129E0, &qword_2759CFAA0);
  v81 = *(v19 - 8);
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129E8, &qword_2759CFAA8);
  v23 = *(*(v80 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v80);
  v82 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v88 = &v80 - v26;
  v27 = *v1;
  v94 = v1[1];
  v95 = v27;
  v105 = v27;
  v106 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v28 = v103;
  swift_getKeyPath();
  v105 = v28;
  v92 = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v29 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v30 = *&v28[v29];
  v31 = v30;

  if (!v30)
  {
    goto LABEL_6;
  }

  if (v31[OBJC_IVAR___ICSHomeDataModel_underMaintenance] != 1)
  {

    goto LABEL_6;
  }

  v33 = *&v31[OBJC_IVAR___ICSHomeDataModel_informationCard];
  v34 = v33;

  if (!v33)
  {
LABEL_6:
    MEMORY[0x28223BE20](v32);
    *(&v80 - 2) = v2;
    sub_27599BF34(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129F0, &qword_2759CFAD8);
    sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
    v88 = MEMORY[0x277CE14C0];
    sub_27589B02C(&qword_280A12A70, &qword_280A129F0, &qword_2759CFAD8);
    sub_2759B9F28();
    v65 = v94;
    v64 = v95;
    v103 = v95;
    v104 = v94;
    sub_2759B9D68();
    v66 = v108;
    swift_getKeyPath();
    v103 = v66;
    sub_2759B8638();

    v67 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v68 = *&v66[v67];
    v69 = v68;

    v102 = v68;
    v109 = v65;
    v70 = v2[1];
    v107 = v2[2];
    v108 = v70;
    v71 = swift_allocObject();
    v72 = v2[1];
    v71[1] = *v2;
    v71[2] = v72;
    v71[3] = v2[2];
    v95 = v64;
    sub_27586FBC8(&v109, v101, &qword_280A10938, &qword_2759C77C8);
    sub_27586FBC8(&v108, v101, &qword_280A0F280, &qword_2759C3728);
    sub_27586FBC8(&v107, v101, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10858, &qword_2759C7690);
    sub_2759A387C();
    sub_2758FB220();
    v73 = v91;
    v74 = v90;
    sub_2759B9B88();

    (*(v89 + 8))(v5, v74);
    v75 = swift_allocObject();
    v76 = v2[1];
    v75[1] = *v2;
    v75[2] = v76;
    v75[3] = v2[2];
    v77 = (v73 + *(v99 + 36));
    LODWORD(v65) = *(sub_2759B8FD8() + 20);
    v78 = v95;
    sub_27586FBC8(&v109, v101, &qword_280A10938, &qword_2759C77C8);
    sub_27586FBC8(&v108, v101, &qword_280A0F280, &qword_2759C3728);
    sub_27586FBC8(&v107, v101, &qword_280A0F280, &qword_2759C3728);
    sub_2759BA4E8();
    *v77 = &unk_2759CFB20;
    v77[1] = v75;
    sub_27586FBC8(v73, v98, &qword_280A129B8, &qword_2759CFA78);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A12A80, &qword_280A129C8, &qword_2759CFA88);
    sub_2759A3A00();
    sub_2759B95E8();
    v61 = v73;
    v62 = &qword_280A129B8;
    v63 = &qword_2759CFA78;
    return sub_27586BF04(v61, v62, v63);
  }

  MEMORY[0x28223BE20](v35);
  *(&v80 - 2) = v2;
  sub_27599BF34(v18);
  sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
  sub_2759A3B2C();
  sub_2759B9F28();
  v36 = v94;
  v37 = v95;
  v103 = v95;
  v104 = v94;
  sub_2759B9D68();
  v38 = v108;
  swift_getKeyPath();
  v103 = v38;
  sub_2759B8638();

  v39 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v40 = *&v38[v39];
  v41 = v40;

  v102 = v40;
  v109 = v36;
  v42 = v2[1];
  v107 = v2[2];
  v108 = v42;
  v43 = swift_allocObject();
  v44 = v2[1];
  v43[1] = *v2;
  v43[2] = v44;
  v43[3] = v2[2];
  v95 = v37;
  sub_27586FBC8(&v109, v101, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v108, v101, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v107, v101, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10858, &qword_2759C7690);
  sub_2759A3BDC();
  sub_2758FB220();
  v45 = v88;
  sub_2759B9B88();

  (*(v81 + 8))(v22, v19);
  v46 = swift_allocObject();
  v47 = v2[1];
  v46[1] = *v2;
  v46[2] = v47;
  v46[3] = v2[2];
  v48 = (v45 + *(v80 + 36));
  v49 = *(sub_2759B8FD8() + 20);
  v50 = v95;
  sub_27586FBC8(&v109, v101, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v108, v101, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v107, v101, &qword_280A0F280, &qword_2759C3728);
  v51 = sub_2759BA4E8();
  *v48 = &unk_2759CFB30;
  v48[1] = v46;
  MEMORY[0x28223BE20](v51);
  *(&v80 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129F0, &qword_2759CFAD8);
  v95 = MEMORY[0x277CE14C0];
  sub_27589B02C(&qword_280A12A70, &qword_280A129F0, &qword_2759CFAD8);
  v52 = v84;
  sub_2759B9F38();
  v53 = v82;
  sub_27586FBC8(v45, v82, &qword_280A129E8, &qword_2759CFAA8);
  v54 = v85;
  v55 = *(v85 + 16);
  v56 = v83;
  v57 = v86;
  v55(v83, v52, v86);
  v58 = v87;
  sub_27586FBC8(v53, v87, &qword_280A129E8, &qword_2759CFAA8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AA0, &qword_2759CFB38);
  v55((v58 + *(v59 + 48)), v56, v57);
  v60 = *(v54 + 8);
  v60(v56, v57);
  sub_27586BF04(v53, &qword_280A129E8, &qword_2759CFAA8);
  sub_27586FBC8(v58, v98, &qword_280A129C8, &qword_2759CFA88);
  swift_storeEnumTagMultiPayload();
  sub_27589B02C(&qword_280A12A80, &qword_280A129C8, &qword_2759CFA88);
  sub_2759A3A00();
  sub_2759B95E8();
  sub_27586BF04(v58, &qword_280A129C8, &qword_2759CFA88);
  v60(v52, v57);
  v61 = v88;
  v62 = &qword_280A129E8;
  v63 = &qword_2759CFAA8;
  return sub_27586BF04(v61, v62, v63);
}

uint64_t sub_27599BEC4@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  type metadata accessor for iCloudHomeViewModel();
  result = sub_2759B9D58();
  *a2 = v4;
  return result;
}

uint64_t sub_27599BF34@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C08, &qword_2759CFD58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v96 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A28, &qword_2759CFAF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v97 = &v96 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C10, &qword_2759CFD60);
  v9 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v11 = &v96 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A48, &qword_2759CFB00);
  v12 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v98 = &v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A58, &qword_2759CFB08);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v96 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A38, &qword_2759CFAF8);
  v18 = *(*(v107 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v107);
  v102 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v96 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A18, &qword_2759CFAE8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v104 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v106 = &v96 - v27;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12A08, &qword_2759CFAE0);
  v28 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v108 = &v96 - v29;
  *v17 = sub_2759B9418();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C18, &qword_2759CFD68);
  sub_2759A0DF8(v1, &v17[*(v30 + 44)]);
  v31 = sub_2759B97E8();
  sub_2759B8D78();
  v101 = v14;
  v32 = &v17[*(v14 + 36)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = objc_opt_self();
  v38 = [v37 currentDevice];
  v39 = [v38 userInterfaceIdiom];

  v99 = v37;
  if (v39 == 1 || (v40 = [v37 currentDevice], v41 = objc_msgSend(v40, sel_userInterfaceIdiom), v40, v41 == 6))
  {
    v42 = sub_2759B97F8();
    sub_2759B8D78();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = v98;
    sub_27586FBC8(v17, v98, &qword_280A12A58, &qword_2759CFB08);
    v52 = v51 + *(v103 + 36);
    *v52 = v42;
    *(v52 + 8) = v44;
    *(v52 + 16) = v46;
    *(v52 + 24) = v48;
    *(v52 + 32) = v50;
    *(v52 + 40) = 0;
    sub_27586FBC8(v51, v11, &qword_280A12A48, &qword_2759CFB00);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A40, &qword_280A12A48, &qword_2759CFB00, sub_2759A37C4);
    sub_2759A37C4();
    v53 = v102;
    sub_2759B95E8();
    sub_27586BF04(v51, &qword_280A12A48, &qword_2759CFB00);
  }

  else
  {
    sub_27586FBC8(v17, v11, &qword_280A12A58, &qword_2759CFB08);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A40, &qword_280A12A48, &qword_2759CFB00, sub_2759A37C4);
    sub_2759A37C4();
    v53 = v102;
    sub_2759B95E8();
  }

  sub_27586BF04(v17, &qword_280A12A58, &qword_2759CFB08);
  sub_27589F26C(v53, v22, &qword_280A12A38, &qword_2759CFAF8);
  v54 = v99;
  v55 = [v99 currentDevice];
  v56 = [v55 userInterfaceIdiom];

  v57 = v104;
  if (v56 == 1 || (v58 = [v54 currentDevice], v59 = objc_msgSend(v58, sel_userInterfaceIdiom), v58, v59 == 6))
  {
    sub_27586FBC8(v22, v5, &qword_280A12A38, &qword_2759CFAF8);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A20, &qword_280A12A28, &qword_2759CFAF0, sub_2759A370C);
    sub_2759A370C();
    sub_2759B95E8();
  }

  else
  {
    v60 = sub_2759B97F8();
    sub_2759B8D78();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = v97;
    sub_27586FBC8(v22, v97, &qword_280A12A38, &qword_2759CFAF8);
    v70 = v69 + *(v6 + 36);
    *v70 = v60;
    *(v70 + 8) = v62;
    *(v70 + 16) = v64;
    *(v70 + 24) = v66;
    *(v70 + 32) = v68;
    *(v70 + 40) = 0;
    sub_27586FBC8(v69, v5, &qword_280A12A28, &qword_2759CFAF0);
    swift_storeEnumTagMultiPayload();
    sub_2759A4504(&qword_280A12A20, &qword_280A12A28, &qword_2759CFAF0, sub_2759A370C);
    sub_2759A370C();
    sub_2759B95E8();
    sub_27586BF04(v69, &qword_280A12A28, &qword_2759CFAF0);
  }

  sub_27586BF04(v22, &qword_280A12A38, &qword_2759CFAF8);
  v71 = v106;
  sub_27589F26C(v57, v106, &qword_280A12A18, &qword_2759CFAE8);
  v72 = sub_2759B9808();
  sub_2759B8D78();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v71;
  v82 = v108;
  sub_27589F26C(v81, v108, &qword_280A12A18, &qword_2759CFAE8);
  v83 = v82 + *(v105 + 36);
  *v83 = v72;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  v84 = sub_2759B9818();
  sub_2759B8D78();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v109;
  sub_27589F26C(v82, v109, &qword_280A12A08, &qword_2759CFAE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A129D8, &qword_2759CFA98);
  v95 = v93 + *(result + 36);
  *v95 = v84;
  *(v95 + 8) = v86;
  *(v95 + 16) = v88;
  *(v95 + 24) = v90;
  *(v95 + 32) = v92;
  *(v95 + 40) = 0;
  return result;
}

uint64_t sub_27599C808(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = sub_2759BA9A8();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = sub_2759BA4C8();
  v1[18] = sub_2759BA4B8();
  v7 = sub_2759BA468();
  v1[19] = v7;
  v1[20] = v6;

  return MEMORY[0x2822009F8](sub_27599C938, v7, v6);
}

uint64_t sub_27599C938()
{
  v1 = *(v0 + 128);
  v2 = sub_2759BAC28();
  v4 = v3;
  sub_2759BAB68();
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_27599CA14;
  v6 = *(v0 + 128);

  return sub_2759A3E3C(v2, v4, 0, 0, 1);
}

uint64_t sub_27599CA14()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 168);
  v5 = *v1;

  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[19];
    v10 = v3[20];
    v11 = sub_2759A5A38;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[19];
    v10 = v3[20];
    v11 = sub_27599CBA8;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27599CBA8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = *v5;
  *(v0 + 80) = *(v5 + 8);
  *(v0 + 16) = *(v5 + 16);
  *(v0 + 32) = *(v5 + 32);
  v8 = v7;
  sub_27586FBC8(v0 + 80, v0 + 88, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(v0 + 16, v0 + 48, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(v0 + 32, v0 + 64, &qword_280A0F280, &qword_2759C3728);
  v9 = sub_2759BA4B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v13 = *(v5 + 16);
  v12 = *(v5 + 32);
  *(v10 + 32) = *v5;
  *(v10 + 48) = v13;
  *(v10 + 64) = v12;
  sub_27587D460(0, 0, v4, &unk_2759CFD40, v10);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_27599CD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_2759BA4C8();
  *(v4 + 40) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27599CDE0, v6, v5);
}

uint64_t sub_27599CDE0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 32);
  *(v0 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
  sub_2759B9D78();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_27599CE78@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AA8, &qword_2759CFB40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  *v10 = sub_2759B94F8();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AB0, &qword_2759CFB48);
  sub_27599D618(a1, &v10[*(v11 + 44)]);
  v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v12 = v18;
  v13 = sub_275881DE4();

  if (v13)
  {
    v19 = *a1;
    sub_2759B9D68();
    v14 = v18;
    v15 = v18;
  }

  else
  {
    v14 = 0;
  }

  sub_27586FBC8(v10, v8, &qword_280A12AA8, &qword_2759CFB40);
  sub_27586FBC8(v8, a2, &qword_280A12AA8, &qword_2759CFB40);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AB8, &qword_2759CFB50) + 48)) = v14;
  sub_27586BF04(v10, &qword_280A12AA8, &qword_2759CFB40);

  return sub_27586BF04(v8, &qword_280A12AA8, &qword_2759CFB40);
}

uint64_t sub_27599D040(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = sub_2759BA9A8();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = sub_2759BA4C8();
  v1[18] = sub_2759BA4B8();
  v7 = sub_2759BA468();
  v1[19] = v7;
  v1[20] = v6;

  return MEMORY[0x2822009F8](sub_27599D170, v7, v6);
}

uint64_t sub_27599D170()
{
  v1 = *(v0 + 128);
  v2 = sub_2759BAC28();
  v4 = v3;
  sub_2759BAB68();
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_27599D24C;
  v6 = *(v0 + 128);

  return sub_2759A3E3C(v2, v4, 0, 0, 1);
}

uint64_t sub_27599D24C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 168);
  v5 = *v1;

  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[19];
    v10 = v3[20];
    v11 = sub_2759A5A3C;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[19];
    v10 = v3[20];
    v11 = sub_27599D3E0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_27599D3E0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = *v5;
  *(v0 + 80) = *(v5 + 8);
  *(v0 + 16) = *(v5 + 16);
  *(v0 + 32) = *(v5 + 32);
  v8 = v7;
  sub_27586FBC8(v0 + 80, v0 + 88, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(v0 + 16, v0 + 48, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(v0 + 32, v0 + 64, &qword_280A0F280, &qword_2759C3728);
  v9 = sub_2759BA4B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v13 = *(v5 + 16);
  v12 = *(v5 + 32);
  *(v10 + 32) = *v5;
  *(v10 + 48) = v13;
  *(v10 + 64) = v12;
  sub_27587D460(0, 0, v4, &unk_2759CFD50, v10);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_27599D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_2759BA4C8();
  *(v4 + 40) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759A5A30, v6, v5);
}

uint64_t sub_27599D618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v178 = *(v3 - 8);
  v179 = v3;
  v4 = *(v178 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v156 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AC0, &qword_2759CFB58);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v180 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v183 = &v156 - v11;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AC8, &qword_2759CFB60);
  v12 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v14 = &v156 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AD0, &qword_2759CFB68);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v164 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v165 = &v156 - v19;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AD8, &qword_2759CFB70);
  v159 = *(v162 - 8);
  v20 = *(v159 + 64);
  MEMORY[0x28223BE20](v162);
  v22 = &v156 - v21;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AE0, &qword_2759CFB78);
  v23 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v161 = &v156 - v24;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AE8, &qword_2759CFB80);
  v25 = *(*(v160 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v160);
  v163 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v158 = &v156 - v29;
  MEMORY[0x28223BE20](v28);
  v166 = &v156 - v30;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AF0, &qword_2759CFB88);
  v31 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v175 = &v156 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12AF8, &qword_2759CFB90);
  v168 = *(v33 - 8);
  v169 = v33;
  v34 = *(v168 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v156 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B00, &qword_2759CFB98);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v170 = &v156 - v39;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B08, &qword_2759CFBA0);
  v40 = *(*(v171 - 1) + 64);
  MEMORY[0x28223BE20](v171);
  v42 = &v156 - v41;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B10, &qword_2759CFBA8);
  v43 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v172 = &v156 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B18, &qword_2759CFBB0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v177 = &v156 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v182 = &v156 - v49;
  v50 = *(a1 + 8);
  v187 = *a1;
  *&v198 = v187;
  v185 = v50;
  *(&v198 + 1) = v50;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v51 = v188;
  swift_getKeyPath();
  *&v198 = v51;
  v186 = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v52 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v53 = *&v51[v52];
  v167 = v6;
  if (v53)
  {
    v54 = (*(v53 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);
    v55 = *v54;
    v56 = v54[1];

    LOBYTE(v55) = sub_27598AB3C();

    if (!v55)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v57 = sub_2759BAAC8();

  if (v57)
  {
LABEL_13:
    v65 = v185;
    *&v210 = v185;
    v66 = *(a1 + 32);
    v209 = *(a1 + 16);
    v211 = v66;
    v67 = swift_allocObject();
    v68 = *(a1 + 16);
    v67[1] = *a1;
    v67[2] = v68;
    v67[3] = *(a1 + 32);
    MEMORY[0x28223BE20](v67);
    v69 = v187;
    sub_27586FBC8(&v210, &v198, &qword_280A10938, &qword_2759C77C8);
    sub_27586FBC8(&v209, &v198, &qword_280A0F280, &qword_2759C3728);
    sub_27586FBC8(&v211, &v198, &qword_280A0F280, &qword_2759C3728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B88, &qword_2759CFC10);
    sub_2759A48F4();
    sub_2759B9DB8();
    sub_2759B9498();
    sub_27589B02C(&qword_280A12B70, &qword_280A12AF8, &qword_2759CFB90);
    v71 = v169;
    v70 = v170;
    sub_2759B9AF8();

    (*(v168 + 8))(v36, v71);
    *&v198 = v69;
    *(&v198 + 1) = v65;
    sub_2759B9D68();
    v72 = v188;
    swift_getKeyPath();
    *&v198 = v72;
    sub_2759B8638();

    v73 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v74 = *&v72[v73];
    v75 = v74;

    if (v74)
    {
    }

    v76 = v74 == 0;
    KeyPath = swift_getKeyPath();
    v78 = swift_allocObject();
    *(v78 + 16) = v76;
    sub_27589F26C(v70, v42, &qword_280A12B00, &qword_2759CFB98);
    v79 = &v42[*(v171 + 9)];
    *v79 = KeyPath;
    v79[1] = sub_2759A5A40;
    v79[2] = v78;
    sub_2759A46FC();
    v80 = v172;
    sub_2759B9B38();
    sub_27586BF04(v42, &qword_280A12B08, &qword_2759CFBA0);
    sub_27586FBC8(v80, v175, &qword_280A12B10, &qword_2759CFBA8);
    swift_storeEnumTagMultiPayload();
    sub_2759A4640();
    sub_27589B02C(&qword_280A12B78, &qword_280A12AC8, &qword_2759CFB60);
    v81 = v182;
    sub_2759B95E8();
    sub_27586BF04(v80, &qword_280A12B10, &qword_2759CFBA8);
    goto LABEL_16;
  }

  *&v198 = v187;
  *(&v198 + 1) = v185;
  sub_2759B9D68();
  v58 = v188;
  swift_getKeyPath();
  *&v198 = v58;
  sub_2759B8638();

  v59 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v60 = *&v58[v59];
  if (!v60)
  {

    goto LABEL_10;
  }

  v61 = (*(v60 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);
  v62 = *v61;
  v63 = v61[1];

  LOBYTE(v62) = sub_27598AB3C();

  if (v62 > 2u)
  {
LABEL_10:

    goto LABEL_13;
  }

  v64 = sub_2759BAAC8();

  if (v64)
  {
    goto LABEL_13;
  }

  v172 = v14;
  v118 = v185;
  v212[0] = v185;
  v119 = *(a1 + 16);
  v210 = *(a1 + 32);
  v211 = v119;
  v120 = swift_allocObject();
  v171 = &v156;
  v121 = *(a1 + 16);
  v120[1] = *a1;
  v120[2] = v121;
  v120[3] = *(a1 + 32);
  MEMORY[0x28223BE20](v120);
  v122 = v187;
  sub_27586FBC8(v212, &v198, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v211, &v198, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v210, &v198, &qword_280A0F280, &qword_2759C3728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B20, &qword_2759CFBB8);
  sub_27589B02C(&qword_280A12B28, &qword_280A12B20, &qword_2759CFBB8);
  sub_2759B9DB8();
  *&v198 = v122;
  *(&v198 + 1) = v118;
  sub_2759B9D68();
  v123 = v188;
  swift_getKeyPath();
  *&v198 = v123;
  sub_2759B8638();

  v124 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v125 = *&v123[v124];
  v126 = v125;

  if (v125)
  {
  }

  v127 = v125 == 0;
  v128 = swift_getKeyPath();
  v129 = swift_allocObject();
  *(v129 + 16) = v127;
  v130 = v161;
  (*(v159 + 32))(v161, v22, v162);
  v131 = (v130 + *(v157 + 36));
  *v131 = v128;
  v131[1] = sub_2759A44E4;
  v131[2] = v129;
  LOBYTE(v128) = sub_2759B97F8();
  sub_2759B8D78();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v140 = v158;
  sub_27589F26C(v130, v158, &qword_280A12AE0, &qword_2759CFB78);
  v141 = v140 + *(v160 + 36);
  *v141 = v128;
  *(v141 + 8) = v133;
  *(v141 + 16) = v135;
  *(v141 + 24) = v137;
  *(v141 + 32) = v139;
  *(v141 + 40) = 0;
  v142 = v166;
  sub_27589F26C(v140, v166, &qword_280A12AE8, &qword_2759CFB80);
  v143 = swift_allocObject();
  v144 = *(a1 + 16);
  v143[1] = *a1;
  v143[2] = v144;
  v143[3] = *(a1 + 32);
  v145 = v122;
  sub_27586FBC8(v212, &v198, &qword_280A10938, &qword_2759C77C8);
  sub_27586FBC8(&v211, &v198, &qword_280A0F280, &qword_2759C3728);
  sub_27586FBC8(&v210, &v198, &qword_280A0F280, &qword_2759C3728);
  sub_2759BA028();
  sub_2759B9128();
  v146 = sub_2759B97F8();
  sub_2759B8D78();
  v208 = 0;
  *&v188 = sub_2759A44FC;
  *(&v188 + 1) = v143;
  v193 = v197[6];
  v194 = v197[7];
  v195 = v197[8];
  v189 = v197[2];
  v190 = v197[3];
  v191 = v197[4];
  v192 = v197[5];
  LOBYTE(v196) = v146;
  *(&v196 + 1) = v147;
  *&v197[0] = v148;
  *(&v197[0] + 1) = v149;
  *&v197[1] = v150;
  BYTE8(v197[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B30, &qword_2759CFBF0);
  sub_2759A4504(&qword_280A12B38, &qword_280A12B30, &qword_2759CFBF0, sub_2759A4588);
  v151 = v165;
  sub_2759B9B38();
  v206 = v196;
  v207[0] = v197[0];
  *(v207 + 9) = *(v197 + 9);
  v202 = v192;
  v203 = v193;
  v204 = v194;
  v205 = v195;
  v198 = v188;
  v199 = v189;
  v200 = v190;
  v201 = v191;
  sub_27586BF04(&v198, &qword_280A12B30, &qword_2759CFBF0);
  v152 = v163;
  sub_27586FBC8(v142, v163, &qword_280A12AE8, &qword_2759CFB80);
  v153 = v164;
  sub_27586FBC8(v151, v164, &qword_280A12AD0, &qword_2759CFB68);
  v154 = v172;
  sub_27586FBC8(v152, v172, &qword_280A12AE8, &qword_2759CFB80);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B50, &qword_2759CFC00);
  sub_27586FBC8(v153, v154 + *(v155 + 48), &qword_280A12AD0, &qword_2759CFB68);
  sub_27586BF04(v153, &qword_280A12AD0, &qword_2759CFB68);
  sub_27586BF04(v152, &qword_280A12AE8, &qword_2759CFB80);
  sub_27586FBC8(v154, v175, &qword_280A12AC8, &qword_2759CFB60);
  swift_storeEnumTagMultiPayload();
  sub_2759A4640();
  sub_27589B02C(&qword_280A12B78, &qword_280A12AC8, &qword_2759CFB60);
  v81 = v182;
  sub_2759B95E8();
  sub_27586BF04(v154, &qword_280A12AC8, &qword_2759CFB60);
  sub_27586BF04(v151, &qword_280A12AD0, &qword_2759CFB68);
  sub_27586BF04(v166, &qword_280A12AE8, &qword_2759CFB80);
  v65 = v185;
LABEL_16:
  v82 = v187;
  *&v198 = v187;
  *(&v198 + 1) = v65;
  sub_2759B9D68();
  v83 = v188;
  v84 = sub_275881A20();

  if ((v84 & 1) == 0)
  {
    goto LABEL_20;
  }

  *&v198 = v82;
  *(&v198 + 1) = v65;
  sub_2759B9D68();
  v85 = v188;
  swift_getKeyPath();
  *&v198 = v85;
  sub_2759B8638();

  v86 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v87 = *&v85[v86];
  v88 = v87;

  if (!v87)
  {
    goto LABEL_20;
  }

  v89 = *&v88[OBJC_IVAR___ICSHomeDataModel_headerCard];

  v90 = *&v89[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader];
  v91 = v90;

  if (v90)
  {
    v93 = *&v91[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle];
    v92 = *&v91[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle + 8];

    *&v198 = v93;
    *(&v198 + 1) = v92;
    sub_27589F2D4();
    v94 = sub_2759B99C8();
    v96 = v95;
    LOBYTE(v93) = v97;
    sub_2759B9848();
    v98 = sub_2759B9988();
    v100 = v99;
    v102 = v101;

    sub_27589F328(v94, v96, v93 & 1);

    *&v198 = sub_2759B9C68();
    v103 = sub_2759B9958();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    sub_27589F328(v98, v100, v102 & 1);

    v81 = v182;

    *&v198 = v103;
    *(&v198 + 1) = v105;
    v107 &= 1u;
    LOBYTE(v199) = v107;
    *(&v199 + 1) = v109;
    v110 = v167;
    sub_2759B9B38();
    sub_27589F328(v103, v105, v107);

    sub_27589F26C(v110, v183, &qword_280A0F600, &qword_2759C4210);
    v111 = 0;
  }

  else
  {
LABEL_20:
    v111 = 1;
  }

  v112 = v183;
  (*(v178 + 56))(v183, v111, 1, v179);
  v113 = v177;
  sub_27586FBC8(v81, v177, &qword_280A12B18, &qword_2759CFBB0);
  v114 = v180;
  sub_27586FBC8(v112, v180, &qword_280A12AC0, &qword_2759CFB58);
  v115 = v181;
  sub_27586FBC8(v113, v181, &qword_280A12B18, &qword_2759CFBB0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B80, &qword_2759CFC08);
  sub_27586FBC8(v114, v115 + *(v116 + 48), &qword_280A12AC0, &qword_2759CFB58);
  sub_27586BF04(v112, &qword_280A12AC0, &qword_2759CFB58);
  sub_27586BF04(v81, &qword_280A12B18, &qword_2759CFBB0);
  sub_27586BF04(v114, &qword_280A12AC0, &qword_2759CFB58);
  return sub_27586BF04(v113, &qword_280A12B18, &qword_2759CFBB0);
}

uint64_t sub_27599EC70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759BA038();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0x4010000000000000;
  *(a2 + 48) = 256;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12B88, &qword_2759CFC10);
  return sub_27599ECF4(a1, a2 + *(v5 + 44));
}

uint64_t sub_27599ECF4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BA8, &qword_2759CFC20);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BB0, &qword_2759CFC28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  *v17 = sub_2759B9418();
  *(v17 + 1) = 0x4020000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BB8, &qword_2759CFC30);
  sub_27599EF4C(a1, &v17[*(v18 + 44)]);
  *v10 = sub_2759B9418();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BC0, &qword_2759CFC38);
  sub_27599F788(a1, &v10[*(v19 + 44)]);
  sub_27586FBC8(v17, v15, &qword_280A12BB0, &qword_2759CFC28);
  sub_27586FBC8(v10, v8, &qword_280A12BA8, &qword_2759CFC20);
  sub_27586FBC8(v15, a2, &qword_280A12BB0, &qword_2759CFC28);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BC8, &qword_2759CFC40);
  v21 = a2 + *(v20 + 48);
  *v21 = 0x4020000000000000;
  *(v21 + 8) = 0;
  sub_27586FBC8(v8, a2 + *(v20 + 64), &qword_280A12BA8, &qword_2759CFC20);
  sub_27586BF04(v10, &qword_280A12BA8, &qword_2759CFC20);
  sub_27586BF04(v17, &qword_280A12BB0, &qword_2759CFC28);
  sub_27586BF04(v8, &qword_280A12BA8, &qword_2759CFC20);
  return sub_27586BF04(v15, &qword_280A12BB0, &qword_2759CFC28);
}

uint64_t sub_27599EF4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v70 = type metadata accessor for SimpleStorageMeter();
  v3 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v5 = (v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BD8, &qword_2759CFCE0);
  v6 = *(*(v71 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v71);
  v76 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = v69 - v10;
  MEMORY[0x28223BE20](v9);
  v75 = v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v74 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v69 - v16;
  v87 = *a1;
  v80 = *a1;
  v69[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v18 = v79;
  swift_getKeyPath();
  *&v80 = v18;
  v69[0] = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v19 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v20 = *&v18[v19];
  v21 = v20;

  v73 = v17;
  if (v20)
  {
    v22 = *&v21[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v23 = *&v22[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v24 = *&v23[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];
    v25 = *&v23[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = sub_2759B83C8();
    v25 = v27;
  }

  *&v80 = v24;
  *(&v80 + 1) = v25;
  sub_27589F2D4();
  v28 = sub_2759B99C8();
  v30 = v29;
  v32 = v31;
  sub_2759B9858();
  v33 = sub_2759B9988();
  v35 = v34;
  v37 = v36;

  sub_27589F328(v28, v30, v32 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  *&v80 = qword_280A239B8;

  v38 = sub_2759B9958();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_27589F328(v33, v35, v37 & 1);

  *&v80 = v38;
  *(&v80 + 1) = v40;
  v45 = v42 & 1;
  LOBYTE(v81) = v42 & 1;
  *(&v81 + 1) = v44;
  v46 = v73;
  sub_2759B9B38();
  sub_27589F328(v38, v40, v45);

  v80 = v87;
  sub_2759B9D68();
  v47 = v78;
  sub_275881B64();
  v49 = v48;

  v80 = v87;
  sub_2759B9D68();
  v50 = v78;
  swift_getKeyPath();
  *&v80 = v50;
  sub_2759B8638();

  v51 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v52 = *&v50[v51];
  if (v52)
  {
    v53 = (*(*(v52 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary) + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor);
    v54 = *v53;
    v55 = v53[1];

    v56 = sub_27594972C(v54, v55);
  }

  else
  {
    v56 = sub_2759B9C38();
  }

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v57 = v70;
  *(v5 + *(v70 + 20)) = v49;
  *(v5 + v57[6]) = v56;
  *(v5 + v57[7]) = 0x4024000000000000;
  *(v5 + v57[8]) = 0x4028000000000000;
  sub_2759BA028();
  sub_2759B9128();
  v58 = v72;
  sub_2759A49D8(v5, v72);
  v59 = (v58 + *(v71 + 36));
  v60 = v85;
  v59[4] = v84;
  v59[5] = v60;
  v59[6] = v86;
  v61 = v81;
  *v59 = v80;
  v59[1] = v61;
  v62 = v83;
  v59[2] = v82;
  v59[3] = v62;
  v63 = v75;
  sub_27589F26C(v58, v75, &qword_280A12BD8, &qword_2759CFCE0);
  v64 = v74;
  sub_27586FBC8(v46, v74, &qword_280A0F600, &qword_2759C4210);
  v65 = v76;
  sub_27586FBC8(v63, v76, &qword_280A12BD8, &qword_2759CFCE0);
  v66 = v77;
  sub_27586FBC8(v64, v77, &qword_280A0F600, &qword_2759C4210);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BE0, &qword_2759CFD18);
  sub_27586FBC8(v65, v66 + *(v67 + 48), &qword_280A12BD8, &qword_2759CFCE0);
  sub_27586BF04(v63, &qword_280A12BD8, &qword_2759CFCE0);
  sub_27586BF04(v46, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v65, &qword_280A12BD8, &qword_2759CFCE0);
  return sub_27586BF04(v64, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27599F788@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = *(*(v57 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v57);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v56 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v56 - v12;
  v62 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v13 = v65;
  swift_getKeyPath();
  *&v62 = v13;
  sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v14 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v15 = *&v13[v14];
  v16 = v15;

  if (v15)
  {
    v17 = *&v16[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v18 = *&v17[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v19 = *&v18[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel];
    v20 = *&v18[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel + 8];
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  *&v62 = v19;
  *(&v62 + 1) = v20;
  sub_27589F2D4();
  v21 = sub_2759B99C8();
  v23 = v22;
  v25 = v24;
  sub_2759B9858();
  v26 = sub_2759B9988();
  v28 = v27;
  v30 = v29;

  sub_27589F328(v21, v23, v25 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  *&v62 = qword_280A239C0;

  v31 = sub_2759B9958();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_27589F328(v26, v28, v30 & 1);

  *&v62 = v31;
  *(&v62 + 1) = v33;
  v63 = v35 & 1;
  v64 = v37;
  v38 = v58;
  sub_2759B9B38();
  sub_27589F328(v31, v33, v35 & 1);

  v39 = sub_2759B9CB8();
  v40 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v42 = *MEMORY[0x277CE1050];
  v43 = sub_2759B9D18();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  *v7 = v39;
  v44 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v46 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  v47 = [objc_opt_self() tertiaryLabelColor];
  v48 = sub_2759B9BD8();
  v49 = swift_getKeyPath();
  v50 = (v7 + *(v57 + 36));
  *v50 = v49;
  v50[1] = v48;
  v51 = v59;
  sub_27586FBC8(v38, v59, &qword_280A0F600, &qword_2759C4210);
  v52 = v61;
  sub_27586FBC8(v7, v61, &qword_280A10AB8, &qword_2759C7C48);
  v53 = v60;
  sub_27586FBC8(v51, v60, &qword_280A0F600, &qword_2759C4210);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BD0, &qword_2759CFCD8);
  sub_27586FBC8(v52, v53 + *(v54 + 48), &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v7, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v38, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v52, &qword_280A10AB8, &qword_2759C7C48);
  return sub_27586BF04(v51, &qword_280A0F600, &qword_2759C4210);
}

void sub_27599FD70(__int128 *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  iCloudHomeViewModel.showManageStorageView(deeplinkPath:)(0);
}

uint64_t sub_27599FDD0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759B9418();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BE8, &qword_2759CFD20);
  return sub_27599FE28(a1, a2 + *(v4 + 44));
}

uint64_t sub_27599FE28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = *(*(v91 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v91);
  v96 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = (v90 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v94 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = v90 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v98 = v90 - v14;
  MEMORY[0x28223BE20](v13);
  v97 = v90 - v15;
  v104 = *a1;
  v100 = *a1;
  v90[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v16 = v103;
  swift_getKeyPath();
  *&v100 = v16;
  v90[1] = sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v17 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v18 = *&v16[v17];
  v19 = v18;

  if (v18)
  {
    v20 = *&v19[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v21 = *&v20[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v22 = *&v21[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];
    v23 = *&v21[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v22 = sub_2759B83C8();
    v23 = v25;
  }

  *&v100 = v22;
  *(&v100 + 1) = v23;
  sub_27589F2D4();
  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  sub_2759B9858();
  v31 = sub_2759B9988();
  v33 = v32;
  v35 = v34;

  sub_27589F328(v26, v28, v30 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  *&v100 = qword_280A239B8;

  v36 = sub_2759B9958();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_27589F328(v31, v33, v35 & 1);

  *&v100 = v36;
  *(&v100 + 1) = v38;
  v101 = v40 & 1;
  v102 = v42;
  sub_2759B9B38();
  sub_27589F328(v36, v38, v40 & 1);

  v100 = v104;
  sub_2759B9D68();
  v43 = v99;
  swift_getKeyPath();
  *&v100 = v43;
  sub_2759B8638();

  v44 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v45 = *&v43[v44];
  v46 = v45;

  if (v45)
  {
    v47 = *&v46[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v48 = *&v47[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v45 = *&v48[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel];
    v49 = *&v48[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usageLabel + 8];
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  *&v100 = v45;
  *(&v100 + 1) = v49;
  v50 = sub_2759B99C8();
  v52 = v51;
  v54 = v53;
  sub_2759B9858();
  v55 = sub_2759B9988();
  v57 = v56;
  v59 = v58;

  sub_27589F328(v50, v52, v54 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  *&v100 = qword_280A239C0;

  v60 = sub_2759B9958();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  sub_27589F328(v55, v57, v59 & 1);

  *&v100 = v60;
  *(&v100 + 1) = v62;
  v101 = v64 & 1;
  v102 = v66;
  v67 = v98;
  sub_2759B9B38();
  sub_27589F328(v60, v62, v64 & 1);

  v68 = sub_2759B9CB8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
  v70 = v92;
  v71 = (v92 + *(v69 + 36));
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v73 = *MEMORY[0x277CE1050];
  v74 = sub_2759B9D18();
  (*(*(v74 - 8) + 104))(v71 + v72, v73, v74);
  *v71 = swift_getKeyPath();
  *v70 = v68;
  v75 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v77 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v77 = KeyPath;
  v77[1] = v75;
  v78 = [objc_opt_self() tertiaryLabelColor];
  v79 = sub_2759B9BD8();
  v80 = swift_getKeyPath();
  v81 = (v70 + *(v91 + 36));
  *v81 = v80;
  v81[1] = v79;
  v82 = v97;
  v83 = v93;
  sub_27586FBC8(v97, v93, &qword_280A0F600, &qword_2759C4210);
  v84 = v94;
  sub_27586FBC8(v67, v94, &qword_280A0F600, &qword_2759C4210);
  v85 = v96;
  sub_27586FBC8(v70, v96, &qword_280A10AB8, &qword_2759C7C48);
  v86 = v95;
  sub_27586FBC8(v83, v95, &qword_280A0F600, &qword_2759C4210);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12BF0, &qword_2759CFD28);
  v88 = v86 + v87[12];
  *v88 = 0x4020000000000000;
  *(v88 + 8) = 0;
  sub_27586FBC8(v84, v86 + v87[16], &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v85, v86 + v87[20], &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v70, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v98, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v82, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v85, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v84, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v83, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2759A07FC@<X0>(__int128 *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = sub_2759BA038();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11118, &qword_2759CA070);
  return sub_2759A085C(a1, a2 + *(v5 + 44));
}

uint64_t sub_2759A085C@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a1;
  v53 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v46 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11128, &qword_2759CA080);
  v6 = *(*(v49 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v46 - v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11130, &qword_2759CA088);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v50 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_2759B94B8();
  v21 = *(*(v20 - 8) + 104);
  v21(v18, v19, v20);
  sub_2759B8F48();
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v22 = &v18[*(v3 + 44)];
  v23 = v57;
  *v22 = v56;
  *(v22 + 1) = v23;
  *(v22 + 2) = v58;
  sub_2759B9C18();
  v24 = sub_2759B9C58();
  v25 = v46;

  KeyPath = swift_getKeyPath();
  v27 = &v18[*(v13 + 44)];
  *v27 = KeyPath;
  v27[1] = v24;
  v21(v25, v19, v20);
  sub_2759B8F48();
  v28 = v47;
  v59 = *v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v29 = v54;
  sub_275881B64();

  sub_2759BA028();
  sub_2759B8F18();
  v30 = (v25 + *(v3 + 44));
  v31 = v60;
  *v30 = v59;
  v30[1] = v31;
  v30[2] = v61;
  v54 = *v28;
  sub_2759B9D68();
  v32 = v55;
  swift_getKeyPath();
  *&v54 = v32;
  sub_2759A4AEC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v33 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v34 = *&v32[v33];
  if (v34)
  {
    v35 = (*(*(v34 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary) + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor);
    v36 = *v35;
    v37 = v35[1];

    v38 = sub_27594972C(v36, v37);
  }

  else
  {
    v38 = sub_2759B9C38();
  }

  v39 = v48;
  sub_27589F26C(v25, v48, &qword_280A11120, &qword_2759CA078);
  *(v39 + *(v49 + 36)) = v38;
  v40 = v51;
  sub_27589F26C(v39, v51, &qword_280A11128, &qword_2759CA080);
  v41 = v50;
  sub_27586FBC8(v18, v50, &qword_280A11130, &qword_2759CA088);
  v42 = v52;
  sub_27586FBC8(v40, v52, &qword_280A11128, &qword_2759CA080);
  v43 = v53;
  sub_27586FBC8(v41, v53, &qword_280A11130, &qword_2759CA088);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11138, &qword_2759CA0C0);
  sub_27586FBC8(v42, v43 + *(v44 + 48), &qword_280A11128, &qword_2759CA080);
  sub_27586BF04(v40, &qword_280A11128, &qword_2759CA080);
  sub_27586BF04(v18, &qword_280A11130, &qword_2759CA088);
  sub_27586BF04(v42, &qword_280A11128, &qword_2759CA080);
  return sub_27586BF04(v41, &qword_280A11130, &qword_2759CA088);
}

uint64_t sub_2759A0DF8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C20, &qword_2759CFD70);
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = (&v41 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C28, &qword_2759CFD78);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C30, &qword_2759CFD80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C38, &qword_2759CFD88);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  *v24 = sub_2759B94F8();
  *(v24 + 1) = 0xC000000000000000;
  v24[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C40, &qword_2759CFD90);
  sub_2759A13D4(a1, &v24[*(v25 + 44)]);
  v52[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v26 = v50[0];
  v27 = iCloudHomeViewModel.canShowSubscriberBranding.getter();

  if (v27)
  {
    v28 = sub_2759BA028();
    v42 = v29;
    v43 = v28;
    sub_2759A23A4(*&a1, v52);
    memcpy(v53, v52, 0x179uLL);
    memcpy(v54, v52, 0x179uLL);
    sub_27586FBC8(v53, v50, &qword_280A12C50, &qword_2759CFDA0);
    sub_27586BF04(v54, &qword_280A12C50, &qword_2759CFDA0);
    memcpy(v51, v53, sizeof(v51));
    v52[0] = a1[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D68();
    if (LOBYTE(v50[0]))
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.0;
    }

    v31 = sub_2759BA088();
    v44 = v3;
    v32 = v31;
    v52[0] = a1[1];
    sub_2759B9D68();
    v33 = v50[0];
    v50[0] = v43;
    v50[1] = v42;
    memcpy(&v50[2], v51, 0x179uLL);
    *&v50[50] = v30;
    v50[51] = v32;
    LOBYTE(v50[52]) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C58, &qword_2759CFDA8);
    sub_2759A4C3C();
    v34 = v45;
    sub_2759B9B38();
    memcpy(v52, v50, 0x1A1uLL);
    sub_27586BF04(v52, &qword_280A12C58, &qword_2759CFDA8);
    v35 = v47;
    sub_27586FBC8(v34, v47, &qword_280A12C28, &qword_2759CFD78);
    v36 = v46;
    *v46 = 0x401C000000000000;
    *(v36 + 8) = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C98, &qword_2759CFDC8);
    sub_27586FBC8(v35, v36 + *(v37 + 48), &qword_280A12C28, &qword_2759CFD78);
    sub_27586BF04(v34, &qword_280A12C28, &qword_2759CFD78);
    sub_27586BF04(v35, &qword_280A12C28, &qword_2759CFD78);
    sub_27589F26C(v36, v17, &qword_280A12C20, &qword_2759CFD70);
    (*(v48 + 56))(v17, 0, 1, v44);
  }

  else
  {
    (*(v48 + 56))(v17, 1, 1, v3);
  }

  sub_27586FBC8(v24, v22, &qword_280A12C38, &qword_2759CFD88);
  sub_27586FBC8(v17, v15, &qword_280A12C30, &qword_2759CFD80);
  v38 = v49;
  sub_27586FBC8(v22, v49, &qword_280A12C38, &qword_2759CFD88);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12C48, &qword_2759CFD98);
  sub_27586FBC8(v15, v38 + *(v39 + 48), &qword_280A12C30, &qword_2759CFD80);
  sub_27586BF04(v17, &qword_280A12C30, &qword_2759CFD80);
  sub_27586BF04(v24, &qword_280A12C38, &qword_2759CFD88);
  sub_27586BF04(v15, &qword_280A12C30, &qword_2759CFD80);
  return sub_27586BF04(v22, &qword_280A12C38, &qword_2759CFD88);
}

uint64_t sub_2759A13D4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = sub_2759B9488();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *&v142 = v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CE8, &qword_2759CFE30);
  v149 = *(v158 - 8);
  v6 = *(v149 + 64);
  v7 = MEMORY[0x28223BE20](v158);
  v147 = v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v137 = v133 - v9;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CF0, &qword_2759CFE38);
  v10 = *(*(v155 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v155);
  v143 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v135 = (v133 - v13);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CF8, &qword_2759CFE40);
  v14 = *(*(v153 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v153);
  v146 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v136 = v133 - v17;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D00, &qword_2759CFE48);
  v18 = *(*(v154 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v154);
  v145 = v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v140 = v133 - v21;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D08, &qword_2759CFE50);
  v22 = *(*(v157 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v157);
  v144 = v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  *&v141 = v133 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D10, &qword_2759CFE58);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v151 = v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v150 = v133 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v148 = v133 - v33;
  MEMORY[0x28223BE20](v32);
  v156 = v133 - v34;
  v170 = *a1;
  v167 = *a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v35 = v163;
  v36 = iCloudHomeViewModel.headerCardSubscriptionLabel.getter();
  v38 = v37;

  *&v167 = v36;
  *(&v167 + 1) = v38;
  sub_27589F2D4();
  v39 = sub_2759B99C8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v46 currentDevice];
  v48 = &selRef_ics_loadBundle_atPath_;
  v49 = [v47 userInterfaceIdiom];

  if (v49 == 1 || (v50 = [v46 currentDevice], v51 = objc_msgSend(v50, sel_userInterfaceIdiom), v50, v51 == 6))
  {
    sub_2759B9838();
    v52 = sub_2759B9988();
    v54 = v53;
    *&v139 = v45;
    v55 = v46;
    v57 = v56;
    v59 = v58;

    v60 = v57 & 1;
    v46 = v55;
    *&v163 = v52;
    *(&v163 + 1) = v54;
    *&v164 = v60;
    *(&v164 + 1) = v59;
    v165[0] = 0;
    sub_27589F3E4(v52, v54, v60);

    sub_27589F3E4(v52, v54, v60);

    sub_2759B95E8();
    sub_27589F328(v39, v41, v43 & 1);

    sub_27589F328(v52, v54, v60);

    v61 = v60;
    v48 = &selRef_ics_loadBundle_atPath_;
    sub_27589F328(v52, v54, v61);
  }

  else
  {
    *&v163 = v39;
    *(&v163 + 1) = v41;
    *&v164 = v43 & 1;
    *(&v164 + 1) = v45;
    v165[0] = 1;
    sub_2759B95E8();
  }

  v138 = v167;
  v139 = v168;
  v62 = v169[0];
  v63 = [v46 currentDevice];
  v64 = [v63 v48[468]];

  v65 = v149;
  if (v64 == 1 || (v66 = [v46 currentDevice], v67 = objc_msgSend(v66, v48[468]), v66, v67 == 6))
  {
    LOBYTE(v159) = v62;
    v166 = 1;
    v163 = v138;
    v164 = v139;
    v165[0] = v62;
    v165[24] = 1;
  }

  else
  {
    v68 = sub_2759B9868();
    KeyPath = swift_getKeyPath();
    LOBYTE(v159) = v62;
    v166 = 0;
    v163 = v138;
    v164 = v139;
    v165[0] = v62;
    *&v165[8] = KeyPath;
    *&v165[16] = v68;
    v165[24] = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D18, &qword_2759CFE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D20, &qword_2759CFE68);
  sub_2759A5498();
  sub_2759A5550();
  sub_2759B95E8();
  v163 = v167;
  v164 = v168;
  *v165 = v169[0];
  *&v165[9] = *(v169 + 9);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D38, &qword_2759CFE70);
  v71 = sub_2759A55CC();
  v72 = v137;
  *&v139 = v70;
  *&v138 = v71;
  sub_2759B9B48();
  sub_27586BF04(&v167, &qword_280A12D38, &qword_2759CFE70);
  v73 = swift_getKeyPath();
  v74 = v135;
  v149 = *(v65 + 32);
  (v149)(v135, v72, v158);
  v75 = v74 + *(v155 + 36);
  *v75 = v73;
  *(v75 + 8) = 2;
  *(v75 + 16) = 0;
  v76 = swift_getKeyPath();
  v77 = v136;
  sub_27589F26C(v74, v136, &qword_280A12CF0, &qword_2759CFE38);
  v78 = v77 + *(v153 + 36);
  *v78 = v76;
  *(v78 + 8) = 0;
  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v79 = qword_280A239B8;
  v80 = v140;
  sub_27589F26C(v77, v140, &qword_280A12CF8, &qword_2759CFE40);
  *(v80 + *(v154 + 36)) = v79;
  v81 = v141;
  v82 = (v141 + *(v157 + 36));
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D48, &qword_2759CFED8);
  v83 = *(v137 + 7);
  v84 = sub_2759B9968();
  v85 = *(v84 - 8);
  v135 = *(v85 + 56);
  v136 = v84;
  v133[1] = v85 + 56;
  v135(v82 + v83, 1, 1);
  *v82 = swift_getKeyPath();
  sub_27589F26C(v80, v81, &qword_280A12D00, &qword_2759CFE48);
  v86 = sub_2759A5658();

  v140 = v86;
  sub_2759B9B38();
  sub_27586BF04(v81, &qword_280A12D08, &qword_2759CFE50);
  sub_2759B9478();
  sub_2759B9468();
  v163 = v170;
  sub_2759B9D68();
  v87 = v159;
  sub_27587E9C4();

  sub_2759B9458();

  sub_2759B9468();
  sub_2759B94A8();
  v88 = sub_2759B9998();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = &selRef_setNetworkError;
  v96 = [v46 currentDevice];
  v97 = [v96 userInterfaceIdiom];

  if (v97 == 1 || (v98 = [v46 currentDevice], v99 = objc_msgSend(v98, sel_userInterfaceIdiom), v98, v99 == 6))
  {
    sub_2759B9838();
    v100 = sub_2759B9988();
    v102 = v101;
    *&v142 = v94;
    v104 = v103;
    v134 = v46;
    v106 = v105;

    *&v159 = v100;
    *(&v159 + 1) = v102;
    *&v160 = v104 & 1;
    *(&v160 + 1) = v106;
    LOBYTE(v161[0]) = 0;
    sub_27589F3E4(v100, v102, v104 & 1);

    sub_27589F3E4(v100, v102, v104 & 1);

    sub_2759B95E8();
    sub_27589F328(v88, v90, v92 & 1);

    sub_27589F328(v100, v102, v104 & 1);

    v107 = v100;
    v95 = &selRef_setNetworkError;
    sub_27589F328(v107, v102, v104 & 1);
    v46 = v134;
  }

  else
  {
    *&v159 = v88;
    *(&v159 + 1) = v90;
    *&v160 = v92 & 1;
    *(&v160 + 1) = v94;
    LOBYTE(v161[0]) = 1;
    sub_2759B95E8();
  }

  v141 = v163;
  v142 = v164;
  v108 = v165[0];
  v109 = [v46 v95[419]];
  v110 = [v109 userInterfaceIdiom];

  if (v110 == 1 || (v111 = [v46 v95[419]], v112 = objc_msgSend(v111, sel_userInterfaceIdiom), v111, v112 == 6))
  {
    v166 = v108;
    v162 = 1;
    v159 = v141;
    v160 = v142;
    LOBYTE(v161[0]) = v108;
    BYTE8(v161[1]) = 1;
  }

  else
  {
    v113 = sub_2759B9868();
    v114 = swift_getKeyPath();
    v166 = v108;
    v162 = 0;
    v159 = v141;
    v160 = v142;
    LOBYTE(v161[0]) = v108;
    *(&v161[0] + 1) = v114;
    *&v161[1] = v113;
    BYTE8(v161[1]) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D18, &qword_2759CFE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D20, &qword_2759CFE68);
  sub_2759A5498();
  sub_2759A5550();
  sub_2759B95E8();
  v159 = v163;
  v160 = v164;
  v161[0] = *v165;
  *(v161 + 9) = *&v165[9];
  v115 = v147;
  sub_2759B9B48();
  sub_27586BF04(&v163, &qword_280A12D38, &qword_2759CFE70);
  v116 = swift_getKeyPath();
  v117 = v143;
  (v149)(v143, v115, v158);
  v118 = v117 + *(v155 + 36);
  *v118 = v116;
  *(v118 + 8) = 2;
  *(v118 + 16) = 0;
  v119 = swift_getKeyPath();
  v120 = v146;
  sub_27589F26C(v117, v146, &qword_280A12CF0, &qword_2759CFE38);
  v121 = v120 + *(v153 + 36);
  *v121 = v119;
  *(v121 + 8) = 0;
  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v122 = qword_280A239C0;
  v123 = v145;
  sub_27589F26C(v120, v145, &qword_280A12CF8, &qword_2759CFE40);
  *(v123 + *(v154 + 36)) = v122;
  v124 = v144;
  v125 = &v144[*(v157 + 36)];
  (v135)(v125 + *(v137 + 7), 1, 1, v136);
  *v125 = swift_getKeyPath();
  sub_27589F26C(v123, v124, &qword_280A12D00, &qword_2759CFE48);

  v126 = v148;
  sub_2759B9B38();
  sub_27586BF04(v124, &qword_280A12D08, &qword_2759CFE50);
  v127 = v156;
  v128 = v150;
  sub_27586FBC8(v156, v150, &qword_280A12D10, &qword_2759CFE58);
  v129 = v151;
  sub_27586FBC8(v126, v151, &qword_280A12D10, &qword_2759CFE58);
  v130 = v152;
  sub_27586FBC8(v128, v152, &qword_280A12D10, &qword_2759CFE58);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D78, &qword_2759CFF10);
  sub_27586FBC8(v129, v130 + *(v131 + 48), &qword_280A12D10, &qword_2759CFE58);
  sub_27586BF04(v126, &qword_280A12D10, &qword_2759CFE58);
  sub_27586BF04(v127, &qword_280A12D10, &qword_2759CFE58);
  sub_27586BF04(v129, &qword_280A12D10, &qword_2759CFE58);
  return sub_27586BF04(v128, &qword_280A12D10, &qword_2759CFE58);
}

uint64_t sub_2759A23A4@<X0>(double a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v84 = a1;
  v2 = sub_2759B9CC8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA0, &qword_2759CFDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v67 - v9;
  sub_2759A4E5C();
  sub_2759B9C98();
  v11 = *MEMORY[0x277CE1020];
  v12 = sub_2759B9CF8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_2759B9CD8();

  sub_27586BF04(v10, &qword_280A12CA0, &qword_2759CFDD0);
  v14 = v3[13];
  v69 = *MEMORY[0x277CE0FE0];
  v70 = v3 + 13;
  v68 = v14;
  v14(v6);
  v15 = sub_2759B9D28();

  v16 = v3[1];
  v71 = *&v6;
  v73 = v3 + 1;
  v74 = v2;
  v67 = v16;
  v16(v6, v2);
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 1 || (v20 = [v17 currentDevice], v21 = objc_msgSend(v20, sel_userInterfaceIdiom), v20, v21 == 6))
  {
    sub_2759BA028();
    sub_2759B8F18();
    LOBYTE(v88) = v192;
    LOBYTE(v107) = v194;
    LOBYTE(v102[0]) = 0;
    *&v121 = v15;
    *(&v121 + 1) = v191;
    LOBYTE(v122) = v192;
    *(&v122 + 1) = v193;
    LOBYTE(v123[0]) = v194;
    *(v123 + 8) = v195;
    BYTE8(v123[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
  }

  else
  {
    LOBYTE(v107) = 1;
    *&v88 = v15;
    BYTE8(v91) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
    v202 = v121;
    v203 = v122;
    v204[0] = v123[0];
    *(v204 + 9) = *(v123 + 9);
  }

  v22 = [v17 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = v84;
  if (v23 == 1 || (v25 = [v17 currentDevice], v26 = objc_msgSend(v25, sel_userInterfaceIdiom), v25, v26 == 6))
  {
    v121 = v202;
    v122 = v203;
    v123[0] = v204[0];
    *(v123 + 9) = *(v204 + 9);
    LOBYTE(v88) = 1;
    LOBYTE(v127) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    sub_2759B95E8();
  }

  else
  {
    sub_2759BA028();
    sub_2759B8F18();
    *(v123 + 9) = *(v204 + 9);
    v123[0] = v204[0];
    v121 = v202;
    v122 = v203;
    v111 = v124;
    v112 = v125;
    v113 = v126;
    v107 = v202;
    v108 = v203;
    v109 = v204[0];
    v110 = v123[1];
    v92 = v124;
    v93 = v125;
    v94 = v126;
    v88 = v202;
    v89 = v203;
    v90 = v204[0];
    v91 = v123[1];
    sub_27586FBC8(&v202, v102, &qword_280A12CC0, &qword_2759CFDE8);
    sub_27586FBC8(&v107, v102, &qword_280A12CB8, &qword_2759CFDE0);
    sub_27586BF04(&v88, &qword_280A12CB8, &qword_2759CFDE0);
    v124 = v111;
    v125 = v112;
    v126 = v113;
    v121 = v107;
    v122 = v108;
    v123[1] = v110;
    v123[0] = v109;
    LOBYTE(v167) = 0;
    LOBYTE(v127) = 0;
    sub_27586FBC8(&v107, v102, &qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    sub_2759B95E8();
    sub_27586BF04(&v202, &qword_280A12CC0, &qword_2759CFDE8);
    v24 = v84;
    sub_27586BF04(&v107, &qword_280A12CB8, &qword_2759CFDE0);
  }

  v171 = v187;
  v172 = v188;
  v173 = v189;
  v174 = v190;
  v167 = v183;
  v168 = v184;
  v169 = v185;
  v170 = v186;
  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v27 = qword_280A239B8;
  KeyPath = swift_getKeyPath();
  v82 = v27;
  v179 = v171;
  v180 = v172;
  v181 = v173;
  LOBYTE(v182) = v174;
  v175 = v167;
  v176 = v168;
  v177 = v169;
  v178 = v170;

  v80 = sub_2759B9C68();
  v201 = *(*&v24 + 16);
  v121 = *(*&v24 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
  sub_2759B9D68();
  if (v88 != 1 || (v121 = *(*&v24 + 32), sub_2759B9D68(), v28 = 1.0, (v88 & 1) == 0))
  {
    v28 = 0.0;
  }

  v79 = v28;
  v121 = *(*&v24 + 16);
  sub_2759B9D68();
  if (v88 != 1 || (v121 = *(*&v24 + 32), sub_2759B9D68(), v29 = 1.0, (v88 & 1) == 0))
  {
    v29 = 0.0;
  }

  sub_2759BA118();
  v77 = v31;
  v78 = v30;
  v121 = *(*&v24 + 16);
  sub_2759B9D68();
  if (v88 != 1 || (v121 = *(*&v24 + 32), sub_2759B9D68(), v32 = 0, (v88 & 1) == 0))
  {
    v32 = 0xBFEBECDE5DA115A9;
  }

  v86 = v32;
  sub_2759BA118();
  v85 = v33;
  v76 = v34;
  v75 = sub_2759BA058();
  v121 = *(*&v24 + 16);
  sub_2759B9D68();
  if (v88 == 1)
  {
    v121 = *(*&v24 + 32);
    sub_2759B9D68();
    v72 = v88;
  }

  else
  {
    v72 = 0;
  }

  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = [objc_opt_self() bundleForClass_];
  sub_2759B9D38();
  v37 = v71;
  v38 = v74;
  v68(*&v71, v69, v74);
  v39 = sub_2759B9D28();

  v67(*&v37, v38);
  v40 = [v17 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  if (v41 == 1 || (v42 = [v17 currentDevice], v43 = objc_msgSend(v42, sel_userInterfaceIdiom), v42, v43 == 6))
  {
    sub_2759BA028();
    sub_2759B8F18();
    LOBYTE(v88) = v197;
    LOBYTE(v107) = v199;
    LOBYTE(v102[0]) = 0;
    *&v121 = v39;
    *(&v121 + 1) = v196;
    LOBYTE(v122) = v197;
    *(&v122 + 1) = v198;
    LOBYTE(v123[0]) = v199;
    *(v123 + 8) = v200;
    BYTE8(v123[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
  }

  else
  {
    LOBYTE(v88) = 1;
    *&v121 = v39;
    BYTE8(v123[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CA8, &qword_2759CFDD8);
    sub_2759A52B0();
    sub_2759B95E8();
  }

  v44 = [v17 currentDevice];
  v45 = [v44 userInterfaceIdiom];

  if (v45 == 1 || (v46 = [v17 currentDevice], v47 = objc_msgSend(v46, sel_userInterfaceIdiom), v46, v47 == 6))
  {
    v121 = v164;
    v122 = v165;
    v123[0] = v166[0];
    *(v123 + 9) = *(v166 + 9);
    LOBYTE(v88) = 1;
    LOBYTE(v127) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    sub_2759B95E8();
  }

  else
  {
    sub_2759BA028();
    sub_2759B8F18();
    *(v123 + 9) = *(v166 + 9);
    v123[0] = v166[0];
    v121 = v164;
    v122 = v165;
    v111 = v124;
    v112 = v125;
    v113 = v126;
    v107 = v164;
    v108 = v165;
    v109 = v166[0];
    v110 = v123[1];
    v92 = v124;
    v93 = v125;
    v94 = v126;
    v88 = v164;
    v89 = v165;
    v90 = v166[0];
    v91 = v123[1];
    sub_27586FBC8(&v164, v102, &qword_280A12CC0, &qword_2759CFDE8);
    sub_27586FBC8(&v107, v102, &qword_280A12CB8, &qword_2759CFDE0);
    sub_27586BF04(&v88, &qword_280A12CB8, &qword_2759CFDE0);
    v124 = v111;
    v125 = v112;
    v126 = v113;
    v121 = v107;
    v122 = v108;
    v123[1] = v110;
    v123[0] = v109;
    LOBYTE(v148) = 0;
    LOBYTE(v127) = 0;
    sub_27586FBC8(&v107, v102, &qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CB8, &qword_2759CFDE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A5334();
    sub_2759A53C0();
    v24 = v84;
    sub_2759B95E8();
    sub_27586BF04(&v164, &qword_280A12CC0, &qword_2759CFDE8);
    sub_27586BF04(&v107, &qword_280A12CB8, &qword_2759CFDE0);
  }

  v152 = v160;
  v153 = v161;
  v154 = v162;
  v155 = v163;
  v148 = v156;
  v149 = v157;
  v150 = v158;
  v151 = v159;
  v121 = v201;
  sub_2759B9D68();
  v48 = 0.0;
  v49 = 0.0;
  if (v88 == 1)
  {
    v121 = *(*&v24 + 32);
    sub_2759B9D68();
    v49 = v88;
  }

  v84 = v49;
  v121 = v201;
  sub_2759B9D68();
  if (v88 == 1)
  {
    v121 = *(*&v24 + 32);
    sub_2759B9D68();
    v48 = v88;
  }

  sub_2759BA118();
  v73 = v51;
  v74 = v50;
  v144 = v152;
  v145 = v153;
  v146 = v154;
  LOBYTE(v147) = v155;
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v143 = v151;
  v52 = sub_2759BA058();
  v121 = v201;
  sub_2759B9D68();
  if (v88 == 1)
  {
    v121 = *(*&v24 + 32);
    sub_2759B9D68();
    v53 = v88;
  }

  else
  {
    v53 = 0;
  }

  v92 = v179;
  v93 = v180;
  v94 = v181;
  v88 = v175;
  v89 = v176;
  v90 = v177;
  v91 = v178;
  *&v95 = v182;
  v55 = KeyPath;
  v54 = v82;
  *(&v95 + 1) = KeyPath;
  *&v96 = v82;
  v56 = v80;
  *(&v96 + 1) = v80;
  v57 = v79;
  *&v97 = v79;
  *(&v97 + 1) = v29;
  v71 = v29;
  v59 = v77;
  v58 = v78;
  *&v98 = v78;
  *(&v98 + 1) = v77;
  *&v99 = v86;
  *(&v99 + 1) = v85;
  v60 = v76;
  *&v100 = v76;
  v61 = v75;
  *(&v100 + 1) = v75;
  v62 = v72;
  v101 = v72;
  LOBYTE(v87[13]) = v72;
  v87[2] = v177;
  v87[3] = v178;
  v87[4] = v179;
  v87[5] = v180;
  v87[0] = v175;
  v87[1] = v176;
  v87[10] = v98;
  v87[11] = v99;
  v87[12] = v100;
  v87[8] = v96;
  v87[9] = v97;
  v87[6] = v181;
  v87[7] = v95;
  *&v103 = v147;
  v102[4] = v144;
  v102[5] = v145;
  v102[6] = v146;
  v102[0] = v140;
  v102[1] = v141;
  v102[2] = v142;
  v102[3] = v143;
  v63 = v84;
  *(&v103 + 1) = v84;
  *&v104 = v48;
  v65 = v73;
  v64 = v74;
  *(&v104 + 1) = v74;
  *&v105 = v73;
  *(&v105 + 1) = v52;
  v106 = v53;
  *(&v87[21] + 8) = v104;
  *(&v87[22] + 8) = v105;
  *(&v87[19] + 8) = v146;
  *(&v87[20] + 8) = v103;
  *(&v87[17] + 8) = v144;
  *(&v87[18] + 8) = v145;
  *(&v87[16] + 8) = v143;
  BYTE8(v87[23]) = v53;
  *(&v87[15] + 8) = v142;
  *(&v87[14] + 8) = v141;
  *(&v87[13] + 8) = v140;
  memcpy(v83, v87, 0x179uLL);
  v111 = v144;
  v112 = v145;
  v113 = v146;
  v114 = v147;
  v107 = v140;
  v108 = v141;
  v109 = v142;
  v110 = v143;
  v115 = v63;
  v116 = v48;
  v117 = v64;
  v118 = v65;
  v119 = v52;
  v120 = v53;
  sub_27586FBC8(&v88, &v121, &qword_280A12CD8, &qword_2759CFE20);
  sub_27586FBC8(v102, &v121, &qword_280A12CE0, &qword_2759CFE28);
  sub_27586BF04(&v107, &qword_280A12CE0, &qword_2759CFE28);
  v124 = v179;
  v125 = v180;
  v126 = v181;
  v121 = v175;
  v122 = v176;
  v123[0] = v177;
  v123[1] = v178;
  v127 = v182;
  v128 = v55;
  v129 = v54;
  v130 = v56;
  v131 = v57;
  v132 = v71;
  v133 = v58;
  v134 = v59;
  v135 = v86;
  v136 = v85;
  v137 = v60;
  v138 = v61;
  v139 = v62;
  return sub_27586BF04(&v121, &qword_280A12CD8, &qword_2759CFE20);
}

void sub_2759A355C(void *a1, CGPDFPage *a2, CGFloat a3, CGFloat a4)
{
  c = [a1 CGContext];
  CGContextTranslateCTM(c, 0.0, a3);
  CGContextScaleCTM(c, a4, -a4);
  CGContextDrawPDFPage(c, a2);
}

uint64_t sub_2759A35E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_27599B088(a1);
}

unint64_t sub_2759A3654()
{
  result = qword_280A12A10;
  if (!qword_280A12A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12A18, &qword_2759CFAE8);
    sub_2759A4504(&qword_280A12A20, &qword_280A12A28, &qword_2759CFAF0, sub_2759A370C);
    sub_2759A370C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A10);
  }

  return result;
}

unint64_t sub_2759A370C()
{
  result = qword_280A12A30;
  if (!qword_280A12A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12A38, &qword_2759CFAF8);
    sub_2759A4504(&qword_280A12A40, &qword_280A12A48, &qword_2759CFB00, sub_2759A37C4);
    sub_2759A37C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A30);
  }

  return result;
}

unint64_t sub_2759A37C4()
{
  result = qword_280A12A50;
  if (!qword_280A12A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12A58, &qword_2759CFB08);
    sub_27589B02C(&qword_280A12A60, &qword_280A12A68, &qword_2759CFB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A50);
  }

  return result;
}

unint64_t sub_2759A387C()
{
  result = qword_280A12A78;
  if (!qword_280A12A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129B0, &qword_2759CFA70);
    sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
    sub_27589B02C(&qword_280A12A70, &qword_280A129F0, &qword_2759CFAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A78);
  }

  return result;
}

uint64_t sub_2759A396C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_27585F7A0;

  return sub_27599D040(v0 + 16);
}

unint64_t sub_2759A3A00()
{
  result = qword_280A12A88;
  if (!qword_280A12A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129B8, &qword_2759CFA78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129B0, &qword_2759CFA70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10858, &qword_2759C7690);
    sub_2759A387C();
    sub_2758FB220();
    swift_getOpaqueTypeConformance2();
    sub_2759A4AEC(&qword_280A0FCF0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A88);
  }

  return result;
}

unint64_t sub_2759A3B2C()
{
  result = qword_280A12A90;
  if (!qword_280A12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A90);
  }

  return result;
}

uint64_t sub_2759A3B84()
{
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
  return sub_2759B9D78();
}

unint64_t sub_2759A3BDC()
{
  result = qword_280A12A98;
  if (!qword_280A12A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A129E0, &qword_2759CFAA0);
    sub_2759A4504(&qword_280A129F8, &qword_280A129D8, &qword_2759CFA98, sub_2759A3624);
    sub_2759A3B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12A98);
  }

  return result;
}

uint64_t sub_2759A3CA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_27585A7E4;

  return sub_27599C808(v0 + 16);
}

uint64_t sub_2759A3D74(uint64_t a1)
{
  v2 = sub_2759B8DA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B91B8();
}

uint64_t sub_2759A3E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2759BA998();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2759A3F3C, 0, 0);
}

uint64_t sub_2759A3F3C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2759BA9A8();
  v7 = sub_2759A4AEC(&qword_280A12BF8, MEMORY[0x277D85928]);
  sub_2759BAB48();
  sub_2759A4AEC(&qword_280A12C00, MEMORY[0x277D858F8]);
  sub_2759BA9B8();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2759A40CC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2759A40CC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (!v0)
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2759A4288, 0, 0);
}

uint64_t sub_2759A4288()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2759A42F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B9368();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2759A4360@<X0>(uint64_t a1@<X8>)
{
  result = sub_2759B9388();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2759A4394(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2759B9398();
}

uint64_t sub_2759A43C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B92A8();
  *a1 = result;
  return result;
}

uint64_t sub_2759A4418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12D80, &qword_2759CFF18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27586FBC8(a1, &v6 - v4, &qword_280A12D80, &qword_2759CFF18);
  return sub_2759B9358();
}

uint64_t sub_2759A4504(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2759A4588()
{
  result = qword_280A12B40;
  if (!qword_280A12B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B48, &qword_2759CFBF8);
    sub_27589B02C(&qword_280A11108, &qword_280A11110, &qword_2759CA068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B40);
  }

  return result;
}

unint64_t sub_2759A4640()
{
  result = qword_280A12B58;
  if (!qword_280A12B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B10, &qword_2759CFBA8);
    sub_2759A46FC();
    sub_2759A4AEC(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B58);
  }

  return result;
}

unint64_t sub_2759A46FC()
{
  result = qword_280A12B60;
  if (!qword_280A12B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B08, &qword_2759CFBA0);
    sub_2759A47B4();
    sub_27589B02C(&qword_280A0FF30, &qword_280A0FF38, &qword_2759C5B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B60);
  }

  return result;
}

unint64_t sub_2759A47B4()
{
  result = qword_280A12B68;
  if (!qword_280A12B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B00, &qword_2759CFB98);
    sub_27589B02C(&qword_280A12B70, &qword_280A12AF8, &qword_2759CFB90);
    sub_2759A4AEC(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B68);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2759A48F4()
{
  result = qword_280A12B90;
  if (!qword_280A12B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12B88, &qword_2759CFC10);
    sub_27589B02C(&qword_280A11538, &qword_280A11540, &qword_2759CB6B0);
    sub_27589B02C(&qword_280A12B98, &qword_280A12BA0, &qword_2759CFC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12B90);
  }

  return result;
}

uint64_t sub_2759A49D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleStorageMeter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A4A3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_27599CD48(a1, v4, v5, v1 + 32);
}

uint64_t sub_2759A4AEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2759A4B8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_27599D580(a1, v4, v5, v1 + 32);
}

unint64_t sub_2759A4C3C()
{
  result = qword_280A12C60;
  if (!qword_280A12C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12C58, &qword_2759CFDA8);
    sub_2759A4CF4();
    sub_27589B02C(&qword_280A12C88, &qword_280A12C90, &qword_2759CFDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12C60);
  }

  return result;
}

unint64_t sub_2759A4CF4()
{
  result = qword_280A12C68;
  if (!qword_280A12C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12C70, &qword_2759CFDB0);
    sub_27589B02C(&qword_280A12C78, &qword_280A12C80, &qword_2759CFDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12C68);
  }

  return result;
}

uint64_t sub_2759A4DAC@<X0>(uint64_t a1@<X8>)
{
  sub_2759B9D58();
  sub_2759B9D58();
  type metadata accessor for iCloudHomeViewModel();
  result = sub_2759B9D58();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

id sub_2759A4E5C()
{
  v0 = sub_2759B8508();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_2759BA258();
  v8 = sub_2759BA258();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_2759B84C8();

    v10 = sub_2759B84B8();
    v11 = CGPDFDocumentCreateWithURL(v10);

    if (v11)
    {
      v12 = CGPDFDocumentGetPage(v11, 1uLL);
      if (v12)
      {
        v28 = v0;
        v13 = v12;
        BoxRect = CGPDFPageGetBoxRect(v12, kCGPDFMediaBox);
        if (72.0 / BoxRect.size.height >= 72.0 / BoxRect.size.width)
        {
          v14 = 72.0 / BoxRect.size.width;
        }

        else
        {
          v14 = 72.0 / BoxRect.size.height;
        }

        v15 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
        v16 = swift_allocObject();
        *(v16 + 16) = 0x4052000000000000;
        *(v16 + 24) = v14;
        *(v16 + 32) = v13;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_2759A544C;
        *(v17 + 24) = v16;
        aBlock[4] = sub_2759A5458;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_27599B03C;
        aBlock[3] = &block_descriptor_18;
        v18 = _Block_copy(aBlock);
        v19 = v13;

        v20 = [v15 imageWithActions_];

        _Block_release(v18);
        (*(v1 + 8))(v4, v28);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v20;
        }

        __break(1u);
        return result;
      }

      (*(v1 + 8))(v4, v0);
    }

    else
    {
      (*(v1 + 8))(v4, v0);
    }
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v23 = sub_2759B89A8();
  __swift_project_value_buffer(v23, qword_2815ADE70);
  v24 = sub_2759B8988();
  v25 = sub_2759BA668();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_275819000, v24, v25, "Unable to load subscriber badge asset", v26, 2u);
    MEMORY[0x277C85860](v26, -1, -1);
  }

  return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
}

unint64_t sub_2759A52B0()
{
  result = qword_280A12CB0;
  if (!qword_280A12CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CA8, &qword_2759CFDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12CB0);
  }

  return result;
}

unint64_t sub_2759A5334()
{
  result = qword_280A12CC8;
  if (!qword_280A12CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CB8, &qword_2759CFDE0);
    sub_2759A53C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12CC8);
  }

  return result;
}

unint64_t sub_2759A53C0()
{
  result = qword_280A12CD0;
  if (!qword_280A12CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CC0, &qword_2759CFDE8);
    sub_2759A52B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12CD0);
  }

  return result;
}

uint64_t sub_2759A5458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2759A5498()
{
  result = qword_280A12D28;
  if (!qword_280A12D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D18, &qword_2759CFE60);
    sub_2759A5550();
    sub_27589B02C(&qword_280A0F1E0, &qword_280A0F1E8, &unk_2759C3620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D28);
  }

  return result;
}

unint64_t sub_2759A5550()
{
  result = qword_280A12D30;
  if (!qword_280A12D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D20, &qword_2759CFE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D30);
  }

  return result;
}

unint64_t sub_2759A55CC()
{
  result = qword_280A12D40;
  if (!qword_280A12D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D38, &qword_2759CFE70);
    sub_2759A5498();
    sub_2759A5550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D40);
  }

  return result;
}

unint64_t sub_2759A5658()
{
  result = qword_280A12D50;
  if (!qword_280A12D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D08, &qword_2759CFE50);
    sub_2759A5710();
    sub_27589B02C(&qword_280A12D70, &qword_280A12D48, &qword_2759CFED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D50);
  }

  return result;
}

unint64_t sub_2759A5710()
{
  result = qword_280A12D58;
  if (!qword_280A12D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D00, &qword_2759CFE48);
    sub_2759A57C8();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D58);
  }

  return result;
}

unint64_t sub_2759A57C8()
{
  result = qword_280A12D60;
  if (!qword_280A12D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CF8, &qword_2759CFE40);
    sub_2759A5880();
    sub_27589B02C(&qword_280A122E0, &qword_280A122E8, &qword_2759CE6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D60);
  }

  return result;
}

unint64_t sub_2759A5880()
{
  result = qword_280A12D68;
  if (!qword_280A12D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12CF0, &qword_2759CFE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D38, &qword_2759CFE70);
    sub_2759A55CC();
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A12190, &qword_280A12198, &qword_2759CE5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D68);
  }

  return result;
}

unint64_t sub_2759A5974()
{
  result = qword_280A12D88;
  if (!qword_280A12D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12D90, &unk_2759CFF20);
    sub_27589B02C(&qword_280A12A80, &qword_280A129C8, &qword_2759CFA88);
    sub_2759A3A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D88);
  }

  return result;
}

id sub_2759A5A74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v5 = iCloudHomeViewModel.complianceSectionTitle.getter();
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = v8;
  a3[1] = v9;
  a3[2] = sub_2759A5C5C;
  a3[3] = v10;

  return a1;
}

void sub_2759A5B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  iCloudHomeViewModel.handleComplianceLinkAction()();
}

uint64_t sub_2759A5BA0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2759A5C08();
  return sub_2759B9F38();
}

unint64_t sub_2759A5C08()
{
  result = qword_280A12D98;
  if (!qword_280A12D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12D98);
  }

  return result;
}

void sub_2759A5C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2759A5B4C();
}

unint64_t sub_2759A5C64()
{
  result = qword_280A12DA0;
  if (!qword_280A12DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12DA8, qword_2759CFFE0);
    sub_2759A5C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12DA0);
  }

  return result;
}

id DeviceEnrollmentSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceEnrollmentSettings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceEnrollmentSettings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentSettings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2759A5DF0()
{
  v0 = sub_2759B89D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2759B89C8();
  v5 = sub_2759B89B8();
  (*(v1 + 8))(v4, v0);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_275819000, v7, v8, "showDeviceEnrollmentDataclass: %{BOOL}d", v9, 8u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  return v5 & 1;
}

uint64_t type metadata accessor for DrilldownThermometerView()
{
  result = qword_280A12DB0;
  if (!qword_280A12DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759A61C4()
{
  sub_27595B234();
  if (v0 <= 0x3F)
  {
    sub_27585AF74();
    if (v1 <= 0x3F)
    {
      sub_2759A6300(319, &qword_280A10B38, &unk_280A11C70, qword_2759C1240, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2759B8C48();
        if (v3 <= 0x3F)
        {
          sub_2759A6300(319, &qword_280A0FC60, &qword_280A0FC68, &qword_2759C7830, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2759A6300(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void *sub_2759A6364()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(v0 + 40);

    sub_2759BA658();
    v9 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

void sub_2759A64B4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  if (*(v1 + 24))
  {
    v8 = type metadata accessor for DrilldownThermometerView();
    v9 = v8[8];

    v10 = sub_2759B8C38();
    v37 = v11;
    v38 = v10;

    v12 = v8[9];

    v13 = sub_2759B8C38();
    v35 = v14;
    v36 = v13;

    v15 = v8[10];

    v16 = sub_2759B8C38();
    v18 = v17;

    sub_27595C8BC(v2 + v8[11], v7);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_27595C92C(v7);
      v21 = 3;
    }

    else
    {

      sub_2759B8AA8();

      (*(v20 + 8))(v7, v19);
      if (v40)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }
    }

    v22 = sub_2759A6364();
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
    sub_2759B9D58();
    v23 = v40;
    v24 = type metadata accessor for ManageStorageThermometerView(0);
    v25 = v24[9];
    *(a1 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
    swift_storeEnumTagMultiPayload();
    *(a1 + v24[10]) = 0x3FEBBE76C8B43958;
    v26 = (a1 + v24[11]);
    *v26 = 0x303838373837;
    v26[1] = 0xE600000000000000;
    *(a1 + v24[12]) = 0x3FD47AE147AE147BLL;
    v39 = v22;
    v27 = v22;
    sub_2759B9D58();

    *a1 = v40;
    LOBYTE(v39) = v21;
    sub_2759B9D58();

    v28 = *(&v40 + 1);
    *(a1 + 16) = v40;
    *(a1 + 24) = v28;
    *(a1 + 32) = v16;
    v30 = v37;
    v29 = v38;
    *(a1 + 40) = v18;
    *(a1 + 48) = v29;
    v31 = v35;
    v32 = v36;
    *(a1 + 56) = v30;
    *(a1 + 64) = v32;
    *(a1 + 72) = v31;
  }

  else
  {
    v33 = *(v1 + 32);
    sub_2759B8C08();
    sub_2759A79B0(&qword_280A0E6E0, MEMORY[0x277D23330]);
    sub_2759B9158();
    __break(1u);
  }
}

uint64_t sub_2759A68E4()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759A69CC()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_2759A6AA0()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759A6B84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2759A7B00();
  *a2 = result;
  return result;
}

void sub_2759A6BB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000074;
  v6 = 0x7865546567617375;
  v7 = 0xE800000000000000;
  v8 = 0x6449656C646E7562;
  if (v2 != 3)
  {
    v8 = 0x616D696E41657375;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6554726564616568;
    v3 = 0xEA00000000007478;
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

uint64_t sub_2759A6C58()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7865546567617375;
  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x616D696E41657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6554726564616568;
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

uint64_t sub_2759A6CF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759A7B00();
  *a1 = result;
  return result;
}

uint64_t sub_2759A6D20(uint64_t a1)
{
  v2 = sub_2759A788C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2759A6D5C(uint64_t a1)
{
  v2 = sub_2759A788C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2759A6D98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v44 - v5;
  v57 = sub_2759B8C48();
  v54 = *(v57 - 8);
  v6 = *(v54 + 64);
  v7 = MEMORY[0x28223BE20](v57);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v53 = &v44 - v11;
  v12 = sub_2759B85A8();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v55 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12DE0, &qword_2759D01C8);
  v56 = *(v58 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v17 = &v44 - v16;
  v18 = type metadata accessor for DrilldownThermometerView();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v21 + 2) = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_2759A79B0(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v22 = sub_2759B9168();
  *(v21 + 3) = v22;
  *(v21 + 4) = v23;
  KeyPath = swift_getKeyPath();
  *(v21 + 5) = KeyPath;
  v21[48] = 0;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759A788C();
  v26 = v59;
  sub_2759BAC18();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v27 = v55;
    v46 = KeyPath;
    v59 = v22;
    v28 = v57;
    v64 = 0;
    v29 = sub_2759BAA58();
    v32 = v30;
    v45 = v17;
    if (!v30)
    {
      sub_2759B8598();
      v44 = sub_2759B8588();
      v34 = v33;
      (*(v50 + 8))(v27, v51);
      v32 = v34;
      v29 = v44;
    }

    v35 = v28;
    *v21 = v29;
    *(v21 + 1) = v32;
    v51 = v32;
    v63 = 1;
    sub_2759A79B0(&qword_280A0E8C0, MEMORY[0x277D23340]);
    v36 = v53;
    v37 = v35;
    v38 = v45;
    sub_2759BAA78();
    v55 = a1;
    v50 = v18;
    v39 = *(v54 + 32);
    v39(&v21[*(v18 + 32)], v36, v37);
    v62 = 2;
    v40 = v52;
    v53 = 0;
    sub_2759BAA78();
    v39(&v21[*(v50 + 36)], v40, v37);
    v61 = 3;
    v41 = v49;
    sub_2759BAA78();
    v42 = v56;
    v39(&v21[*(v50 + 40)], v41, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
    v60 = 4;
    sub_2758EA064();
    v43 = v48;
    sub_2759BAA68();
    (*(v42 + 8))(v38, v58);
    sub_27595C9E8(v43, &v21[*(v50 + 44)]);
    sub_2759A78E0(v21, v47);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_2759A7944(v21);
  }
}

uint64_t sub_2759A750C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759A79B0(&qword_280A11068, type metadata accessor for DrilldownThermometerView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2759A7590(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759A79B0(&qword_280A12DC0, type metadata accessor for DrilldownThermometerView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2759A760C(uint64_t a1)
{
  v2 = sub_2759A79B0(&qword_280A12DC0, type metadata accessor for DrilldownThermometerView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2759A7688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759A79B0(&qword_280A12DD8, type metadata accessor for DrilldownThermometerView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2759A7744()
{
  sub_2759A79B0(&qword_280A11068, type metadata accessor for DrilldownThermometerView);
  sub_2759A79B0(&qword_280A12DC0, type metadata accessor for DrilldownThermometerView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2759A788C()
{
  result = qword_280A12DE8;
  if (!qword_280A12DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12DE8);
  }

  return result;
}

uint64_t sub_2759A78E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrilldownThermometerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A7944(uint64_t a1)
{
  v2 = type metadata accessor for DrilldownThermometerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2759A79B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2759A79FC()
{
  result = qword_280A12DF8;
  if (!qword_280A12DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12DF8);
  }

  return result;
}

unint64_t sub_2759A7A54()
{
  result = qword_280A12E00;
  if (!qword_280A12E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E00);
  }

  return result;
}

unint64_t sub_2759A7AAC()
{
  result = qword_280A12E08;
  if (!qword_280A12E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E08);
  }

  return result;
}

uint64_t sub_2759A7B00()
{
  v0 = sub_2759BAA48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for ObserveNotificationModifier()
{
  result = qword_280A12E10;
  if (!qword_280A12E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759A7BC0()
{
  sub_2758C6FC8();
  if (v0 <= 0x3F)
  {
    sub_2759B8C48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2759A7C44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x736E6F69746361;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x80000002759DD230;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x736E6F69746361;
  }

  if (*a2)
  {
    v7 = 0x80000002759DD230;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_2759A7CF0()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759A7D78()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_2759A7DEC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759A7E70@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

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

void sub_2759A7ED0(unint64_t *a1@<X8>)
{
  v2 = 0x80000002759DD230;
  v3 = 0x736E6F69746361;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2759A7F14()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x736E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_2759A7F54@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2759A7FB8(uint64_t a1)
{
  v2 = sub_2759A8E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2759A7FF4(uint64_t a1)
{
  v2 = sub_2759A8E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2759A8030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v54 = sub_2759B8BD8();
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2759B8C48();
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12E30, &unk_2759D03F8);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = type metadata accessor for ObserveNotificationModifier();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759A8E28();
  v18 = v53;
  sub_2759BAC18();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = v8;
  v46 = a1;
  v43 = v13;
  v44 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v55) = 0;
  sub_2758C7304();
  v19 = v51;
  v20 = v12;
  sub_2759BAA78();
  v42 = 0;
  v22 = v57;
  v23 = *(v57 + 16);
  if (v23)
  {
    v41 = v12;
    v56 = MEMORY[0x277D84F90];
    sub_2759509B0(0, v23, 0);
    v24 = v56;
    v25 = v52 + 16;
    v26 = *(v52 + 16);
    v27 = *(v52 + 80);
    v40 = v22;
    v28 = v22 + ((v27 + 32) & ~v27);
    v52 = *(v52 + 72);
    v53 = v26;
    v29 = (v25 - 8);
    v30 = v54;
    do
    {
      v31 = v25;
      v53(v5, v28, v30);
      sub_2759B8BC8();
      v30 = v54;
      (*v29)(v5, v54);
      v56 = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2759509B0((v32 > 1), v33 + 1, 1);
        v30 = v54;
        v24 = v56;
      }

      *(v24 + 16) = v33 + 1;
      sub_275827D1C(&v55, v24 + 40 * v33 + 32);
      v28 += v52;
      --v23;
      v25 = v31;
    }

    while (v23);

    v34 = v46;
    v35 = v49;
    v19 = v51;
    v20 = v41;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    v34 = v46;
    v35 = v49;
  }

  v36 = v44;
  *v44 = v24;
  LOBYTE(v55) = 1;
  sub_2759A8E7C(&qword_280A0E8C0, MEMORY[0x277D23340]);
  v37 = v45;
  v38 = v42;
  sub_2759BAA78();
  v39 = v43;
  (*(v50 + 8))(v20, v19);
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    (*(v47 + 32))(v36 + *(v39 + 20), v37, v35);
    sub_2759A8CB4(v36, v48);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return sub_2759A8EC4(v36);
  }
}

uint64_t sub_2759A8548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v74 = a3;
  v72 = a1;
  v76 = a4;
  v8 = type metadata accessor for ObserveNotificationModifier();
  v9 = v8 - 8;
  v73 = *(v8 - 8);
  v10 = v73[8];
  MEMORY[0x28223BE20](v8);
  v11 = sub_2759BA728();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6 + *(v9 + 28);
  result = sub_2759B8C38();
  if (!v5)
  {
    v19 = v18;
    v69 = a2;
    v70 = 0;
    v64 = result;
    v65 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v15;
    v67 = v12;
    v71 = v11;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v68 = v6;
    v20 = sub_2759B89A8();
    __swift_project_value_buffer(v20, qword_2815ADE70);

    v21 = sub_2759B8988();
    v22 = sub_2759BA668();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v65;
    v25 = v72;
    v26 = v19;
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = v24;
      v29 = v19;
      v30 = swift_slowAlloc();
      v75[0] = v30;
      *v27 = 136315138;
      v31 = v64;
      *(v27 + 4) = sub_2758937B8(v64, v29, v75);
      _os_log_impl(&dword_275819000, v21, v22, "ObserveNotificationModifier: observing notification: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v32 = v30;
      v26 = v29;
      v24 = v28;
      MEMORY[0x277C85860](v32, -1, -1);
      MEMORY[0x277C85860](v27, -1, -1);

      v33 = v66;
      v34 = v73;
    }

    else
    {

      v33 = v66;
      v34 = v73;
      v31 = v64;
    }

    v35 = v25[4];
    v61 = v25[3];
    v62 = v35;
    v36 = v25;
    v37 = v61;
    v66 = __swift_project_boxed_opaque_existential_1(v36, v61);
    v63 = sub_2759A8E7C(&qword_280A12E28, MEMORY[0x277CC9DB0]);
    v75[0] = v71;
    v75[1] = v37;
    v75[2] = v63;
    v75[3] = v35;
    v64 = sub_2759B9118();
    v73 = &v59;
    v72 = *(v64 - 8);
    v38 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v64);
    v60 = &v59 - v39;
    v40 = [objc_opt_self() defaultCenter];
    v41 = v26;
    v42 = sub_2759BA258();
    sub_2759BA738();

    v43 = v68;
    sub_2759A8CB4(v68, v24);
    v44 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v45 = v24;
    v46 = (v10 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    *(v48 + 16) = v31;
    *(v48 + 24) = v41;
    sub_2759A8D18(v45, v48 + v44);
    v49 = v69;
    *(v48 + v46) = v69;
    v50 = v74;
    *(v48 + v47) = v74;

    v51 = v60;
    v52 = v71;
    sub_2759B9BC8();

    (*(v67 + 8))(v33, v52);
    v53 = sub_27595CE18(*v43);
    v54 = v64;
    WitnessTable = swift_getWitnessTable();
    v56 = sub_27592E2A4(v53, v49, v50, v54, WitnessTable);

    result = (*(v72 + 8))(v51, v54);
    v57 = MEMORY[0x277CE11C0];
    v58 = v76;
    v76[3] = MEMORY[0x277CE11C8];
    v58[4] = v57;
    *v58 = v56;
  }

  return result;
}

uint64_t sub_2759A8AA4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_2815ADE70);

  v8 = sub_2759B8988();
  v9 = sub_2759BA668();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2758937B8(a2, a3, &v14);
    _os_log_impl(&dword_275819000, v8, v9, "ObserveNotificationModifier: received notification %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v12 = *a4;

  return sub_2759BA438();
}

uint64_t sub_2759A8CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserveNotificationModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A8D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserveNotificationModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A8D7C(uint64_t a1)
{
  v3 = *(type metadata accessor for ObserveNotificationModifier() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2759A8AA4(a1, v6, v7, (v1 + v4));
}

unint64_t sub_2759A8E28()
{
  result = qword_280A12E38;
  if (!qword_280A12E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E38);
  }

  return result;
}

uint64_t sub_2759A8E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2759A8EC4(uint64_t a1)
{
  v2 = type metadata accessor for ObserveNotificationModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759A8F34()
{
  result = qword_280A12E40;
  if (!qword_280A12E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E40);
  }

  return result;
}

unint64_t sub_2759A8F8C()
{
  result = qword_280A12E48;
  if (!qword_280A12E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E48);
  }

  return result;
}

unint64_t sub_2759A8FE4()
{
  result = qword_280A12E50;
  if (!qword_280A12E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E50);
  }

  return result;
}

uint64_t sub_2759A9050@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v33 = a4;
  v9 = sub_2759BA728();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_27595CE18(v15);

  v17 = sub_27592E2A4(v16, a2, a3, v13, v12);

  if (*(v5 + 24))
  {
    v18 = *(v5 + 24);
  }

  else
  {
    v18 = v14;
  }

  v19 = sub_27595CE18(v18);

  v32 = sub_275964980(v19, a2, a3, v17);

  v20 = [objc_opt_self() defaultCenter];
  if (qword_280A0E3E8 != -1)
  {
    swift_once();
  }

  v21 = v34;
  sub_2759BA738();

  v22 = swift_allocObject();
  *(v22 + 2) = v5;
  *(v22 + 3) = a2;
  *(v22 + 4) = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CC0, &unk_2759D0680);
  v24 = v33;
  v33[3] = v23;
  v24[4] = sub_2759660C8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v27 = v35;
  v26 = v36;
  (*(v35 + 16))(boxed_opaque_existential_1 + *(v23 + 52), v21, v36);
  *boxed_opaque_existential_1 = v32;
  v28 = (boxed_opaque_existential_1 + *(v23 + 56));
  *v28 = sub_2759AA12C;
  v28[1] = v22;
  v29 = *(v27 + 8);

  return v29(v21, v26);
}

uint64_t sub_2759A9320(uint64_t a1, uint64_t a2)
{
  v3 = sub_2759B8278();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  strcpy(&v15, "ResultSuccess");
  HIWORD(v15) = -4864;
  sub_2759BA878();
  if (!*(v4 + 16) || (v5 = sub_2758A24F8(v14), (v6 & 1) == 0))
  {

    sub_275864C40(v14);
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_275864C94(*(v4 + 56) + 32 * v5, &v15);
  sub_275864C40(v14);

  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_27586BF04(&v15, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v7 = LOBYTE(v14[0]);
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v8 = sub_2759B89A8();
  __swift_project_value_buffer(v8, qword_2815ADE70);
  v9 = sub_2759B8988();
  v10 = sub_2759BA668();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_275819000, v9, v10, "MessagesEnableAction completed with success %{BOOL}d", v11, 8u);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  v14[3] = &type metadata for MessagesEnableActionTelemetryEvent;
  v14[4] = &off_288486D90;
  if (v7)
  {
    LOBYTE(v14[0]) = 0;
    if (!*(a2 + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  LOBYTE(v14[0]) = 1;
  if (*(a2 + 24))
  {
LABEL_19:
    sub_2759BA438();
  }

LABEL_20:
  v12 = __swift_project_boxed_opaque_existential_1(v14, &type metadata for MessagesEnableActionTelemetryEvent);
  sub_2758C9088(v12, sub_27594A594, 0, &type metadata for MessagesEnableActionTelemetryEvent, &off_288486D90);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_2759A95A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

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

uint64_t sub_2759A9600@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2759A9664(uint64_t a1)
{
  v2 = sub_2759AA138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2759A96A0(uint64_t a1)
{
  v2 = sub_2759AA138();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2759A96DC(uint64_t *a1)
{
  v3 = v1;
  v58 = *v1;
  v59 = v2;
  v5 = sub_2759B8BD8();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12E68, &unk_2759D0690);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759AA138();
  v14 = v59;
  sub_2759BAC18();
  v15 = v14;
  if (v14)
  {
    goto LABEL_13;
  }

  v53 = v1;
  v59 = v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v60[0]) = 0;
  v17 = sub_2758C7304();
  sub_2759BAA68();
  v52 = v17;
  if (v62)
  {
    v51 = v16;
    v18 = *(v62 + 16);
    v19 = v53;
    if (v18)
    {
      v47 = v12;
      v48 = 0;
      v49 = v9;
      v50 = a1;
      v61 = MEMORY[0x277D84F90];
      v20 = v62;
      sub_2759509B0(0, v18, 0);
      v21 = v61;
      v22 = *(v54 + 16);
      v23 = *(v54 + 80);
      v46[1] = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v56 = *(v54 + 72);
      v57 = v22;
      v25 = (v54 + 8);
      v26 = v59;
      do
      {
        v57(v8, v24, v26);
        sub_2759B8BC8();
        v26 = v59;
        (*v25)(v8, v59);
        v61 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2759509B0((v27 > 1), v28 + 1, 1);
          v26 = v59;
          v21 = v61;
        }

        *(v21 + 16) = v28 + 1;
        sub_275827D1C(v60, v21 + 40 * v28 + 32);
        v24 += v56;
        --v18;
      }

      while (v18);

      v29 = v53;
      v9 = v49;
      a1 = v50;
      v12 = v47;
      v15 = v48;
    }

    else
    {

      v29 = v19;
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = 0;
    v29 = v53;
  }

  v30 = v29;
  v29[2] = v21;
  LOBYTE(v60[0]) = 1;
  sub_2759BAA68();
  if (v15)
  {
    (*(v55 + 8))(v12, v9);
    v3 = v30;
    v31 = v30[2];

LABEL_13:
    swift_deallocPartialClassInstance();
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  if (v62)
  {
    v33 = *(v62 + 16);
    if (v33)
    {
      v47 = v12;
      v48 = 0;
      v49 = v9;
      v50 = a1;
      v61 = MEMORY[0x277D84F90];
      v34 = v62;
      sub_2759509B0(0, v33, 0);
      v35 = v61;
      v36 = v54 + 16;
      v37 = *(v54 + 16);
      v38 = *(v54 + 80);
      v56 = v34;
      v39 = v34 + ((v38 + 32) & ~v38);
      v57 = *(v54 + 72);
      v58 = v37;
      v40 = (v54 + 8);
      v41 = v59;
      do
      {
        v42 = v36;
        v58(v8, v39, v41);
        sub_2759B8BC8();
        v41 = v59;
        (*v40)(v8, v59);
        v61 = v35;
        v44 = *(v35 + 16);
        v43 = *(v35 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2759509B0((v43 > 1), v44 + 1, 1);
          v41 = v59;
          v35 = v61;
        }

        *(v35 + 16) = v44 + 1;
        sub_275827D1C(v60, v35 + 40 * v44 + 32);
        v39 += v57;
        --v33;
        v36 = v42;
      }

      while (v33);

      v30 = v53;
      v9 = v49;
      a1 = v50;
      v12 = v47;
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v35 = 0;
  }

  v3 = v30;
  v30[3] = v35;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v45 = result;
    (*(v55 + 8))(v12, v9);
    v30[4] = v45;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2759A9CB4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_2759A9FC8();
}

void *sub_2759A9E0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2759A96DC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2759A9F10()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v3 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
  return v3;
}

uint64_t sub_2759A9FE8()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Messages enable action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 32);
  [v6 setupIMCloudKitHooks];
  [v6 setEnabled_];
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2759AA12C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_2759A9320(a1, v1[2]);
}

unint64_t sub_2759AA138()
{
  result = qword_280A12E70;
  if (!qword_280A12E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E70);
  }

  return result;
}

uint64_t sub_2759AA18C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_2759AA1F8()
{
  result = qword_280A12E78;
  if (!qword_280A12E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E78);
  }

  return result;
}

unint64_t sub_2759AA250()
{
  result = qword_280A12E80;
  if (!qword_280A12E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E80);
  }

  return result;
}

unint64_t sub_2759AA2A8()
{
  result = qword_280A12E88;
  if (!qword_280A12E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E88);
  }

  return result;
}

unint64_t sub_2759AA310()
{
  result = qword_280A12E90;
  if (!qword_280A12E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E90);
  }

  return result;
}

BOOL sub_2759AA368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x5F594D5F45444948 && a2 == 0xED00004C49414D45)
  {
    if (a3 == 1)
    {
      return 1;
    }
  }

  else
  {
    if ((sub_2759BAAC8() & 1) != 0 && a3 == 1)
    {
      return 1;
    }

    if (a1 == 0xD000000000000013 && 0x80000002759DCD20 == a2)
    {
      if (a3 == 2)
      {
        return 1;
      }

      goto LABEL_19;
    }
  }

  if ((sub_2759BAAC8() & 1) != 0 && a3 == 2)
  {
    return 1;
  }

  if (a1 == 0x535F594C494D4146 && a2 == 0xEE00474E49524148)
  {
    if ((a3 - 3) >= 2)
    {
      goto LABEL_24;
    }

    return 1;
  }

LABEL_19:
  if ((sub_2759BAAC8() & 1) != 0 && (a3 - 3) < 2)
  {
    return 1;
  }

  if (a1 == 0x505F4547414E414DLL && a2 == 0xEB000000004E414CLL)
  {
    return a3 == 5;
  }

LABEL_24:
  if (sub_2759BAAC8())
  {
    return a3 == 5;
  }

  return 0;
}

BOOL sub_2759AA55C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId);
  v3 = *(a1 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *v2;
  if (*v2 == 0x5F594D5F45444948 && v3 == 0xED00004C49414D45)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else
  {
    v7 = *v2;
    if ((sub_2759BAAC8() & 1) != 0 && a2 == 1)
    {
      return 1;
    }

    if (v5 == 0xD000000000000013 && v3 == 0x80000002759DCD20)
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      return 1;
    }
  }

  if ((sub_2759BAAC8() & 1) != 0 && a2 == 2)
  {
    return 1;
  }

  if (v5 == 0x535F594C494D4146 && v3 == 0xEE00474E49524148)
  {
    if ((a2 - 3) >= 2)
    {
      goto LABEL_31;
    }

    return 1;
  }

LABEL_22:
  if ((sub_2759BAAC8() & 1) != 0 && (a2 - 3) < 2)
  {
    return 1;
  }

  if (v5 == 0x505F4547414E414DLL && v3 == 0xEB000000004E414CLL)
  {
    return a2 == 5;
  }

LABEL_31:
  if (sub_2759BAAC8())
  {
    return a2 == 5;
  }

  return 0;
}

unint64_t sub_2759AA760@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2759AA794(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2759AA794(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2759AA7A8()
{
  result = qword_280A12E98;
  if (!qword_280A12E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E98);
  }

  return result;
}

id sub_2759AA80C(uint64_t a1)
{
  v2 = v1;
  if ([objc_opt_self() isMainThread])
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_2815ADE70);
    v5 = sub_2759B8988();
    v6 = sub_2759BA648();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2758937B8(0xD000000000000016, 0x80000002759DDD30, &v11);
      _os_log_impl(&dword_275819000, v5, v6, "%s IconServices may do I/O on main thread", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x277C85860](v8, -1, -1);
      MEMORY[0x277C85860](v7, -1, -1);
    }
  }

  v9 = [v2 prepareImageForDescriptor_];

  return v9;
}

uint64_t sub_2759AA998@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v13, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  v10[0] = v6;
  v10[1] = v8;
  v10[2] = v7;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v10);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getKeyPath();
  sub_2759BA1B8();
  sub_2759AC608(&qword_280A10398, MEMORY[0x277D4D7B0]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2759AACB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2759BA1B8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy;
  swift_beginAccess();
  sub_2758CE724(v7, a2 + v10, &qword_280A109D8, &qword_2759D0B40);
  return swift_endAccess();
}

uint64_t sub_2759AADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 97) = a6;
  *(v7 + 96) = a5;
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v9 = sub_2759BA1B8();
  *(v7 + 64) = v9;
  v10 = *(v9 - 8);
  *(v7 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  sub_2759BA4C8();
  *(v7 + 88) = sub_2759BA4B8();
  v13 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759AAF30, v13, v12);
}

uint64_t sub_2759AAF30()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 97);
  v3 = *(v0 + 96);
  v4 = *(v0 + 40);

  ManageStorageAppsListViewModel.clearAppsList(clearHomeData:)(v3);
  if (v2 == 1)
  {
    v5 = *(v0 + 48);
    v6 = *(v5 + 24);
    if (v6)
    {
      if (*(v6 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) == 1)
      {
        v7 = *(v0 + 64);
        v8 = *(v0 + 72);
        v9 = *(v0 + 56);
        v10 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy;
        swift_beginAccess();
        sub_2758FE7C0(v5 + v10, v9);
        if ((*(v8 + 48))(v9, 1, v7) == 1)
        {
          sub_27586BF04(*(v0 + 56), &qword_280A109D8, &qword_2759D0B40);
        }

        else
        {
          (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
          v11 = sub_2759BA198();
          v13 = *(v0 + 72);
          v12 = *(v0 + 80);
          v14 = *(v0 + 64);
          if (v11)
          {
            sub_2759BA1A8();
            (*(v13 + 8))(v12, v14);
            goto LABEL_11;
          }

          (*(v13 + 8))(*(v0 + 80), *(v0 + 64));
        }

        v15 = *(v0 + 40);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
        }
      }
    }
  }

LABEL_11:
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2759AB10C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x77656956706F70;
  }

  else
  {
    v4 = 0x6D6F487261656C63;
  }

  if (v3)
  {
    v5 = 0xED00006174614465;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x77656956706F70;
  }

  else
  {
    v6 = 0x6D6F487261656C63;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xED00006174614465;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_2759AB1C0()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759AB250()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_2759AB2CC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759AB358@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

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

void sub_2759AB3B8(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F487261656C63;
  if (*v1)
  {
    v2 = 0x77656956706F70;
  }

  v3 = 0xED00006174614465;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2759AB404()
{
  if (*v0)
  {
    result = 0x77656956706F70;
  }

  else
  {
    result = 0x6D6F487261656C63;
  }

  *v0;
  return result;
}

uint64_t sub_2759AB44C@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2759AB4B0(uint64_t a1)
{
  v2 = sub_2759AC650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2759AB4EC(uint64_t a1)
{
  v2 = sub_2759AC650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2759AB528(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v38 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EC0, &qword_2759D0BE0);
  v37 = *(v35 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = v33 - v10;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v12 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy;
  v13 = sub_2759BA1B8();
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_clearHomeData;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v16 = *(*(v15 - 8) + 56);
  v34 = v14;
  v16(v2 + v14, 1, 1, v15);
  v17 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView;
  v16(v2 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView, 1, 1, v15);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_didDisappear) = 0;
  v18 = a1;
  v19 = a1[3];
  v20 = v18[4];
  v42 = v18;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_2759AC650();
  v39 = v11;
  v21 = v40;
  sub_2759BAC18();
  if (v21)
  {

    v22 = v42;
  }

  else
  {
    v40 = v17;
    v41 = 0;
    v23 = sub_2758EA064();
    v25 = v35;
    v24 = v36;
    v33[1] = v23;
    sub_2759BAA68();
    v26 = v24;
    v27 = v34;
    swift_beginAccess();
    sub_2758CE724(v26, v2 + v27, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    v41 = 1;
    v29 = v38;
    v28 = v39;
    sub_2759BAA68();
    (*(v37 + 8))(v28, v25);
    v30 = v42;
    v31 = v40;
    swift_beginAccess();
    sub_2758CE724(v29, v2 + v31, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    v22 = v30;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v2;
}

uint64_t sub_2759AB944()
{
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy, &qword_280A109D8, &qword_2759D0B40);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_clearHomeData, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView, &qword_280A0FC48, &qword_2759C79C0);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearAppsListAction()
{
  result = qword_280A12EA0;
  if (!qword_280A12EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759ABA6C()
{
  sub_2758FE464();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2758E9738();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2759ABB50(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return (sub_2759ABD9C)(a1);
}

uint64_t sub_2759ABCB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_2759AB528(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_2759ABD9C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759ABEAC, 0, 0);
}

uint64_t sub_2759ABEAC()
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ClearAppsListAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  v8 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_clearHomeData;
  swift_beginAccess();
  v9 = *(v6 + 48);
  if (v9(v7 + v8, 1, v5))
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 64);
    (*(*(v0 + 96) + 16))(*(v0 + 112), v7 + v8, *(v0 + 88));
    sub_2759B8AA8();
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
    v10 = *(v0 + 144);
  }

  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  v14 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView;
  swift_beginAccess();
  if (v9(v13 + v14, 1, v12))
  {
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 64);
    (*(*(v0 + 96) + 16))(*(v0 + 104), v13 + v14, *(v0 + 88));
    sub_2759B8AA8();
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v15 = *(v0 + 145);
  }

  v17 = *(v0 + 72);
  v18 = *(v17 + 16);
  *(v0 + 120) = v18;
  if (v18)
  {
    v19 = *(v0 + 80);
    v20 = sub_2759BA518();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    sub_2759BA4C8();
    v21 = v18;

    v22 = sub_2759BA4B8();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    *(v23 + 32) = v21;
    *(v23 + 40) = v10;
    *(v23 + 41) = v15;
    *(v23 + 48) = v17;
    *(v0 + 128) = sub_27587D460(0, 0, v19, &unk_2759D0B38, v23);
    v25 = *(MEMORY[0x277D857E0] + 4);
    v26 = swift_task_alloc();
    *(v0 + 136) = v26;
    *v26 = v0;
    v26[1] = sub_2759AC38C;

    return MEMORY[0x282200460]();
  }

  else
  {
    v27 = sub_2759B8988();
    v28 = sub_2759BA648();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_275819000, v27, v28, "ClearAppsListAction: no view model available", v29, 2u);
      MEMORY[0x277C85860](v29, -1, -1);
    }

    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 80);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_2759AC38C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2759AC4A4, 0, 0);
}

uint64_t sub_2759AC4A4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2759AC524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585A7E4;

  return sub_2759AADFC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2759AC608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2759AC650()
{
  result = qword_280A12EC8;
  if (!qword_280A12EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12EC8);
  }

  return result;
}

unint64_t sub_2759AC6B8()
{
  result = qword_280A12ED0;
  if (!qword_280A12ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12ED0);
  }

  return result;
}

unint64_t sub_2759AC710()
{
  result = qword_280A12ED8;
  if (!qword_280A12ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12ED8);
  }

  return result;
}

unint64_t sub_2759AC768()
{
  result = qword_280A12EE0;
  if (!qword_280A12EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12EE0);
  }

  return result;
}

uint64_t sub_2759AC7BC()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_2759BA2F8();
}

uint64_t sub_2759AC838@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EE8, &qword_2759D0DD8);
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v5 = v38 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EF0, &qword_2759D0DE0);
  v6 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EF8, &qword_2759D0DE8);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F00, &qword_2759D0DF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F08, &qword_2759D0DF8);
  v16 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v18 = v38 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F10, &qword_2759D0E00);
  v19 = *(v46 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v46);
  v41 = v38 - v21;
  swift_getKeyPath();
  v49 = a1;
  sub_2759ADF30(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v22 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v23 = *&a1[v22];
  if (v23 && (v24 = *(*(v23 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader)) != 0)
  {
    v25 = v24;
    if (sub_275881A20())
    {
      v39 = v25;
      v48 = *&v25[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions];
      v38[2] = swift_getKeyPath();
      *(swift_allocObject() + 16) = a1;

      v26 = a1;
      v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F60, &qword_2759D0E68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F40, &qword_2759D0E38);
      sub_27589B02C(&qword_280A12F68, &qword_280A12F60, &qword_2759D0E68);
      sub_2759ADF30(&qword_280A12F70, type metadata accessor for Action);
      sub_2759ADE70();
      sub_2759B9ED8();
      sub_2759B8ED8();
      sub_2759ADDEC();
      sub_2759B9AD8();
      (*(v40 + 8))(v11, v8);
      v27 = sub_2759B97F8();
      sub_2759B8D78();
      v28 = &v15[*(v12 + 36)];
      *v28 = v27;
      *(v28 + 1) = v29;
      *(v28 + 2) = v30;
      *(v28 + 3) = v31;
      *(v28 + 4) = v32;
      v28[40] = 0;
      sub_2759ADD24();
      sub_2759B9B38();
      sub_27586BF04(v15, &qword_280A12F00, &qword_2759D0DF0);
      sub_2758277BC(v18, v44);
      swift_storeEnumTagMultiPayload();
      sub_2759ADC68();
      sub_27589B02C(&qword_280A12F58, &qword_280A12EE8, &qword_2759D0DD8);
      v33 = v41;
      sub_2759B95E8();

      sub_27586BF04(v18, &qword_280A12F08, &qword_2759D0DF8);
    }

    else
    {
      *v5 = sub_2759B94F8();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F18, &qword_2759D0E30);
      sub_2759AD184(v25, a1, &v5[*(v36 + 44)]);
      sub_27586FBC8(v5, v44, &qword_280A12EE8, &qword_2759D0DD8);
      swift_storeEnumTagMultiPayload();
      sub_2759ADC68();
      sub_27589B02C(&qword_280A12F58, &qword_280A12EE8, &qword_2759D0DD8);
      v33 = v41;
      sub_2759B95E8();

      sub_27586BF04(v5, &qword_280A12EE8, &qword_2759D0DD8);
    }

    v35 = v47;
    sub_275827714(v33, v47);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v35 = v47;
  }

  return (*(v19 + 56))(v35, v34, 1, v46);
}

uint64_t sub_2759ACF28@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2759ADF78;
  *(v8 + 24) = v6;
  v9 = v5;
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D0, &qword_2759D0E70);
  sub_2759B9D58();
  LOBYTE(a2) = sub_2759B97E8();
  result = sub_2759B8D78();
  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = sub_2759ADFC8;
  *(a3 + 32) = v7;
  *(a3 + 40) = a2;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = v14;
  *(a3 + 72) = v15;
  *(a3 + 80) = 0;
  return result;
}

uint64_t sub_2759AD05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC14iCloudSettings6Action_title + 8))
  {
    v3 = *(a1 + OBJC_IVAR____TtC14iCloudSettings6Action_title);
    v4 = *(a1 + OBJC_IVAR____TtC14iCloudSettings6Action_title + 8);
  }

  sub_27589F2D4();

  v5 = sub_2759B99C8();
  v7 = v6;
  v9 = v8;
  sub_2759B9858();
  v10 = sub_2759B9988();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_27589F328(v5, v7, v9 & 1);

  result = swift_getKeyPath();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = 256;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_2759AD184@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F78, &qword_2759D0EB0);
  v11 = *(v10 - 8);
  v52 = (v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2759ADFD8;
  *(v19 + 24) = v17;
  v62 = sub_2759AE12C;
  v63 = v19;
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D0, &qword_2759D0E70);
  sub_2759B9D58();
  v60 = sub_2759ADFE0;
  v61 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F50, &unk_2759D0E40);
  sub_27589B02C(&qword_280A12F48, &qword_280A12F50, &unk_2759D0E40);
  sub_2759B9B38();

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  v23 = *(v52 + 11);
  v52 = v16;
  v24 = &v16[v23];
  *v24 = sub_2759ADFE8;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  v25 = *&v20[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle + 8];
  v57 = *&v20[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle];
  v58 = v25;
  sub_27589F2D4();
  v26 = v20;
  v27 = v21;

  v28 = sub_2759B99C8();
  v30 = v29;
  v32 = v31;
  sub_2759B9848();
  v33 = sub_2759B9988();
  v35 = v34;
  v37 = v36;

  sub_27589F328(v28, v30, v32 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v57 = qword_280A239C0;

  v38 = sub_2759B9958();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_27589F328(v33, v35, v37 & 1);

  v57 = v38;
  v58 = v40;
  LOBYTE(v59) = v42 & 1;
  v60 = v44;
  v45 = v54;
  sub_2759B9B38();
  sub_27589F328(v38, v40, v42 & 1);

  v47 = v52;
  v46 = v53;
  sub_27586FBC8(v52, v53, &qword_280A12F78, &qword_2759D0EB0);
  v48 = v55;
  sub_27586FBC8(v45, v55, &qword_280A0F600, &qword_2759C4210);
  v49 = v56;
  sub_27586FBC8(v46, v56, &qword_280A12F78, &qword_2759D0EB0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F80, &qword_2759D0EB8);
  sub_27586FBC8(v48, v49 + *(v50 + 48), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v45, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v47, &qword_280A12F78, &qword_2759D0EB0);
  sub_27586BF04(v48, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v46, &qword_280A12F78, &qword_2759D0EB0);
}

void sub_2759AD6D4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v3 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
    }

    if (sub_2759BA9E8())
    {
      goto LABEL_3;
    }

LABEL_10:
    if (qword_2815ADD30 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x277C846A0](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:
    v9 = 21;
    v8 = 7;
    oslog = v2;
    sub_27590A460(v2, 1, &v9, &v8, 0);
    goto LABEL_13;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_11:
  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_2815ADE70);
  oslog = sub_2759B8988();
  v5 = sub_2759BA648();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_275819000, oslog, v5, "No action found for stateful header section.", v6, 2u);
    MEMORY[0x277C85860](v6, -1, -1);
  }

LABEL_13:
}

uint64_t sub_2759AD854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v8 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
    }

    result = sub_2759BA9E8();
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_12;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x277C846A0](0, v3);
    v11 = *(v9 + OBJC_IVAR____TtC14iCloudSettings6Action_title);
    v10 = *(v9 + OBJC_IVAR____TtC14iCloudSettings6Action_title + 8);

    swift_unknownObjectRelease();
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = (*(v3 + 32) + OBJC_IVAR____TtC14iCloudSettings6Action_title);
    if (v5[1])
    {
      v6 = *v5;
      v7 = v5[1];

LABEL_13:
      sub_27589F2D4();
      v12 = sub_2759B99C8();
      v14 = v13;
      v16 = v15;
      sub_2759B9858();
      v17 = sub_2759B9988();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      sub_27589F328(v12, v14, v16 & 1);

      result = swift_getKeyPath();
      *a2 = v17;
      *(a2 + 8) = v19;
      *(a2 + 16) = v21 & 1;
      *(a2 + 24) = v23;
      *(a2 + 32) = 256;
      *(a2 + 40) = result;
      *(a2 + 48) = 0;
      return result;
    }

LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_2759ADA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
  if (v8 >> 62)
  {
    if (!sub_2759BA9E8())
    {
      return;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x277C846A0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v22 = v9;
  v10 = &v9[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  v11 = *&v9[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  v12 = *(v10 + 1);
  v13 = sub_2759BA258();
  v14 = _ICQActionForString();

  if ((v14 - 114) > 0xD || ((1 << (v14 - 114)) & 0x20F1) == 0)
  {
    v20 = v22;
  }

  else
  {
    v16 = *(a2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
    sub_2759BA4D8();
    v17 = sub_2759BA518();
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v18;
    *(v19 + 40) = 21;
    sub_275931D20(0, 0, v7, &unk_2759C3740, v19);

    sub_27586BF04(v7, &unk_280A0E510, &qword_2759C33C0);
  }
}

unint64_t sub_2759ADC68()
{
  result = qword_280A12F20;
  if (!qword_280A12F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F08, &qword_2759D0DF8);
    sub_2759ADD24();
    sub_2759ADF30(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F20);
  }

  return result;
}

unint64_t sub_2759ADD24()
{
  result = qword_280A12F28;
  if (!qword_280A12F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F00, &qword_2759D0DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12EF8, &qword_2759D0DE8);
    sub_2759ADDEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F28);
  }

  return result;
}

unint64_t sub_2759ADDEC()
{
  result = qword_280A12F30;
  if (!qword_280A12F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12EF8, &qword_2759D0DE8);
    sub_2759ADE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F30);
  }

  return result;
}

unint64_t sub_2759ADE70()
{
  result = qword_280A12F38;
  if (!qword_280A12F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F40, &qword_2759D0E38);
    sub_27589B02C(&qword_280A12F48, &qword_280A12F50, &unk_2759D0E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F38);
  }

  return result;
}

uint64_t sub_2759ADF30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2759ADF78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = 21;
  v3 = 7;
  sub_27590A460(v1, 1, &v4, &v3, 0);
}

unint64_t sub_2759ADFF0()
{
  result = qword_280A12F88;
  if (!qword_280A12F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F90, qword_2759D0EC0);
    sub_2759AE074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F88);
  }

  return result;
}

unint64_t sub_2759AE074()
{
  result = qword_280A12F98;
  if (!qword_280A12F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F10, &qword_2759D0E00);
    sub_2759ADC68();
    sub_27589B02C(&qword_280A12F58, &qword_280A12EE8, &qword_2759D0DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F98);
  }

  return result;
}

id sub_2759AE130()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_2815ADE70);
  v1 = sub_2759B8988();
  v2 = sub_2759BA638();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    MEMORY[0x277C85860](v3, -1, -1);
  }

  v4 = objc_opt_self();

  return [v4 clearSharedContext];
}

uint64_t sub_2759AE250()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_2759AE458();
}

uint64_t sub_2759AE474()
{
  [objc_opt_self() startSharedContextWithOptions_];
  v1 = [objc_allocWithZone(MEMORY[0x277D35F60]) init];
  v0[18] = v1;
  v2 = objc_opt_self();
  v3 = [v2 sharedContext];
  [v3 setCloudContextDelegate_];

  v4 = [v2 sharedContext];
  v0[19] = v4;
  v5 = sub_2759BA258();
  v0[20] = v5;
  v0[2] = v0;
  v0[3] = sub_2759AE64C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E50, &unk_2759D0FD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27596DB7C;
  v0[13] = &block_descriptor_19;
  v0[14] = v6;
  [v4 syncWithReason:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2759AE64C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2759AE8D0;
  }

  else
  {
    v3 = sub_2759AE75C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2759AE75C()
{
  v1 = *(v0 + 160);

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 144);

  sub_2759AEAB0();
  v7 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v7 postNotificationName:*MEMORY[0x277D35C48] object:0];

  sub_2759AE130();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2759AE8D0()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  swift_willThrow();

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v5 = v0[21];
  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = v5;
  v8 = sub_2759B8988();
  v9 = sub_2759BA648();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[21];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_275819000, v8, v9, "Notes deletion sync failed with error: %@. We might be showing incorrect Notes count on six pack.", v12, 0xCu);
    sub_275875554(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {
  }

  sub_2759AE130();
  v16 = v0[1];

  return v16();
}

unint64_t sub_2759AEAB0()
{
  result = qword_280A12FB0;
  if (!qword_280A12FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A12FB0);
  }

  return result;
}

uint64_t sub_2759AEAFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotesDeleteAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ICSiCloudDriveFileProvider.__allocating_init(account:fileManager:fpItemManager:fileProviderHelper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v17 = *(a4 + 24);
  v9 = v17;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v11 = *(v17 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14);
  *(v8 + 56) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  (*(v11 + 32))(boxed_opaque_existential_1, v14, v9);
  *(v8 + 72) = a1;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v8;
}

void *ICSiCloudDriveFileProvider.init(account:fileManager:fpItemManager:fileProviderHelper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_2759B3EA4(a1, a2, a3, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

uint64_t sub_2759AED90()
{
  v1 = [*(v0 + 72) identifier];
  if (v1)
  {
    v9 = 0;
    v10 = 0;
    v2 = v1;
    sub_2759BA288();
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_275819000, v4, v5, "iCloudDriveFileProvider: no account id when fetching provider domain id", v6, 2u);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  sub_2759B3F30();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();
  return v5;
}

uint64_t sub_2759AF420()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ICSiCloudDriveFileProvider: fetching all files", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = sub_2759AED90();
  v0[3] = v6;
  v7 = *MEMORY[0x277CC62E8];
  v8 = v6;
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_2759AF5E0;
  v10 = v0[2];

  return sub_2759B02CC(v8, v7);
}

uint64_t sub_2759AF5E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_2759AF770;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_2759AF708;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2759AF708()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_2759AF770()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2759AF7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2759AF7F8, 0, 0);
}

uint64_t sub_2759AF7F8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2759AF8FC;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002FLL, 0x80000002759E41C0, sub_2759B3F84, v3, v7);
}

uint64_t sub_2759AF8FC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2759AFA34;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2759AFA18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2759AFA34()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2(0);
}

void sub_2759AFA9C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = sub_2759AED90();
  v40 = v15;
  v41 = v11;
  v43 = v8;
  v45 = a1;
  v46 = v7;
  v17 = objc_allocWithZone(MEMORY[0x277CC6400]);
  v44 = a3;
  v42 = [v17 initWithProviderDomainID:v16 itemIdentifier:a3];
  v18 = v47;
  v19 = v47[2];
  if (v19)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2759BA968();
    v20 = v18 + 4;
    do
    {
      v21 = *v20++;
      [objc_allocWithZone(MEMORY[0x277CC6400]) initWithProviderDomainID:v16 itemIdentifier:v21];
      sub_2759BA948();
      v22 = *(aBlock[0] + 16);
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      --v19;
    }

    while (v19);
  }

  v47 = [objc_allocWithZone(ICSINDEntry) init];
  sub_2759B4980();
  v23 = sub_2759BA3D8();

  v24 = v40;
  sub_27586FBC8(v48, v40, &unk_280A0EB10, &qword_2759C0740);
  v25 = sub_2759B8508();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v24, 1, v25);
  v28 = 0;
  v30 = v45;
  v29 = v46;
  if (v27 != 1)
  {
    v28 = sub_2759B84B8();
    (*(v26 + 8))(v24, v25);
  }

  v31 = v43;
  v32 = v41;
  (*(v43 + 16))(v41, v30, v29);
  v33 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v44;
  *(v34 + 16) = v44;
  (*(v31 + 32))(v34 + v33, v32, v29);
  aBlock[4] = sub_2759B49CC;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275956A0C;
  aBlock[3] = &block_descriptor_52_0;
  v36 = _Block_copy(aBlock);
  v37 = v35;

  v38 = v47;
  v39 = v42;
  [v47 syncFPItem:v42 observeItemIDs:v23 notifyURL:v28 completion:v36];
  _Block_release(v36);
}

uint64_t sub_2759AFFCC(char a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_280A238A0);
    v7 = a2;
    v8 = a3;
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v11 = 136315394;
      v14 = sub_2759BA298();
      v16 = sub_2758937B8(v14, v15, &v25);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_275819000, v9, v10, "ICSiCloudDriveFileProvider: Error while observing %s - %@", v11, 0x16u);
      sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x277C85860](v13, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
    return sub_2759BA478();
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_280A238A0);
    v22 = sub_2759B8988();
    v23 = sub_2759BA668();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = a1 & 1;
      _os_log_impl(&dword_275819000, v22, v23, "ICSiCloudDriveFileProvider: sync complete with success: %{BOOL}d", v24, 8u);
      MEMORY[0x277C85860](v24, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
    return sub_2759BA488();
  }
}

uint64_t sub_2759B02CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2759B8508();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759B039C, 0, 0);
}

uint64_t sub_2759B039C()
{
  v25 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_2759B89A8();
  v0[9] = __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = v2;
  v5 = v1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315394;
    v12 = sub_2759BA298();
    v14 = sub_2758937B8(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_2759BA298();
    v17 = sub_2758937B8(v15, v16, &v24);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_275819000, v6, v7, "ICSiCloudDriveFileProvider: fetchFiles for providerID: %s containerID: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_2759B05BC;
  v19 = v0[8];
  v20 = v0[3];
  v21 = v0[4];
  v22 = v0[2];

  return sub_2759B2F54(v19, v22, v20);
}

uint64_t sub_2759B05BC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2759B0A6C;
  }

  else
  {
    v3 = sub_2759B06D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2759B06D0()
{
  v20 = v0;
  v1 = v0[9];
  (*(v0[6] + 16))(v0[7], v0[8], v0[5]);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v18 = sub_2759B8488();
    v11 = v10;
    v12 = *(v6 + 8);
    v12(v5, v7);
    v13 = sub_2758937B8(v18, v11, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_275819000, v2, v3, "ICSiCloudDriveFileProvider: fetchFiles received url %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {

    v12 = *(v6 + 8);
    v12(v5, v7);
  }

  v0[12] = v12;
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_2759B08B4;
  v15 = v0[8];
  v16 = v0[4];

  return sub_2759B0B60(v15);
}

uint64_t sub_2759B08B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_2759B0AD8;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_2759B09DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2759B09DC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48) + 8;
  (*(v0 + 96))(*(v0 + 64), *(v0 + 40));

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3(v4);
}

uint64_t sub_2759B0A6C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2759B0AD8()
{
  v1 = *(v0 + 48) + 8;
  (*(v0 + 96))(*(v0 + 64), *(v0 + 40));
  v2 = *(v0 + 112);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2759B0B60(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_2759B83F8();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_2759B8508();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2759B0CC0, 0, 0);
}

uint64_t sub_2759B0CC0()
{
  v101 = v0;
  v100[1] = *MEMORY[0x277D85DE8];
  if (qword_280A0E338 != -1)
  {
LABEL_49:
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[11];
  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  v99 = *(v3 + 16);
  v99(v1, v4, v2);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  v10 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v100[0] = v13;
    *v12 = 136315138;
    v14 = sub_2759B8488();
    v16 = v15;
    v96 = *(v11 + 8);
    v96(v9, v10);
    v17 = sub_2758937B8(v14, v16, v100);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_275819000, v6, v7, "ICSiCloudDriveFileProvider: fetching files at url: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {

    v96 = *(v11 + 8);
    v96(v9, v10);
  }

  v18 = v0[11];
  v87 = v0[12];
  v19 = *(v87 + 16);
  v20 = sub_2759B84B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE8, &unk_2759D1210);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2759C2110;
  v22 = *MEMORY[0x277CBE868];
  v23 = *MEMORY[0x277CBE8E8];
  *(v21 + 32) = *MEMORY[0x277CBE868];
  *(v21 + 40) = v23;
  type metadata accessor for URLResourceKey(0);
  v98 = v22;
  v97 = v23;
  v24 = sub_2759BA3D8();

  v0[8] = 0;
  v25 = [v19 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:v24 options:2 error:v0 + 8];

  v26 = v0[8];
  if (v25)
  {
    v27 = v0[16];
    v28 = sub_2759BA3E8();
    v29 = v26;

    v0[9] = MEMORY[0x277D84F90];
    v95 = *(v28 + 16);
    if (v95)
    {
      v30 = 0;
      v31 = v0[17];
      v90 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v93 = v28 + v90;
      v88 = *MEMORY[0x277CFAD90];
      v86 = *MEMORY[0x277CFAD80];
      v91 = (v0[14] + 8);
      v94 = v31;
      v89 = (v31 + 32);
      v92 = v28;
      while (1)
      {
        if (v30 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v35 = v0[15];
        v36 = *(v94 + 72);
        v99(v0[19], v93 + v36 * v30, v0[16]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2759C2110;
        *(inited + 32) = v98;
        *(inited + 40) = v97;
        v38 = v98;
        v39 = v97;
        sub_2759B5D20(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_2759B8498();
        v40 = v0[15];

        v41 = sub_2759B83D8();
        v43 = sub_2759B83E8();
        v44 = v42;
        if (v41 == 2 || !v42)
        {

          v45 = sub_2759B8988();
          v46 = sub_2759BA668();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 67109376;
            *(v47 + 4) = v41 != 2;
            *(v47 + 8) = 1024;
            *(v47 + 10) = v44 != 0;

            _os_log_impl(&dword_275819000, v45, v46, "ICSiCloudDriveFileProvider: has resource values for url? isDir: %{BOOL}d name: %{BOOL}d", v47, 0xEu);
            MEMORY[0x277C85860](v47, -1, -1);
          }

          else
          {
          }

          if (v41 == 2)
          {
            goto LABEL_23;
          }
        }

        if ((v41 & 1) == 0)
        {
          goto LABEL_23;
        }

        v48 = sub_2759BA298();
        if (!v44)
        {

          sub_2759BA298();
LABEL_23:

LABEL_24:
          v99(v0[18], v0[19], v0[16]);
          v50 = v0[9];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_275870B24(0, *(v50 + 2) + 1, 1, v50);
          }

          v52 = *(v50 + 2);
          v51 = *(v50 + 3);
          if (v52 >= v51 >> 1)
          {
            v50 = sub_275870B24(v51 > 1, v52 + 1, 1, v50);
          }

          v33 = v0[18];
          v32 = v0[19];
          v34 = v0[16];
          (*v91)(v0[15], v0[13]);
          v96(v32, v34);
          *(v50 + 2) = v52 + 1;
          (*v89)(&v50[v90 + v52 * v36], v33, v34);
          v0[9] = v50;
          goto LABEL_9;
        }

        if (v43 == v48 && v44 == v49)
        {
          break;
        }

        v53 = sub_2759BAAC8();

        if (v53)
        {
          goto LABEL_29;
        }

        if (v43 == sub_2759BA298() && v44 == v70)
        {
          break;
        }

        v71 = sub_2759BAAC8();

        if ((v71 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_30:
        v54 = sub_2759B8988();
        v55 = sub_2759BA668();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_275819000, v54, v55, "ICSiCloudDriveFileProvider: found desktop or drive folder, adding children to file list", v56, 2u);
          MEMORY[0x277C85860](v56, -1, -1);
        }

        v57 = v0[19];

        v58 = *(v87 + 16);
        v59 = sub_2759B84B8();
        v60 = sub_2759BA3D8();
        v0[10] = 0;
        v61 = [v58 contentsOfDirectoryAtURL:v59 includingPropertiesForKeys:v60 options:2 error:v0 + 10];

        v62 = v0[10];
        v63 = v0[19];
        v64 = v0[15];
        v65 = v0[16];
        v66 = v0[13];
        if (!v61)
        {
          v84 = v62;

          v85 = v0[9];

          sub_2759B8448();

          swift_willThrow();
          (*v91)(v64, v66);
          v96(v63, v65);
          goto LABEL_40;
        }

        v67 = v0[16];
        v68 = sub_2759BA3E8();
        v69 = v62;

        sub_2759B1B10(v68, sub_275870B24, MEMORY[0x277CC9260]);
        (*v91)(v64, v66);
        v96(v63, v65);
LABEL_9:
        ++v30;
        v28 = v92;
        if (v95 == v30)
        {

          v73 = v0[9];
          goto LABEL_44;
        }
      }

LABEL_29:

      goto LABEL_30;
    }

    v73 = MEMORY[0x277D84F90];
LABEL_44:
    v0[21] = v73;
    v81 = swift_task_alloc();
    v0[22] = v81;
    *v81 = v0;
    v81[1] = sub_2759B1704;
    v82 = v0[12];
    v83 = *MEMORY[0x277D85DE8];

    return sub_2759B2078(v73);
  }

  else
  {
    v72 = v26;
    sub_2759B8448();

    swift_willThrow();
LABEL_40:
    v75 = v0[19];
    v74 = v0[20];
    v76 = v0[18];
    v77 = v0[15];

    v78 = v0[1];
    v79 = *MEMORY[0x277D85DE8];

    return v78();
  }
}

uint64_t sub_2759B1704(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 176);
  v11 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v6 = sub_2759B1918;
  }

  else
  {
    v7 = *(v4 + 168);

    *(v4 + 192) = a1;
    v6 = sub_2759B185C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2759B185C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[15];

  v5 = v0[1];
  v6 = v0[24];
  v7 = *MEMORY[0x277D85DE8];

  return v5(v6);
}

uint64_t sub_2759B1918()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[15];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

void *sub_2759B19E0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_275870B00(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB8, &qword_2759C2698);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2759B1B10(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2759B1C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 24);
  v10 = sub_2759B84B8();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_2759B48B0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2758B677C;
  aBlock[3] = &block_descriptor_20;
  v13 = _Block_copy(aBlock);

  [v9 fetchItemForURL:v10 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_2759B1E28(void *a1, id a2)
{
  if (!a2)
  {
LABEL_6:
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v4 = a2;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  v6 = a2;
  v7 = sub_2759B8988();
  v8 = sub_2759BA648();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0x6C69466863746566, 0xEF293A6C72752865, &v16);
    *(v9 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_275819000, v7, v8, "%s received error: %@", v9, 0x16u);
    sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);

    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v14 = a1;
  if ([v14 isShared] && !objc_msgSend(v14, sel_isSharedByCurrentUser))
  {

    goto LABEL_13;
  }

  v16 = a1;
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200);
  return sub_2759BA488();
}

uint64_t sub_2759B2078(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2759B2098, 0, 0);
}

uint64_t sub_2759B2098()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ICSiCloudDriveFileProvider: fetching items from url list", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v11 = *(v0 + 24);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FD0, &qword_2759D11B8);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v11;
  v8 = *(MEMORY[0x277D858E8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_2759B2274;

  return MEMORY[0x282200600](v0 + 16, v5, v6, 0, 0, &unk_2759D11C8, v7, v5);
}

uint64_t sub_2759B2274()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2759B238C, 0, 0);
}

uint64_t sub_2759B238C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "ICSiCloudDriveFileProvider: fetch files from urls, returning result", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_2759B2468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FD8, &qword_2759D11D8);
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = sub_2759B8508();
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v4[22] = *(v10 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759B25EC, 0, 0);
}

uint64_t sub_2759B25EC()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v41 = *(v0 + 176);
    v40 = *(v3 + 16);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v39 = **(v0 + 96);
    v38 = (v4 + 40) & ~v4;
    v36 = (v3 + 8);
    v37 = (v3 + 32);
    v35 = *(v3 + 72);
    do
    {
      v44 = v2;
      v10 = *(v0 + 184);
      v9 = *(v0 + 192);
      v11 = *(v0 + 160);
      v12 = *(v0 + 128);
      v42 = *(v0 + 120);
      v43 = v5;
      v13 = *(v0 + 112);
      v40(v9);
      v14 = sub_2759BA518();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v12, 1, 1, v14);
      (v40)(v10, v9, v11);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      (*v37)(v16 + v38, v10, v11);
      sub_27586FBC8(v12, v42, &unk_280A0E510, &qword_2759C33C0);
      LODWORD(v11) = (*(v15 + 48))(v42, 1, v14);

      v18 = *(v0 + 120);
      if (v11 == 1)
      {
        sub_27586BF04(*(v0 + 120), &unk_280A0E510, &qword_2759C33C0);
      }

      else
      {
        sub_2759BA508();
        (*(v15 + 8))(v18, v14);
      }

      if (*v17)
      {
        v19 = v16[3];
        v20 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_2759BA468();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = &unk_2759D11F0;
      *(v24 + 24) = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
      v25 = v23 | v21;
      if (v23 | v21)
      {
        v25 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      v6 = *(v0 + 192);
      v7 = *(v0 + 160);
      v8 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v25;
      *(v0 + 64) = v39;
      swift_task_create();

      sub_27586BF04(v8, &unk_280A0E510, &qword_2759C33C0);
      (*v36)(v6, v7);
      v5 = v43 + v35;
      v2 = v44 - 1;
    }

    while (v44 != 1);
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 96);
  v28 = MEMORY[0x277D84F90];
  *(v0 + 72) = MEMORY[0x277D84F90];
  v29 = *v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
  sub_2759BA498();
  *(v0 + 200) = v28;
  v30 = *(MEMORY[0x277D856B0] + 4);
  v31 = swift_task_alloc();
  *(v0 + 208) = v31;
  *v31 = v0;
  v31[1] = sub_2759B2A30;
  v32 = *(v0 + 152);
  v33 = *(v0 + 136);

  return MEMORY[0x2822002E8](v0 + 80, 0, 0, v33);
}

uint64_t sub_2759B2A30()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2759B2B2C, 0, 0);
}

uint64_t sub_2759B2B2C()
{
  v1 = v0[10];
  if (v1 == 1)
  {
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[23];
    v11 = v0[16];
    v12 = v0[15];
    v13 = v0[11];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v13 = v9;

    v14 = v0[1];

    return v14();
  }

  else
  {
    if (v1)
    {
      v2 = v0 + 9;
      v3 = v1;
      MEMORY[0x277C84160]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      sub_27581DE0C(v1);
      v0[25] = v0[9];
    }

    v4 = *(MEMORY[0x277D856B0] + 4);
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_2759B2A30;
    v6 = v0[19];
    v7 = v0[17];

    return MEMORY[0x2822002E8](v0 + 10, 0, 0, v7);
  }
}

uint64_t sub_2759B2CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2759B2D18, 0, 0);
}

uint64_t sub_2759B2D18()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
  *v3 = v0;
  v3[1] = sub_2759B2E20;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x6C69466863746566, 0xEF293A6C72752865, sub_2759B48A8, v1, v4);
}

uint64_t sub_2759B2E20()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2759B2F38, 0, 0);
}

uint64_t sub_2759B2F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_2759B8508();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759B3018, 0, 0);
}

uint64_t sub_2759B3018()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC6400]) initWithProviderDomainID:v0[19] itemIdentifier:v0[20]];
  v0[25] = v1;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_275819000, v4, v5, "ICSiCloudDriveFileProvider: Fetching url for item %@", v6, 0xCu);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v9 = v0[24];
  v10 = v0[21];

  v11 = *(v10 + 24);
  v0[26] = v11;
  v0[2] = v0;
  v0[7] = v9;
  v0[3] = sub_2759B3280;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF0, &unk_2759D1220);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2759B34C0;
  v0[13] = &block_descriptor_45;
  v0[14] = v12;
  [v11 fetchURLForItemID:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2759B3280()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_2759B3438;
  }

  else
  {
    v3 = sub_2759B3390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2759B3390()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);

  (*(v3 + 32))(v5, v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2759B3438()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t sub_2759B34C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2759B8508();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return MEMORY[0x282200958](v10, v11);
  }

  else
  {
    sub_2759B84C8();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2759B3630(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2759B3650, 0, 0);
}

uint64_t sub_2759B3650()
{
  v15 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759E41F0, &v14);
    _os_log_impl(&dword_275819000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x277C85860](v5, -1, -1);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v6 = v0[3];
  v7 = sub_2759AED90();
  v0[4] = v7;
  v8 = v7;
  v9 = *MEMORY[0x277CC62E8];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_2759B3868;
  v11 = v0[2];
  v12 = v0[3];

  return sub_2759B2F54(v11, v8, v9);
}

uint64_t sub_2759B3868()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2759B39E0;
  }

  else
  {
    v3 = sub_2759B397C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2759B397C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2759B39E0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ICSiCloudDriveFileProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t ICSiCloudDriveFileProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2759B3ACC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2759B3B5C;

  return sub_2759AF400();
}

uint64_t sub_2759B3B5C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2759B3C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_2759B3C84, 0, 0);
}

uint64_t sub_2759B3C84()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2759B3D88;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002FLL, 0x80000002759E41C0, sub_2759B4A60, v3, v7);
}

uint64_t sub_2759B3D88()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2759B4A64;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2759B4A70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_2759B3EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[7] = a6;
  a5[8] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 4);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[9] = a1;
  a5[2] = a2;
  a5[3] = a3;
  return a5;
}

unint64_t sub_2759B3F30()
{
  result = qword_280A12FB8;
  if (!qword_280A12FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12FB8);
  }

  return result;
}

uint64_t dispatch thunk of ICSFileProviding.allFiles()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2759B4A68;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ICSFileProviding.syncContainer(_:observingContainers:notifyURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2759B4A68;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ICSiCloudDriveFileProvider.allFiles()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_275875130;

  return v6();
}

uint64_t dispatch thunk of ICSiCloudDriveFileProvider.syncContainer(_:observingContainers:notifyURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_275875130;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ICSiCloudDriveFileProvider.iCloudDriveRootURL()(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585A7E4;

  return v8(a1);
}

unint64_t sub_2759B45F0()
{
  result = qword_280A12FC0;
  if (!qword_280A12FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12FC0);
  }

  return result;
}

uint64_t sub_2759B4644(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_27585A7E4;

  return sub_2759B2468(a1, a2, v7, v6);
}

uint64_t sub_2759B46F8(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2759B2CF4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2759B47F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_2759353A8(a1, v5);
}

uint64_t sub_2759B48B0(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200) - 8) + 80);

  return sub_2759B1E28(a1, a2);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2759B4980()
{
  result = qword_280A13000;
  if (!qword_280A13000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A13000);
  }

  return result;
}

uint64_t sub_2759B49CC(char a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_2759AFFCC(a1, a2, v6);
}

uint64_t sub_2759B4A74(uint64_t a1)
{
  v2 = sub_2759B8288();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2759B8258();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2759B4B68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2759B8CE8();

  return v1;
}

uint64_t sub_2759B4BF8()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver;
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel__daysUntilDelete;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5A0, &qword_2759C4008);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + v1);
  swift_unknownObjectRelease();
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagesDrilldownModel()
{
  result = qword_280A13018;
  if (!qword_280A13018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759B4D64()
{
  sub_2759B57C8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2759B4DFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v29 - v2;
  v4 = sub_2759B8578();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 exitDate];

    if (v18)
    {
      sub_2759B8558();

      v29 = *(v5 + 32);
      v30 = v15;
      v29(v15, v13, v4);
      sub_2759B8548();
      v19 = sub_2759BA518();
      (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
      v20 = v31;
      (*(v5 + 16))(v31, v10, v4);
      sub_2759BA4C8();
      v21 = v32;

      v22 = sub_2759BA4B8();
      v23 = v3;
      v24 = v21;
      v25 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v26 = swift_allocObject();
      v27 = MEMORY[0x277D85700];
      *(v26 + 2) = v22;
      *(v26 + 3) = v27;
      *(v26 + 4) = v24;
      v29(&v26[v25], v20, v4);
      sub_27587D460(0, 0, v23, &unk_2759D12E8, v26);

      v28 = *(v5 + 8);
      v28(v10, v4);
      v28(v30, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2759B5140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_2759B8578();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = sub_2759B85D8();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_2759B8618();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = sub_2759B8348();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();
  sub_2759BA4C8();
  v5[18] = sub_2759BA4B8();
  v19 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759B5348, v19, v18);
}

uint64_t sub_2759B5348()
{
  v1 = v0;
  v3 = v0[17];
  v2 = v0[18];
  v24 = v0[16];
  v25 = v0[15];
  v6 = v0 + 13;
  v4 = v0[13];
  v5 = v6[1];
  v7 = v1[11];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[7];
  v22 = v1[6];
  v23 = v1[12];
  v20 = v1[8];
  v21 = v1[5];
  v26 = v1[4];

  (*(v9 + 104))(v7, *MEMORY[0x277CC9830], v8);
  sub_2759B85E8();
  (*(v9 + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A13030, &qword_2759D12F0);
  v11 = sub_2759B8608();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2759C17A0;
  (*(v12 + 104))(v15 + v14, *MEMORY[0x277CC9968], v11);
  sub_2759B5F20(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  sub_2759B8568();
  sub_2759B85F8();

  (*(v10 + 8))(v20, v22);
  (*(v4 + 8))(v5, v23);
  v16 = sub_2759B8338();
  LOBYTE(v15) = v17;
  (*(v24 + 8))(v3, v25);
  swift_getKeyPath();
  swift_getKeyPath();
  v1[2] = v16;
  *(v1 + 24) = v15 & 1;

  sub_2759B8CF8();

  v18 = v1[1];

  return v18();
}

uint64_t sub_2759B5634()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_280A0E3F0 != -1)
  {
    swift_once();
  }

  v2 = qword_280A23AA0;
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_2759B5A34;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2759B4A74;
  v9[3] = &block_descriptor_21;
  v5 = _Block_copy(v9);

  v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);

  v7 = *(v0 + OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver);
  *(v0 + OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver) = v6;
  return swift_unknownObjectRelease();
}

void sub_2759B57C8()
{
  if (!qword_280A13028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F5A8, &qword_2759C4010);
    v0 = sub_2759B8D08();
    if (!v1)
    {
      atomic_store(v0, &qword_280A13028);
    }
  }
}

uint64_t sub_2759B582C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_2759BA518();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_27587DA58(0, 0, v6, &unk_2759D12D8, v8);
}

uint64_t sub_2759B5938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2759B5958, 0, 0);
}

uint64_t sub_2759B5958()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2759B4DFC();
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2759B59F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesDrilldownModel();
  result = sub_2759B8CC8();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2759B5A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2759B5938(a1, v4, v5, v6);
}

uint64_t sub_2759B5B08(uint64_t a1)
{
  v4 = *(sub_2759B8578() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2759B5140(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2759B5C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2759B8CE8();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2759B5C88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2759B8CF8();
}

uint64_t sub_2759B5D34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2759BA8A8();
    v6 = 0;
    v7 = v5 + 56;
    v29 = v3;
    v30 = a1 + 32;
    v8 = v3;
    while (1)
    {
      v9 = *(v30 + 8 * v6);
      v10 = *(v5 + 40);
      sub_2759BA298();
      sub_2759BABD8();
      v31 = v9;
      sub_2759BA328();
      v11 = sub_2759BAC08();

      v13 = -1 << *(v5 + 32);
      v14 = v11 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_15;
      }

      v18 = ~v13;
      do
      {
        v19 = *(*(v5 + 48) + 8 * v14);
        v20 = sub_2759BA298();
        v22 = v21;
        if (v20 == sub_2759BA298() && v22 == v23)
        {

LABEL_4:
          v8 = v29;
          goto LABEL_5;
        }

        v25 = sub_2759BAAC8();

        if (v25)
        {

          goto LABEL_4;
        }

        v14 = (v14 + 1) & v18;
        v15 = v14 >> 6;
        v16 = *(v7 + 8 * (v14 >> 6));
        v17 = 1 << v14;
      }

      while (((1 << v14) & v16) != 0);
      v8 = v29;
LABEL_15:
      *(v7 + 8 * v15) = v17 | v16;
      *(*(v5 + 48) + 8 * v14) = v31;
      v26 = *(v5 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
        return result;
      }

      *(v5 + 16) = v28;
LABEL_5:
      if (++v6 == v8)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2759B5F20(uint64_t a1)
{
  v2 = sub_2759B8608();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A13038, &unk_2759D1340);
    v10 = sub_2759BA8A8();
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
      sub_2759B6218(&qword_280A13040);
      v18 = sub_2759BA218();
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
          sub_2759B6218(&qword_280A13048);
          v25 = sub_2759BA228();
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

uint64_t sub_2759B6218(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2759B8608();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}