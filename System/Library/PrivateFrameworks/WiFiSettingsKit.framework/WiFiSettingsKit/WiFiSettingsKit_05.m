void sub_27410ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BC8, &qword_2741D1A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CB550;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v11 = sub_274177EC4(inited);
  swift_setDeallocating();
  sub_27409D420(inited + 32, &qword_280939BD0, &qword_2741D1A58);
  v12 = [*(v5 + 16) userSettings];
  if (v12)
  {
    v13 = v12;
    v14 = [v13 OSSpecificAttributes];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2741C7D6C();

      *(&v32 + 1) = 0x80000002741DA4E0;
      sub_2741C850C();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BE0, &qword_2741D1A68);
      *&v32 = v11;
      sub_27409D2F8(&v32, v31);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_27410644C(v31, &v34, isUniquelyReferenced_nonNull_native);
      sub_27409D2A4(&v34);
      if (v16)
      {
        v18 = sub_2741C7D4C();
      }

      else
      {
        v18 = 0;
      }

      [v13 setOSSpecificAttributes_];
    }

    else
    {
      [v13 setOSSpecificAttributes_];
    }
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D02B60]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BD8, &qword_2741D1A60);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_2741CB550;
    v34 = 0xD000000000000017;
    v35 = 0x80000002741DA4E0;
    v13 = v19;
    sub_2741C850C();
    *(v20 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BE0, &qword_2741D1A68);
    *(v20 + 72) = v11;

    sub_274177FD8(v20);
    swift_setDeallocating();
    sub_27409D420(v20 + 32, &qword_280939BE8, qword_2741D1A70);
    v21 = sub_2741C7D4C();

    [v13 setOSSpecificAttributes_];
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_2741C856C();

  v34 = 0xD000000000000016;
  v35 = 0x80000002741DC0F0;
  v22 = sub_2741C7D7C();
  v24 = v23;

  MEMORY[0x2743E5FB0](v22, v24);

  sub_2740CB460(v34, v35);

  v25 = *(v5 + 16);
  v34 = 0;
  v26 = v25;
  v27 = [v26 applyUserSettings:v13 properties:0 error:&v34];

  if (v27)
  {
    v28 = v34;
  }

  else
  {
    v29 = v34;
    sub_2741C681C();

    swift_willThrow();
  }

  v30 = *MEMORY[0x277D85DE8];
}

__n128 sub_27410F168@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  v13 = (*(a4 + 32))(v6, a4);
  v15 = v14;
  v16 = [*(a2 + 16) interfaceName];
  if (v16)
  {
    v50 = v9;
    v51 = v6;
    v17 = v16;
    v18 = sub_2741C7E7C();
    v20 = v19;

    v21 = [*(a2 + 16) userSettings];
    if (v21)
    {
      v22 = v21;

      sub_2740CCBEC(v22, v18, v20, v13, v15, v71);
      v23 = v77;
      if (v77)
      {
        v24 = v76;
        v54 = v74;
        v55 = v75;
        v52 = v72;
        v53 = v73;
        v25 = v71[0];

LABEL_18:
        v9 = v50;
        v6 = v51;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v29 = [*(a2 + 16) IPv4Addresses];
    if (v29)
    {
      v30 = v29;
      v31 = sub_2741C7FEC();
    }

    else
    {
      v31 = 0;
    }

    v32 = [*(a2 + 16) IPv4SubnetMasks];
    if (v32)
    {
      v33 = v32;
      v34 = sub_2741C7FEC();
    }

    else
    {
      v34 = 0;
    }

    v35 = [*(a2 + 16) IPv4RouterAddress];
    if (v35)
    {
      v36 = v35;
      v37 = sub_2741C7E7C();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v57[0] = 0;
    *&v58 = v31;
    *(&v58 + 1) = v34;
    *&v59 = v37;
    *(&v59 + 1) = v39;
    v60 = 0u;
    v61 = 0u;
    v62 = v18;
    v63 = v20;
    v64[0] = 0;
    *&v65 = v31;
    *(&v65 + 1) = v34;
    *&v66 = v37;
    *(&v66 + 1) = v39;
    v67 = 0u;
    v68 = 0u;
    v69 = v18;
    v70 = v20;
    sub_2740B2AC0(v57, &v56);
    sub_2740B2B1C(v64);
    v24 = v62;
    v23 = v63;
    v54 = v60;
    v55 = v61;
    v52 = v58;
    v53 = v59;
    v25 = v57[0];
    goto LABEL_18;
  }

  sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000017, 0x80000002741DC1E0);
  v26 = [*(a2 + 16) IPv4Addresses];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2741C7FEC();
  }

  else
  {
    v28 = 0;
  }

  v40 = [*(a2 + 16) IPv4SubnetMasks];
  if (v40)
  {
    v41 = v40;
    v42 = sub_2741C7FEC();
  }

  else
  {
    v42 = 0;
  }

  v43 = [*(a2 + 16) IPv4RouterAddress];
  if (v43)
  {
    v44 = v43;
    v45 = sub_2741C7E7C();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v64[0] = 0;
  *&v65 = v28;
  *(&v65 + 1) = v42;
  *&v66 = v45;
  *(&v66 + 1) = v47;
  v67 = 0u;
  v68 = 0u;
  v69 = 0x6E776F6E6B6E75;
  v70 = 0xE700000000000000;
  v71[0] = 0;
  *&v72 = v28;
  *(&v72 + 1) = v42;
  *&v73 = v45;
  *(&v73 + 1) = v47;
  v74 = 0u;
  v75 = 0u;
  v76 = 0x6E776F6E6B6E75;
  v77 = 0xE700000000000000;
  sub_2740B2AC0(v64, v57);
  sub_2740B2B1C(v71);
  v24 = v69;
  v23 = v70;
  v54 = v67;
  v55 = v68;
  v52 = v65;
  v53 = v66;
  v25 = v64[0];
LABEL_27:
  (*(v9 + 8))(v12, v6);
  *a5 = v25;
  v48 = v53;
  *(a5 + 8) = v52;
  *(a5 + 24) = v48;
  result = v55;
  *(a5 + 40) = v54;
  *(a5 + 56) = result;
  *(a5 + 72) = v24;
  *(a5 + 80) = v23;
  return result;
}

uint64_t sub_27410F5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  v13 = (*(a4 + 32))(a3, a4);
  v15 = v14;
  v16 = [*(a2 + 16) interfaceName];
  if (!v16)
  {
    v34 = 0x6E776F6E6B6E75;

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000016, 0x80000002741DC1C0);
    v28 = [*(a2 + 16) DNSServerAddresses];
    if (v28)
    {
      v29 = v28;
      v23 = sub_2741C7FEC();

      v27 = 0;
      v24 = 0;
      v25 = 0;
      v20 = 0xE700000000000000;
LABEL_10:
      v26 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v27 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 0xE700000000000000;
LABEL_13:
    v23 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v17 = v16;
  v18 = sub_2741C7E7C();
  v20 = v19;

  v21 = [*(a2 + 16) userSettings];
  v34 = v18;
  if (!v21)
  {

    goto LABEL_8;
  }

  v22 = v21;

  sub_2740CDB4C(v22, v18, v20, v13, v15, &v35);
  v23 = v36;
  if (!v36)
  {
LABEL_8:
    v30 = [*(a2 + 16) DNSServerAddresses];
    if (v30)
    {
      v31 = v30;
      v23 = sub_2741C7FEC();

      v27 = 0;
      v24 = 0;
      v25 = 0;
      goto LABEL_10;
    }

    v27 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_13;
  }

  v33 = v41;
  v34 = v40;
  v24 = v38;
  v25 = v39;
  v26 = v37;
  v42 = v35;

  v27 = v42;
  v20 = v33;
LABEL_14:
  result = (*(v9 + 8))(v12, a3);
  *a5 = v27;
  *(a5 + 8) = v23;
  *(a5 + 16) = v26;
  *(a5 + 24) = v24;
  *(a5 + 32) = v25;
  *(a5 + 40) = v34;
  *(a5 + 48) = v20;
  return result;
}

uint64_t sub_27410F8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v9 = v33;
  v10 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v11 = *(a4 + 32);
  v12 = v11(a3, a4);
  v14 = v13;
  v15 = [*(a2 + 16) interfaceName];
  if (!v15)
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000013, 0x80000002741DC150);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v26 = 0x6E776F6E6B6E75;
    v27 = 0xE700000000000000;
LABEL_8:
    v25 = sub_274113B80(v26, v27);
    goto LABEL_9;
  }

  v16 = v15;
  v31 = sub_2741C7E7C();
  v18 = v17;

  v19 = [*(a2 + 16) userSettings];
  if (!v19)
  {

    v21 = v10;
    v23 = v31;
    goto LABEL_7;
  }

  v20 = v19;
  sub_2741C856C();

  v30 = v14;
  v21 = v10;
  v22 = v11(v9, v10);
  MEMORY[0x2743E5FB0](v22);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741DC1A0);

  type metadata accessor for ProxySettings();
  swift_allocObject();

  v23 = v31;
  v24 = sub_274113658(v20, v31, v18, v12, v30);
  if (!v24)
  {
LABEL_7:
    sub_2741C856C();

    v28 = v11(v9, v21);
    MEMORY[0x2743E5FB0](v28);

    sub_2740CB460(0xD000000000000025, 0x80000002741DC170);

    type metadata accessor for ProxySettings();
    swift_allocObject();
    v26 = v23;
    v27 = v18;
    goto LABEL_8;
  }

  v25 = v24;

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v25;
}

unint64_t sub_27410FC08()
{
  result = qword_280939BC0;
  if (!qword_280939BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BC0);
  }

  return result;
}

unint64_t sub_27410FC70()
{
  result = qword_280939BF0;
  if (!qword_280939BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BF0);
  }

  return result;
}

uint64_t sub_27410FCC4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_27410FDCC()
{
  v0 = objc_opt_self();
  v1 = sub_2741C878C();

  return [v0 convertWiFiErrorCodeToWiFiEAPErrorCode_];
}

uint64_t sub_27410FE34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BF8, &qword_2741D1B88);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C00, &qword_2741D1B90);
  v1 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v1);

  MEMORY[0x2743E5FB0](0x6D616E7265737520, 0xEB00000000203A65);

  v2 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v2);

  MEMORY[0x2743E5FB0](0x726F777373617020, 0xEB00000000203A64);

  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C08, &qword_2741D1B98);
  v3 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v3);

  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741DC200);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_274110034()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  return sub_27410FE34();
}

BOOL sub_274110040()
{
  sub_2740A609C(v0, &v8);
  v1 = v8;
  v2 = v9;
  v3 = v10;
  sub_2741C856C();

  v4 = sub_27410FE34();
  MEMORY[0x2743E5FB0](v4);

  sub_2740CB460(0xD000000000000029, 0x80000002741DC220);

  if (v1)
  {

    v5 = 0;
  }

  else
  {
    v5 = v2 != 2 || v3 != 2;
  }

  sub_2741110E8(&v11);
  return v5;
}

uint64_t sub_274110160()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 48);
  if (v4 > 6)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[5];
    if (*(v0 + 48) <= 9u)
    {
      if (v4 == 7)
      {
        sub_2741C856C();
        MEMORY[0x2743E5FB0](10256610, 0xA300000000000000);
        MEMORY[0x2743E5FB0](v2, v1);
        MEMORY[0x2743E5FB0](0x1000000000000020, 0x80000002741DC5E0);
        MEMORY[0x2743E5FB0](v3, v10);
        MEMORY[0x2743E5FB0](0x746F6E202C9D80E2, 0xAC0000009C80E220);
        MEMORY[0x2743E5FB0](v9, v11);
        MEMORY[0x2743E5FB0](10322146, 0xA300000000000000);
        v12 = [objc_opt_self() mainBundle];
      }

      else
      {
        if (v4 != 8)
        {
          sub_2741C856C();

          MEMORY[0x2743E5FB0](v2, v1);
          MEMORY[0x2743E5FB0](0x1000000000000020, 0x80000002741DC580);
          v13 = [objc_opt_self() mainBundle];
          goto LABEL_24;
        }

        sub_2741C856C();

        MEMORY[0x2743E5FB0](v2, v1);
        MEMORY[0x2743E5FB0](0x80E26957209D80E2, 0xAB00000000694691);
        v12 = [objc_opt_self() mainBundle];
      }

      goto LABEL_23;
    }

    if (v4 - 10 >= 2)
    {
      v15 = [objc_opt_self() mainBundle];
      v18 = sub_2741C676C();

      return v18;
    }

    goto LABEL_14;
  }

  if (*(v0 + 48) <= 2u)
  {
    if (!*(v0 + 48) || v4 != 1)
    {
      sub_2741C856C();

      MEMORY[0x2743E5FB0](v2, v1);
      MEMORY[0x2743E5FB0](11763938, 0xA300000000000000);
      v12 = [objc_opt_self() mainBundle];
LABEL_23:
      v13 = v12;
      goto LABEL_24;
    }

LABEL_14:
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v2, v1);
    MEMORY[0x2743E5FB0](11763938, 0xA300000000000000);
    v13 = [objc_opt_self() mainBundle];
LABEL_24:
    v16 = sub_2741C676C();

    return v16;
  }

  if (*(v0 + 48) > 4u)
  {
    v14 = [objc_opt_self() mainBundle];
    v17 = sub_2741C676C();

    return v17;
  }

  if (v4 != 3)
  {
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v2, v1);
    MEMORY[0x2743E5FB0](10322146, 0xA300000000000000);
    v12 = [objc_opt_self() mainBundle];
    goto LABEL_23;
  }

  v5 = v0[1];
  v6 = v0[2];
  v7 = *v0;

  return sub_27410D598(v5, v6, v7);
}

uint64_t sub_2741109F4()
{
  v1 = v0->i64[0];
  v2 = v0->i64[1];
  v3 = 0;
  switch(v0[3].i8[0])
  {
    case 1:
    case 4:
      return v3;
    case 2:
    case 7:
    case 8:
    case 9:
      goto LABEL_21;
    case 3:
      v4 = v0->i64[0];
      if (v4 <= 3)
      {
        if (v4 == 2)
        {
          if (qword_280937968 != -1)
          {
            swift_once();
          }

          v5 = &qword_280946A18;
        }

        else
        {
          if (v4 != 3)
          {
LABEL_32:
            if (qword_2809379A8 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A98;
            goto LABEL_35;
          }

          if (qword_280937978 != -1)
          {
            swift_once();
          }

          v5 = &qword_280946A38;
        }
      }

      else
      {
        switch(v4)
        {
          case 4u:
            if (qword_280937980 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A48;
            break;
          case 5u:
            if (qword_280937988 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A58;
            break;
          case 6u:
            if (qword_280937998 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A78;
            break;
          default:
            goto LABEL_32;
        }
      }

LABEL_35:
      v3 = *v5;
      v11 = v5[1];

      return v3;
    case 5:
      sub_2741C856C();

      MEMORY[0x2743E5FB0](v1, v2);
      MEMORY[0x2743E5FB0](0x1000000000000015, 0x80000002741DC4A0);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_15;
    case 6:
      sub_2741C856C();
      MEMORY[0x2743E5FB0](0x1000000000000017, 0x80000002741DC430);
      MEMORY[0x2743E5FB0](v1, v2);
      MEMORY[0x2743E5FB0](0x100000000000002BLL, 0x80000002741DC450);
      v7 = [objc_opt_self() mainBundle];
      goto LABEL_14;
    case 0xA:
    case 0xB:
      return 0;
    case 0xC:
      v6 = vorrq_s8(v0[1], v0[2]);
LABEL_21:
      v9 = [objc_opt_self() mainBundle];
      v3 = sub_2741C676C();

      return v3;
    default:
      sub_2741C856C();

      MEMORY[0x2743E5FB0](v1, v2);
      MEMORY[0x2743E5FB0](11763938, 0xA300000000000000);
      v7 = [objc_opt_self() mainBundle];
LABEL_14:
      v8 = v7;
LABEL_15:
      v3 = sub_2741C676C();

      return v3;
  }
}

uint64_t sub_2741110E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB8, &unk_2741D0410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274111150(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_11;
  }

  v2 = sub_2741251AC(0xD000000000000019, 0x80000002741DC250);
  if (v3 & 1) != 0 && (sub_27409D308(*(a1 + 56) + 32 * v2, v14), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C10, &qword_2741D1BA0), (swift_dynamicCast()))
  {
    v4 = v13;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if (!*(a1 + 16))
    {
LABEL_11:

      return v4;
    }
  }

  v5 = sub_2741251AC(0xD000000000000012, 0x80000002741DC270);
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_27409D308(*(a1 + 56) + 32 * v5, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v13;
    strcpy(v14, "UserName");
    BYTE1(v14[2]) = 0;
    HIWORD(v14[2]) = 0;
    v14[3] = -402653184;
    MEMORY[0x28223BE20](v7);
    v12 = v14;
    v9 = sub_27410FCC4(sub_2741113A8, v11, v13);
    strcpy(v14, "UserPassword");
    BYTE1(v14[3]) = 0;
    HIWORD(v14[3]) = -5120;
    MEMORY[0x28223BE20](v9);
    v12 = v14;
    sub_27410FCC4(sub_274111730, v11, v8);
  }

  return v4;
}

uint64_t sub_2741113C4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2741C86DC() & 1;
  }
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit0aB16AssociationErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 0xB)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_274111454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 49))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 48);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_27411149C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2741114F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit11Credentials_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274111540(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27411159C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_274111620(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27411167C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2741116E0(uint64_t a1)
{
  result = sub_2740F21F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_274111708(uint64_t a1)
{
  result = sub_2740F2380();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27411174C()
{
  type metadata accessor for CurrentUser();
  result = swift_initStaticObject();
  qword_280939C18 = result;
  return result;
}

uint64_t static CurrentUser.shared.getter()
{
  type metadata accessor for CurrentUser();

  return swift_initStaticObject();
}

BOOL sub_2741117CC()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = [v0 ubiquityIdentityToken];

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_2741119B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a3 + 120);
  v6[0] = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = v3;
  return v4(v6);
}

uint64_t sub_274111A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 144);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v9[0] = *a1;
  v6 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = v6;
  v7 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v7;
  v14 = v4;
  v15 = v5;
  return v3(v9);
}

uint64_t sub_274111AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 168);
  v6[0] = *a1;
  v4 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v4;
  return v3(v6);
}

uint64_t sub_274111B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a3 + 192);
  v8[0] = *a1;
  v6 = *(a1 + 24);
  v9 = *(a1 + 8);
  v10 = v6;
  v11 = v3;
  v12 = v4;
  return v5(v8);
}

uint64_t sub_274111BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a3 + 216);
  v7[0] = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = v3;
  v5 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = v5;
  v13 = *(a1 + 80);
  return v4(v7);
}

uint64_t sub_274111C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_27409D648;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_274111D88()
{
  result = qword_280939C20;
  if (!qword_280939C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C20);
  }

  return result;
}

uint64_t sub_274111E54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v2 = sub_2741C867C();
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
    sub_27409D308(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_27409D2F8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_27409D2F8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_27409D2F8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2741C84EC();
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
    result = sub_27409D2F8(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_27411211C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v2 = sub_2741C867C();
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
    sub_2740BA2B0(*(a1 + 48) + 40 * v13, v36);
    v14 = (*(a1 + 56) + 16 * v13);
    v15 = v14[1];
    v38 = *v14;
    v39 = v15;
    v24 = v36[0];
    v26 = v36[1];
    v28 = v37;
    *&v35[0] = v38;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    v31 = v24;
    v32 = v26;
    v33 = v28;
    sub_27409D2F8(&v30, v34);
    v25 = v31;
    v27 = v32;
    v29 = v33;
    sub_27409D2F8(v34, v35);
    v16 = *(v2 + 40);
    result = sub_2741C84EC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v27;
    *(v11 + 32) = v29;
    result = sub_27409D2F8(v35, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2741123D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v2 = sub_2741C867C();
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
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_27409D2F8(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_27409D2F8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2741C84EC();
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
    result = sub_27409D2F8(v33, (*(v2 + 56) + 32 * v10));
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

void *sub_274112688()
{
  v1 = v0;
  v53 = *MEMORY[0x277D85DE8];
  v2 = sub_2741C682C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v48 - v9;
  v11 = sub_2741C689C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0xD000000000000045;
  v1[3] = 0x80000002741DC760;
  (*(v12 + 56))(v10, 1, 1, v11);
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
  sub_2741C688C();
  v16 = v48[1];
  v17 = sub_2741C68AC();
  if (v16)
  {
    (*(v12 + 8))(v15, v11);
    v19 = v1[3];

    v20 = v1;
LABEL_3:
    type metadata accessor for EnterpriseNetworkArchiveFetcher();
    swift_deallocPartialClassInstance();
    goto LABEL_10;
  }

  v21 = v17;
  v22 = v18;
  (*(v12 + 8))(v15, v11);
  v1[4] = v21;
  v1[5] = v22;
  v23 = objc_opt_self();
  v24 = v1[4];
  v25 = v1[5];
  sub_274112DBC(v24, v25);
  v26 = sub_2741C68CC();
  sub_274112D68(v24, v25);
  v51 = 0;
  v27 = [v23 propertyListWithData:v26 options:0 format:0 error:&v51];

  v20 = v1;
  if (!v27)
  {
    v31 = v51;
    sub_2741C681C();

    swift_willThrow();
    v32 = v1[3];

    sub_274112D68(v1[4], v1[5]);
    goto LABEL_3;
  }

  v28 = v51;
  sub_2741C83DC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  if (swift_dynamicCast())
  {
    v29 = v49;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2741C856C();

    v51 = 0xD000000000000017;
    v52 = 0x80000002741DC830;
    v30 = sub_2741C7D7C();
    MEMORY[0x2743E5FB0](v30);

    sub_2740CB460(v51, v52);
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2741C856C();

    v51 = 0xD000000000000027;
    v52 = 0x80000002741DC7B0;
    v33 = v1[4];
    v34 = v1[5];
    sub_274112DBC(v33, v34);
    v35 = sub_2741C68BC();
    MEMORY[0x2743E5FB0](v35);

    sub_274112D68(v33, v34);
    sub_2740CB218(v51, v52, 0x292874696E69, 0xE600000000000000);

    v29 = sub_274177B3C(MEMORY[0x277D84F90]);
  }

  v1[6] = v29;
  sub_274111E54(v36);

  v37 = objc_allocWithZone(MEMORY[0x277D02B58]);
  v38 = sub_2741C7D4C();

  v39 = [v37 initWithScanRecord:v38 includeProperties:0];

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_2741C856C();

  v51 = 0xD000000000000026;
  v52 = 0x80000002741DC7E0;
  v40 = [v39 description];
  v41 = sub_2741C7E7C();
  v43 = v42;

  MEMORY[0x2743E5FB0](v41, v43);

  sub_2740CB460(v51, v52);

  v44 = v39;
  sub_27409D85C(v44, &v51);
  sub_2740ACAC8(&v51, (v1 + 7));
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_2741C856C();

  v49 = 0xD000000000000018;
  v50 = 0x80000002741DC810;
  v45 = sub_27409DCD8();
  MEMORY[0x2743E5FB0](v45);

  sub_2740CB460(v49, v50);

  sub_2740ACB2C(&v51);
LABEL_10:
  v46 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_274112CF4()
{
  v1 = v0[3];

  sub_274112D68(v0[4], v0[5]);
  v2 = v0[6];

  sub_2740ACB2C((v0 + 7));

  return swift_deallocClassInstance();
}

uint64_t sub_274112D68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_274112DBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_274112E24()
{
  result = qword_280939C28;
  if (!qword_280939C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C28);
  }

  return result;
}

unint64_t sub_274112E7C()
{
  result = qword_280939C30;
  if (!qword_280939C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C30);
  }

  return result;
}

unint64_t sub_274112ED4()
{
  result = qword_280939C38;
  if (!qword_280939C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C38);
  }

  return result;
}

unint64_t sub_274112F2C()
{
  result = qword_280939C40;
  if (!qword_280939C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C40);
  }

  return result;
}

id WiFiKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WiFiKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2741132F8(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [*v3 *a3];
  if (result)
  {
    v5 = result;
    v6 = sub_2741C7E7C();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_274113354()
{
  result = [*v0 channel];
  if (result)
  {
    v2 = result;
    v3 = [result integerValue];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2741133E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_27409D648;

  return v11(a1, a2, a3);
}

uint64_t WiFiStateProvider.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WiFiStateProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_274113658(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 80) = 1;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = a2;
  *(v5 + 136) = a3;

  v12 = [a1 OSSpecificAttributes];
  if (!v12)
  {

    v40 = 0u;
    v41 = 0u;
    goto LABEL_15;
  }

  v13 = v12;
  v14 = sub_2741C7D6C();

  sub_2741C850C();
  if (!*(v14 + 16) || (v15 = sub_274125164(&v38), (v16 & 1) == 0))
  {

    sub_27409D2A4(&v38);
    v40 = 0u;
    v41 = 0u;
    goto LABEL_13;
  }

  sub_27409D308(*(v14 + 56) + 32 * v15, &v40);
  sub_27409D2A4(&v38);

  if (!*(&v41 + 1))
  {
LABEL_13:

LABEL_15:
    sub_2740B29E8(&v40);
LABEL_16:
    sub_2740CB218(0xD000000000000023, 0x80000002741DA520, 0xD000000000000029, 0x80000002741DA550);
LABEL_17:

    v31 = *(v6 + 32);

    v32 = *(v6 + 48);

    v33 = *(v6 + 64);

    v34 = *(v6 + 96);

    v35 = *(v6 + 120);

    v36 = *(v6 + 136);

    type metadata accessor for ProxySettings();
    swift_deallocPartialClassInstance();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v17 = v38;
  if (!*(v38 + 16) || (v18 = sub_2741251AC(a4, a5), (v19 & 1) == 0))
  {

LABEL_21:

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_2741C856C();

    v38 = 0xD000000000000017;
    v39 = 0x80000002741DA580;
    MEMORY[0x2743E5FB0](a4, a5);

    sub_2740CB218(v38, v39, 0xD000000000000029, 0x80000002741DA550);

    goto LABEL_17;
  }

  sub_27409D308(*(v17 + 56) + 32 * v18, &v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = v40;
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v20, *(&v20 + 1), a2, a3))
  {
    goto LABEL_21;
  }

  v21 = *(v6 + 120);
  *(v6 + 112) = v20;

  v22 = sub_2740AE850();
  if (!v22)
  {
    sub_2740CB218(0xD000000000000030, 0x80000002741DCA20, 0xD000000000000029, 0x80000002741DA550);

    goto LABEL_17;
  }

  *(v6 + 16) = *(v22 + 16);
  v23 = *(v22 + 32);
  v24 = *(v6 + 32);
  *(v6 + 24) = *(v22 + 24);
  *(v6 + 32) = v23;
  v25 = v22;

  v26 = *(v25 + 48);
  v27 = *(v6 + 48);
  *(v6 + 40) = *(v25 + 40);
  *(v6 + 48) = v26;

  v28 = *(v25 + 80);
  *(v6 + 72) = *(v25 + 72);
  *(v6 + 80) = v28;
  v29 = *(v25 + 96);
  v30 = *(v6 + 96);
  *(v6 + 88) = *(v25 + 88);
  *(v6 + 96) = v29;

  *(v6 + 81) = *(v25 + 81);
  *(v6 + 104) = *(v25 + 104);
  *(v6 + 105) = *(v25 + 105);
  *(v6 + 17) = 1;
  sub_274113D14();
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741DCA60);
  *&v40 = v25;
  type metadata accessor for ProxySettings();
  sub_2741C862C();
  sub_2740CB460(v38, v39);

  return v6;
}

uint64_t sub_274113B80(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  *(v2 + 16) = 0;
  *(v2 + 104) = 0;
  return v2;
}

uint64_t sub_274113BB8(__CFArray *a1, uint64_t a2)
{
  v4 = v2;
  v7 = v2[14];
  v8 = v4[15];
  v9 = v4[16];
  v10 = v4[17];
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v7, v8, v9, v10))
  {
    goto LABEL_5;
  }

  v11 = sub_2740AFE20(v4, a1, a2);
  if (v3)
  {
LABEL_6:

    return a2;
  }

  v13 = v12;
  if (!v12)
  {
LABEL_5:
    sub_2740CB218(0xD000000000000017, 0x80000002741DA500, 0x7469772865766173, 0xEB00000000293A68);
    sub_2740B2004();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  a2 = v11;

  v14 = v4[15];
  v4[14] = a2;
  v4[15] = v13;

  return a2;
}

uint64_t sub_274113D14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + 32);
  if (v5 && (*(v0 + 80) & 1) == 0 && (v6 = *(v0 + 48)) != 0)
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = sub_2741C80DC();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v7;
    v11[5] = v5;
    v11[6] = v8;
    v11[7] = v9;
    v11[8] = v6;
    v11[9] = v0;

    sub_2740CE980(0, 0, v4, &unk_2741D24B8, v11);
  }

  else
  {

    return sub_2740CB218(0xD00000000000003ALL, 0x80000002741DC9C0, 0xD000000000000012, 0x80000002741DCA00);
  }
}

uint64_t sub_274113ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_274113EFC, 0, 0);
}

uint64_t sub_274113EFC()
{
  type metadata accessor for ProxyKeychainOperation();
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = [objc_opt_self() sharedCredentialStorage];

  return MEMORY[0x2822009F8](sub_274113FA0, v1, 0);
}

uint64_t sub_274113FA0()
{
  v1 = v0[8];
  v0[9] = sub_2740E5C0C(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_274114018, 0, 0);
}

uint64_t sub_274114018()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  v5 = *(v4 + 64);
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;

  v6 = v0[1];

  return v6();
}

uint64_t sub_274114090()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[12];

  v5 = v0[15];

  v6 = v0[17];

  return swift_deallocClassInstance();
}

unint64_t sub_274114128()
{
  result = qword_280939C48;
  if (!qword_280939C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939038, &qword_2741CEA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C48);
  }

  return result;
}

unint64_t sub_2741141A0()
{
  result = qword_280939C50;
  if (!qword_280939C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C50);
  }

  return result;
}

uint64_t sub_2741141F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_274114244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_27409D648;

  return sub_274113ECC(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_274114330@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_274114774();
  sub_2741C6A0C();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2741143AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27411446C(v2, v3);
}

uint64_t sub_2741143EC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_274114774();
  sub_2741C6A0C();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_27411446C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_2741C86DC() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_274114774();
    sub_2741C69FC();
  }
}

uint64_t sub_27411459C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC15WiFiSettingsKit9DNSServer___observationRegistrar;
  v3 = sub_2741C6A4C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DNSServer()
{
  result = qword_280939C60;
  if (!qword_280939C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274114694()
{
  result = sub_2741C6A4C();
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

uint64_t sub_274114734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27411446C(v2, v3);
}

unint64_t sub_274114774()
{
  result = qword_280938770;
  if (!qword_280938770)
  {
    type metadata accessor for DNSServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938770);
  }

  return result;
}

id sub_2741147CC@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 networkType];
  if (((result - 1) & 0xF8) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x706050004030201uLL >> (8 * (result - 1));
  }

  *a1 = v4;
  return result;
}

id sub_27411487C(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [*v3 *a3];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2741148AC()
{
  v1 = [*v0 deviceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2741C7E7C();

  return v3;
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_274114984(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_2741149CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274114A68()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274114BA8()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274114CE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C70, &qword_2741D2728);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-v4];
  v16 = v0;
  LOBYTE(v4) = *(v0 + 72);
  if (*(v0 + 177) == 1)
  {
    if (*(v0 + 72))
    {
      if (qword_280937850 != -1)
      {
        swift_once();
      }

      v6 = &qword_2809467E8;
    }

    else
    {
      if (qword_280937848 != -1)
      {
        swift_once();
      }

      v6 = &qword_2809467D8;
    }
  }

  else if (*(v0 + 72))
  {
    if (qword_280937840 != -1)
    {
      swift_once();
    }

    v6 = &qword_2809467C8;
  }

  else
  {
    if (qword_280937838 != -1)
    {
      swift_once();
    }

    v6 = &qword_2809467B8;
  }

  v7 = v6[1];
  v19 = *v6;
  v20 = v7;
  sub_2740A6A74();

  v19 = sub_2741C76AC();
  v20 = v8;
  v21 = v9 & 1;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C78, &unk_2741D2730);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F80, &unk_2741CB690);
  v12 = sub_2741166BC();
  v17 = v11;
  v18 = v12;
  swift_getOpaqueTypeConformance2();
  sub_2741C7BAC();
  v13 = *(v0 + 64);
  LOBYTE(v17) = *(v0 + 56);
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  sub_274116720();
  sub_2741C788C();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_274115040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - v5;
  sub_2741167F4(a1, v18);
  v7 = swift_allocObject();
  v8 = v18[9];
  *(v7 + 144) = v18[8];
  *(v7 + 160) = v8;
  *(v7 + 176) = v18[10];
  *(v7 + 192) = v19;
  v9 = v18[5];
  *(v7 + 80) = v18[4];
  *(v7 + 96) = v9;
  v10 = v18[7];
  *(v7 + 112) = v18[6];
  *(v7 + 128) = v10;
  v11 = v18[1];
  *(v7 + 16) = v18[0];
  *(v7 + 32) = v11;
  v12 = v18[3];
  *(v7 + 48) = v18[2];
  *(v7 + 64) = v12;
  v15[6] = a1;
  sub_2741C7A7C();
  v13 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v15[2] = a1;
  sub_2741166BC();
  sub_2741C786C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_274115260(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_2741152C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 72) == 1)
  {
    if (qword_280937830 != -1)
    {
      swift_once();
    }

    v3 = &qword_2809467A8;
  }

  else
  {
    if (qword_280937828 != -1)
    {
      swift_once();
    }

    v3 = &qword_280946798;
  }

  v4 = v3[1];
  v9 = *v3;

  sub_2740A6A74();
  result = sub_2741C76AC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_27411539C(uint64_t a1)
{
  v2 = sub_2741C795C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v7 = *(a1 + 177);
  sub_274115A48();
  if (v7 > 1)
  {
    sub_2740A6A74();
    sub_2741C76AC();
    *&v46[0] = sub_274116848();
    *(&v46[0] + 1) = v10;

    sub_2741C76AC();
    if (qword_2809378B8 != -1)
    {
      swift_once();
    }

    v46[0] = xmmword_2809468B8;

    v11 = sub_2741C76AC();
    v13 = v12;
    v15 = v14;
    sub_2741C794C();
    sub_2740A6AC8(v11, v13, v15 & 1);

    if (qword_2809378C0 != -1)
    {
      swift_once();
    }

    v46[0] = xmmword_2809468C8;

    v16 = sub_2741C76AC();
    v18 = v17;
    v20 = v19;
    sub_2741C794C();
    sub_2740A6AC8(v16, v18, v20 & 1);
  }

  else
  {
    sub_2740A6A74();
    sub_2741C76AC();
    *&v46[0] = sub_274116848();
    *(&v46[0] + 1) = v8;

    sub_2741C76AC();
    if (*(a1 + 72) == 1)
    {
      if (qword_280937880 != -1)
      {
        swift_once();
      }

      v9 = &qword_280946848;
    }

    else
    {
      if (qword_280937878 != -1)
      {
        swift_once();
      }

      v9 = &qword_280946838;
    }

    v22 = *v9;
    v21 = v9[1];

    *&v46[0] = v22;
    *(&v46[0] + 1) = v23;
    v24 = sub_2741C76AC();
    v26 = v25;
    v28 = v27;
    sub_2741167F4(a1, v46);
    v29 = swift_allocObject();
    v30 = v46[9];
    v31 = v46[10];
    v32 = v46[7];
    *(v29 + 144) = v46[8];
    *(v29 + 160) = v30;
    *(v29 + 176) = v31;
    *(v29 + 192) = v47;
    v33 = v46[5];
    *(v29 + 80) = v46[4];
    *(v29 + 96) = v33;
    *(v29 + 112) = v46[6];
    *(v29 + 128) = v32;
    v34 = v46[1];
    *(v29 + 16) = v46[0];
    *(v29 + 32) = v34;
    v35 = v46[3];
    *(v29 + 48) = v46[2];
    *(v29 + 64) = v35;
    sub_2741C794C();
    sub_2740A6AC8(v24, v26, v28 & 1);

    if (v7 == 1)
    {
      if (qword_280937890 != -1)
      {
        swift_once();
      }

      v36 = &qword_280946868;
    }

    else
    {
      if (qword_280937888 != -1)
      {
        swift_once();
      }

      v36 = &qword_280946858;
    }

    v38 = *v36;
    v37 = v36[1];

    *&v46[0] = v38;
    *(&v46[0] + 1) = v39;
    v40 = sub_2741C76AC();
    v42 = v41;
    v44 = v43;
    sub_2741C794C();
    sub_2740A6AC8(v40, v42, v44 & 1);
  }

  return sub_2741C792C();
}

uint64_t sub_274115A48()
{
  if (*(v0 + 177))
  {
    if (*(v0 + 177) == 1)
    {
      if (*(v0 + 72))
      {
        if (qword_280937870 != -1)
        {
          swift_once();
        }

        v1 = &qword_280946828;
      }

      else
      {
        if (qword_280937868 != -1)
        {
          swift_once();
        }

        v1 = &qword_280946818;
      }
    }

    else if (*(v0 + 72))
    {
      if (qword_2809378A0 != -1)
      {
        swift_once();
      }

      v1 = &qword_280946888;
    }

    else
    {
      if (qword_280937898 != -1)
      {
        swift_once();
      }

      v1 = &qword_280946878;
    }
  }

  else if (*(v0 + 72))
  {
    if (qword_280937860 != -1)
    {
      swift_once();
    }

    v1 = &qword_280946808;
  }

  else
  {
    if (qword_280937858 != -1)
    {
      swift_once();
    }

    v1 = &qword_2809467F8;
  }

  v2 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2741CB550;
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_27410D7BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  v7 = sub_2741C7E4C();

  return v7;
}

void sub_274115C88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    sub_2741C687C();
    v6 = sub_2741C689C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v3, 1, v6) != 1)
    {
      v8 = sub_2741C684C();
      (*(v7 + 8))(v3, v6);
    }

    [v5 openSensitiveURL:v8 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274115DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  if (*(a1 + 120))
  {
    goto LABEL_12;
  }

  v6 = sub_274114BA8();
  swift_getKeyPath();
  *&v25[0] = v6;
  sub_274116A6C(&qword_280939880, type metadata accessor for NetworksListModel);
  sub_2741C6A0C();

  v7 = *(v6 + 128);

  v8 = *(v7 + 16);

  swift_getKeyPath();
  *&v25[0] = v8;
  sub_274116A6C(&qword_2809382A0, type metadata accessor for CurrentNetworkState);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_274116AB4(v8 + 32, v29);

  sub_2740ACAC8(a1 + 80, v28);
  sub_274116AB4(v29, v25);
  sub_274116AB4(v28, &v26[1]);
  if (!*(&v25[0] + 1))
  {
    sub_27409D420(v28, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v29, &qword_280938340, &qword_2741D1660);
    if (!v26[2])
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_274116AB4(v25, v24);
  if (!v26[2])
  {
    sub_27409D420(v28, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v29, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v24);
LABEL_9:
    sub_27409D420(v25, &qword_280939B80, &qword_2741D4800);
    goto LABEL_10;
  }

  v22[4] = *&v26[9];
  v22[5] = *&v26[11];
  v23 = v27;
  v22[0] = *&v26[1];
  v22[1] = *&v26[3];
  v22[2] = *&v26[5];
  v22[3] = *&v26[7];
  if (v24[0] == *&v26[1])
  {
    sub_27409D420(v28, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v29, &qword_280938340, &qword_2741D1660);
    sub_2740ACB2C(v22);
    sub_2740ACB2C(v24);
LABEL_7:
    sub_27409D420(v25, &qword_280938340, &qword_2741D1660);
LABEL_12:
    v12 = sub_2741C80DC();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_2741167F4(a1, v25);
    sub_2741C80AC();
    v13 = sub_2741C809C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    *(v14 + 16) = v13;
    *(v14 + 24) = v15;
    v16 = *&v26[6];
    *(v14 + 160) = *&v26[4];
    *(v14 + 176) = v16;
    *(v14 + 192) = *&v26[8];
    *(v14 + 208) = v26[10];
    v17 = v25[5];
    *(v14 + 96) = v25[4];
    *(v14 + 112) = v17;
    v18 = *&v26[2];
    *(v14 + 128) = *v26;
    *(v14 + 144) = v18;
    v19 = v25[1];
    *(v14 + 32) = v25[0];
    *(v14 + 48) = v19;
    v20 = v25[3];
    *(v14 + 64) = v25[2];
    *(v14 + 80) = v20;
    sub_2741A771C(0, 0, v5, &unk_2741D2798, v14);

    goto LABEL_13;
  }

  v11 = sub_2741C86DC();
  sub_27409D420(v28, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v29, &qword_280938340, &qword_2741D1660);
  sub_2740ACB2C(v22);
  sub_2740ACB2C(v24);
  sub_27409D420(v25, &qword_280938340, &qword_2741D1660);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = *(a1 + 64);
  LOBYTE(v25[0]) = *(a1 + 56);
  *(&v25[0] + 1) = v9;
  v29[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  v10 = sub_2741C7A4C();
LABEL_13:
  MEMORY[0x28223BE20](v10);
  *&v22[-1] = a1;
  sub_2741C7C5C();
  sub_2741C6DCC();
}

uint64_t sub_274116328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_2741C80AC();
  v4[8] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_2741163C0, v6, v5);
}

uint64_t sub_2741163C0()
{
  v1 = *(v0 + 56);
  *(v0 + 88) = sub_274114A68();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_274116494;

  return sub_274139F44(v1 + 80, 0, 0, 1, v0 + 16);
}

uint64_t sub_274116494()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  v2[13] = v0;

  sub_27409D420((v2 + 2), &qword_280937FB8, &unk_2741D0410);

  v6 = v2[9];
  v7 = v2[10];
  if (v0)
  {
    v8 = sub_27411664C;
  }

  else
  {
    v8 = sub_2741165E8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2741165E8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27411664C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

unint64_t sub_2741166BC()
{
  result = qword_280937F78;
  if (!qword_280937F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F80, &unk_2741CB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937F78);
  }

  return result;
}

unint64_t sub_274116720()
{
  result = qword_280939C80;
  if (!qword_280939C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939C70, &qword_2741D2728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F80, &unk_2741CB690);
    sub_2741166BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C80);
  }

  return result;
}

uint64_t sub_274116848()
{
  if (*(v0 + 177))
  {
    if (*(v0 + 177) == 1)
    {
      if (*(v0 + 72))
      {
        if (qword_280937850 != -1)
        {
          swift_once();
        }

        v1 = &qword_2809467E8;
      }

      else
      {
        if (qword_280937848 != -1)
        {
          swift_once();
        }

        v1 = &qword_2809467D8;
      }
    }

    else if (*(v0 + 72))
    {
      if (qword_2809378B0 != -1)
      {
        swift_once();
      }

      v1 = &qword_2809468A8;
    }

    else
    {
      if (qword_2809378A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_280946898;
    }
  }

  else if (*(v0 + 72))
  {
    if (qword_280937840 != -1)
    {
      swift_once();
    }

    v1 = &qword_2809467C8;
  }

  else
  {
    if (qword_280937838 != -1)
    {
      swift_once();
    }

    v1 = &qword_2809467B8;
  }

  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);

  return MEMORY[0x2821FE8E8](v0, 194, 7);
}

uint64_t sub_274116A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274116AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938340, &qword_2741D1660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274116B24()
{
  v1 = *(v0 + 16);
  sub_274114BA8();
  sub_2741519A0((v1 + 80));
}

uint64_t sub_274116B70()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[15];

  v8 = v0[17];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);

  return MEMORY[0x2821FE8E8](v0, 210, 7);
}

uint64_t sub_274116BE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27409D648;

  return sub_274116328(a1, v4, v5, v1 + 32);
}

uint64_t sub_274116C98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939C70, &qword_2741D2728);
  sub_274116720();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274116D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_27409D648;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_274116EB0()
{
  v1 = v0;
  sub_2741C6A8C();
  v2 = sub_2741C6A6C();
  v3 = MEMORY[0x2743E4B00]();

  if (v3 & 1) == 0 || ([v1 isAllowedInLockdownMode])
  {
    return 0;
  }

  if ([v1 isOpen] & 1) != 0 || (objc_msgSend(v1, sel_isOWE))
  {
    return 2;
  }

  if ([v1 isWEP])
  {
    return 3;
  }

  if ([v1 isWPA])
  {
    return 4;
  }

  if ([v1 hasTKIPCipher])
  {
    return 5;
  }

  return 0;
}

unint64_t sub_274117028()
{
  result = qword_280939CF0;
  if (!qword_280939CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939CF0);
  }

  return result;
}

uint64_t sub_27411716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27411723C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for KnownNetwork()
{
  result = qword_280939CF8;
  if (!qword_280939CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274117338()
{
  sub_2740997A4();
  if (v0 <= 0x3F)
  {
    sub_2740B6954();
    if (v1 <= 0x3F)
    {
      sub_2740B6A70();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27411741C()
{
  sub_27409D4E4((v0 + 9), v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409D1F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_27409D4E4((v0 + 9), v15);
    if (swift_dynamicCast())
    {
      v4 = v14[0];
      v5 = [v14[0] OSSpecificAttributes];
      if (v5)
      {
        v6 = v5;
        v7 = sub_2741C7D6C();

        sub_2741C850C();
        if (*(v7 + 16) && (v8 = sub_274125164(v15), (v9 & 1) != 0))
        {
          sub_27409D308(*(v7 + 56) + 32 * v8, &v12);
          sub_27409D2A4(v15);

          if (*(&v13 + 1))
          {
            sub_27409D2F8(&v12, v14);
            sub_27409D308(v14, v15);
            v3 = sub_2741C7EBC();

            __swift_destroy_boxed_opaque_existential_1Tm(v14);
            return v3;
          }
        }

        else
        {

          sub_27409D2A4(v15);
          v12 = 0u;
          v13 = 0u;
        }
      }

      else
      {

        v12 = 0u;
        v13 = 0u;
      }

      sub_2740B29E8(&v12);
    }

    v3 = *v0;
    v10 = v0[1];

    return v3;
  }

  if (![v14[0] isPasspoint] || (v1 = objc_msgSend(v14[0], sel_displayedOperatorName)) == 0)
  {

    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_2741C7E7C();

  return v3;
}

void sub_274117670(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for KnownNetwork();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v9 = *(v8 + 64);
  v10 = sub_2741C689C();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = [a1 networkName];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2741C7E7C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 32) = [a1 isHotspot];
  *(a2 + 40) = 0;
  if ([a1 isOpen])
  {
    v16 = 1;
  }

  else
  {
    v16 = [a1 isOWE];
  }

  *(a2 + 48) = v16;
  *(a2 + 96) = sub_27409D1F4();
  *(a2 + 104) = &off_2883287E8;
  *(a2 + 72) = a1;
  v17 = a1;
  *(a2 + 112) = [v17 isCarPlay];
  *(a2 + 113) = sub_2740D3E48();
  *(a2 + 114) = [v17 isProfileBased];
  *(a2 + 115) = sub_2740D3E48() == 1;
  *(a2 + 64) = [v17 hiddenState] == 1;
  *(a2 + 56) = [v17 strongestSupportedSecurityType];
  *(a2 + *(v8 + 68)) = [v17 isAutoJoinDisabled] ^ 1;
  v18 = [v17 captiveProfile];

  if (v18)
  {
    v19 = sub_2741C7D6C();

    v22[1] = 0xD000000000000010;
    v22[2] = 0x80000002741DCAE0;
    sub_2741C850C();
    if (*(v19 + 16) && (v20 = sub_274125164(v23), (v21 & 1) != 0))
    {
      sub_27409D308(*(v19 + 56) + 32 * v20, v24);
      sub_27409D2A4(v23);

      if (swift_dynamicCast())
      {
        sub_2741C687C();

        sub_274117D38(v7, a2 + v9);
      }
    }

    else
    {

      sub_27409D2A4(v23);
    }
  }
}

uint64_t sub_27411799C()
{
  sub_27409D4E4(v0 + 72, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_27409D1F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v8[0];
  v2 = [v8[0] OSSpecificAttributes];
  if (!v2)
  {

    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_2741C7D6C();

  sub_2741C850C();
  if (!*(v4 + 16) || (v5 = sub_274125164(&v10), (v6 & 1) == 0))
  {

    sub_27409D2A4(&v10);
LABEL_10:
    *v8 = 0u;
    v9 = 0u;
    goto LABEL_11;
  }

  sub_27409D308(*(v4 + 56) + 32 * v5, v8);

  sub_27409D2A4(&v10);

  if (!*(&v9 + 1))
  {
LABEL_11:
    sub_2740B29E8(v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  return 0;
}

uint64_t sub_274117B58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_274117BA4(uint64_t a1)
{
  *(a1 + 8) = sub_274117C0C(&qword_280939D10);
  result = sub_274117C0C(&qword_280939D18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_274117C0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KnownNetwork();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274117C50()
{
  type metadata accessor for KnownNetwork();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E08, &qword_2741CB368);
  v1 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v1);

  MEMORY[0x2743E5FB0](*v0, v0[1]);
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0x273D656D616E20, 0xE700000000000000);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_274117D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_274117DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_274117E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ConfigureIP4View()
{
  result = qword_280939D20;
  if (!qword_280939D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274117FB0()
{
  sub_2740BAC78(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_274118100(319, &qword_280939D30);
    if (v1 <= 0x3F)
    {
      sub_2740BAC78(319, &qword_280938688, type metadata accessor for NetworkDetailsModel, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_274118100(319, &qword_280939450);
        if (v3 <= 0x3F)
        {
          sub_27411814C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274118100(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2741C7A6C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_27411814C()
{
  if (!qword_280939D38)
  {
    v0 = sub_2741C6CBC();
    if (!v1)
    {
      atomic_store(v0, &qword_280939D38);
    }
  }
}

uint64_t sub_2741181C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2740A6D94(v2, &v17 - v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2741C82AC();
    v16 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2741183C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for ConfigureIP4View();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D40, &qword_2741D2A98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D48, &qword_2741D2AA0);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v24 - v11;
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D50, &unk_2741D2AA8);
  sub_2740A6D24(&qword_280939D58, &qword_280939D50, &unk_2741D2AA8);
  sub_2741C761C();
  sub_27411C038(v2, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v14 = swift_allocObject();
  sub_27411C0A0(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = &v8[*(v5 + 36)];
  *v15 = sub_27411C104;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  if (qword_280937AB8 != -1)
  {
    swift_once();
  }

  v29 = qword_280946D58;
  v30 = qword_280946D60;
  v16 = sub_27411C11C();
  v17 = sub_2740A6A74();
  v18 = MEMORY[0x277D837D0];
  sub_2741C777C();
  v19 = sub_27409D420(v8, &qword_280939D40, &qword_2741D2A98);
  MEMORY[0x28223BE20](v19);
  *(&v24 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F40, &unk_2741CE890);
  v29 = v5;
  v30 = v18;
  v31 = v16;
  v32 = v17;
  swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F48, &qword_2741D04A0);
  v21 = sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0);
  v29 = v20;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_2741C78BC();
  return (*(v9 + 8))(v12, v22);
}

uint64_t sub_2741187D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D88, &qword_2741D2B40);
  v64 = *(v69 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v69);
  v62 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D90, &unk_2741D2B48);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v60 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F68, &qword_2741CE920);
  v10 = *(v63 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v63);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D98, &qword_2741D2B58);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  v20 = type metadata accessor for ConfigureIP4View();
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DA0, &unk_2741D2B60);
  v66 = *(v25 - 8);
  v67 = v25;
  v26 = *(v66 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v65 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v60 - v29;
  KeyPath = swift_getKeyPath();
  sub_27411C038(a1, v24);
  v32 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v33 = swift_allocObject();
  sub_27411C0A0(v24, v33 + v32);
  v77 = v33;
  v78 = &unk_2883263D8;
  v74 = &v78;
  v75 = KeyPath;
  v76 = sub_27411C384;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DA8, &qword_2741D2B88);
  sub_27411C410();
  v73 = v30;
  sub_2741C762C();
  v34 = a1;

  v35 = a1 + *(v21 + 28);
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v78) = *v35;
  v79 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  v38 = sub_2741C7A3C();
  v61 = v34;
  if (!v82)
  {
    v60 = &v60;
    MEMORY[0x28223BE20](v38);
    *(&v60 - 2) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FB0, &qword_2741CE988);
    sub_2740A6D24(&qword_280938FB8, &qword_280938FB0, &qword_2741CE988);
    sub_2741C7B9C();
    (*(v10 + 32))(v19, v13, v63);
  }

  v39 = 1;
  (*(v10 + 56))();
  LOBYTE(v78) = v36;
  v79 = v37;
  v40 = sub_2741C7A3C();
  v41 = v69;
  v42 = v64;
  if (v82 == 1)
  {
    MEMORY[0x28223BE20](v40);
    *(&v60 - 2) = v61;
    if (qword_280937AD0 != -1)
    {
      swift_once();
    }

    v78 = qword_280946D88;
    v79 = qword_280946D90;
    sub_2740A6A74();

    v78 = sub_2741C76AC();
    v79 = v43;
    v80 = v44 & 1;
    v81 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DC0, &unk_2741D2BA0);
    sub_2740A6D24(&qword_280939DC8, &qword_280939DC0, &unk_2741D2BA0);
    v46 = v62;
    sub_2741C7B7C();
    (*(v42 + 32))(v72, v46, v41);
    v39 = 0;
  }

  v47 = v72;
  (*(v42 + 56))(v72, v39, 1, v41);
  v49 = v65;
  v48 = v66;
  v50 = *(v66 + 16);
  v51 = v67;
  v50(v65, v73, v67);
  v52 = v19;
  v53 = v19;
  v54 = v68;
  sub_2740A6D94(v53, v68, &qword_280939D98, &qword_2741D2B58);
  v55 = v70;
  sub_2740A6D94(v47, v70, &qword_280939D90, &unk_2741D2B48);
  v56 = v71;
  v50(v71, v49, v51);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DB8, &qword_2741D2B98);
  sub_2740A6D94(v54, &v56[*(v57 + 48)], &qword_280939D98, &qword_2741D2B58);
  sub_2740A6D94(v55, &v56[*(v57 + 64)], &qword_280939D90, &unk_2741D2B48);
  sub_27409D420(v47, &qword_280939D90, &unk_2741D2B48);
  sub_27409D420(v52, &qword_280939D98, &qword_2741D2B58);
  v58 = *(v48 + 8);
  v58(v73, v51);
  sub_27409D420(v55, &qword_280939D90, &unk_2741D2B48);
  sub_27409D420(v54, &qword_280939D98, &qword_2741D2B58);
  return (v58)(v49, v51);
}

uint64_t sub_27411906C(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureIP4View();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  sub_27411C038(a2, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_27411C0A0(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v11[16] = v7;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B10, &qword_2741CCFA8);
  sub_2740A6D24(&qword_280938B18, &qword_280938B10, &qword_2741CCFA8);
  return sub_2741C7A7C();
}

uint64_t sub_2741191F8(unsigned __int8 a1, uint64_t a2)
{
  *&v11 = 0xE000000000000000;
  sub_2741C856C();
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741DCB40);
  v10 = a1;
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741DCB60);
  v4 = (a2 + *(type metadata accessor for ConfigureIP4View() + 24));
  v10 = *v4;
  v11 = *(v4 + 1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v9, v5);
  v6 = v9;
  swift_getKeyPath();
  v10 = v6;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v7 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  LOBYTE(v7) = *(v6 + v7);

  LOBYTE(v9) = v7;
  sub_2741C862C();
  sub_2740CB460(v12, v13);

  sub_2741C7C5C();
  sub_2741C6DCC();
}

uint64_t sub_274119420(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ConfigureIP4View() + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  return sub_2741C7A4C();
}

uint64_t sub_2741194A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2741C70EC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B38, &qword_2741CCFD0);
  return sub_27411950C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_27411950C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B40, &qword_2741CCFD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B48, &qword_2741CCFE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v49 = v6;
  v50 = v16;
  v47 = a1;
  v48 = v7;
  v44 = v10;
  v46 = a2;
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_280937AC8 != -1)
      {
        swift_once();
      }

      v17 = &qword_280946D78;
    }

    else
    {
      if (qword_280937AD8 != -1)
      {
        swift_once();
      }

      v17 = &qword_280946D98;
    }
  }

  else
  {
    if (qword_280937AC0 != -1)
    {
      swift_once();
    }

    v17 = &qword_280946D68;
  }

  v19 = *v17;
  v18 = v17[1];

  v52 = v19;
  v53 = v20;
  sub_2740A6A74();
  v21 = sub_2741C76AC();
  v23 = v22;
  v25 = v24;
  sub_2741C799C();
  v26 = sub_2741C763C();
  v28 = v27;
  v45 = v29;
  v31 = v30;

  sub_2740A6AC8(v21, v23, v25 & 1);

  v32 = (v46 + *(type metadata accessor for ConfigureIP4View() + 20));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v52) = v33;
  v53 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  sub_2741C7A3C();
  v35 = v48;
  v36 = 1;
  v37 = v49;
  if (qword_2741D2CB8[v51] == qword_2741D2CB8[v47])
  {
    v52 = sub_2741C79CC();
    sub_2741C75BC();
    v38 = v44;
    sub_2741C76EC();

    (*(v35 + 32))(v15, v38, v37);
    v36 = 0;
  }

  (*(v35 + 56))(v15, v36, 1, v37);
  v39 = v50;
  sub_2740A6D94(v15, v50, &qword_280938B48, &qword_2741CCFE0);
  *a3 = v26;
  *(a3 + 8) = v28;
  v40 = v45 & 1;
  *(a3 + 16) = v45 & 1;
  *(a3 + 24) = v31;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938B50, &qword_2741CCFE8);
  sub_2740A6D94(v39, a3 + *(v41 + 64), &qword_280938B48, &qword_2741CCFE0);
  sub_27409861C(v26, v28, v40);

  sub_27409D420(v15, &qword_280938B48, &qword_2741CCFE0);
  sub_27409D420(v39, &qword_280938B48, &qword_2741CCFE0);
  sub_2740A6AC8(v26, v28, v40);
}

uint64_t sub_274119964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938FF8, &qword_2741CE9C0);
  return sub_2741199BC(a1, a2 + *(v4 + 44));
}

uint64_t sub_2741199BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v4 = *(*(v26 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v26);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  if (qword_280937AE0 != -1)
  {
    swift_once();
  }

  v27 = qword_280946DA8;
  v28 = qword_280946DB0;
  sub_2740A6A74();

  v10 = sub_2741C76AC();
  v12 = v11;
  v24 = v13;
  v25 = v14;
  sub_2741C714C();
  v15 = (a1 + *(type metadata accessor for ConfigureIP4View() + 28));
  v16 = *v15;
  v17 = *(v15 + 2);
  v29 = v16;
  v30 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v19 = &v9[*(v26 + 36)];
  *v19 = KeyPath;
  v19[8] = 2;
  sub_2740A6D94(v9, v7, &qword_280939018, &qword_2741CE9E0);
  *a2 = v10;
  *(a2 + 8) = v12;
  v20 = v24 & 1;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939020, &qword_2741D2BE0);
  sub_2740A6D94(v7, a2 + *(v21 + 64), &qword_280939018, &qword_2741CE9E0);
  sub_27409861C(v10, v12, v20);

  sub_27409D420(v9, &qword_280939018, &qword_2741CE9E0);
  sub_27409D420(v7, &qword_280939018, &qword_2741CE9E0);
  sub_2740A6AC8(v10, v12, v20);
}

uint64_t sub_274119C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DD0, &qword_2741D2BE8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DD8, &qword_2741D2BF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DE0, &qword_2741D2BF8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  *v23 = sub_2741C70EC();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DE8, &qword_2741D2C00);
  sub_27411A00C(a1, &v23[*(v24 + 44)]);
  *v16 = sub_2741C70EC();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DF0, &qword_2741D2C08);
  sub_27411A7F0(a1, &v16[*(v25 + 44)]);
  *v9 = sub_2741C70EC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939DF8, &qword_2741D2C10);
  sub_27411AC54(a1, &v9[*(v26 + 44)]);
  v27 = v21;
  v32 = v21;
  sub_2740A6D94(v23, v21, &qword_280939DE0, &qword_2741D2BF8);
  sub_2740A6D94(v16, v14, &qword_280939DD8, &qword_2741D2BF0);
  v28 = v7;
  sub_2740A6D94(v9, v7, &qword_280939DD0, &qword_2741D2BE8);
  v29 = v33;
  sub_2740A6D94(v27, v33, &qword_280939DE0, &qword_2741D2BF8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E00, &qword_2741D2C18);
  sub_2740A6D94(v14, v29 + *(v30 + 48), &qword_280939DD8, &qword_2741D2BF0);
  sub_2740A6D94(v28, v29 + *(v30 + 64), &qword_280939DD0, &qword_2741D2BE8);
  sub_27409D420(v9, &qword_280939DD0, &qword_2741D2BE8);
  sub_27409D420(v16, &qword_280939DD8, &qword_2741D2BF0);
  sub_27409D420(v23, &qword_280939DE0, &qword_2741D2BF8);
  sub_27409D420(v28, &qword_280939DD0, &qword_2741D2BE8);
  sub_27409D420(v14, &qword_280939DD8, &qword_2741D2BF0);
  return sub_27409D420(v32, &qword_280939DE0, &qword_2741D2BF8);
}

uint64_t sub_27411A00C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for ConfigureIP4View();
  v77 = *(v3 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = v5;
  v79 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = v59 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E20, &qword_2741D2C70);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v10 = v59 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E28, &qword_2741D2C78);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v69 = v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E50, &qword_2741D2C90);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = v59 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E58, &qword_2741D2C98);
  v16 = *(*(v70 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v70);
  v76 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v66 = v59 - v20;
  MEMORY[0x28223BE20](v19);
  v75 = v59 - v21;
  if (qword_280937A40 != -1)
  {
    swift_once();
  }

  v82 = qword_280946C68;
  v83 = unk_280946C70;
  v22 = sub_2740A6A74();

  v59[1] = v22;
  v65 = sub_2741C76AC();
  v64 = v23;
  v62 = v24;
  v68 = v25;
  sub_2741C714C();
  v74 = v3;
  v26 = *(v3 + 32);
  v80 = a1;
  v27 = (a1 + v26);
  v29 = v27[1];
  v30 = v27[2];
  v85 = *v27;
  v28 = v85;
  v86 = v29;
  v87 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  v31 = v61;
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v33 = v31 + *(v60 + 36);
  *v33 = KeyPath;
  *(v33 + 8) = 2;
  v82 = v28;
  v83 = v29;
  v84 = v30;
  sub_2741C7A3C();
  v34 = v85;
  v35 = v86;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = sub_2741C799C();
  }

  else
  {
    v37 = sub_2741C79AC();
  }

  v38 = v37;
  v39 = swift_getKeyPath();
  sub_27411C5C4(v31, v10);
  v40 = &v10[*(v63 + 36)];
  *v40 = v39;
  v40[1] = v38;
  v82 = qword_280946C68;
  v83 = unk_280946C70;
  sub_27411C634();
  v41 = v69;
  sub_2741C77BC();
  sub_27409D420(v10, &qword_280939E20, &qword_2741D2C70);
  v42 = v80;
  v43 = v80 + *(v74 + 44);
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v43) = *(v43 + 16);
  LOBYTE(v82) = v44;
  v83 = v45;
  LOBYTE(v84) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E60, &qword_2741D2CA0);
  sub_2741C6C8C();
  sub_27411C6EC();
  v46 = v71;
  sub_2741C78AC();

  sub_27409D420(v41, &qword_280939E28, &qword_2741D2C78);
  v47 = v79;
  sub_27411C038(v42, v79);
  v48 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v49 = swift_allocObject();
  sub_27411C0A0(v47, v49 + v48);
  v50 = v66;
  (*(v72 + 32))(v66, v46, v73);
  v51 = (v50 + *(v70 + 36));
  *v51 = sub_27411C964;
  v51[1] = v49;
  v51[2] = 0;
  v51[3] = 0;
  v52 = v75;
  sub_27411C9F0(v50, v75);
  v53 = v76;
  sub_2740A6D94(v52, v76, &qword_280939E58, &qword_2741D2C98);
  v54 = v81;
  v55 = v65;
  v56 = v64;
  *v81 = v65;
  v54[1] = v56;
  LOBYTE(v39) = v62 & 1;
  *(v54 + 16) = v62 & 1;
  v54[3] = v68;
  v54[4] = 0;
  *(v54 + 40) = 1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E70, &qword_2741D2CA8);
  sub_2740A6D94(v53, v54 + *(v57 + 64), &qword_280939E58, &qword_2741D2C98);
  sub_27409861C(v55, v56, v39);

  sub_27409D420(v52, &qword_280939E58, &qword_2741D2C98);
  sub_27409D420(v53, &qword_280939E58, &qword_2741D2C98);
  sub_2740A6AC8(v55, v56, v39);
}

uint64_t sub_27411A774(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ConfigureIP4View() + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E60, &qword_2741D2CA0);
  return sub_2741C6C7C();
}

uint64_t sub_27411A7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v39 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E20, &qword_2741D2C70);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E28, &qword_2741D2C78);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v49 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v12;
  if (qword_2809377D0 != -1)
  {
    swift_once();
  }

  v50 = qword_2809466E8;
  v51 = unk_2809466F0;
  v13 = sub_2740A6A74();

  v39 = v13;
  v14 = sub_2741C76AC();
  v43 = v15;
  v44 = v14;
  v40 = v16;
  v45 = v17;
  sub_2741C714C();
  v18 = (a1 + *(type metadata accessor for ConfigureIP4View() + 36));
  v20 = v18[1];
  v21 = v18[2];
  v53 = *v18;
  v19 = v53;
  v54 = v20;
  v55 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  v22 = v42;
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v24 = v22 + *(v41 + 36);
  *v24 = KeyPath;
  *(v24 + 8) = 2;
  v50 = v19;
  v51 = v20;
  v52 = v21;
  sub_2741C7A3C();
  v26 = v53;
  v25 = v54;

  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = sub_2741C799C();
  }

  else
  {
    v28 = sub_2741C79AC();
  }

  v29 = v28;
  v30 = swift_getKeyPath();
  v31 = v46;
  sub_27411C5C4(v22, v46);
  v32 = (v31 + *(v47 + 36));
  *v32 = v30;
  v32[1] = v29;
  v50 = qword_2809466E8;
  v51 = unk_2809466F0;
  sub_27411C634();
  v33 = v48;
  sub_2741C77BC();
  sub_27409D420(v31, &qword_280939E20, &qword_2741D2C70);
  v34 = v49;
  sub_2740A6D94(v33, v49, &qword_280939E28, &qword_2741D2C78);
  v36 = v43;
  v35 = v44;
  *a2 = v44;
  *(a2 + 8) = v36;
  LOBYTE(v31) = v40 & 1;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v45;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E48, &qword_2741D2C88);
  sub_2740A6D94(v34, a2 + *(v37 + 64), &qword_280939E28, &qword_2741D2C78);
  sub_27409861C(v35, v36, v31);

  sub_27409D420(v33, &qword_280939E28, &qword_2741D2C78);
  sub_27409D420(v34, &qword_280939E28, &qword_2741D2C78);
  sub_2740A6AC8(v35, v36, v31);
}

uint64_t sub_27411AC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v30 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E08, &unk_2741D2C20);
  v7 = *(*(v36 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v36);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  if (qword_280937A48 != -1)
  {
    swift_once();
  }

  v37 = qword_280946C78;
  v38 = unk_280946C80;
  sub_2740A6A74();

  v13 = sub_2741C76AC();
  v31 = v14;
  v32 = v13;
  v33 = v15;
  v34 = v16;
  sub_2741C714C();
  v17 = (a1 + *(type metadata accessor for ConfigureIP4View() + 40));
  v18 = *v17;
  v19 = *(v17 + 2);
  v39 = v18;
  v40 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A5C();
  sub_2741C7C8C();
  KeyPath = swift_getKeyPath();
  v21 = &v6[*(v35 + 36)];
  *v21 = KeyPath;
  v21[8] = 2;
  v37 = qword_280946C78;
  v38 = unk_280946C80;
  sub_27411C4D8();
  sub_2741C77BC();
  sub_27409D420(v6, &qword_280939018, &qword_2741CE9E0);
  v22 = sub_2741C799C();
  v23 = swift_getKeyPath();
  v24 = &v12[*(v36 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_2740A6D94(v12, v10, &qword_280939E08, &unk_2741D2C20);
  v26 = v31;
  v25 = v32;
  *a2 = v32;
  *(a2 + 8) = v26;
  v27 = v33 & 1;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E18, &qword_2741D2C68);
  sub_2740A6D94(v10, a2 + *(v28 + 64), &qword_280939E08, &unk_2741D2C20);
  sub_27409861C(v25, v26, v27);

  sub_27409D420(v12, &qword_280939E08, &unk_2741D2C20);
  sub_27409D420(v10, &qword_280939E08, &unk_2741D2C20);
  sub_2740A6AC8(v25, v26, v27);
}

uint64_t sub_27411AFE4(uint64_t a1)
{
  v2 = type metadata accessor for ConfigureIP4View();
  v3 = (a1 + *(v2 + 24));
  v12 = *v3;
  v13 = *(v3 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](v11, v4);
  v5 = v11[0];
  swift_getKeyPath();
  v12 = v5;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v6 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  LOBYTE(v6) = *(v5 + v6);

  v7 = (a1 + *(v2 + 20));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v11[0]) = v8;
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  return sub_2741C7A4C();
}

uint64_t sub_27411B138(uint64_t a1)
{
  v2 = sub_2741C730C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_2741C72EC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_27411B2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfigureIP4View();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_280937AE8 != -1)
  {
    swift_once();
  }

  v14[0] = qword_280946DB8;
  v14[1] = unk_280946DC0;
  sub_27411C038(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_27411C0A0(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_2740A6A74();

  sub_2741C7A9C();
  v9 = sub_27411BCDC();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = !v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_2740A6E2C;
  v13[2] = v11;
  return result;
}

uint64_t sub_27411B4C8(uint64_t a1)
{
  v60 = sub_2741C6DBC();
  v59 = *(v60 - 8);
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740CB460(0xD000000000000016, 0x80000002741DCB20);
  v4 = type metadata accessor for ConfigureIP4View();
  v5 = (a1 + v4[6]);
  v6 = a1;
  v7 = *v5;
  v66 = v5[1];
  v62 = v5[2];
  v79 = v7;
  v80 = v66;
  v8 = v7;
  v81 = v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v77);
  v9 = v77;
  v10 = v4[5];
  v65 = v4;
  v11 = (v6 + v10);
  v57 = v6;
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v79) = v12;
  v80 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  sub_2741C7A3C();
  v14 = v77;
  swift_getKeyPath();
  v79 = v9;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v79 = v9;
  swift_getKeyPath();
  sub_2741C6A2C();

  v15 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  *(v9 + v15) = v14;
  *&v77 = v9;
  swift_getKeyPath();
  sub_2741C6A1C();

  v61 = v8;
  v16 = v66;
  *&v77 = v8;
  *(&v77 + 1) = v66;
  v78 = v62;
  MEMORY[0x2743E5B70](&v75, v64);
  v17 = v75;
  v18 = (v6 + v4[7]);
  v19 = *v18;
  v20 = *(v18 + 2);
  v77 = v19;
  v78 = v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();
  v21 = v75;
  swift_getKeyPath();
  *&v77 = v17;
  sub_2741C6A0C();

  *&v77 = v17;
  swift_getKeyPath();
  sub_2741C6A2C();

  v22 = v17 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v23 = *(v22 + 48);
  *(v22 + 40) = v21;

  *&v75 = v17;
  swift_getKeyPath();
  sub_2741C6A1C();

  *&v75 = v8;
  *(&v75 + 1) = v16;
  v24 = v62;
  v76 = v62;
  v25 = v64;
  MEMORY[0x2743E5B70](&v73, v64);
  v26 = v73;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D80, &qword_2741D2B38);
  v27 = swift_allocObject();
  v55 = xmmword_2741CB550;
  *(v27 + 16) = xmmword_2741CB550;
  v28 = v57;
  v29 = (v57 + v65[8]);
  v30 = *v29;
  v31 = *(v29 + 2);
  v75 = v30;
  v76 = v31;
  sub_2741C7A3C();
  v32 = *(&v73 + 1);
  *(v27 + 32) = v73;
  *(v27 + 40) = v32;
  swift_getKeyPath();
  *&v75 = v26;
  sub_2741C6A0C();

  *&v75 = v26;
  swift_getKeyPath();
  sub_2741C6A2C();

  v33 = v26 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v34 = *(v33 + 8);
  *(v33 + 8) = v27;

  *&v73 = v26;
  swift_getKeyPath();
  sub_2741C6A1C();

  v35 = v61;
  *&v73 = v61;
  *(&v73 + 1) = v66;
  v74 = v24;
  MEMORY[0x2743E5B70](&v71, v25);
  v36 = v71;
  v37 = swift_allocObject();
  *(v37 + 16) = v55;
  v38 = (v28 + v65[9]);
  v39 = *v38;
  v40 = *(v38 + 2);
  v73 = v39;
  v74 = v40;
  sub_2741C7A3C();
  v41 = *(&v71 + 1);
  *(v37 + 32) = v71;
  *(v37 + 40) = v41;
  swift_getKeyPath();
  *&v73 = v36;
  sub_2741C6A0C();

  *&v73 = v36;
  swift_getKeyPath();
  sub_2741C6A2C();

  v42 = v36 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v43 = *(v42 + 16);
  *(v42 + 16) = v37;

  *&v71 = v36;
  swift_getKeyPath();
  sub_2741C6A1C();

  *&v71 = v35;
  *(&v71 + 1) = v66;
  v44 = v62;
  v72 = v62;
  MEMORY[0x2743E5B70](&v68, v25);
  v45 = v68;
  v46 = (v28 + v65[10]);
  v47 = *v46;
  v48 = *(v46 + 2);
  v71 = v47;
  v72 = v48;
  sub_2741C7A3C();
  v49 = v68;
  v50 = v69;
  swift_getKeyPath();
  *&v71 = v45;
  sub_2741C6A0C();

  *&v71 = v45;
  swift_getKeyPath();
  sub_2741C6A2C();

  v51 = v45 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v52 = *(v51 + 32);
  *(v51 + 24) = v49;
  *(v51 + 32) = v50;

  v68 = v45;
  swift_getKeyPath();
  sub_2741C6A1C();

  v68 = v61;
  v69 = v66;
  v70 = v44;
  MEMORY[0x2743E5B70](&v67, v64);
  sub_27410257C();

  v53 = v58;
  sub_2741181C0(v58);
  sub_2741C6DAC();
  return (*(v59 + 8))(v53, v60);
}

BOOL sub_27411BCDC()
{
  v1 = type metadata accessor for ConfigureIP4View();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = *(v2 + 1);
  v30 = v3;
  LOBYTE(v38) = v3;
  v29 = v4;
  v39 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D78, &unk_2741D2AF8);
  sub_2741C7A3C();
  v5 = v35;
  v27 = v1;
  v28 = v0;
  v6 = (v0 + *(v1 + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v38 = *v6;
  v39 = v8;
  v40 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938758, &qword_2741CC8E0);
  MEMORY[0x2743E5B70](&v35);
  v11 = v35;
  swift_getKeyPath();
  v38 = v11;
  sub_2740D985C(&qword_280938760, type metadata accessor for NetworkDetailsModel);
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v13 = *(v11 + v12);

  if (qword_2741D2CB8[v5] == qword_2741D2CB8[v13])
  {
    LOBYTE(v35) = v30;
    v36 = v29;
    sub_2741C7A3C();
    if (!v33)
    {
      return 0;
    }
  }

  LOBYTE(v35) = v30;
  v36 = v29;
  sub_2741C7A3C();
  v14 = v33;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  MEMORY[0x2743E5B70](&v33, v10);
  v15 = v33;
  swift_getKeyPath();
  v35 = v15;
  sub_2741C6A0C();

  v16 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v17 = *(v15 + v16);

  if (qword_2741D2CB8[v14] == qword_2741D2CB8[v17])
  {
    return 0;
  }

  LOBYTE(v33) = v30;
  *(&v33 + 1) = v29;
  sub_2741C7A3C();
  if (v31[0] != 1)
  {
    return 1;
  }

  v19 = (v28 + *(v27 + 32));
  v20 = *v19;
  v21 = *(v19 + 2);
  v33 = v20;
  v34 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938A88, &unk_2741CE910);
  sub_2741C7A3C();

  v22 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v22 = *v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    return 0;
  }

  v23 = (v28 + *(v27 + 36));
  v24 = *v23;
  v25 = *(v23 + 2);
  v33 = v24;
  v34 = v25;
  sub_2741C7A3C();

  v26 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v26 = *v31 & 0xFFFFFFFFFFFFLL;
  }

  return v26 != 0;
}

uint64_t sub_27411C038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureIP4View();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27411C0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigureIP4View();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27411C11C()
{
  result = qword_280939D60;
  if (!qword_280939D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939D40, &qword_2741D2A98);
    sub_2740A6D24(&qword_280939D68, &qword_280939D70, &unk_2741D2AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939D60);
  }

  return result;
}

uint64_t sub_27411C21C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C90, &qword_2741D2CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938AE0, &qword_2741D2B90);
  sub_2740A6D24(&qword_280939E78, &qword_280938C90, &qword_2741D2CB0);
  sub_27411CA98();
  sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90);
  return sub_2741C7B5C();
}

uint64_t sub_27411C384(char *a1)
{
  v3 = *(type metadata accessor for ConfigureIP4View() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27411906C(a1, v4);
}

unint64_t sub_27411C410()
{
  result = qword_280939DB0;
  if (!qword_280939DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939DA8, &qword_2741D2B88);
    sub_2740A6D24(&qword_280938AE8, &qword_280938AE0, &qword_2741D2B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939DB0);
  }

  return result;
}

unint64_t sub_27411C4D8()
{
  result = qword_280939E10;
  if (!qword_280939E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939018, &qword_2741CE9E0);
    sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890);
    sub_2740A6D24(&qword_280939668, &qword_280939670, &qword_2741D2C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E10);
  }

  return result;
}

uint64_t sub_27411C5C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939018, &qword_2741CE9E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27411C634()
{
  result = qword_280939E30;
  if (!qword_280939E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939E20, &qword_2741D2C70);
    sub_27411C4D8();
    sub_2740A6D24(&qword_280939E38, &qword_280939E40, &qword_2741D2C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E30);
  }

  return result;
}

unint64_t sub_27411C6EC()
{
  result = qword_280939E68;
  if (!qword_280939E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939E28, &qword_2741D2C78);
    sub_27411C634();
    sub_2740D985C(&qword_280938F10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E68);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for ConfigureIP4View();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2741C6DBC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = (v5 + v1[6]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v9[2];

  v13 = v5 + v1[7];
  v14 = *(v13 + 1);

  v15 = *(v13 + 2);

  v16 = v5 + v1[8];
  v17 = *(v16 + 1);

  v18 = *(v16 + 2);

  v19 = v5 + v1[9];
  v20 = *(v19 + 1);

  v21 = *(v19 + 2);

  v22 = v5 + v1[10];
  v23 = *(v22 + 1);

  v24 = *(v22 + 2);

  v25 = *(v5 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27411C97C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConfigureIP4View() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_27411C9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E58, &qword_2741D2C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27411CA60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_27411CA98()
{
  result = qword_280939E80;
  if (!qword_280939E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E80);
  }

  return result;
}

uint64_t sub_27411CAEC()
{
  v1 = type metadata accessor for ConfigureIP4View();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2741C6DBC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = (v5 + v1[6]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v9[2];

  v13 = v5 + v1[7];
  v14 = *(v13 + 1);

  v15 = *(v13 + 2);

  v16 = v5 + v1[8];
  v17 = *(v16 + 1);

  v18 = *(v16 + 2);

  v19 = v5 + v1[9];
  v20 = *(v19 + 1);

  v21 = *(v19 + 2);

  v22 = v5 + v1[10];
  v23 = *(v22 + 1);

  v24 = *(v22 + 2);

  v25 = *(v5 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27411CCA8()
{
  v1 = *(type metadata accessor for ConfigureIP4View() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_2741191F8(v2, v3);
}

uint64_t sub_27411CD38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939D48, &qword_2741D2AA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F40, &unk_2741CE890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939D40, &qword_2741D2A98);
  sub_27411C11C();
  sub_2740A6A74();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938F48, &qword_2741D04A0);
  sub_2740A6D24(&qword_280938F50, &qword_280938F48, &qword_2741D04A0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27411CE94(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_27411CEB8, 0, 0);
}

uint64_t sub_27411CEB8()
{
  sub_27409D4E4(v0[20], (v0 + 10));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
  sub_2740BA268(0, &qword_2809385E8, 0x277D54CB8);
  if (swift_dynamicCast())
  {
    v1 = v0[21];
    v2 = v0[18];
    v0[22] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_27411D0A8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939E90, &qword_2741D2D18);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_27411D2C0;
    v0[13] = &block_descriptor_8;
    v0[14] = v3;
    [v1 enableRemoteHotspotForDevice:v2 withCompletionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_27411D4AC();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_27411D0A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_27411D250;
  }

  else
  {
    v3 = sub_27411D1B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27411D1B8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v2[3] = sub_2740BA268(0, &qword_280939E98, 0x277D54CC0);
  v2[4] = &off_28832A518;

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_27411D250()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[23];
  v4 = v0[1];

  return v4();
}

uint64_t sub_27411D2C0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
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

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_27411D398(uint64_t a1)
{
  [*v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t sub_27411D400(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27409D648;

  return sub_27411CE94(a1, a2);
}

unint64_t sub_27411D4AC()
{
  result = qword_280939E88;
  if (!qword_280939E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939E88);
  }

  return result;
}

uint64_t sub_27411D518(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_27411D578()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_27411D5B0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t static NetworkPrefSupport.shared.getter()
{
  type metadata accessor for NetworkPrefSupport();

  return swift_initStaticObject();
}

void *NetworkPrefSupport.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t NetworkPrefSupport.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_27411D6C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return swift_unknownObjectRetain();
}

unint64_t sub_27411D7E8()
{
  result = qword_280939EA0;
  if (!qword_280939EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EA0);
  }

  return result;
}

unint64_t sub_27411D840()
{
  result = qword_280939EA8;
  if (!qword_280939EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EA8);
  }

  return result;
}

unint64_t sub_27411D898()
{
  result = qword_280939EB0;
  if (!qword_280939EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EB0);
  }

  return result;
}

unint64_t sub_27411D8F0()
{
  result = qword_280939EB8;
  if (!qword_280939EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EB8);
  }

  return result;
}

id sub_27411D954()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75E10]) initWithSizeCategory_];
  [v2 setChargePercent_];
  return v2;
}

uint64_t sub_27411DA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27411DB0C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27411DA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27411DB0C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27411DAE0()
{
  sub_27411DB0C();
  sub_2741C729C();
  __break(1u);
}

unint64_t sub_27411DB0C()
{
  result = qword_280939EC0;
  if (!qword_280939EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EC0);
  }

  return result;
}

uint64_t SettingsKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2741C869C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_27411DBDC()
{
  result = qword_280939EC8;
  if (!qword_280939EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EC8);
  }

  return result;
}

uint64_t sub_27411DC30()
{
  sub_2741C87DC();
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27411DCAC()
{
  sub_2741C87DC();
  sub_2741C7F0C();
  return sub_2741C880C();
}

uint64_t sub_27411DD04@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2741C869C();

  *a2 = v5 != 0;
  return result;
}

void sub_27411DD58(uint64_t a1@<X8>)
{
  strcpy(a1, "userSettings");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_27411DD8C()
{
  v1 = *(v0 + 32);

  sub_2741110E8(v0 + 40);
  v2 = OBJC_IVAR____TtC15WiFiSettingsKit16PresentableError___observationRegistrar;
  v3 = sub_2741C6A4C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentableError()
{
  result = qword_280939ED8;
  if (!qword_280939ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27411DE94()
{
  result = sub_2741C6A4C();
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

unint64_t sub_27411DF54(uint64_t a1)
{
  result = sub_27411DF7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27411DF7C()
{
  result = qword_280939EE8;
  if (!qword_280939EE8)
  {
    type metadata accessor for PresentableError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939EE8);
  }

  return result;
}

uint64_t sub_27411DFD4()
{
  v1 = sub_2740EABAC();
  if (v2)
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    sub_2741C856C();

    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    MEMORY[0x2743E5FB0](v3, v4);

    sub_2740CB944(0xD000000000000010, 0x80000002741DCD30);
  }

  else
  {
    *(v0 + 16) = 0x6E776F6E6B6E75;
    *(v0 + 24) = 0xE700000000000000;
    MEMORY[0x2743E5FB0](32, 0xE100000000000000);
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741DCCF0);
    sub_2740CB218(0x5343495254454D5BLL, 0xE90000000000005DLL, 0xD000000000000010, 0x80000002741DCD10);
  }

  return v0;
}

uint64_t sub_27411E10C()
{
  type metadata accessor for MetricsManager();
  swift_allocObject();
  result = sub_27411DFD4();
  qword_280945E28 = result;
  return result;
}

void sub_27411E16C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork();
    sub_274122CD0(&qword_280939F58, type metadata accessor for WiFiNetwork);
    sub_2741C821C();
    v1 = v16;
    v2 = v17;
    v4 = v18;
    v3 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v3;
    v10 = v5;
    v11 = v3;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_2740D43C8();
      return;
    }

    while (1)
    {
      v14 = v13;
      sub_274152768(&v21, v14);
      v15 = v21;

      v3 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2741C84BC())
      {
        type metadata accessor for WiFiNetwork();
        swift_dynamicCast();
        v13 = v21;
        v11 = v3;
        v12 = v5;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_27411E380()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E3F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E468()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E4DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t sub_27411E550()
{
  sub_2740CB960(0xD000000000000020, 0x80000002741DCF30);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for NetworksViewModel();
    sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel);
    sub_2741C6B5C();

    sub_2741C6B8C();
  }

  return result;
}

uint64_t sub_27411E620()
{
  v1[20] = v0;
  sub_2741C80AC();
  v1[21] = sub_2741C809C();
  v3 = sub_2741C805C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_27411E6B8, v3, v2);
}

uint64_t sub_27411E6B8()
{
  v1 = 0xD000000000000028;
  if (*(v0[20] + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) == 1)
  {
    v2 = "kRequestError16";
    v1 = 0xD000000000000043;
LABEL_8:
    v7 = v0[21];

    sub_2740CB960(v1, v2 | 0x8000000000000000);
    v8 = v0[1];

    return v8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v3 = v0[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;

  if (!Strong)
  {
    v2 = "it19NetworkRequestError16";
    goto LABEL_8;
  }

  v5 = v0[20];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 1;

  sub_2741C6BFC();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_27411E924;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F50, &qword_2741D3548);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27411EC9C;
  v0[13] = &block_descriptor_85;
  v0[14] = v6;
  [Strong performScanWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27411E924()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27411EA2C, v2, v1);
}

uint64_t sub_27411EA2C()
{
  v18 = v0;
  v2 = v0[20];
  v1 = v0[21];

  v3 = v0[18];
  v4 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;

  sub_2741C6BFC();
  if (v3)
  {
    v5 = v0[20];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2741C6BEC();

    v6 = sub_27418F494(v0[10]);

    v7 = sub_27418F494(v3);

    v8 = sub_27412170C(v7, v6);
    v9 = sub_27411ED24(v8, v7);

    sub_27411E16C(v9);

    sub_2741209AC(v6);

    v17 = sub_274122374(v10);
    sub_274120930(&v17);
    v12 = v0[24];
    v13 = v0[20];

    v14 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    v0[10] = v14;

    sub_2741C6BFC();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v0[24];
    swift_unknownObjectRelease();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_27411EC9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a2)
  {
    type metadata accessor for WiFiNetwork();
    v6 = sub_2741C7FEC();
  }

  v7 = *(*(v5 + 64) + 40);
  *v7 = v6;
  v7[1] = a3;
  v8 = a3;

  return MEMORY[0x282200948](v5);
}

uint64_t sub_27411ED24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2741C848C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_274152B48(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_2741C848C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_2741C848C();
  v2 = sub_2741219E0(v5, v6, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork, sub_274153EC8);
LABEL_10:

  return sub_274152EA0(a1, v2);
}

uint64_t sub_27411EE50(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  sub_2741C80AC();
  v2[30] = sub_2741C809C();
  v4 = sub_2741C805C();
  v2[31] = v4;
  v2[32] = v3;

  return MEMORY[0x2822009F8](sub_27411EEE8, v4, v3);
}

uint64_t sub_27411EEE8()
{
  v1 = v0[29];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v2 = v0[18];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[33] = Strong;

  if (Strong)
  {
    v4 = v0[28];
    if (*(v0[29] + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) == 1)
    {
      v5 = v0 + 10;
      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = v4;

      v6 = v4;
      sub_2741C6BFC();
      v0[10] = v0;
      v0[15] = v0 + 26;
      v0[11] = sub_27411F504;
      v7 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F48, &qword_2741D34B0);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_27411FA8C;
      v0[21] = &block_descriptor_76;
      v0[22] = v7;
      [Strong associateTo:v6 completionHandler:{v0 + 18, v18}];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v11 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = 0;
      sub_2741C6BFC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v19 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v12 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v13 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = v13;
      sub_2741C6BFC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v14 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[18] = v4;
      v15 = v4;
      sub_2741C6BFC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2741C6BEC();

      v16 = v0[18];
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 144) = 1;
      sub_2741C6BFC();
      type metadata accessor for NetworksViewModel();
      sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel);
      sub_2741C6B5C();
      sub_2741C6B8C();

      v5 = v0 + 2;
      v0[2] = v0;
      v0[7] = v0 + 26;
      v0[3] = sub_27411F6F0;
      v17 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F48, &qword_2741D34B0);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_27411FA8C;
      v0[21] = &block_descriptor_9;
      v0[22] = v17;
      [Strong associateTo:v15 completionHandler:{v0 + 18, v19}];
    }

    return MEMORY[0x282200938](v5);
  }

  else
  {
    v8 = v0[30];

    sub_2740CB960(0xD000000000000028, 0x80000002741DCDE0);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_27411F504()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27411F60C, v2, v1);
}

uint64_t sub_27411F60C()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  type metadata accessor for NetworksViewModel();
  sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6B5C();
  sub_2741C6B8C();

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27411F6F0()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27411F7F8, v2, v1);
}

uint64_t sub_27411F7F8()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = v0[26];
  v4 = v0[27];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v5 = v0[18];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 0;
  sub_2741C6BFC();
  if (v4)
  {
    v6 = v0[29];
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v4;
    sub_2741C6BEC();

    v8 = v0[18];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[18] = v4;
    v9 = v7;
    sub_2741C6BFC();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v10 = v0[29];
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v3;
    sub_2741C6BEC();

    v12 = v0[18];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[18] = v3;
    sub_2741C6BFC();
    v3 = v11;
  }

LABEL_6:
  v13 = v0[33];
  v14 = v0[29];
  type metadata accessor for NetworksViewModel();
  sub_274122CD0(&qword_280939F40, type metadata accessor for NetworksViewModel);
  sub_2741C6B5C();
  sub_2741C6B8C();

  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15();
}

uint64_t sub_27411FA8C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return MEMORY[0x282200948](v6);
}

uint64_t sub_27411FB00(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_2741C80AC();
  v2[5] = sub_2741C809C();
  v4 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27411FB98, v4, v3);
}

uint64_t sub_27411FB98()
{
  v28 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v4 = sub_27418F494(v0[2]);

  v6 = sub_27418F494(v5);

  sub_274149FEC(v6, v4);
  v8 = v7;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v0;
  while (v9)
  {
    v10 = 0;
    v11 = v3 & 0xC000000000000001;
    v12 = v3 & 0xFFFFFFFFFFFFFF8;
    v13 = v0[3] + 32;
    v0 = &qword_280939F38;
    while (v11)
    {
      v18 = MEMORY[0x2743E6600](v10, v26[3]);
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_16;
      }

LABEL_9:
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 >= 0)
        {
          v8 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v14 = v18;
        v19 = sub_2741C848C();
        if (__OFADD__(v19, 1))
        {
          goto LABEL_18;
        }

        v27 = sub_2741219E0(v8, v19 + 1, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork, sub_274153EC8);
        v16 = v14;
        isUniquelyReferenced_nonNull_native = 1;
      }

      else
      {
        v14 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v8;
        v16 = v14;
      }

      v17 = sub_2741220AC(v16, isUniquelyReferenced_nonNull_native);

      v8 = v27;
      ++v10;
      if (v3 == v9)
      {
        goto LABEL_22;
      }
    }

    if (v10 >= *(v12 + 16))
    {
      goto LABEL_17;
    }

    v18 = *(v13 + 8 * v10);
    v3 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if ((v0[3] & 0x8000000000000000) != 0)
    {
      v20 = v0[3];
    }

    v9 = sub_2741C848C();
    v26 = v0;
  }

LABEL_22:
  sub_2741209AC(v8);

  v27 = sub_274122374(v21);
  sub_274120930(&v27);
  v22 = v26[4];

  v23 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v26[2] = v23;

  sub_2741C6BFC();

  v24 = v26[1];

  return v24();
}

char *sub_27411FEBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v1 = type metadata accessor for WiFiPickerConfiguration();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle] = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption] = 3;
  v3 = &v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_networks] = v12;
  *&v2[OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork] = v12;
  v13.receiver = v2;
  v13.super_class = v1;
  v4 = objc_msgSendSuper2(&v13, sel_init);
  v5 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle);
  v6 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
  swift_beginAccess();
  *&v4[v6] = v5;
  v7 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_presentationStyle);
  v8 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
  swift_beginAccess();
  *&v4[v8] = v7;
  v9 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption);
  v10 = OBJC_IVAR___WiFiPickerConfiguration_Swift_displayOption;
  swift_beginAccess();
  *&v4[v10] = v9;
  return v4;
}

uint64_t sub_2741200E4()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__currentNetworkModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939F60, &unk_2741D3550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__networks;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E0, &qword_2741D0C48);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__isScanning;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__selectedNetwork;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939128, &unk_2741CED70);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_pubs);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworksViewModel()
{
  result = qword_280939F18;
  if (!qword_280939F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2741202D4()
{
  sub_274120460();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2740DEA38(319, &qword_2809399D0, &qword_2809399D8, &unk_2741D32B0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2740DE9E8();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2740DEA38(319, &qword_280939108, &qword_280938C68, qword_2741CD200);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_274120460()
{
  if (!qword_280939F28)
  {
    type metadata accessor for CurrentNetworkViewModel();
    v0 = sub_2741C6C0C();
    if (!v1)
    {
      atomic_store(v0, &qword_280939F28);
    }
  }
}

uint64_t sub_2741204B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworksViewModel();
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

uint64_t sub_2741205C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v5;
  return result;
}

uint64_t sub_274120640(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t sub_2741206BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v5;
  return result;
}

uint64_t sub_274120740(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2741C6BFC();
}

uint64_t sub_27412082C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v5;
  return result;
}

uint64_t sub_2741208BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_2741C6BFC();
}

uint64_t sub_274120930(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2741B4B70(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_274120A5C(v6);
  return sub_2741C85AC();
}

void *sub_2741209AC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2741C848C();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_274177768(v2, 0);

    v1 = sub_274156B04(&v5, v3 + 4, v2, v1);
    sub_2740D43C8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_274120A5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2741C86BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for WiFiNetwork();
        v6 = sub_2741C801C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_274120C94(v8, v9, a1, v4);
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
    return sub_274120B60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_274120B60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v25 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = (v8 + OBJC_IVAR___WiFiNetwork_Swift_name);
      v12 = *v11;
      v13 = v11[1];
      v14 = sub_2741C7ECC();
      v16 = v15;
      v17 = *(v10 + OBJC_IVAR___WiFiNetwork_Swift_name);
      v18 = *(v10 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
      if (v14 == sub_2741C7ECC() && v16 == v19)
      {

LABEL_5:
        ++v4;
        v6 = v25 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v21 = sub_2741C86DC();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v22 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v22;
      --v6;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_274120C94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  v122 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_143;
    }

    v6 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v114 = v7;
      v115 = *(v6 + 16);
      if (v115 >= 2)
      {
        while (*a3)
        {
          v7 = v115 - 1;
          v116 = *(v6 + 16 * v115);
          v117 = *(v6 + 16 * (v115 - 1) + 40);
          sub_2741213D4((*a3 + 8 * v116), (*a3 + 8 * *(v6 + 16 * (v115 - 1) + 32)), (*a3 + 8 * v117), v5);
          if (v114)
          {
          }

          if (v117 < v116)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2741B412C(v6);
          }

          if (v115 - 2 >= *(v6 + 16))
          {
            goto LABEL_131;
          }

          v118 = (v6 + 16 * v115);
          *v118 = v116;
          v118[1] = v117;
          result = sub_2741B40A0(v115 - 1);
          v115 = *(v6 + 16);
          if (v115 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_2741B412C(v6);
    v6 = result;
    goto LABEL_106;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v126 = v8;
      v12 = v11;
      v13 = *a3;
      v123 = v12;
      v14 = *(*a3 + 8 * v12);
      v5 = &OBJC_IVAR___WiFiNetwork_Swift_name;
      v15 = (*(*a3 + 8 * v9) + OBJC_IVAR___WiFiNetwork_Swift_name);
      v16 = *v15;
      v17 = v15[1];
      v18 = sub_2741C7ECC();
      v20 = v19;
      v21 = *(v14 + OBJC_IVAR___WiFiNetwork_Swift_name);
      v22 = *(v14 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
      v23 = sub_2741C7ECC();
      v6 = v24;
      v25 = v18 == v23 && v20 == v24;
      v120 = v7;
      if (v25)
      {
        v128 = 0;
      }

      else
      {
        v128 = sub_2741C86DC();
      }

      v26 = 8 * v123;
      v27 = (v13 + 8 * v123 + 16);
      v28 = 8 * v123 + 8;
      v125 = v10;
      do
      {
        v7 = v9;
        v31 = v28;
        if (++v9 >= v126)
        {
          break;
        }

        v32 = v9;
        v5 = *(v27 - 1);
        v33 = (*v27 + OBJC_IVAR___WiFiNetwork_Swift_name);
        v34 = *v33;
        v35 = v33[1];
        v36 = sub_2741C7ECC();
        v38 = v37;
        v39 = *(v5 + OBJC_IVAR___WiFiNetwork_Swift_name);
        v40 = *(v5 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
        v42 = sub_2741C7ECC();
        v43 = v36;
        v6 = v41;
        v44 = v43 == v42 && v38 == v41;
        v29 = v44 ? 0 : sub_2741C86DC();

        v30 = v128 ^ v29;
        ++v27;
        v28 = v31 + 8;
        v9 = v32;
        v10 = v125;
      }

      while ((v30 & 1) == 0);
      if ((v128 & 1) == 0)
      {
        goto LABEL_29;
      }

      v45 = v123;
      if (v9 < v123)
      {
        goto LABEL_134;
      }

      if (v123 < v9)
      {
        do
        {
          if (v45 != v7)
          {
            v47 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v48 = *(v47 + v26);
            *(v47 + v26) = *(v47 + v31);
            *(v47 + v31) = v48;
          }

          ++v45;
          v31 -= 8;
          v26 += 8;
        }

        while (v45 < v7--);
LABEL_29:
        v7 = v120;
        v11 = v123;
        goto LABEL_30;
      }

      v7 = v120;
      v11 = v123;
    }

LABEL_30:
    v49 = a3[1];
    if (v9 < v49)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_133;
      }

      if (v9 - v11 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v9 < v11)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_274176EC4(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v70 = *(v10 + 16);
    v69 = *(v10 + 24);
    v6 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_274176EC4((v69 > 1), v70 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v6;
    v71 = v10 + 16 * v70;
    *(v71 + 32) = v11;
    *(v71 + 40) = v9;
    v72 = *v122;
    if (!*v122)
    {
      goto LABEL_142;
    }

    if (v70)
    {
      while (1)
      {
        v73 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v74 = *(v10 + 32);
          v75 = *(v10 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_73:
          if (v77)
          {
            goto LABEL_121;
          }

          v90 = (v10 + 16 * v6);
          v92 = *v90;
          v91 = v90[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_124;
          }

          v96 = (v10 + 32 + 16 * v73);
          v98 = *v96;
          v97 = v96[1];
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_128;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v6 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v100 = (v10 + 16 * v6);
        v102 = *v100;
        v101 = v100[1];
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_87:
        if (v95)
        {
          goto LABEL_123;
        }

        v103 = v10 + 16 * v73;
        v105 = *(v103 + 32);
        v104 = *(v103 + 40);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_126;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_94:
        v111 = v73 - 1;
        if (v73 - 1 >= v6)
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v10;
        v112 = *(v10 + 32 + 16 * v111);
        v5 = *(v10 + 32 + 16 * v73 + 8);
        sub_2741213D4((*a3 + 8 * v112), (*a3 + 8 * *(v10 + 32 + 16 * v73)), (*a3 + 8 * v5), v72);
        if (v7)
        {
        }

        if (v5 < v112)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2741B412C(v10);
        }

        if (v111 >= *(v6 + 16))
        {
          goto LABEL_118;
        }

        v113 = v6 + 16 * v111;
        *(v113 + 32) = v112;
        *(v113 + 40) = v5;
        result = sub_2741B40A0(v73);
        v10 = v6;
        v6 = *(v6 + 16);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = v10 + 32 + 16 * v6;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_119;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_120;
      }

      v85 = (v10 + 16 * v6);
      v87 = *v85;
      v86 = v85[1];
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_122;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_125;
      }

      if (v89 >= v81)
      {
        v107 = (v10 + 32 + 16 * v73);
        v109 = *v107;
        v108 = v107[1];
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_129;
        }

        if (v76 < v110)
        {
          v73 = v6 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v11 + a4 >= v49)
  {
    v50 = a3[1];
  }

  else
  {
    v50 = v11 + a4;
  }

  if (v50 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v50)
  {
    goto LABEL_53;
  }

  v121 = v7;
  v51 = v11;
  v52 = *a3;
  v5 = *a3 + 8 * v9 - 8;
  v124 = v51;
  v53 = v51 - v9;
  v127 = v50;
LABEL_42:
  v129 = v9;
  v54 = *(v52 + 8 * v9);
  v55 = v53;
  v56 = v5;
  while (1)
  {
    v6 = *v56;
    v57 = (v54 + OBJC_IVAR___WiFiNetwork_Swift_name);
    v58 = *v57;
    v59 = v57[1];
    v60 = sub_2741C7ECC();
    v62 = v61;
    v63 = *(v6 + OBJC_IVAR___WiFiNetwork_Swift_name);
    v64 = *(v6 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
    if (v60 == sub_2741C7ECC() && v62 == v65)
    {

LABEL_41:
      v9 = v129 + 1;
      v5 += 8;
      --v53;
      if (v129 + 1 == v127)
      {
        v9 = v127;
        v7 = v121;
        v11 = v124;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v6 = sub_2741C86DC();

    if ((v6 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v52)
    {
      break;
    }

    v67 = *v56;
    v54 = v56[1];
    *v56 = v54;
    v56[1] = v67;
    --v56;
    if (__CFADD__(v55++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_2741213D4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_49;
    }

    while (1)
    {
      v15 = *v4;
      v16 = (*v6 + OBJC_IVAR___WiFiNetwork_Swift_name);
      v17 = *v16;
      v18 = v16[1];
      v19 = sub_2741C7ECC();
      v21 = v20;
      v22 = *(v15 + OBJC_IVAR___WiFiNetwork_Swift_name);
      v23 = *(v15 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
      v25 = v19 == sub_2741C7ECC() && v21 == v24;
      if (v25)
      {
        break;
      }

      v26 = sub_2741C86DC();

      if ((v26 & 1) == 0)
      {
        goto LABEL_20;
      }

      v27 = v6;
      v25 = v7 == v6;
      v6 += 8;
      if (!v25)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_49;
      }
    }

LABEL_20:
    v27 = v4;
    v25 = v7 == v4;
    v4 += 8;
    if (v25)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v27;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v46 = v4;
    do
    {
      v28 = v6 - 8;
      v5 -= 8;
      v29 = v14;
      while (1)
      {
        v30 = *(v29 - 1);
        v29 -= 8;
        v31 = v28;
        v32 = *v28;
        v33 = *(v30 + OBJC_IVAR___WiFiNetwork_Swift_name);
        v34 = *(v30 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
        v35 = sub_2741C7ECC();
        v37 = v36;
        v38 = *(v32 + OBJC_IVAR___WiFiNetwork_Swift_name);
        v39 = *(v32 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
        v41 = v35 == sub_2741C7ECC() && v37 == v40;
        v42 = v41 ? 0 : sub_2741C86DC();

        v43 = v5 + 8;
        if (v42)
        {
          break;
        }

        v28 = v31;
        if (v43 != v14)
        {
          *v5 = *v29;
        }

        v5 -= 8;
        v14 = v29;
        v4 = v46;
        if (v29 <= v46)
        {
          v14 = v29;
          goto LABEL_49;
        }
      }

      v44 = v31;
      if (v43 != v6)
      {
        *v5 = *v31;
      }

      v4 = v46;
      if (v14 <= v46)
      {
        break;
      }

      v6 = v44;
    }

    while (v44 > v7);
    v6 = v44;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void *sub_27412170C(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_2741C848C();
      a2 = sub_2741219E0(v4, v5, &qword_280939F38, &qword_2741D33D0, type metadata accessor for WiFiNetwork, sub_274153EC8);
      goto LABEL_8;
    }

    type metadata accessor for WiFiNetwork();
    v7 = MEMORY[0x277D84FA0];
    v18 = MEMORY[0x277D84FA0];
    sub_2741C844C();
    if (sub_2741C84BC())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = *(a1 + 40), v10 = sub_2741C835C(), v11 = -1 << *(a1 + 32), v12 = v10 & ~v11, ((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
        {
          v13 = ~v11;
          while (1)
          {
            v14 = *(*(a1 + 48) + 8 * v12);
            v15 = sub_2741C836C();

            if (v15)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v16 = *(v7 + 16);
          if (*(v7 + 24) <= v16)
          {
            sub_274153EC8(v16 + 1);
          }

          v7 = v18;
          sub_274158744(v17, v18);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_2741C84BC());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_274121BD0(a1, a2);
    }

    return sub_2741559D4(a1, a2);
  }
}

uint64_t sub_2741219E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2741C853C();
    v22 = v8;
    sub_2741C844C();
    if (sub_2741C84BC())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          a6(v16 + 1);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_2741C835C();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_2741C84BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_274121BD0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v17 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_274121D70(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_274122C9C(v16, v7, v19);
    v11 = v19[0];

    MEMORY[0x2743E7790](v16, -1, -1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_274121D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2741C844C();
    type metadata accessor for WiFiNetwork();
    sub_274122CD0(&qword_280939F58, type metadata accessor for WiFiNetwork);
    sub_2741C821C();
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
    v8 = v43;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v33 = 0;
  v12 = (v6 + 64) >> 6;
  v37 = a4 + 56;
  v35 = v5;
  v36 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!sub_2741C84BC())
    {
      goto LABEL_28;
    }

    type metadata accessor for WiFiNetwork();
    swift_dynamicCast();
    v18 = v44;
    v7 = v13;
    v17 = v14;
    if (!v44)
    {
      goto LABEL_28;
    }

LABEL_19:
    v19 = *(a4 + 40);
    v20 = sub_2741C835C();
    v21 = -1 << *(a4 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    type metadata accessor for WiFiNetwork();
    v25 = *(*(a4 + 48) + 8 * v22);
    v26 = sub_2741C836C();

    if (v26)
    {
LABEL_24:

      v30 = a1[v23];
      a1[v23] = v30 | v24;
      v13 = v7;
      v4 = v36;
      v8 = v17;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v35;
      if ((v30 & v24) == 0)
      {
        if (!__OFADD__(v33++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_28:
        sub_2740D43C8();

        sub_274154958(a1, a2, v33, a4);
        return;
      }
    }

    else
    {
      v27 = ~v21;
      while (1)
      {
        v22 = (v22 + 1) & v27;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v28 = *(*(a4 + 48) + 8 * v22);
        v29 = sub_2741C836C();

        if (v29)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v4 = v36;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v35;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_2741220AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_2741C835C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for WiFiNetwork();
    v12 = 1;
    while (1)
    {
      v13 = *(*(v6 + 48) + 8 * v10);
      v14 = sub_2741C836C();

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:
    v15 = v14 ^ 1;
    v3 = v2;
  }

  else
  {
    v15 = 1;
    v12 = 1;
  }

  v16 = *(v6 + 16);
  v17 = v16 + v12;
  if (__OFADD__(v16, v12))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = *(v6 + 24);
  if (v18 >= v17 && (a2 & 1) != 0)
  {
    if ((v15 & 1) == 0)
    {
LABEL_28:
      v31 = *(*v3 + 48);
      result = *(v31 + 8 * v10);
      *(v31 + 8 * v10) = a1;
      return result;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_274153EC8(v17);
  }

  else
  {
    if (v18 >= v17)
    {
      sub_274154EF4();
      if ((v15 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_2741551E4(v17);
  }

  v19 = *v3;
  v20 = *(*v3 + 40);
  v21 = sub_2741C835C();
  v22 = -1 << *(v19 + 32);
  v10 = v21 & ~v22;
  if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_24:
    if ((v15 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v26 = *v3;
    *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
    *(*(v26 + 48) + 8 * v10) = a1;
    v27 = *(v26 + 16);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      result = 0;
      *(v26 + 16) = v29;
      return result;
    }

    goto LABEL_30;
  }

  v23 = ~v22;
  type metadata accessor for WiFiNetwork();
  while (1)
  {
    v24 = *(*(v19 + 48) + 8 * v10);
    v25 = sub_2741C836C();

    if (v25)
    {
      break;
    }

    v10 = (v10 + 1) & v23;
    if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  type metadata accessor for WiFiNetwork();
  result = sub_2741C870C();
  __break(1u);
  return result;
}

void (*sub_2741222EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743E6600](a2, a3);
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
    return sub_27412236C;
  }

  __break(1u);
  return result;
}

uint64_t sub_274122374(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2741C848C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_274177768(v3, 0);
  sub_274122408((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_274122408(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2741C848C();
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
      result = sub_2741C848C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_274122A90();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399D8, &unk_2741D32B0);
            v9 = sub_2741222EC(v13, i, a3);
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
        type metadata accessor for WiFiNetwork();
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

uint64_t sub_274122588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939128, &unk_2741CED70);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E0, &qword_2741D0C48);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__networks;
  v31 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399D8, &unk_2741D32B0);
  sub_2741C6BAC();
  (*(v14 + 32))(v3 + v18, v17, v13);
  v19 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__isScanning;
  LOBYTE(v31) = 0;
  sub_2741C6BAC();
  (*(v9 + 32))(v3 + v19, v12, v8);
  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_presentationStyle) = 0;
  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_displayOption) = 3;
  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) = 0;
  v20 = OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel__selectedNetwork;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938C68, qword_2741CD200);
  sub_2741C6BAC();
  (*(v4 + 32))(v3 + v20, v7, v27);
  if (MEMORY[0x277D84F90] >> 62 && sub_2741C848C())
  {
    v21 = sub_2740C2B7C(MEMORY[0x277D84F90]);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_pubs) = v21;
  swift_beginAccess();
  v30 = v28;
  type metadata accessor for CurrentNetworkViewModel();

  sub_2741C6BAC();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v29;

  sub_2741C6BFC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  sub_274122CD0(&qword_280939120, type metadata accessor for CurrentNetworkViewModel);
  v22 = sub_2741C6B5C();

  v31 = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_274122D50;
  *(v24 + 24) = v23;
  sub_2741C6B9C();
  sub_2741C6C2C();

  swift_beginAccess();
  sub_2741C6B3C();
  swift_endAccess();

  return v3;
}

unint64_t sub_274122A90()
{
  result = qword_280939F30;
  if (!qword_280939F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809399D8, &unk_2741D32B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939F30);
  }

  return result;
}

void sub_274122C9C(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_274121D70(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t sub_274122CD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274122D18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274122D58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_274122D90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t WiFiNetwork.isPreferred.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  return v1;
}

uint64_t WiFiNetwork.isPreferred.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2741C6BFC();
}

uint64_t WiFiNetwork.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___WiFiNetwork_Swift_name);
  v2 = *(v0 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);

  return v1;
}

id sub_2741230F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_2741C7E3C();

  return v6;
}

uint64_t sub_274123174(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_2741231D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2741C7E7C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_27412324C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

double WiFiNetwork.rssi.getter()
{
  v1 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WiFiNetwork.rssi.setter(double a1)
{
  v3 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274123588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  *a2 = v5;
  return result;
}

uint64_t sub_274123608(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_2741C6BFC();
}

void (*WiFiNetwork.isPreferred.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2741C6BDC();
  return sub_2740D0130;
}

uint64_t WiFiNetwork.$isPreferred.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  return swift_endAccess();
}

uint64_t sub_274123790(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  return swift_endAccess();
}

uint64_t sub_274123808(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WiFiNetwork.$isPreferred.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BCC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WiFiNetwork.$isPreferred.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D30, &qword_2741CDB78);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  sub_2741C6BBC();
  swift_endAccess();
  return sub_2740D0424;
}

id WiFiNetwork.init(networkInfo:cwfNetworkProfiles:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v70 = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  v11 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  LOBYTE(v75[0]) = 0;
  v12 = v3;
  sub_2741C6BAC();
  (*(v7 + 32))(&v3[v11], v10, v6);
  if (!*(a1 + 16))
  {
    goto LABEL_54;
  }

  v67 = v11;
  v13 = sub_2741251AC(1145656147, 0xE400000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_27409D308(*(a1 + 56) + 32 * v13, v74);
  sub_27409D2F8(v74, v75);
  swift_dynamicCast();
  v15 = v73;
  v16 = &v12[OBJC_IVAR___WiFiNetwork_Swift_name];
  v68 = v72;
  v69 = v73;
  *v16 = v72;
  *(v16 + 1) = v15;
  v17 = *(a1 + 16);

  if (v17 && (v18 = sub_2741251AC(0x4E79616C70736944, 0xEB00000000656D61), (v19 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v18, v75), (swift_dynamicCast() & 1) != 0))
  {
    v10 = *(&v74[0] + 1);
    v20 = *&v74[0];
  }

  else
  {
    v20 = *v16;
    v10 = *(v16 + 1);
  }

  v21 = &v12[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v21 = v20;
  *(v21 + 1) = v10;
  if (!*(a1 + 16))
  {
    goto LABEL_56;
  }

  v22 = sub_2741251AC(0x4449535342, 0xE500000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_57;
  }

  sub_27409D308(*(a1 + 56) + 32 * v22, v74);
  sub_27409D2F8(v74, v75);
  swift_dynamicCast();
  v24 = v73;
  v25 = &v12[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  *v25 = v72;
  *(v25 + 1) = v24;
  if (*(a1 + 16) && (v26 = sub_2741251AC(0x657264644143414DLL, 0xEA00000000007373), (v27 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v26, v75), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v74[0] + 1);
    v28 = *&v74[0];
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = &v12[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v30 = v28;
  *(v30 + 1) = v29;
  if (*(a1 + 16) && (v31 = sub_2741251AC(0x7974697275636553, 0xEC00000065707954), (v32 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v31, v75), sub_2740BA268(0, &qword_280938410, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v33 = *&v74[0];
  }

  else
  {
    sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
    v33 = sub_2741C834C();
  }

  v34 = [v33 integerValue];

  *&v12[OBJC_IVAR___WiFiNetwork_Swift_securityType] = v34;
  if (*(a1 + 16) && (v35 = sub_2741251AC(1230197586, 0xE400000000000000), (v36 & 1) != 0) && (sub_27409D308(*(a1 + 56) + 32 * v35, v75), sub_2740BA268(0, &qword_280938410, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v37 = *&v74[0];
  }

  else
  {
    sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
    v37 = sub_2741C834C();
  }

  [v37 doubleValue];
  v39 = v38;

  *&v12[OBJC_IVAR___WiFiNetwork_Swift_rssi] = v39;
  v10 = v70;
  if (!v70)
  {

    if (*(a1 + 16) && (v53 = sub_2741251AC(0x7265666572507349, 0xEB00000000646572), (v54 & 1) != 0))
    {
      sub_27409D308(*(a1 + 56) + 32 * v53, v75);

      sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v55 = *&v74[0];
LABEL_49:
        v56 = [v55 BOOLValue];

        v57 = v67;
        swift_beginAccess();
        (*(v7 + 8))(&v3[v57], v6);
        LOBYTE(v74[0]) = v56;
        sub_2741C6BAC();
        swift_endAccess();
        goto LABEL_61;
      }
    }

    else
    {
    }

    sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
    v55 = sub_2741C833C();
    goto LABEL_49;
  }

  v62 = v7;
  v63 = v6;
  v65 = v3;
  v66 = ObjectType;

  ObjectType = (v10 & 0xFFFFFFFFFFFFFF8);
  v64 = v12;
  if (v10 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2741C848C())
  {
    v41 = 0;
    v42 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v42)
      {
        v43 = MEMORY[0x2743E6600](v41, v10);
      }

      else
      {
        if (v41 >= *(ObjectType + 2))
        {
          goto LABEL_53;
        }

        v43 = *(v10 + 8 * v41 + 32);
      }

      v44 = v43;
      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v46 = [v43 networkName];
      if (v46)
      {
        v47 = v46;
        v48 = sub_2741C7E7C();
        v50 = v49;

        if (v48 == v68 && v50 == v69)
        {

          goto LABEL_51;
        }

        v52 = sub_2741C86DC();

        v10 = v70;
        if (v52)
        {

LABEL_51:
          v58 = 1;
          goto LABEL_60;
        }
      }

      else
      {
      }

      ++v41;
      if (v45 == i)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_59:

  v58 = 0;
LABEL_60:
  v59 = v65;
  v60 = v67;
  swift_beginAccess();
  (*(v62 + 8))(&v59[v60], v63);
  LOBYTE(v74[0]) = v58;
  sub_2741C6BAC();
  swift_endAccess();
  ObjectType = v66;
  v12 = v64;
LABEL_61:
  v71.receiver = v12;
  v71.super_class = ObjectType;
  return objc_msgSendSuper2(&v71, sel_init);
}

id WiFiNetwork.__allocating_init(ssid:securityType:rssi:macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  v28 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = objc_allocWithZone(v6);
  v18 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v31 = 0;
  sub_2741C6BAC();
  (*(v13 + 32))(&v17[v18], v16, v12);
  v19 = &v17[OBJC_IVAR___WiFiNetwork_Swift_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v17[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v17[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  v22 = 0xE000000000000000;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  if (a5)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v22 = a5;
  }

  v24 = &v17[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v24 = v23;
  *(v24 + 1) = v22;
  *&v17[OBJC_IVAR___WiFiNetwork_Swift_securityType] = v28;
  *&v17[OBJC_IVAR___WiFiNetwork_Swift_rssi] = a6;
  swift_beginAccess();
  v25 = *(v13 + 8);

  v25(&v17[v18], v12);
  v30 = 0;
  sub_2741C6BAC();
  swift_endAccess();
  v29.receiver = v17;
  v29.super_class = v6;
  return objc_msgSendSuper2(&v29, sel_init);
}

id WiFiNetwork.init(ssid:securityType:rssi:macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v31 = 0;
  sub_2741C6BAC();
  (*(v14 + 32))(&v6[v18], v17, v13);
  v19 = &v6[OBJC_IVAR___WiFiNetwork_Swift_name];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v6[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v6[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  v22 = 0xE000000000000000;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  if (a5)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v22 = a5;
  }

  v24 = &v6[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v24 = v23;
  *(v24 + 1) = v22;
  *&v6[OBJC_IVAR___WiFiNetwork_Swift_securityType] = a3;
  *&v6[OBJC_IVAR___WiFiNetwork_Swift_rssi] = a6;
  swift_beginAccess();
  v25 = *(v14 + 8);

  v25(&v6[v18], v13);
  v30 = 0;
  sub_2741C6BAC();
  swift_endAccess();
  v29.receiver = v6;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_274124914(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2741C843C();
    v5 = v4;
    v6 = sub_2741C84DC();
    v8 = v7;
    v9 = MEMORY[0x2743E64E0](v3, v5, v6, v7);
    sub_274125EC0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_274125EC0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_2741C840C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_274125918(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_274125EC0(v3, v5, v2 != 0);
  return v13;
}

uint64_t WiFiNetwork.description.getter()
{
  v1 = v0;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0x203A44495353, 0xE600000000000000);
  MEMORY[0x2743E5FB0](*(v1 + OBJC_IVAR___WiFiNetwork_Swift_name), *(v1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8));
  MEMORY[0x2743E5FB0](0x616C70736964202CLL, 0xEF203A656D614E79);
  v2 = (v0 + OBJC_IVAR___WiFiNetwork_Swift_displayName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x2743E5FB0](v3, v4);

  MEMORY[0x2743E5FB0](0x3A4449535342202CLL, 0xE900000000000020);
  v5 = (v1 + OBJC_IVAR___WiFiNetwork_Swift_bssid);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x2743E5FB0](v6, v7);

  MEMORY[0x2743E5FB0](0x64644143414D202CLL, 0xEE00203A73736572);
  v8 = (v1 + OBJC_IVAR___WiFiNetwork_Swift_macAddress);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  MEMORY[0x2743E5FB0](v9, v10);

  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741DCF60);
  v17 = *(v1 + OBJC_IVAR___WiFiNetwork_Swift_securityType);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x203A49535352202CLL, 0xE800000000000000);
  v11 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  v12 = *(v1 + v11);
  sub_2741C81CC();
  MEMORY[0x2743E5FB0](0x6566657250736920, 0xEE00203A64657272);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  if (v16)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v16)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v13, v14);

  return 0;
}

uint64_t WiFiNetwork.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2740B2A50(a1, v7);
  if (!v8)
  {
    sub_2740B29E8(v7);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___WiFiNetwork_Swift_name) == *&v6[OBJC_IVAR___WiFiNetwork_Swift_name] && *(v1 + OBJC_IVAR___WiFiNetwork_Swift_name + 8) == *&v6[OBJC_IVAR___WiFiNetwork_Swift_name + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_2741C86DC();
  }

  return v4 & 1;
}

void WiFiNetwork.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___WiFiNetwork_Swift_name);
  v2 = *(v0 + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
  JUMPOUT(0x2743E6010);
}

id WiFiNetwork.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiNetwork.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274125124@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

unint64_t sub_274125164(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2741C84EC();

  return sub_274125548(a1, v5);
}

unint64_t sub_2741251AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2741C87DC();
  sub_2741C7F0C();
  v6 = sub_2741C880C();

  return sub_274125610(a1, a2, v6);
}

uint64_t type metadata accessor for WiFiNetwork()
{
  result = qword_280939FA0;
  if (!qword_280939FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274125280()
{
  sub_2740DE9E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_274125370(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2741C7E7C();
  sub_2741C87DC();
  sub_2741C7F0C();
  v4 = sub_2741C880C();

  return sub_2741256C8(a1, v4);
}

unint64_t sub_274125404(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2741C87DC();
  type metadata accessor for CFString(0);
  sub_274125488();
  sub_2741C6AAC();
  v4 = sub_2741C880C();

  return sub_2741257CC(a1, v4);
}

unint64_t sub_274125488()
{
  result = qword_280939FB0;
  if (!qword_280939FB0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939FB0);
  }

  return result;
}

unint64_t sub_2741254E0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2741C87DC();
  MEMORY[0x2743E6870](a1);
  v4 = sub_2741C880C();
  return sub_2741258A8(a1, v4);
}

unint64_t sub_274125548(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2740BA2B0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2743E6580](v9, a1);
      sub_27409D2A4(v9);
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

unint64_t sub_274125610(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2741C86DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2741256C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2741C7E7C();
      v9 = v8;
      if (v7 == sub_2741C7E7C() && v9 == v10)
      {
        break;
      }

      v12 = sub_2741C86DC();

      if ((v12 & 1) == 0)
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

unint64_t sub_2741257CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_274125488();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2741C6A9C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2741258A8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_274125918(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2743E6530](a1, a2, v7);
      sub_2740BA268(0, &qword_280938DF0, 0x277D02AE8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2740BA268(0, &qword_280938DF0, 0x277D02AE8);
    if (sub_2741C846C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2741C847C();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2741C835C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2741C836C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

id sub_274125B3C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D28, &qword_2741CDB70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = OBJC_IVAR___WiFiNetwork_Swift__isPreferred;
  v39 = 0;
  sub_2741C6BAC();
  (*(v5 + 32))(&v1[v9], v8, v4);
  v10 = [a1 networkName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2741C7E7C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v1[OBJC_IVAR___WiFiNetwork_Swift_name];
  *v15 = v12;
  v15[1] = v14;
  v16 = [a1 networkName];
  if (v16 || (v16 = [a1 networkName]) != 0)
  {
    v17 = v16;
    v18 = sub_2741C7E7C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = &v1[OBJC_IVAR___WiFiNetwork_Swift_displayName];
  *v21 = v18;
  v21[1] = v20;
  v22 = [a1 BSSList];
  if (v22)
  {
    sub_2740BA268(0, &qword_280938DF0, 0x277D02AE8);
    sub_2740D4370();
    v23 = sub_2741C81EC();

    v22 = sub_274124914(v23);

    if (v22)
    {
      v24 = [v22 BSSID];

      if (v24)
      {
        v22 = sub_2741C7E7C();
        v26 = v25;

        goto LABEL_13;
      }

      v22 = 0;
    }
  }

  v26 = 0xE000000000000000;
LABEL_13:
  v27 = &v1[OBJC_IVAR___WiFiNetwork_Swift_bssid];
  *v27 = v22;
  *(v27 + 1) = v26;
  v28 = [a1 cachedPrivateMACAddress];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2741C7E7C();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = &v1[OBJC_IVAR___WiFiNetwork_Swift_macAddress];
  *v33 = v30;
  v33[1] = v32;
  if ([a1 isOpen])
  {
    v34 = 512;
  }

  else
  {
    v35 = [a1 isOWE];
    v34 = 16;
    if (v35)
    {
      v34 = 512;
    }
  }

  *&v1[OBJC_IVAR___WiFiNetwork_Swift_securityType] = v34;
  *&v1[OBJC_IVAR___WiFiNetwork_Swift_rssi] = 0;
  swift_beginAccess();
  (*(v5 + 8))(&v1[v9], v4);
  v38 = 0;
  sub_2741C6BAC();
  swift_endAccess();
  v37.receiver = v1;
  v37.super_class = ObjectType;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t sub_274125EC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_274125EFC@<Q0>(uint64_t a1@<X8>)
{
  sub_2741C7C1C();
  sub_2741C6D8C();
  *&v3[37] = v6;
  *&v3[21] = v5;
  *&v3[5] = v4;
  *(a1 + 11) = *v3;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 1;
  *(a1 + 27) = *&v3[16];
  result = *&v3[32];
  *(a1 + 43) = *&v3[32];
  *(a1 + 56) = *(&v6 + 1);
  return result;
}

unint64_t sub_274125FA4()
{
  result = qword_280939FB8;
  if (!qword_280939FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939FB8);
  }

  return result;
}

uint64_t sub_2741260D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2741261AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for NetworkDetailsView()
{
  result = qword_280939FC0;
  if (!qword_280939FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2741262BC()
{
  sub_2741263C8(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2741263C8(319, &qword_280939FD0, type metadata accessor for NetworkDetailsModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2740A5754();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}